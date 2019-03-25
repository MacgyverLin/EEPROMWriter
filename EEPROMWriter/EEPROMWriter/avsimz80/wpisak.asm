;Program zapelnianie 1 (FF) i 0 (00) od25H do 3FF
        ORG 0000h
  	ld hl, 25h	      ;poczatek pamieci 
	ld de, 3ffh  	;koniec pamieci
loo:	inc hl		;zwieksz adres 
	ld(hl), 0FFH	;zapisz pamiec 
	ld a,h		;zapisz gornego bajtu adresu 
	cp d		      ;czy H=D ?
	jp nz, dalej	;jezeli tak, to sprawdzamy E=L ? 
	ld a,l		;zapis dolnego bajtu adresu
	cp e 
	jp z, koniec	;ostatni adres pamieci 
dalej:inc hl	      ; zwieksz adres 
      ld(HL),0	      ;zapisz pamiec 
	ld a,h		;zapis gornego bajtu adresu 
	cp d
	jp nz, loo  	;czy H=D po wpisaniu 0 ?
	ld a,l 		;zapis dolnego bajtu adresu 
	cp e 
	jp nz,loo 	      ;czy Koniec calkowity ?
koniec:
	end   		;koniec 