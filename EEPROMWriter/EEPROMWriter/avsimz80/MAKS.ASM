;maks
                ORG 00H
                LD B,55H
                LD C,99H
                LD D,19H
                LD A,B
                CP C
                JP NC,LOOP
                LD A,C
LOOP        
                CP D
                JP NC,DALEJ
                LD A,D
DALEJ
                                  
                END
                   