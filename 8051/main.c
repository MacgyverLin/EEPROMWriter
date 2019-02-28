#include "serial.h"
#include "delay.h"
#include "reg52.h"
#include <assert.h>

typedef enum
{
	INITIAL = 0,
	CONNECTING,
	CONNECTED,
	PROGRAM_EEPROM_PAGE,
	VERIFY_EEPROM_PAGE,
	FAILED,
	DONE
}State;

sbit CONNECTED_LED   = P3^0;
sbit PROGRAM_LED     = P3^1;
sbit VERIFY_LED      = P3^2;


////////////////////////////////////////////////////////////////////
#define EEPROM_ADDRESS_L P0
#define EEPROM_ADDRESS_H P1
#define EEPROM_DATA P2

sbit EEPROM_WR     = P3^7;
sbit EEPROM_OE     = P3^6;
sbit EEPROM_CE     = P3^5;

#define SET_WR() 					EEPROM_WR = 1
#define SET_OE() 					EEPROM_OE = 1
#define SET_CE() 					EEPROM_CE = 1
#define CLR_WR() 					EEPROM_WR = 0
#define CLR_OE() 					EEPROM_OE = 0
#define CLR_CE() 					EEPROM_CE = 0
#define GET_WR() 					EEPROM_WR
#define GET_OE() 					EEPROM_OE
#define GET_CE() 					EEPROM_CE
#define SET_EEPROM_ADDRESS_L(addrl) EEPROM_ADDRESS_L = addrl
#define SET_EEPROM_ADDRESS_H(addrh) EEPROM_ADDRESS_H = addrh
#define SET_EEPROM_DATA(data) 		EEPROM_DATA = data
#define GET_EEPROM_DATA() 			EEPROM_DATA

void setAddress(unsigned int addr)
{
	SET_EEPROM_ADDRESS_L(addr & 0xff);
	SET_EEPROM_ADDRESS_H(addr >> 8);
}

void setData(unsigned char dat)
{
	SET_EEPROM_DATA(dat);
}

unsigned char getData()
{
	return GET_EEPROM_DATA();
}

void initEEPROWriter()
{
	setAddress(0xffff);
	setData(0xff);
	SET_WR();
	SET_OE();
	SET_CE();
	
	delayMS(10);
}

void beginWriteByte()
{
	setAddress(0xffff);
	setData(0xff);
	SET_WR();
	SET_OE();
	SET_CE();
}

void writeByte(unsigned int address, unsigned char dat)
{
	setAddress(address);
	setData(dat);
	delay1us();

	CLR_CE();
	delay1us();
	CLR_WR();
	delay1us();

	SET_CE();
	delay1us();
	SET_WR();
	delay1us();
}

void beginReadByte()
{
	setAddress(0xffff);
	setData(0xff);
	delay1us();

	SET_CE();
	SET_WR();
	SET_OE();
}

unsigned char readByte(unsigned int address)
{
	unsigned char dat;

	setAddress(address);
	delay1us();

	CLR_CE();
	delay1us();
	CLR_OE();
	delay1us();

	dat = getData();
	delay1us();

	SET_CE();
	delay1us();
	SET_OE();
	delay1us();

	return dat;
}

void endWriteByte()
{
	delayMS(1000);
}

void endReadByte()
{
	delayMS(1000);
}

void disableDataProtection()
{
	writeByte(0x5555, 0xaa);
	writeByte(0x2aaa, 0x55);
	writeByte(0x5555, 0x80);
	writeByte(0x5555, 0xaa);
	writeByte(0x2aaa, 0x55);
	writeByte(0x5555, 0x20);
}

char programPage(unsigned int startAddress, unsigned char* dat, unsigned int size)
{
	int i;
	unsigned char d;
	unsigned char failed = 0;
	unsigned char t = 0;

	beginWriteByte();
	disableDataProtection();

	beginWriteByte();
	for(i=0; i<size; i++)
	{
		writeByte(startAddress+i, dat[i]);
	}
	endWriteByte();

	beginReadByte();
	for(i=0; i<size; i++)
	{
		d = readByte(startAddress+i);
		if(d!=dat[i])
			return 0;
	}
	endReadByte();
	
	return -1;
}

char verifyPage(unsigned int startAddress, unsigned char* dat, unsigned int size)
{
	int i;
	unsigned char d;
	unsigned char failed = 0;
	unsigned char t = 0;

	beginReadByte();
	for(i=0; i<size; i++)
	{
		d = readByte(startAddress+i);
		if(d!=dat[i])
			return 0;
	}
	endReadByte();
	
	return -1;
}

void main()
{
	State state = INITIAL;
	unsigned char rxBuffer[128];
	
	CONNECTED_LED   = 0;
	PROGRAM_LED     = 0;
	VERIFY_LED      = 0;
	
	while(1)
	{
		switch(state)
		{
			case INITIAL:
				serialInitialize(9600);
			
				state = CONNECTING;
				break;

			case CONNECTING:
			{
				serialReceiveData(rxBuffer, 1, 500); // wait for command C

				CONNECTED_LED = ~CONNECTED_LED;
				
				if(*rxBuffer == 'C')
				{
					serialSendData('c', 1, 500); // ack
					
					state = CONNECTED;	 // connected
				}
				else
				{
					state = INITIAL; 	// set next baud
				}				
			}
			break;
				
			case CONNECTED:
			{
				CONNECTED_LED = 1;		
			
				serialReceiveData(rxBuffer, 1, -1); // wait for command P or V

				if(*rxBuffer == 'P')
				{
					serialSendData('p', 1, 500);	 // ack
					
					state = PROGRAM_EEPROM_PAGE;	 // program
				}
				else if(*rxBuffer == 'V')
				{
					serialSendData('v', 1, 500); 	 // ack
					
					state = VERIFY_EEPROM_PAGE;	 // verify
				}	
				else if(*rxBuffer == 'D')
				{
					serialSendData('d', 1, 500); 	 // ack
					
					state = DONE;	 // verify
				}					
				else
				{
					state = CONNECTED; // unknown command, again
				}
			}
			break;
				
			case PROGRAM_EEPROM_PAGE:
			{
				unsigned int address;
				unsigned int size;
				
				serialReceiveData(rxBuffer, 1+4+4, -1); // wait for command P or V
				if(*rxBuffer == 'P')
				{
					address = *((unsigned int*)(rxBuffer+1));
					size    = *((unsigned int*)(rxBuffer+1+4));
					
					assert(size<=128);
					serialReceiveData(rxBuffer, size, -1); // wait for command P or V
					
					PROGRAM_LED     = 1;
					
					if(programPage(address, rxBuffer, size))
					{
						PROGRAM_LED     = 0;
					
						serialSendData('s', 1, -1);	 // ack success
						
						state = CONNECTED; // unknown command, again
					}
					else
					{
						PROGRAM_LED     = 0;
					
						serialSendData('f', 1, -1);	 // ack	failed
						
						state = FAILED; // unknown command, again
					}
				}
			}
			break;
			
			case VERIFY_EEPROM_PAGE:
			{
				unsigned int address;
				unsigned int size;
				
				serialReceiveData(rxBuffer, 1+4+4, -1); // wait for command P or V
				if(*rxBuffer == 'S')
				{
					address = *((unsigned int*)(rxBuffer+1));
					size    = *((unsigned int*)(rxBuffer+1+4));
					
					assert(size<=128);
					serialReceiveData(rxBuffer, size, -1); // wait for command P or V
					
					VERIFY_LED     = 1;
					
					if(verifyPage(address, rxBuffer, size))
					{
						VERIFY_LED     = 0;
					
						serialSendData('s', 1, -1);	 // ack success

						state = CONNECTED;
					}
					else
					{
						VERIFY_LED     = 0;
					
						serialSendData('f', 1, -1);	 // ack	failed	
						
						state = FAILED;
					}					
				}
			}
			break;
			
			case FAILED:
			{
				delayMS(250);
				VERIFY_LED      = VERIFY_LED;
			}
			break;
			
			case DONE:
			{
				VERIFY_LED      = 1;
			}
			break;
		}
	}
}