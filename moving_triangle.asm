.model small
.stack 100h
.data
X1 EQU 30
Y1 EQU 100
X2 EQU 80
Y2 EQU 20
X3 EQU 140
Y3 EQU 80
C EQU 40

.code 
MOV AH, 0
MOV AL, 13h
INT 10h

MOV SI, X1     
MOV SP, X2     
MOV BP, X3     

main:

;-----green triangle---
;-------first line-----

MOV CX, SP

MOV AX, Y3  
SUB AX, Y2  
MOV BX, BP  
SUB BX, SP  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX  

loop1:
MOV AX, CX  
SUB AX, SP  
IMUL DI     
IDIV BX    
ADD AX, Y2  
MOV DX, AX

CALL green

INC CX
CMP CX, BP
JLE loop1

;------second line-----

MOV CX, SI

MOV AX, Y2  
SUB AX, Y1  
MOV BX, SP  
SUB BX, SI  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX  

loop2:
MOV AX, CX  
SUB AX, SI  
IMUL DI     
IDIV BX    
ADD AX, Y1  
MOV DX, AX

CALL green

INC CX
CMP CX, SP
JLE loop2

;-------third line-----

MOV CX, SI

MOV AX, Y3  
SUB AX, Y1 
MOV BX, BP  
SUB BX, SI  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX   

loop3:
MOV AX, CX  
SUB AX, SI  
IMUL DI       
IDIV BX     
ADD AX, Y1  
MOV DX, AX

CALL green

INC CX
CMP CX, BP
JLE loop3

;---------delay--------
MOV CX, 002H         
delRep: 
PUSH CX        
MOV CX, 06848H 
delDec:
DEC CX            
JNZ delDec    
POP CX        
DEC CX            
JNZ delRep    

;----------------------

;-----black triangle---
;-------first line-----

MOV CX, SP

MOV AX, Y3  
SUB AX, Y2  
MOV BX, BP  
SUB BX, SP  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX  

loop4:
MOV AX, CX  
SUB AX, SP  
IMUL DI     
IDIV BX    
ADD AX, Y2  
MOV DX, AX

CALL black

INC CX
CMP CX, BP
JLE loop4

;------second line-----

MOV CX, SI

MOV AX, Y2  
SUB AX, Y1  
MOV BX, SP  
SUB BX, SI  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX  

loop5:
MOV AX, CX  
SUB AX, SI  
IMUL DI     
IDIV BX    
ADD AX, Y1  
MOV DX, AX

CALL black

INC CX
CMP CX, SP
JLE loop5

;-------third line-----

MOV CX, SI

MOV AX, Y3  
SUB AX, Y1 
MOV BX, BP  
SUB BX, SI  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX   

loop6:
MOV AX, CX  
SUB AX, SI  
IMUL DI       
IDIV BX     
ADD AX, Y1  
MOV DX, AX

CALL black

INC CX
CMP CX, BP
JLE loop6

;----------------------

MOV AX, SI
ADD AX, 1
MOV SI, AX

MOV AX, SP
ADD AX, 1
MOV SP, AX

MOV AX, BP
ADD AX, 1
MOV BP, AX

CMP BP, 319
JE reset
JNE continue

reset:
MOV SI, 0
MOV SP, 50
MOV BP, 110
JMP continue

continue:
;-----green triangle---
;-------first line-----

MOV CX, SP

MOV AX, Y3  
SUB AX, Y2  
MOV BX, BP  
SUB BX, SP  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX  

loop7:
MOV AX, CX  
SUB AX, SP  
IMUL DI     
IDIV BX    
ADD AX, Y2  
MOV DX, AX

CALL green

INC CX
CMP CX, BP
JLE loop7

;------second line-----

MOV CX, SI

MOV AX, Y2  
SUB AX, Y1  
MOV BX, SP  
SUB BX, SI  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX  

loop8:
MOV AX, CX  
SUB AX, SI  
IMUL DI     
IDIV BX    
ADD AX, Y1  
MOV DX, AX

CALL green

INC CX
CMP CX, SP
JLE loop8

;-------third line-----

MOV CX, SI

MOV AX, Y3  
SUB AX, Y1 
MOV BX, BP  
SUB BX, SI  
MOV DI, BX

MOV BX, C   
IMUL BX      
CWD
IDIV DI      
MOV DI, AX   

loop9:
MOV AX, CX  
SUB AX, SI  
IMUL DI       
IDIV BX     
ADD AX, Y1  
MOV DX, AX

CALL green

INC CX
CMP CX, BP
JLE loop9

;----------------------

JMP main

green PROC
    MOV AH, 0Ch
    MOV AL, 2
    INT 10h
    RET
green ENDP

black PROC
    MOV AH, 0Ch
    MOV AL, 0
    INT 10h
    RET
black ENDP

MOV AX, @data
MOV DS, AX

MOV AH, 00
INT 16h

MOV AH, 00
MOV AL, 03
INT 10h

end 