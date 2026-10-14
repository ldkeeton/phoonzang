; auto-generated
leaf_loc_JRQS:
    push bp                          ; 0x3829
    mov bp, sp                       ; 0x382a
    mov ah, 0x40                     ; 0x382c
    mov bx, word [bp + 0x4]          ; 0x382e
    jmp short @..aztec_write.use_dos ; 0x3831
