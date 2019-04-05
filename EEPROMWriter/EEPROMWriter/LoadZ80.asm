    .ORG			00000h
RESET:
	JP				START

	.ORG			0FE00h
START:
COPY_ROM:
	LD				HL, 0000h
COPY_ROM_LP:
	LD				A, (HL)
	LD				(HL), A
	INC				HL
	LD				A, L
	SUB				00h
	JR				NZ, COPY_ROM_LP
	LD				A, H
	SUB				0ffh
	JR				NZ, COPY_ROM_LP

    ; normal mode
	LD				HL, 0FF70h
	LD				(HL), A

	; Init PORT C
	LD				HL, 0FF03h
	LD				A, 080h
	LD				(HL), A

TEST_LED:
	LD				B, 00h
NEXT_LED:
DELAY:
	LD				HL, 0000h
DELAY_LP:			
	INC				HL
	LD				A, L
	SUB				00h
	JR				NZ, DELAY_LP
	LD				A, H
	SUB				00h
	JR				NZ, DELAY_LP	; delay

	LD				HL, 0FF00h
	LD				(HL), B			; change LED
	INC				B
	JP				NEXT_LED

    JP				RESET
	.END