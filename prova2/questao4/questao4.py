import mraa
import time

# Initialize UART
usart = mraa.Uart(0)

# Set UART parameters
usart.setBaudRate(9600)
usart.setMode(8, mraa.UART_PARITY_NONE, 1)
usart.setFlowcontrol(False, False)

while True:
  if usart.dataAvailable():
    data_byte = usart.read(1)
    print("Recebido: " + str(data_byte))
    if data_byte == 2:
      usart.writeStr("ola!")