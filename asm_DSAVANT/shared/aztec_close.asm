; auto-generated
; asm only
aztec_close:
    push bp
    mov bp, sp
    mov ah, 0x3e ; close(fd)
    mov bx, word [bp + 0x4]
    int 0x21 ; DOS close file handle
    jae short @..aztec_close.cls_ok
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
@..aztec_close.cls_ok:
    sub ax, ax
    pop bp
    ret
