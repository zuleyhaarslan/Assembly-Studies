.model small

.data
result DB DUP(0)

.code
start PROC
        .startup
        MOV AH, 2AH
        INT 21H
        PUSH DX
        MOV AX, 0
        MOV AL, DL
        CALL print_to_screen
        
        MOV DL, '/'
        MOV AH, 2
        INT 21h
        
        POP DX
        MOV AX, 0
        MOV AL, DH
        CALL print_to_screen
        
        MOV DL, '/'
        MOV AH, 2
        INT 21h
        
        MOV AX, CX
        CALL print_to_screen
        
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