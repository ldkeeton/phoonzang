api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x1e4f
    call ds_dispatch_f40b            ; 0x1e52
    cmp word [bp + 0x10], byte 0     ; 0x1e55
    je short @..api_idx_0008_4.l2    ; 0x1e59
    mov ax, 0                        ; 0x1e5b
    push ax                          ; 0x1e5e
    push word [bp + 0x10]            ; 0x1e5f
    lea ax, word [bp + 0xe]          ; 0x1e62
    push ax                          ; 0x1e65
    lea ax, word [bp + 0xc]          ; 0x1e66
    push ax                          ; 0x1e69
    lea ax, word [bp + 0xa]          ; 0x1e6a
    push ax                          ; 0x1e6d
    lea ax, word [bp + 0x8]          ; 0x1e6e
    push ax                          ; 0x1e71
    lea ax, word [bp + 0x6]          ; 0x1e72
    push ax                          ; 0x1e75
    call loc_1963                    ; 0x1e76
    add sp, byte 0x0e                ; 0x1e79
    test ax, ax                      ; 0x1e7c
    je short @..api_idx_0008_4.l2    ; 0x1e7e
    mov ax, word [dseg_91a8]         ; 0x1e80
    jmp short @..api_idx_0008_4.l1   ; 0x1e83
    mov ax, 2                        ; 0x1e85
    ret                              ; 0x1e88
    cmp word [data_9188], byte 0     ; 0x1e89
    je short loc_1e94                ; 0x1e8e
    mov ax, 0                        ; 0x1e90
    ret                              ; 0x1e93
    mov ax, 4                        ; 0x1e94
    ret                              ; 0x1e97
    mov ax, 0                        ; 0x1e98
    ret                              ; 0x1e9b
    int3                             ; 0x1e9c
    outsb                            ; 0x1e9d
    db 0xdb, 0x6e, 0xcc ; fld [bp - 0x0034]
    outsb                            ; 0x1ea1
    shr byte [bp - 0x0034], 1        ; 0x1ea2
    outsb                            ; 0x1ea5
    db 0xdf, 0x6e
@..api_idx_0008_4.l1:
    cmp ax, strict word 6            ; 0x1ea8
    jae short @..api_idx_0008_4.l2   ; 0x1eab
    xchg bx, ax                      ; 0x1ead
    shl bx, 1                        ; 0x1eae
    jmp [cs:bx + 0x6ee3]             ; 0x1eb0
@..api_idx_0008_4.l2:
    mov ax, word [bp + 0xe]          ; 0x1eb5
    mov cx, 6                        ; 0x1eb8
    shl ax, cl                       ; 0x1ebb
    mov cx, word [bp + 0xc]          ; 0x1ebd
    shl cx, 1                        ; 0x1ec0
    shl cx, 1                        ; 0x1ec2
    shl cx, 1                        ; 0x1ec4
    add ax, cx                       ; 0x1ec6
    add ax, word [bp + 0xa]          ; 0x1ec8
    mov word [bp - 0x0002], ax       ; 0x1ecb
    push ax                          ; 0x1ece
    mov ax, word [dseg_0e14]         ; 0x1ecf
    add ax, 0x8b0                    ; 0x1ed2
    push ax                          ; 0x1ed5
    call ds_dispatch_ec74            ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    test ax, ax                      ; 0x1edc
    je short @..api_idx_0008_4.l5    ; 0x1ede
    mov ax, word [dseg_91a8]         ; 0x1ee0
    jmp short @..api_idx_0008_4.l4   ; 0x1ee3
@..api_idx_0008_4.l3:
    mov ax, 0                        ; 0x1ee5
    ret                              ; 0x1ee8
@..api_idx_0008_4.l4:
    cmp ax, strict word 0            ; 0x1ee9
    je short @..api_idx_0008_4.l3    ; 0x1eec
    cmp ax, strict word 3            ; 0x1eee
    je short @..api_idx_0008_4.l3    ; 0x1ef1
@..api_idx_0008_4.l5:
    mov ax, word [dseg_82ee]         ; 0x1ef3
    add ax, word [bp + 0x4]          ; 0x1ef6
    mov cx, 4                        ; 0x1ef9
    cwd                              ; 0x1efc
    idiv cx                          ; 0x1efd
    mov ax, dx                       ; 0x1eff
    jmp short @..api_idx_0008_4.l10  ; 0x1f01
@..api_idx_0008_4.l6:
    push word [bp + 0xe]             ; 0x1f03
    push word [bp + 0xc]             ; 0x1f06
    push word [bp + 0xa]             ; 0x1f09
    push word [bp + 0x8]             ; 0x1f0c
    push word [bp + 0x6]             ; 0x1f0f
    call loc_189b                    ; 0x1f12
    add sp, byte 0x0a                ; 0x1f15
    mov word [bp - 0x0004], ax       ; 0x1f18
    jmp short @..api_idx_0008_4.l11  ; 0x1f1b
@..api_idx_0008_4.l7:
    mov ax, 4                        ; 0x1f1d
    push ax                          ; 0x1f20
    push word [bp - 0x0002]          ; 0x1f21
    mov ax, word [dseg_0e14]         ; 0x1f24
    add ax, 0x90                     ; 0x1f27
    push ax                          ; 0x1f2a
    call ds_dispatch_ecf6            ; 0x1f2b
    add sp, byte 6                   ; 0x1f2e
    mov word [bp - 0x0004], ax       ; 0x1f31
    jmp short @..api_idx_0008_4.l11  ; 0x1f34
@..api_idx_0008_4.l8:
    mov ax, 4                        ; 0x1f36
    push ax                          ; 0x1f39
    push word [bp - 0x0002]          ; 0x1f3a
    mov ax, word [dseg_0e14]         ; 0x1f3d
    add ax, 0x290                    ; 0x1f40
    push ax                          ; 0x1f43
    call ds_dispatch_ecf6            ; 0x1f44
    add sp, byte 6                   ; 0x1f47
    mov word [bp - 0x0004], ax       ; 0x1f4a
    jmp short @..api_idx_0008_4.l11  ; 0x1f4d
@..api_idx_0008_4.l9:
    push word [bp + 0xe]             ; 0x1f4f
    push word [bp + 0xc]             ; 0x1f52
    push word [bp + 0xa]             ; 0x1f55
    push word [bp + 0x8]             ; 0x1f58
    push word [bp + 0x6]             ; 0x1f5b
    call loc_1823                    ; 0x1f5e
    add sp, byte 0x0a                ; 0x1f61
    mov word [bp - 0x0004], ax       ; 0x1f64
    jmp short @..api_idx_0008_4.l11  ; 0x1f67
@..api_idx_0008_4.l10:
    cmp ax, strict word 0            ; 0x1f69
    je short @..api_idx_0008_4.l6    ; 0x1f6c
    cmp ax, strict word 1            ; 0x1f6e
    je short @..api_idx_0008_4.l7    ; 0x1f71
    cmp ax, strict word 2            ; 0x1f73
    je short @..api_idx_0008_4.l8    ; 0x1f76
    cmp ax, strict word 3            ; 0x1f78
    je short @..api_idx_0008_4.l9    ; 0x1f7b
@..api_idx_0008_4.l11:
    lea ax, word [bp - 0x0008]       ; 0x1f7d
    push ax                          ; 0x1f80
    lea ax, word [bp - 0x0006]       ; 0x1f81
    push ax                          ; 0x1f84
    push word [bp - 0x0002]          ; 0x1f85
    call loc_19e4                    ; 0x1f88
    add sp, byte 6                   ; 0x1f8b
    mov ax, word [bp - 0x0008]       ; 0x1f8e
    add ax, word [bp + 0x4]          ; 0x1f91
    inc ax                           ; 0x1f94
    mov cx, 4                        ; 0x1f95
    cwd                              ; 0x1f98
    idiv cx                          ; 0x1f99
    mov word [bp - 0x0008], dx       ; 0x1f9b
    cmp dx, word [dseg_82ee]         ; 0x1f9e
    je short @..api_idx_0008_4.l12   ; 0x1fa2
    jmp near @..api_idx_0008_4.l14   ; 0x1fa4
@..api_idx_0008_4.l12:
    mov ax, word [bp - 0x0006]       ; 0x1fa7
    jmp short @..api_idx_0008_4.l13  ; 0x1faa

    db 0xc7, 0x46, 0xfc, 0x08, 0x00, 0xeb, 0x64, 0xc7, 0x46, 0xfc, 0x09, 0x00, 0xeb, 0x5d, 0xc7, 0x46
    db 0xfc, 0x0a, 0x00, 0xeb, 0x56, 0xc7, 0x46, 0xfc, 0x0b, 0x00, 0xeb, 0x4f, 0x83, 0x3e, 0xaa, 0x91
    db 0x00, 0x75, 0x05, 0xc7, 0x46, 0xfc, 0x0c, 0x00, 0xeb, 0x41, 0x83, 0x3e, 0xaa, 0x91, 0x00, 0x75
    db 0x05, 0xc7, 0x46, 0xfc, 0x0d, 0x00, 0xeb, 0x33, 0xc7, 0x46, 0xfc, 0x0e, 0x00, 0xeb, 0x2c, 0xc7
    db 0x46, 0xfc, 0x0f, 0x00, 0xeb, 0x25, 0x5e, 0x70, 0xf3, 0x6f, 0xfa, 0x6f, 0x01, 0x70, 0x08, 0x70
    db 0x0f, 0x70, 0x1d
    db 'p^p^p^p+p2p'

@..api_idx_0008_4.l13:
    cmp ax, strict word 0xc          ; 0x200a
    jae short @..api_idx_0008_4.l14  ; 0x200d
    xchg bx, ax                      ; 0x200f
    shl bx, 1                        ; 0x2010
    jmp [cs:bx + 0x7039]             ; 0x2012
@..api_idx_0008_4.l14:
    mov ax, word [bp - 0x0004]       ; 0x2017
    ret                              ; 0x201a
