;licz1



       org 0           ; 
       ld a,10
       ld c,0h
licz:  inc c
       cp c
       jp nz,licz
       end       