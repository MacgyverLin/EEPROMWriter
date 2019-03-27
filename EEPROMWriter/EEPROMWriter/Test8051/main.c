#include <mcs51/8051.h>

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
#define PIO0_BASE          0xFF00
#define PIO0_PORT_A        (PIO0_BASE+0)
#define PIO0_PORT_B        (PIO0_BASE+1)
#define PIO0_PORT_C        (PIO0_BASE+2)
#define PIO0_PORT_CTRL     (PIO0_BASE+3)

#define PIO1_BASE          0xFF10
#define PIO1_PORT_A        (PIO1_BASE+0)
#define PIO1_PORT_B        (PIO1_BASE+1)
#define PIO1_PORT_C        (PIO1_BASE+2)
#define PIO1_PORT_CTRL     (PIO1_BASE+3)

#define pio0WriteCtrl(d)  IOWRITE(PIO0_PORT_CTRL, d)
#define pio0WritePortA(d) IOWRITE(PIO0_PORT_A, d)
#define pio0WritePortB(d) IOWRITE(PIO0_PORT_B, d)
#define pio0WritePortC(d) IOWRITE(PIO0_PORT_C, d)
#define pio1WriteCtrl(d)  IOWRITE(PIO1_PORT_CTRL, d)
#define pio1WritePortA(d) IOWRITE(PIO1_PORT_A, d)
#define pio1WritePortB(d) IOWRITE(PIO1_PORT_B, d)
#define pio1WritePortC(d) IOWRITE(PIO1_PORT_C, d)
#define pio0ReadCtrl()   IOREAD(PIO0_PORT_CTRL)
#define pio0ReadPortA()  IOREAD(PIO0_PORT_A)
#define pio0ReadPortB()  IOREAD(PIO0_PORT_B)
#define pio0ReadPortC()  IOREAD(PIO0_PORT_C)
#define pio1ReadCtrl()   IOREAD(PIO1_PORT_CTRL)
#define pio1ReadPortA()  IOREAD(PIO1_PORT_A)
#define pio1ReadPortB()  IOREAD(PIO1_PORT_B)
#define pio1ReadPortC()  IOREAD(PIO1_PORT_C)

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

//////////////////////////////////////////////////////////////////////////////
//
#define CF0_BASE                        0x0FF20
#define CF0_PORT_DATA                   (CF0_BASE+0)
#define CF0_PORT_ERROR                  (CF0_BASE+1)
#define CF0_PORT_FEATURES               (CF0_BASE+1)
#define CF0_PORT_SECTOR_COUNT           (CF0_BASE+2)
#define CF0_PORT_LBA_0                  (CF0_BASE+3)
#define CF0_PORT_LBA_1                  (CF0_BASE+4)
#define CF0_PORT_LBA_2                  (CF0_BASE+5)
#define CF0_PORT_LBA_3                  (CF0_BASE+6)
#define CF0_PORT_STATUS                 (CF0_BASE+7)
#define CF0_PORT_COMMAND                (CF0_BASE+7)

#define CF1_BASE                        0x0FF30
#define CF1_PORT_DATA                   (CF1_BASE+0)
#define CF1_PORT_ERROR                  (CF1_BASE+1)
#define CF1_PORT_FEATURES               (CF1_BASE+1)
#define CF1_PORT_SECTOR_COUNT           (CF1_BASE+2)
#define CF1_PORT_LBA_0                  (CF1_BASE+3)
#define CF1_PORT_LBA_1                  (CF1_BASE+4)
#define CF1_PORT_LBA_2                  (CF1_BASE+5)
#define CF1_PORT_LBA_3                  (CF1_BASE+6)
#define CF1_PORT_STATUS                 (CF1_BASE+7)
#define CF1_PORT_COMMAND                (CF1_BASE+7)

#define cf0WriteData(d)         IOWRITE(CF0_PORT_DATA, d)
#define cf0ReadData()           IOREAD(CF0_PORT_DATA)
#define cf0WriteFeatures(d)     IOWRITE(CF0_PORT_FEATURES, d)
#define cf0ReadError()          IOREAD(CF0_PORT_ERROR)
#define cf0WriteSectorCount(d)  IOWRITE(CF0_PORT_SECTOR_COUNT, d)
#define cf0WriteLBA0(d)         IOWRITE(CF0_PORT_LBA_0, d)
#define cf0WriteLBA1(d)         IOWRITE(CF0_PORT_LBA_1, d)
#define cf0WriteLBA2(d)         IOWRITE(CF0_PORT_LBA_2, d)
#define cf0WriteLBA3(d)         IOWRITE(CF0_PORT_LBA_3, d)
#define cf0WriteCommand(d)      IOWRITE(CF0_PORT_COMMAND, d)
#define cf0ReadStatus()         IOREAD(CF0_PORT_STATUS)

#define cf1WriteData(d)         IOWRITE(CF1_PORT_DATA, d)
#define cf1ReadData()           IOREAD(CF1_PORT_DATA)
#define cf1WriteFeatures(d)     IOWRITE(CF1_PORT_FEATURES, d)
#define cf1ReadError()          IOREAD(CF1_PORT_ERROR)
#define cf1WriteSectorCount(d)  IOWRITE(CF1_PORT_SECTOR_COUNT, d)
#define cf1WriteLBA0(d)         IOWRITE(CF1_PORT_LBA_0, d)
#define cf1WriteLBA1(d)         IOWRITE(CF1_PORT_LBA_1, d)
#define cf1WriteLBA2(d)         IOWRITE(CF1_PORT_LBA_2, d)
#define cf1WriteLBA3(d)         IOWRITE(CF1_PORT_LBA_3, d)
#define cf1WriteCommand(d)      IOWRITE(CF1_PORT_COMMAND, d)
/****************************************************************
;    7       6       5       4       3       2       1       0
;+-------+-------+-------+-------+-------+-------+-------+-------+
;|  BSY  | DRDY  |  DWF  |  DSC  |  DRQ  | CORR  |  IDX  |  ERR  |
;+-------+-------+-------+-------+-------+-------+-------+-------+
;****************************************************************/
#define cf1ReadStatus()         IOREAD(CF1_PORT_STATUS)

void cf0Init()
{
    cf0WriteFeatures(0x01); //  set 8 bit mode to features port

    cf0WriteCommand(0xef);  // command 'set features'
}

void cf0WaitIdle()
{
    __data char status;
    do
    {
        status = cf0ReadStatus();
    }while((status & 0x80)!=0);
}

void cf0WaitCommandReady()
{
    __data char status;
    do
    {
        status = cf0ReadStatus();
    }while((status & 0xc0)!=0x40);
}

void cf0WaitDataReady()
{
    __data char status;
    do
    {
        status = cf0ReadStatus();
    }while((status & 0x88)!=0x08);
}

#define SECTOR_SIZE 512
void cf0ReadSector(char* buf, unsigned int sectorCount)
{
    __data char status;
    __data unsigned int i;
    __data unsigned int idx;

    P1 = 0xe1;
    cf0WaitIdle();

    P1 = 0xe2;
    cf0WriteSectorCount(0x01);

    P1 = 0xe3;
    cf0WaitIdle();

    P1 = 0xe4;
    cf0WriteLBA0(0x00);

    P1 = 0xe5;
    cf0WaitIdle();

    P1 = 0xe6;
    cf0WriteLBA1(0x00);

    P1 = 0xe7;
    cf0WaitIdle();

    P1 = 0xe8;
    cf0WriteLBA2(0x00);

    P1 = 0xe9;
    cf0WaitIdle();

    P1 = 0xea;
    cf0WriteLBA3(0xe0);

    do
    {
        P1 = 0xeb;
        cf0WaitCommandReady();

        P1 = 0xec;
        cf0WriteCommand(0x20);

        P1 = 0xed;
        cf0WaitDataReady();

        P1 = 0xee;
        status = cf0ReadStatus();

        P1 = 0xef;
    }while((status & 0x01)!=0);

    idx = 0;
    //while(sectorCount--)
    {
        i = 0;
        while(i++ < SECTOR_SIZE)
        {
            P1 = 0xf0;
            cf0WaitDataReady();

            P1 = 0xf1;
            buf[i+idx] = cf0ReadData();

            P1 = 0xf2;
        }
        idx += SECTOR_SIZE;
    };

    P1 = 0xf3;
}

//////////////////////////////////////////////////////////////////////////////
//
void delay_us(unsigned int us)
{
    us;
    __asm
                    PUSH            ar6
                    PUSH            ar7

                    MOV				R6, DPH
delay_us_1:   	    MOV				R7, DPL
delay_us_2:         DJNZ			R7, delay_us_2
                    DJNZ			R6, delay_us_1

                    POP             ar7
                    POP             ar6
    __endasm;
}

void delay_ms(unsigned int ms)
{
    ms;
    __asm
                    PUSH            ar4
                    PUSH            ar5
                    PUSH            ar6
                    PUSH            ar7
                    MOV				R4, DPH
delay_ms_1:			MOV				R5, DPL
delay_ms_2:		    MOV				R6, #10
delay_ms_3:		    MOV				R7, #100
delay_ms_4:	    	DJNZ			R7, delay_ms_4
					DJNZ			R6, delay_ms_3
					DJNZ			R5, delay_ms_2
					DJNZ			R4, delay_ms_1
					POP             ar7
					POP             ar6
					POP             ar5
					POP             ar4
    __endasm;
}

//////////////////////////////////////////////////////////////////////////////
//
void ledTest()
{
    P1 = ~0x01;
    delay_ms(500);

    P1 = ~0x02;
    delay_ms(500);

    P1 = ~0x04;
    delay_ms(500);

    P1 = ~0x08;
    delay_ms(500);

    P1 = ~0x10;
    delay_ms(500);

    P1 = ~0x20;
    delay_ms(500);

    P1 = ~0x40;
    delay_ms(500);

    P1 = ~0x80;
    delay_ms(500);
}

//////////////////////////////////////////////////////////////////////////////
//
void pio0Test()
{
    __data char v;
    pio0WriteCtrl(0x80);

    v = 255;
    do
    {
        delay_ms(500);
        pio0WritePortA(v);
    }while(v--);

    v = 255;
    do
    {
        delay_ms(500);
        pio0WritePortB(v);
    }while(v--);

    v = 255;
    do
    {
        delay_ms(500);
        pio0WritePortC(v);
    }while(v--);
}

void pio1Test()
{
    __data char v;
    pio1WriteCtrl(0x80);

    v = 255;
    do
    {
        delay_ms(500);
        pio1WritePortA(v);
    }while(v--);

    v = 255;
    do
    {
        delay_ms(500);
        pio1WritePortB(v);
    }while(v--);

    v = 255;
    do
    {
        delay_ms(500);
        pio1WritePortC(v);
    }while(v--);
}

//////////////////////////////////////////////////////////////////////////////
//
void uart0Init()
{
    SCON = 0x50;
    TMOD = (TMOD & T0_MASK) | 0x21;
    PCON = 0x80;
    // ES = 1;
    // EA = 1;
    TH1 = 0xFA;
    TL1 = 0xFA;
    TR1 = 1;
    //TI = 1;
    //RI = 1;
}

void uart0Close()
{
    SCON = 0x00;
    TMOD = (TMOD & T0_MASK);
    PCON &= ~SMOD;
    TR1 = 0;
}

void uart0WaitTXDone()
{
    while(!TI);
}

void uart0TX(char d)
{
    TI = 0;
    SBUF = d;
    while(!TI) /* assumes UART is initialized */ ;
}

void uart0TXStr(const char* s)
{
    do
    {
        uart0TX(*s);
    }while(*s++);
}

void uart0TXBuf(const char* buf, unsigned int size)
{
    __data unsigned int i = 0;

    while(size--)
    {
        uart0TX(buf[i++]);
    }
}

void uart0WaitRXDone()
{
    while(!RI);
}

char uart0RX()
{
    __data char d;

    while(!RI) /* assumes UART is initialized */ ;
    d = SBUF;
    RI = 0;

    return d;
}

void uart0RXStr(char* s, unsigned int size)
{
    __data unsigned int i = 0;

    while(size--)
    {
        if((s[i++] = uart0RX())==0)
            break;
    }
}

void uart0RXBuf(char* buf, unsigned int size)
{
    __data unsigned int i = 0;

    while(size--)
    {
        buf[i++] = uart0RX();
    }
}

void uart0Test1()
{
    uart0Init();
    while(1)
    {
        uart0TX(uart0RX());
    };
}

const char data[] =
{
    'a','b','c','d','e','f','g','h',
    'i','j','k','l','m','n','o','p',
    'q','r','s','t','u','v','w','x','y','z',
    'A','B','C','D','E','F','G','H',
    'I','J','K','L','M','N','O','P',
    'Q','R','S','T','U','V','W','X','Y','Z'
};

void uart0Test2()
{
    uart0Init();
    while(1)
    {
        uart0TXStr("Fuck you now!!!!\r\n");
        uart0TXBuf(data, 26*2);
    };
}

void uart0Test3()
{
}

//////////////////////////////////////////////////////////////////////////////
//
char buf[SECTOR_SIZE];
void cf0Test()
{
    P1 = 0xc1;
    uart0Init();
    P1 = 0xc2;
    cf0Init();
    P1 = 0xc3;
    cf0ReadSector(buf, 1);
    P1 = 0xc4;
    uart0TXBuf(buf, SECTOR_SIZE);
    P1 = 0xc5;
}

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
        //pio0Test();

        //P1 = 0x09;
        //pio1Test();

        P1 = 0x10;
        // uart0Test1();

        P1 = 0x11;
        //uart0Test2();

        P1 = 0x12;
        //uart0Test3();

        P1 = 0x13;
        cf0Test();

        //P1 = 0x14;
        //cf1Test();

        P1 = 0x81;
    }
    else
    {
        P1 = 0x82;
    }
}
