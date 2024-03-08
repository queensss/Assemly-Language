.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

MOV AH,1
INT 21h 

MOV BL,AL

MOV AH,2

MOV DL,0DH

INT 21h 

MOV DL,0AH 

INT 21h

MOV DL,BL

INT 21h
  

;exit to DOS
MOV AX,4C00H
INT 21H






