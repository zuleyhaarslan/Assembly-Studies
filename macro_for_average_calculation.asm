average MACRO source1, source2, destination
    MOV AX, source1
    MOV BX, source2
    ADD AX, BX
    SHR AX, 1
    MOV destination, AX
ENDM

.model small

.data
num1 DW 1000
num2 DW 2000
num3 DW 3000

avg_1_2 DW ?
avg_1_3 DW ?
avg_2_3 DW ?

.code
START PROC
    .STARTUP
    average num1, num2, avg_1_2
    average num1, num3, avg_1_3
    average num2, num3, avg_2_3
    .EXIT
START ENDP

END START