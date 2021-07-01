;Arrays in assemby


.model small

.data
    nums db 3h,4h,5h,6h,7h    

.code
main proc
    mov ax, data
    mov ds, ax
    lea bx, nums
    mov cx, 5h
    print:
        mov dl,[bx]
        add dl, 30h
        inc bx
        mov ah, 2h
        int 21h
    loop print
    mov ah, 4ch
    int 21h
        
    
endp

end main