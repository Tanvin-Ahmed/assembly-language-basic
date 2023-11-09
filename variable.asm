.model small
.stack 100h
.data
; variable with assigned data
msg db 3
; variable for latter use
msg1 db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    ; print data
    mov ah,2
    add msg,48
    mov dl,msg
    int 21h         
    
    ; print new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ; get user input
    mov ah,1
    int 21h
    mov msg1,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    ; print data
    mov ah,2
    mov dl,msg1
    int 21h
    
    ; exit main method
    exit:
    mov ah,4ch
    int 21h
    main endp
end main