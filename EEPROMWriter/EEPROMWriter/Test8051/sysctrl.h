#ifndef _SYSCTRL_h_
#define _SYSCTRL_h_

#include <mcs51/8051.h>

#ifdef __cplusplus
extern "C"
{
#endif

/*
__data unsigned char data_v;
__idata unsigned char idata_v;
__pdata unsigned char pdata_v;
__xdata unsigned char xdata_v;

__code unsigned char code_v  = 0xff;
// pointer physically in internal ram pointing to object in external ram
__xdata unsigned char * __data ptr0;
// pointer physically in external ram pointing to object in internal ram
__data unsigned char * __xdata ptr1;
// pointer physically in code rom pointing to data in xdata space
__xdata unsigned char * __code ptr2;
// pointer physically in code space pointing to data in code space
__code unsigned char * __code ptr3;
// generic pointer physically located in xdata space
unsigned char * __xdata ptr4;
// generic pointer physically located in default memory space
unsigned char * ptr5;
// the following is a function pointer physically located in data space
char (* __data functr)(void);

__xdata __at (0x7ffe) unsigned int chksum;
__code __at (0x7ff0) char Id[5] = {'S', 'D', 'C', 'C', '\0'};
volatile __xdata __at (0x8000) unsigned char PORTA_8255;
__bit __at (0x02) bvar;
*/

//////////////////////////////////////////////////////////////////////////////
//
#define IOWRITE(a, d) (*((volatile __xdata unsigned char * __data)(a))) = (d)
#define IOREAD(a)     (*((volatile __xdata unsigned char * __data)(a)))

//////////////////////////////////////////////////////////////////////////////
//
#define SYS_BASE          0xFF70
#define SYS_PORT_0        (SYS_BASE+0)
#define SYS_PORT_1        (SYS_BASE+1)
#define SYS_PORT_2        (SYS_BASE+2)
#define SYS_PORT_3        (SYS_BASE+3)
#define SYS_PORT_4        (SYS_BASE+4)
#define SYS_PORT_5        (SYS_BASE+5)
#define SYS_PORT_6        (SYS_BASE+6)
#define SYS_PORT_7        (SYS_BASE+7)
#define sysCopyBIOS(srcAddr, dstAddr, size)\
{\
    __code unsigned char * __data src = *((__code unsigned char * __data)srcAddr);\
    __xdata volatile unsigned char *__data dst = *((__xdata volatile unsigned char * __data)dstAddr);\
    __data unsigned int count = size;\
    while(count--)\
        *dst++ = *src++;\
}
#define sysCheckBIOS(ok, srcAddr, dstAddr, size)\
{\
    __code unsigned char * __data src = *((__code unsigned char * __data)srcAddr);\
    __xdata volatile unsigned char *__data dst = *((__xdata volatile unsigned char * __data)dstAddr);\
    __data unsigned int count = size;\
    ok = 1;\
    while(count--)\
    {\
        if(*dst++ != *src++)\
        {\
        ok = 0;\
        break;\
        }\
    }\
}
#define sysClearMemory(address, size)\
{\
    __xdata volatile unsigned char *__data dst = *((__xdata volatile unsigned char * __data)address);\
    __data unsigned int count = size;\
    while(count--)\
    {\
        *dst++ = 0;\
    }\
}

#define SYS_PORT_ENTER_NORMAL_MODE SYS_PORT_0
#define SYS_PORT_ENTER_ISP_MODE SYS_PORT_1
#define SYS_PORT_COLD_BOOT SYS_PORT_2

#define sysEnterNormalMode() IOWRITE(SYS_PORT_ENTER_NORMAL_MODE, 0)
#define sysEnterISPMode() IOWRITE(SYS_PORT_ENTER_ISP_MODE, 0)
#define sysColdBoot()     IOWRITE(SYS_PORT_COLD_BOOT, 0)

#ifdef __cplusplus
};
#endif

#endif // _SYSCTRL_h_