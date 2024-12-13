.model small

.stack 65535

.data
ARR DW 1000h, 2000h, 3000h, 4000h, 5000h
N EQU 5 

.code
.STARTUP
MOV BX, 0000h
MOV CX, N

loop1:
MOV AX, ARR[BX]
PUSH AX
ADD BX, 2
LOOP loop1

MOV BX, 0000h
MOV CX, N

loop2:
POP AX
MOV ARR[BX], AX
ADD BX, 2
LOOP loop2

.exit
end