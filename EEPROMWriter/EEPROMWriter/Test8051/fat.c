#include "fat.h"
#include "sio.h"
#include "compactflash.h"

unsigned char res;
unsigned int br;
FATFS fs;
FIL fil;
const char* filename = "1.txt";

unsigned int fatfsTest(char *buf)
{
    unsigned int br = 0;
    res = f_mount(&fs, "0:", 0);
    if(res==FR_OK)
    {
        sioTXStr(0, "f_mount OK\r\n");
    }
    else
    {
        sioTXStr(0, "f_mount failed\r\n");
    }

    sioTXStr(0, buf);
    res = f_open(&fil, "1.txt", FA_READ);
    if(res==FR_OK)
    {
        sioTXStr(0, "f_open OK\r\n");
    }
    else
    {
        sioTXStr(0, "f_open failed\r\n");
    }

    res = f_read(&fil, buf, SECTOR_SIZE, &br);
    if(res==FR_OK)
    {
        sioTXStr(0, "f_read OK\r\n");
        sioTXBuf(0, buf, br);
    }
    else
    {
        sioTXStr(0, "f_read failed\r\n");
    }

    res = f_close(&fil);

    return br;
}
