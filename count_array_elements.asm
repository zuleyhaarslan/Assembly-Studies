.model small

.data
ORIGINAL_ARRAY DB 30, 10, 30, 50, 40, 50, 70, 30, 20, 40, 30, 30, 50, 10, 60, 10, 30, 50, 90, 90, 50, 30, 90, 40, 50
NUMBERS_ARRAY DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
FREQUENCIES_ARRAY DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.code
.STARTUP

MOV CX, 0	;number of unique elements in NUMBERS_ARRAY
MOV SI, 0	;index for ORIGINAL_ARRAY

next_element:
CMP SI, 25
JGE done	;exit if SI >= 25

MOV AL, [ORIGINAL_ARRAY + SI]	;load current element to AX
MOV DI, 0	;reset index for NUMBERS_ARRAY
MOV BX, CX	;copy CX to BX

check_number:
CMP DI, BX
JE add_new_number	;if DI is equal to the number of unique elements add a new number

CMP AL, [NUMBERS_ARRAY + DI]
JE increase_frequency	;if current element matches a NUMBERS_ARRAY element, increase frequency

INC DI	;move to the next element
JMP check_number

add_new_number:
MOV [NUMBERS_ARRAY + BX], AL
MOV [FREQUENCIES_ARRAY + BX], 1

INC CX
JMP proceed

increase_frequency:
INC [FREQUENCIES_ARRAY + DI]
JMP proceed

proceed:
INC SI
JMP next_element

done:
.exit

end