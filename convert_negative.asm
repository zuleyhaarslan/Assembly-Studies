.model small

.code
;MOV AL, -5
;MOV AL, 251
;MOV AL, 0FBh
;MOV AL, 11111011b
MOV AL, 5   

CMP AL, 0
JG positive
NEG AL  

ADD AX, 30H
MOV AH, 0Eh
INT 10h

positive:
.exit


end