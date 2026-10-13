; auto-generated
aztec_write:
    push bp                          ; 0x383a
    mov bp, sp                       ; 0x383b
    mov ah, 0x40 ; write(fd, buffer, length) / char *buffer; int length; ; 0x383d
@..aztec_write.iocommon:
    mov bx, word [bp + 0x4]          ; 0x383f
    cmp byte [bx + 0x251a], 0        ; 0x3842
    je short @..aztec_write.use_dos  ; 0x3847
    pop bp                           ; 0x3849
    cmp ah, 0x3f                     ; 0x384a
    je short @..aztec_write.readit   ; 0x384d
    jmp [dseg_2530]                  ; 0x384f
@..aztec_write.readit:
    jmp [dseg_252e]                  ; 0x3853
@..aztec_write.use_dos:
    mov dx, word [bp + 0x6]          ; 0x3857
    mov cx, word [bp + 0x8]          ; 0x385a
    int 0x21 ; DOS function dispatcher
    jae short @..aztec_write.io_ok   ; 0x385f
    mov word [dseg_24d6], ax         ; 0x3861
    mov ax, 0xffff                   ; 0x3864
@..aztec_write.io_ok:
    pop bp                           ; 0x3867
    ret                              ; 0x3868
