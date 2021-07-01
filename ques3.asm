;Read 10 characters from console

.model small

.data
    

.code
main proc
    mov cx, 10      ;counter set to 10
    
    read:
    mov ah, 01h     ;function call to read input
    int 21h
    
    loop read
    
    mov ah, 4ch     ;return to DOS
    int 21h         
    
endp

end main