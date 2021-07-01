;Arrays in assemby


.model small

.data
    nums db 3h,4h,5h,6h,7h
    num2 db 4h,5h,7h,3h,3h
    resl db 5dop(0)    

.code
main proc
    mov ax, data
    mov ds, ax
    mov di, offset nums
    mov si, offset num2
    mov bx, offset resl 
    mov cx, 5h
    mov al, [si]
    mov [di], al
    print:
        mov dl,[di]
        add dl, 30h
        inc di
        mov ah, 2h
        int 21h
    loop print
    mov ah, 4ch
    int 21h
        
    
endp

end main