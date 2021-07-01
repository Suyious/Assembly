data segment    
data ends

code segment
    assume cs:code, ds:data
    main proc                   ;main procedure
        mov ah, 1h              ;taking user input
        int 21h                 ;DOS interrupt
        call check              ;calling check procedure
    term:
        mov ah, 4ch             ;terminating the program
        int 21h
    main endp
    check proc near             ;check procedure
        sub al, 30h
        cmp al, 00h             ;compare al to 0
        je term                 ;if equal terminate
        mov al, 1h              ;else al = 1
        ret                     ;return
    check endp
    
code ends
end main