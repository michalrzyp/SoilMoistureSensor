#include <avr/io.h>
#include <stdint.h>
#include "nrf24.h"
#include <util/delay.h>
#include <avr/wdt.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>

#define NumberOfDigits 4
#define ADCIN PA7 
#define Delay 2

int n=0;
int flag=0;
uint8_t* array_number;

uint8_t data_array[4];
uint8_t tx_address[5] = {0xE7,0xE7,0xE7,0xE7,0xE7};
uint8_t rx_address[5] = {0xD7,0xD7,0xD7,0xD7,0xD7};
uint8_t *int2ASCII(int number);

void init_ADC();
void pinH_L();
void run();
void init();
void init_sleep();
void test();
ISR(WATCHDOG_vect)
{
  WDTCSR|= (1<<WDIE);
}
/* ------------------------------------------------------------------------- */
int main()
{
	init_sleep();
	while(1)
	{
		run();
		for (int i=0; i<Delay; i++)
		{
		wdt_reset();
		 sleep_mode();
		}
	} 
}
/* ------------------------------------------------------------------------- */
uint8_t* int2ASCII(int number)
{
	int n=number,power=0;
	static uint8_t data[NumberOfDigits];
	for(int i=0;i<NumberOfDigits;i++)
	{
		power=pow(10,i);
		data[i]=((n/power)%10)+48;
	}
	return data;
}

void init_ADC()
{
	ADCSRA = (1<<ADEN) | (0<<ADPS1) | (1<<ADPS2);//ADC enable and prescaler=64 8MHz/64=125kHz
	ADMUX  = (1<<REFS0) |(1<<MUX2) | (1<<MUX1) | (1<<MUX0);// wybór kana³u ADC7 na pinie PA7
	//REFS1=0 REFS0=0 VCC used as analog reference, disconnected from PA0 (AREF)
	//REFS1=0 =REFS01 External voltage reference at PA0 (AREF) pin, internal reference turned off
}

void run()
{
	DDRA |= 1<<0;
	DDRA |= (1<<2); // output power nrf24l01 and pinH/L
	DDRB |= 1<<2;//output gen(pinL/H)
	DDRA &=~ (1<<ADCIN); //input on ADC PA7
	PORTA &= ~(1<<0);
	
	init_ADC();
	//pinH_L();
	PORTB |= (1<<2);
	PORTA &= ~(1<<2);
	nrf24_init();
	nrf24_config(5,4);
	nrf24_tx_address(tx_address);
	nrf24_rx_address(rx_address);
	_delay_ms(500);
	ADCSRA |= (1<<ADSC); //ADSC: uruchomienie pojedynczej konwersji
	while(ADCSRA & (1<<ADSC)); //czeka na zakoñczenie konwersji
	
	n=(int) ADC;
	array_number=int2ASCII(n);
	
	data_array[0] = array_number[3];
	data_array[1] = array_number[2];
	data_array[2] = array_number[1];
	data_array[3] = array_number[0];

	/* Automatically goes to TX mode */
	nrf24_send(data_array);
	/* Wait for transmission to end */
	while(nrf24_isSending());
	nrf24_powerDown();	
}

void init_sleep()
{
	MCUSR &= ~(1<<WDRF);
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);
	wdt_enable(WDTO_8S);
	WDTCSR|= 1<<WDCE | 1<<WDE;
	WDTCSR|= 1<<WDIE;
	sei();
}

void pinH_L()
{
	//PORTA &= ~(1<<2);
	//PORTB |= (1<<2);
	if(flag==0)
	{
		flag=1;	
		PORTA &= ~(1<<2);
		PORTB |= (1<<2);
	}
	else
	{
		flag=0;
		PORTA |= (1<<2);
		PORTB &= ~(1<<2);
	}
}