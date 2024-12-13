.model small

.data
array DB 20 DUP(0)
average DB ?

.code
.STARTUP
MOV BX, OFFSET array
MOV CX, 20
MOV AL, 0

loop1:
INC AL
MOV [BX], AL
INC BX
LOOP loop1

MOV BX, OFFSET array
MOV CX, 20
MOV AX, 0
CLC

loop2:
MOV DX, 0
MOV DL, [BX]
ADC AX, DX
INC BX
LOOP loop2

MOV CL, 20
DIV CL

MOV average, AL

.exit 
end