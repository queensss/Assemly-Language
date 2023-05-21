;SUM of 2 Numbers
;Khulud
.MODEL SMALL
.STACK 100H

.DATA
   NUM1 DB 49
   NUM2 DB 50
   RESULT DW ?


.CODE

    MAIN PROC
       
      MOV AX,@DATA
      MOV DS,AX
      
      MOV AL,NUM1
      ADD AL,NUM2  
      ADC AH,00H
      
      MOV RESULT,AX
      
      MOV AH,2  
      SUB AX,48
      MOV DX,AX
      INT 21H
      
       

    MAIN ENDP
END MAIN
