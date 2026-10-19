; auto-generated
; asm only
aztec_impl_write:
    push bp
    mov bp, sp
    mov ah, 0x40
    mov bx, word [bp + 0x4]
    jmp short @..aztec_write.use_dos
