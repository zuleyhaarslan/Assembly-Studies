.model small

.data
DB 10, 20, 30, 40, 50
sum DW ?

.code 
.STARTUP

MOV AX, 0
MOV BX, 0
MOV DX, 0

loop1:
MOV DL, [BX]
ADD AX, DX
INC BX

CMP BX, 4
JNE loop1

MOV sum, AX

.exit
end