.model small

.data
Arr DB 10, 20, 30, 40, 50
Sum DW ?

.code
.STARTUP

MOV AX, 0
MOV BX, 0
MOV BL, Arr
ADD AX, BX
MOV BL, Arr+1
ADC AX, BX
MOV BL, Arr+2
ADC AX, BX
MOV BL, Arr+3
ADC AX, BX
MOV BL, Arr+4
ADC AX, BX
MOV Sum, AX

.exit
end