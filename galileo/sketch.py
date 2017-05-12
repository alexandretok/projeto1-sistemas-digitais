import threading
import time
import mraa

sistemaAtivo = False
tempoMaximo = 180

BOTAO = 2
MOTOR = 5
LED_SENSOR = 6
ANALOG_SENSOR = 0

def led_blink1():
	x = mraa.Gpio(9)
	x.dir(mraa.DIR_OUT)
	global sistemaAtivo

	while True:
		if sistemaAtivo:
			x.write(1)
			time.sleep(0.5)
			x.write(0)
			time.sleep(0.5)

def led_blink2():
	x = mraa.Gpio(8)
	x.dir(mraa.DIR_OUT)

	while True:
		if sistemaAtivo:
			x.write(1)
			time.sleep(0.8)
			x.write(0)
			time.sleep(0.8)

def adc():
	adc = mraa.Aio(ANALOG_SENSOR)
	motor = mraa.Pwm(MOTOR)
	motor.period_us(700)
	motor.enable(True)

	global tempoInicio

	while True:
		if sistemaAtivo:
			time.sleep(0.05)
			alfa = (adc.read() / 4) * 0.000131579 + 0.9
			if alfa < 0.9:
				alfa = 0.9
			if alfa > 1:
				alfa = 1
			
			dutyCycle = curvaArroz((time.time() - tempoInicio)/60)

			motor.write(dutyCycle)
			print "duty: "
			print dutyCycle

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

t1 = threading.Thread(name='led_blink2', target=led_blink2)
t2 = threading.Thread(name='led_blink1', target=led_blink1)
t3 = threading.Thread(name='adc', target=adc)

botao = mraa.Gpio(BOTAO)
botao.dir(mraa.DIR_IN)
t1.start()
t2.start()
t3.start()

while True:
	if botao.read() and not sistemaAtivo:
		tempoInicio = time.time()
		sistemaAtivo = True
	if sistemaAtivo and (time.time() - tempoInicio >= tempoMaximo):
		print "finalizando..."
		sistemaAtivo = False