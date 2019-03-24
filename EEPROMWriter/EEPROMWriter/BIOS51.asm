                    .include "8051.h"
                    .AVSYM

RESET_VECTOR        .EQU            0000H
EXTERNAL0_VECTOR    .EQU            0003H
TIMER0_VECTOR       .EQU            000BH
EXTERNAL1_VECTOR    .EQU            0013H
TIMER1_VECTOR       .EQU            001BH
SERIAL_VECTOR       .EQU            0023H

                    .ORG            RESET_VECTOR
                    LJMP            RESET

                    .ORG            EXTERNAL0_VECTOR
                    LJMP            EXTERNAL0

                    .ORG            TIMER0_VECTOR
                    LJMP            TIMER0

                    .ORG            EXTERNAL1_VECTOR
                    LJMP            EXTERNAL1

                    .ORG            TIMER1_VECTOR
                    LJMP            TIMER1

                    .ORG            SERIAL_VECTOR
                    LJMP            SERIAL           

                    .ORG            0200h
DELAY:              MOV             R0, #0FFh
DELAY1:             DJNZ            R0, DELAY1
                    RET

COPY_BIOS_ERR:      ACALL           DELAY
                    CPL             P1.0
                    LJMP            COPY_BIOS_ERR

FLASH_BIOS_ERR:     ACALL           DELAY
                    CPL             P1.1
                    LJMP            FLASH_BIOS_ERR

EXTERNAL0:
TIMER0:
EXTERNAL1:
TIMER1:
SERIAL:             RETI

RESET:           
INIT:               MOV             SP, #07fH
                    SETB            EX0
                    SETB            ET0
                    SETB            EX1
                    SETB            ET1
                    SETB            ET2
                    SETB            ES
                    SETB            EA
                    ACALL           FLASH_BIOS
                    LJMP            MAIN

COPY_BIOS:          MOV             DPTR, #0000
                    MOV             R0, #0FFH       ; for j = 0 to 256
                    CLR             P1.2            ; /BOOTING = 0
                    SETB            P1.3            ; /ISP     = 1
COPY_BIOS1:         MOV             R1, #0FFH       ; for i = 0 to 256
COPY_BIOS2:         MOVX            A, @DPTR        ; move rom to a
                    MOVX            @DPTR, A        ; move a to ram
                    MOV             R2, A           ; save to r2   
                    MOVX            A, @DPTR        ; move rom to a, again
                    SUBB            A, R2           ; if rom ram not same, display error
                    JNZ             COPY_BIOS_ERR

                    INC             DPTR
                    CPL             P1.0
                    DJNZ            R1, COPY_BIOS2
                    DJNZ            R0, COPY_BIOS1
                    RET

FLASH_BIOS:         MOV             DPTR, #0000
                    MOV             R0, #0FFH       ; for j = 0 to 256
                    SETB            P1.2            ; /BOOTING = 1
                    CLR             P1.3            ; /ISP     = 0                    
FLASH_BIOS1:        MOV             R1, #0FFH       ; for i = 0 to 256
FLASH_BIOS2:        MOVX            A, @DPTR        ; move ram to a
                    MOVX            @DPTR, A        ; move a to rom
                    MOV             R2, A           ; save to r2
                    MOVX            A, @DPTR        ; move ram to a, again
                    SUBB            A, R2           ; if rom ram not same, display error
                    JNZ             FLASH_BIOS_ERR

                    INC             DPTR
                    CPL             P1.1
                    DJNZ            R1, FLASH_BIOS2
                    DJNZ            R0, FLASH_BIOS1
                    RET

MAIN:               LJMP            MAIN

                    .END