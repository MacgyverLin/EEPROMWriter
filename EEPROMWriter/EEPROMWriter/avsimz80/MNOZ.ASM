       ORG 0
       LD D,00H
       LD L,A
       LD H,0
       LD A,0
       LD B,8
LOOP   SRL C
       JP NC,DALEJ
       LD E,A
       LD A,D
       ADD A,H
       LD H,A
       LD A,E
       ADD A,L
       JP NC,DALEJ
       INC H
DALEJ  SLA L
       RL D
       DJNZ LOOP
       LD L,A
       HALT
       END