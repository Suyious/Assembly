.model small

.data

.code
    mov ah, 1h   ;Code for read character (char saved in "al"
    int 21h      ;DOS interrupt "do it"
    mov dl,al    ;copy character to dl
    mov ah,2h    ;Code for write character
    int 21h      ;display charcter in dl
    
    
end