; auto-generated
; asm only
loc_SPHL:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    push word [bp + 0xc]
    call far [cs:cseg_0122 - IMAGE_BASE]
    pop cx
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
