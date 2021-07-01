.model small

.data
    

.code
main proc
    
    ;mov cl, 255     ;Carry Flag(CF) is 1 for unsigned overflow
    ;add cl, 1       ;CF is turned to 1
    
    ;mov cl, 2       ;Parity Flag(PF) is 1 when 1bits are even
    ;add cl, 1       ;PF turns to 1
    
    ;mov cl, 8       ;Auxillary Flag(AF)
    ;add cl, 8
    
    ;mov cl, 0       ;Zero Flag(ZF)
    ;add cl, 0  
    
    ;mov cl, -1      ;Sign Flag(SF)
    ;add cl, -2
    
    ;OverFlow Flag(OF)
    
endp

end main