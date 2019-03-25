STOS:   EQU 40H
BUF1:	EQU 30H
BUF2:	EQU 3FH
COUNT:  EQU 0FH
                
       	ORG  0
                	
    	LD HL,STOS
        PUSH HL 
 	LD HL,COUNT
      	LD (HL),0H  
    	LD HL,BUF1
    	LD DE,BUF2
    	LD BC,1000D
                
NEXT:	LD A,(HL)
      	CP 2AH      ;2AH- '*'kod gwiazdki 
    	JP Z,DALEJ
     	LD A,2AH
       	PUSH HL
    	LD HL,COUNT
     	INC (HL)  
      	POP HL
                	
DALEJ:	LD (DE),A
       	INC HL
       	INC DE
       	DEC BC
       	LD A,B
       	OR C
    	JP NZ, NEXT
                
       	END		
