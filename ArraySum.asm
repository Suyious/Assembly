data segment
    arr1 db 0h, 1h, 2h, 3h, 4h, 5h
    arr2 db 5h, 4h, 3h, 2h, 1h, 0h
    result db 6dup(0)
data ends

code segment
    assume cs:code,ds:data
    mainp:
        mov ax, data
        mov ds, ax
        lea si, arr1
        lea di, arr2
        lea bx, result
        mov cx, 6h
        mov ah, 1h
        int 21h
        cmp al, '+'
        jne term    
    next:
        mov al, [si]
        add al, [di]
        mov [bx], al 
        inc si
        inc di
        inc bx
    loop next
    lea si, result
    mov cx, 6h
    print:
        mov dl, [si]
        add dl, 30h 
        mov ah, 02h
        int 21h
    loop print        
    term:
        mov ah, 4ch
        int 21h
code ends
end mainp
    