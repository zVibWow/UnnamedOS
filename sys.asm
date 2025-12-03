[org 0x7c00]

start:
    call print_msg0
    call print_msg1
    call print_msg2
    call print_msg3
    jmp $           

print_msg0:
    mov si, msg0
    call do_print
    ret

print_msg1:
    mov si, msg1
    call do_print
    ret

print_msg2:
    mov si, msg2
    call do_print
    ret

print_msg3:
    mov si, msg3
    call do_print
    ret

do_print:
    push ax         
    push si         
    push bx         
    
print_char_loop:
    mov al, [si]    
    cmp al, 0       
    je end_print    
    
    mov ah, 0x0e    
    int 0x10        
    
    inc si          
    jmp print_char_loop 

end_print:
    pop bx          
    pop si          
    pop ax          
    ret             

msg0 db '--------------------------------------- ', 13, 10, 0
msg1 db 'Hi. ', 13, 10, 0
msg2 db 'Are you running UnnamedOS! ', 13, 10, 0
msg3 db 'Good luck to code it!', 13, 10

times 510-($-$$) db 0
dw 0xaa55