data segment
    arr1 db 0h, 1h, 2h, 3h, 4h, 5h
    arr2 db 5h, 4h, 3h, 2h, 1h, 0h
    result db 6dup(0)
data ends

code segment
    assume cs:code,ds:data
    mainp:
        mov ax, data     ;initialising data segment
        mov ds, ax
        lea si, arr1     ;si is index for arr1
        lea di, arr2     ;di is index for arr2
        lea bx, result   ;bx is index for result array
        mov cx, 6h       ;counter set to 6
        mov ah, 1h       ;taking input
        int 21h          ;DOS interrupt
        cmp al, '+'      ;checking if user enters '+'
        jne term         ;terminate if user doesn't enter '+'
    next:                ;if user enters '+'
        mov al, [si]     ;al stores  arr1[si]
        add al, [di]     ;al=al+arr2[di]
        mov [bx], al     ;storing al in result array
        inc si           ;incrementing si
        inc di           ;incrementing di
        inc bx           ;incrementing bx
    loop next            ;looping through arrays        
    term:
        mov ah, 4ch
        int 21h
code ends
end mainp
    