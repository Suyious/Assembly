data segment
    arr db 2h, 3h, 2h, 4h, 5h 
data ends

code segment
    assume cs:code, ds:data
    mainp:
        mov ax, data
        mov ds, ax
        mov si, offset arr
        mov dl, [si]
        sub dl, 30h
        mov ah, 2h
        int 21h
        mov ah, 4ch
        int 21h
code ends
ends mainp