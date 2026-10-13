api_idx_0004:
    mov ax, 0xfffc                   ; 0x00df
    call aztec_csav                  ; 0x00e2
    push word [bp + 0xc]             ; 0x00e5
    push word [bp + 0xa]             ; 0x00e8
    mov bx, word [bp + 0x8]          ; 0x00eb
    push word [bx]                   ; 0x00ee
    call loc_00a5                    ; 0x00f0
    add sp, byte 6                   ; 0x00f3
    mov word [bp - 0x0004], ax       ; 0x00f6
    cmp ax, strict word 0xffff       ; 0x00f9
    jne short @..api_idx_0004.l3     ; 0x00fc
    push word [bp + 0xc]             ; 0x00fe
    push word [bp + 0xa]             ; 0x0101
    push word [bss_8f48]             ; 0x0104
    call loc_00a5                    ; 0x0108
    add sp, byte 6                   ; 0x010b
    mov word [bp - 0x0004], ax       ; 0x010e
    cmp ax, strict word 0xffff       ; 0x0111
    jne short @..api_idx_0004.l3     ; 0x0114
    mov bx, word [bp + 0x8]          ; 0x0116
    mov ax, word [bx]                ; 0x0119
    inc ax                           ; 0x011b
    mov cx, 0x10                     ; 0x011c
    cwd                              ; 0x011f
    idiv cx                          ; 0x0120
    mov word [bp - 0x0002], dx       ; 0x0122
@..api_idx_0004.l1:
    push word [bp + 0xc]             ; 0x0125
    push word [bp + 0xa]             ; 0x0128
    push word [bp - 0x0002]          ; 0x012b
    call loc_00a5                    ; 0x012e
    add sp, byte 6                   ; 0x0131
    mov word [bp - 0x0004], ax       ; 0x0134
    cmp ax, strict word 0xffff       ; 0x0137
    jne short @..api_idx_0004.l3     ; 0x013a
    mov ax, word [bp - 0x0002]       ; 0x013c
    inc ax                           ; 0x013f
    mov cx, 0x10                     ; 0x0140
    cwd                              ; 0x0143
    idiv cx                          ; 0x0144
    mov word [bp - 0x0002], dx       ; 0x0146
    mov bx, word [bp + 0x8]          ; 0x0149
    cmp dx, word [bx]                ; 0x014c
    jne short @..api_idx_0004.l2     ; 0x014e
    mov ax, 1                        ; 0x0150
    ret                              ; 0x0153
@..api_idx_0004.l2:
    jmp short @..api_idx_0004.l1     ; 0x0154
@..api_idx_0004.l3:
    mov ax, word [bp + 0xa]          ; 0x0156
    push ax                          ; 0x0159
    mov bx, word [bss_0e14]          ; 0x015a
    mov si, word [bp - 0x0004]       ; 0x015e
    mov al, byte [bx + si + 0x490]   ; 0x0161
    sub ah, ah                       ; 0x0165
    mov cx, ax                       ; 0x0167
    pop ax                           ; 0x0169
    sub ax, cx                       ; 0x016a
    mov bx, word [bp + 0x4]          ; 0x016c
    mov word [bx], ax                ; 0x016f
    mov ax, word [bp + 0xc]          ; 0x0171
    push ax                          ; 0x0174
    mov bx, word [bss_0e14]          ; 0x0175
    mov si, word [bp - 0x0004]       ; 0x0179
    mov al, byte [bx + si + 0x4a0]   ; 0x017c
    sub ah, ah                       ; 0x0180
    mov cx, ax                       ; 0x0182
    pop ax                           ; 0x0184
    sub ax, cx                       ; 0x0185
    mov bx, word [bp + 0x6]          ; 0x0187
    mov word [bx], ax                ; 0x018a
    mov ax, word [bp - 0x0004]       ; 0x018c
    mov bx, word [bp + 0x8]          ; 0x018f
    mov word [bx], ax                ; 0x0192
    mov word [bss_8f48], ax          ; 0x0194
    mov ax, 0                        ; 0x0197
    ret                              ; 0x019a
