api_idx_0090:
    mov ax, 0xff70                   ; 0x6cc9
    call ds_aztec_csav               ; 0x6ccc
@..api_idx_0090.l1:
    mov bx, word [bp + 0x4]          ; 0x6ccf
    mov al, byte [bx]                ; 0x6cd2
    sub ah, ah                       ; 0x6cd4
    push ax                          ; 0x6cd6
    mov ax, 0x917e                   ; 0x6cd7
    push ax                          ; 0x6cda
    call ds_strlen                   ; 0x6cdb
    add sp, byte 4                   ; 0x6cde
    mov word [bp - 0x0004], ax       ; 0x6ce1
    cmp ax, strict word 0            ; 0x6ce4
    jge short @..api_idx_0090.l2     ; 0x6ce7
    jmp near @..api_idx_0090.l8      ; 0x6ce9
@..api_idx_0090.l2:
    jmp near @..api_idx_0090.l6      ; 0x6cec
jumptable_6e12_case_0:
    inc word [bp + 0x4]              ; 0x6cef
    mov ax, 0x9b50                   ; 0x6cf2
    push ax                          ; 0x6cf5
    call api_idx_0004_8              ; 0x6cf6
    pop cx                           ; 0x6cf9
    jmp near @..api_idx_0090.l7      ; 0x6cfa
jumptable_6e12_case_1:
    inc word [bp + 0x4]              ; 0x6cfd
    mov ax, 0x9b50                   ; 0x6d00
    push ax                          ; 0x6d03
    call api_idx_0004_8              ; 0x6d04
    pop cx                           ; 0x6d07
    cmp word [bss_9b48], byte 0      ; 0x6d08
    jne short @..api_idx_0090.l3     ; 0x6d0d
    mov ax, 0xc6                     ; 0x6d0f
    push ax                          ; 0x6d12
    mov ax, 0x109                    ; 0x6d13
    push ax                          ; 0x6d16
    mov ax, 0x92                     ; 0x6d17
    push ax                          ; 0x6d1a
    mov ax, 0x37                     ; 0x6d1b
    push ax                          ; 0x6d1e
    call ds_app_io_0d7a              ; 0x6d1f
    add sp, byte 8                   ; 0x6d22
    push word [bss_905a]             ; 0x6d25
    call api_idx_0006_2              ; 0x6d29
    pop cx                           ; 0x6d2c
    cmp word [bss_59fa], byte 0      ; 0x6d2d
    je short @..api_idx_0090.l3      ; 0x6d32
    cmp word [bss_9b4a], byte 0      ; 0x6d34
    jne short @..api_idx_0090.l3     ; 0x6d39
    mov word [bss_9b48], 1           ; 0x6d3b
@..api_idx_0090.l3:
    jmp near @..api_idx_0090.l7      ; 0x6d41
jumptable_6e12_case_2:
    inc word [bp + 0x4]              ; 0x6d44
    mov ax, 0x9b50                   ; 0x6d47
    push ax                          ; 0x6d4a
    call api_idx_0004_8              ; 0x6d4b
    pop cx                           ; 0x6d4e
    cmp word [bss_9b48], byte 0      ; 0x6d4f
    jne short @..api_idx_0090.l4     ; 0x6d54
    mov ax, 0xc6                     ; 0x6d56
    push ax                          ; 0x6d59
    mov ax, 0x109                    ; 0x6d5a
    push ax                          ; 0x6d5d
    mov ax, 0x92                     ; 0x6d5e
    push ax                          ; 0x6d61
    mov ax, 0x37                     ; 0x6d62
    push ax                          ; 0x6d65
    call ds_app_io_0d7a              ; 0x6d66
    add sp, byte 8                   ; 0x6d69
@..api_idx_0090.l4:
    jmp near @..api_idx_0090.l7      ; 0x6d6c
jumptable_6e12_case_3:
    inc word [bp + 0x4]              ; 0x6d6f
    call api_idx_000a_2              ; 0x6d72
    mov word [bss_9b4c], 0           ; 0x6d75
    jmp near @..api_idx_0090.l7      ; 0x6d7b
jumptable_6e12_case_4:
    inc word [bp + 0x4]              ; 0x6d7e
    mov ax, 0x9b50                   ; 0x6d81
    push ax                          ; 0x6d84
    call api_idx_0004_8              ; 0x6d85
    pop cx                           ; 0x6d88
    mov ax, 0                        ; 0x6d89
    push ax                          ; 0x6d8c
    call loc_6b5a                    ; 0x6d8d
    pop cx                           ; 0x6d90
    jmp near @..api_idx_0090.l7      ; 0x6d91
jumptable_6e12_case_5:
    inc word [bp + 0x4]              ; 0x6d94
    call loc_0140                    ; 0x6d97
    mov ax, 0x10                     ; 0x6d9a
    push ax                          ; 0x6d9d
    mov ax, 0xa                      ; 0x6d9e
    push ax                          ; 0x6da1
    call ds_app_file_2863            ; 0x6da2
    add sp, byte 4                   ; 0x6da5
    mov byte [bp - 0x0090], 1        ; 0x6da8
    mov byte [bp - 0x008f], 0        ; 0x6dad
    mov ax, 0                        ; 0x6db2
    push ax                          ; 0x6db5
    push ax                          ; 0x6db6
    lea ax, word [bp - 0x0090]       ; 0x6db7
    push ax                          ; 0x6dbb
    mov ax, 0                        ; 0x6dbc
    push ax                          ; 0x6dbf
    mov ax, 0xc7                     ; 0x6dc0
    push ax                          ; 0x6dc3
    mov ax, 0                        ; 0x6dc4
    push ax                          ; 0x6dc7
    mov ax, 0x13f                    ; 0x6dc8
    push ax                          ; 0x6dcb
    mov ax, 0                        ; 0x6dcc
    push ax                          ; 0x6dcf
    mov ax, 0x92                     ; 0x6dd0
    push ax                          ; 0x6dd3
    mov ax, 0x59                     ; 0x6dd4
    push ax                          ; 0x6dd7
    mov ax, 0x10                     ; 0x6dd8
    push ax                          ; 0x6ddb
    call ds_loc_4218                 ; 0x6ddc
    add sp, byte 0x16                ; 0x6ddf
    mov ax, 0x10                     ; 0x6de2
    push ax                          ; 0x6de5
    call ds_app_1371                 ; 0x6de6
    pop cx                           ; 0x6de9
    call loc_0344                    ; 0x6dea
    jmp short @..api_idx_0090.l7     ; 0x6ded
jumptable_6e12_case_6:
    inc word [bp + 0x4]              ; 0x6def
    mov bx, word [bp + 0x4]          ; 0x6df2
    mov al, byte [bx]                ; 0x6df5
    sub ah, ah                       ; 0x6df7
    mov word [bp - 0x0006], ax       ; 0x6df9
    cmp ax, strict word 0x63         ; 0x6dfc
    jne short @..api_idx_0090.l5     ; 0x6dff
    mov word [bp - 0x0006], 0x20     ; 0x6e01
@..api_idx_0090.l5:
    push word [bp - 0x0006]          ; 0x6e06
    call loc_6ac7                    ; 0x6e09
    pop cx                           ; 0x6e0c
    inc word [bp + 0x4]              ; 0x6e0d
    jmp short @..api_idx_0090.l7     ; 0x6e10
jumptable_6e12:
    dw jumptable_6e12_case_0 - IMAGE_BASE + 0x5055 ; 0x6e12
    dw jumptable_6e12_case_1 - IMAGE_BASE + 0x5055 ; 0x6e14
    dw jumptable_6e12_case_2 - IMAGE_BASE + 0x5055 ; 0x6e16
    dw jumptable_6e12_case_3 - IMAGE_BASE + 0x5055 ; 0x6e18
    dw jumptable_6e12_case_4 - IMAGE_BASE + 0x5055 ; 0x6e1a
    dw jumptable_6e12_case_5 - IMAGE_BASE + 0x5055 ; 0x6e1c
    dw jumptable_6e12_case_6 - IMAGE_BASE + 0x5055 ; 0x6e1e
@..api_idx_0090.l6:
    cmp ax, strict word 7            ; 0x6e20
    jae short @..api_idx_0090.l7     ; 0x6e23
    xchg bx, ax                      ; 0x6e25
    shl bx, 1                        ; 0x6e26
    jmp [cs:bx - 0x41a7]             ; 0x6e28
@..api_idx_0090.l7:
    jmp near @..api_idx_0090.l1      ; 0x6e2d
@..api_idx_0090.l8:
    cmp byte [bss_9b50], 0           ; 0x6e30
    je short @..api_idx_0090.l9      ; 0x6e35
    mov ax, 0x9b50                   ; 0x6e37
    push ax                          ; 0x6e3a
    lea ax, word [bp - 0x0086]       ; 0x6e3b
    push ax                          ; 0x6e3f
    call ds_aztec_strcpy             ; 0x6e40
    add sp, byte 4                   ; 0x6e43
    mov ax, 0x9186                   ; 0x6e46
    push ax                          ; 0x6e49
    lea ax, word [bp - 0x0086]       ; 0x6e4a
    push ax                          ; 0x6e4e
    call ds_string_loc_4574          ; 0x6e4f
    add sp, byte 4                   ; 0x6e52
    push word [bp + 0x4]             ; 0x6e55
    lea ax, word [bp - 0x0086]       ; 0x6e58
    push ax                          ; 0x6e5c
    call ds_string_loc_4574          ; 0x6e5d
    add sp, byte 4                   ; 0x6e60
    jmp short @..api_idx_0090.l10    ; 0x6e63
@..api_idx_0090.l9:
    push word [bp + 0x4]             ; 0x6e65
    lea ax, word [bp - 0x0086]       ; 0x6e68
    push ax                          ; 0x6e6c
    call ds_aztec_strcpy             ; 0x6e6d
    add sp, byte 4                   ; 0x6e70
@..api_idx_0090.l10:
    mov ax, 2                        ; 0x6e73
    push ax                          ; 0x6e76
    lea ax, word [bp - 0x0086]       ; 0x6e77
    push ax                          ; 0x6e7b
    call ds_loc_3aca                 ; 0x6e7c
    add sp, byte 4                   ; 0x6e7f
    mov word [bp - 0x0002], ax       ; 0x6e82
    cmp ax, 0xb8                     ; 0x6e85
    jle short @..api_idx_0090.l11    ; 0x6e88
    mov ax, 0x9b50                   ; 0x6e8a
    push ax                          ; 0x6e8d
    call api_idx_0004_8              ; 0x6e8e
    pop cx                           ; 0x6e91
    push word [bp + 0x4]             ; 0x6e92
    mov ax, 0x9b50                   ; 0x6e95
    push ax                          ; 0x6e98
    call ds_aztec_strcpy             ; 0x6e99
    add sp, byte 4                   ; 0x6e9c
    jmp short @..api_idx_0090.l12    ; 0x6e9f
@..api_idx_0090.l11:
    lea ax, word [bp - 0x0086]       ; 0x6ea1
    push ax                          ; 0x6ea5
    mov ax, 0x9b50                   ; 0x6ea6
    push ax                          ; 0x6ea9
    call ds_aztec_strcpy             ; 0x6eaa
    add sp, byte 4                   ; 0x6ead
@..api_idx_0090.l12:
    ret                              ; 0x6eb0
