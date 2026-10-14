; auto-generated
; asm only
leaf_loc_NONR:
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    mov word [cs:cseg_0295 - IMAGE_BASE], ax
    mov ax, word [bp + 0xe]
    mov word [cs:cseg_0297 - IMAGE_BASE], ax
    pop es
    mov sp, bp
    pop bp
    ret
