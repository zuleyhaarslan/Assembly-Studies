.model small
.code

MOV AL, 01001000b
ADD AL, 01111001b

ADD AL, 30H

MOV AH, 0Eh
INT 10h

.exit
end