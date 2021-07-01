.model small

.data
    

.code
main proc
    top:
        mov dl, 5
        add dl, 48
        mov ah, 2h
        int 21h
    jmp green
    mov dl, 6    ;These instructions don't get executed
    add dl, 48   ;As these are jumped over
    ah, 2h       ;
    int 21h      ;
    green:
        mov dl, 7
        add dl, 48
        mov ah, 2h
        int 21h
        
  
endp

end main