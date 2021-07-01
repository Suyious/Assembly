;To exchange two memory variables using MOV and XCHG
;instruction

.model small

.data
    num1 db 3h
    num2 db 5h    

.code
main proc
    mov ax, data  ;Initializing data segment
    mov ds, ax
    
    mov al, num1
    xchg al, num2
    mov num1, al
    
    mov ah, 4ch   ;Return to DOS
    int 21h         
    
endp

end main