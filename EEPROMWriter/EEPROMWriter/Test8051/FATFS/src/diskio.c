/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2013        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control module to the FatFs module with a defined API.        */
/*-----------------------------------------------------------------------*/
#include "diskio.h"		/* FatFs lower layer API */
#include <stdlib.h>
#include "../../compactflash.h"
/* Definitions of physical drive number for each media */
#define COMPACT_FLASH		    0
#define SIO_DRIVE_0        	    1
#define SIO_DRIVE_1        	    2
#define SIO_DRIVE_2        	    3
#define SIO_DRIVE_3        	    4

/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/
/* Physical drive nmuber (0..) */
DSTATUS disk_initialize(BYTE pdrv)
{
    switch (pdrv)
    {
    default:
    case COMPACT_FLASH:
        //stat = SD_Initialize();//添加SD卡的初始化
        cfInit(0);
        return RES_OK;

    case SIO_DRIVE_0:
        return RES_OK;

    case SIO_DRIVE_1:
        return RES_OK;

    case SIO_DRIVE_2:
        return RES_OK;

    case SIO_DRIVE_3:
        return RES_OK;
    };
}

/*-----------------------------------------------------------------------*/
/* Get Disk Status                                                       */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status (
    BYTE pdrv		/* Physical drive nmuber (0..) */
)
{
    switch (pdrv)
    {
    default:
        return RES_OK;

    case SIO_DRIVE_0:
        return RES_OK;

    case SIO_DRIVE_1:
        return RES_OK;

    case SIO_DRIVE_2:
        return RES_OK;

    case SIO_DRIVE_3:
        return RES_OK;
    };
}



/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
    BYTE pdrv,		/* Physical drive nmuber (0..) */
    BYTE *buff,		/* Data buffer to store read data */
    DWORD sector,	/* Sector address (LBA) */
    UINT count		/* Number of sectors to read (1..128) */
)
{
    switch (pdrv)
    {
    default:
    case COMPACT_FLASH:
        cfReadSector(0, buff, sector, count);
        //res = SD_ReadDisk(buff, sector, count);//添加SD的读扇区功能
        return RES_OK;

    case SIO_DRIVE_0:
        return RES_OK;

    case SIO_DRIVE_1:
        return RES_OK;

    case SIO_DRIVE_2:
        return RES_OK;

    case SIO_DRIVE_3:
        return RES_OK;
    };
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
    switch (pdrv)
    {
    default:
    case COMPACT_FLASH:
        //cfWriteSector(0, buff, sector<<9, count);
        //res = SD_WriteDisk((u8*)buff, sector, count);//添加SD卡的写扇区功能
        return RES_OK;

    case SIO_DRIVE_0:
        return RES_OK;

    case SIO_DRIVE_1:
        return RES_OK;

    case SIO_DRIVE_2:
        return RES_OK;

    case SIO_DRIVE_3:
        return RES_OK;
    };
    /*
    if(res==0x00)
    {
    	return RES_OK;
    }
    else return RES_ERROR;
    */
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
    DRESULT res;

    switch (pdrv)
    {
    default:
    case COMPACT_FLASH:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            res=RES_OK;
            break;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff=512;
            res=RES_OK;
            break;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff=8;
            res=RES_OK;
            break;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = 10000;//SD_GetSectorCount();
            res=RES_OK;
            break;
        default:
            res = RES_PARERR;
            break;
        };
    }
    break;

    case SIO_DRIVE_0:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            res=RES_OK;
            break;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff=512;
            res=RES_OK;
            break;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff=8;
            res=RES_OK;
            break;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = 10000;// SD_GetSectorCount();
            res=RES_OK;
            break;
        default:
            res = RES_PARERR;
            break;
        }
    }
    break;

    case SIO_DRIVE_1:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            res=RES_OK;
            break;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff=512;
            res=RES_OK;
            break;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff=8;
            res=RES_OK;
            break;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = 10000;// SD_GetSectorCount();
            res=RES_OK;
            break;
        default:
            res = RES_PARERR;
            break;
        }
    }
    break;

    case SIO_DRIVE_2:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            res=RES_OK;
            break;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff=512;
            res=RES_OK;
            break;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff=8;
            res=RES_OK;
            break;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = 10000;// SD_GetSectorCount();
            res=RES_OK;
            break;
        default:
            res = RES_PARERR;
            break;
        }
    }
    break;

    case SIO_DRIVE_3:
    {
        switch(cmd)
        {
        case CTRL_SYNC:
            res=RES_OK;
            break;
        case GET_SECTOR_SIZE:
            *(DWORD*)buff=512;
            res=RES_OK;
            break;
        case GET_BLOCK_SIZE:
            *(DWORD*)buff=8;
            res=RES_OK;
            break;
        case GET_SECTOR_COUNT:
            *(DWORD*)buff = 10000;// SD_GetSectorCount();
            res=RES_OK;
            break;
        default:
            res = RES_PARERR;
            break;
        }
    }
    break;
    }
    /*
    if(res==0x00)
    {
    	return RES_OK;
    }
    else return RES_ERROR;
    */
    return res;
}

DWORD get_fattime (void)
{
    return 0;
}

void *ff_memalloc (UINT size)
{
    return malloc(size);
}

void ff_memfree (void* mf)
{
    free(mf);
}

#endif
