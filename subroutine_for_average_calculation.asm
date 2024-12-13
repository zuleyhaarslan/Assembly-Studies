.model small
.stack

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
    MOV AX, num1
    MOV BX, num2
    CALL AVERAGE
    MOV avg_1_2, AX
    
    MOV AX, num1
    MOV BX, num3
    CALL AVERAGE
    MOV avg_1_3, AX
    
    MOV AX, num2
    MOV BX, num3
    CALL AVERAGE
    MOV avg_2_3, AX
    .EXIT
START ENDP            
            
AVERAGE PROC
    ADD AX, BX
    SHR AX, 1
    RET
AVERAGE ENDP

END