.model small
.stack 100h
.data
m db 'I love Bangladesh $'
.code
main proc
    ; ah function no. 1 -> single key input
    ; ah function no. 2 -> single character output
    ; ah function no. 9 -> character string output
    
    mov ax,@data
    mov ds,ax   
    
    mov ah,9
    lea dx,m
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    