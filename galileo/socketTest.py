import threading
import time
import socket

# Constantes
PORT = 6666

conectado = False
sistemaAtivo = False

# Configura socket
listen_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
listen_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
listen_socket.bind((socket.gethostname(), PORT))
listen_socket.listen(1)

def rx():
	global conectado, client_connection, client_address, listen_socket, sistemaAtivo

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
				sistemaAtivo = True
				print "valor=" + str(valor)
				print "recebido iniciar"
		except:
			null = False # Timeout

def tx():
	global conectado, client_connection, sistemaAtivo

	while True:
		time.sleep(1)
		if sistemaAtivo and conectado:
			print "Enviando dados"
			client_connection.send("tempo=1.0&velocidade=30&alfa=1.0")

t3 = threading.Thread(name='rx', target=rx)
t4 = threading.Thread(name='tx', target=tx)

# Inicia as threads
t3.start()
t4.start()