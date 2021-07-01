;TITLE add two numbers present in two consecutive memory
;locations and store the result in next memory location

.model small

.data
    num1 db 3h
    num2 db 5h
    sum db ?

.code
main proc
    mov ax, data
    mov ds, ax
    mov al, num1
    add al, num2
    mov sum, al
    mov ax, 4ch
    int 21h        
    
endp

end main