stack segment
    dw 100h dop(0)
stack ends    
data segment
    ascii db '345'
data ends    
code segment
    assume cs:code,ds:data,ss:stack
    main proc
        mov ax, data
        mov ds, ax
        lea si, ascii
        mov cx, 3h       ;cx=03h
        mov bx, 1h       ;bl=01h
        mov dx, 00h
        mov ax, 00h
        extract:
            mov al, [si] ;al=33h
            sub al, 30h  ;al=03h           
            mul bx       ;al=03h (3*1)
            add dx, ax   ;dl=03h
            mov ax, bx
            mov bl, 0ah
            mul bl       ;(al*10)
            mov bx, ax   ;bl=0ah
            inc si
        loop extract
        mov ah, 4ch
        int 21h
        
code ends    
end main