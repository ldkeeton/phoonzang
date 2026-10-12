aztec_lseek:
    push bp                          ; 0x3881
    mov bp, sp                       ; 0x3882
    mov ah, 0x42 ; long lseek(fd, pos, how) / long pos; ; 0x3884
    mov al, byte [bp + 0xa]          ; 0x3886
    mov dx, word [bp + 0x6]          ; 0x3889
    mov cx, word [bp + 0x8]          ; 0x388c
    mov bx, word [bp + 0x4]          ; 0x388f
    int 0x21 ; DOS seek file (lseek)
    jae short @..aztec_lseek.lsk_ok  ; 0x3894
    mov word [dseg_24d6], ax         ; 0x3896
    mov ax, 0xffff                   ; 0x3899
    mov dx, ax                       ; 0x389c
@..aztec_lseek.lsk_ok:
    pop bp                           ; 0x389e
    ret                              ; 0x389f
