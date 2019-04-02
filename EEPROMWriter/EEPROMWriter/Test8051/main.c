#include <mcs51/8051.h>
#include "test.h"

void sysLoadProgram()
{
    __asm
    PUSH            ar4
    PUSH            ar5
    PUSH            DPL
    PUSH            DPH

    MOV             SCON, #0x50
    MOV             TMOD, #0x21
    MOV             PCON, #0x80
    // ES = 1;
    // EA = 1;
    MOV             TH1, #0xFA
    MOV             TL1, #0xFA
    SETB            TR1
    INC P1

    WAIT_RX1:
    JNB             RI, WAIT_RX1
    MOV             A, SBUF
    MOV             R4, A
    CLR             RI
    INC P1

    WAIT_RX2:
    JNB             RI, WAIT_RX2
    MOV             A, SBUF
    MOV             R5, A
    CLR             RI
    INC P1

    MOV             DPTR, #0x0000
    sysLoadProgram_LP:
    CLR  A
    CLR             C
    WAIT_RX3:
    JNB             RI, WAIT_RX3
    MOV             A, SBUF
    CLR             RI
    INC P1
    MOVX @DPTR, A
    INC DPTR
    MOV A, DPL
    SUBB A, R4
    JNZ sysLoadProgram_LP
    MOV A, DPH
    SUBB A, R5
    JNZ sysLoadProgram_LP

    POP             DPH
    POP             DPL
    POP             ar5
    POP             ar4

    MOV             DPTR, #0xFF70
    MOVX            A, @DPTR

    // reset
    MOV             DPTR, #0x0000
    CLR             A
    JMP             @A+DPTR

    __endasm;
}

void main()
{
    char res;
    unsigned int br;

    P1 = 0x01;
    sysCopyBIOS(0x0000, 0x0000, 0x8000);
    //sysLoadProgram();
    // res = 0;
    if(1)
    {
        sysEnterNormalMode();

        ledTest();

        // sysEnterISPMode();
        // sysColdBoot();
        //pioTest(0);

        //pioTest(1);

        //sioTest1(0);

        //sioTest2(0);

        //sioTest3(0);

        cfTest(0);

        FATTest(0);

        //SIOFATFSTest(0);

        //P1 = 0x81;
    }
    else
    {
        P1 = 0x82;
    }

    while(1);
}
