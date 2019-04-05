    .ORG			00000h
PLACEHOLDER:  
	.BYTE			00h

	.ORG			0FFFAh
NMI:
	RTI

    .ORG			0FFFCh
RESET
	JMP				START

    .ORG			0FFFEh
IRQ:
	RTI


	.ORG			0FE00h
B:  .BYTE			00h

START:
COPY_ROM:
	LDX				00h
COPY_ROM_LP:
	LDA				0FE00h, X
	STA				0FE00h, X
	INX
	TAX				
	BNE				COPY_ROM_LP

    ; normal mode
	STA				0FF70h

	; Init PORT C
	LDA				080h
	STA				0FF03h
TEST_LED:
NEXT_LED:
DELAY:
	LDA				00h
	TAX
	TAY
DELAY_LP:			
	INX
	TXA
	BNE				DELAY_LP
	INY
	TYA
	BNE				DELAY_LP

	LDA				B
	STA				0FF00h

	JMP				NEXT_LED
    JMP             RESET

	.END