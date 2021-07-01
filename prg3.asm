DATA SEGMENT
    FIRST DB 90h
    SECOND DB 78h
    AVGE DB ?
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
        MOV AX, DATA
        MOV DS, AX
        MOV AL, FIRST
        ADD AL, SECOND
        MOV AH, 00h
        ADC AH, 00h
        MOV BL, 2h
        DIV BL
        MOV AVGE, AL
CODE ENDS    
END START
    
    