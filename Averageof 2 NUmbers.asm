;Average of 2 Numbers
;Khulud
.MODEL SMALL
.STACK 100H
   NUM1 DB 2
   NUM2 DB 4
   AVG DB ?


.CODE
main proc

    MOV AX,@DATA
    MOV DS,AX 
    
      MOV AL,NUM1
  MOV BL,NUM2
  ADD AL,BL  
 
  
  SAR AL,1
  
  
  MOV AVG,AL
  
  MOV AH,2  
  ADD AL,'0' ; convert to ASCII digit
  MOV DL,AL
  INT 21H

    MOV AH, 4CH
    INT 21H

    MAIN ENDP
END MAIN
