#include "sio.h"

//////////////////////////////////////////////////////////////////////////////
//
void sioInit(char device)
{
    device;

    SCON = 0x50;
    TMOD = 0x21;
    PCON = 0x80;
    // ES = 1;
    // EA = 1;
    TH1 = 0xFD;
    TL1 = 0xFD;
    TR1 = 1;
    //TI = 1;
    //RI = 1;
}

void sioClose(char device)
{
    device;

    SCON = 0x00;
    TMOD = 0x00;
    PCON = 0x00;
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
    unsigned int i = 0;

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
    char d;

    device;

    while(!RI) /* assumes UART is initialized */ ;
    d = SBUF;
    RI = 0;

    return d;
}

void sioRXStr(char device, char* s, unsigned int size)
{
    unsigned int i = 0;

    device;

    while(size--)
    {
        if((s[i++] = sioRX(device))==0)
            break;
    }
}

void sioRXBuf(char device, char* buf, unsigned int size)
{
    unsigned int i = 0;

    device;

    while(size--)
    {
        buf[i++] = sioRX(device);
    }
}
