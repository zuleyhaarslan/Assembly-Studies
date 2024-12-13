.model small

.data
number DW 23
half DW ?
result DB ?

.code
.STARTUP
MOV AX, number
SHR AX, 1
MOV half, AX

loop1:
MOV DX, 0
MOV AX, number
DIV CX

CMP DX, 0
JE not_prime

INC CX
CMP CX, half
JB loop1

MOV result, 1
JMP finish

not_prime:
MOV result, 0

finish:
.exit

end