#include <mcs51/8051.h>
#include "pio.h"
#include "sio.h"
#include "compactflash.h"
#include "sysctrl.h"
#include "led.h"

char buf[SECTOR_SIZE];
void main()
{
    __data char res;
/*
    data_v =  1;
    idata_v = 1;
    pdata_v = 1;
    xdata_v = 1;

    i = code_v;
*/
    P1 = 0x01;
    sysCopyBIOS(0x0000, 0x0000, 0x4000);

    P1 = 0x02;
    sysEnterNormalMode();

    P1 = 0x03;
    res = 0;
    //sysCheckBIOS(res, 0x0000, 0x0000, 0x4000);
    if(1)
    {
        ledTest();
        // sysEnterISPMode();
        // sysColdBoot();

        P1 = 0x04;
        // delay_us(2500);

        P1 = 0x05;
        // delay_ms(2500);

        P1 = 0x06;
        /*
        IOWRITE(0xff03, 0x80);
        IOWRITE(0xff00, 0xA5);
        IOWRITE(0xff01, 0xC6);
        IOWRITE(0xff02, 0xE7);
        res = IOREAD(0xff00);
        res = IOREAD(0xff01);
        res = IOREAD(0xff02);
        res = IOREAD(0xff03);

        P1 = 0x07;
        IOWRITE(0xff13, 0x80);
        IOWRITE(0xff10, 0xA5);
        IOWRITE(0xff11, 0xC6);
        IOWRITE(0xff12, 0xE7);
        res = IOREAD(0xff10);
        res = IOREAD(0xff11);
        res = IOREAD(0xff12);
        res = IOREAD(0xff13);
        */

        //P1 = 0x08;
        //pioTest(0);

        //P1 = 0x09;
        //pioTest(1);

        P1 = 0x10;
        // uart0Test1();

        P1 = 0x11;
        //uart0Test2();

        P1 = 0x12;
        //uart0Test3();

        P1 = 0x13;
        sioInit(0);
        cfTest(0, buf);
        sioTXBuf(0, buf, SECTOR_SIZE);

        //P1 = 0x14;
        //cfTest(1);

        P1 = 0x81;
    }
    else
    {
        P1 = 0x82;
    }
}
