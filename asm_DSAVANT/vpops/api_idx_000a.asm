; auto-generated
api_idx_000a:
    mov ax, 0xfff6                   ; 0x00cb
    call aztec_csav                  ; 0x00ce
    mov ax, 0                        ; 0x00d1
    push ax                          ; 0x00d4
    push word [bss_8d10]             ; 0x00d5
    push word [bss_8d0e]             ; 0x00d9
    call ds_loc_3b96                 ; 0x00dd
    add sp, byte 6                   ; 0x00e0
    mov ax, 0                        ; 0x00e3
    push ax                          ; 0x00e6
    push word [bss_8d0c]             ; 0x00e7
    push word [bss_8d0a]             ; 0x00eb
    call ds_loc_3b96                 ; 0x00ef
    add sp, byte 6                   ; 0x00f2
    mov byte [bp - 0x000a], 1        ; 0x00f5
    mov byte [bp - 0x0009], 0        ; 0x00f9
    mov ax, 0                        ; 0x00fd
    push ax                          ; 0x0100
    push ax                          ; 0x0101
    lea ax, word [bp - 0x000a]       ; 0x0102
    push ax                          ; 0x0105
    mov ax, 0                        ; 0x0106
    push ax                          ; 0x0109
    mov ax, 0xc7                     ; 0x010a
    push ax                          ; 0x010d
    mov ax, 0                        ; 0x010e
    push ax                          ; 0x0111
    mov ax, 0x13f                    ; 0x0112
    push ax                          ; 0x0115
    mov ax, 0                        ; 0x0116
    push ax                          ; 0x0119
    mov ax, 0x9a                     ; 0x011a
    push ax                          ; 0x011d
    mov ax, 0x37                     ; 0x011e
    push ax                          ; 0x0121
    mov ax, 0xe                      ; 0x0122
    push ax                          ; 0x0125
    call ds_loc_4218                 ; 0x0126
    add sp, byte 0x16                ; 0x0129
    cmp word [bp + 0x4], byte 0      ; 0x012c
    je short @..api_idx_000a.l1      ; 0x0130
    mov ax, 0xc2                     ; 0x0132
    push ax                          ; 0x0135
    mov ax, 0x13a                    ; 0x0136
    push ax                          ; 0x0139
    mov ax, 0x93                     ; 0x013a
    push ax                          ; 0x013d
    mov ax, 8                        ; 0x013e
    push ax                          ; 0x0141
    call ds_loc_3b21                 ; 0x0142
    add sp, byte 8                   ; 0x0145
@..api_idx_000a.l1:
    ret                              ; 0x0148
loc_0149:
    mov ax, 0                        ; 0x0149
    call aztec_csav                  ; 0x014c
    mov ax, 0                        ; 0x014f
    push ax                          ; 0x0152
    push word [bp + 0xa]             ; 0x0153
    call ds_loc_3a6a                 ; 0x0156
    add sp, byte 4                   ; 0x0159
    push word [bp + 0x8]             ; 0x015c
    push word [bp + 0x4]             ; 0x015f
    call aztec_strlen                ; 0x0162
    pop cx                           ; 0x0165
    mov cx, 6                        ; 0x0166
    imul cx                          ; 0x0169
    mov cx, 2                        ; 0x016b
    cwd                              ; 0x016e
    idiv cx                          ; 0x016f
    mov cx, ax                       ; 0x0171
    mov ax, word [bp + 0x6]          ; 0x0173
    sub ax, cx                       ; 0x0176
    push ax                          ; 0x0178
    call ds_loc_3a50                 ; 0x0179
    add sp, byte 4                   ; 0x017c
    mov ax, 0                        ; 0x017f
    push ax                          ; 0x0182
    push word [bp + 0x4]             ; 0x0183
    call ds_string_loc_3a95          ; 0x0186
    add sp, byte 4                   ; 0x0189
    ret                              ; 0x018c
