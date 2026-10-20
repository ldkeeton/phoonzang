; auto-generated
leaf_loc_UNNV_0462:
    push bp                          ; 0x0462
    mov bp, sp                       ; 0x0463
    push es                          ; 0x0465
    mov ax, ds                       ; 0x0466
    mov es, ax                       ; 0x0468
    mov ax, word [bp + 0xc]          ; 0x046a
    mov word [cs:cseg_0195 - IMAGE_BASE], ax ; 0x046d
    mov ax, word [bp + 0xe]          ; 0x0471
    mov word [cs:cseg_0197 - IMAGE_BASE], ax ; 0x0474
    pop es                           ; 0x0478
    mov sp, bp                       ; 0x0479
    pop bp                           ; 0x047b
    ret                              ; 0x047c
