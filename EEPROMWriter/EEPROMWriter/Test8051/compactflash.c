#include "compactflash.h"
#include "sio.h"

void cfInit(char device)
{
    cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port

    cfWriteCommand(device, 0xef);  // command 'set features'
}

void cfWaitIdle(char device)
{
    char status;
    do
    {
        status = cfReadStatus(device);
    }
    while((status & 0x80)!=0);
}

void cfWaitCommandReady(char device)
{
    char status;

    do
    {
        status = cfReadStatus(device);
    }
    while((status & 0xc0)!=0x40);
}

void cfWaitDataReady(char device)
{
    char status;
    do
    {
        status = cfReadStatus(device);
    }
    while((status & 0x88)!=0x08);
}

void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
{
    char status;
    unsigned int i;
    unsigned int idx;

    sectorCount;

    //sioTXStr(0, "cfReadSector 1\r\n");
    P1 = 0xe1;
    cfWaitIdle(device);

    //sioTXStr(0, "cfReadSector 2\r\n");
    P1 = 0xe2;
    cfWriteSectorCount(device, 0x01);

    //sioTXStr(0, "cfReadSector 3\r\n");
    P1 = 0xe3;
    cfWaitIdle(device);

    //sioTXStr(0, "cfReadSector 4\r\n");
    P1 = 0xe4;
    cfWriteLBA0(device, ((LBA    ) & 0xff) );

    //sioTXStr(0, "cfReadSector 5\r\n");
    P1 = 0xe5;
    cfWaitIdle(device);

    //sioTXStr(0, "cfReadSector 6\r\n");
    P1 = 0xe6;
    cfWriteLBA1(device, ((LBA>>8 ) & 0xff) );

    //sioTXStr(0, "cfReadSector 7\r\n");
    P1 = 0xe7;
    cfWaitIdle(device);

    //sioTXStr(0, "cfReadSector 8\r\n");
    P1 = 0xe8;
    cfWriteLBA2(device, ((LBA>>16) & 0xff) );

    //sioTXStr(0, "cfReadSector 9\r\n");
    P1 = 0xe9;
    cfWaitIdle(device);

    //sioTXStr(0, "cfReadSector 10\r\n");
    P1 = 0xea;
    cfWriteLBA3(device, (0xe0 | 0x00 | ((LBA>>24) & 0x0f)) );

    idx = 0;
    while(sectorCount--)
    {
        do
        {
            P1 = 0xeb;
            cfWaitCommandReady(device);

            P1 = 0xec;
            cfWriteCommand(device, 0x20);

            P1 = 0xed;
            //cfWaitDataReady(device);

            P1 = 0xee;
            status = cfReadStatus(device);

            P1 = 0xef;
        }
        while((status & 0x01)!=0);

        for(i=0; i<SECTOR_SIZE; i++)
        {
            P1 = 0xf0;
            cfWaitDataReady(device);

            P1 = 0xf1;
            buf[i+idx] = cfReadData(device);

            P1 = 0xf2;
        };
        idx += SECTOR_SIZE;
    };

    P1 = 0xf3;
}

//////////////////////////////////////////////////////////////////////////////
//
void cfTest(char device, char* buf)
{
    //P1 = 0xc1;
    //uart0Init();

    //sioTXStr(0, "cfTest 1\r\n");
    cfInit(device);

    //sioTXStr(0, "cfTest 2\r\n");
    cfReadSector(device, buf, 0, 1);
    sioTXBuf(0, buf, 512);
    //sioTXStr(0, "cfTest 3\r\n");

    //sioTXStr(0, "cfTest 4\r\n");
    cfReadSector(device, buf, 1, 1);
    sioTXBuf(0, buf, 512);
    //sioTXStr(0, "cfTest 5\r\n");
}
