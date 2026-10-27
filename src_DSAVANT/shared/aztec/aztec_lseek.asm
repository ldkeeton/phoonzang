; auto-generated
aztec_lseek:
    push bp
    mov bp, sp
    mov ah, 0x42
    mov al, byte [bp + 0xa]
    mov dx, word [bp + 6]
    mov cx, word [bp + 8]
    mov bx, word [bp + 4]
    int 0x21 ; DOS seek file (lseek)
    jae short .forward1
    mov word [errno], ax
    mov ax, 0xffff
    mov dx, ax
.forward1:
    pop bp
    ret
