.model small

.code
MOV AL, 2
MOV BL, 3
MUL BL

ADD AX, 30H
MOV AH, 0Eh
INT 10h

.exit
end