;Arrays in assembly  
.model small

.data
    nums db 3h,4h,5h,6h,7h
    num2 db 4h,5h,2h,3h,1h
    resl db 5dop(0)    

.code
main proc
    mov ax, data
    mov ds, ax
    mov di, offset nums
    mov si, offset num2
    mov bx, offset resl 
    mov cx, 5h
    mov ah, 1h
    int 21h
    cmp al, '+'
    jne term
    loopx:
        mov al, [di]
        add al, [si]
        mov [bx], al
        inc di
        inc si
        inc bx
    loop loopx
    mov cx, 5h
    mov bx, offset resl
    print:
        mov ah, 2h
        mov dl, [bx]
        add dl, 30h
        int 21h
        inc bx
    loop print
    term:
    mov ah, 4ch
    int 21h
    
endp

end main