.model small

.data
    val1 db 2h
    val2 db 3h
    reslt db ?

.code
main proc
    
    mov ax, data
    mov ds, ax
    mov cl, val1
    add cl, val2    
    
    mov ah, 02h
    mov dl, cl                                     
    add dl, 30h
    int 21h  
    
endp

end main                      