.model small

.data
sentence DB "Testing string"

.code
MOV DX, @data
MOV ES, DX
MOV BP, offset sentence
MOV AH, 03h
INT 10h

MOV BH, 00h
MOV BL, 10101111b
MOV CX, 14
MOV AL, 01h
MOV AH, 13h
INT 10h

.exit
end