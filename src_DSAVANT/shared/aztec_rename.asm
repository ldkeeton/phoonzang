; auto-generated
; asm only
aztec_rename:
    push bp
    mov bp, sp
    push di ; rename(old, new)
    mov ah, 0x56
    mov dx, word [bp + 0x4]
    mov di, ds
    mov es, di
    mov di, word [bp + 0x6]
    int 0x21 ; DOS rename file
    pop di
    jae short @..aztec_rename.rnm_ok
    mov word [errno], ax
    mov ax, 0xffff
    pop bp
    ret
@..aztec_rename.rnm_ok:
    sub ax, ax
    pop bp
    ret
