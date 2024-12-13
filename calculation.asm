.model small

.code
MOV AL, 7
SUB AL, 5
MOV BL, 4
MUL BL
MOV CL, 2
DIV CL
INC AX

ADD AX, 30H
MOV AH, 0Eh
INT 10h

.exit
end