.model small

.data
result DB 3 DUP(0)
sentence DB 'Press a key to exit', 13, 10, 10, '$'

.code
start PROC
    .startup
    MOV DX, offset sentence
    MOV AH, 09h
    INT 21h
    
    continue:
    MOV AH, 2Ch
    INT 21h
    
    PUSH DX
    MOV AX, 0
    MOV AL, CH
    CALL print_to_screen
    
    MOV DL, ':'
    MOV AH, 2
    INT 21h
    
    MOV AX, 0
    MOV AL, CL
    CALL print_to_screen
    
    MOV DL, ':'
    MOV AH, 2
    INT 21h
    
    POP DX
    MOV AX, 0
    MOV AL, DH
    CALL print_to_screen
    
    MOV DL, 13
    MOV AH, 2
    INT 21h
    
    MOV AH, 01
    INT 16h
    JNE finish
    
    JMP continue
    
    finish:
    .exit
start ENDP

print_to_screen PROC
    MOV SI, offset result
    ADD SI, 5
    MOV byte ptr [SI], '$'
    MOV BX, 10
    
    loop1:
    MOV DX, 0
    DIV BX
    ADD DL, 30h
    DEC SI
    MOV [SI], DL
    CMP AX, 0
    JNZ loop1
    
    MOV DX, SI
    MOV AH, 09h
    INT 21h
    RET
print_to_screen ENDP

end start    