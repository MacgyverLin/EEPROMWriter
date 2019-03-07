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
}

char serialIsSendDataDone()
{
	while(TI);

	return txDone;
}

void serialSendData(unsigned char* dat, unsigned int size, int timeout)
{
	int time = 0;
	
	serialSendDataAsync(dat, size);

	while(!serialIsSendDataDone() && (timeout==-1 || time++<timeout));
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
}

char serialIsReceiveDataDone()
{
	while(RI);

	return rxDone;
}

char* serialReceiveData(unsigned int size, int timeout)
{
	int time = 0;
	
	serialReceiveDataAsync(size);

	while(!serialIsReceiveDataDone() && (timeout==-1 || time++<timeout));
	
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
	SCON=0X50;			//设置为工作方式1
	TMOD=0X20;			//设置计数器工作方式2
	PCON=0X80;			//波特率加倍
	TH1=0XFA;				//计数器初始值设置，注意波特率是4800的
	TL1=0XFA;
	ES=1;						//打开接收中断
	EA=1;						//打开总中断
	TR1=1;					//打开计数器
	
	return -1;
}