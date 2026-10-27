; auto-generated
aztec_rename:
    push bp
    mov bp, sp
    push di
    mov ah, 0x56
    mov dx, word [bp + 4]
    mov di, ds
    mov es, di
    mov di, word [bp + 6]
    int 0x21 ; DOS rename file
    pop di
    jae short .forward1
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
.forward1:
    sub ax, ax
    pop bp
    ret
