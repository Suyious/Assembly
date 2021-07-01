.model small

.data
    string db 'Hello World$'

.code
main proc
    mov ax, data
    mov ds, ax
    mov dl, offset string
    mov ah, 09h
    int 21h
    mov ah, 4ch
    int 21h        
    
endp
end main