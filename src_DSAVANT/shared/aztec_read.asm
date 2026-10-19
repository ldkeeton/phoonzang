; auto-generated
; asm only
aztec_read:
    push bp
    mov bp, sp
    mov ah, 0x3f ; read_(fd, buffer, length) / char *buffer; int length;
    jmp short @..aztec_write.iocommon
