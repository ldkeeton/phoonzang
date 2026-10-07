math_loc_3a15:
    mov ax, 0                        ; 0x3a15
    call ds_dispatch_f40b            ; 0x3a18
    mov ax, 6                        ; 0x3a1b
    imul word [bp + 0xa]             ; 0x3a1e
    add ax, word [bp + 0x6]          ; 0x3a21
    push ax                          ; 0x3a24
    mov ax, 6                        ; 0x3a25
    imul word [bp + 0x8]             ; 0x3a28
    add ax, word [bp + 0x4]          ; 0x3a2b
    inc ax                           ; 0x3a2e
    inc ax                           ; 0x3a2f
    push ax                          ; 0x3a30
    push word [bp + 0x6]             ; 0x3a31
    push word [bp + 0x4]             ; 0x3a34
    call ds_dispatch_bd98            ; 0x3a37
    add sp, byte 8                   ; 0x3a3a
    push word [bp + 0xe]             ; 0x3a3d
    push word [bp + 0xc]             ; 0x3a40
    push word [bp + 0x10]            ; 0x3a43
    push word [bp + 0x8]             ; 0x3a46
    push word [bp + 0x6]             ; 0x3a49
    push word [bp + 0x4]             ; 0x3a4c
    call api_idx_0004_7              ; 0x3a4f
    add sp, byte 0x0c                ; 0x3a52
    ret                              ; 0x3a55
