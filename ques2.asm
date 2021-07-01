;Read character from console and echo it.

.model small

.data
    

.code
main proc
    mov ah, 01h ;DOS Function call for reading character from 
    int 21h     ;console and echo it.     
    
endp

end main