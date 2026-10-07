api_idx_0050:
    mov ax, 0xffb0                   ; 0x081a
    call ds_dispatch_f40b            ; 0x081d
    lea ax, word [bp - 0x0050]       ; 0x0820
    push ax                          ; 0x0823
    push word [bp + 0x4]             ; 0x0824
    call ds_dispatch_b53b            ; 0x0827
    add sp, byte 4                   ; 0x082a
    lea ax, word [bp - 0x0050]       ; 0x082d
    push ax                          ; 0x0830
    call api_idx_0008                ; 0x0831
    pop cx                           ; 0x0834
    ret                              ; 0x0835
