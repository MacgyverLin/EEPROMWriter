#include "compactflash.h"
#include <stdio.h>
#ifdef TEST_SIO
#include "sio.h"
#endif

void cfInit(char device)
{
    cfWaitIdle(device);

    cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port

    cfWaitCommandReady(device);

    cfWriteCommand(device, 0xef);  // command 'set features'
}

void cfWaitIdle(char device)
{
    while( (cfReadStatus(device) & 0x80) != 0 );
}

void cfWaitCommandReady(char device)
{
    while( (cfReadStatus(device) & 0xc0) != 0x40 );
}

void cfWaitDataReady(char device)
{
    while( (cfReadStatus(device) & 0x88) != 0x08 );
}

void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
{
    char status;
    unsigned int i;
    unsigned int idx;

    cfWriteSectorCount(device, 0x01);

    cfWaitIdle(device);

    cfWriteLBA0(device, ((LBA   ) & 0xff) );

    cfWaitIdle(device);

    cfWriteLBA1(device, ((LBA>>8) & 0xff) );

    cfWaitIdle(device);

    cfWriteLBA2(device, ((LBA>>16) & 0xff) );

    cfWaitIdle(device);

    cfWriteLBA3(device, (( ((LBA>>24) & 0x1f) | 0xe0)) );

    idx = 0;
    while(sectorCount--)
    {
        do
        {
            cfWaitCommandReady(device);

            cfWriteCommand(device, 0x20);

            cfWaitDataReady(device);

            status = cfReadStatus(device);
        }
        while((status & 0x01)!=0);

        i = 0;
        while(i < CF_SECTOR_SIZE)
        {
            cfWaitDataReady(device);

            buf[i+idx] = cfReadData(device);

            i++;
        }
        idx += CF_SECTOR_SIZE;
    };
}

void cfWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount)
{
    char status;
    unsigned int i;
    unsigned int idx;

    cfWaitIdle(device);

    cfWriteSectorCount(device, 0x01);

    cfWaitIdle(device);

    cfWriteLBA0(device, ((LBA   ) & 0xff) );

    cfWaitIdle(device);

    cfWriteLBA1(device, ((LBA>>8) & 0xff) );

    cfWaitIdle(device);

    cfWriteLBA2(device, ((LBA>>16) & 0xff) );

    cfWaitIdle(device);

    cfWriteLBA3(device, (((LBA>>24) | 0xe0) & 0xff) );

    idx = 0;
    while(sectorCount--)
    {
        do
        {
            cfWaitCommandReady(device);

            cfWriteCommand(device, 0x30);

            cfWaitDataReady(device);

            status = cfReadStatus(device);
        }
        while((status & 0x01)!=0);

        i = 0;
        while(i < CF_SECTOR_SIZE)
        {
            cfWaitDataReady(device);

            cfWriteData(device, buf[i+idx]);

            i++;
        }
        idx += CF_SECTOR_SIZE;
    };
}

unsigned long cfDiskGetSectorCount(char device)
{
    return 10000;
}