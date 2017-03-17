## Projeto de Sistemas Digitais - UFRN / DCA - 2017.1

### Componentes:
 1. Alexandre Justino
 2. Íkaro Breno
 3. João Fernandes
 4. Glauco Dantas
 
### Objetivo:
#### Controlar um sistema de resfriamento, que possui os seguintes componentes:
 1. Ventilador
 2. Sensor analógico (luminosidade para verificar se há sol ou de temperatura)
 3. Um botão para ligar
 4. Três LEDs para informar o status do sistema
 
### Funcionamento do sistema:
 1. O motor do ventilador será controlado via PWM
 2. O LED 1 terá sempre o mesmo duty cicle do motor
 3. O LED 2 terá um duty cicle proporcional ao valor do sensor analógico (LDR ou temperatura)
 4. O LED 3 informa ON/OFF
 5. O motor deve seguir a seguinte curva de secagem:
    1. De 0 a 30 segundos: função linear crescente que vai de 0% a 30%
    2. De 30 a 60 segundos: função constante em 30%
    3. De 60 a 90 segundos: função linear crescente que vai de 30% a 75%
    4. De 90 a 120 segundos: função constante em 75%
    5. De 120 a 180 segundos: função linear decrescente que vai de 75% a 0%

![alt text](https://image.ibb.co/cq8ETv/Capturar.png "Curva")
