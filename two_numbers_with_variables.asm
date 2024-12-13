.model small

.data
Num1 DB 5
Num2 DB 4
Sum DB ?

.code
.STARTUP

MOV AL, Num1
ADD AL, Num2
MOV Sum, AL

ADD AL, 30H

MOV AH, 0Eh
INT 10h

.exit
end