#include "reg52.h"			 //此文件中定义了单片机的一些特殊功能寄存器	
#include <intrins.h>

typedef unsigned int u16;	  //对数据类型进行声明定义
typedef unsigned char u8;

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

void delay10us()
{
	u8 a,b;
	for(b=1;b>0;b--)
		for(a=2;a>0;a--);
}

void delay100us()
{
	delay10us();
	delay10us();
	delay10us();
	delay10us();
	delay10us();
	delay10us();
	delay10us();
	delay10us();
	delay10us();
	delay10us();
}

void delay1ms()
{
	delay100us();
	delay100us();
	delay100us();
	delay100us();
	delay100us();
	delay100us();
	delay100us();
	delay100us();
	delay100us();
	delay100us();
}

void delayMS(int ms)
{
	int i;
	for(i=0; i<ms; i++)
		delay1ms();
}

void delay1us()
{
	_nop_();
}

void longDelay()
{
	u16 i;
	for(i = 0; i<30; i++)
		delay10us();
}

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

void init()
{
	longDelay();

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

char writePage(unsigned int startAddress, unsigned char* dat, unsigned int size)
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

// Interrupt
// Number	Description	Address
// 0	EXTERNAL INT 0	0003h
// 1	TIMER/COUNTER 0	000Bh
// 2	EXTERNAL INT 1	0013h
// 3	TIMER/COUNTER 1	001Bh
// 4	SERIAL PORT	0023h
// 5	TIMER/COUNTER 2 (8052)	002Bh
enum State
{
	INITIAL = 0,
	CONNECTING_TO_HOST,
	CONNECTED_TO_HOST,
	RECEIVING_ADDRESS,
	RECEIVING_DATA,
	WRITING_DATA,
	DONE,
	TIMEOUT,
	WRITE_FAILED,
};

#define TXBUF_SIZE 16
#define RXBUF_SIZE 128

unsigned char rxByte;
unsigned char rxBuffer[RXBUF_SIZE];
unsigned char byteToRX;
unsigned char rxDone;

unsigned char txByte;
unsigned char txBuffer[TXBUF_SIZE];
unsigned char byteToTX;
unsigned char txDone;

enum State state;
unsigned long address;
unsigned long size;

void serial(void) interrupt 4 using 1  
{
	if(RI)
	{
		if(byteToRX)
		{
			rxBuffer[rxByte++] = SBUF;
			if(rxByte>=byteToRX)
			{
				rxDone = 1;
			}
		}
		
		RI = 0;
	}
	else if(TI)
	{
		if(byteToTX)
		{
			SBUF = txBuffer[txByte++];
			if(txByte>=byteToTX)
			{
				txDone = 1;
			}
		}
		
		TI = 0;
	}	
}

void initTransmit()
{
	unsigned int i = 0;
	
	while(TI);

	while(i<TXBUF_SIZE)
	{
		txBuffer[i] = 0;
		i++;
	}
	txByte = 0;
	byteToTX = 0;
	txDone = 1;
}

void transmitData(unsigned char* buffer, unsigned int size)
{
	unsigned int i = 0;
	
	while(TI);
	
	while(i<size)
	{
		txBuffer[i] = buffer[i];
		i++;
	}
	txByte = 0;
	byteToTX = size;
	txDone = 0;

	TI = 1;
}

char isTransmitDone()
{
	while(TI);

	return txDone;
}

void initReceive()
{
	unsigned int i = 0;
	
	while(RI);
	
	while(i<RXBUF_SIZE)
	{
		rxBuffer[i++] = 0;
	}
	rxByte = 0;
	byteToRX = 0;
	rxDone = 1;
}

void receiveData(unsigned int size)
{
	while(RI);
	
	rxByte = 0;
	byteToRX = size;
	rxDone = 0;
}

char isReceiveDone()
{
	while(RI);

	return rxDone;
}

const char* getReceivedData(int offset)
{
	while(RI);
	
	rxByte = 0;
	byteToRX = size;
	
	return &rxBuffer[offset];
}

unsigned int getReceiveDataSize()
{
	return rxByte;
}

char isReceivedDataMatched(const char* buffer, unsigned int size)
{
	unsigned int i;
	while(RI);
	
	//if(size!=rxByte)
		//return 0;
	
	for(i=0; i<size; i++)
	{
		if(buffer[i]!=rxBuffer[i])
			return 0;
	};
	
	return -1;
}

unsigned int timeCount;

void initTimer(unsigned int timeCount_)
{
	timeCount = timeCount_;
}

char isTimerTimeOut()
{
	return timeCount==0;
}

void initEpromWriter()
{
	///////////////////////////////
	longDelay();

	setAddress(0xffff);
	setData(0xff);
	EEPROM_WR = 1;
	EEPROM_OE = 1;
	EEPROM_CE = 1;
	
	///////////////////////////////
	TL1   = 0;
	TH1   = (256-3);
	
    RI 	  = 0;
    TI 	  = 0;
    RB8   = 0;
    TB8   = 0;
    SM2   = 0;
    SM1   = 1;
    SM0   = 0;
	
	REN	  = 1;
    TR1	  = 1;
    ES	  = 1;
    EA	  = 1;
	
	//////////////////////////////////////
	initTransmit();
	initReceive();
	
	address = 0;
	size = 0;
	state = INITIAL;	
}

void toggleOE(unsigned int time)
{
	delayMS(time);
	if(GET_OE())
	{
		CLR_OE();
	}
	else
	{
		SET_OE();
	}
}

void testEEPROMWriter()
{
	unsigned char failed = 0;
	unsigned char t = 0;
	
	initEpromWriter();
	
	while(1)
	{
		switch(state)
		{
			case INITIAL:
				transmitData("MacCon", 6);
				receiveData(6+3);
				initTimer(1000);
				state = CONNECTING_TO_HOST;
			break;
				
			case CONNECTING_TO_HOST:
				if(isTransmitDone())
				{
					transmitData("MacCon", 6);
				}
				else if(isTimerTimeOut())
				{
					state = TIMEOUT;				// TIMEOUT
				}
				else if(isReceivedDataMatched("MacConAck", 9))
				{
					state = CONNECTED_TO_HOST;	//  Received Ack
				}
			break;
				
			case CONNECTED_TO_HOST:
				transmitData("MacAdr", 6);
				receiveData(6+3);
				initTimer(1000);
				state = RECEIVING_ADDRESS;
			break;
				
			case RECEIVING_ADDRESS:
				if(isTransmitDone())
				{
					transmitData("MacAdr", 6);
				}
				else if(isTimerTimeOut())
				{
					state = TIMEOUT;				// TIMEOUT
				}
				else if(isReceivedDataMatched("MacAdrAck", 9))
				{
					address = *((unsigned long *)getReceivedData(9));
					size    = *((unsigned long *)getReceivedData(9+4));
					if(size!=0)
					{
						transmitData("MacDat", 6);
						receiveData(6+3);
						initTimer(1000);					
						state = RECEIVING_DATA;	//  Received Ack
					}
					else
					{
						state = DONE;
					}
				}
			break;
				
			case RECEIVING_DATA:
				if(isTransmitDone())
				{
					transmitData("MacDat", 6);
				}
				else if(isTimerTimeOut())
				{
					state = TIMEOUT;		// TIMEOUT
				}
				else if(isReceiveDone())
				{
					state = WRITING_DATA;
				}
			break;
				
			case WRITING_DATA:
				if(!writePage(address, getReceivedData(0), size))
				{
					state = WRITE_FAILED;
				}
				else
				{
					state = RECEIVING_ADDRESS;
				}
			break;					
				
			case TIMEOUT:
				toggleOE(250);
			break;

			case WRITE_FAILED:
				toggleOE(500);
			break;
			
			case DONE:
				CLR_OE();
			break;			
		}
	}
}

void main()
{
	//test();
	testEEPROMWriter();
}
