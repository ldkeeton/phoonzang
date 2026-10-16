; auto-generated
; asm only
aztec_lseek:
    push bp
    mov bp, sp
    mov ah, 0x42 ; long lseek(fd, pos, how) / long pos;
    mov al, byte [bp + 0xa]
    mov dx, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    mov bx, word [bp + 0x4]
    int 0x21 ; DOS seek file (lseek)
    jae short @..aztec_lseek.lsk_ok
    mov word [errno], ax
    mov ax, 0xffff
    mov dx, ax
@..aztec_lseek.lsk_ok:
    pop bp
    ret
