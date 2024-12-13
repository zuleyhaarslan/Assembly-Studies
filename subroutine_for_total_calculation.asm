.model small
.stack

.data
sum db ?

.code
START PROC
    .STARTUP
    MOV AL, 5
    MOV BL, 3
    CALL CALCULATE_SUM
    MOV sum, AL
    .exit
START ENDP 

CALCULATE_SUM PROC
    ADD AL, BL
    RET
CALCULATE_SUM ENDP

END START