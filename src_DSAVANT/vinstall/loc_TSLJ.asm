; auto-generated
loc_TSLJ:
    push bp                          ; 0x0ed8
    mov bp, sp                       ; 0x0ed9
    add sp, strict word 0xfe34       ; 0x0edb
    push word [bp + 0x4]             ; 0x0edf
    lea ax, word [bp - 0x0028]       ; 0x0ee2
    push ax                          ; 0x0ee5
    call aztec_strcpy                ; 0x0ee6
    add sp, byte 4                   ; 0x0ee9
    mov ax, 0x1609                   ; 0x0eec
    push ax                          ; 0x0eef
    lea ax, word [bp - 0x0028]       ; 0x0ef0
    push ax                          ; 0x0ef3
    call aztec_strcat                ; 0x0ef4
    add sp, byte 4                   ; 0x0ef7
    mov ax, 0x1615                   ; 0x0efa
    push ax                          ; 0x0efd
    lea ax, word [bp - 0x0050]       ; 0x0efe
    push ax                          ; 0x0f01
    call aztec_strcpy                ; 0x0f02
    add sp, byte 4                   ; 0x0f05
    push word [bp + 0x4]             ; 0x0f08
    lea ax, word [bp - 0x0078]       ; 0x0f0b
    push ax                          ; 0x0f0e
    call aztec_strcpy                ; 0x0f0f
    add sp, byte 4                   ; 0x0f12
    push word [bp + 0x8]             ; 0x0f15
    lea ax, word [bp - 0x0078]       ; 0x0f18
    push ax                          ; 0x0f1b
    call aztec_strcat                ; 0x0f1c
    add sp, byte 4                   ; 0x0f1f
    push word [bp + 0x4]             ; 0x0f22
    lea ax, word [bp - 0x0177]       ; 0x0f25
    push ax                          ; 0x0f29
    call aztec_strcpy                ; 0x0f2a
    add sp, byte 4                   ; 0x0f2d
    mov ax, 0x1621                   ; 0x0f30
    push ax                          ; 0x0f33
    lea ax, word [bp - 0x0177]       ; 0x0f34
    push ax                          ; 0x0f38
    call aztec_strcat                ; 0x0f39
    add sp, byte 4                   ; 0x0f3c
    push word [bp + 0x4]             ; 0x0f3f
    lea ax, word [bp - 0x0177]       ; 0x0f42
    push ax                          ; 0x0f46
    call aztec_strcat                ; 0x0f47
    add sp, byte 4                   ; 0x0f4a
    push word [bp + 0x8]             ; 0x0f4d
    lea ax, word [bp - 0x0177]       ; 0x0f50
    push ax                          ; 0x0f54
    call aztec_strcat                ; 0x0f55
    add sp, byte 4                   ; 0x0f58
    mov ax, 0x162e                   ; 0x0f5b
    push ax                          ; 0x0f5e
    lea ax, word [bp - 0x0177]       ; 0x0f5f
    push ax                          ; 0x0f63
    call aztec_strcat                ; 0x0f64
    add sp, byte 4                   ; 0x0f67
    push word [bp + 0xa]             ; 0x0f6a
    lea ax, word [bp - 0x0177]       ; 0x0f6d
    push ax                          ; 0x0f71
    call aztec_strcat                ; 0x0f72
    add sp, byte 4                   ; 0x0f75
    lea ax, word [bp - 0x0177]       ; 0x0f78
    push ax                          ; 0x0f7c
    call loc_UIJJ                    ; 0x0f7d
    pop cx                           ; 0x0f80
    mov ax, 0x2357                   ; 0x0f81
    push ax                          ; 0x0f84
    mov ax, 0x1634                   ; 0x0f85
    push ax                          ; 0x0f88
    mov ax, 0x1630                   ; 0x0f89
    push ax                          ; 0x0f8c
    call aztec_utime                 ; 0x0f8d
    add sp, byte 6                   ; 0x0f90
    mov word [bss_29ee], ax          ; 0x0f93
    mov ax, 0                        ; 0x0f96
    push ax                          ; 0x0f99
    push ax                          ; 0x0f9a
    push word [bp + 0xa]             ; 0x0f9b
    lea ax, word [bp - 0x0078]       ; 0x0f9e
    push ax                          ; 0x0fa1
    lea ax, word [bp - 0x0050]       ; 0x0fa2
    push ax                          ; 0x0fa5
    lea ax, word [bp - 0x0028]       ; 0x0fa6
    push ax                          ; 0x0fa9
    call loc_NJNG                    ; 0x0faa
    add sp, byte 0x0c                ; 0x0fad
    mov word [bp - 0x01c9], ax       ; 0x0fb0
    call aztec_wait                  ; 0x0fb4
    mov word [bp - 0x01cb], ax       ; 0x0fb7
    push word [bss_29ee]             ; 0x0fbb
    mov ax, 0x163a                   ; 0x0fbf
    push ax                          ; 0x0fc2
    mov ax, 0x1636                   ; 0x0fc3
    push ax                          ; 0x0fc6
    call aztec_utime                 ; 0x0fc7
    add sp, byte 6                   ; 0x0fca
    mov word [bss_29ee], ax          ; 0x0fcd
    cmp word [bp - 0x01c9], byte 0xff ; 0x0fd0
    je short @..loc_TSLJ.l1          ; 0x0fd5
    cmp word [bp - 0x01cb], byte 0   ; 0x0fd7
    je short @..loc_TSLJ.l2          ; 0x0fdc
@..loc_TSLJ.l1:
    mov ax, 0x163c                   ; 0x0fde
    push ax                          ; 0x0fe1
    lea ax, word [bp - 0x01c7]       ; 0x0fe2
    push ax                          ; 0x0fe6
    call aztec_strcpy                ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    push word [bp + 0x4]             ; 0x0fed
    lea ax, word [bp - 0x01c7]       ; 0x0ff0
    push ax                          ; 0x0ff4
    call aztec_strcat                ; 0x0ff5
    add sp, byte 4                   ; 0x0ff8
    push word [bp + 0x8]             ; 0x0ffb
    lea ax, word [bp - 0x01c7]       ; 0x0ffe
    push ax                          ; 0x1002
    call aztec_strcat                ; 0x1003
    add sp, byte 4                   ; 0x1006
    mov ax, 0x1657                   ; 0x1009
    push ax                          ; 0x100c
    lea ax, word [bp - 0x01c7]       ; 0x100d
    push ax                          ; 0x1011
    call aztec_strcat                ; 0x1012
    add sp, byte 4                   ; 0x1015
    lea ax, word [bp - 0x01c7]       ; 0x1018
    push ax                          ; 0x101c
    call loc_NNGU                    ; 0x101d
    pop cx                           ; 0x1020
    mov ax, 3                        ; 0x1021
    push ax                          ; 0x1024
    call aztec_exit                  ; 0x1025
    pop cx                           ; 0x1028
@..loc_TSLJ.l2:
    mov sp, bp                       ; 0x1029
    pop bp                           ; 0x102b
    ret                              ; 0x102c

    db 0x55, 0x8b, 0xec, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db '8%Y=P', 0
    db 0x7f, 0x18, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x2b, 0x25, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x2e, 0xff
    db 0x76, 0x0a, 0xe8, 0x1f, 0x25, 0x59, 0x85, 0xc0, 0x75, 0x23, 0xb8, 0xf0, 0x29, 0x50, 0xff, 0x76
    db 0x08, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x73, 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x69, 0x16
    db 0x50, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x6a, 0x1a, 0x83, 0xc4, 0x04, 0xeb, 0x1b, 0xb8, 0xf0, 0x29
    db 0x50, 0xe8, 0xf0, 0x24, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x0e, 0xb8, 0x6a, 0x16, 0x50, 0xb8, 0xf0
    db 0x29, 0x50, 0xe8, 0x16, 0x1a, 0x83, 0xc4, 0x04, 0xff, 0x76, 0x0a, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db 0x09, 0x1a, 0x83, 0xc4, 0x04, 0x8b, 0xe5, 0x5d, 0xc3

