;find the sum of first N Natural numbers

data segment
data ends

code segment
    assume cs:code,ds:data
    mainp:
        mov ah, 01h         ;taking user input N
        int 21h             ;DOS interrupt
        sub al, 30h
        mov cl, al          ;counter set to N
        mov dx, 00h         ;dx = 0 (cleared)
        mov bx, 01h         ;bl = 1
        sum:
            add dx, bx      ;dx+= bx
            inc bx          ;incrementing bx
        loop sum
        
        mov ah, 04ch        ;terminating program
        int 21h      
                        
code ends
end mainp