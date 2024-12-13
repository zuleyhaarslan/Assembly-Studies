.model small
.code

MOV AL, 60
MOV BL, 70
ADD AL, BL

ADD AL, 30H

MOV AH, 0Eh
INT 10h

.exit
end