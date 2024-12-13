.model small

.data
sum DW ?

.code
.STARTUP
MOV AX, 0
MOV BX, 0

loop1:
INC BX
ADD AX, BX

CMP BX, 20
JNE loop1

MOV sum, AX

.exit
end