.model small

.data
    

.code
main proc
    
    ;input a single digit for example (0,1,2,3,...9)
    
    mov ah, 01h
    int 21h
    mov bl, al
    sub bl, 30h 
    
endp

end main