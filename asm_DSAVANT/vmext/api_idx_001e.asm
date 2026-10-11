api_idx_001e:
    mov ax, 0xffe2                   ; 0x3d29
    call ds_dispatch_f40b            ; 0x3d2c
    mov word [bp - 0x0004], 0x14a    ; 0x3d2f
    mov ax, word [bss_8f1c]          ; 0x3d34
    mov dx, word [bss_8f1e]          ; 0x3d37
    push ax                          ; 0x3d3b
    push dx                          ; 0x3d3c
    mov ax, word [bp - 0x0004]       ; 0x3d3d
    cwd                              ; 0x3d40
    mov cx, ax                       ; 0x3d41
    mov bx, dx                       ; 0x3d43
    pop dx                           ; 0x3d45
    pop ax                           ; 0x3d46
    sub ax, cx                       ; 0x3d47
    sbb dx, bx                       ; 0x3d49
    mov cx, 0x5a0                    ; 0x3d4b
    mov bx, 0                        ; 0x3d4e
    call ds_dispatch_f9cd            ; 0x3d51
    mov word [bp - 0x0006], ax       ; 0x3d54
    cmp ax, strict word 0            ; 0x3d57
    jl short @..api_idx_001e.l1      ; 0x3d5a
    cmp ax, 0x36c                    ; 0x3d5c
    jl short @..api_idx_001e.l2      ; 0x3d5f
@..api_idx_001e.l1:
    ret                              ; 0x3d61
@..api_idx_001e.l2:
    mov cx, 3                        ; 0x3d62
    cwd                              ; 0x3d65
    idiv cx                          ; 0x3d66
    mov word [bp - 0x0008], ax       ; 0x3d68
    mov word [bp - 0x0002], 0        ; 0x3d6b
@..api_idx_001e.l3:
    mov ax, word [bp - 0x0002]       ; 0x3d70
    shl ax, 1                        ; 0x3d73
    mov bx, ax                       ; 0x3d75
    add bx, bp                       ; 0x3d77
    mov word [bx - 0x0014], 0xff01   ; 0x3d79
    inc word [bp - 0x0002]           ; 0x3d7e
    mov ax, word [bp - 0x0002]       ; 0x3d81
    cmp ax, strict word 4            ; 0x3d84
    jl short @..api_idx_001e.l3      ; 0x3d87
    cmp word [bp - 0x0008], byte 0x68 ; 0x3d89
    jg short @..api_idx_001e.l4      ; 0x3d8d
    mov ax, 0x58                     ; 0x3d8f
    sub ax, word [bp - 0x0008]       ; 0x3d92
    mov word [bp - 0x0012], ax       ; 0x3d95
@..api_idx_001e.l4:
    cmp word [bp - 0x0008], byte 0x3a ; 0x3d98
    jl short @..api_idx_001e.l5      ; 0x3d9c
    cmp word [bp - 0x0008], strict word 0xfa ; 0x3d9e
    jg short @..api_idx_001e.l5      ; 0x3da3
    mov ax, 0xb0                     ; 0x3da5
    mov cx, word [bp - 0x0008]       ; 0x3da8
    add cx, byte 0xc6                ; 0x3dab
    sub ax, cx                       ; 0x3dae
    mov word [bp - 0x0014], ax       ; 0x3db0
@..api_idx_001e.l5:
    cmp word [bp - 0x0008], strict word 0xcc ; 0x3db3
    jl short @..api_idx_001e.l6      ; 0x3db8
    cmp word [bp - 0x0008], strict word 0x124 ; 0x3dba
    jg short @..api_idx_001e.l6      ; 0x3dbf
    mov ax, 0xb0                     ; 0x3dc1
    mov cx, word [bp - 0x0008]       ; 0x3dc4
    add cx, strict word 0xff34       ; 0x3dc7
    sub ax, cx                       ; 0x3dcb
    mov word [bp - 0x000e], ax       ; 0x3dcd
@..api_idx_001e.l6:
    mov ax, word [bss_82ee]          ; 0x3dd0
    shl ax, 1                        ; 0x3dd3
    mov bx, ax                       ; 0x3dd5
    add bx, bp                       ; 0x3dd7
    cmp word [bx - 0x0014], strict word 0xff01 ; 0x3dd9
    jne short @..api_idx_001e.l7     ; 0x3dde
    ret                              ; 0x3de0
@..api_idx_001e.l7:
    cmp word [bp - 0x0006], strict word 0x10e ; 0x3de1
    jge short @..api_idx_001e.l8     ; 0x3de6
    mov ax, word [bp - 0x0006]       ; 0x3de8
    mov cx, 0xa                      ; 0x3deb
    cwd                              ; 0x3dee
    idiv cx                          ; 0x3def
    add ax, strict word 5            ; 0x3df1
    mov word [bp - 0x000c], ax       ; 0x3df4
    jmp short @..api_idx_001e.l12    ; 0x3df7
@..api_idx_001e.l8:
    mov ax, word [bp - 0x0006]       ; 0x3df9
    cmp ax, 0x276                    ; 0x3dfc
    jl short @..api_idx_001e.l9      ; 0x3dff
    add ax, 0xfd8a                   ; 0x3e01
    mov cx, 9                        ; 0x3e04
    cwd                              ; 0x3e07
    idiv cx                          ; 0x3e08
    mov cx, ax                       ; 0x3e0a
    mov ax, 0x20                     ; 0x3e0c
    sub ax, cx                       ; 0x3e0f
    mov word [bp - 0x000c], ax       ; 0x3e11
    jmp short @..api_idx_001e.l12    ; 0x3e14
@..api_idx_001e.l9:
    mov ax, word [bp - 0x0006]       ; 0x3e16
    add ax, 0xfef2                   ; 0x3e19
    mov cx, 0xb4                     ; 0x3e1c
    cwd                              ; 0x3e1f
    idiv cx                          ; 0x3e20
    mov ax, dx                       ; 0x3e22
    mov cx, 0x24                     ; 0x3e24
    cwd                              ; 0x3e27
    idiv cx                          ; 0x3e28
    mov word [bp - 0x000a], ax       ; 0x3e2a
    mov ax, word [bp - 0x0006]       ; 0x3e2d
    add ax, 0xfef2                   ; 0x3e30
    mov cx, 0xb4                     ; 0x3e33
    cwd                              ; 0x3e36
    idiv cx                          ; 0x3e37
    test ax, ax                      ; 0x3e39
    je short @..api_idx_001e.l10     ; 0x3e3b
    mov ax, 0x24                     ; 0x3e3d
    sub ax, word [bp - 0x000a]       ; 0x3e40
    jmp short @..api_idx_001e.l11    ; 0x3e43
@..api_idx_001e.l10:
    mov ax, word [bp - 0x000a]       ; 0x3e45
    add ax, strict word 0x20         ; 0x3e48
@..api_idx_001e.l11:
    mov word [bp - 0x000c], ax       ; 0x3e4b
@..api_idx_001e.l12:
    mov byte [bp - 0x001e], 6        ; 0x3e4e
    mov byte [bp - 0x001d], 0        ; 0x3e52
    mov ax, 0                        ; 0x3e56
    push ax                          ; 0x3e59
    push ax                          ; 0x3e5a
    lea ax, word [bp - 0x001e]       ; 0x3e5b
    push ax                          ; 0x3e5e
    mov ax, 0                        ; 0x3e5f
    push ax                          ; 0x3e62
    mov ax, 0x90                     ; 0x3e63
    push ax                          ; 0x3e66
    mov ax, 0x20                     ; 0x3e67
    push ax                          ; 0x3e6a
    mov ax, 0xf8                     ; 0x3e6b
    push ax                          ; 0x3e6e
    mov ax, 0x48                     ; 0x3e6f
    push ax                          ; 0x3e72
    mov ax, 0x46                     ; 0x3e73
    sub ax, word [bp - 0x000c]       ; 0x3e76
    push ax                          ; 0x3e79
    mov ax, word [bx - 0x0014]       ; 0x3e7a
    add ax, strict word 0x48         ; 0x3e7d
    push ax                          ; 0x3e80
    mov ax, 6                        ; 0x3e81
    push ax                          ; 0x3e84
    call ds_dispatch_efd1            ; 0x3e85
    add sp, byte 0x16                ; 0x3e88
    ret                              ; 0x3e8b
