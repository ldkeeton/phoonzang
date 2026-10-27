; auto-generated
aztec_close:
    push bp
    mov bp, sp
    mov ah, 0x3e
    mov bx, word [bp + 4]
    int 0x21 ; DOS close file handle
    jae short .forward1
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
.forward1:
    sub ax, ax
    pop bp
    ret
