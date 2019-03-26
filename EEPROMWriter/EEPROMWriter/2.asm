                    .include "8051.h"
                    .AVSYM

RESET_VECTOR        .EQU            0000H
EXTERNAL0_VECTOR    .EQU            0003H
TIMER0_VECTOR       .EQU            000BH
EXTERNAL1_VECTOR    .EQU            0013H
TIMER1_VECTOR       .EQU            001BH
SERIAL_VECTOR       .EQU            0023H

                    .ORG            RESET_VECTOR
					LJMP			START

                    .ORG            EXTERNAL0_VECTOR
					LJMP			EXTERNAL0

                    .ORG            TIMER0_VECTOR
					LJMP			TIMER0

                    .ORG            EXTERNAL1_VECTOR
					LJMP			EXTERNAL1

                    .ORG            TIMER1_VECTOR
					LJMP			TIMER1

                    .ORG            SERIAL_VECTOR
					LJMP			SERIAL
EXTERNAL0:
TIMER0:
EXTERNAL1:
TIMER1:
SERIAL:             RET

					.ORG			0100h
START:
BOOT_SEQUENCE:		MOV				SP, #020h
					LCALL			LED_TEST
					;LCALL			PIO0_TEST
					LCALL			PIO1_TEST
                    ;LCALL          CF_0_TEST
					;LCALL			CLR_MEMORY
					MOV				P1, #11h
					LCALL           COPYBIOS
					MOV				P1, #12h
					LCALL           CMPBIOS
					MOV				P1, #13h
					CJNE			A, #0, BOOT_FAILED

BOOT_SUCCESS:		LCALL			EXIT_BOOT
BOOT_SUCCESS_1:		MOV				P1, #14h
					LJMP            BOOT_SUCCESS_1

BOOT_FAILED:		MOV				P1, #15h
                    LJMP            BOOT_FAILED

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; DELAY FUNCTION
DELAY:				MOV				R5, #50
DELAY1:				MOV				R6, #100
DELAY2:				MOV				R7, #100
DELAY3:				DJNZ			R7, DELAY3
					DJNZ			R6, DELAY2
					DJNZ			R5, DELAY1
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TEST 8255
PIO0_TEST:			MOV				P1, #00h
					MOV				A, #080h
					LCALL           PIO0_WRITE_CTRL
					MOV				P1, #01h

					MOV				A, #05Ah
PIO0_TEST_A:		MOV				P1, #02h
					LCALL			PIO0_WRITE_PORT_A
					MOV				P1, #03h
					;LCALL			DELAY
					MOV				P1, #04h
					;INC				A
					;JNZ				PIO0_TEST_A

PIO0_TEST_B:		MOV				P1, #05h
					LCALL			PIO0_WRITE_PORT_B
					MOV				P1, #06h
					;LCALL			DELAY
					MOV				P1, #07h
					;INC				A
					;JNZ				PIO0_TEST_B

PIO0_TEST_C:		MOV				P1, #08h
					LCALL			PIO0_WRITE_PORT_C
					MOV				P1, #09h
					;LCALL			DELAY
					MOV				P1, #10h
					;INC				A
					;JNZ				PIO0_TEST_C
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TEST 8255
PIO1_TEST:			MOV				P1, #80h
					MOV				A, #080h
					LCALL           PIO1_WRITE_CTRL
					MOV				P1, #81h

					MOV				A, #0A5h
PIO1_TEST_A:		MOV				P1, #82h
					LCALL			PIO1_WRITE_PORT_A
					MOV				P1, #83h
					;LCALL			DELAY
					MOV				P1, #84h
					;INC				A
					;JNZ				PIO1_TEST_A

PIO1_TEST_B:		MOV				P1, #85h
					LCALL			PIO1_WRITE_PORT_B
					MOV				P1, #86h
					;LCALL			DELAY
					MOV				P1, #87h
					;INC				A
					;JNZ				PIO1_TEST_B

PIO1_TEST_C:		MOV				P1, #88h
					LCALL			PIO1_WRITE_PORT_C
					MOV				P1, #89h
					;LCALL			DELAY
					MOV				P1, #90h
					;INC				A
					;JNZ				PIO1_TEST_C
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TEST LED
LED_TEST:			MOV				P1, #01h
					LCALL			DELAY
					MOV				P1, #02h
					LCALL			DELAY
					MOV				P1, #04h
					LCALL			DELAY
					MOV				P1, #08h
					LCALL			DELAY
					MOV				P1, #10h
					LCALL			DELAY
					MOV				P1, #20h
					LCALL			DELAY
					MOV				P1, #40h
					LCALL			DELAY
					RET

;========================================================================================================
; IOWRITE
; PARAMETER: A, DATA
; PARAMETER: DPTR, ADDRESS
;*************************************************************
IOWRITE:	            	MOV				P1, #83h
							MOVX			@DPTR, A
							MOV				P1, #84h
					        RET

;*************************************************************
; IOREAD
; PARAMETER: DPTR, ADDRESS
; RETURN: A, DATA
;*************************************************************
IOREAD:	        	        MOVX			A, @DPTR
					        RET

;========================================================================================================
PIO0_BASE          .EQU            0FF00H
PIO0_PORT_A        .EQU            PIO0_BASE+0
PIO0_PORT_B        .EQU            PIO0_BASE+1
PIO0_PORT_C        .EQU            PIO0_BASE+2
PIO0_PORT_CTRL     .EQU            PIO0_BASE+3

PIO1_BASE          .EQU            0FF10H
PIO1_PORT_A        .EQU            PIO1_BASE+0
PIO1_PORT_B        .EQU            PIO1_BASE+1
PIO1_PORT_C        .EQU            PIO1_BASE+2
PIO1_PORT_CTRL     .EQU            PIO1_BASE+3
;*************************************************************
; INIT_8255_0, INIT_8255_1
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
;*************************************************************
PIO0_WRITE_CTRL:            MOV             DPTR, #PIO0_PORT_CTRL
					        LJMP            IOWRITE
	
PIO1_WRITE_CTRL:            MOV             DPTR, #PIO1_PORT_CTRL
                            LJMP            IOWRITE

;*************************************************************
; WRITE_PIO_0_PORT_A
; PARAMETER: A, DATA
;*************************************************************
PIO0_WRITE_PORT_A:		    MOV				P1, #81h
							MOV				DPTR, #PIO0_PORT_A
							MOV				P1, #82h
					        LJMP            IOWRITE

;*************************************************************
; WRITE_PIO_0_PORT_B
; PARAMETER: A, DATA
;*************************************************************
PIO0_WRITE_PORT_B:		    MOV				DPTR, #PIO0_PORT_B
					        LJMP            IOWRITE

;*************************************************************
; WRITE_PIO_0_PORT_C
; PARAMETER: A, DATA
;*************************************************************
PIO0_WRITE_PORT_C:	    	MOV				DPTR, #PIO0_PORT_C
	    				    LJMP            IOWRITE

;*************************************************************
; WRITE_PIO_1_PORT_A
; PARAMETER: A, DATA
;*************************************************************
PIO1_WRITE_PORT_A:		    MOV				DPTR, #PIO1_PORT_A
                            LJMP            IOWRITE

;*************************************************************
; WRITE_PIO_1_PORT_B
; PARAMETER: A, DATA
;*************************************************************
PIO1_WRITE_PORT_B:		    MOV				DPTR, #PIO1_PORT_B
                            LJMP            IOWRITE

;*************************************************************
; WRITE_PIO_1_PORT_C
; PARAMETER: A, DATA
;*************************************************************
PIO1_WRITE_PORT_C:		    MOV				DPTR, #PIO1_PORT_C
                            LJMP            IOWRITE

;*************************************************************
; READ_PIO_0_PORT_A
; RETURN: A, DATA
;*************************************************************
PIO0_READ_PORT_A:	        MOV				DPTR, #PIO0_PORT_A
					        LJMP            IOREAD

;*************************************************************
; READ_PIO_0_PORT_B
; RETURN: A, DATA
;*************************************************************
PIO0_READ_PORT_B:	        MOV				DPTR, #PIO0_PORT_B
					        LJMP            IOREAD

;*************************************************************
; READ_PIO_0_PORT_C
; RETURN: A, DATA
;*************************************************************
PIO0_READ_PORT_C:	        MOV				DPTR, #PIO0_PORT_C
					        LJMP            IOREAD

;*************************************************************
; READ_PIO_1_PORT_A
; RETURN: A, DATA
;*************************************************************
PIO1_READ_PORT_A:	       	MOV				DPTR, #PIO1_PORT_A
                            LJMP            IOREAD

;*************************************************************
; READ_PIO_1_PORT_B
; RETURN: A, DATA
;*************************************************************
PIO1_READ_PORT_B:	       	MOV				DPTR, #PIO1_PORT_B
                            LJMP            IOREAD

;*************************************************************
; READ_PIO_1_PORT_C
; RETURN: A, DATA
;*************************************************************
PIO1_READ_PORT_C:	       	MOV				DPTR, #PIO1_PORT_C
                            LJMP            IOREAD



;========================================================================================================
;*************************************************************
; https://z80project.wordpress.com/2015/07/06/z80-8-bit-compact-flash-card-interface-part-1/
; 
; check data from sector 0 HxD
; https://mh-nexus.de/en/hxd/
;*************************************************************
CF_0_BASE                        .EQU            0FF20H
CF_0_PORT_DATA                   .EQU            CF_0_BASE+0
CF_0_PORT_ERROR                  .EQU            CF_0_BASE+1
CF_0_PORT_FEATURES               .EQU            CF_0_BASE+1
CF_0_PORT_SECTOR_COUNT           .EQU            CF_0_BASE+2
CF_0_PORT_LBA_0                  .EQU            CF_0_BASE+3
CF_0_PORT_LBA_1                  .EQU            CF_0_BASE+4
CF_0_PORT_LBA_2                  .EQU            CF_0_BASE+5
CF_0_PORT_LBA_3                  .EQU            CF_0_BASE+6
CF_0_PORT_STATUS                 .EQU            CF_0_BASE+7
CF_0_PORT_COMMAND                .EQU            CF_0_BASE+7

TEST_BUFFER_PTR                  .EQU            01000h
TEST_BUFFER_SIZE                 .EQU            00200h

CF_0_TEST:                      MOV             A, #001h                    
                                LCALL           CF0_WRITE_FEATURES    ; set 8 bit mode to features port

                                MOV             A, #0EFh                    
                                LCALL           CF0_WRITE_COMMAND     ; command 'set features'
                                
                                RET

CF_0_READ_SECTOR:               LCALL           CF0_LOOP_BUSY
                                MOV             A, #001h                    
                                LCALL           CF0_WRITE_SECTOR_COUNT; read 1 sector at a time
                                
                                LCALL           CF0_LOOP_BUSY
                                MOV             A, #000h                    
                                LCALL           CF0_WRITE_LBA_0       ; read from lba 0

                                LCALL           CF0_LOOP_BUSY
                                MOV             A, #000h                    
                                LCALL           CF0_WRITE_LBA_1       ; read from lba 0

                                LCALL           CF0_LOOP_BUSY
                                MOV             A, #000h                    
                                LCALL           CF0_WRITE_LBA_2       ; read from lba 0

                                LCALL           CF0_LOOP_BUSY
                                MOV             A, #0E0h                    
                                LCALL           CF0_WRITE_LBA_3       ; read from lba 0, notes E0h means LBA mode
                                LCALL           CF0_READ_CMD
                                RET             

CF0_READ_CMD:                   LCALL           CF0_LOOP_CMD_RDY
                                MOV             A, #020h                    
                                LCALL           CF0_WRITE_COMMAND     ; command 'read sector'
                                
                                LCALL           CF0_LOOP_DAT_RDY
                                LCALL           CF0_READ_STATUS
	                            ANL		        A, #%00000001         ; Mask Error bit
	                            JNZ		        CF0_READ_CMD      	  ; 
                                
CF0_READ_SECTOR:                MOV             DPTR, #TEST_BUFFER_PTR
                                MOV             R0, #00h
CF0_READ_SECTOR_LP:             LCALL           CF0_LOOP_DAT_RDY
                                LCALL           CF0_READ_DATA
                                MOV             DPH, #TEST_BUFFER_PTR
                                MOVX            @DPTR, A
                                
                                LCALL           CF0_LOOP_DAT_RDY
                                LCALL           CF0_READ_DATA
                                MOV             DPL, #TEST_BUFFER_PTR
                                MOVX            @DPTR, A
                                
                                DJNZ            R0, CF0_READ_SECTOR_LP                        
                                RET

;***************************************************************************
; LOOP_BUSY
; Function: Loops until status register bit 7 (busy) is 0
;***************************************************************************	
CF0_LOOP_BUSY:                  LCALL           CF0_READ_STATUS
	                            ANL		        A, #%10000000               ; Mask busy bit
	                            JNZ		        CF0_LOOP_BUSY			    ; Loop until busy(7) is 0
	                            RET

;***************************************************************************
;LOOP_CMD_RDY
;Function: Loops until status register bit 7 (busy) is 0 and drvrdy(6) is 1
;***************************************************************************	
CF0_LOOP_CMD_RDY:               LCALL           CF0_READ_STATUS
	                            ANL		        A, #%11000000               ; Mask busy and rdy bits
                                XRL		        A, #%01000000               ; we want busy(7) to be 0 and drvrdy(6) to be 1
	                            JNZ		        CF0_LOOP_CMD_RDY    		; 
	                            RET

;***************************************************************************
; LOOP_DAT_RDY
; Function: Loops until status register bit 7 (busy) is 0 and drq(3) is 1
;***************************************************************************		
CF0_LOOP_DAT_RDY:               LCALL           CF0_READ_STATUS
	                            ANL		        A, #%10001000               ; Mask busy and drq bits
                                XRL		        A, #%00001000               ; we want busy(7) to be 0 and drq(3) to be 1
	                            JNZ		        CF0_LOOP_DAT_RDY    		; 
	                            RET

;*************************************************************
; WRITE_CF_0_DATA
; PARAMETER: A, DATA
;*************************************************************
CF0_WRITE_DATA:		            MOV				DPTR, #CF_0_PORT_DATA
                                LJMP            IOWRITE

CF0_READ_DATA:		            MOV				DPTR, #CF_0_PORT_DATA
                                LJMP            IOREAD

CF0_WRITE_FEATURES:	        	MOV				DPTR, #CF_0_PORT_FEATURES
                                LJMP            IOWRITE

CF0_READ_ERROR:		            MOV				DPTR, #CF_0_PORT_ERROR
                                LJMP            IOREAD

CF0_WRITE_SECTOR_COUNT:	        MOV		    	DPTR, #CF_0_PORT_SECTOR_COUNT
                                LJMP            IOWRITE                                

CF0_WRITE_LBA_0:		        MOV				DPTR, #CF_0_PORT_LBA_0
                                LJMP            IOWRITE                                

CF0_WRITE_LBA_1:		        MOV				DPTR, #CF_0_PORT_LBA_1
                                LJMP            IOWRITE                                

CF0_WRITE_LBA_2:		        MOV				DPTR, #CF_0_PORT_LBA_2
                                LJMP            IOWRITE                                

CF0_WRITE_LBA_3:		        MOV				DPTR, #CF_0_PORT_LBA_3
                                LJMP            IOWRITE                                

CF0_WRITE_COMMAND:		        MOV				DPTR, #CF_0_PORT_COMMAND
                                LJMP            IOWRITE                                

;****************************************************************
;    7       6       5       4       3       2       1       0      
;+-------+-------+-------+-------+-------+-------+-------+-------+     
;|  BSY  | DRDY  |  DWF  |  DSC  |  DRQ  | CORR  |  IDX  |  ERR  |      
;+-------+-------+-------+-------+-------+-------+-------+-------+
;****************************************************************
CF0_READ_STATUS:		        MOV				DPTR, #CF_0_PORT_STATUS
                                LJMP            IOREAD


;========================================================================================================
UART0_BASE              .EQU            0FF30H
UART0_DATA              .EQU            UART0_BASE + 0	    ;Data in/out
UART0_RXX               .EQU            UART0_BASE + 1      ;Check RX
UART0_INTR              .EQU            UART0_BASE + 2      ;Interrupts
UART0_LINE_CTRL         .EQU            UART0_BASE + 3      ;Line control
UART0_MODEM_CTRL        .EQU            UART0_BASE + 4      ;Modem control
UART0_LINE_STATUS       .EQU            UART0_BASE + 5      ;Line status
UART0_MODEM_STATUS      .EQU            UART0_BASE + 6      ;Modem status
UART0_SCRATCH           .EQU            UART0_BASE + 7      ;Scratch register		
		
;***************************************************************************
;UART_INIT
;Function: Initialize the UART to BAUD Rate 9600 (1.8432 MHz clock input)
;***************************************************************************
UART_INIT:                      MOV				DPTR, #UART0_LINE_CTRL
                                MOV             A, #08h
                                MOVX            @DPTR, A                ;Mask to Set DLAB Flag

                                MOV				DPTR, #UART0_DATA
                                MOV             A, #12                  ;Divisor = 12 @ 9600bps w/ 1.8432 Mhz
                                MOVX            @DPTR, A                ;Set BAUD rate to 9600

                                MOV				DPTR, #UART0_RXX
                                MOV             A, #00                  
                                MOVX            @DPTR, A                

                                MOV				DPTR, #UART0_LINE_CTRL  ;Set 8-bit data, 1 stop bit, reset DLAB Flag
                                MOV             A, #03             
                                MOVX            @DPTR, A                                                

                                MOV				DPTR, #UART0_RXX         ;Enable receive data available interrupt only
                                MOV             A, #01           
                                MOVX            @DPTR, A                                                                                
                    			RET		
		
;***************************************************************************
;UART_PRNT_STR:
;Function: Print out string starting at MEM location (HL) to 16550 UART
;***************************************************************************
EOS                             .EQU            0
UART0_PRINT_STR:                
UART0_PRINT_STR_LP:             MOVX            A, @DPTR
                                CJNE            A, #EOS, UART0_PRINT_STR_END
			                    LCALL	        UART0_TX
                                INC		        DPTR					;Increment pointer to next char
                                LJMP	        UART0_PRINT_STR_LP	    ;Transmit loop
UART0_PRINT_STR_END:            RET	 
			 	
;***************************************************************************
;UART_TX_READY
;Function: Check if UART is ready to transmit
;***************************************************************************
UART0_TX_RDY:                    
UART0_TX_RDY_LP:			     MOV            DPTR, #UART0_LINE_STATUS
                                 MOVX           A, @DPTR
                                 ANL            A, #%00100000
                                 JZ             UART0_TX_RDY_LP
			                     
			                     RET

;***************************************************************************
;UART_TX
;Function: Transmit character in A to UART
;***************************************************************************
UART0_TX:                       LCALL           UART0_TX_RDY			;Make sure UART is ready to receive
                                MOV				DPTR, #UART0_DATA
                                MOVX            @DPTR, A                ;Set BAUD rate to 9600
			                    RET
				
;***************************************************************************
;UART_TX_READY
;Function: Check if UART is ready to transmit
;***************************************************************************
UART0_RX_RDY:                    
UART0_RX_RDY_LP:			     MOV            DPTR, #UART0_LINE_STATUS
                                 MOVX           A, @DPTR
                                 ANL            A, #%00000001
                                 JZ             UART0_RX_RDY_LP
			                     
			                     RET
	
;***************************************************************************
;UART_RX
;Function: Receive character in UART to A
;***************************************************************************
UART0_RX:                       LCALL           UART0_RX_RDY			;Make sure UART is ready to receive
                                MOV				DPTR, #UART0_DATA
                                MOVX            A, @DPTR                ;Set BAUD rate to 9600
			                    RET

;========================================================================================================
;*************************************************************
; CLEAR_MEMORTY FUNCTION
CLR_MEMORY:			        MOV				DPTR, #0000h
CLR_MEMORY_1:		        MOV				R6, #0FFH
CLR_MEMORY_2:		        MOV				R7, #0F0H
CLR_MEMORY_3:		        CLR				A
					        MOVX			@DPTR,A
					        INC				DPTR
					        DJNZ			R7, CLR_MEMORY_3
					        DJNZ			R6, CLR_MEMORY_2
CLR_MEMORY_END:		        RET

;*************************************************************
; COPY_BIOS FUNCTION
;*************************************************************
COPYBIOS:			        MOV				DPTR, #0000h
COPYBIOS_1:			        MOV				R6, #080H
COPYBIOS_2:			        MOV				R7, #000H
COPYBIOS_3:			        CLR				A
					        MOVC			A, @A+DPTR
					        MOVX			@DPTR,A
					        INC				DPTR
					        DJNZ			R7, COPYBIOS_3
					        DJNZ			R6, COPYBIOS_2
COPYBIOS_END:		        RET				

;*************************************************************
; COMPARE_BIOS FUNCTION
;*************************************************************
CMPBIOS:			        MOV				DPTR, #0000h
CMPBIOS_1:			        MOV				R6, #080H
CMPBIOS_2:			        MOV				R7, #000H
CMPBIOS_3:			        CLR				A
					        MOVC			A, @A+DPTR
					        MOV				R0, A
					        MOVX			A, @DPTR
					        SUBB			A, R0
					        JNZ				CMPBIOS_END
					        INC				DPTR
					        DJNZ			R7, CMPBIOS_3
					        DJNZ			R6, CMPBIOS_2
CMPBIOS_END:		        RET	

;========================================================================================================
;*************************************************************
; EXIT_BOOT FUNCTION
;*************************************************************
PORT_EXIT_BOOT		.EQU            0FF70h
PORT_ENTER_ISP		.EQU            0FF71h
PORT_WARM_BOOT		.EQU            0FF72h

EXIT_BOOT:			        MOV				DPTR, #PORT_EXIT_BOOT
					        LJMP            IOWRITE

;*************************************************************
; ENTER_ISP FUNCTION
;*************************************************************
ENTER_ISP:			        MOV				DPTR, #PORT_ENTER_ISP
					        LJMP            IOWRITE

;*************************************************************
; WARM_BOOT FUNCTION
;*************************************************************
WARM_BOOT:			        MOV				DPTR, #PORT_WARM_BOOT
					        LJMP            IOWRITE

                            .END