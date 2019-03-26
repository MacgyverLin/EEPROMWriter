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

                    .ORG            EXTERNAL0_VECTOR
					AJMP			EXTERNAL0

                    .ORG            TIMER0_VECTOR
					AJMP			TIMER0

                    .ORG            EXTERNAL1_VECTOR
					AJMP			EXTERNAL1

                    .ORG            TIMER1_VECTOR
					AJMP			TIMER1

                    .ORG            SERIAL_VECTOR
					AJMP			SERIAL
EXTERNAL0:
TIMER0:
EXTERNAL1:
TIMER1:
SERIAL:             RET

					.TEXT
START:
BOOT_SEQUENCE:		ACALL			LED_TEST
					;ACALL			PIO0_TEST
					;ACALL			PIO1_TEST
                    ;ACALL          CF_0_TEST
					;ACALL			CLR_MEMORY
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
DELAY:				MOV				R5, #50
DELAY1:				MOV				R6, #100
DELAY2:				MOV				R7, #100
DELAY3:				DJNZ			R7, DELAY3
					DJNZ			R6, DELAY2
					DJNZ			R5, DELAY1
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TEST 8255
PIO0_TEST:		    MOV				R0, #10
					MOV				A, #080h
					ACALL           PIO0_WRITE_CTRL
					CLR				A

PIO0_TEST_LP:		ACALL			PIO0_WRITE_PORT_A
					ACALL			DELAY
					INC				A

					ACALL			PIO0_WRITE_PORT_B
					ACALL			DELAY
					INC				A

					ACALL			PIO0_WRITE_PORT_C
					ACALL			DELAY
					INC				A

					DJNZ			R0, PIO0_TEST_LP
					RET

PIO1_TEST:		    MOV				R0, #10
					MOV				A, #080h
					ACALL           PIO1_WRITE_CTRL
					CLR				A

PIO1_TEST_LP:		ACALL			PIO1_WRITE_PORT_A
					ACALL			DELAY
					INC				A

					ACALL			PIO1_WRITE_PORT_B
					ACALL			DELAY
					INC				A

					ACALL			PIO1_WRITE_PORT_C
					ACALL			DELAY
					INC				A

					DJNZ			R0, PIO1_TEST_LP
					RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TEST LED
LED_TEST:			MOV				P1, #01h
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

;========================================================================================================
; IOWRITE
; PARAMETER: A, DATA
; PARAMETER: DPTR, ADDRESS
;*************************************************************
IOWRITE:	            	MOVX			@DPTR, A
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
					        AJMP            IOWRITE
	
PIO1_WRITE_CTRL:            MOV             DPTR, #PIO1_PORT_CTRL
                            AJMP            IOWRITE

;*************************************************************
; WRITE_PIO_0_PORT_A
; PARAMETER: A, DATA
;*************************************************************
PIO0_WRITE_PORT_A:		    MOV				DPTR, #PIO0_PORT_A
					        AJMP            IOWRITE

;*************************************************************
; WRITE_PIO_0_PORT_B
; PARAMETER: A, DATA
;*************************************************************
PIO0_WRITE_PORT_B:		    MOV				DPTR, #PIO0_PORT_B
					        AJMP            IOWRITE

;*************************************************************
; WRITE_PIO_0_PORT_C
; PARAMETER: A, DATA
;*************************************************************
PIO0_WRITE_PORT_C:	    	MOV				DPTR, #PIO0_PORT_C
	    				    AJMP            IOWRITE

;*************************************************************
; WRITE_PIO_1_PORT_A
; PARAMETER: A, DATA
;*************************************************************
PIO1_WRITE_PORT_A:		    MOV				DPTR, #PIO1_PORT_A
                            AJMP            IOWRITE

;*************************************************************
; WRITE_PIO_1_PORT_B
; PARAMETER: A, DATA
;*************************************************************
PIO1_WRITE_PORT_B:		    MOV				DPTR, #PIO1_PORT_B
                            AJMP            IOWRITE

;*************************************************************
; WRITE_PIO_1_PORT_C
; PARAMETER: A, DATA
;*************************************************************
PIO1_WRITE_PORT_C:		    MOV				DPTR, #PIO1_PORT_C
                            AJMP            IOWRITE

;*************************************************************
; READ_PIO_0_PORT_A
; RETURN: A, DATA
;*************************************************************
PIO0_READ_PORT_A:	        MOV				DPTR, #PIO0_PORT_A
					        AJMP            IOREAD

;*************************************************************
; READ_PIO_0_PORT_B
; RETURN: A, DATA
;*************************************************************
PIO0_READ_PORT_B:	        MOV				DPTR, #PIO0_PORT_B
					        AJMP            IOREAD

;*************************************************************
; READ_PIO_0_PORT_C
; RETURN: A, DATA
;*************************************************************
PIO0_READ_PORT_C:	        MOV				DPTR, #PIO0_PORT_C
					        AJMP            IOREAD

;*************************************************************
; READ_PIO_1_PORT_A
; RETURN: A, DATA
;*************************************************************
PIO1_READ_PORT_A:	       	MOV				DPTR, #PIO1_PORT_A
                            AJMP            IOREAD

;*************************************************************
; READ_PIO_1_PORT_B
; RETURN: A, DATA
;*************************************************************
PIO1_READ_PORT_B:	       	MOV				DPTR, #PIO1_PORT_B
                            AJMP            IOREAD

;*************************************************************
; READ_PIO_1_PORT_C
; RETURN: A, DATA
;*************************************************************
PIO1_READ_PORT_C:	       	MOV				DPTR, #PIO1_PORT_C
                            AJMP            IOREAD



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
                                ACALL           CF0_WRITE_FEATURES    ; set 8 bit mode to features port

                                MOV             A, #0EFh                    
                                ACALL           CF0_WRITE_COMMAND     ; command 'set features'
                                
                                RET

CF_0_READ_SECTOR:               ACALL           CF0_LOOP_BUSY
                                MOV             A, #001h                    
                                ACALL           CF0_WRITE_SECTOR_COUNT; read 1 sector at a time
                                
                                ACALL           CF0_LOOP_BUSY
                                MOV             A, #000h                    
                                ACALL           CF0_WRITE_LBA_0       ; read from lba 0

                                ACALL           CF0_LOOP_BUSY
                                MOV             A, #000h                    
                                ACALL           CF0_WRITE_LBA_1       ; read from lba 0

                                ACALL           CF0_LOOP_BUSY
                                MOV             A, #000h                    
                                ACALL           CF0_WRITE_LBA_2       ; read from lba 0

                                ACALL           CF0_LOOP_BUSY
                                MOV             A, #0E0h                    
                                ACALL           CF0_WRITE_LBA_3       ; read from lba 0, notes E0h means LBA mode
                                ACALL           CF0_READ_CMD
                                RET             

CF0_READ_CMD:                   ACALL           CF0_LOOP_CMD_RDY
                                MOV             A, #020h                    
                                ACALL           CF0_WRITE_COMMAND     ; command 'read sector'
                                
                                ACALL           CF0_LOOP_DAT_RDY
                                ACALL           CF0_READ_STATUS
	                            ANL		        A, #%00000001         ; Mask Error bit
	                            JNZ		        CF0_READ_CMD      	  ; 
                                
CF0_READ_SECTOR:                MOV             DPTR, #TEST_BUFFER_PTR
                                MOV             R0, #00h
CF0_READ_SECTOR_LP:             ACALL           CF0_LOOP_DAT_RDY
                                ACALL           CF0_READ_DATA
                                MOV             DPH, #TEST_BUFFER_PTR
                                MOVX            @DPTR, A
                                
                                ACALL           CF0_LOOP_DAT_RDY
                                ACALL           CF0_READ_DATA
                                MOV             DPL, #TEST_BUFFER_PTR
                                MOVX            @DPTR, A
                                
                                DJNZ            R0, CF0_READ_SECTOR_LP                        
                                RET

;***************************************************************************
; LOOP_BUSY
; Function: Loops until status register bit 7 (busy) is 0
;***************************************************************************	
CF0_LOOP_BUSY:                  ACALL           CF0_READ_STATUS
	                            ANL		        A, #%10000000               ; Mask busy bit
	                            JNZ		        CF0_LOOP_BUSY			    ; Loop until busy(7) is 0
	                            RET

;***************************************************************************
;LOOP_CMD_RDY
;Function: Loops until status register bit 7 (busy) is 0 and drvrdy(6) is 1
;***************************************************************************	
CF0_LOOP_CMD_RDY:               ACALL           CF0_READ_STATUS
	                            ANL		        A, #%11000000               ; Mask busy and rdy bits
                                XRL		        A, #%01000000               ; we want busy(7) to be 0 and drvrdy(6) to be 1
	                            JNZ		        CF0_LOOP_CMD_RDY    		; 
	                            RET

;***************************************************************************
; LOOP_DAT_RDY
; Function: Loops until status register bit 7 (busy) is 0 and drq(3) is 1
;***************************************************************************		
CF0_LOOP_DAT_RDY:               ACALL           CF0_READ_STATUS
	                            ANL		        A, #%10001000               ; Mask busy and drq bits
                                XRL		        A, #%00001000               ; we want busy(7) to be 0 and drq(3) to be 1
	                            JNZ		        CF0_LOOP_DAT_RDY    		; 
	                            RET

;*************************************************************
; WRITE_CF_0_DATA
; PARAMETER: A, DATA
;*************************************************************
CF0_WRITE_DATA:		            MOV				DPTR, #CF_0_PORT_DATA
                                AJMP            IOWRITE

CF0_READ_DATA:		            MOV				DPTR, #CF_0_PORT_DATA
                                AJMP            IOREAD

CF0_WRITE_FEATURES:	        	MOV				DPTR, #CF_0_PORT_FEATURES
                                AJMP            IOWRITE

CF0_READ_ERROR:		            MOV				DPTR, #CF_0_PORT_ERROR
                                AJMP            IOREAD

CF0_WRITE_SECTOR_COUNT:	        MOV		    	DPTR, #CF_0_PORT_SECTOR_COUNT
                                AJMP            IOWRITE                                

CF0_WRITE_LBA_0:		        MOV				DPTR, #CF_0_PORT_LBA_0
                                AJMP            IOWRITE                                

CF0_WRITE_LBA_1:		        MOV				DPTR, #CF_0_PORT_LBA_1
                                AJMP            IOWRITE                                

CF0_WRITE_LBA_2:		        MOV				DPTR, #CF_0_PORT_LBA_2
                                AJMP            IOWRITE                                

CF0_WRITE_LBA_3:		        MOV				DPTR, #CF_0_PORT_LBA_3
                                AJMP            IOWRITE                                

CF0_WRITE_COMMAND:		        MOV				DPTR, #CF_0_PORT_COMMAND
                                AJMP            IOWRITE                                

;****************************************************************
;    7       6       5       4       3       2       1       0      
;+-------+-------+-------+-------+-------+-------+-------+-------+     
;|  BSY  | DRDY  |  DWF  |  DSC  |  DRQ  | CORR  |  IDX  |  ERR  |      
;+-------+-------+-------+-------+-------+-------+-------+-------+
;****************************************************************
CF0_READ_STATUS:		        MOV				DPTR, #CF_0_PORT_STATUS
                                AJMP            IOREAD


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
			                    ACALL	        UART0_TX
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
UART0_TX:                       ACALL           UART0_TX_RDY			;Make sure UART is ready to receive
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
UART0_RX:                       ACALL           UART0_RX_RDY			;Make sure UART is ready to receive
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
					        AJMP            IOWRITE

;*************************************************************
; ENTER_ISP FUNCTION
;*************************************************************
ENTER_ISP:			        MOV				DPTR, #PORT_ENTER_ISP
					        AJMP            IOWRITE

;*************************************************************
; WARM_BOOT FUNCTION
;*************************************************************
WARM_BOOT:			        MOV				DPTR, #PORT_WARM_BOOT
					        AJMP            IOWRITE

                            .END