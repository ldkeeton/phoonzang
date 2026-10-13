; auto-generated
api_idx_0008:
    mov ax, 0xfff8                   ; 0x0d3f
    call aztec_csav                  ; 0x0d42
    push word [bp + 0xe]             ; 0x0d45
    push word [bp + 0xc]             ; 0x0d48
    call ds_loc_3a6a                 ; 0x0d4b
    add sp, byte 4                   ; 0x0d4e
    push word [bp + 0x4]             ; 0x0d51
    call aztec_strlen                ; 0x0d54
    pop cx                           ; 0x0d57
    mov word [bp - 0x0004], ax       ; 0x0d58
    mov cx, 6                        ; 0x0d5b
    imul cx                          ; 0x0d5e
    add word [bp + 0x6], ax          ; 0x0d60
@..api_idx_0008.l1:
    mov word [bp - 0x0006], 0        ; 0x0d63
    mov word [bp - 0x0008], 0        ; 0x0d68
@..api_idx_0008.l2:
    mov ax, 1                        ; 0x0d6d
    push ax                          ; 0x0d70
    call dos_con_in_noecho           ; 0x0d71
    pop cx                           ; 0x0d74
    test ax, ax                      ; 0x0d75
    je short @..api_idx_0008.l3      ; 0x0d77
    jmp near @..api_idx_0008.l7      ; 0x0d79
@..api_idx_0008.l3:
    cmp word [bp - 0x0008], byte 0   ; 0x0d7c
    jne short @..api_idx_0008.l5     ; 0x0d80
    push word [bp + 0xe]             ; 0x0d82
    mov ax, word [bp + 0x8]          ; 0x0d85
    add ax, strict word 5            ; 0x0d88
    push ax                          ; 0x0d8b
    mov ax, word [bp + 0x6]          ; 0x0d8c
    add ax, strict word 5            ; 0x0d8f
    push ax                          ; 0x0d92
    push word [bp + 0x8]             ; 0x0d93
    push word [bp + 0x6]             ; 0x0d96
    call ds_loc_3b48                 ; 0x0d99
    add sp, byte 0x0a                ; 0x0d9c
    cmp word [bp - 0x0006], byte 0   ; 0x0d9f
    je short @..api_idx_0008.l4      ; 0x0da3
    push word [bp + 0x8]             ; 0x0da5
    push word [bp + 0x6]             ; 0x0da8
    call ds_loc_3a50                 ; 0x0dab
    add sp, byte 4                   ; 0x0dae
    mov ax, 0                        ; 0x0db1
    push ax                          ; 0x0db4
    mov ax, 3                        ; 0x0db5
    push ax                          ; 0x0db8
    call ds_loc_3a77                 ; 0x0db9
    add sp, byte 4                   ; 0x0dbc
@..api_idx_0008.l4:
    mov ax, word [bp + 0x8]          ; 0x0dbf
    add ax, strict word 5            ; 0x0dc2
    push ax                          ; 0x0dc5
    mov ax, word [bp + 0x6]          ; 0x0dc6
    add ax, strict word 5            ; 0x0dc9
    push ax                          ; 0x0dcc
    push word [bp + 0x8]             ; 0x0dcd
    push word [bp + 0x6]             ; 0x0dd0
    call ds_loc_3b21                 ; 0x0dd3
    add sp, byte 8                   ; 0x0dd6
    mov ax, word [bp - 0x0006]       ; 0x0dd9
    inc ax                           ; 0x0ddc
    mov cx, 2                        ; 0x0ddd
    cwd                              ; 0x0de0
    idiv cx                          ; 0x0de1
    mov word [bp - 0x0006], dx       ; 0x0de3
    mov word [bp - 0x0008], 0xa      ; 0x0de6
    jmp short @..api_idx_0008.l6     ; 0x0deb
@..api_idx_0008.l5:
    mov ax, 0xa                      ; 0x0ded
    push ax                          ; 0x0df0
    call ds_leaf_loc_36d0            ; 0x0df1
    pop cx                           ; 0x0df4
    dec word [bp - 0x0008]           ; 0x0df5
@..api_idx_0008.l6:
    jmp near @..api_idx_0008.l2      ; 0x0df8
@..api_idx_0008.l7:
    mov ax, 1                        ; 0x0dfb
    push ax                          ; 0x0dfe
    call dos_con_in_noecho_2         ; 0x0dff
    pop cx                           ; 0x0e02
    sub ah, ah                       ; 0x0e03
    mov word [bp - 0x0002], ax       ; 0x0e05
    push word [bp + 0xe]             ; 0x0e08
    mov ax, word [bp + 0x8]          ; 0x0e0b
    add ax, strict word 5            ; 0x0e0e
    push ax                          ; 0x0e11
    mov ax, word [bp + 0x6]          ; 0x0e12
    add ax, strict word 5            ; 0x0e15
    push ax                          ; 0x0e18
    push word [bp + 0x8]             ; 0x0e19
    push word [bp + 0x6]             ; 0x0e1c
    call ds_loc_3b48                 ; 0x0e1f
    add sp, byte 0x0a                ; 0x0e22
    mov ax, word [bp + 0x8]          ; 0x0e25
    add ax, strict word 5            ; 0x0e28
    push ax                          ; 0x0e2b
    mov ax, word [bp + 0x6]          ; 0x0e2c
    add ax, strict word 5            ; 0x0e2f
    push ax                          ; 0x0e32
    push word [bp + 0x8]             ; 0x0e33
    push word [bp + 0x6]             ; 0x0e36
    call ds_loc_3b21                 ; 0x0e39
    add sp, byte 8                   ; 0x0e3c
    cmp word [bp - 0x0002], byte 0x0d ; 0x0e3f
    jne short @..api_idx_0008.l8     ; 0x0e43
    mov bx, word [bp + 0x4]          ; 0x0e45
    mov si, word [bp - 0x0004]       ; 0x0e48
    mov byte [bx + si], 0            ; 0x0e4b
    call bios_kbd_check              ; 0x0e4e
    ret                              ; 0x0e51
@..api_idx_0008.l8:
    cmp word [bp - 0x0002], byte 8   ; 0x0e52
    jne short @..api_idx_0008.l11    ; 0x0e56
    cmp word [bp - 0x0004], byte 0   ; 0x0e58
    jle short @..api_idx_0008.l9     ; 0x0e5c
    dec word [bp - 0x0004]           ; 0x0e5e
    add word [bp + 0x6], byte 0xfa   ; 0x0e61
    jmp short @..api_idx_0008.l10    ; 0x0e65
@..api_idx_0008.l9:
    mov ax, 0                        ; 0x0e67
    push ax                          ; 0x0e6a
    call ds_app_0a27                 ; 0x0e6b
    pop cx                           ; 0x0e6e
@..api_idx_0008.l10:
    jmp near @..api_idx_0008.l15     ; 0x0e6f
@..api_idx_0008.l11:
    mov ax, word [bp - 0x0004]       ; 0x0e72
    cmp ax, word [bp + 0xa]          ; 0x0e75
    jl short @..api_idx_0008.l12     ; 0x0e78
    mov ax, 0                        ; 0x0e7a
    push ax                          ; 0x0e7d
    call ds_app_0a27                 ; 0x0e7e
    pop cx                           ; 0x0e81
    jmp near @..api_idx_0008.l15     ; 0x0e82
@..api_idx_0008.l12:
    cmp word [bp + 0x10], byte 0     ; 0x0e85
    jne short @..api_idx_0008.l13    ; 0x0e89
    mov ax, word [bp - 0x0002]       ; 0x0e8b
    cmp ax, strict word 0x20         ; 0x0e8e
    jl short @..api_idx_0008.l13     ; 0x0e91
    cmp ax, strict word 0x7f         ; 0x0e93
    jle short @..api_idx_0008.l14    ; 0x0e96
@..api_idx_0008.l13:
    cmp word [bp + 0x10], byte 1     ; 0x0e98
    jne short @..api_idx_0008.l15    ; 0x0e9c
    mov ax, word [bp - 0x0002]       ; 0x0e9e
    cmp ax, strict word 0x30         ; 0x0ea1
    jl short @..api_idx_0008.l15     ; 0x0ea4
    cmp ax, strict word 0x39         ; 0x0ea6
    jg short @..api_idx_0008.l15     ; 0x0ea9
@..api_idx_0008.l14:
    mov al, byte [bp - 0x0002]       ; 0x0eab
    mov bx, word [bp + 0x4]          ; 0x0eae
    mov si, word [bp - 0x0004]       ; 0x0eb1
    mov byte [bx + si], al           ; 0x0eb4
    inc word [bp - 0x0004]           ; 0x0eb6
    push word [bp + 0x8]             ; 0x0eb9
    push word [bp + 0x6]             ; 0x0ebc
    call ds_loc_3a50                 ; 0x0ebf
    add sp, byte 4                   ; 0x0ec2
    mov ax, 0                        ; 0x0ec5
    push ax                          ; 0x0ec8
    mov al, byte [bp - 0x0002]       ; 0x0ec9
    sub ah, ah                       ; 0x0ecc
    push ax                          ; 0x0ece
    call ds_loc_3a77                 ; 0x0ecf
    add sp, byte 4                   ; 0x0ed2
    mov ax, word [bp + 0x8]          ; 0x0ed5
    add ax, strict word 5            ; 0x0ed8
    push ax                          ; 0x0edb
    mov ax, word [bp + 0x6]          ; 0x0edc
    add ax, strict word 5            ; 0x0edf
    push ax                          ; 0x0ee2
    push word [bp + 0x8]             ; 0x0ee3
    push word [bp + 0x6]             ; 0x0ee6
    call ds_loc_3b21                 ; 0x0ee9
    add sp, byte 8                   ; 0x0eec
    add word [bp + 0x6], byte 6      ; 0x0eef
@..api_idx_0008.l15:
    jmp near @..api_idx_0008.l1      ; 0x0ef3
    db 0xc3
