math_loc_0149:
    mov ax, 0                        ; 0x0149
    call ds_dispatch_f40b            ; 0x014c
    mov ax, 0                        ; 0x014f
    push ax                          ; 0x0152
    push word [bp + 0xa]             ; 0x0153
    call ds_dispatch_e823            ; 0x0156
    add sp, byte 4                   ; 0x0159
    push word [bp + 0x8]             ; 0x015c
    push word [bp + 0x4]             ; 0x015f
    call ds_dispatch_fa90            ; 0x0162
    pop cx                           ; 0x0165
    mov cx, 6                        ; 0x0166
    imul cx                          ; 0x0169
    mov cx, data_0002                ; 0x016b
    cwd                              ; 0x016e
    idiv cx                          ; 0x016f
    mov cx, ax                       ; 0x0171
    mov ax, word [bp + 0x6]          ; 0x0173
    sub ax, cx                       ; 0x0176
    push ax                          ; 0x0178
    call ds_dispatch_e809            ; 0x0179
    add sp, byte 4                   ; 0x017c
    mov ax, 0                        ; 0x017f
    push ax                          ; 0x0182
    push word [bp + 0x4]             ; 0x0183
    call ds_dispatch_e84e            ; 0x0186
    add sp, byte 4                   ; 0x0189
    ret                              ; 0x018c
