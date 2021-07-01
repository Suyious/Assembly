;convert a three digit ASCII number stored in three consecutive
;byte locations in th ememory into binary number

data segment
    ascii db '345'
    ones db ?
    tens db ?
    hund db ?
    
data ends

code segment
    assume cs:code, ds:data
    mainp:
        mov ax, data             ;initializing data segment
        mov ds, ax
        
        mov si, offset ascii     ;si stores index to ascii 
        mov al, [si]             ;store 3 in al
        sub al, 30h
        mov ones, al             ;ones = 3
        inc si                   ;increment si
        mov al, [si]             ;store 4 in al
        sub al, 30h
        mov tens, al             ;tens = 4
        inc si                   ;increment si
        mov al, [si]             ;store 5 in al
        sub al, 30h
        mov hund, al             ;hund = 5
        
        mov al, hund             ;al = 5
        mov bl, 64h              ;bl = 100
        mul bl                   ;ax = 500
        mov dx, ax               ;dx = 500
        mov al, tens             ;al = 4
        mov bl, 0ah              ;bl = 10
        mul bl                   ;ax = 40
        add dx, ax               ;dx = 540
        mov ax, 00h              ;ax = 0 (cleared)
        mov al, ones             ;al = 3
        add dx, ax               ;dx = 543
        
        mov ah, 4ch
        int 21h       
                
code ends
end mainp