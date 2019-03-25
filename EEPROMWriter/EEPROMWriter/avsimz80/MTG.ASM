        ORG 0
        LD B,0H
LOOP100 INC B
        SUB A,64H
        JP NC,LOOP100
        ADD A,64H 
        DEC B
        LD H,B
        LD B,0
LOOP10  INC B
        SUB A,0AH
        JP NC,LOOP10
        ADD A,0AH
        DEC B
        LD L,B
        SLA L
        SLA L
        SLA L
        SLA L
        ADD A,L
        LD L,A
        END


