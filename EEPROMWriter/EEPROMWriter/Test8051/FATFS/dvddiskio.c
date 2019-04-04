#include "dvddiskio.h"

int DVD_disk_status(char device)
{
	return 0;
}

int DVD_disk_initialize(char device)
{
	return 0;
}

int DVD_disk_read(char device, char* buff, unsigned long sector, unsigned int count)
{
	return 0;
}

int DVD_disk_write(char device, const char* buff, unsigned long sector, unsigned int count)
{
	return 0;
}

int DVD_disk_ioctl(char device, BYTE cmd, void *buff)
{
	DRESULT res;
	switch (cmd)
	{
	case CTRL_SYNC:
		res = RES_OK;
		break;
	case GET_SECTOR_SIZE:
		*(DWORD*)buff = 512;
		res = RES_OK;
		break;
	case GET_BLOCK_SIZE:
		*(DWORD*)buff = 8;
		res = RES_OK;
		break;
	case GET_SECTOR_COUNT:
		*(DWORD*)buff = 524288;//SD_GetSectorCount();
		res = RES_OK;
		break;
	default:
		res = RES_PARERR;
		break;
	}
	
	return res;
}