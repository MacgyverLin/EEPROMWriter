#include "serial.h"
#include "delay.h"
#include "reg52.h"
#include <assert.h>
#include <string.h>

typedef enum
{
	INITIAL = 0,
	CONNECTING,
	CONNECTED,
	PROGRAM_EEPROM_PAGE,
	VERIFY_EEPROM_PAGE,
	FAILED,
	DONE,
	TIMEOUT
}State;

sbit CONNECTED_LED = P3 ^ 2;
sbit PROGRAM_LED = P3 ^ 3;
sbit VERIFY_LED = P3 ^ 4;

void displayState(int state)
{
	CONNECTED_LED = (state & 0x01) ? 0 : 1;
	PROGRAM_LED = (state & 0x02) ? 0 : 1;
	VERIFY_LED = (state & 0x04) ? 0 : 1;
}

////////////////////////////////////////////////////////////////////
#define EEPROM_ADDRESS_L P0
#define EEPROM_ADDRESS_H P1
#define EEPROM_DATA P2

sbit EEPROM_WR = P3 ^ 7;
sbit EEPROM_OE = P3 ^ 6;
sbit EEPROM_CE = P3 ^ 5;

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

	delayMS(100);
}

void beginWriteByte()
{
	setAddress(0xffff);
	setData(0xff);

	SET_WR();
	delay1us();
	SET_OE();
	delay1us();
	CLR_CE();
	delay1us();
}

void writeByte(unsigned int address, unsigned char dat)
{
	setAddress(address);
	setData(dat);

	//CLR_CE();
	//delay1us();
	CLR_WR();
	delay1us();

	//SET_CE();
	//delay1us();
	SET_WR();
	delay1us();
}

void endWriteByte()
{
	SET_CE();
	delayMS(100);
}

void beginReadByte()
{
	setAddress(0xffff);
	setData(0xff);

	SET_WR();
	delay1us();
	SET_OE();
	delay1us();
	CLR_CE();
	delay1us();
}

unsigned char readByte(unsigned int address)
{
	unsigned char dat;

	setAddress(address);
	setData(0xff);

	//CLR_CE();
	CLR_OE();
	delay1us();

	dat = getData();

	//SET_CE();
	SET_OE();
	delay1us();

	return dat;
}

void endReadByte()
{
	SET_CE();
	delayMS(100);
}

void enableDataProtection()
{
	writeByte(0x5555, 0xaa);
	writeByte(0x2aaa, 0x55);
	writeByte(0x5555, 0xa0);
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

void programPage(unsigned int startAddress, unsigned char* dat, unsigned int size)
{
	int i;
	unsigned char failed = 0;
	unsigned char t = 0;

	beginWriteByte();
	disableDataProtection();
	//endWriteByte();

	//beginWriteByte();
	for (i = 0; i < size; i++)
	{
		writeByte(startAddress + i, dat[i]);
	}
	endWriteByte();
}

char verifyPage(unsigned int startAddress, unsigned char* dat, unsigned int size)
{
	int i;
	unsigned char d;
	unsigned char failed = 0;
	unsigned char t = 0;

	beginReadByte();
	for (i = 0; i < size; i++)
	{
		d = readByte(startAddress + i);
		//serialSendData(&d, 1, 500); // ack

		if (d != dat[i])
			return 0;
	}
	endReadByte();

	return -1;
}

unsigned long int convertToBigEndian32(unsigned long int v)
{
	return ((v >> 24) & 0x000000ff) | ((v >> 8) & 0x0000ff00) | ((v << 8) & 0x00ff0000) | ((v << 24) & 0xff00000);
}

void testWrite()
{
#if 0
	char test = 0;
	serialInitialize(9600);

	programPage(0, temp, 32);
	test = verifyPage(0, temp, 32);
	while (1)
	{
		if (!test)
		{
			delayMS(250);
			EEPROM_CE = ~EEPROM_CE;
		}
		else
		{
			EEPROM_CE = 0;
		}
	};
#endif
}
	

void main()
{
	State state = INITIAL;
	char* rxBuffer = 0;

	while (1)
	{
		switch (state)
		{
		case INITIAL:
		{
			displayState(state);

			serialTerminate();
			if (serialInitialize(SB_9600, 8, SP_NONE, SS_ONE))
			{
				state = CONNECTING;
			}
		}
		break;

		case CONNECTING:
		{
			displayState(state);
			rxBuffer = serialReceiveData(1); // wait for command C
			if (!rxBuffer)
			{
				state = INITIAL;	 		// try next baud rate
			}
			else
			{
				if (*rxBuffer == 'C')
				{
					serialSendData("c", 1); // ack

					state = CONNECTED;	 // connected
				}
				else
				{
					state = INITIAL; // try next baud rate
				}
			}
		}
		break;

		case CONNECTED:
		{
			displayState(state);
			// CONNECTED_LED = 1;		

			rxBuffer = serialReceiveData(1); // wait for command P or V
			if (!rxBuffer)
			{
				state = CONNECTED;	 		// try again
			}
			else
			{
				if (*rxBuffer == 'P')
				{
					serialSendData("p", 1);	 // ack

					state = PROGRAM_EEPROM_PAGE;	 // program
				}
				else if (*rxBuffer == 'V')
				{
					serialSendData("v", 1); 	 // ack

					state = VERIFY_EEPROM_PAGE;	 // verify
				}
				else if (*rxBuffer == 'D')
				{
					serialSendData('d', 1); 	 // ack

					state = DONE;	 // verify
				}
				else
				{
					state = CONNECTED; // unknown command, again
				}
			}
		}
		break;

		case PROGRAM_EEPROM_PAGE:
		{
			unsigned long int address;
			unsigned long int size;

			displayState(state);

			rxBuffer = serialReceiveData(1 + 4 + 4); // wait for command P or V
			if (!rxBuffer)
			{
				state = TIMEOUT;	 		// try again
			}
			else
			{
				if (*rxBuffer == 'D')
				{
					serialSendData("d", 1);	 // ack	failed

					state = DONE; // unknown command, again
				}
				else if (*rxBuffer == 'A')
				{
					address = convertToBigEndian32(*((unsigned long int*)(rxBuffer + 1)));
					size = convertToBigEndian32(*((unsigned long int*)(rxBuffer + 1 + 4)));

					serialSendData("a", 1);

					//PROGRAM_LED     = 1;
					rxBuffer = serialReceiveData(size); // wait for command P or V					
					programPage(address, rxBuffer, size);
					if (verifyPage(address, rxBuffer, size))
					{
						//PROGRAM_LED     = 0;

						serialSendData("s", 1);	 // ack success

						state = PROGRAM_EEPROM_PAGE; // unknown command, again
					}
					else
					{
						//PROGRAM_LED     = 0;

						serialSendData("f", 1);	 // ack	failed

						state = FAILED; // unknown command, again
					}
				}
				else
				{
					serialSendData("f", 1);	 // ack	failed

					state = FAILED; // unknown command, again
				}
			}
		}
		break;

		case VERIFY_EEPROM_PAGE:
		{
			unsigned long int address;
			unsigned long int size;

			displayState(state);

			rxBuffer = serialReceiveData(1 + 4 + 4); // wait for command P or V
			if (!rxBuffer)
			{
				state = TIMEOUT;	 		// try again
			}
			else
			{
				if (*rxBuffer == 'D')
				{
					serialSendData("d", 1);	 // ack	failed

					state = DONE; // unknown command, again
				}
				else if (*rxBuffer == 'A')
				{
					address = convertToBigEndian32(*((unsigned long int*)(rxBuffer + 1)));
					size = convertToBigEndian32(*((unsigned long int*)(rxBuffer + 1 + 4)));

					serialSendData("a", 1);

					//PROGRAM_LED     = 1;
					rxBuffer = serialReceiveData(size); // wait for command P or V					
					//programPage(address, rxBuffer, size);
					if (verifyPage(address, rxBuffer, size))
					{
						//PROGRAM_LED     = 0;

						serialSendData("s", 1);	 // ack success

						state = VERIFY_EEPROM_PAGE; // unknown command, again
					}
					else
					{
						//PROGRAM_LED     = 0;

						serialSendData("f", 1);	 // ack	failed

						state = FAILED; // unknown command, again
					}
				}
				else
				{
					serialSendData("f", 1);	 // ack	failed

					state = FAILED; // unknown command, again
				}
			}
		}
		break;

		case FAILED:
		{
			displayState(state);
		}
		break;

		case DONE:
		{
			displayState(state);
		}
		break;

		case TIMEOUT:
		{
			displayState(state);
		}
		break;
		}
	}
}