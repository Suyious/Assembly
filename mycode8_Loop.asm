.model small

.data
    

.code
main proc
    mov cx, 5
    ;inc cx     ;This instruction will result in infinite
                ;loop as cx will be incremented every 
                ;iteration an will never reach zero 
    top:
        ;mov cx, 5  ;This instruction will also result
                    ; in infinite loop
        mov dl, 5
        add dl, 48
        mov ah, 2h
        int 21h
    loop top    ;loop instruction checks the cx register
                ;If cx is zero, loop ends, else cx is 
                ;decremented    
  
endp

end main