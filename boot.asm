[org 0x7c00]

start:
    mov si, msg 
    
.loop_print:
    mov al, [si]
    cmp al, 0
    je .timer_start

    mov ah, 0x0e
    int 0x10
    
    inc si
    jmp .loop_print 

.timer_start:
    mov ax, 0x00
    mov ds, ax
    
    mov cx, [0x046C]
    add cx, 37
    
.timer_wait:
    mov ax, [0x046C]
    
    cmp ax, cx
    
    jb .timer_wait

    jmp $

msg db 'Welcome to Unnamed OS', 0

times 510-($-$$) db 0
dw 0xaa55