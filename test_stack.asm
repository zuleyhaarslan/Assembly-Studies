.model small
.stack

.code
MOV AX, 1234h
MOV BX, 5678h

PUSH AX
PUSH BX

POP BX
POP AX

.exit
end