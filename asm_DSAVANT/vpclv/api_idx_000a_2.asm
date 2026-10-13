; auto-generated
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x0eac
    call aztec_csav                  ; 0x0eaf
    mov byte [bp - 0x000a], 1        ; 0x0eb2
    mov byte [bp - 0x0009], 0        ; 0x0eb6
    mov ax, 0                        ; 0x0eba
    push ax                          ; 0x0ebd
    push ax                          ; 0x0ebe
    lea ax, word [bp - 0x000a]       ; 0x0ebf
    push ax                          ; 0x0ec2
    mov ax, 0                        ; 0x0ec3
    push ax                          ; 0x0ec6
    mov ax, 0xc7                     ; 0x0ec7
    push ax                          ; 0x0eca
    mov ax, 0                        ; 0x0ecb
    push ax                          ; 0x0ece
    mov ax, 0x13f                    ; 0x0ecf
    push ax                          ; 0x0ed2
    mov ax, 0                        ; 0x0ed3
    push ax                          ; 0x0ed6
    mov ax, 0x73                     ; 0x0ed7
    push ax                          ; 0x0eda
    mov ax, 0x32                     ; 0x0edb
    push ax                          ; 0x0ede
    mov ax, 1                        ; 0x0edf
    push ax                          ; 0x0ee2
    call ds_loc_4218                 ; 0x0ee3
    add sp, byte 0x16                ; 0x0ee6
    ret                              ; 0x0ee9
loc_0eea:
    mov ax, 0                        ; 0x0eea
    call aztec_csav                  ; 0x0eed
    push word [bp + 0x6]             ; 0x0ef0
    mov ax, 0xa                      ; 0x0ef3
    imul word [bp + 0x8]             ; 0x0ef6
    add ax, word [bp + 0x4]          ; 0x0ef9
    dec ax                           ; 0x0efc
    push ax                          ; 0x0efd
    call ds_loc_3a50                 ; 0x0efe
    add sp, byte 4                   ; 0x0f01
    mov ax, 7                        ; 0x0f04
    push ax                          ; 0x0f07
    mov ax, 0                        ; 0x0f08
    cmp word [bp + 0xa], byte 0      ; 0x0f0b
    je short @..loc_0eea.l1          ; 0x0f0f
    mov ax, 1                        ; 0x0f11
@..loc_0eea.l1:
    add ax, strict word 0x10         ; 0x0f14
    sub ah, ah                       ; 0x0f17
    push ax                          ; 0x0f19
    call ds_loc_3a77                 ; 0x0f1a
    add sp, byte 4                   ; 0x0f1d
    push word [bp + 0x6]             ; 0x0f20
    mov ax, 0xa                      ; 0x0f23
    imul word [bp + 0x8]             ; 0x0f26
    add ax, word [bp + 0x4]          ; 0x0f29
    push ax                          ; 0x0f2c
    call ds_loc_3a50                 ; 0x0f2d
    add sp, byte 4                   ; 0x0f30
    mov ax, 0                        ; 0x0f33
    push ax                          ; 0x0f36
    push ax                          ; 0x0f37
    call ds_loc_3a6a                 ; 0x0f38
    add sp, byte 4                   ; 0x0f3b
    mov ax, 2                        ; 0x0f3e
    push ax                          ; 0x0f41
    mov ax, word [bp + 0x8]          ; 0x0f42
    inc ax                           ; 0x0f45
    sub ah, ah                       ; 0x0f46
    push ax                          ; 0x0f48
    call ds_loc_3a77                 ; 0x0f49
    add sp, byte 4                   ; 0x0f4c
    cmp word [bp + 0x8], byte 0      ; 0x0f4f
    jne short @..loc_0eea.l2         ; 0x0f53
    cmp word [bp + 0xa], byte 0      ; 0x0f55
    jne short @..loc_0eea.l2         ; 0x0f59
    mov ax, 0xc2                     ; 0x0f5b
    push ax                          ; 0x0f5e
    mov ax, word [bp + 0x6]          ; 0x0f5f
    add ax, strict word 8            ; 0x0f62
    push ax                          ; 0x0f65
    mov ax, word [bp + 0x4]          ; 0x0f66
    dec ax                           ; 0x0f69
    push ax                          ; 0x0f6a
    push word [bp + 0x6]             ; 0x0f6b
    push ax                          ; 0x0f6e
    call ds_loc_3b48                 ; 0x0f6f
    add sp, byte 0x0a                ; 0x0f72
@..loc_0eea.l2:
    ret                              ; 0x0f75
loc_0f76:
    mov ax, 0                        ; 0x0f76
    call aztec_csav                  ; 0x0f79
    mov ax, word [bp + 0x6]          ; 0x0f7c
    add ax, strict word 6            ; 0x0f7f
    push ax                          ; 0x0f82
    mov ax, word [bp + 0x4]          ; 0x0f83
    add ax, strict word 0x14         ; 0x0f86
    push ax                          ; 0x0f89
    push word [bp + 0x6]             ; 0x0f8a
    push word [bp + 0x4]             ; 0x0f8d
    call ds_app_0fdf                 ; 0x0f90
    add sp, byte 8                   ; 0x0f93
    mov ax, word [bp + 0x8]          ; 0x0f96
    shl ax, 1                        ; 0x0f99
    shl ax, 1                        ; 0x0f9b
    mov bx, ax                       ; 0x0f9d
    push word [word bx + 0x8]        ; 0x0f9f
    mov ax, word [bp + 0x6]          ; 0x0fa3
    add ax, strict word 6            ; 0x0fa6
    push ax                          ; 0x0fa9
    mov ax, word [bp + 0x4]          ; 0x0faa
    add ax, strict word 0x14         ; 0x0fad
    push ax                          ; 0x0fb0
    push word [bp + 0x6]             ; 0x0fb1
    push word [bp + 0x4]             ; 0x0fb4
    call ds_loc_3b48                 ; 0x0fb7
    add sp, byte 0x0a                ; 0x0fba
    mov ax, word [bp + 0x6]          ; 0x0fbd
    inc ax                           ; 0x0fc0
    push ax                          ; 0x0fc1
    mov ax, word [bp + 0x4]          ; 0x0fc2
    inc ax                           ; 0x0fc5
    inc ax                           ; 0x0fc6
    push ax                          ; 0x0fc7
    call ds_loc_3a50                 ; 0x0fc8
    add sp, byte 4                   ; 0x0fcb
    cmp word [bp + 0xa], byte 0      ; 0x0fce
    jle short @..loc_0f76.l1         ; 0x0fd2
    mov ax, word [bp + 0xa]          ; 0x0fd4
    cmp ax, word [bp + 0xc]          ; 0x0fd7
    jg short @..loc_0f76.l1          ; 0x0fda
    mov ax, 0                        ; 0x0fdc
    push ax                          ; 0x0fdf
    mov ax, 1                        ; 0x0fe0
    push ax                          ; 0x0fe3
    call ds_loc_3a6a                 ; 0x0fe4
    add sp, byte 4                   ; 0x0fe7
    mov ax, 0                        ; 0x0fea
    push ax                          ; 0x0fed
    mov ax, 3                        ; 0x0fee
    push ax                          ; 0x0ff1
    push word [bp + 0xa]             ; 0x0ff2
    call ds_app_052e                 ; 0x0ff5
    add sp, byte 6                   ; 0x0ff8
    jmp short @..loc_0f76.l2         ; 0x0ffb
@..loc_0f76.l1:
    mov ax, 0                        ; 0x0ffd
    push ax                          ; 0x1000
    push ax                          ; 0x1001
    call ds_loc_3a6a                 ; 0x1002
    add sp, byte 4                   ; 0x1005
    mov ax, 0                        ; 0x1008
    push ax                          ; 0x100b
    mov ax, 0x909b                   ; 0x100c
    push ax                          ; 0x100f
    call ds_string_loc_3a95          ; 0x1010
    add sp, byte 4                   ; 0x1013
@..loc_0f76.l2:
    ret                              ; 0x1016
