#include "pio.h"
#include "delay.h"

void pioTest(char device)
{
    char v;
    pioWriteCtrl(device, 0x80);

    v = 255;
    do
    {
        delay_ms(500);
        pioWritePortA(device, v);
    }while(v--);

    v = 255;
    do
    {
        delay_ms(500);
        pioWritePortB(device, v);
    }while(v--);

    v = 255;
    do
    {
        delay_ms(500);
        pioWritePortC(device, v);
    }while(v--);
}
