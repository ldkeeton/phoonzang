; auto-generated
api_idx_009e_ITUJ:
    mov ax, 0xff62                   ; 0x3cfe
    call aztec_csav                  ; 0x3d01
    mov ax, 0                        ; 0x3d04
    push ax                          ; 0x3d07
    mov bx, word [bp + 0x6]          ; 0x3d08
    push word [bx]                   ; 0x3d0b
    lea ax, word [bp - 0x004a]       ; 0x3d0d
    push ax                          ; 0x3d10
    mov ax, 1                        ; 0x3d11
    push ax                          ; 0x3d14
    call ds_app_file_MPPM            ; 0x3d15
    add sp, byte 8                   ; 0x3d18
    cmp byte [bp - 0x000b], 0        ; 0x3d1b
    ja short @..api_idx_009e_ITUJ.l1 ; 0x3d1f
    jmp near @..api_idx_009e_ITUJ.l14 ; 0x3d21
@..api_idx_009e_ITUJ.l1:
    mov al, byte [bp - 0x000b]       ; 0x3d24
    sub ah, ah                       ; 0x3d27
    jmp near @..api_idx_009e_ITUJ.l12 ; 0x3d29
jumptable_3f96_case_1:
    call api_idx_0012_SHRT           ; 0x3d2c
    mov word [bss_8aee], ax          ; 0x3d2f
    cmp ax, strict word 0xffff       ; 0x3d32
    je short @..api_idx_009e_ITUJ.l2 ; 0x3d35
    mov ax, 0x248                    ; 0x3d37
    imul word [bp + 0x4]             ; 0x3d3a
    push ax                          ; 0x3d3d
    mov ax, 0x78                     ; 0x3d3e
    imul word [bss_9434]             ; 0x3d41
    mov cx, ax                       ; 0x3d45
    pop ax                           ; 0x3d47
    add ax, cx                       ; 0x3d48
    push ax                          ; 0x3d4a
    mov ax, 0xc                      ; 0x3d4b
    imul word [bss_8aee]             ; 0x3d4e
    mov cx, ax                       ; 0x3d52
    pop ax                           ; 0x3d54
    add ax, cx                       ; 0x3d55
    mov bx, ax                       ; 0x3d57
    cmp word [bx + 0x5c34], strict word 0x1d7 ; 0x3d59
    jne short @..api_idx_009e_ITUJ.l2 ; 0x3d5f
    mov ax, 0x4c18                   ; 0x3d61
    push ax                          ; 0x3d64
    call api_idx_0056_QRVG           ; 0x3d65
    pop cx                           ; 0x3d68
@..api_idx_009e_ITUJ.l2:
    jmp near @..api_idx_009e_ITUJ.l13 ; 0x3d69
jumptable_3f96_case_2:
    push word [bp - 0x0024]          ; 0x3d6c
    call api_idx_0056_QRVG           ; 0x3d6f
    pop cx                           ; 0x3d72
    jmp near @..api_idx_009e_ITUJ.l13 ; 0x3d73
jumptable_3f96_case_3:
    mov ax, 0x248                    ; 0x3d76
    imul word [bp + 0x4]             ; 0x3d79
    mov bx, ax                       ; 0x3d7c
    mov al, byte [bx + 0x5e2d]       ; 0x3d7e
    sub ah, ah                       ; 0x3d82
    push ax                          ; 0x3d84
    lea ax, word [bp - 0x0018]       ; 0x3d85
    push ax                          ; 0x3d88
    call ds_leaf_loc_PRVP            ; 0x3d89
    add sp, byte 4                   ; 0x3d8c
    test ax, ax                      ; 0x3d8f
    jne short @..api_idx_009e_ITUJ.l3 ; 0x3d91
    jmp near @..api_idx_009e_ITUJ.l6 ; 0x3d93
@..api_idx_009e_ITUJ.l3:
    mov ax, word [bp - 0x0028]       ; 0x3d96
    mov cx, 0x100                    ; 0x3d99
    cwd                              ; 0x3d9c
    idiv cx                          ; 0x3d9d
    mov word [bp - 0x004c], dx       ; 0x3d9f
    mov ax, 6                        ; 0x3da2
    imul dx                          ; 0x3da5
    mov bx, ax                       ; 0x3da7
    mov al, byte [bx + 0x621]        ; 0x3da9
    sub ah, ah                       ; 0x3dad
    shl ax, 1                        ; 0x3daf
    push ax                          ; 0x3db1
    mov ax, 0x248                    ; 0x3db2
    imul word [bp + 0x4]             ; 0x3db5
    mov bx, ax                       ; 0x3db8
    mov cx, word [bx + 0x5c18]       ; 0x3dba
    pop ax                           ; 0x3dbe
    cmp ax, cx                       ; 0x3dbf
    jle short @..api_idx_009e_ITUJ.l4 ; 0x3dc1
    lea ax, word [bp - 0x009e]       ; 0x3dc3
    push ax                          ; 0x3dc7
    mov ax, 0x2d1                    ; 0x3dc8
    push ax                          ; 0x3dcb
    call ds_app_mem_TIMR             ; 0x3dcc
    add sp, byte 4                   ; 0x3dcf
    mov ax, 1                        ; 0x3dd2
    push ax                          ; 0x3dd5
    lea ax, word [bp - 0x009e]       ; 0x3dd6
    push ax                          ; 0x3dda
    call api_idx_0004_PMIU           ; 0x3ddb
    add sp, byte 4                   ; 0x3dde
    jmp short @..api_idx_009e_ITUJ.l5 ; 0x3de1
@..api_idx_009e_ITUJ.l4:
    mov ax, 1                        ; 0x3de3
    push ax                          ; 0x3de6
    push word [bp - 0x004c]          ; 0x3de7
    mov ax, 0x248                    ; 0x3dea
    imul word [bp + 0x4]             ; 0x3ded
    add ax, 0x5e12                   ; 0x3df0
    push ax                          ; 0x3df3
    call set_bitmap_bit              ; 0x3df4
    add sp, byte 6                   ; 0x3df7
    lea ax, word [bp - 0x009e]       ; 0x3dfa
    push ax                          ; 0x3dfe
    mov ax, 0x2d0                    ; 0x3dff
    push ax                          ; 0x3e02
    call ds_app_mem_TIMR             ; 0x3e03
    add sp, byte 4                   ; 0x3e06
    mov ax, 1                        ; 0x3e09
    push ax                          ; 0x3e0c
    lea ax, word [bp - 0x009e]       ; 0x3e0d
    push ax                          ; 0x3e11
    call api_idx_0004_PMIU           ; 0x3e12
    add sp, byte 4                   ; 0x3e15
    mov bx, word [bp + 0x6]          ; 0x3e18
    mov word [bx], 0                 ; 0x3e1b
@..api_idx_009e_ITUJ.l5:
    jmp short @..api_idx_009e_ITUJ.l7 ; 0x3e1f
@..api_idx_009e_ITUJ.l6:
    lea ax, word [bp - 0x009e]       ; 0x3e21
    push ax                          ; 0x3e25
    mov ax, 0x2d2                    ; 0x3e26
    push ax                          ; 0x3e29
    call ds_app_mem_TIMR             ; 0x3e2a
    add sp, byte 4                   ; 0x3e2d
    mov ax, 1                        ; 0x3e30
    push ax                          ; 0x3e33
    lea ax, word [bp - 0x009e]       ; 0x3e34
    push ax                          ; 0x3e38
    call api_idx_0004_PMIU           ; 0x3e39
    add sp, byte 4                   ; 0x3e3c
@..api_idx_009e_ITUJ.l7:
    jmp near @..api_idx_009e_ITUJ.l13 ; 0x3e3f
jumptable_3f96_case_4:
    mov ax, word [bss_830c]          ; 0x3e42
    cmp ax, word [bp - 0x002c]       ; 0x3e45
    jne short @..api_idx_009e_ITUJ.l8 ; 0x3e48
    mov ax, 0                        ; 0x3e4a
    push ax                          ; 0x3e4d
    mov al, byte [bp - 0x002a]       ; 0x3e4e
    sub ah, ah                       ; 0x3e51
    push ax                          ; 0x3e53
    mov ax, word [bp - 0x002c]       ; 0x3e54
    mov cx, 4                        ; 0x3e57
    shl ax, cl                       ; 0x3e5a
    add ax, 0x8d14                   ; 0x3e5c
    push ax                          ; 0x3e5f
    call set_bitmap_bit              ; 0x3e60
    add sp, byte 6                   ; 0x3e63
    mov ax, 0                        ; 0x3e66
    push ax                          ; 0x3e69
    mov al, byte [bp - 0x002a]       ; 0x3e6a
    sub ah, ah                       ; 0x3e6d
    push ax                          ; 0x3e6f
    mov ax, word [bp - 0x002c]       ; 0x3e70
    mov cx, 4                        ; 0x3e73
    shl ax, cl                       ; 0x3e76
    add ax, 0x5642                   ; 0x3e78
    push ax                          ; 0x3e7b
    call set_bitmap_bit              ; 0x3e7c
    add sp, byte 6                   ; 0x3e7f
    mov ax, 1                        ; 0x3e82
    push ax                          ; 0x3e85
    mov al, byte [bp - 0x0029]       ; 0x3e86
    sub ah, ah                       ; 0x3e89
    push ax                          ; 0x3e8b
    mov ax, word [bp - 0x002c]       ; 0x3e8c
    mov cx, 4                        ; 0x3e8f
    shl ax, cl                       ; 0x3e92
    add ax, 0x8d14                   ; 0x3e94
    push ax                          ; 0x3e97
    call set_bitmap_bit              ; 0x3e98
    add sp, byte 6                   ; 0x3e9b
    mov ax, 1                        ; 0x3e9e
    push ax                          ; 0x3ea1
    mov al, byte [bp - 0x0029]       ; 0x3ea2
    sub ah, ah                       ; 0x3ea5
    push ax                          ; 0x3ea7
    mov ax, word [bp - 0x002c]       ; 0x3ea8
    mov cx, 4                        ; 0x3eab
    shl ax, cl                       ; 0x3eae
    add ax, 0x5642                   ; 0x3eb0
    push ax                          ; 0x3eb3
    call set_bitmap_bit              ; 0x3eb4
    add sp, byte 6                   ; 0x3eb7
    push word [bp + 0x6]             ; 0x3eba
    call loc_NKUR                    ; 0x3ebd
    pop cx                           ; 0x3ec0
@..api_idx_009e_ITUJ.l8:
    jmp near @..api_idx_009e_ITUJ.l13 ; 0x3ec1
jumptable_3f96_case_6:
    mov ax, 0x248                    ; 0x3ec4
    imul word [bp + 0x4]             ; 0x3ec7
    mov bx, ax                       ; 0x3eca
    cmp byte [bx + 0x5e32], 3        ; 0x3ecc
    jae short @..api_idx_009e_ITUJ.l9 ; 0x3ed1
    mov byte [bx + 0x5e32], 3        ; 0x3ed3
@..api_idx_009e_ITUJ.l9:
    mov ax, 0xfa                     ; 0x3ed8
    push ax                          ; 0x3edb
    mov ax, 0                        ; 0x3edc
    push ax                          ; 0x3edf
    mov al, byte [bx + 0x5d5f]       ; 0x3ee0
    sub ah, ah                       ; 0x3ee4
    add ax, 0xc8                     ; 0x3ee6
    push ax                          ; 0x3ee9
    call clamp                       ; 0x3eea
    add sp, byte 6                   ; 0x3eed
    push ax                          ; 0x3ef0
    mov ax, 0x248                    ; 0x3ef1
    imul word [bp + 0x4]             ; 0x3ef4
    mov bx, ax                       ; 0x3ef7
    pop ax                           ; 0x3ef9
    mov byte [bx + 0x5d5f], al       ; 0x3efa
    mov ax, 0xfa                     ; 0x3efe
    push ax                          ; 0x3f01
    mov ax, 0                        ; 0x3f02
    push ax                          ; 0x3f05
    mov al, byte [bx + 0x5d62]       ; 0x3f06
    sub ah, ah                       ; 0x3f0a
    add ax, 0xc8                     ; 0x3f0c
    push ax                          ; 0x3f0f
    call clamp                       ; 0x3f10
    add sp, byte 6                   ; 0x3f13
    push ax                          ; 0x3f16
    mov ax, 0x248                    ; 0x3f17
    imul word [bp + 0x4]             ; 0x3f1a
    mov bx, ax                       ; 0x3f1d
    pop ax                           ; 0x3f1f
    mov byte [bx + 0x5d62], al       ; 0x3f20
    push word [bp + 0x6]             ; 0x3f24
    call loc_NKUR                    ; 0x3f27
    pop cx                           ; 0x3f2a
    mov ax, 0x248                    ; 0x3f2b
    imul word [bp + 0x4]             ; 0x3f2e
    mov bx, ax                       ; 0x3f31
    mov al, byte [bx + 0x5e2c]       ; 0x3f33
    sub ah, ah                       ; 0x3f37
    add ax, strict word 8            ; 0x3f39
    push ax                          ; 0x3f3c
    call ds_app_HKIJ                 ; 0x3f3d
    pop cx                           ; 0x3f40
    jmp near @..api_idx_009e_ITUJ.l13 ; 0x3f41
jumptable_3f96_case_10:
    mov word [bp - 0x0002], 0        ; 0x3f44
@..api_idx_009e_ITUJ.l10:
    mov ax, 0x248                    ; 0x3f49
    imul word [bp + 0x4]             ; 0x3f4c
    mov bx, ax                       ; 0x3f4f
    cmp byte [bx + 0x5d6b], 0        ; 0x3f51
    jbe short @..api_idx_009e_ITUJ.l11 ; 0x3f56
    cmp word [bp - 0x0002], byte 0   ; 0x3f58
    jne short @..api_idx_009e_ITUJ.l11 ; 0x3f5c
    dec byte [bx + 0x5d6b]           ; 0x3f5e
    mov ax, 3                        ; 0x3f62
    push ax                          ; 0x3f65
    call ds_app_PUNN                 ; 0x3f66
    pop cx                           ; 0x3f69
    mov word [bp - 0x0002], ax       ; 0x3f6a
    jmp short @..api_idx_009e_ITUJ.l10 ; 0x3f6d
@..api_idx_009e_ITUJ.l11:
    push word [bp + 0x6]             ; 0x3f6f
    call loc_NKUR                    ; 0x3f72
    pop cx                           ; 0x3f75
    jmp short @..api_idx_009e_ITUJ.l13 ; 0x3f76
jumptable_3f96_case_11:
    mov ax, 4                        ; 0x3f78
    push ax                          ; 0x3f7b
    mov ax, 3                        ; 0x3f7c
    push ax                          ; 0x3f7f
    mov ax, 0x14                     ; 0x3f80
    push ax                          ; 0x3f83
    push word [bp + 0x4]             ; 0x3f84
    call api_idx_0002_TJIU           ; 0x3f87
    add sp, byte 8                   ; 0x3f8a
    push word [bp + 0x6]             ; 0x3f8d
    call loc_NKUR                    ; 0x3f90
    pop cx                           ; 0x3f93
    jmp short @..api_idx_009e_ITUJ.l13 ; 0x3f94
jumptable_3f96:
    dw jumptable_3f96_case_0 - IMAGE_BASE + __zres_end ; 0x3f96
    dw jumptable_3f96_case_1 - IMAGE_BASE + __zres_end ; 0x3f98
    dw jumptable_3f96_case_2 - IMAGE_BASE + __zres_end ; 0x3f9a
    dw jumptable_3f96_case_3 - IMAGE_BASE + __zres_end ; 0x3f9c
    dw jumptable_3f96_case_4 - IMAGE_BASE + __zres_end ; 0x3f9e
    dw jumptable_3f96_case_0 - IMAGE_BASE + __zres_end ; 0x3fa0
    dw jumptable_3f96_case_6 - IMAGE_BASE + __zres_end ; 0x3fa2
    dw jumptable_3f96_case_0 - IMAGE_BASE + __zres_end ; 0x3fa4
    dw jumptable_3f96_case_0 - IMAGE_BASE + __zres_end ; 0x3fa6
    dw jumptable_3f96_case_0 - IMAGE_BASE + __zres_end ; 0x3fa8
    dw jumptable_3f96_case_10 - IMAGE_BASE + __zres_end ; 0x3faa
    dw jumptable_3f96_case_11 - IMAGE_BASE + __zres_end ; 0x3fac
@..api_idx_009e_ITUJ.l12:
    cmp ax, strict word 0xc          ; 0x3fae
    jae short @..api_idx_009e_ITUJ.l13 ; 0x3fb1
    xchg bx, ax                      ; 0x3fb3
    shl bx, 1                        ; 0x3fb4
    jmp [cs:bx + jumptable_3f96 - IMAGE_BASE + __zres_end] ; 0x3fb6
jumptable_3f96_case_0:
@..api_idx_009e_ITUJ.l13:
    jmp short @..api_idx_009e_ITUJ.l17 ; 0x3fbb
@..api_idx_009e_ITUJ.l14:
    cmp word [bp - 0x0028], byte 0   ; 0x3fbd
    je short @..api_idx_009e_ITUJ.l16 ; 0x3fc1
    mov ax, word [bp - 0x0028]       ; 0x3fc3
    mov cx, 0x100                    ; 0x3fc6
    cwd                              ; 0x3fc9
    idiv cx                          ; 0x3fca
    mov word [bp - 0x004e], ax       ; 0x3fcc
    mov word [bp - 0x004c], dx       ; 0x3fcf
    mov ax, 6                        ; 0x3fd2
    imul dx                          ; 0x3fd5
    mov bx, ax                       ; 0x3fd7
    cmp byte [bx + 0x624], 1         ; 0x3fd9
    jne short @..api_idx_009e_ITUJ.l15 ; 0x3fde
    call api_idx_0012_GQSK           ; 0x3fe0
    mov word [bss_9564], ax          ; 0x3fe3
    cmp ax, strict word 0xffff       ; 0x3fe6
    jne short @..api_idx_009e_ITUJ.l15 ; 0x3fe9
    ret                              ; 0x3feb
@..api_idx_009e_ITUJ.l15:
    push word [bss_9564]             ; 0x3fec
    push word [bp - 0x004e]          ; 0x3ff0
    push word [bp - 0x004c]          ; 0x3ff3
    push word [bp + 0x4]             ; 0x3ff6
    call api_idx_0008_NOPG           ; 0x3ff9
    add sp, byte 8                   ; 0x3ffc
    push word [bp + 0x6]             ; 0x3fff
    call loc_NKUR                    ; 0x4002
    pop cx                           ; 0x4005
    jmp short @..api_idx_009e_ITUJ.l17 ; 0x4006
@..api_idx_009e_ITUJ.l16:
    mov ax, 0                        ; 0x4008
    push ax                          ; 0x400b
    call ds_app_HKIJ                 ; 0x400c
    pop cx                           ; 0x400f
@..api_idx_009e_ITUJ.l17:
    ret                              ; 0x4010
