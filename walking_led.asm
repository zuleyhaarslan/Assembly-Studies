.model small
.code

START PROC
MainLoop:
MOV AL, 10000000B
OUT 4, AL
CALL WAIT1

MOV AL, 01000000B 
OUT 4, AL
CALL WAIT1

MOV AL, 00100000B
OUT 4, AL
CALL WAIT1

MOV AL, 00010000B
OUT 4, AL
CALL WAIT1

MOV AL, 00001000B
OUT 4, AL
CALL WAIT1

MOV AL, 00000100B
OUT 4, AL
CALL WAIT1

MOV AL, 00000010B
OUT 4, AL
CALL WAIT1

MOV AL, 00000001B
OUT 4, AL
CALL WAIT1

JMP MainLoop
START ENDP

WAIT1 PROC
MOV CX, 0ffh
wait2: LOOP wait2
RET
WAIT1 ENDP

END START