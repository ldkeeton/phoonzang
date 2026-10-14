; auto-generated
leaf_loc_045c:
    push bp                          ; 0x045c
    mov bp, sp                       ; 0x045d
    push es                          ; 0x045f
    mov ax, ds                       ; 0x0460
    mov es, ax                       ; 0x0462
    mov ax, word [bp + 0xc]          ; 0x0464
    mov word [cs:cseg_0295 - IMAGE_BASE], ax ; 0x0467
    mov ax, word [bp + 0xe]          ; 0x046b
    mov word [cs:cseg_0297 - IMAGE_BASE], ax ; 0x046e
    pop es                           ; 0x0472
    mov sp, bp                       ; 0x0473
    pop bp                           ; 0x0475
    ret                              ; 0x0476
