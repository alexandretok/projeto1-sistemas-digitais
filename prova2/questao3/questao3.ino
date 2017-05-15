#include <SPI.h>

int main(void){
  Serial.begin(9600);
  
  SPI.begin();
  SPCR |= _BV(SPE); // Configura como slave
  
  SPI.attachInterrupt(); // Ativa interrupts

  while(1){} // Loop infinito
}

// Interrupt SPI
ISR (SPI_STC_vect) {
  byte c = SPDR; // Recebe byte

  /*
   * Se receber 1, responde com 2
   * Se receber 3, responde com 4
   */
  if(c == 1){
    Serial.println("Recebendo 1...");
    SPI.transfer(2);
  } else if(c == 3){
    Serial.println("Recebendo 3...");
    SPI.transfer(4);
  } else Serial.println("Recebendo dados invalido...");
  delay(10);
}
