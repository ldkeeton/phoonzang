; auto-generated
api_idx_0004_KHSO:
    mov ax, 0xfffc                   ; 0x3c97
    call aztec_csav                  ; 0x3c9a
    mov word [bp - 0x0002], 0        ; 0x3c9d
    jmp near @..api_idx_0004_KHSO.l8 ; 0x3ca2
@..api_idx_0004_KHSO.l1:
    mov ax, word [bp + 0xc]          ; 0x3ca5
    add ax, word [bp - 0x0002]       ; 0x3ca8
    cmp ax, word [bp + 0xe]          ; 0x3cab
    jne short @..api_idx_0004_KHSO.l2 ; 0x3cae
    mov ax, 1                        ; 0x3cb0
    push ax                          ; 0x3cb3
    mov ax, 0xe                      ; 0x3cb4
    imul word [bp - 0x0002]          ; 0x3cb7
    add ax, word [bp + 0x6]          ; 0x3cba
    add ax, strict word 0xd          ; 0x3cbd
    push ax                          ; 0x3cc0
    mov ax, 6                        ; 0x3cc1
    imul word [bp + 0x8]             ; 0x3cc4
    add ax, word [bp + 0x4]          ; 0x3cc7
    inc ax                           ; 0x3cca
    inc ax                           ; 0x3ccb
    push ax                          ; 0x3ccc
    mov ax, 0xe                      ; 0x3ccd
    imul word [bp - 0x0002]          ; 0x3cd0
    add ax, word [bp + 0x6]          ; 0x3cd3
    inc ax                           ; 0x3cd6
    push ax                          ; 0x3cd7
    mov ax, word [bp + 0x4]          ; 0x3cd8
    add ax, strict word 0x1c         ; 0x3cdb
    push ax                          ; 0x3cde
    call gfx_entry_18                ; 0x3cdf
    add sp, byte 0x0a                ; 0x3ce2
    mov word [bp - 0x0004], 0        ; 0x3ce5
    jmp short @..api_idx_0004_KHSO.l3 ; 0x3cea
@..api_idx_0004_KHSO.l2:
    mov word [bp - 0x0004], 0xb4     ; 0x3cec
@..api_idx_0004_KHSO.l3:
    mov ax, 0xe                      ; 0x3cf1
    imul word [bp - 0x0002]          ; 0x3cf4
    add ax, word [bp + 0x6]          ; 0x3cf7
    inc ax                           ; 0x3cfa
    push ax                          ; 0x3cfb
    mov ax, word [bp + 0x4]          ; 0x3cfc
    inc ax                           ; 0x3cff
    inc ax                           ; 0x3d00
    push ax                          ; 0x3d01
    call gfx_entry_13                ; 0x3d02
    add sp, byte 4                   ; 0x3d05
    mov ax, word [bp + 0xc]          ; 0x3d08
    add ax, word [bp - 0x0002]       ; 0x3d0b
    shl ax, 1                        ; 0x3d0e
    mov bx, ax                       ; 0x3d10
    cmp word [bx - 0x69ae], byte 0   ; 0x3d12
    je short @..api_idx_0004_KHSO.l4 ; 0x3d17
    mov ax, 4                        ; 0x3d19
    push ax                          ; 0x3d1c
    mov ax, 0x63                     ; 0x3d1d
    push ax                          ; 0x3d20
    call ds_loc_TJTV                 ; 0x3d21
    add sp, byte 4                   ; 0x3d24
@..api_idx_0004_KHSO.l4:
    mov ax, 0xe                      ; 0x3d27
    imul word [bp - 0x0002]          ; 0x3d2a
    add ax, word [bp + 0x6]          ; 0x3d2d
    inc ax                           ; 0x3d30
    push ax                          ; 0x3d31
    mov ax, word [bp + 0x4]          ; 0x3d32
    add ax, strict word 0xf          ; 0x3d35
    push ax                          ; 0x3d38
    call gfx_entry_13                ; 0x3d39
    add sp, byte 4                   ; 0x3d3c
    mov ax, 4                        ; 0x3d3f
    push ax                          ; 0x3d42
    mov ax, word [bp + 0xc]          ; 0x3d43
    add ax, word [bp - 0x0002]       ; 0x3d46
    shl ax, 1                        ; 0x3d49
    mov bx, ax                       ; 0x3d4b
    mov al, byte [bx - 0x6986]       ; 0x3d4d
    sub ah, ah                       ; 0x3d51
    push ax                          ; 0x3d53
    call ds_loc_TJTV                 ; 0x3d54
    add sp, byte 4                   ; 0x3d57
    push word [bp - 0x0004]          ; 0x3d5a
    mov ax, 0xe                      ; 0x3d5d
    imul word [bp - 0x0002]          ; 0x3d60
    add ax, word [bp + 0x6]          ; 0x3d63
    inc ax                           ; 0x3d66
    inc ax                           ; 0x3d67
    push ax                          ; 0x3d68
    mov ax, word [bp + 0x4]          ; 0x3d69
    add ax, strict word 0x1d         ; 0x3d6c
    push ax                          ; 0x3d6f
    mov ax, word [bp + 0xc]          ; 0x3d70
    add ax, word [bp - 0x0002]       ; 0x3d73
    mov cx, 0x16                     ; 0x3d76
    imul cx                          ; 0x3d79
    add ax, 0x96a2                   ; 0x3d7b
    push ax                          ; 0x3d7e
    call api_idx_002a_NJKV           ; 0x3d7f
    add sp, byte 8                   ; 0x3d82
    mov ax, word [bp + 0xc]          ; 0x3d85
    add ax, word [bp - 0x0002]       ; 0x3d88
    shl ax, 1                        ; 0x3d8b
    mov bx, ax                       ; 0x3d8d
    cmp word [bx - 0x67a6], byte 0   ; 0x3d8f
    jle short @..api_idx_0004_KHSO.l7 ; 0x3d94
    mov ax, 0xe                      ; 0x3d96
    imul word [bp - 0x0002]          ; 0x3d99
    add ax, word [bp + 0x6]          ; 0x3d9c
    add ax, strict word 8            ; 0x3d9f
    push ax                          ; 0x3da2
    mov ax, word [bp + 0x4]          ; 0x3da3
    add ax, strict word 0x47         ; 0x3da6
    push ax                          ; 0x3da9
    call gfx_entry_13                ; 0x3daa
    add sp, byte 4                   ; 0x3dad
    mov ax, 0                        ; 0x3db0
    push ax                          ; 0x3db3
    mov ax, word [bp + 0xc]          ; 0x3db4
    add ax, word [bp - 0x0002]       ; 0x3db7
    cmp ax, word [bp + 0xe]          ; 0x3dba
    jne short @..api_idx_0004_KHSO.l5 ; 0x3dbd
    mov ax, word [bp - 0x0004]       ; 0x3dbf
    jmp short @..api_idx_0004_KHSO.l6 ; 0x3dc2
@..api_idx_0004_KHSO.l5:
    mov ax, 2                        ; 0x3dc4
@..api_idx_0004_KHSO.l6:
    push ax                          ; 0x3dc7
    call gfx_entry_12                ; 0x3dc8
    add sp, byte 4                   ; 0x3dcb
    mov ax, 0                        ; 0x3dce
    push ax                          ; 0x3dd1
    mov ax, 3                        ; 0x3dd2
    push ax                          ; 0x3dd5
    mov ax, word [bp + 0xc]          ; 0x3dd6
    add ax, word [bp - 0x0002]       ; 0x3dd9
    shl ax, 1                        ; 0x3ddc
    mov bx, ax                       ; 0x3dde
    push word [bx - 0x67a6]          ; 0x3de0
    call ds_app_GUML                 ; 0x3de4
    add sp, byte 6                   ; 0x3de7
@..api_idx_0004_KHSO.l7:
    inc word [bp - 0x0002]           ; 0x3dea
@..api_idx_0004_KHSO.l8:
    mov ax, word [bp - 0x0002]       ; 0x3ded
    cmp ax, word [bp + 0xa]          ; 0x3df0
    jge short @..api_idx_0004_KHSO.l9 ; 0x3df3
    jmp near @..api_idx_0004_KHSO.l1 ; 0x3df5
@..api_idx_0004_KHSO.l9:
    ret                              ; 0x3df8
