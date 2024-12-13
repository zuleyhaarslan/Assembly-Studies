.model small

.data
sentence1 DB 'PRESS KEYS', 13, 10, '$'
sentence2 DB '(ESC TO EXIT)', 13, 10, '$'

.code
.startup
MOV AH, 09h
MOV DX, offset sentence1
INT 21h
MOV DX, offset sentence2
INT 21h

continue:
MOV AH, 10h
INT 16h
CMP AL, 27
JE finish

MOV AH, 0Eh
MOV BL, AL
MOV AL, '*'
INT 10h

JMP continue

finish:
.exit
end 