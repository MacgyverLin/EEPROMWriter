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
#define IOWRITE(a, d) (*((volatile __xdata unsigned char * __data)(a))) = (d)
#define IOREAD(a)     (*((volatile __xdata unsigned char * __data)(a)))

#define pio0WriteCtrl(d)  IOWRITE(0xff03, d)
#define pio0WritePortA(d) IOWRITE(0xff00, d)
#define pio0WritePortB(d) IOWRITE(0xff01, d)
#define pio0WritePortC(d) IOWRITE(0xff02, d)
#define pio1WriteCtrl(d)  IOWRITE(0xff13, d)
#define pio1WritePortA(d) IOWRITE(0xff10, d)
#define pio1WritePortB(d) IOWRITE(0xff11, d)
#define pio1WritePortC(d) IOWRITE(0xff12, d)
#define pio0ReadCtrl(d)   IOREAD(0xff03, d)
#define pio0ReadPortA(d)  IOREAD(0xff00, d)
#define pio0ReadPortB(d)  IOREAD(0xff01, d)
#define pio0ReadPortC(d)  IOREAD(0xff02, d)
#define pio1ReadCtrl(d)   IOREAD(0xff13, d)
#define pio1ReadPortA(d)  IOREAD(0xff10, d)
#define pio1ReadPortB(d)  IOREAD(0xff11, d)
#define pio1ReadPortC(d)  IOREAD(0xff12, d)

#define sysExitBootMode() IOWRITE(0xfff0, 0)
#define sysEnterISPMode() IOWRITE(0xfff1, 0)
#define sysColdBoot()     IOWRITE(0xfff2, 0)

#define USE_ASSEMBLY (0)
// The compiler always uses the global registers DPL, DPH, B and ACC to pass the ﬁrst (non-bit) parameter to a function,
// and also to pass the return value of function;
// according to the following scheme:
// one byte return value in DPL,
// two byte value in DPL (LSB) and DPH (MSB).
// three byte values (generic pointers) in DPH, DPL and B,
// and four byte values in DPH, DPL, B and ACC.
// Generic pointers contain type of accessed memory in B: 0x00 – xdata/far,0x40– idata/near – ,0x60– pdata,0x80– code.

// Unless the called function is declared as _naked,
// or the --callee-saves/--all-callee-saves command line option or the corresponding callee_saves pragma are used,
// the caller will save the registers (R0-R7) around the call,
// so the called function can destroy they content freely.
// If the called function is not declared as _naked, the caller will swap register banks around the call,
// if caller and callee use different register banks (having them deﬁned by the __using modiﬁer).
// The called function can also use DPL,DPH, B and ACC observing that they are used for parameter/return value passing.

#if !USE_ASSEMBLY
#define sysCopyBIOS(srcAddr, dstAddr, size)\
{\
    __code unsigned char * __data src = *((__code unsigned char * __data)srcAddr);\
    __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)dstAddr);\
    __data unsigned int count = size;\
    while(count--)\
        *dst++ = *src++;\
}
#else
void sysCopyBIOS(__code unsigned char * __data src,
                 __xdata unsigned char *__data dst,
                 __data unsigned int count)
{
    src; // to avoid warning: unreferenced function argument
    dst; // to avoid warning: unreferenced function argument
    count; // to avoid warning: unreferenced function argument
    __asm
        ; save used registers here.
        ; If we were still using r2,r3 we would have to push them here.
        push acc
        push r0
        push DPH
        push DPL
        mov b, _count
        mov a, (_count>>8)
    00001$:
        clr a
        movc a, @a+dptr
        movx @dptr, a
        inc dptr
        djnz r0, 00001$
        djnz r1, 00001$

        ; restore used registers here
        pop DPL
        pop DPH
        pop r0
        pop acc
    __endasm;
}
#endif

#define sysCheckBIOS(srcAddr, dstAddr, size)\
{\
    __code unsigned char * __data src = *((__code unsigned char * __data)srcAddr);\
    __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)dstAddr);\
    __data unsigned int count = size;\
    while(count--)\
    {\
        if(*dst++ != *src++)\
        {\
        }\
    }\
}
#define sysClearMemory(address, size)\
{\
    __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)address);\
    __data unsigned int count = size;\
    while(count--)\
    {\
        *dst++ = 0;\
    }\
}

volatile __data unsigned char counter;
void simpleInterrupt(void) __interrupt (1)
{
    counter++;
}

void nakedInterrupt(void) __interrupt (2) __naked
{
    __asm
    inc _counter    ; does not change flags, no need to save psw
    reti            ; MUST explicitly include ret or reti in _naked function.
    __endasm;
}

unsigned char __far __at(0x7f00) buf[0x100];
unsigned char head, tail;

#if !USE_ASSEMBLY
void to_buffer( unsigned char c )
{
    if( head != (unsigned char)(tail-1) )
        buf[ head++ ] = c;
}
#else
void to_buffer( unsigned char c )
{
    c; // to avoid warning: unreferenced function argument
    __asm
        ; save used registers here.
        ; If we were still using r2,r3 we would have to push them here.
        ; if( head != (unsigned char)(tail-1) )
        // Note, that the single underscore form (_asm and _endasm) are not C99 compatible,
        // and for C99 compatibility, the double-underscore form (__asm and __endasm) has to be used.
        // The latter is also used in the library functions.
        mov a,_tail
        dec a
        xrl a,_head
        ; we could do an ANL a,#0x0f here to use a smaller buffer (see below)
        jz t_b_end$
        ;
        ; buf[ head++ ] = c;
        mov a,dpl ; dpl holds lower byte of function argument
        mov dpl,_head ; buf is 0x100 byte aligned so head can be used directly
        mov dph,#(_buf>>8)
        movx @dptr,a
        inc _head ; we could do an ANL _head,#0x0f here to use a smaller buffer (see above)
    t_b_end$:
        ; restore used registers here
    __endasm;
}
#endif


void main()
{
    unsigned char i;
/*
    data_v =  1;
    idata_v = 1;
    pdata_v = 1;
    xdata_v = 1;

    i = code_v;
*/
    IOWRITE(0xff03, 0x80);
    IOWRITE(0xff00, 0xA5);
    IOWRITE(0xff01, 0xC6);
    IOWRITE(0xff02, 0xE7);

    i = IOREAD(0xff00);
    i = IOREAD(0xff01);
    i = IOREAD(0xff02);
    i = IOREAD(0xff03);

    pio0WriteCtrl(0x80)  ;
    pio0WritePortA(0x5A) ;
    pio0WritePortB(0x4B) ;
    pio0WritePortC(0x3C) ;
    pio1WriteCtrl(0x80)  ;
    pio1WritePortA(0x5D) ;
    pio1WritePortB(0x4E) ;
    pio1WritePortC(0x3F) ;

    P1 = 1;

    sysCopyBIOS(0x0000, 0x0000, 0x4000);
    sysCheckBIOS(0x0000, 0x0000, 0x4000);
    sysClearMemory(0x0000, 0x4000);

    sysExitBootMode();
    sysEnterISPMode();
    sysColdBoot();
}
