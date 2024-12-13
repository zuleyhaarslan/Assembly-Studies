.model small

.code
MOV AL, 5
TEST AL, 10000000b
JE positive
JMP negative

positive:
MOV AL, 0   ;0 is positive
ADD AX, 30H
MOV AH, 0Eh
INT 10h
.exit

negative:
MOV AL, 1   ;1 is negative
ADD AX, 30H
MOV AH, 0Eh
INT 10h
.exit 

end