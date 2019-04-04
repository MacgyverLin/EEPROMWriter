    .include "8051.h"

    .ORG			00000h
	LJMP			COPY_ROM

	.ORG			0fe00h
COPY_ROM:
	MOV				P1, #01h
	MOV             DPTR, #0000h
	CLR				C
COPY_ROM_LP:
    CLR             A
    MOVC            A, @A+DPTR
    MOVX            @DPTR, A
	INC             P1
    INC             DPTR
	MOV				A, DPL
    SUBB            A, #000h
    JNZ             COPY_ROM_LP
	MOV				A, DPH
	SUBB            A, #0ffh
    JNZ             COPY_ROM_LP

    ; normal mode
	MOV				P1, #02h
    MOV             DPTR, #0FF70h
    MOVX            @DPTR, A

    ; load program
    MOV             SCON, #050h
    MOV             TMOD, #021h
    MOV             PCON, #080h
    ; ES = 1;
    ; EA = 1;
    MOV             TH1, #0FDh
    MOV             TL1, TH1
    SETB            TR1
    INC             P1

sysLoadProgram_L:
WAIT_RX1:
    JNB             RI, WAIT_RX1
    MOV             R4, SBUF
    ;MOV             R4, A
    CLR             RI

WAIT_RX2:
    JNB             RI, WAIT_RX2
    MOV             R5, SBUF
    ;MOV             R5, A
    CLR             RI

    MOV             DPTR, #00000h
sysLoadProgram_LP:
    CLR             A
    CLR             C
WAIT_RX3:
    JNB             RI, WAIT_RX3
    MOV             A, SBUF
    CLR             RI
    INC             P1
    MOVX            @DPTR, A
    INC             DPTR
    MOV             A, DPL
    SUBB            A, R4
    JNZ             sysLoadProgram_LP
    MOV             A, DPH
    SUBB            A, R5
    JNZ             sysLoadProgram_LP

    ; reset
RESET:
    CLR             A
    MOV             DPTR, #00h
    JMP             @A+DPTR
	.END