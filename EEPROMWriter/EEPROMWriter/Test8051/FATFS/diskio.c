#ifdef USE_PFF
#else

/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2016        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control modules to the FatFs module with a defined API.       */
/*-----------------------------------------------------------------------*/

#include "ff.h"			/* Obtains integer types */
#include "diskio.h"		/* Declarations of disk functions */

/* Definitions of physical drive number for each drive */
// "CF0","CF1","DVD0","DVD1","SD0","SD1","RAM0","RAM1"
#define DEV_CF0		0
#define DEV_CF1		1
#define DEV_DVD0	2
#define DEV_DVD1	3
#define DEV_SD0		4
#define DEV_SD1		5
#define DEV_RAM0	6
#define DEV_RAM1	7
#include "cfdiskio.h"
#include "dvddiskio.h"
#include "sddiskio.h"
#include "ramdiskio.h"

/*-----------------------------------------------------------------------*/
/* Get Drive Status                                                      */
/*-----------------------------------------------------------------------*/
DSTATUS disk_status (
	BYTE pdrv		/* Physical drive nmuber to identify the drive */
)
{
	DSTATUS stat;
	int result;

	switch (pdrv) {
	case DEV_CF0 :
		stat = CF_disk_status(0);
		return stat;

	case DEV_CF1 :
		stat = CF_disk_status(1);
		return stat;

	case DEV_DVD0 :
		stat = DVD_disk_status(0);
		return stat;
	
	case DEV_DVD1 :
		stat = DVD_disk_status(1);
		return stat;	
	
	case DEV_SD0 :
		stat = SD_disk_status(0);
		return stat;
	
	case DEV_SD1 :
		stat = SD_disk_status(1);
		return stat;		
	
	case DEV_RAM0 :
		stat = RAM_disk_status(0);
		return stat;
	
	case DEV_RAM1 :
		stat = RAM_disk_status(1);
		return stat;			
	}
	
	return STA_NOINIT;
}



/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
	BYTE pdrv				/* Physical drive nmuber to identify the drive */
)
{
	DSTATUS stat;
	int result;

	switch (pdrv) {
	case DEV_CF0 :
		stat = CF_disk_initialize(0);
		return stat;

	case DEV_CF1 :
		stat = CF_disk_initialize(1);
		return stat;

	case DEV_DVD0 :
		stat = DVD_disk_initialize(0);
		return stat;
	
	case DEV_DVD1 :
		stat = DVD_disk_initialize(1);
		return stat;	
	
	case DEV_SD0 :
		stat = SD_disk_initialize(0);
		return stat;
	
	case DEV_SD1 :
		stat = SD_disk_initialize(1);
		return stat;		
	
	case DEV_RAM0 :
		stat = RAM_disk_initialize(0);
		return stat;
	
	case DEV_RAM1 :
		stat = RAM_disk_initialize(1);
		return stat;		
	}
	return STA_NOINIT;
}


/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
	BYTE *buff,		/* Data buffer to store read data */
	DWORD sector,	/* Start sector in LBA */
	UINT count		/* Number of sectors to read */
)
{
	DRESULT res;
	int result;

	switch (pdrv) {
	case DEV_CF0 :
		res = CF_disk_read(0, buff, sector, count);
		return res;

	case DEV_CF1 :
		res = CF_disk_read(1, buff, sector, count);
		return res;

	case DEV_DVD0 :
		res = DVD_disk_read(0, buff, sector, count);
		return res;
	
	case DEV_DVD1 :
		res = DVD_disk_read(1, buff, sector, count);
		return res;	
	
	case DEV_SD0 :
		res = SD_disk_read(0, buff, sector, count);
		return res;
	
	case DEV_SD1 :
		res = SD_disk_read(1, buff, sector, count);
		return res;		
	
	case DEV_RAM0 :
		res = RAM_disk_read(0, buff, sector, count);
		return res;
	
	case DEV_RAM1 :
		res = RAM_disk_read(1, buff, sector, count);
		return res;			
	}

	return RES_PARERR;
}



/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

#if FF_FS_READONLY == 0

DRESULT disk_write (
	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
	const BYTE *buff,	/* Data to be written */
	DWORD sector,		/* Start sector in LBA */
	UINT count			/* Number of sectors to write */
)
{
	DRESULT res;
	int result;

	switch (pdrv) {
	case DEV_CF0 :
		res = CF_disk_write(0, buff, sector, count);
		return res;

	case DEV_CF1 :
		res = CF_disk_write(1, buff, sector, count);
		return res;

	case DEV_DVD0 :
		res = DVD_disk_write(0, buff, sector, count);
		return res;
	
	case DEV_DVD1 :
		res = DVD_disk_write(1, buff, sector, count);
		return res;	
	
	case DEV_SD0 :
		res = SD_disk_write(0, buff, sector, count);
		return res;
	
	case DEV_SD1 :
		res = SD_disk_write(1, buff, sector, count);
		return res;		
	
	case DEV_RAM0 :
		res = RAM_disk_write(0, buff, sector, count);
		return res;
	
	case DEV_RAM1 :
		res = RAM_disk_write(1, buff, sector, count);
		return res;		
	}

	return RES_PARERR;
}

#endif


/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

DRESULT disk_ioctl (
	BYTE pdrv,		/* Physical drive nmuber (0..) */
	BYTE cmd,		/* Control code */
	void *buff		/* Buffer to send/receive control data */
)
{
	DRESULT res;
	int result;

	switch (pdrv) {
	case DEV_CF0 :

		// Process of the command for the RAM drive

		return res;

	case DEV_CF1 :

		// Process of the command for the MMC/SD card

		return res;

	case DEV_DVD0 :

		// Process of the command the USB drive

		return res;
	
	case DEV_DVD1 :

		// Process of the command the USB drive

		return res;	
	case DEV_SD0 :

		// Process of the command the USB drive

		return res;
	
	case DEV_SD1 :

		// Process of the command the USB drive

		return res;		
	
	case DEV_RAM0 :

		// Process of the command the USB drive

		return res;
	
	case DEV_RAM1 :

		// Process of the command the USB drive

		return res;		
	}

	return RES_PARERR;
}

#endif