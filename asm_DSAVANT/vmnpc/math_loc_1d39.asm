math_loc_1d39:
    mov ax, 0xfea6                   ; 0x1d39
    db 0xe8, 0xcc, 0xd6 ; call 0xf40b
    mov ax, word [bp + 0x16]         ; 0x1d3f
    dec ax                           ; 0x1d42
    cwd                              ; 0x1d43
    idiv word [bp + 0x14]            ; 0x1d44
    inc ax                           ; 0x1d47
    imul word [bp + 0x10]            ; 0x1d48
    add ax, word [bp + 0xa]          ; 0x1d4b
    push ax                          ; 0x1d4e
    mov ax, 6                        ; 0x1d4f
    imul word [bp + 0xe]             ; 0x1d52
    mov dx, ax                       ; 0x1d55
    mov cx, word [bp + 0x10]         ; 0x1d57
    sub cx, ax                       ; 0x1d5a
    pop ax                           ; 0x1d5c
    sub ax, cx                       ; 0x1d5d
    mov word [bp - 0x0006], ax       ; 0x1d5f
    mov ax, word [bp + 0x12]         ; 0x1d62
    imul word [bp + 0x14]            ; 0x1d65
    add ax, word [bp + 0xc]          ; 0x1d68
    mov cx, word [bp + 0x12]         ; 0x1d6b
    add cx, byte 0xf7                ; 0x1d6e
    sub ax, cx                       ; 0x1d71
    mov word [bp - 0x0008], ax       ; 0x1d73
    mov bx, word [bp + 0x4]          ; 0x1d76
    cmp byte [bx], 0                 ; 0x1d79
    jne short @..math_loc_1d39.l1    ; 0x1d7c
    jmp near @..math_loc_1d39.l2     ; 0x1d7e
@..math_loc_1d39.l1:
    mov ax, 0x90c4                   ; 0x1d81
    push ax                          ; 0x1d84
    mov ax, word [bp - 0x0008]       ; 0x1d85
    add ax, strict word 6            ; 0x1d88
    push ax                          ; 0x1d8b
    mov ax, word [bp - 0x0006]       ; 0x1d8c
    add ax, strict word 6            ; 0x1d8f
    push ax                          ; 0x1d92
    mov ax, word [bp + 0xc]          ; 0x1d93
    add ax, strict word 0xffeb       ; 0x1d96
    push ax                          ; 0x1d99
    mov ax, word [bp + 0xa]          ; 0x1d9a
    add ax, strict word 0xfffa       ; 0x1d9d
    push ax                          ; 0x1da0
    db 0xe8, 0xdf, 0xa4 ; call 0xc283
    add sp, byte 0x0a                ; 0x1da4
    mov word [bp - 0x0158], ax       ; 0x1da7
    mov ax, word [bp - 0x0008]       ; 0x1dab
    add ax, strict word 5            ; 0x1dae
    push ax                          ; 0x1db1
    mov ax, word [bp - 0x0006]       ; 0x1db2
    add ax, strict word 5            ; 0x1db5
    push ax                          ; 0x1db8
    mov ax, word [bp + 0xc]          ; 0x1db9
    add ax, strict word 0xffec       ; 0x1dbc
    push ax                          ; 0x1dbf
    mov ax, word [bp + 0xa]          ; 0x1dc0
    add ax, strict word 0xfffb       ; 0x1dc3
    push ax                          ; 0x1dc6
    call 0xbc9a                      ; 0x1dc7
    add sp, byte 8                   ; 0x1dca
    mov ax, 0xc2                     ; 0x1dcd
    push ax                          ; 0x1dd0
    mov ax, 1                        ; 0x1dd1
    push ax                          ; 0x1dd4
    db 0xe8, 0x4b, 0xca ; call 0xe823
    add sp, byte 4                   ; 0x1dd8
    mov ax, word [bp + 0xc]          ; 0x1ddb
    add ax, strict word 0xfff0       ; 0x1dde
    push ax                          ; 0x1de1
    push word [bp + 0x4]             ; 0x1de2
    db 0xe8, 0xa8, 0xdc ; call 0xfa90
    pop cx                           ; 0x1de8
    mov cx, 6                        ; 0x1de9
    imul cx                          ; 0x1dec
    mov cx, data_0002                ; 0x1dee
    cwd                              ; 0x1df1
    idiv cx                          ; 0x1df2
    mov cx, ax                       ; 0x1df4
    mov ax, 0xa0                     ; 0x1df6
    sub ax, cx                       ; 0x1df9
    push ax                          ; 0x1dfb
    db 0xe8, 0x0a, 0xca ; call 0xe809
    add sp, byte 4                   ; 0x1dff
    mov ax, 0                        ; 0x1e02
    push ax                          ; 0x1e05
    push word [bp + 0x4]             ; 0x1e06
    db 0xe8, 0x42, 0xca ; call 0xe84e
    add sp, byte 4                   ; 0x1e0c
    mov ax, word [bp + 0xc]          ; 0x1e0f
    add ax, strict word 0xfff6       ; 0x1e12
    push ax                          ; 0x1e15
    push word [bp + 0x6]             ; 0x1e16
    db 0xe8, 0x74, 0xdc ; call 0xfa90
    pop cx                           ; 0x1e1c
    mov cx, 6                        ; 0x1e1d
    imul cx                          ; 0x1e20
    mov cx, data_0002                ; 0x1e22
    cwd                              ; 0x1e25
    idiv cx                          ; 0x1e26
    mov cx, ax                       ; 0x1e28
    mov ax, 0xa0                     ; 0x1e2a
    sub ax, cx                       ; 0x1e2d
    push ax                          ; 0x1e2f
    db 0xe8, 0xd6, 0xc9 ; call 0xe809
    add sp, byte 4                   ; 0x1e33
    mov ax, 0                        ; 0x1e36
    push ax                          ; 0x1e39
    push word [bp + 0x6]             ; 0x1e3a
    db 0xe8, 0x0e, 0xca ; call 0xe84e
    add sp, byte 4                   ; 0x1e40
    jmp short @..math_loc_1d39.l3    ; 0x1e43
@..math_loc_1d39.l2:
    mov ax, 0x90ca                   ; 0x1e45
    push ax                          ; 0x1e48
    mov ax, word [bp - 0x0008]       ; 0x1e49
    inc ax                           ; 0x1e4c
    push ax                          ; 0x1e4d
    mov ax, word [bp - 0x0006]       ; 0x1e4e
    inc ax                           ; 0x1e51
    push ax                          ; 0x1e52
    mov ax, word [bp + 0xc]          ; 0x1e53
    dec ax                           ; 0x1e56
    push ax                          ; 0x1e57
    mov ax, word [bp + 0xa]          ; 0x1e58
    dec ax                           ; 0x1e5b
    push ax                          ; 0x1e5c
    db 0xe8, 0x23, 0xa4 ; call 0xc283
    add sp, byte 0x0a                ; 0x1e60
    mov word [bp - 0x0158], ax       ; 0x1e63
@..math_loc_1d39.l3:
    mov word [bp - 0x0002], 0        ; 0x1e67
    mov word [bp - 0x0004], 0        ; 0x1e6c
@..math_loc_1d39.l4:
    mov ax, word [bp - 0x0004]       ; 0x1e71
    shl ax, 1                        ; 0x1e74
    mov si, ax                       ; 0x1e76
    mov bx, word [bp + 0x1e]         ; 0x1e78
    cmp word [bx + si], byte 0xff    ; 0x1e7b
    jne short @..math_loc_1d39.l5    ; 0x1e7e
    jmp near @..math_loc_1d39.l9     ; 0x1e80
@..math_loc_1d39.l5:
    cmp word [bx + si], byte 1       ; 0x1e83
    je short @..math_loc_1d39.l6     ; 0x1e86
    jmp near @..math_loc_1d39.l8     ; 0x1e88
@..math_loc_1d39.l6:
    mov ax, 0x14                     ; 0x1e8b
    imul word [bp - 0x0002]          ; 0x1e8e
    lea cx, word [bp - 0x0156]       ; 0x1e91
    add ax, cx                       ; 0x1e95
    push ax                          ; 0x1e97
    mov ax, word [bp + 0x8]          ; 0x1e98
    add ax, word [bp - 0x0004]       ; 0x1e9b
    push ax                          ; 0x1e9e
    db 0xe8, 0x99, 0x96 ; call 0xb53b
    add sp, byte 4                   ; 0x1ea2
    mov ax, word [bp - 0x0002]       ; 0x1ea5
    cwd                              ; 0x1ea8
    idiv word [bp + 0x14]            ; 0x1ea9
    imul word [bp + 0x10]            ; 0x1eac
    mov word [bp - 0x000a], ax       ; 0x1eaf
    mov ax, word [bp - 0x0002]       ; 0x1eb2
    cwd                              ; 0x1eb5
    idiv word [bp + 0x14]            ; 0x1eb6
    mov ax, dx                       ; 0x1eb9
    imul word [bp + 0x12]            ; 0x1ebb
    mov word [bp - 0x000c], ax       ; 0x1ebe
    mov ax, 0                        ; 0x1ec1
    push ax                          ; 0x1ec4
    mov ax, word [bp + 0xc]          ; 0x1ec5
    add ax, word [bp - 0x000c]       ; 0x1ec8
    add ax, strict word 8            ; 0x1ecb
    push ax                          ; 0x1ece
    mov ax, 6                        ; 0x1ecf
    imul word [bp + 0xe]             ; 0x1ed2
    add ax, word [bp + 0xa]          ; 0x1ed5
    add ax, word [bp - 0x000a]       ; 0x1ed8
    push ax                          ; 0x1edb
    mov ax, word [bp + 0xc]          ; 0x1edc
    add ax, word [bp - 0x000c]       ; 0x1edf
    push ax                          ; 0x1ee2
    mov ax, word [bp + 0xa]          ; 0x1ee3
    add ax, word [bp - 0x000a]       ; 0x1ee6
    push ax                          ; 0x1ee9
    db 0xe8, 0xf6, 0x9d ; call 0xbce3
    add sp, byte 0x0a                ; 0x1eed
    mov ax, 0xc0                     ; 0x1ef0
    push ax                          ; 0x1ef3
    mov ax, word [bp + 0x18]         ; 0x1ef4
    mov cx, word [bp - 0x0004]       ; 0x1ef7
    cmp cx, word [bp + 0x1a]         ; 0x1efa
    jne short @..math_loc_1d39.l7    ; 0x1efd
    mov ax, 0x1a                     ; 0x1eff
@..math_loc_1d39.l7:
    push ax                          ; 0x1f02
    db 0xe8, 0x1d, 0xc9 ; call 0xe823
    add sp, byte 4                   ; 0x1f06
    mov ax, word [bp + 0xc]          ; 0x1f09
    add ax, word [bp - 0x000c]       ; 0x1f0c
    inc ax                           ; 0x1f0f
    inc ax                           ; 0x1f10
    push ax                          ; 0x1f11
    mov ax, 0x14                     ; 0x1f12
    imul word [bp - 0x0002]          ; 0x1f15
    lea cx, word [bp - 0x0156]       ; 0x1f18
    add ax, cx                       ; 0x1f1c
    push ax                          ; 0x1f1e
    db 0xe8, 0x6e, 0xdb ; call 0xfa90
    pop cx                           ; 0x1f22
    mov cx, ax                       ; 0x1f23
    mov ax, word [bp + 0xe]          ; 0x1f25
    sub ax, cx                       ; 0x1f28
    mov cx, 6                        ; 0x1f2a
    imul cx                          ; 0x1f2d
    mov cx, data_0002                ; 0x1f2f
    cwd                              ; 0x1f32
    idiv cx                          ; 0x1f33
    add ax, word [bp + 0xa]          ; 0x1f35
