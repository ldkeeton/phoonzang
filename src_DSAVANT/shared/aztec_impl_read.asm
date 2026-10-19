; auto-generated
; asm only
aztec_impl_read:
    push bp
    mov bp, sp
    mov ah, 0x3f
    mov bx, word [bp + 0x4]
    jmp short @..aztec_write.use_dos
