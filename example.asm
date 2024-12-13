.model small
.code

CLC
MOV AH, 0Eh
MOV BL, 12h
MOV BX, 1234h
MOV [BX], 1234h ; 4 bytes instruction
MOV [BX]+1234h, 56h ; 5 bytes instruction
MOV [BX]+[DI]+1234h, 5678h 

.exit
end