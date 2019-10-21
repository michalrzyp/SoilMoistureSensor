#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include "nrf24.h"
#include <util/delay.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <string.h>
#include "ili9163lcd.h"
//#define Vref 3.3

ILI9163 	lcd;
DigitalPin	pinSCK(&PORTC, 4), pinSDA(&PORTC, 3), pinA0(&PORTC, 2), pinRESET(&PORTC, 1), pinCS(&PORTC, 0);

char* make_one (char* one, char* two);
char* int2ASCII(int number);

uint8_t data_array[4] = {0,0,0,0};
uint8_t tx_address[5] = {0xD7,0xD7,0xD7,0xD7,0xD7};
uint8_t rx_address[5] = {0xE7,0xE7,0xE7,0xE7,0xE7};
double Vref=3.3;
int state=512;
//double state_in_mV=0;

int main(void) 
{
	lcd.setup(&pinSCK, &pinSDA, &pinA0, &pinRESET, &pinCS);
	lcd.init(ILI9163::ROT0);
	lcd.clear(rgb24to16(0, 0, 0));

	nrf24_init();
	nrf24_config(5,4);
	nrf24_tx_address(tx_address);
	nrf24_rx_address(rx_address);
	
	DDRD = 1<<3;
	PORTD |=1<<4;
	char *char_pointer1=(char*)"0023 ";
	char *char_pointer2=(char*)"WET ";
	char *char_pointer3=(char*)"0000 \0";
	char* result1;
	
	while(1)
	 {
		if(nrf24_dataReady())
		{
			nrf24_getData(data_array);  
			char_pointer1 = reinterpret_cast<char*>(data_array);
			state=atoi(char_pointer1);
			
			int state_in_mV=((state*Vref*1000))/1024;
			
			if(state>512) {char_pointer2=(char*)"DRY ";}
			else {char_pointer2=(char*)"WET ";}
				
			result1 = make_one((char*)"Result: ", char_pointer1);
			char_pointer3=int2ASCII(state_in_mV);
			
			lcd.drawString(result1, textX(0), textY(7), rgb24to16(0, 0, 0xFF), rgb24to16(0,0,0));
			lcd.drawString(char_pointer2, textX(9), textY(8), rgb24to16(0xFF, 0, 0), rgb24to16(0,0,0));
			
			lcd.drawString((char_pointer3), textX(9), textY(9), rgb24to16(0, 0xFF, 0), rgb24to16(0,0,0));
			
			free(result1);
			
			PORTD |=1<<3;
			_delay_ms(500);
		}
		else if(!(PIND & (1<<4)))
		{
			lcd.clear(rgb24to16(0, 0, 0));
		}
		else
		{
			PORTD &=~(1<<3);
			_delay_ms(500);
		}
	 }
}


char* make_one(char* one, char* two)
{
	unsigned int len = strlen(one) + strlen(two);
	char* con = (char*) malloc(len+1);
	unsigned int i,l;

	for(i=0;i<strlen(one);i++)
	{
		con[i]=one[i];
	}
	unsigned int t=0;
	for(l=strlen(one);l<=len;l++)
	{
		con[l]=two[t];
		t++;
	}
	return con; 
}

char* int2ASCII(int number)
{
	int n=number;
	int power=3;
	static char data[8];
	for(int i=0;i<4;i++)
	{
		power=pow(10,3-i);
		data[i]=((n/power)%10)+48;
	}
	data[4]='m';
	data[5]='V';
	data[6]=' ';
	data[7]='\0';
	return data;
}
