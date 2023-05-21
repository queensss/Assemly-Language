;Substraction of 2 Numbers
;Khulud
.MODEL SMALL
.STACK 100H

.DATA
   NUM1 DB 51
   NUM2 DB 50
   RESULT DW ?


.CODE

    main proc
       
      MOV AX,@DATA
      MOV DS,AX
      
      MOV AL,NUM1
      SUB AL,NUM2  
      
      
      MOV RESULT,AX
      
      MOV AH,2  
      ADD AX,48
      MOV DX,AX
      INT 21H
      
       
    MAIN ENDP
END MAIN