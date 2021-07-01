data segment
    array db 1h,3h,5h,2h,6h,8h,9h,2h,4h,0h
    top1  db ?
    top2  db ?
data ends

code segment
    assume cs:code,ds:data
    mainp:
        mov ax, data             ;initializing data 
        mov ds, ax
        mov si, offset array     ;si holds array index
        mov cl, 0Ah              ;counter set to 10
        mov bl, 00h              ;bl = 0 (cleared)
        compare1:
            cmp [si], bl         ;compare arr[si] to max(bl)
            ja  assign1          ;assign max if greater
            jmp next1            ;else go to next
        assign1:
            mov bl, [si]
            jmp next1
        next1:
            inc si               ;increment si
            loop compare1
        mov top1, bl
        
        mov si, offset array
        mov cl, 0Ah
        mov bl, 00h
        compare2:
            mov al, top1
            cmp [si], al
            je next2
            cmp [si], bl
            ja  assign2
            jmp next2
        assign2:
            mov bl, [si]
            jmp next2
        next2:
            inc si
            loop compare2
        mov top2, bl
        
        mov ah, 4ch
        int 21h
           
code ends
end mainp