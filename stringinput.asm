.model small

.data
    

.code
main proc
    ;takes one character as input and displays it
    mov ah, 01h
    int 21h
    mov bl, al
    mov ah, 02h
    mov dl, bl
    int 21h     
    
endp

end main