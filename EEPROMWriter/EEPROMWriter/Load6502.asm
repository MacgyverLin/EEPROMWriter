				.ORG			00000h
PLACEHOLDER:	.BYTE			00h

				.ORG			0FFFAh
NMI:			.WORD			NMIHANDLER

				.ORG			0FFFCh
RESET:			.WORD			START

				.ORG			0FFFEh
IRQ:			.WORD			IRQHANDLER

				.ORG			0FE00h
START:
COPY_ROM:		LDX				#00h
COPY_ROM_LP:
				LDA				0FE00h, X
				STA				0FE00h, X
				INX
				TXA			
				BNE				COPY_ROM_LP

				; normal mode
				LDA				#00h
				STA				0FF70h

				; Init PORT C
				LDA				#80h
				STA				0FF03h
TEST_LED:
NEXT_LED:
DELAY:
				LDA				#00h
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
				INC             B
				STA				0FF00h

				JMP				NEXT_LED
				JMP             RESET

B:				.BYTE			00h
IRQHANDLER:		
NMIHANDLER:		RTI

				.END