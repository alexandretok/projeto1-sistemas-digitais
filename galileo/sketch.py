import threading
import time
import mraa
import socket

# Configuracao inicial
sistemaAtivo = False
tempoMaximo = 180
curva = "arroz"
dutyCycle = 0
alfa = 1

# Portas utilizadas
BOTAO = 2
MOTOR = 5
LED_SENSOR = 6
ANALOG_SENSOR = 0

# Constantes
PORT = 666

# Configura socket
listen_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
listen_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
listen_socket.bind((socket.gethostname(), PORT))
listen_socket.listen(1)

def rx():
	global conectado, client_connection, client_address, listen_socket, sistemaAtivo

	while conectado == False:
		try:
			client_connection, client_address = listen_socket.accept()
			client_connection.settimeout(5)
			conectado = True
		except:
			conectado = False

	while True:
		try:
			acao = client_connection.recv(1024).replace("\r\n", "")
			if acao.find("=") >= 0:
				tmp = acao.split("=")
				acao = tmp[0]
				valor = tmp[1]

			if acao == "ola":
				print "recebido ola"
				client_connection.send("ola")
			elif acao == "iniciar":
				print "recebido iniciar"
				curva = valor
				sistemaAtivo = True
		except:
			null = False

def tx():
	global sistemaAtivo, conectado, client_connection, dutyCycle, tempoInicio, alfa

	while True:
		time.sleep(1)
		if sistemaAtivo and conectado:
			print "Enviando dados"
			client_connection.send("tempo=" + str((time.time() - tempoInicio) / 60) + "&velocidade=" + dutyCycle + "&alfa=" + str(alfa))
			ultimoEnvio = time.time()

# Thread que le o ADC e controla o duty cycle do motor
def adc():
	global tempoInicio, sistemaAtivo, alfa, dutyCycle

	adc = mraa.Aio(ANALOG_SENSOR)
	motor = mraa.Pwm(MOTOR)
	motor.period_us(700)
	motor.enable(True)
	ledSensor = mraa.Pwm(LED_SENSOR)
	ledSensor.period_us(700)
	ledSensor.enable(True)

	while True:
		if sistemaAtivo:
			time.sleep(0.05)
			luminosidade = adc.read() / 4

			alfa = luminosidade * 0.000131579 + 0.9
			if alfa < 0.9:
				alfa = 0.9
			if alfa > 1:
				alfa = 1
			
			if curva == "arroz":
				dutyCycle = curvaArroz((time.time() - tempoInicio)/60)
			elif curva == "milho":
				dutyCycle = curvaMilho((time.time() - tempoInicio)/60)
			elif curva == "cafe":
				dutyCycle = curvaCafe((time.time() - tempoInicio)/60)

			motor.write(dutyCycle / 100)

def curvaArroz(tempo):
  if tempo <= 0.5:
    return 60 * tempo
  elif tempo <= 1.0:
    return 30
  elif tempo <= 1.5:
    return 90 * tempo - 60
  elif tempo <= 2.0:
    return 75
  elif tempo <= 3.0:
    return -75 * (tempo - 3)
  else:
  	return 0

def curvaCafe(tempo):
  if tempo <= 1.5:
    return 75
  elif tempo <= 1.7:
    return -187.5 * tempo + 356.25
  elif tempo <= 2.8:
    return 37
  elif tempo <= 3.0:
    return -187.5 * tempo + 562.5
  else:
  	return 0

def curvaMilho(tempo):
  if tempo <= 0.5:
    return 75
  elif tempo <= 1.0:
    return 50
  elif tempo <= 1.5:
    return 75
  elif tempo <= 2.0:
    return 50
  elif tempo <= 2.5:
    return 75
  elif tempo <= 3.0:
    return 50
  else:
  	return 0

# Declaracao das threas utilizadas
t1 = threading.Thread(name='conexao', target=conexao)
t2 = threading.Thread(name='adc', target=adc)
t3 = threading.Thread(name='rx', target=rx)
t4 = threading.Thread(name='tx', target=tx)

# Configura botao de ON/OFF
botao = mraa.Gpio(BOTAO)
botao.dir(mraa.DIR_IN)

# Inicia as threads
t1.start()
t2.start()
t3.start()
t4.start()

# Loop principal
while True:
	if botao.read() and not sistemaAtivo:
		print "Secagem iniciada"
		tempoInicio = time.time()
		sistemaAtivo = True
	if sistemaAtivo and (time.time() - tempoInicio >= tempoMaximo):
		print "Secagem finalizada"
		sistemaAtivo = False
