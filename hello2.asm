.model small

.data
Cumle DB 'Hello World', 13, 10, '$'

.code
.startup

MOV DX, OFFSET Cumle
MOV AH, 09h
INT 21h

.exit
end