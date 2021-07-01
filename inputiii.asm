      .model small

.data
    

.code
main proc
    ;input numbers like (10, 11, 12 ... 99)
    mov ah, 08h
    int 21h
    mov bl, al
    sub bl, '0'
    mov al, 0ah
    mul bl
    mov bl, al
    mov ah, 08h
    int 21h
    mov dl, al
    sub dl, '0'
    add bl, dl
    
endp

end main