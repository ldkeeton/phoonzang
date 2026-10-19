; auto-generated
; asm only
aztec_write:
    push bp
    mov bp, sp
    mov ah, 0x40 ; write(fd, buffer, length) / char *buffer; int length;
@..aztec_write.iocommon:
    mov bx, word [bp + 0x4]
    cmp byte [bx + _ioflg], 0
    je short @..aztec_write.use_dos
    pop bp
    cmp ah, 0x3f
    je short @..aztec_write.readit
    jmp [aztec_write.dseg1]
@..aztec_write.readit:
    jmp [aztec_write.dseg2]
@..aztec_write.use_dos:
    mov dx, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    int 0x21 ; DOS function dispatcher
    jae short @..aztec_write.io_ok
    mov word [errno], ax
    mov ax, 0xffff
@..aztec_write.io_ok:
    pop bp
    ret
