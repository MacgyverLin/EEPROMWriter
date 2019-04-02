#include "compactflash.h"

void cfInit(char device)
{
    cfWaitIdle(device);

    cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port

    cfWaitIdle(device);

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

    P1 = 0xe1;
    cfWaitIdle(device);

    P1 = 0xe2;
    cfWriteSectorCount(device, 0x01);

    P1 = 0xe3;
    cfWaitIdle(device);

    P1 = 0xe4;
    cfWriteLBA0(device, ((LBA   ) & 0xff) );

    P1 = 0xe5;
    cfWaitIdle(device);

    P1 = 0xe6;
    cfWriteLBA1(device, ((LBA>>8) & 0xff) );

    P1 = 0xe7;
    cfWaitIdle(device);

    P1 = 0xe8;
    cfWriteLBA2(device, ((LBA>>16) & 0xff) );

    P1 = 0xe9;
    cfWaitIdle(device);

    P1 = 0xea;
    cfWriteLBA3(device, (( ((LBA>>24) & 0x1f) | 0xe0)) );

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
            cfWaitDataReady(device);

            P1 = 0xee;
            status = cfReadStatus(device);

            P1 = 0xef;
        }
        while((status & 0x01)!=0);

        i = 0;
        while(i < CF_SECTOR_SIZE)
        {
            P1 = 0xf0;
            cfWaitDataReady(device);

            P1 = 0xf1;
            buf[i+idx] = cfReadData(device);

            i++;

            P1 = 0xf2;
        }
        idx += CF_SECTOR_SIZE;
    };

    P1 = 0xf3;
}

void cfWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount)
{
    char status;
    unsigned int i;
    unsigned int idx;

    sectorCount;

    P1 = 0xe1;
    cfWaitIdle(device);

    P1 = 0xe2;
    cfWriteSectorCount(device, 0x01);

    P1 = 0xe3;
    cfWaitIdle(device);

    P1 = 0xe4;
    cfWriteLBA0(device, ((LBA   ) & 0xff) );

    P1 = 0xe5;
    cfWaitIdle(device);

    P1 = 0xe6;
    cfWriteLBA1(device, ((LBA>>8) & 0xff) );

    P1 = 0xe7;
    cfWaitIdle(device);

    P1 = 0xe8;
    cfWriteLBA2(device, ((LBA>>16) & 0xff) );

    P1 = 0xe9;
    cfWaitIdle(device);

    P1 = 0xea;
    cfWriteLBA3(device, (((LBA>>24) | 0xe0) & 0xff) );

    idx = 0;
    while(sectorCount--)
    {
        do
        {
            P1 = 0xeb;
            cfWaitCommandReady(device);

            P1 = 0xec;
            cfWriteCommand(device, 0x30);

            P1 = 0xed;
            cfWaitDataReady(device);

            P1 = 0xee;
            status = cfReadStatus(device);

            P1 = 0xef;
        }
        while((status & 0x01)!=0);

        i = 0;
        while(i < CF_SECTOR_SIZE)
        {
            P1 = 0xf0;
            cfWaitDataReady(device);

            P1 = 0xf1;
            cfWriteData(device, buf[i+idx]);

            i++;

            P1 = 0xf2;
        }
        idx += CF_SECTOR_SIZE;
    };

    P1 = 0xf3;
}

unsigned long cfDiskGetSectorCount(char device)
{
    return 10000;
}
