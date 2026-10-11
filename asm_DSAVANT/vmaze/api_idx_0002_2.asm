api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0106
    call ds_dispatch_f40b            ; 0x0109
    cmp word [bss_830c], byte 0x17   ; 0x010c
    jne short @..api_idx_0002_2.l1   ; 0x0111
    cmp word [bss_8f3e], byte 0x0f   ; 0x0113
    jne short @..api_idx_0002_2.l1   ; 0x0118
    ret                              ; 0x011a
@..api_idx_0002_2.l1:
    mov ax, 3                        ; 0x011b
    push ax                          ; 0x011e
    call ds_dispatch_b7a9            ; 0x011f
    pop cx                           ; 0x0122
    cmp ax, strict word 2            ; 0x0123
    jne short @..api_idx_0002_2.l2   ; 0x0126
    cmp word [bss_9196], byte 0      ; 0x0128
    je short @..api_idx_0002_2.l2    ; 0x012d
    mov ax, 0xf                      ; 0x012f
    jmp short @..api_idx_0002_2.l3   ; 0x0132
@..api_idx_0002_2.l2:
    mov ax, 0xe                      ; 0x0134
@..api_idx_0002_2.l3:
    mov word [bp - 0x0002], ax       ; 0x0137
    push ax                          ; 0x013a
    call ds_dispatch_b7e0            ; 0x013b
    pop cx                           ; 0x013e
    ret                              ; 0x013f
loc_0140:
    mov ax, 0                        ; 0x0140
    call ds_dispatch_f40b            ; 0x0143
    mov ax, 1                        ; 0x0146
    push ax                          ; 0x0149
    call ds_dispatch_ef14            ; 0x014a
    pop cx                           ; 0x014d
    cmp word [bss_9194], byte 0      ; 0x014e
    je short @..local.l1             ; 0x0153
    mov ax, 0xe                      ; 0x0155
    push ax                          ; 0x0158
    call ds_dispatch_d6c6            ; 0x0159
    pop cx                           ; 0x015c
@..local.l1:
    cmp word [bss_9196], byte 0      ; 0x015d
    je short @..local.l2             ; 0x0162
    mov ax, 0xf                      ; 0x0164
    push ax                          ; 0x0167
    call ds_dispatch_d6c6            ; 0x0168
    pop cx                           ; 0x016b
@..local.l2:
    mov word [bss_9194], 0           ; 0x016c
    mov word [bss_9196], 0           ; 0x0172
    mov word [bss_9198], 0           ; 0x0178
    ret                              ; 0x017e
loc_017f:
    mov ax, 0                        ; 0x017f
    call ds_dispatch_f40b            ; 0x0182
    call loc_0140                    ; 0x0185
    cmp word [bp + 0x4], byte 0      ; 0x0188
    je short @..local.l3             ; 0x018c
    mov ax, 1                        ; 0x018e
    push ax                          ; 0x0191
    mov ax, 0xe                      ; 0x0192
    push ax                          ; 0x0195
    push word [bp + 0x4]             ; 0x0196
    call ds_dispatch_d6dc            ; 0x0199
    add sp, byte 6                   ; 0x019c
    mov ax, word [bp + 0x4]          ; 0x019f
    mov word [bss_9194], ax          ; 0x01a2
@..local.l3:
    cmp word [bp + 0x6], byte 0      ; 0x01a5
    je short @..local.l4             ; 0x01a9
    mov ax, 1                        ; 0x01ab
    push ax                          ; 0x01ae
    mov ax, 0xf                      ; 0x01af
    push ax                          ; 0x01b2
    push word [bp + 0x6]             ; 0x01b3
    call ds_dispatch_d6dc            ; 0x01b6
    add sp, byte 6                   ; 0x01b9
    mov ax, word [bp + 0x6]          ; 0x01bc
    mov word [bss_9196], ax          ; 0x01bf
@..local.l4:
    mov word [bss_9198], 0           ; 0x01c2
    ret                              ; 0x01c8
