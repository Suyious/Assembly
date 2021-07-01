data segment
    val dw 5678h
data ends

code segment
    assume cs:code, ds:data
    mainp:
        mov ax, 1234h
        xchg ah, al
        mov ax, 1234h
        mov bx, val
        xchg ax, bx
        xchg ah, bl
        mov ah, 4ch
        int 21h
code ends
ends mainp