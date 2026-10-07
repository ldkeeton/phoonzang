math_loc_1ca0:
    mov ax, 0xfe56                   ; 0x1ca0
    call ds_dispatch_f40b            ; 0x1ca3
    mov ax, word [bp + 0x14]         ; 0x1ca6
    dec ax                           ; 0x1ca9
    cwd                              ; 0x1caa
    idiv word [bp + 0x12]            ; 0x1cab
    inc ax                           ; 0x1cae
    imul word [bp + 0xe]             ; 0x1caf
    add ax, word [bp + 0x8]          ; 0x1cb2
    push ax                          ; 0x1cb5
    mov ax, 6                        ; 0x1cb6
    imul word [bp + 0xc]             ; 0x1cb9
    mov dx, ax                       ; 0x1cbc
    mov cx, word [bp + 0xe]          ; 0x1cbe
    sub cx, ax                       ; 0x1cc1
    pop ax                           ; 0x1cc3
    sub ax, cx                       ; 0x1cc4
    mov word [bp - 0x0006], ax       ; 0x1cc6
    mov ax, word [bp + 0x10]         ; 0x1cc9
    imul word [bp + 0x12]            ; 0x1ccc
    add ax, word [bp + 0xa]          ; 0x1ccf
    mov cx, word [bp + 0x10]         ; 0x1cd2
    add cx, byte 0xf7                ; 0x1cd5
    sub ax, cx                       ; 0x1cd8
    mov word [bp - 0x0008], ax       ; 0x1cda
    cmp word [bp + 0x6], byte 0      ; 0x1cdd
    jne short @..math_loc_1ca0.l1    ; 0x1ce1
    jmp near @..math_loc_1ca0.l2     ; 0x1ce3
@..math_loc_1ca0.l1:
    mov ax, 0x909b                   ; 0x1ce6
    push ax                          ; 0x1ce9
    mov ax, word [bp - 0x0008]       ; 0x1cea
    add ax, strict word 6            ; 0x1ced
    push ax                          ; 0x1cf0
    mov ax, word [bp - 0x0006]       ; 0x1cf1
    add ax, strict word 6            ; 0x1cf4
    push ax                          ; 0x1cf7
    mov ax, word [bp + 0xa]          ; 0x1cf8
    add ax, strict word 0xffeb       ; 0x1cfb
    push ax                          ; 0x1cfe
    mov ax, word [bp + 0x8]          ; 0x1cff
    add ax, strict word 0xfffa       ; 0x1d02
    push ax                          ; 0x1d05
    call ds_dispatch_c283            ; 0x1d06
    add sp, byte 0x0a                ; 0x1d09
    mov word [bp - 0x01a8], ax       ; 0x1d0c
    mov ax, word [bp - 0x0008]       ; 0x1d10
    add ax, strict word 5            ; 0x1d13
    push ax                          ; 0x1d16
    mov ax, word [bp - 0x0006]       ; 0x1d17
    add ax, strict word 5            ; 0x1d1a
    push ax                          ; 0x1d1d
    mov ax, word [bp + 0xa]          ; 0x1d1e
    add ax, strict word 0xffec       ; 0x1d21
    push ax                          ; 0x1d24
    mov ax, word [bp + 0x8]          ; 0x1d25
    add ax, strict word 0xfffb       ; 0x1d28
    push ax                          ; 0x1d2b
    call ds_dispatch_bc9a            ; 0x1d2c
    add sp, byte 8                   ; 0x1d2f
    lea ax, word [bp - 0x01a6]       ; 0x1d32
    push ax                          ; 0x1d36
    push word [bp + 0x6]             ; 0x1d37
    call ds_dispatch_b53b            ; 0x1d3a
    add sp, byte 4                   ; 0x1d3d
    mov ax, 0xc2                     ; 0x1d40
    push ax                          ; 0x1d43
    mov ax, 1                        ; 0x1d44
    push ax                          ; 0x1d47
    call ds_dispatch_e823            ; 0x1d48
    add sp, byte 4                   ; 0x1d4b
    mov ax, word [bp + 0xa]          ; 0x1d4e
    add ax, strict word 0xfff3       ; 0x1d51
    push ax                          ; 0x1d54
    lea ax, word [bp - 0x01a6]       ; 0x1d55
    push ax                          ; 0x1d59
    call ds_dispatch_fa90            ; 0x1d5a
    pop cx                           ; 0x1d5d
    mov cx, 6                        ; 0x1d5e
    imul cx                          ; 0x1d61
    mov cx, data_0002                ; 0x1d63
    cwd                              ; 0x1d66
    idiv cx                          ; 0x1d67
    mov cx, ax                       ; 0x1d69
    mov ax, 0xa0                     ; 0x1d6b
    sub ax, cx                       ; 0x1d6e
    push ax                          ; 0x1d70
    call ds_dispatch_e809            ; 0x1d71
    add sp, byte 4                   ; 0x1d74
    mov ax, 0                        ; 0x1d77
    push ax                          ; 0x1d7a
    lea ax, word [bp - 0x01a6]       ; 0x1d7b
    push ax                          ; 0x1d7f
    call ds_dispatch_e84e            ; 0x1d80
    add sp, byte 4                   ; 0x1d83
    jmp short @..math_loc_1ca0.l3    ; 0x1d86
@..math_loc_1ca0.l2:
    mov ax, 0x90a1                   ; 0x1d88
    push ax                          ; 0x1d8b
    mov ax, word [bp - 0x0008]       ; 0x1d8c
    inc ax                           ; 0x1d8f
    push ax                          ; 0x1d90
    mov ax, word [bp - 0x0006]       ; 0x1d91
    inc ax                           ; 0x1d94
    push ax                          ; 0x1d95
    mov ax, word [bp + 0xa]          ; 0x1d96
    dec ax                           ; 0x1d99
    push ax                          ; 0x1d9a
    mov ax, word [bp + 0x8]          ; 0x1d9b
    dec ax                           ; 0x1d9e
    push ax                          ; 0x1d9f
    call ds_dispatch_c283            ; 0x1da0
    add sp, byte 0x0a                ; 0x1da3
    mov word [bp - 0x01a8], ax       ; 0x1da6
@..math_loc_1ca0.l3:
    mov word [bp - 0x0002], 0        ; 0x1daa
    mov word [bp - 0x0004], 0        ; 0x1daf
@..math_loc_1ca0.l4:
    mov ax, word [bp - 0x0004]       ; 0x1db4
    shl ax, 1                        ; 0x1db7
    mov si, ax                       ; 0x1db9
    mov bx, word [bp + 0x1c]         ; 0x1dbb
    cmp word [bx + si], byte 0xff    ; 0x1dbe
    jne short @..math_loc_1ca0.l5    ; 0x1dc1
    jmp near @..math_loc_1ca0.l9     ; 0x1dc3
@..math_loc_1ca0.l5:
    cmp word [bx + si], byte 1       ; 0x1dc6
    je short @..math_loc_1ca0.l6     ; 0x1dc9
    jmp near @..math_loc_1ca0.l8     ; 0x1dcb
@..math_loc_1ca0.l6:
    mov ax, 0x14                     ; 0x1dce
    imul word [bp - 0x0002]          ; 0x1dd1
    lea cx, word [bp - 0x0156]       ; 0x1dd4
    add ax, cx                       ; 0x1dd8
    push ax                          ; 0x1dda
    mov ax, word [bp + 0x4]          ; 0x1ddb
    add ax, word [bp - 0x0004]       ; 0x1dde
    push ax                          ; 0x1de1
    call ds_dispatch_b53b            ; 0x1de2
    add sp, byte 4                   ; 0x1de5
    mov ax, word [bp - 0x0002]       ; 0x1de8
    cwd                              ; 0x1deb
    idiv word [bp + 0x12]            ; 0x1dec
    imul word [bp + 0xe]             ; 0x1def
    mov word [bp - 0x000a], ax       ; 0x1df2
    mov ax, word [bp - 0x0002]       ; 0x1df5
    cwd                              ; 0x1df8
    idiv word [bp + 0x12]            ; 0x1df9
    mov ax, dx                       ; 0x1dfc
    imul word [bp + 0x10]            ; 0x1dfe
    mov word [bp - 0x000c], ax       ; 0x1e01
    mov ax, 0                        ; 0x1e04
    push ax                          ; 0x1e07
    mov ax, word [bp + 0xa]          ; 0x1e08
    add ax, word [bp - 0x000c]       ; 0x1e0b
    add ax, strict word 8            ; 0x1e0e
    push ax                          ; 0x1e11
    mov ax, 6                        ; 0x1e12
    imul word [bp + 0xc]             ; 0x1e15
    add ax, word [bp + 0x8]          ; 0x1e18
    add ax, word [bp - 0x000a]       ; 0x1e1b
    push ax                          ; 0x1e1e
    mov ax, word [bp + 0xa]          ; 0x1e1f
    add ax, word [bp - 0x000c]       ; 0x1e22
    push ax                          ; 0x1e25
    mov ax, word [bp + 0x8]          ; 0x1e26
    add ax, word [bp - 0x000a]       ; 0x1e29
    push ax                          ; 0x1e2c
    call ds_dispatch_bce3            ; 0x1e2d
    add sp, byte 0x0a                ; 0x1e30
    mov ax, 0xc0                     ; 0x1e33
    push ax                          ; 0x1e36
    mov ax, word [bp + 0x16]         ; 0x1e37
    mov cx, word [bp - 0x0004]       ; 0x1e3a
    cmp cx, word [bp + 0x18]         ; 0x1e3d
    jne short @..math_loc_1ca0.l7    ; 0x1e40
    mov ax, 0x1a                     ; 0x1e42
@..math_loc_1ca0.l7:
    push ax                          ; 0x1e45
    call ds_dispatch_e823            ; 0x1e46
    add sp, byte 4                   ; 0x1e49
    mov ax, word [bp + 0xa]          ; 0x1e4c
    add ax, word [bp - 0x000c]       ; 0x1e4f
    inc ax                           ; 0x1e52
    inc ax                           ; 0x1e53
    push ax                          ; 0x1e54
    mov ax, 0x14                     ; 0x1e55
    imul word [bp - 0x0002]          ; 0x1e58
    lea cx, word [bp - 0x0156]       ; 0x1e5b
    add ax, cx                       ; 0x1e5f
    push ax                          ; 0x1e61
    call ds_dispatch_fa90            ; 0x1e62
    pop cx                           ; 0x1e65
    mov cx, ax                       ; 0x1e66
    mov ax, word [bp + 0xc]          ; 0x1e68
    sub ax, cx                       ; 0x1e6b
    mov cx, 6                        ; 0x1e6d
    imul cx                          ; 0x1e70
    mov cx, data_0002                ; 0x1e72
    cwd                              ; 0x1e75
    idiv cx                          ; 0x1e76
    add ax, word [bp + 0x8]          ; 0x1e78
    add ax, word [bp - 0x000a]       ; 0x1e7b
    inc ax                           ; 0x1e7e
    push ax                          ; 0x1e7f
    call ds_dispatch_e809            ; 0x1e80
    add sp, byte 4                   ; 0x1e83
    mov ax, 0                        ; 0x1e86
    push ax                          ; 0x1e89
    mov ax, 0x14                     ; 0x1e8a
    imul word [bp - 0x0002]          ; 0x1e8d
    lea cx, word [bp - 0x0156]       ; 0x1e90
    add ax, cx                       ; 0x1e94
    push ax                          ; 0x1e96
    call ds_dispatch_e84e            ; 0x1e97
    add sp, byte 4                   ; 0x1e9a
    mov ax, 0                        ; 0x1e9d
