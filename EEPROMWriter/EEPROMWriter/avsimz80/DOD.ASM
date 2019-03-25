;arytmetyka
                LD C,00H
                LD B,20H     
ASE:
                INC C 
                LD A,B
                CP C
                JP NZ,ASE
                END                               

                               
              
           
         