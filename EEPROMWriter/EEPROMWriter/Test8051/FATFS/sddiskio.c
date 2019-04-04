#include "sddiskio.h"

int SD_disk_status(char device)
{
	return 0;
}

int SD_disk_initialize(char device)
{
	return 0;
}

int SD_disk_read(char device, char* buff, unsigned long sector, unsigned int count)
{
	return 0;
}

int SD_disk_write(char device, const char* buff, unsigned long sector, unsigned int count)
{
	return 0;
}

int SD_disk_ioctl(char device, BYTE cmd, void *buff)
{
	return 0;
}