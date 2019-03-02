#include "delay.h"
#include "reg52.h"
#include <intrins.h>

void delay1us()
{
	_nop_();
	_nop_();
}

void delay10us()
{
	unsigned char a,b;
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

void delayUS(int us)
{
	int i;
	if(us==1)
	{
		_nop_();
	}
	else
	{
		for(i=0; i<us; i++)
			_nop_();
	}
}

void delayMS(int ms)
{
	int i;
	if(ms==1)
	{
		delay1ms();
	}
	else
	{
		for(i=0; i<ms; i++)
			delay1ms();
	}
}