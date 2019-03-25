;Sortowanie babelkowe
	
	LD D, 9
skok3:	LD IX, 1000h
	LD B, 9
skok2:	LD A, (IX)
	CP (IX+1)
	JP C, skok
	LD C, (IX+1)
	LD (IX+1), A
	LD (IX), C
skok:	INC IX
	DEC B
	JP NZ, skok2
	DEC D
	JP NZ, skok3
	END