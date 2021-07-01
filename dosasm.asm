stack segment para stack
    dw 64 dop(' ')
stack ends    

data segment para 'data'
    
data ends

code segment para 'code'
    main proc far
        mov dl, 'A'
        mov ah, 06h
        int 21h
        ret
    main endp        
code ends
end