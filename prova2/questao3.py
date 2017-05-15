import mraa
import time

spi = mraa.Spi(0)

# Arduino 01
ss1 = mraa.Gpio(8)
ss1.dir(mraa.DIR_OUT)

# Arduino 02
ss2 = mraa.Gpio(9)
ss2.dir(mraa.DIR_OUT)

while True:
	print "Enviando 1..."
	ss1.write(0) # Informa o slave 1 que vai enviar dados 
	time.sleep(0.01)
	received = spi.writeByte(1) # Envia um byte ao barramento
	print "Recebendo " + str(received) + "..."
	ss1.write(1) # Encerra recebimento do slave

	time.sleep(2)

	print "Enviando 2..."
	ss2.write(0) # Informa o slave 2 que vai enviar dados 
	time.sleep(0.01)
	received = spi.writeByte(3) # Envia um byte ao barramento
	print "Recebendo " + str(received) + "..."
	ss2.write(1) # Encerra recebimento do slave

	time.sleep(2)