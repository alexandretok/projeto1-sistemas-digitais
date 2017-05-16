import mraa
import time

# Inicializa o UART
usart = mraa.Uart(0)

usart.setBaudRate(9600) # baud rate
usart.setMode(8, mraa.UART_PARITY_NONE, 1) # 8 bits de dados, sem parity mode, 1 stop bit
usart.setFlowcontrol(False, False)

while True:
	if usart.dataAvailable():
		data_byte = usart.read(1) # le apenas um byte
		print("Recebido: " + str(data_byte))

	usart.write(1, 1) # envia apenas um byte
	time.sleep(2)