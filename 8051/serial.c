#include "serial.h"
#include <reg52.h>
#include <intrins.h>
// #include <stdio.h>
// #include <string.h>
// #include <stdarg.h>
// #include "vsscanf.h"

#define TXBUF_SIZE 32
#define RXBUF_SIZE 128

unsigned char rxIdx;
unsigned char rxBuffer[RXBUF_SIZE];
unsigned char byteToRX;
char rxDone;

unsigned char txIdx;
unsigned char txBuffer[TXBUF_SIZE];
unsigned char byteToTX;
char txDone;

int readInterval = 1000;
int readTotalTimeoutConstant = 1000;
int readTotalTimeoutMultiplier = 50;
int writeTotalTimeoutConstant = 1000;
int writeTotalTimeoutMultiplier = 50;


#define OSC_FREQ        12000000UL
void setTimeout(int ms)
{
	TH0 = (65536-ms*(OSC_FREQ/12000000)) >> 8;
	TL0 = (65536-ms*(OSC_FREQ/12000000)) & 0x00FF;
	TR0 = 1;
}

void serialISR(void) interrupt 4  
{
	if(RI)
	{
		if(!rxDone)
		{
			rxBuffer[rxIdx++] = SBUF;
			if(rxIdx>=byteToRX)
			{
				rxDone = -1;
			}
		}
		
		RI = 0;
	}
	if(TI)
	{
		if(!txDone)
		{
			SBUF = txBuffer[txIdx++];
			if(txIdx>=byteToTX)
			{
				txDone = -1;
			}
		}
		
		TI = 0;
	}
}

void serialInitSendBuffer()
{
	unsigned int i = 0;
	
	while(TI);

	while(i<TXBUF_SIZE)
	{
		txBuffer[i] = 0;
		i++;
	}
	txIdx = 0;
	byteToTX = 0;
	txDone = -1;
}

void serialSendDataAsync(char* buffer, unsigned int size)
{
	unsigned int i = 0;
	
	while(!txDone || TI);
	
	if(size>=TXBUF_SIZE)
		size=TXBUF_SIZE;
	while(i<size)
	{
		txBuffer[i] = buffer[i];
		i++;
	}
	txIdx = 0;
	byteToTX = size;
	txDone = 0;

	TI = 1;
}

char serialIsSendDataDone()
{
	while(TI);

	return txDone;
}

char serialSendData(unsigned char* buffer, unsigned int size)
{
	setTimeout(writeTotalTimeoutConstant + writeTotalTimeoutMultiplier * size);
	
	serialSendDataAsync(buffer, size);

	while(!serialIsSendDataDone() && (!TF0));
	
	return (!TF0);
}
 
void serialInitReceiveBuffer()
{
	unsigned int i = 0;
	
	while(RI);
	
	while(i<RXBUF_SIZE)
	{
		rxBuffer[i++] = 0;
	}
	rxIdx = 0;
	byteToRX = 0;
	rxDone = -1;
}

void serialReceiveDataAsync(unsigned int size)
{
	unsigned int i = 0;
	
	while(!rxDone || RI);

	if(size>=RXBUF_SIZE)
		size=RXBUF_SIZE;	
	while(i<RXBUF_SIZE)
	{
		rxBuffer[i++] = 0;
	}	
	rxIdx = 0;
	byteToRX = size;

	rxDone = 0;
}

char serialIsReceiveDataDone()
{
	while(RI);

	return rxDone;
}

char* serialReceiveData(unsigned int size)
{
	serialReceiveDataAsync(size);
	
	setTimeout(readTotalTimeoutConstant + readTotalTimeoutMultiplier * size);
	while(!serialIsReceiveDataDone() && (!TF0) );
	if(!TF0)
		return rxBuffer;
	else
		return 0;
}

/*
int serialPrintf(char* buffer, const char *fmt, ...)
{
	//char buffer[16];

	va_list argptr;
	int cnt;
	va_start(argptr, fmt);

	cnt = vsprintf(buffer, fmt, argptr);

	va_end(argptr);
	
	serialSendData(buffer, strlen(buffer));

	return cnt;
}

int serialScanf(char* buffer, const char *fmt, ...)
{
	va_list argptr;
	int cnt;

	//char buffer[16];
	serialReceiveData(strlen(buffer));

	va_start(argptr, fmt);

	cnt = vsscanf(buffer, fmt, argptr);

	va_end(argptr);	

	return cnt;
}
*/

void serialSetTimeout(unsigned int readInterval_, 
					  unsigned int readTotalTimeoutConstant_, unsigned int readTotalTimeoutMultiplier_, 
					  unsigned int writeTotalTimeoutConstant_, unsigned int writeTotalTimeoutMultiplier_)
{	
	readInterval = readInterval_;
	readTotalTimeoutConstant = readTotalTimeoutConstant_;
	readTotalTimeoutMultiplier = readTotalTimeoutMultiplier_;
	writeTotalTimeoutConstant = writeTotalTimeoutConstant_;
	writeTotalTimeoutMultiplier = writeTotalTimeoutMultiplier_;
}

int serialInitialize(Baud baud, int bits, Parity parity, Stopbits stopbits)
{	
	serialInitSendBuffer();
	serialInitReceiveBuffer();
		
	///////////////////////////////
	SCON=0X50;			//设置为工作方式1
	TMOD=0X20 | 0x01;	//设置计数器工作方式2
	PCON=0X80;			//波特率加倍
	TH1=0XFA;			//计数器初始值设置，注意波特率是4800的
	TL1=0XFA;
	ES=1;				//打开接收中断
	EA=1;				//打开总中断
	TR1=1;				//打开计数器

	return -1;
}