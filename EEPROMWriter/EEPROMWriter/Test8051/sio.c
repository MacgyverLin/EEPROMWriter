#include "sio.h"

//////////////////////////////////////////////////////////////////////////////
//
void sioInit(char device)
{
    device;

    SCON = 0x50;
    TMOD = (TMOD & T0_MASK) | 0x21;
    PCON = 0x80;
    // ES = 1;
    // EA = 1;
    TH1 = 0xFA;
    TL1 = 0xFA;
    TR1 = 1;
    //TI = 1;
    //RI = 1;
}

void sioClose(char device)
{
    device;

    SCON = 0x00;
    TMOD = (TMOD & T0_MASK);
    PCON &= ~SMOD;
    TR1 = 0;
}

void sioWaitTXDone(char device)
{
    device;

    while(!TI);
}

void sioTX(char device, char d)
{
    device;

    TI = 0;
    SBUF = d;
    while(!TI) /* assumes UART is initialized */ ;
}

void sioTXStr(char device, const char* s)
{
    device;

    do
    {
		sioTX(device, *s);
    }while(*s++);
}

void sioTXBuf(char device, const char* buf, unsigned int size)
{
    __data unsigned int i = 0;

    device;

    while(size--)
    {
		sioTX(device, buf[i++]);
    }
}

void sioWaitRXDone(char device)
{
    device;

    while(!RI);
}

char sioRX(char device)
{
    __data char d;

    device;

    while(!RI) /* assumes UART is initialized */ ;
    d = SBUF;
    RI = 0;

    return d;
}

void sioRXStr(char device, char* s, unsigned int size)
{
    __data unsigned int i = 0;

    device;

    while(size--)
    {
        if((s[i++] = sioRX(device))==0)
            break;
    }
}

void sioRXBuf(char device, char* buf, unsigned int size)
{
    __data unsigned int i = 0;

    device;

    while(size--)
    {
        buf[i++] = sioRX(device);
    }
}

void sioTest1(char device)
{
	sioInit(device);
    while(1)
    {
		sioTX(device, sioRX(device));
    };
}

const char data[] =
{
    'a','b','c','d','e','f','g','h',
    'i','j','k','l','m','n','o','p',
    'q','r','s','t','u','v','w','x','y','z',
    'A','B','C','D','E','F','G','H',
    'I','J','K','L','M','N','O','P',
    'Q','R','S','T','U','V','W','X','Y','Z'
};

void sioTest2(char device)
{
	sioInit(device);
    while(1)
    {
        sioTXStr(device, "Fuck you now!!!!\r\n");
        sioTXBuf(device, data, 26*2);
    };
}

void sioTest3(char device)
{
    device;
}
