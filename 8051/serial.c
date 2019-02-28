#include "serial.h"
#include <reg52.h>
#include <intrins.h>
// #include <stdio.h>
// #include <string.h>
// #include <stdarg.h>
// #include "vsscanf.h"

#define TXBUF_SIZE 16
#define RXBUF_SIZE 256

unsigned char rxIdx;
unsigned char rxBuffer[RXBUF_SIZE];
unsigned char byteToRX;
unsigned char rxDone;

unsigned char txIdx;
unsigned char txBuffer[TXBUF_SIZE];
unsigned char byteToTX;
unsigned char txDone;

void serialISR(void) interrupt 4 using 1  
{
	if(RI)
	{
		if(byteToRX)
		{
			rxBuffer[rxIdx++] = SBUF;
			if(rxIdx>=byteToRX)
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
			SBUF = txBuffer[txIdx++];
			if(txIdx>=byteToTX)
			{
				txDone = 1;
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
	txDone = 1;
}

void serialSendDataAsync(unsigned char* buffer, unsigned int size)
{
	unsigned int i = 0;
	
	while(TI);
	
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

void serialSendData(unsigned char* buffer, unsigned int size, int timeout)
{
	int time = 0;
	
	serialSendDataAsync(buffer, size);

	while(!serialIsSendDataDone() && (timeout==-1 || time++<timeout));
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
	rxDone = 1;
}

void serialReceiveDataAsync(unsigned int size)
{
	while(RI);
	
	rxIdx = 0;
	byteToRX = size;
	rxDone = 0;
}

char serialIsReceiveDataDone()
{
	while(RI);

	return rxDone;
}

void serialReceiveData(unsigned char* buffer, unsigned int size, int timeout)
{
	int time = 0;
	
	serialReceiveDataAsync(size);

	while(!serialIsReceiveDataDone() && (timeout==-1 || time++<timeout));
	
	serialGetReceivedData(buffer, size);
}

void serialGetReceivedData(unsigned char* buffer, unsigned int size)
{
	unsigned int i = 0;
	
	while(RI);
	
	while(i<size)
	{
		buffer[i] = rxBuffer[i];
		i++;
	}
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

int serialInitialize(int baud)
{	
	serialInitSendBuffer();
	serialInitReceiveBuffer();
		
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
	
	return -1;
}