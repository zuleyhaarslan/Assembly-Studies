.model small
.code

MOV AH, 0Eh

MOV AL, 'H'
INT 10h

MOV AL, 'E'
INT 10h

MOV AL, 'L'
INT 10h

MOV AL, 'L'
INT 10h

MOV AL, 'O'
INT 10h

.EXIT
END