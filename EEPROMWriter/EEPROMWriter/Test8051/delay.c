#include "delay.h"

//////////////////////////////////////////////////////////////////////////////
//
void delay_us(unsigned int us)
{
    us;
    __asm
                    PUSH            ar6
                    PUSH            ar7

                    MOV             A, DPH
                    INC             A
                    MOV             DPH, A
                    MOV             A, DPL
                    INC             A
                    MOV             DPL, A

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

                    MOV             A, DPH
                    INC             A
                    MOV             DPH, A
                    MOV             A, DPL
                    INC             A
                    MOV             DPL, A

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
