Print MACRO message
    LEA DX, message
    MOV AH, 09H
    INT 21H
ENDM

.model small

.data
sentence1 DB 'Enter a single digit number: ', '$'
sentence2 DB 13, 10, 'Enter another number: ', '$'
sentence3 DB 13, 10, 'Sum of the numbers: ', '$'

.code
start PROC
    .startup
    Print sentence1
    MOV AH, 1
    INT 21h
    MOV BL, AL
    
    Print sentence2
    MOV AH, 1
    INT 21h
    
    SUB BL, 30h
    ADD BL, AL
    
    Print sentence3
    MOV DL, BL
    MOV AH, 2
    INT 21h

.exit
start ENDP
end start