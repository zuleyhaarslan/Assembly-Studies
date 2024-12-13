.model small

.data
result DB 11 DUP(0)

.code
.STARTUP
MOV AX, 65535 ;max 16-bit value
MOV SI, OFFSET result
ADD SI, 11
MOV byte ptr [SI], '$'
MOV BX, 10

loop1:
MOV DX, 0
DIV BX
ADD DL, 30H
DEC SI
MOV [SI], DL
CMP AX, 0
JNZ loop1

MOV DX, SI
MOV AH, 09h
INT 21h

.exit
end;