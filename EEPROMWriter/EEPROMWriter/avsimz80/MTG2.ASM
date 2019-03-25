                ORG 0
                LD H,A
EXT_LOOP        LD IX,100H
                LD E,2
                LD C,14H
INT_LOOP        LD A,(IX)
                DEC H
                JP Z,MALEJACO
                CP A,(IX+1)
                JP C,ZAMIEN
                JP DALEJ
MALEJACO        CP A,(IX+1)
                JP NC,ZAMIEN
                JP DALEJ
ZAMIEN          JP Z,DALEJ
                LD B,(IX+1)
                LD (IX),B
                LD (IX+1),A
                LD E,1
DALEJ           INC H
                INC IX
                DEC C
                JP NZ,INT_LOOP
                DEC E
                JP Z,EXT_LOOP
                END
