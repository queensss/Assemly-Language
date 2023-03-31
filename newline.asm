.MODEL SMALL
.STACK 100H

.DATA
      
     
    SPACE DB 32
    NUM1 DB 49  
    NUM2 DB 50
    NUM3 DB 51
    
                   
.CODE
     MAIN PROC 
       
       
        MOV AX, @DATA
        MOV DS, AX
       
               
        MOV AH, 2
       
       
        MOV DL, NUM1
        INT 21H 
        
        MOV AH,2
        MOV DL, 10
        INT 21H 
        
        MOV DL,13
        INT 21H               
     
       MOV DL, NUM2           ;carriege return korte hoy,space chole ashe na hole
        INT 21H
       
       
        MOV AH,2
        MOV DL, 10
        INT 21H
        
         MOV DL,13
        INT 21H  
        
        MOV DL, NUM3
        INT 21H 
        
         MOV DL,13
        INT 21H  
       
       

     MOV AH, 4CH 
     INT 21H      
     
     
     MAIN ENDP
     
END MAIN