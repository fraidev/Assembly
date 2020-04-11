                  
org 100h          
                  
                  
    MOV BL,9      
    MOV CL,3      
                  
    CMP BL,CL     
    JG decrementarEExibir
                  
    MOV AH,2h     
    DEC CL        
    ADD CL,48     
    MOV DL,CL     
    INT 21h       
    JMP END:      
                  
    decrementarEExibir:        
                  
    MOV AH,2h     
    DEC BL        
    ADD BL,48     
    MOV DL,BL     
    INT 21h       
    END:          
                  
                  
ret               
                  
                  
                  
                  
                  
