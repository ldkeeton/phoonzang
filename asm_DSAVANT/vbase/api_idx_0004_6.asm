api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x6d1f
    call ds_aztec_csav               ; 0x6d22
    cmp word [bss_a4a6], byte 3      ; 0x6d25
    jle short @..api_idx_0004_6.l1   ; 0x6d2a
    call api_idx_0004_5              ; 0x6d2c
@..api_idx_0004_6.l1:
    mov bx, word [bp + 0x4]          ; 0x6d2f
    cmp byte [bx], 0                 ; 0x6d32
    jne short @..api_idx_0004_6.l2   ; 0x6d35
    inc word [bss_a4a6]              ; 0x6d37
    ret                              ; 0x6d3b
@..api_idx_0004_6.l2:
    mov ax, 2                        ; 0x6d3c
    push ax                          ; 0x6d3f
    push bx                          ; 0x6d40
    call ds_loc_3aca                 ; 0x6d41
    add sp, byte 4                   ; 0x6d44
    inc ax                           ; 0x6d47
    mov cx, 2                        ; 0x6d48
    cwd                              ; 0x6d4b
    idiv cx                          ; 0x6d4c
    mov cx, ax                       ; 0x6d4e
    mov ax, 0xa0                     ; 0x6d50
    sub ax, cx                       ; 0x6d53
    mov word [bp - 0x0002], ax       ; 0x6d55
    push word [bp + 0x4]             ; 0x6d58
    call ds_aztec_strlen             ; 0x6d5b
    pop cx                           ; 0x6d5e
    dec ax                           ; 0x6d5f
    mov word [bp - 0x0004], ax       ; 0x6d60
    mov bx, word [bp + 0x4]          ; 0x6d63
    mov si, ax                       ; 0x6d66
    mov al, byte [bx + si]           ; 0x6d68
    sub ah, ah                       ; 0x6d6a
    jmp short @..api_idx_0004_6.l5   ; 0x6d6c
@..api_idx_0004_6.l3:
    mov bx, word [bp + 0x4]          ; 0x6d6e
    mov si, word [bp - 0x0004]       ; 0x6d71
    mov byte [bx + si], 0            ; 0x6d74
    mov word [bp - 0x0002], 0xc      ; 0x6d77
    jmp short @..api_idx_0004_6.l6   ; 0x6d7c
@..api_idx_0004_6.l4:
    mov bx, word [bp + 0x4]          ; 0x6d7e
    mov si, word [bp - 0x0004]       ; 0x6d81
    mov byte [bx + si], 0            ; 0x6d84
    mov ax, word [bss_a4a8]          ; 0x6d87
    mov word [bp - 0x0002], ax       ; 0x6d8a
    jmp short @..api_idx_0004_6.l6   ; 0x6d8d
@..api_idx_0004_6.l5:
    cmp ax, strict word 0x24         ; 0x6d8f
    je short @..api_idx_0004_6.l3    ; 0x6d92
    cmp ax, strict word 0x5e         ; 0x6d94
    je short @..api_idx_0004_6.l4    ; 0x6d97
@..api_idx_0004_6.l6:
    mov ax, 0xc                      ; 0x6d99
    imul word [bss_a4a6]             ; 0x6d9c
    add ax, 0x92                     ; 0x6da0
    push ax                          ; 0x6da3
    push word [bp - 0x0002]          ; 0x6da4
    call ds_loc_3a50                 ; 0x6da7
    add sp, byte 4                   ; 0x6daa
    mov ax, 0                        ; 0x6dad
    push ax                          ; 0x6db0
    mov ax, 0x55                     ; 0x6db1
    push ax                          ; 0x6db4
    call ds_loc_3a6a                 ; 0x6db5
    add sp, byte 4                   ; 0x6db8
    mov ax, 2                        ; 0x6dbb
    push ax                          ; 0x6dbe
    push word [bp + 0x4]             ; 0x6dbf
    call ds_string_loc_3a95          ; 0x6dc2
    add sp, byte 4                   ; 0x6dc5
    mov bx, word [bp + 0x4]          ; 0x6dc8
    mov byte [bx], 0                 ; 0x6dcb
    mov ax, word [bp - 0x0002]       ; 0x6dce
    mov word [bss_a4a8], ax          ; 0x6dd1
    inc word [bss_a4a6]              ; 0x6dd4
    ret                              ; 0x6dd8
loc_6dd9:
    mov ax, 0xfefa                   ; 0x6dd9
    call ds_aztec_csav               ; 0x6ddc
@..local.l116:
    mov bx, word [bp + 0x4]          ; 0x6ddf
    mov al, byte [bx]                ; 0x6de2
    sub ah, ah                       ; 0x6de4
    push ax                          ; 0x6de6
    mov ax, 0x9114                   ; 0x6de7
    push ax                          ; 0x6dea
    call ds_strlen                   ; 0x6deb
    add sp, byte 4                   ; 0x6dee
    mov word [bp - 0x0004], ax       ; 0x6df1
    cmp ax, strict word 0            ; 0x6df4
    jge short @..local.l117          ; 0x6df7
    jmp near @..local.l122           ; 0x6df9
@..local.l117:
    jmp near @..local.l120           ; 0x6dfc
jumptable_6e77_case_0:
    inc word [bp + 0x4]              ; 0x6dff
    mov ax, 0xa4aa                   ; 0x6e02
    push ax                          ; 0x6e05
    call api_idx_0004_6              ; 0x6e06
    pop cx                           ; 0x6e09
    jmp near @..local.l121           ; 0x6e0a
jumptable_6e77_case_1:
    inc word [bp + 0x4]              ; 0x6e0d
    mov bx, word [bp + 0x4]          ; 0x6e10
    mov al, byte [bx]                ; 0x6e13
    sub ah, ah                       ; 0x6e15
    mov word [bp - 0x0006], ax       ; 0x6e17
    mov cx, 0x12                     ; 0x6e1a
    imul cx                          ; 0x6e1d
    push ax                          ; 0x6e1f
    call api_idx_0004_4              ; 0x6e20
    pop cx                           ; 0x6e23
    inc word [bp + 0x4]              ; 0x6e24
    jmp short @..local.l121          ; 0x6e27
jumptable_6e77_case_2:
    inc word [bp + 0x4]              ; 0x6e29
    mov ax, 0xa4aa                   ; 0x6e2c
    push ax                          ; 0x6e2f
    call api_idx_0004_6              ; 0x6e30
    pop cx                           ; 0x6e33
    call loc_6c3f                    ; 0x6e34
    jmp short @..local.l121          ; 0x6e37
jumptable_6e77_case_3:
    inc word [bp + 0x4]              ; 0x6e39
    call loc_6c1e                    ; 0x6e3c
    mov word [bss_a4a6], 0           ; 0x6e3f
    jmp short @..local.l121          ; 0x6e45
jumptable_6e77_case_4:
    inc word [bp + 0x4]              ; 0x6e47
    mov ax, 0xa4aa                   ; 0x6e4a
    push ax                          ; 0x6e4d
    call api_idx_0004_6              ; 0x6e4e
    pop cx                           ; 0x6e51
    call api_idx_0004_5              ; 0x6e52
    jmp short @..local.l121          ; 0x6e55
jumptable_6e77_case_5:
    inc word [bp + 0x4]              ; 0x6e57
    inc word [bss_a5aa]              ; 0x6e5a
    jmp short @..local.l121          ; 0x6e5e
jumptable_6e77_case_6:
    inc word [bp + 0x4]              ; 0x6e60
    mov word [bss_a5ac], 1           ; 0x6e63
@..local.l118:
    cmp word [bss_a5ac], byte 0      ; 0x6e69
    je short @..local.l119           ; 0x6e6e
    call loc_6c5c                    ; 0x6e70
    jmp short @..local.l118          ; 0x6e73
@..local.l119:
    jmp short @..local.l121          ; 0x6e75
jumptable_6e77:
    dw jumptable_6e77_case_0 - IMAGE_BASE + 0x5055 ; 0x6e77
    dw jumptable_6e77_case_1 - IMAGE_BASE + 0x5055 ; 0x6e79
    dw jumptable_6e77_case_2 - IMAGE_BASE + 0x5055 ; 0x6e7b
    dw jumptable_6e77_case_3 - IMAGE_BASE + 0x5055 ; 0x6e7d
    dw jumptable_6e77_case_4 - IMAGE_BASE + 0x5055 ; 0x6e7f
    dw jumptable_6e77_case_5 - IMAGE_BASE + 0x5055 ; 0x6e81
    dw jumptable_6e77_case_6 - IMAGE_BASE + 0x5055 ; 0x6e83
@..local.l120:
    cmp ax, strict word 7            ; 0x6e85
    jae short @..local.l121          ; 0x6e88
    xchg bx, ax                      ; 0x6e8a
    shl bx, 1                        ; 0x6e8b
    jmp [cs:bx - 0x4142]             ; 0x6e8d
@..local.l121:
    jmp near @..local.l116           ; 0x6e92
@..local.l122:
    cmp byte [bss_a4aa], 0           ; 0x6e95
    je short @..local.l123           ; 0x6e9a
    mov ax, 0xa4aa                   ; 0x6e9c
    push ax                          ; 0x6e9f
    lea ax, word [bp - 0x0105]       ; 0x6ea0
    push ax                          ; 0x6ea4
    call ds_aztec_strcpy             ; 0x6ea5
    add sp, byte 4                   ; 0x6ea8
    mov ax, 0x911c                   ; 0x6eab
    push ax                          ; 0x6eae
    lea ax, word [bp - 0x0105]       ; 0x6eaf
    push ax                          ; 0x6eb3
    call ds_string_loc_4574          ; 0x6eb4
    add sp, byte 4                   ; 0x6eb7
    push word [bp + 0x4]             ; 0x6eba
    lea ax, word [bp - 0x0105]       ; 0x6ebd
    push ax                          ; 0x6ec1
    call ds_string_loc_4574          ; 0x6ec2
    add sp, byte 4                   ; 0x6ec5
    jmp short @..local.l124          ; 0x6ec8
@..local.l123:
    push word [bp + 0x4]             ; 0x6eca
    lea ax, word [bp - 0x0105]       ; 0x6ecd
    push ax                          ; 0x6ed1
    call ds_aztec_strcpy             ; 0x6ed2
    add sp, byte 4                   ; 0x6ed5
@..local.l124:
    mov ax, 2                        ; 0x6ed8
    push ax                          ; 0x6edb
    lea ax, word [bp - 0x0105]       ; 0x6edc
    push ax                          ; 0x6ee0
    call ds_loc_3aca                 ; 0x6ee1
    add sp, byte 4                   ; 0x6ee4
    mov word [bp - 0x0002], ax       ; 0x6ee7
    cmp ax, 0x127                    ; 0x6eea
    jle short @..local.l125          ; 0x6eed
    mov ax, 0xa4aa                   ; 0x6eef
    push ax                          ; 0x6ef2
    call api_idx_0004_6              ; 0x6ef3
    pop cx                           ; 0x6ef6
    push word [bp + 0x4]             ; 0x6ef7
    mov ax, 0xa4aa                   ; 0x6efa
    push ax                          ; 0x6efd
    call ds_aztec_strcpy             ; 0x6efe
    add sp, byte 4                   ; 0x6f01
    jmp short @..local.l126          ; 0x6f04
@..local.l125:
    lea ax, word [bp - 0x0105]       ; 0x6f06
    push ax                          ; 0x6f0a
    mov ax, 0xa4aa                   ; 0x6f0b
    push ax                          ; 0x6f0e
    call ds_aztec_strcpy             ; 0x6f0f
    add sp, byte 4                   ; 0x6f12
@..local.l126:
    ret                              ; 0x6f15
