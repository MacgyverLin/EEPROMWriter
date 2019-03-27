/*
 */

#include <mcs51/8051.h>

__data unsigned char data_v;
__idata unsigned char idata_v;
__pdata unsigned char pdata_v;
__xdata unsigned char xdata_v;

__code unsigned char code_v  = 0xff;

/* pointer physically in internal ram pointing to object in external ram */
__xdata unsigned char * __data p0;
/* pointer physically in external ram pointing to object in internal ram */
__data unsigned char * __xdata p1;
/* pointer physically in code rom pointing to data in xdata space */
__xdata unsigned char * __code p2;
/* pointer physically in code space pointing to data in code space */
__code unsigned char * __code p3;
/* generic pointer physically located in xdata space */
unsigned char * __xdata p4;
/* generic pointer physically located in default memory space */
unsigned char * p5;
/* the following is a function pointer physically located in data space */
char (* __data fp)(void);

__xdata __at (0x7ffe) unsigned int chksum;
__code __at (0x7ff0) char Id[5] = {'S', 'D', 'C', 'C', '\0'};
volatile __xdata __at (0x8000) unsigned char PORTA_8255;
__bit __at (0x02) bvar;
#define IOWRITE(a, d) (*((volatile __xdata unsigned char *)(a))) = (d)
#define IOREAD(a)     (*((volatile __xdata unsigned char *)(a)))

#define PIO0WriteCtrl(d)  IOWRITE(0xff03, d)
#define PIO0WritePortA(d) IOWRITE(0xff00, d)
#define PIO0WritePortB(d) IOWRITE(0xff01, d)
#define PIO0WritePortC(d) IOWRITE(0xff02, d)
#define PIO1WriteCtrl(d)  IOWRITE(0xff13, d)
#define PIO1WritePortA(d) IOWRITE(0xff10, d)
#define PIO1WritePortB(d) IOWRITE(0xff11, d)
#define PIO1WritePortC(d) IOWRITE(0xff12, d)
#define SysExitBootMode() IOWRITE(0xfff0, 0)
#define SysEnterISPMode() IOWRITE(0xfff1, 0)
#define SysColdBoot()     IOWRITE(0xfff2, 0)

void SysCopyBIOS(unsigned int srcAddr, unsigned int dstAddr, unsigned int size)
{
    __code unsigned char * __data src = *((__code unsigned char * __data)srcAddr);
    __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)dstAddr);
    while(size--)
    {
        *dst++ = *src++;
    }
}

char SysCheckBIOS(unsigned int srcAddr, unsigned int dstAddr, unsigned int size)
{
    __code unsigned char * __data src = *((__code unsigned char * __data)srcAddr);
    __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)dstAddr);
    while(size--)
    {
        if(*dst++ != *src++)
            return 0;
    }
    return -1;
}

void SysClearMemory(unsigned int address, unsigned int size)
{
    __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)address);
    while(size--)
    {
        *dst++ = 0;
    }
}


void main()
{
    unsigned char i;

    data_v =  1;
    idata_v = 1;
    pdata_v = 1;
    xdata_v = 1;

    i = code_v;

    IOWRITE(0xfff3, 0x80);
    IOWRITE(0xfff0, 0xA5);
    IOWRITE(0xfff1, 0xA5);
    IOWRITE(0xfff2, 0xA5);

    i = IOREAD(0xfff0);

    PIO0WriteCtrl(0x80)  ;
    PIO0WritePortA(0x5A) ;
    PIO0WritePortB(0x5A) ;
    PIO0WritePortC(0x5A) ;
    PIO1WriteCtrl(0x80)  ;
    PIO1WritePortA(0x5A) ;
    PIO1WritePortB(0x5A) ;
    PIO1WritePortC(0x5A) ;

    SysCopyBIOS(0x0000, 0x0000, 0x4000);
    SysCheckBIOS(0x0000, 0x0000, 0x4000);
    SysClearMemory(0x0000, 0x4000);
}
