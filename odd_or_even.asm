.model small

.data
result DB ?

.code
.STARTUP

MOV BL, 5
SHR BL, 1

JC odd
MOV result, 0
JMP finish

odd:
MOV result, 1

MOV result, AL
ADD AX, 30H
MOV AH, 0Eh
INT 10h

finish:
.exit
END