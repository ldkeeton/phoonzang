; auto-generated
aztec_unlink:
    push bp
    mov bp, sp
    mov ah, 0x41
    mov dx, word [bp + 4]
    int 0x21 ; DOS delete file (handle)
    jae short .forward1
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
.forward1:
    sub ax, ax
    pop bp
    ret
