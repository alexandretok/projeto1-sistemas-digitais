#include <avr/io.h>
#include <avr/interrupt.h>

#define F_CPU 16000000
#define BAUD 9600
#define BRC ((F_CPU/16/BAUD) - 1)

char recebido;

int main(void){
  UBRR0H = (BRC >> 8);
  UBRR0L = BRC; // Configura USART com baud rate de 9600

  /*Enable receiver and transmitter */
  UCSR0B = (1 << RXEN0) | (1 << TXEN0) | (1 << RXCIE0);

  /* Set frame format: 8data, 1 stop bit, no parity mode */
  UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);

  while(1){}
}

ISR(USART_RX_vect) {
  while(!(UCSR0A & (1<<RXC0))); // Aguarda liberacao para receber
  recebido = UDR0; // Recebe byte

  if(recebido == 1) {
    while(!(UCSR0A & (1<<UDRE0))); // Aguarda liberacao para enviar
    UDR0 = 2; // Envia 2
  } else if(recebido == 3) {
    // Envia 4
    while(!(UCSR0A & (1<<UDRE0)));
    UDR0 = 4; // Envia 4
  }
}
