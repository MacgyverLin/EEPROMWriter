                                ;ADRESOWANIE
                ORG 0                                                      
                LD A, C
                LD A, 05H
                LD BC, 10H
                JP 20H
                LD (12H),A
                ADD A,(HL)
                JR 10H
                END


               
                

               
                                         
        
                                  