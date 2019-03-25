;elnik

         org 0h
         ld bc,120h
         ld a,0h
pocz:    dec bc
         jp nz,pocz
         jr 04h
tam:     dec c
         jp nz,tam
         end



