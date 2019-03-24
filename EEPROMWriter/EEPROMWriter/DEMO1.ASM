$ALLPUBLIC
;	Demo Program for 8051
;	Written by Ken Anderson
;	May 1985
;
;	This program is intended to demonstrate features of
;	the 8051 CPU that are easily visualized on Avocet's
;	AVSIM 8051 Simulator.
;
;	The functions of this program include:
;
;	1. MAIN routine reads the bit pattern from PORT 2
;	   and cycles it on the LEDs attached to PORT 1
;	   (like a light chaser) where HI bits represent
;	   LIGHT ON (or vice-versa, of course).
;	   The light chaser rotates alternately to the right,
;	   then to the left at a rate corresponding to
;	   the binary value of PORT 2's bit pattern.
;
;	2. Timer 0 interrupt routine changes the rotation direction
;	   on each countdown.
;
;	3. Timer 1 & Serial Port are supporting a second task:
;	   On receive interrupt, read ASCII character in serial 
;	   port, and buffer it.
;	   Special character <CR> clears the buffer contents - mostly for
;	   visual effect in the simulator!
;
;
;	On occasion, the stack (07) will overflow into Bank 2 space, if
;	an interrupt occurs at a bad time - watch for it! 
;

;	Variable Map

BFSIZE	EQU	31		; Maximum Buffer size in External Data Space
RETURN	EQU	0DH		; Carriage Return

;	Register Usage:

;	B	; temporary for input char
;	F0	; direction flag

;	Bank 0
;	R2 ; Pattern read from PORT 2
;	R4 ; dynamic pattern

;	Bank 2 
;	R0	; INT routine Buffer index - next free position
;	R3	; loop counter for buffer clear

	DEFSEG	BUFBASE,CLASS=XDATA,START=20H
	SEG	BUFBASE		; External Data Address Space

	DS	BFSIZE		; INT routine Buffer space in Data Space
BFBASE	EQU	20H	; BUFBASE

;	Vectors are stored at zero-memory

; 	Note: Separate segments for each contiguous portion of memory
;		allows AVSIM51 to pre-allocate exact ranges of memory
;		that are actually in use. Using ORG within a segment
;		will mistakenly tell AVSIM51 to allocate memory that
;		is not used by the program, and hence will not trap
;		undesired references to that memory.

	DEFSEG	ZERO,START=0
	SEG	ZERO

	JMP	MAINE		; RESET

	DEFSEG	SINT1,START=SINT,CLASS=CODE
	SEG	SINT1

	JMP	SERIAL		; Serial interrupt

	DEFSEG	TMR0,START=TIMER0,CLASS=CODE
	SEG	TMR0
	
	JMP	T0INT		; Timer 0 interrupt routine 

	DEFSEG	MAIN,CLASS=CODE,START=100H
	SEG	MAIN

MAINE:
	CLR	A
	MOV	P1,A		; start with lights OFF (0's)
	CLR	F0		; start pattern to rotate rightwards
	SETB	RS1		
	MOV	R0,#BFBASE	; init buffer ptr
	CLR	RS1
	MOV	SCON, #50H	; Serial Port Mode 1
	MOV	TMOD, #20H	; Timer 1 Mode 2, Timer 0 Mode 0
	MOV	TH1, #0FDH	; Baud Rate 9.6KHz
	MOV	TL1, TH1	; preset first pass
	MOV	IP, #10H	; Serial Port has High Priority
	MOV	IE, #92H	; Interrupts ENABLED from serial & timer 0
	MOV	TCON, #50H	; Enable timers
	CALL	GETSW 		; get light chaser pattern
NEWPTRN:MOV	R2,A		; save it to test switch setting changes
	MOV	R3,A		; save dynamic pattern too
	MOV	P1,A		; set new pattern on lights
	CPL	A		; reset timer counter to value
	MOV	TH0,A
ROTATE:	MOV	A,R3		; get light pattern
	JB	F0,ROTLEFT	; select rotate direction
	RR	A		; rotate right
	JMP	SETP1		; update P1
ROTLEFT:RL	A		; rotate left
SETP1:	MOV	R3,A	
	MOV	P1,A		; update P1
	CALL	GETSW
	XRL	A,R2		; compare to pattern: switches modified?
	JZ	ROTATE		; no  -> just keep rotating
	XRL	A,R2		; yes -> fix new reading
	JMP	NEWPTRN		; start up again

GETSW:	MOV	A,P2		; read switch bank
	RET

T0INT:	PUSH	ACC		; Timer 0 Interrupt
	CPL	F0  		; rotate direction
	MOV	A,R2		; use binary value of switch pattern
	CPL	A
	MOV	TH0,A		; to reset timer count
	POP	ACC
	RETI


SERIAL:	PUSH	ACC		; Serial Port interrupt - assume receiver
	PUSH	PSW
	CLR	RI		; Clear interrupt flag
	MOV	PSW, #10H	; switch to bank 2
	MOV	A,SBUF		; Get char 
	MOV	B,A
	XRL	A,#RETURN	; Special key - CR ?
	JNZ	BUFCHAR		; no
	MOV	A,#BFSIZE	; compute loop counter
	CLR	C
	SUBB	A,R0
	CPL	A
	JZ	EXIT		; skip if at BUFBASE
	MOV	R3,A		; into R3
	CLR	A
CLEAR:	DEC	R0		; clear buffer
	MOVX	@R0,A		; above Buffer Base Address
	DJNZ	R3,CLEAR	; loop
	SJMP	EXIT
BUFCHAR:MOV	A,#BFSIZE+BFBASE; Get Buffer End
	CLR	C
	SUBB	A,R0 		; Any room left?
	CPL	C
	JNC	EXIT		; No, if BUFPTR > BFSIZE + BUFBASE
	MOV	A,B
	MOVX	@R0,A		; save char
SAVEPTR:INC	R0		; advance to next free position
EXIT:	POP	PSW
	POP	ACC
	RETI			; done


	END

