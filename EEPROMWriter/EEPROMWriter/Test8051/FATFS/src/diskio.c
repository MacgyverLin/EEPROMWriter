/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2013        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control module to the FatFs module with a defined API.        */
/*-----------------------------------------------------------------------*/
#include <stdlib.h>
#include "diskio.h"
#include "../../compactflash.h"
#include "../../sioDisk.h"

/* Definitions of physical drive number for each media */
#define COMPACT_FLASH		    0
#define SIODISK0             	1
#define SIODISK1             	2
#define SIODISK2             	3
#define SIODISK3             	4

/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/
/* Physical drive nmuber (0..) */
DSTATUS disk_initialize(BYTE pdrv)
{
    DSTATUS res;

    switch (pdrv)
    {
    case COMPACT_FLASH:
        cfInit(0);

        res = RES_OK;

        return res;

    case SIODISK0:
        sioDiskInit(0);
        res = RES_OK;

        return res;

    case SIODISK1:
        sioDiskInit(1);
        res = RES_OK;

        return res;

    case SIODISK2:
        sioDiskInit(2);
        res = RES_OK;

        return res;

    case SIODISK3:
        sioDiskInit(3);
        res = RES_OK;

        return res;
    };

    return STA_NOINIT;
}

/*-----------------------------------------------------------------------*/
/* Get Disk Status                                                       */
/*-----------------------------------------------------------------------*/
/* Physical drive nmuber (0..) */
DSTATUS disk_status(BYTE pdrv)
{
    DSTATUS res;

    switch (pdrv)
    {
    case COMPACT_FLASH :
        res = RES_OK;
        return res;

    case SIODISK0:
        res = RES_OK;
        return res;

    case SIODISK1:
        res = RES_OK;
        return res;

    case SIODISK2:
        res = RES_OK;
        return res;

    case SIODISK3:
        res = RES_OK;
        return res;
    }
    return STA_NOINIT;
}

/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/
DRESULT disk_read(
    BYTE pdrv,		/* Physical drive nmuber (0..) */
    BYTE *buff,		/* Data buffer to store read data */
    DWORD sector,	/* Sector address (LBA) */
    UINT count		/* Number of sectors to read (1..128) */
)
{
    DRESULT res;

    switch (pdrv)
    {
    case COMPACT_FLASH:
        cfReadSector(0, buff, sector, count);
        res = RES_OK;
        return res;

    case SIODISK0:
        sioDiskReadSector(0, buff, sector, count);
        res = RES_OK;
        return res;

    case SIODISK1:
        sioDiskReadSector(1, buff, sector, count);
        res = RES_OK;
        return res;

    case SIODISK2:
        sioDiskReadSector(2, buff, sector, count);
        res = RES_OK;
        return res;

    case SIODISK3:
        sioDiskReadSector(3, buff, sector, count);
        res = RES_OK;
        return res;
    }
    return RES_PARERR;
}

/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/
#if _USE_WRITE
DRESULT disk_write (
    BYTE pdrv,			/* Physical drive nmuber (0..) */
    const BYTE *buff,	/* Data to be written */
    DWORD sector,		/* Sector address (LBA) */
    UINT count			/* Number of sectors to write (1..128) */
)
{
    DRESULT res;

    switch (pdrv)
    {
    case COMPACT_FLASH:
        cfWriteSector(0, buff, sector, count);
        res = RES_OK;
        return res;

    case SIODISK0:
        sioDiskWriteSector(0, buff, sector, count);
        res = RES_OK;
        return res;

    case SIODISK1:
        sioDiskWriteSector(1, buff, sector, count);
        res = RES_OK;
        return res;

    case SIODISK2:
        sioDiskWriteSector(2, buff, sector, count);
        res = RES_OK;
        return res;

    case SIODISK3:
        sioDiskWriteSector(3, buff, sector, count);
        res = RES_OK;
        return res;
    }
    return RES_ERROR;
}
#endif


/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

#if _USE_IOCTL
DRESULT disk_ioctl (
    BYTE pdrv,		/* Physical drive nmuber (0..) */
    BYTE cmd,		/* Control code */
    void *buff		/* Buffer to send/receive control data */
)
{
    switch (pdrv)
    {
    case COMPACT_FLASH:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            return RES_OK;

        case GET_SECTOR_SIZE:
            *(DWORD*)buff = CF_SECTOR_SIZE;
            return RES_OK;

        case GET_BLOCK_SIZE:
            *(DWORD*)buff = 8;
            return RES_OK;

        case GET_SECTOR_COUNT:
            *(DWORD*)buff = cfDiskGetSectorCount(0);
            return RES_OK;

        default:
            return RES_PARERR;
        }
    }

    case SIODISK0:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            return RES_OK;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff = SIODISK_SECTOR_SIZE;
            return RES_OK;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff = 8;
            return RES_OK;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = sioDiskGetSectorCount(0);
            return RES_OK;
        default:
            return RES_PARERR;
        }
    }

    case SIODISK1:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            return RES_OK;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff = SIODISK_SECTOR_SIZE;
            return RES_OK;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff = 8;
            return RES_OK;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = sioDiskGetSectorCount(1);
            return RES_OK;
        default:
            return RES_PARERR;
        }
    }

    case SIODISK2:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            return RES_OK;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff = SIODISK_SECTOR_SIZE;
            return RES_OK;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff = 8;
            return RES_OK;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = sioDiskGetSectorCount(2);
            return RES_OK;
        default:
            return RES_PARERR;
        }
    }

    case SIODISK3:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            return RES_OK;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff = SIODISK_SECTOR_SIZE;
            return RES_OK;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff = 8;
            return RES_OK;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = sioDiskGetSectorCount(3);
            return RES_OK;
        default:
            return RES_PARERR;
        }
    }

    default:
        return RES_ERROR;
    }
}

DWORD get_fattime (void)
{
    return 0;
}

void *ff_memalloc (UINT size)
{
#ifdef USE_MYMEM
    return (void*)mymalloc(size);
#else
    return (void*)malloc(size);
#endif
}

void ff_memfree (void* mf)
{
#ifdef USE_MYMEM
    myfree(mf);
#else
    free(mf);
#endif
}

#endif
