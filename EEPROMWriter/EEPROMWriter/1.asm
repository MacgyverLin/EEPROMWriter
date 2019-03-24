                    .include "8051.h"
                    .AVSYM

RESET_VECTOR        .EQU            0000H
EXTERNAL0_VECTOR    .EQU            0003H
TIMER0_VECTOR       .EQU            000BH
EXTERNAL1_VECTOR    .EQU            0013H
TIMER1_VECTOR       .EQU            001BH
SERIAL_VECTOR       .EQU            0023H

                    .ORG            RESET_VECTOR
					AJMP			START

					.ORG            040h
START:
					

BOOT_SEQUENCE:		; ACALL			TEST_LED
					; ACALL			TEST_8255_0
					; ACALL			TEST_8255_1
					ACALL			CLR_MEMORY
					ACALL           COPYBIOS
					ACALL           CMPBIOS
					CJNE			A, #0, BOOT_FAILED

BOOT_SUCCESS:		ACALL			EXIT_BOOT
BOOT_SUCCESS_1:		MOV				P1, #01h
					AJMP            BOOT_SUCCESS_1

BOOT_FAILED:		MOV				P1, #02h
                    AJMP            BOOT_FAILED

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; DELAY FUNCTION
DELAY:				MOV				R5, #01; #50
DELAY1:				MOV				R6, #01; #100
DELAY2:				MOV				R7, #01; #100
DELAY3:				DJNZ			R7, DELAY3
					DJNZ			R6, DELAY2
					DJNZ			R5, DELAY1
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TEST 8255
TEST_8255_0:		MOV				R4, #10
					MOV				A, #080h
					ACALL           INIT_8255_0
					CLR				A

TEST_8255_0_a:		ACALL			SET_8255_0_PA
					ACALL			DELAY
					INC				A

					ACALL			SET_8255_0_PB
					ACALL			DELAY
					INC				A

					ACALL			SET_8255_0_PC
					ACALL			DELAY
					INC				A

					DJNZ			R4, TEST_8255_0_a
					RET

TEST_8255_1:		MOV				R4, #10
					MOV				A, #080h
					ACALL           INIT_8255_1
					CLR				A

TEST_8255_1_a:		ACALL			SET_8255_1_PA
					ACALL			DELAY
					INC				A

					ACALL			SET_8255_1_PB
					ACALL			DELAY
					INC				A

					ACALL			SET_8255_1_PC
					ACALL			DELAY
					INC				A

					DJNZ			R4, TEST_8255_1_a
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TEST LED
TEST_LED:			MOV				P1, #01h
					ACALL			DELAY
					MOV				P1, #02h
					ACALL			DELAY
					MOV				P1, #04h
					ACALL			DELAY
					MOV				P1, #08h
					ACALL			DELAY
					MOV				P1, #10h
					ACALL			DELAY
					MOV				P1, #20h
					ACALL			DELAY
					MOV				P1, #40h
					ACALL			DELAY
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT 8255
; INPUT: A, MODE
; 76543210 
; |||||||+--------- PC0-3  ,  1:INPUT ,  0:OUTPUT
; ||||||+---------- PB     ,  1:INPUT ,  0:OUTPUT
; |||||+----------- PB MODE,  0:MODE 0,  1:MODE 1
; ||||+------------ PC4-7  ,  1:INPUT ,  0:OUTPUT
; |||+------------- PA     ,  1:INPUT ,  0:OUTPUT
; ||+-------------- PA MODE, 00:MODE 0, 01:MODE 1
; |+--------------- PA MODE, 10:MODE 2, 11:X
; +---------------- ALWAYS 1
INIT_8255_0:		MOV				DPTR, #0FF03H
					AJMP			INIT_8255_a			
INIT_8255_1:		MOV				DPTR, #0FF13H
INIT_8255_a:		MOVX			@DPTR, A
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT SET_8255_0_PA
; PARAMETER: A, DATA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT SET_8255_1_PA
; PARAMETER: A, DATA
SET_8255_0_PA:		MOV				DPTR, #0FF00H
					AJMP			SET_8255_PA_a	
SET_8255_1_PA:		MOV				DPTR, #0FF10H
SET_8255_PA_a:		MOVX			@DPTR, A
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT SET_8255_0_PB
; PARAMETER: A, DATA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT SET_8255_1_PB
; PARAMETER: A, DATA
SET_8255_0_PB:		MOV				DPTR, #0FF01H
					AJMP			SET_8255_PB_a	
SET_8255_1_PB:		MOV				DPTR, #0FF11H
SET_8255_PB_a:		MOVX			@DPTR, A
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT SET_8255_0_PC
; PARAMETER: A, DATA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT SET_8255_1_PC
; PARAMETER: A, DATA
SET_8255_0_PC:		MOV				DPTR, #0FF02H
					AJMP			SET_8255_PC_a	
SET_8255_1_PC:		MOV				DPTR, #0FF12H
SET_8255_PC_a:		MOVX			@DPTR, A
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT GET_8255_0_PA
; RETURN: A, DATA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT GET_8255_1_PA
; RETURN: A, DATA
GET_8255_0_PA:		MOV				DPTR, #0FF00H
					AJMP			GET_8255_PA_a	
GET_8255_1_PA:		MOV				DPTR, #0FF10H
GET_8255_PA_a:		MOVX			A, @DPTR
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT GET_8255_0_PB
; RETURN: A, DATA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT GET_8255_1_PB
; RETURN: A, DATA
GET_8255_0_PB:		MOV				DPTR, #0FF01H
					AJMP			GET_8255_PB_a	
GET_8255_1_PB:		MOV				DPTR, #0FF11H
GET_8255_PB_a:		MOVX			A, @DPTR
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT SET_8255_0_PC
; RETURN: A, DATA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INIT SET_8255_1_PC
; RETURN: A, DATA
GET_8255_0_PC:		MOV				DPTR, #0FF02H
					AJMP			GET_8255_PC_a	
GET_8255_1_PC:		MOV				DPTR, #0FF12H
GET_8255_PC_a:		MOVX			A, @DPTR
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; CLEAR_MEMORTY FUNCTION
CLR_MEMORY:			MOV				DPTR, #0000h
CLR_MEMORY_1:		MOV				R6, #000H
CLR_MEMORY_2:		MOV				R7, #000H
CLR_MEMORY_3:		CLR				A
					MOVX			@DPTR,A
					INC				DPTR
					DJNZ			R7, CLR_MEMORY_3
					DJNZ			R6, CLR_MEMORY_2
CLR_MEMORY_END:		RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; COPY_BIOS FUNCTION
COPYBIOS:			MOV				DPTR, #0000h
COPYBIOS_1:			MOV				R6, #080H
COPYBIOS_2:			MOV				R7, #000H
COPYBIOS_3:			CLR				A
					MOVC			A, @A+DPTR
					MOVX			@DPTR,A
					INC				DPTR
					DJNZ			R7, COPYBIOS_3
					DJNZ			R6, COPYBIOS_2
COPYBIOS_END:		RET				

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; COMPARE_BIOS FUNCTION
CMPBIOS:			MOV				DPTR, #0000h
CMPBIOS_1:			MOV				R6, #080H
CMPBIOS_2:			MOV				R7, #000H
CMPBIOS_3:			CLR				A
					MOVC			A, @A+DPTR
					MOV				R0, A
					MOVX			A, @DPTR
					SUBB			A, R0
					JNZ				CMPBIOS_END
					INC				DPTR
					DJNZ			R7, CMPBIOS_3
					DJNZ			R6, CMPBIOS_2
CMPBIOS_END:		RET	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; EXIT_BOOT FUNCTION
EXIT_BOOT:			MOV				DPTR, #0FF70h
					MOVX			@DPTR, A
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ENTER_ISP FUNCTION
ENTER_ISP:			MOV				DPTR, #0FF71h
					MOVX			@DPTR, A
					RET		

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; WARM_BOOT FUNCTION
WARM_BOOT:			MOV				DPTR, #0FF72h
					MOVX			@DPTR, A
					RET

                    .END