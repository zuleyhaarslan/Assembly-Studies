.model small

.data
DB 5
DB 4
DB ?

.code
.STARTUP

MOV AL, DS:[0000h]
ADD AL, DS:[0001h]
MOV DS:[0002h], AL

ADD AL, 30H

MOV AH, 0Eh
INT 10h

.exit
end