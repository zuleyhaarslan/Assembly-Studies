.model small

.data
Num1 DW 1234h
Num2 DW 5678h
SUM DW ?

.code
.startup
MOV AX, Num1
ADD AX, Num2
MOV SUM, AX

;ADD SUM, 30H
;MOV AH, 0Eh
;INT 10h

.exit
end