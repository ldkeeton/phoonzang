; auto-generated
; asm only
aztec_unlink:
    push bp
    mov bp, sp
    mov ah, 0x41 ; unlink(name)
    mov dx, word [bp + 0x4]
    int 0x21 ; DOS delete file (handle)
    jae short @..aztec_unlink.unl_ok
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
@..aztec_unlink.unl_ok:
    sub ax, ax
    pop bp
    ret
