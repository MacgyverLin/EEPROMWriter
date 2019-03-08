#include "serial.h"
#include <reg52.h>
#include <intrins.h>
// #include <stdio.h>
// #include <string.h>
// #include <stdarg.h>
// #include "vsscanf.h"

#define BUF_SIZE 128
unsigned char buffer[BUF_SIZE];

unsigned char rxIdx;
unsigned char byteToRX;
char rxDone;

unsigned char txIdx;
unsigned char byteToTX;
char txDone;

int receiveTotalTimeoutConstant = 1000;
int receiveTotalTimeoutMultiplier = 50;
int sendTotalTimeoutConstant = 1000;
int sendTotalTimeoutMultiplier = 50;

#define OSC_FREQ        12000000UL

void setTimer0(unsigned int timeout)
{
	TR0 = 0;		// stop timer 0
	TMOD &= 0xF0;
	TMOD |= 0x01; // timer 0, mode 1
	
	TH0 = (65536-timeout *(OSC_FREQ/12000000)) >> 8;
	TL0 = (65536-timeout *(OSC_FREQ/12000000)) & 0x00FF;

	TF0 = 0;		// clr overflow	
	TR0 = 1;
}

void serialSetReceiveTimeOut(unsigned int size)
{
	setTimer0(size * receiveTotalTimeoutMultiplier + receiveTotalTimeoutConstant);
}

void serialSetSendTimeOut(unsigned int size)
{
	setTimer0(size * sendTotalTimeoutMultiplier + sendTotalTimeoutConstant);
}

char serialIsTimeOut()
{
	return TF0;
}

void serialISR(void) interrupt 4  
{
	if(RI)
	{
		if(!rxDone)
		{
			buffer[rxIdx++] = SBUF;
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
			SBUF = buffer[txIdx++];
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

	while(i<BUF_SIZE)
	{
		buffer[i] = 0;
		i++;
	}
	txIdx = 0;
	byteToTX = 0;
	txDone = -1;
}

void serialSendDataAsync(unsigned char* dat, unsigned int size)
{
	unsigned int i = 0;
	
	while(!txDone || TI);
	
	if(size>=BUF_SIZE)
		size=BUF_SIZE;
	while(i<size)
	{
		buffer[i] = dat[i];
		i++;
	}
	txIdx = 0;
	byteToTX = size;
	txDone = 0;

	TI = 1;
	serialSetSendTimeOut(size);
}

char serialIsSendDataDone()
{
	while(TI);

	return txDone;
}

void serialSendData(unsigned char* dat, unsigned int size)
{
	int time = 0;
	
	serialSendDataAsync(dat, size);

	while(!serialIsSendDataDone() /*&& !serialIsTimeOut()*/);
}
 
void serialInitReceiveBuffer()
{
	unsigned int i = 0;
	
	while(RI);
	
	while(i<BUF_SIZE)
	{
		buffer[i++] = 0;
	}
	rxIdx = 0;
	byteToRX = 0;
	rxDone = -1;
}

void serialReceiveDataAsync(unsigned int size)
{
	unsigned int i = 0;
	
	while(!rxDone || RI);

	if(size>=BUF_SIZE)
		size=BUF_SIZE;	
	while(i<BUF_SIZE)
	{
		buffer[i++] = 0;
	}	
	rxIdx = 0;
	byteToRX = size;

	rxDone = 0;
	
	serialSetReceiveTimeOut(size);	
}

char serialIsReceiveDataDone()
{
	while(RI);

	return rxDone;
}

char* serialReceiveData(unsigned int size)
{
	int time = 0;
	
	serialReceiveDataAsync(size);

	while(!serialIsReceiveDataDone()/*&& !serialIsTimeOut()*/);
	
	return buffer;
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
	SCON=0X50;			//ÉèÖÃÎª¹¤×÷·½Ê½1
	TMOD=0X21;			//É timer 1 mode 2, timer 0 mode1
	PCON=0X80;			//²¨ÌØÂÊ¼Ó±¶
	TH1=0XFA;				//¼ÆÊýÆ÷³õÊ¼ÖµÉèÖÃ£¬×¢Òâ²¨ÌØÂÊÊÇ4800µÄ
	TL1=0XFA;
	ES=1;						//´ò¿ª½ÓÊÕÖÐ¶Ï
	EA=1;						//´ò¿ª×ÜÖÐ¶Ï
	TR1=1;					//´ò¿ª¼ÆÊýÆ÷
	
	return -1;
}