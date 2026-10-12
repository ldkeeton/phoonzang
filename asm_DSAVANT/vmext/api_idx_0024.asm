api_idx_0024:
    mov ax, 0xffdc                   ; 0x3b83
    call ds_aztec_csav               ; 0x3b86
    mov ax, word [bss_8f1c]          ; 0x3b89
    mov dx, word [bss_8f1e]          ; 0x3b8c
    mov cx, 0x5a0                    ; 0x3b90
    mov bx, 0                        ; 0x3b93
    call ds_aztec_ldv                ; 0x3b96
    add ax, strict word 1            ; 0x3b99
    adc dx, byte 0                   ; 0x3b9c
    mov word [bp - 0x0004], ax       ; 0x3b9f
    add ax, strict word 0x12         ; 0x3ba2
    mov cx, 0x18                     ; 0x3ba5
    cwd                              ; 0x3ba8
    idiv cx                          ; 0x3ba9
    mov word [bp - 0x0006], dx       ; 0x3bab
    mov ax, word [bss_8f1c]          ; 0x3bae
    mov dx, word [bss_8f1e]          ; 0x3bb1
    mov cx, 0x5a0                    ; 0x3bb5
    mov bx, 0                        ; 0x3bb8
    call ds_aztec_lrm                ; 0x3bbb
    mov cx, 0x3c                     ; 0x3bbe
    mov bx, 0                        ; 0x3bc1
    call ds_aztec_ldv                ; 0x3bc4
    cmp dx, byte 0                   ; 0x3bc7
    jg short @..api_idx_0024.l1      ; 0x3bca
    jne short @..api_idx_0024.l2     ; 0x3bcc
    cmp ax, strict word 0xc          ; 0x3bce
    jb short @..api_idx_0024.l2      ; 0x3bd1
@..api_idx_0024.l1:
    jmp short @..api_idx_0024.l3     ; 0x3bd3
@..api_idx_0024.l2:
    cmp word [bp - 0x0006], byte 0x0c ; 0x3bd5
    jle short @..api_idx_0024.l3     ; 0x3bd9
    dec word [bp - 0x0004]           ; 0x3bdb
    mov ax, word [bp - 0x0004]       ; 0x3bde
    add ax, strict word 0x12         ; 0x3be1
    mov cx, 0x18                     ; 0x3be4
    cwd                              ; 0x3be7
    idiv cx                          ; 0x3be8
    mov word [bp - 0x0006], dx       ; 0x3bea
@..api_idx_0024.l3:
    mov ax, 0x3c                     ; 0x3bed
    imul word [bp - 0x0006]          ; 0x3bf0
    cwd                              ; 0x3bf3
    mov cx, ax                       ; 0x3bf4
    mov bx, dx                       ; 0x3bf6
    mov ax, word [bss_8f1c]          ; 0x3bf8
    mov dx, word [bss_8f1e]          ; 0x3bfb
    sub ax, cx                       ; 0x3bff
    sbb dx, bx                       ; 0x3c01
    mov cx, 0x5a0                    ; 0x3c03
    mov bx, 0                        ; 0x3c06
    call ds_aztec_lrm                ; 0x3c09
    mov word [bp - 0x0008], ax       ; 0x3c0c
    cmp ax, strict word 0            ; 0x3c0f
    jl short @..api_idx_0024.l4      ; 0x3c12
    cmp ax, 0x1e0                    ; 0x3c14
    jl short @..api_idx_0024.l5      ; 0x3c17
@..api_idx_0024.l4:
    ret                              ; 0x3c19
@..api_idx_0024.l5:
    mov cx, 2                        ; 0x3c1a
    cwd                              ; 0x3c1d
    idiv cx                          ; 0x3c1e
    mov word [bp - 0x000a], ax       ; 0x3c20
    mov word [bp - 0x0002], 0        ; 0x3c23
@..api_idx_0024.l6:
    mov ax, word [bp - 0x0002]       ; 0x3c28
    shl ax, 1                        ; 0x3c2b
    mov bx, ax                       ; 0x3c2d
    add bx, bp                       ; 0x3c2f
    mov word [bx - 0x0016], 0xff01   ; 0x3c31
    inc word [bp - 0x0002]           ; 0x3c36
    mov ax, word [bp - 0x0002]       ; 0x3c39
    cmp ax, strict word 4            ; 0x3c3c
    jl short @..api_idx_0024.l6      ; 0x3c3f
    cmp word [bp - 0x000a], byte 0x3e ; 0x3c41
    jge short @..api_idx_0024.l7     ; 0x3c45
    mov ax, word [bp - 0x000a]       ; 0x3c47
    add ax, strict word 0x72         ; 0x3c4a
    mov word [bp - 0x0014], ax       ; 0x3c4d
@..api_idx_0024.l7:
    cmp word [bp - 0x000a], byte 0x10 ; 0x3c50
    jl short @..api_idx_0024.l8      ; 0x3c54
    cmp word [bp - 0x000a], strict word 0xd0 ; 0x3c56
    jg short @..api_idx_0024.l8      ; 0x3c5b
    mov ax, word [bp - 0x000a]       ; 0x3c5d
    add ax, strict word 0xffe0       ; 0x3c60
    mov word [bp - 0x0012], ax       ; 0x3c63
@..api_idx_0024.l8:
    cmp word [bp - 0x000a], strict word 0xa2 ; 0x3c66
    jl short @..api_idx_0024.l9      ; 0x3c6b
    cmp word [bp - 0x000a], strict word 0xf0 ; 0x3c6d
    jg short @..api_idx_0024.l9      ; 0x3c72
    mov ax, word [bp - 0x000a]       ; 0x3c74
    add ax, 0xff4e                   ; 0x3c77
    mov word [bp - 0x0010], ax       ; 0x3c7a
@..api_idx_0024.l9:
    mov ax, word [bss_82ee]          ; 0x3c7d
    shl ax, 1                        ; 0x3c80
    mov bx, ax                       ; 0x3c82
    add bx, bp                       ; 0x3c84
    cmp word [bx - 0x0016], strict word 0xff01 ; 0x3c86
    jne short @..api_idx_0024.l10    ; 0x3c8b
    ret                              ; 0x3c8d
@..api_idx_0024.l10:
    mov ax, word [bp - 0x0008]       ; 0x3c8e
    mov cx, 0xf0                     ; 0x3c91
    cwd                              ; 0x3c94
    idiv cx                          ; 0x3c95
    mov ax, dx                       ; 0x3c97
    mov cx, 7                        ; 0x3c99
    cwd                              ; 0x3c9c
    idiv cx                          ; 0x3c9d
    mov word [bp - 0x000c], ax       ; 0x3c9f
    mov ax, word [bp - 0x0008]       ; 0x3ca2
    mov cx, 0xf0                     ; 0x3ca5
    cwd                              ; 0x3ca8
    idiv cx                          ; 0x3ca9
    test ax, ax                      ; 0x3cab
    je short @..api_idx_0024.l11     ; 0x3cad
    mov ax, 0x22                     ; 0x3caf
    sub ax, word [bp - 0x000c]       ; 0x3cb2
    jmp short @..api_idx_0024.l12    ; 0x3cb5
@..api_idx_0024.l11:
    mov ax, word [bp - 0x000c]       ; 0x3cb7
@..api_idx_0024.l12:
    mov word [bp - 0x000e], ax       ; 0x3cba
    mov ax, word [bp - 0x0004]       ; 0x3cbd
    mov cx, 3                        ; 0x3cc0
    cwd                              ; 0x3cc3
    idiv cx                          ; 0x3cc4
    mov cx, 8                        ; 0x3cc6
    cwd                              ; 0x3cc9
    idiv cx                          ; 0x3cca
    mov word [bp - 0x0018], dx       ; 0x3ccc
    mov ax, 1                        ; 0x3ccf
    cmp dx, byte 5                   ; 0x3cd2
    jge short @..api_idx_0024.l13    ; 0x3cd5
    mov ax, 0                        ; 0x3cd7
@..api_idx_0024.l13:
    mov word [bp - 0x001a], ax       ; 0x3cda
    cmp dx, byte 5                   ; 0x3cdd
    jge short @..api_idx_0024.l14    ; 0x3ce0
    inc dx                           ; 0x3ce2
    mov ax, dx                       ; 0x3ce3
    jmp short @..api_idx_0024.l15    ; 0x3ce5
@..api_idx_0024.l14:
    sub cx, word [bp - 0x0018]       ; 0x3ce7
    mov ax, cx                       ; 0x3cea
    inc ax                           ; 0x3cec
@..api_idx_0024.l15:
    mov byte [bp - 0x0024], al       ; 0x3ced
    mov byte [bp - 0x0023], 0        ; 0x3cf0
    mov ax, 0                        ; 0x3cf4
    push ax                          ; 0x3cf7
    push ax                          ; 0x3cf8
    lea ax, word [bp - 0x0024]       ; 0x3cf9
    push ax                          ; 0x3cfc
    push word [bp - 0x001a]          ; 0x3cfd
    mov ax, 0x90                     ; 0x3d00
    push ax                          ; 0x3d03
    mov ax, 0x20                     ; 0x3d04
    push ax                          ; 0x3d07
    mov ax, 0xf8                     ; 0x3d08
    push ax                          ; 0x3d0b
    mov ax, 0x48                     ; 0x3d0c
    push ax                          ; 0x3d0f
    mov ax, 0x44                     ; 0x3d10
    sub ax, word [bp - 0x000e]       ; 0x3d13
    push ax                          ; 0x3d16
    mov ax, word [bx - 0x0016]       ; 0x3d17
    add ax, strict word 0x48         ; 0x3d1a
    push ax                          ; 0x3d1d
    mov ax, 6                        ; 0x3d1e
    push ax                          ; 0x3d21
    call ds_loc_4218                 ; 0x3d22
    add sp, byte 0x16                ; 0x3d25
    ret                              ; 0x3d28
