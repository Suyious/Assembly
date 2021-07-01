stack segment
    dw 100h dop(0)
stack ends    
data segment
    bcd dw 4567h
    hex dw ?
data ends    
code segment
    assume cs:code,ds:data,ss:stack
    main proc
        mov ax, data
        mov ds, ax
        mov ax, bcd       ;ax=4567
        mov bx, ax        ;bx=4567
        mov al, ah        ;al=45     ax=4545
        mov bh, bl        ;bh=67     bx=6767
        mov cl, 04h
        ror ah, cl        ;ah=
        
        
        mov ah, 4ch
        int 21h
        
code ends    
end main