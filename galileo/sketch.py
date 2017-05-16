import threading
import time
import mraa
import socket

# Configuracao inicial
sistemaAtivo = False
tempoMaximo = 10
tempoInicio = time.time()
curva = "arroz"
dutyCycle = 0
alfa = 1
conectado = False

# Portas utilizadas
BOTAO = 2
LED_BOTAO = 3
MOTOR = 6
LED_SENSOR = 5
ANALOG_SENSOR = 0

# Configura botao de ON/OFF e LED Status
botao = mraa.Gpio(BOTAO)
botao.dir(mraa.DIR_IN)
botao.write(0)
ledBotao = mraa.Gpio(LED_BOTAO)
ledBotao.dir(mraa.DIR_OUT)
ledBotao.write(0)

# Configura Motor e ADC
adc = mraa.Aio(ANALOG_SENSOR)
motor = mraa.Pwm(MOTOR)
motor.period_us(700)
motor.enable(True)
motor.write(0)

# Configura LED do sensor
ledSensor = mraa.Pwm(LED_SENSOR)
ledSensor.period_us(700)
ledSensor.enable(True)

# Constantes
PORT = 6666

# Configura socket
listen_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
listen_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
listen_socket.bind(('', PORT))
listen_socket.listen(1)

def rxThread():
	global conectado, client_connection, client_address, listen_socket, sistemaAtivo, tempoInicio, curva

	client_connection, client_address = listen_socket.accept()
	client_connection.settimeout(5)
	conectado = True

	while True:
		try:
			acao = client_connection.recv(1024).replace("\r\n", "")
			if acao.find("=") >= 0:
				tmp = acao.split("=")
				acao = tmp[0]
				valor = tmp[1]

			if acao == "iniciar":
				print "Iniciando secagem..."
				curva = valor
				sistemaAtivo = True
				tempoInicio = time.time()
				ledBotao.write(1)
		except:
			null = False # Timeout

def txThread():
	global sistemaAtivo, conectado, client_connection, dutyCycle, tempoInicio, alfa, tempoMaximo

	while True:
		time.sleep(1)
		if sistemaAtivo and conectado:
			client_connection.send("tempo=" + str((time.time() - tempoInicio) / 60) + "&velocidade=" + str(dutyCycle) + "&alfa=" + str(alfa))
			ultimoEnvio = time.time()
		if sistemaAtivo and conectado and (time.time() - tempoInicio >= tempoMaximo):
			client_connection.send("fim")

# Thread que le o ADC e controla o duty cycle do motor
def adcThread():
	global tempoInicio, sistemaAtivo, alfa, dutyCycle, motor, adc, ledSensor

	while True:
		if sistemaAtivo:
			time.sleep(0.1)
			luminosidade = adc.read() / 4

			alfa = luminosidade * 0.000999 + 0.89
			if alfa < 0.9:
				alfa = 0.9
			if alfa > 1:
				alfa = 1
			
			if curva == "arroz":
				dutyCycle = curvaArroz((time.time() - tempoInicio)/60) * alfa
			elif curva == "milho":
				dutyCycle = curvaMilho((time.time() - tempoInicio)/60) * alfa
			elif curva == "cafe":
				dutyCycle = curvaCafe((time.time() - tempoInicio)/60) * alfa

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
t1 = threading.Thread(name='adcThread', target=adcThread)
t2 = threading.Thread(name='rxThread', target=rxThread)
t3 = threading.Thread(name='txThread', target=txThread)

# Inicia as threads
t1.start()
t2.start()
t3.start()

# Loop principal
while True:
	if botao.read() and not sistemaAtivo:
		print "Secagem iniciada"
		tempoInicio = time.time()
		sistemaAtivo = True
		ledBotao.write(1)
	if sistemaAtivo and (time.time() - tempoInicio >= tempoMaximo):
		print "Secagem finalizada"
		sistemaAtivo = False
		ledBotao.write(0)