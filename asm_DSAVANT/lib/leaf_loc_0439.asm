; auto-generated
leaf_loc_0439:
    push bp                          ; 0x0439
    mov bp, sp                       ; 0x043a
    mov ax, word [bp + 0xc]          ; 0x043c
    mov word [cs:cseg_0299 - IMAGE_BASE], ax ; 0x043f
    mov sp, bp                       ; 0x0443
    pop bp                           ; 0x0445
    ret                              ; 0x0446
