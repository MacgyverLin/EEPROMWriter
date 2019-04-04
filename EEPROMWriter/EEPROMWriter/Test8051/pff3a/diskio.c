#ifdef USE_PFF

/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for Petit FatFs (C)ChaN, 2014      */
/*-----------------------------------------------------------------------*/

#include "diskio.h"
#include "../compactflash.h"

/*-----------------------------------------------------------------------*/
/* Initialize Disk Drive                                                 */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (void)
{
	DSTATUS stat;

	// Put your code here
	cfInit(0);
	stat = 0;

	return stat;
}

/*-----------------------------------------------------------------------*/
/* Read Partial Sector                                                   */
/*-----------------------------------------------------------------------*/
char diskioCacheBuf[CF_SECTOR_SIZE];
DWORD lastSector;
char firstRead = 1;
DRESULT disk_readp (
	BYTE* buff,		/* Pointer to the destination object */
	DWORD sector,	/* Sector number (LBA) */
	UINT offset,	/* Offset in the sector */
	UINT count		/* Byte count (bit15:destination) */
)
{
	DRESULT res;
    unsigned int i;

	// Put your code here
	if(firstRead || lastSector!=sector)
    {
        cfReadSector(0, diskioCacheBuf, sector, 1);
        firstRead = 0;
        lastSector = sector;
    }

    for(i=0; i<count; i++)
    {
        buff[i] = diskioCacheBuf[offset + i];
    }

	res = RES_OK;

	return res;
}

/*-----------------------------------------------------------------------*/
/* Write Partial Sector                                                  */
/*-----------------------------------------------------------------------*/
unsigned long writingSector;
DRESULT disk_writep (
	const BYTE* buff,		/* Pointer to the data to be written, NULL:Initiate/Finalize write operation */
	DWORD sc		/* Sector number (LBA) or Number of bytes to send */
)
{
	DRESULT res;
	unsigned int i;

	if (!buff)
    {
		if (sc)
		{
			// Initiate write process
			//cfReadSector(0, diskioCacheBuf, sc, 1);
			writingSector = sc;
            res = RES_OK;
		}
		else
		{
			// Finalize write process
			//cfWriteSector(0, diskioCacheBuf, writingSector, 1);
            res = RES_OK;
		}
	}
	else
    {
		// Send data to the disk
		/*
		for(i=0; i<sc; i++)
            diskioCacheBuf[i] = buff[i];
        */
        res = RES_OK;
	}

	return res;
    /*
	DRESULT res;

	if (!buff)
    {
		if (sc)
		{
			// Initiate write process
		}
		else
		{
			// Finalize write process
		}
	}
	else
    {
		// Send data to the disk
	}

	return res;
	*/
}

#endif