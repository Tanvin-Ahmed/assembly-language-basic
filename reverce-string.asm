.model small
.stack 100h
.data
string db 'ali'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ; get the starting address of string variable
    mov si, offset string                        
    
    ;loop for 3 times
    mov cx,3
    
    ; store character in stack
    level1:
    mov bx,[si]
    push bx
    inc si
    
    loop level1
    
    ;pop character from stack
    mov cx,3
    
    level2:
    pop dx
    mov ah,2
    int 21h
    
    loop level2
    
    mov ah,4ch
    int 21h
    main endp
end main