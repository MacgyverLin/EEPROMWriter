        org 0H     ; pocz¥tek programu
        ld a,0E0H  ; Stan koäcowy licznika
        ld B, 0H   ; pocz¥tek licznika
pocz:   INC B      ; podnie˜ licznik o 1
        CP B       ; Czy warto˜† koäcowa ?
        JP NZ, pocz; Je¾eli nie to dodawaj dalej.
        END
