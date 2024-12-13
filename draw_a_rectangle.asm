.model small

.data
sentence DB 'Press a key...','&'
rwidth equ 70
rheight equ 40
color equ 9

.code
MOV AH, 0
MOV AL, 13h
INT 10h

MOV CX, 100+rwidth
MOV DX, 20
MOV AL, color

loop1:
MOV AH, 0ch
INT 10h
DEC CX
CMP CX, 100
JAE loop1

MOV CX, 100+rwidth
MOV DX, 20+rheight
MOV AL, color

loop2:
MOV AH, 0ch
INT 10h
DEC CX
CMP CX, 100
JA loop2

MOV CX, 100
MOV DX, 20+rheight
MOV AL, color

loop3:
MOV AH, 0ch
INT 10h
DEC DX
CMP DX, 20
JA loop3

MOV CX, 100+rwidth
MOV DX, 20+rheight
MOV AL, color

loop4:
MOV AH, 0ch
INT 10h
DEC DX
CMP DX, 20
JA loop4

MOV AX, @data
MOV DS, AX
LEA DX, sentence
MOV AH, 09H
INT 21H

MOV AH, 00
INT 16h

MOV AH, 00
MOV AL, 03
INT 10h

.exit
end