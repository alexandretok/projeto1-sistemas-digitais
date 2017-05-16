import time
import mraa
import random

dutyCycle = 0;

adc0 = mraa.Aio(0)
adc1 = mraa.Aio(1)
adc2 = mraa.Aio(2)
adc3 = mraa.Aio(3)
adc4 = mraa.Aio(4)

​​y = mraa.Pwm(5)
​y.period_us(700)​
y.enable(True)

while True:
        tempoInicio = time.time() # Salva o tempo inicial

        # Realiza o somatorio
        total  = adc0.read() * random.uniform(0.0, 1.0)
        total += adc1.read() * random.uniform(0.0, 1.0)
        total += adc2.read() * random.uniform(0.0, 1.0)
        total += adc3.read() * random.uniform(0.0, 1.0)
        total += adc4.read() * random.uniform(0.0, 1.0)

        # Atualiza o PWM
        y.write(total / (5 * 1023))

        # Imprime a taxa de atualizacao
        tempoTotal = time.time() - tempoInicio;
        print "Y atualizado em " + str(tempoTotal) + " segundos (" + str(1/tempoTotal) + " Hz)"