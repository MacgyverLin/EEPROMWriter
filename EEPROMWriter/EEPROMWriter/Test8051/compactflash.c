#include "compactflash.h"

void cfInit(char device)
{
    cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port

    cfWriteCommand(device, 0xef);  // command 'set features'
}

void cfWaitIdle(char device)
{
    __data char status;
    do
    {
        status = cfReadStatus(device);
    }
    while((status & 0x80)!=0);
}

void cfWaitCommandReady(char device)
{
    __data char status;

    do
    {
        status = cfReadStatus(device);
    }
    while((status & 0xc0)!=0x40);
}

void cfWaitDataReady(char device)
{
    __data char status;
    do
    {
        status = cfReadStatus(device);
    }
    while((status & 0x88)!=0x08);
}

void cfReadSector(char device, char* buf, unsigned int sectorCount)
{
    __data char status;
    __data unsigned int i;
    __data unsigned int idx;

    sectorCount;

    P1 = 0xe1;
    cfWaitIdle(device);

    P1 = 0xe2;
    cfWriteSectorCount(device, 0x01);

    P1 = 0xe3;
    cfWaitIdle(device);

    P1 = 0xe4;
    cfWriteLBA0(device, 0x00);

    P1 = 0xe5;
    cfWaitIdle(device);

    P1 = 0xe6;
    cfWriteLBA1(device, 0x00);

    P1 = 0xe7;
    cfWaitIdle(device);

    P1 = 0xe8;
    cfWriteLBA2(device, 0x00);

    P1 = 0xe9;
    cfWaitIdle(device);

    P1 = 0xea;
    cfWriteLBA3(device, 0xe0);

    idx = 0;
    //while(sectorCount--)
    //{
        do
        {
            P1 = 0xeb;
            cfWaitCommandReady(device);

            P1 = 0xec;
            cfWriteCommand(device, 0x20);

            P1 = 0xed;
            cfWaitDataReady(device);

            P1 = 0xee;
            status = cfReadStatus(device);

            P1 = 0xef;
        }
        while((status & 0x01)!=0);

        i = 0;
        while(i++ < SECTOR_SIZE)
        {
            P1 = 0xf0;
            cfWaitDataReady(device);

            P1 = 0xf1;
            buf[i+idx] = cfReadData(device);

            P1 = 0xf2;
        }
        idx += SECTOR_SIZE;
    //};

    P1 = 0xf3;
}

//////////////////////////////////////////////////////////////////////////////
//
void cfTest(char device, char* buf)
{
    //P1 = 0xc1;
    //uart0Init();

    P1 = 0xc2;
    cfInit(device);

    P1 = 0xc3;
    cfReadSector(device, buf, 1);

    P1 = 0xc4;
    //uart0TXBuf(buf, SECTOR_SIZE);
    //P1 = 0xc5;
}
