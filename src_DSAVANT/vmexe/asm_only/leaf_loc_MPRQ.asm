; auto-generated
; asm only
leaf_loc_MPRQ:
    mov word [bp - 0x0076], 0x14     ; 0x7b41
    jmp near loc_IJIL                ; 0x7b46
loc_JNTO_7b49:
    mov word [bp - 0x0076], 0x11     ; 0x7b49
    jmp near loc_IJIL                ; 0x7b4e
loc_TMSO:
    mov word [bp - 0x0076], 2        ; 0x7b51
    jmp near loc_IJIL                ; 0x7b56
loc_VJLU:
    mov word [bp - 0x0076], 4        ; 0x7b59
    jmp near loc_IJIL                ; 0x7b5e
loc_IPHG_7b61:
    mov word [bp - 0x0076], 0x10     ; 0x7b61
    jmp near loc_IJIL                ; 0x7b66
loc_VUUS:
    mov word [bp - 0x0076], 0x12     ; 0x7b69
    jmp near loc_IJIL                ; 0x7b6e
loc_MUUT:
    mov word [bp - 0x0076], 0x13     ; 0x7b71
    jmp near loc_IJIL                ; 0x7b76
loc_QRJN:
    mov word [bp - 0x0076], 0x16     ; 0x7b79
    jmp near loc_IJIL                ; 0x7b7e
loc_MNVL_7b81:
    mov word [bp - 0x0076], 6        ; 0x7b81
    jmp near loc_IJIL                ; 0x7b86
loc_VKJM:
    mov ax, 0x248                    ; 0x7b89
    imul word [bss_8462]             ; 0x7b8c
    push ax                          ; 0x7b90
    mov ax, 0xc                      ; 0x7b91
    imul word [bp - 0x004c]          ; 0x7b94
    mov cx, ax                       ; 0x7b97
    pop ax                           ; 0x7b99
    add ax, cx                       ; 0x7b9a
    mov bx, ax                       ; 0x7b9c
    cmp byte [bx + 0x5c3a], 0        ; 0x7b9e
    jbe short loc_7bb2               ; 0x7ba3
    mov word [bp - 0x0076], 0xf      ; 0x7ba5
    mov word [bss_90de], 0xc         ; 0x7baa
    jmp short loc_7bb8               ; 0x7bb0
loc_7bb2:
    mov word [bp - 0x00a4], 1        ; 0x7bb2
loc_7bb8:
    mov ax, 0x9136                   ; 0x7bb8
    push ax                          ; 0x7bbb
    mov ax, 0xd1f                    ; 0x7bbc
    push ax                          ; 0x7bbf
    call ds_app_mem_TIMR             ; 0x7bc0
    add sp, byte 4                   ; 0x7bc3
    jmp near loc_IJIL                ; 0x7bc6
loc_OLTS:
    mov ax, 0x248                    ; 0x7bc9
    imul word [bss_8462]             ; 0x7bcc
    push ax                          ; 0x7bd0
    mov ax, 0xc                      ; 0x7bd1
    imul word [bp - 0x004c]          ; 0x7bd4
    mov cx, ax                       ; 0x7bd7
    pop ax                           ; 0x7bd9
    add ax, cx                       ; 0x7bda
    mov bx, ax                       ; 0x7bdc
    cmp byte [bx + 0x5c3a], 0        ; 0x7bde
    jbe short loc_7bf2               ; 0x7be3
    mov word [bp - 0x0076], 8        ; 0x7be5
    mov word [bss_90de], 5           ; 0x7bea
    jmp short loc_7bf8               ; 0x7bf0
loc_7bf2:
    mov word [bp - 0x00a4], 1        ; 0x7bf2
loc_7bf8:
    mov ax, 0x9136                   ; 0x7bf8
    push ax                          ; 0x7bfb
    mov ax, 0xd1f                    ; 0x7bfc
    push ax                          ; 0x7bff
    call ds_app_mem_TIMR             ; 0x7c00
    add sp, byte 4                   ; 0x7c03
    jmp short loc_IJIL               ; 0x7c06
loc_7c08:
    mov cx, 0x11                     ; 0x7c08
    call leaf_loc_RJLR               ; 0x7c0b
jumptable_7c0e:
    dw 0                                       ; 0x7c0e
    dw 0x0012                                  ; 0x7c10 ; literal
    dw 0x0015                                  ; 0x7c12 ; literal
    dw 0x0016                                  ; 0x7c14 ; literal
    dw 0x0017                                  ; 0x7c16 ; literal
    dw 0x0020                                  ; 0x7c18 ; literal
    dw 0x0022                                  ; 0x7c1a ; literal
    dw 0x0053                                  ; 0x7c1c ; literal
    dw 0x0064                                  ; 0x7c1e ; literal
    dw 0x0065                                  ; 0x7c20 ; literal
    dw 0x0066                                  ; 0x7c22 ; literal
    dw 0x0067                                  ; 0x7c24 ; literal
    dw 0x0068                                  ; 0x7c26 ; literal
    dw 0x006e                                  ; 0x7c28 ; literal
    dw 0x0070                                  ; 0x7c2a ; literal
    dw 0x0072                                  ; 0x7c2c ; literal
    dw leaf_loc_IIUM - IMAGE_BASE + __zres_end ; 0x7c2e
    dw leaf_loc_MPRQ - IMAGE_BASE + __zres_end ; 0x7c30
    dw loc_JNTO_7b49 - IMAGE_BASE + __zres_end ; 0x7c32
    dw loc_TMSO - IMAGE_BASE + __zres_end      ; 0x7c34
    dw loc_IPHG_7b61 - IMAGE_BASE + __zres_end ; 0x7c36
    dw loc_MUUT - IMAGE_BASE + __zres_end      ; 0x7c38
    dw loc_QRJN - IMAGE_BASE + __zres_end      ; 0x7c3a
    dw loc_VJLU - IMAGE_BASE + __zres_end      ; 0x7c3c
    dw loc_VUUS - IMAGE_BASE + __zres_end      ; 0x7c3e
    dw loc_MUUT - IMAGE_BASE + __zres_end      ; 0x7c40
    dw loc_VUUS - IMAGE_BASE + __zres_end      ; 0x7c42
    dw loc_MUUT - IMAGE_BASE + __zres_end      ; 0x7c44
    dw loc_VKJM - IMAGE_BASE + __zres_end      ; 0x7c46
    dw loc_VKJM - IMAGE_BASE + __zres_end      ; 0x7c48
    dw loc_MNVL_7b81 - IMAGE_BASE + __zres_end ; 0x7c4a
    dw loc_OLTS - IMAGE_BASE + __zres_end      ; 0x7c4c
    dw loc_IJIL - IMAGE_BASE + __zres_end      ; 0x7c4e
loc_IJIL:
    jmp near loc_LOHN                ; 0x7c50
loc_7c53:
    mov ax, word [bss_8464]          ; 0x7c53
    shl ax, 1                        ; 0x7c56
    mov bx, ax                       ; 0x7c58
    mov bx, word [bx - 0x7b70]       ; 0x7c5a
    mov si, word [bp + 0x6]          ; 0x7c5e
    cmp byte [bx + si + 0x86], 3     ; 0x7c61
    jbe short loc_7c6b               ; 0x7c66
    jmp near loc_7f13                ; 0x7c68
loc_7c6b:
    mov ax, 0x9136                   ; 0x7c6b
    push ax                          ; 0x7c6e
    mov ax, word [bp + 0x8]          ; 0x7c6f
    add ax, 0xd16                    ; 0x7c72
    push ax                          ; 0x7c75
    call ds_app_mem_TIMR             ; 0x7c76
    add sp, byte 4                   ; 0x7c79
    mov bx, word [bp + 0x4]          ; 0x7c7c
    cmp byte [bx + 0x2b], 0          ; 0x7c7f
    je short loc_7ca8                ; 0x7c83
    mov ax, word [bp + 0x8]          ; 0x7c85
    cmp ax, strict word 4            ; 0x7c88
    je short loc_7ca8                ; 0x7c8b
    cmp ax, strict word 8            ; 0x7c8d
    je short loc_7ca8                ; 0x7c90
    mov ax, 0x9136                   ; 0x7c92
    push ax                          ; 0x7c95
    mov ax, 2                        ; 0x7c96
    push ax                          ; 0x7c99
    call ds_app_PUNN                 ; 0x7c9a
    pop cx                           ; 0x7c9d
    add ax, 0xd39                    ; 0x7c9e
    push ax                          ; 0x7ca1
    call ds_app_mem_TIMR             ; 0x7ca2
    add sp, byte 4                   ; 0x7ca5
loc_7ca8:
    cmp word [bp + 0x8], byte 4      ; 0x7ca8
    je short loc_7cb7                ; 0x7cac
    cmp word [bp + 0x8], byte 8      ; 0x7cae
    je short loc_7cb7                ; 0x7cb2
    jmp near loc_7ee8                ; 0x7cb4
loc_7cb7:
    mov ax, 0x12                     ; 0x7cb7
    imul word [bp + 0x6]             ; 0x7cba
    mov si, ax                       ; 0x7cbd
    mov ax, word [bss_8464]          ; 0x7cbf
    shl ax, 1                        ; 0x7cc2
    mov bx, ax                       ; 0x7cc4
    mov bx, word [bx - 0x7b70]       ; 0x7cc6
    mov ax, word [bx + si + 0x44]    ; 0x7cca
    mov word [bp - 0x0070], ax       ; 0x7ccd
    mov ax, word [bx + si + 0x46]    ; 0x7cd0
    mov word [bp - 0x006e], ax       ; 0x7cd3
    mov si, word [bp + 0x6]          ; 0x7cd6
    mov al, byte [bx + si + 0x89]    ; 0x7cd9
    sub ah, ah                       ; 0x7cdd
    jmp near loc_7edb                ; 0x7cdf
loc_LMNP:
    mov word [bp - 0x0076], 0x15     ; 0x7ce2
    jmp near loc_7ee8                ; 0x7ce7
loc_UHKI:
    mov word [bp - 0x0094], 0x714    ; 0x7cea
    mov word [bp - 0x0076], 0xa      ; 0x7cf0
    mov word [bss_90de], 0xb         ; 0x7cf5
    mov ax, 0x9136                   ; 0x7cfb
    push ax                          ; 0x7cfe
    mov ax, 0xd1f                    ; 0x7cff
    push ax                          ; 0x7d02
    call ds_app_mem_TIMR             ; 0x7d03
    add sp, byte 4                   ; 0x7d06
    mov word [bp - 0x00ac], 1        ; 0x7d09
    jmp near loc_7ee8                ; 0x7d0f
loc_SVNV:
    mov word [bp - 0x0094], 0x506    ; 0x7d12
    mov word [bp - 0x0076], 8        ; 0x7d18
    mov word [bss_90de], 0xb         ; 0x7d1d
    mov ax, 0x9136                   ; 0x7d23
    push ax                          ; 0x7d26
    mov ax, 0xd1f                    ; 0x7d27
    push ax                          ; 0x7d2a
    call ds_app_mem_TIMR             ; 0x7d2b
    add sp, byte 4                   ; 0x7d2e
    mov word [bp - 0x00ac], 1        ; 0x7d31
    jmp near loc_7ee8                ; 0x7d37
loc_PKSM:
    mov word [bp - 0x0076], 8        ; 0x7d3a
    mov word [bss_90de], 5           ; 0x7d3f
    mov ax, 0x9136                   ; 0x7d45
    push ax                          ; 0x7d48
    mov ax, 0xd1f                    ; 0x7d49
    push ax                          ; 0x7d4c
    call ds_app_mem_TIMR             ; 0x7d4d
    add sp, byte 4                   ; 0x7d50
    mov word [bp - 0x00a6], 0        ; 0x7d53
    jmp near loc_7ee8                ; 0x7d59
loc_KKVN:
    mov word [bp - 0x0076], 2        ; 0x7d5c
    mov word [bp - 0x00a6], 0        ; 0x7d61
    jmp near loc_7ee8                ; 0x7d67
loc_NSNI:
    mov word [bp - 0x00a6], 2        ; 0x7d6a
loc_ONHK:
    cmp word [bp - 0x00a6], byte 1   ; 0x7d70
    jne short loc_7d7d               ; 0x7d75
    mov word [bp - 0x00a6], 3        ; 0x7d77
loc_7d7d:
    mov word [bp - 0x0076], 0xf      ; 0x7d7d
    mov word [bss_90de], 0xc         ; 0x7d82
    mov ax, 0x9136                   ; 0x7d88
    push ax                          ; 0x7d8b
    mov ax, 0xd1f                    ; 0x7d8c
    push ax                          ; 0x7d8f
    call ds_app_mem_TIMR             ; 0x7d90
    add sp, byte 4                   ; 0x7d93
    mov word [bp - 0x00ac], 1        ; 0x7d96
    jmp near loc_7ee8                ; 0x7d9c
loc_IIUM:
    mov word [bp - 0x0076], 0        ; 0x7d9f
    jmp near loc_7ee8                ; 0x7da4
loc_GUQH:
    mov word [bp - 0x0076], 0xc      ; 0x7da7
    jmp near loc_7ee8                ; 0x7dac
loc_IPHG_7daf:
    mov word [bp - 0x0076], 0x10     ; 0x7daf
    jmp near loc_7ee8                ; 0x7db4
loc_MNVL_7db7:
    mov word [bp - 0x0076], 6        ; 0x7db7
    jmp near loc_7ee8                ; 0x7dbc
loc_JNTO_7dbf:
    mov word [bp - 0x0076], 0x11     ; 0x7dbf
    jmp near loc_7ee8                ; 0x7dc4
loc_NJMN:
    mov word [bp - 0x0076], 4        ; 0x7dc7
    mov word [bp - 0x00a6], 0        ; 0x7dcc
    jmp near loc_7ee8                ; 0x7dd2
loc_VOHG:
    mov word [bp - 0x0094], 0x643    ; 0x7dd5
    mov word [bp - 0x0076], 0x16     ; 0x7ddb
    mov word [bss_90de], 0xa         ; 0x7de0
    mov ax, 0x9136                   ; 0x7de6
    push ax                          ; 0x7de9
    mov ax, 0xd1f                    ; 0x7dea
    push ax                          ; 0x7ded
    call ds_app_mem_TIMR             ; 0x7dee
    add sp, byte 4                   ; 0x7df1
    mov word [bp - 0x00ac], 1        ; 0x7df4
    jmp near loc_7ee8                ; 0x7dfa
loc_TPJP:
    mov word [bp - 0x0094], 0x702    ; 0x7dfd
    mov word [bp - 0x0076], 0xc      ; 0x7e03
    mov word [bss_90de], 0xc         ; 0x7e08
    mov ax, 0x9136                   ; 0x7e0e
    push ax                          ; 0x7e11
    mov ax, 0xd1f                    ; 0x7e12
    push ax                          ; 0x7e15
    call ds_app_mem_TIMR             ; 0x7e16
    add sp, byte 4                   ; 0x7e19
    mov word [bp - 0x00ac], 1        ; 0x7e1c
    jmp near loc_7ee8                ; 0x7e22
loc_RMSG:
    mov word [bp - 0x00aa], 0xa4     ; 0x7e25
    mov word [bp - 0x0094], 0x641    ; 0x7e2b
    mov word [bp - 0x0076], 0xe      ; 0x7e31
    mov ax, 0x39                     ; 0x7e36
    push ax                          ; 0x7e39
    call ds_app_QTIV                 ; 0x7e3a
    pop cx                           ; 0x7e3d
    mov word [bp - 0x00a8], 0x2c     ; 0x7e3e
    mov word [bss_90de], 0x10        ; 0x7e44
    mov ax, 0x9136                   ; 0x7e4a
    push ax                          ; 0x7e4d
    mov ax, 0xd3c                    ; 0x7e4e
    push ax                          ; 0x7e51
    call ds_app_mem_TIMR             ; 0x7e52
    add sp, byte 4                   ; 0x7e55
    mov word [bp - 0x00ac], 1        ; 0x7e58
    jmp near loc_7ee8                ; 0x7e5e
jumptable_7e61:
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e61
    dw loc_LMNP - IMAGE_BASE + __zres_end      ; 0x7e63
    dw loc_LMNP - IMAGE_BASE + __zres_end      ; 0x7e65
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e67
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e69
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e6b
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e6d
    dw loc_PKSM - IMAGE_BASE + __zres_end      ; 0x7e6f
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e71
    dw loc_KKVN - IMAGE_BASE + __zres_end      ; 0x7e73
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e75
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e77
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e79
    dw loc_7d7d - IMAGE_BASE + __zres_end      ; 0x7e7b
    dw loc_7d7d - IMAGE_BASE + __zres_end      ; 0x7e7d
    dw loc_7d7d - IMAGE_BASE + __zres_end      ; 0x7e7f
    dw loc_IIUM - IMAGE_BASE + __zres_end      ; 0x7e81
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e83
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e85
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e87
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e89
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e8b
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e8d
    dw loc_GUQH - IMAGE_BASE + __zres_end      ; 0x7e8f
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e91
    dw loc_PKSM - IMAGE_BASE + __zres_end      ; 0x7e93
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e95
    dw loc_IIUM - IMAGE_BASE + __zres_end      ; 0x7e97
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e99
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7e9b
    dw loc_IPHG_7daf - IMAGE_BASE + __zres_end ; 0x7e9d
    dw loc_MNVL_7db7 - IMAGE_BASE + __zres_end ; 0x7e9f
    dw loc_KKVN - IMAGE_BASE + __zres_end      ; 0x7ea1
    dw loc_7d7d - IMAGE_BASE + __zres_end      ; 0x7ea3
    dw loc_IIUM - IMAGE_BASE + __zres_end      ; 0x7ea5
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ea7
    dw loc_JNTO_7dbf - IMAGE_BASE + __zres_end ; 0x7ea9
    dw loc_NJMN - IMAGE_BASE + __zres_end      ; 0x7eab
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ead
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7eaf
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7eb1
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7eb3
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7eb5
    dw loc_7d7d - IMAGE_BASE + __zres_end      ; 0x7eb7
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7eb9
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ebb
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ebd
    dw loc_IPHG_7daf - IMAGE_BASE + __zres_end ; 0x7ebf
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ec1
    dw loc_UHKI - IMAGE_BASE + __zres_end      ; 0x7ec3
    dw loc_SVNV - IMAGE_BASE + __zres_end      ; 0x7ec5
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ec7
    dw loc_VOHG - IMAGE_BASE + __zres_end      ; 0x7ec9
    dw loc_NSNI - IMAGE_BASE + __zres_end      ; 0x7ecb
    dw loc_ONHK - IMAGE_BASE + __zres_end      ; 0x7ecd
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ecf
    dw loc_TPJP - IMAGE_BASE + __zres_end      ; 0x7ed1
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ed3
    dw loc_7ee8 - IMAGE_BASE + __zres_end      ; 0x7ed5
    dw loc_7d7d - IMAGE_BASE + __zres_end      ; 0x7ed7
    dw loc_RMSG - IMAGE_BASE + __zres_end      ; 0x7ed9
loc_7edb:
    cmp ax, strict word 0x3d         ; 0x7edb
    jae short loc_7ee8               ; 0x7ede
    xchg bx, ax                      ; 0x7ee0
    shl bx, 1                        ; 0x7ee1
    jmp [cs:bx - 0x3158]             ; 0x7ee3
loc_7ee8:
    mov ax, word [bss_8464]          ; 0x7ee8
    shl ax, 1                        ; 0x7eeb
    mov bx, ax                       ; 0x7eed
    mov bx, word [bx - 0x7b70]       ; 0x7eef
    mov si, word [bp + 0x6]          ; 0x7ef3
    cmp byte [bx + si + 0x89], 0     ; 0x7ef6
    jbe short loc_7f11               ; 0x7efb
    mov ax, 0x9186                   ; 0x7efd
    push ax                          ; 0x7f00
    mov al, byte [bx + si + 0x89]    ; 0x7f01
    sub ah, ah                       ; 0x7f05
    add ax, 0xed7                    ; 0x7f07
    push ax                          ; 0x7f0a
    call ds_app_mem_TIMR             ; 0x7f0b
    add sp, byte 4                   ; 0x7f0e
loc_7f11:
    jmp short loc_LOHN               ; 0x7f11
loc_7f13:
    mov ax, 0x9136                   ; 0x7f13
    push ax                          ; 0x7f16
    mov ax, word [bss_8464]          ; 0x7f17
    shl ax, 1                        ; 0x7f1a
    mov bx, ax                       ; 0x7f1c
    mov bx, word [bx - 0x7b70]       ; 0x7f1e
    mov si, word [bp + 0x6]          ; 0x7f22
    mov al, byte [bx + si + 0x86]    ; 0x7f25
    sub ah, ah                       ; 0x7f29
    add ax, 0xd2b                    ; 0x7f2b
    push ax                          ; 0x7f2e
    call ds_app_mem_TIMR             ; 0x7f2f
    add sp, byte 4                   ; 0x7f32
loc_LOHN:
    cmp word [bp - 0x00a6], byte 0   ; 0x7f35
    jle short loc_NQGP               ; 0x7f3a
    mov ax, 0x2c                     ; 0x7f3c
    imul word [bss_8462]             ; 0x7f3f
    mov si, ax                       ; 0x7f43
    mov ax, word [bss_8464]          ; 0x7f45
    shl ax, 1                        ; 0x7f48
    mov bx, ax                       ; 0x7f4a
    mov bx, word [bx - 0x7b7e]       ; 0x7f4c
    cmp byte [bx + si + 0x2a], 0xff  ; 0x7f50
    je short loc_NQGP                ; 0x7f54
    mov al, byte [bx + si + 0x2a]    ; 0x7f56
    cbw                              ; 0x7f59
    mov cx, 0xa                      ; 0x7f5a
    cwd                              ; 0x7f5d
    idiv cx                          ; 0x7f5e
    mov word [bp - 0x0078], ax       ; 0x7f60
    mov al, byte [bx + si + 0x2a]    ; 0x7f63
    cbw                              ; 0x7f66
    cwd                              ; 0x7f67
    idiv cx                          ; 0x7f68
    mov word [bp - 0x007a], dx       ; 0x7f6a
    push word [bp - 0x00a6]          ; 0x7f6d
    push dx                          ; 0x7f71
    push word [bp - 0x0078]          ; 0x7f72
    push word [bss_8464]             ; 0x7f75
    call draw_fill_action_slot_table ; 0x7f79
    add sp, byte 8                   ; 0x7f7c
    mov ax, 5                        ; 0x7f7f
    push ax                          ; 0x7f82
    call api_idx_0004_QUPL           ; 0x7f83
    pop cx                           ; 0x7f86
loc_NQGP:
    push word [bp - 0x00aa]          ; 0x7f87
    push word [bp - 0x00aa]          ; 0x7f8b
    mov ax, 0x43                     ; 0x7f8f
    cmp word [bss_8464], byte 0      ; 0x7f92
    jne short loc_OHNO               ; 0x7f97
    mov ax, 1                        ; 0x7f99
loc_OHNO:
    push ax                          ; 0x7f9c
    mov ax, 0x9186                   ; 0x7f9d
    push ax                          ; 0x7fa0
    mov ax, 0x9136                   ; 0x7fa1
    push ax                          ; 0x7fa4
    mov ax, 0x90e6                   ; 0x7fa5
    push ax                          ; 0x7fa8
    mov ax, 0                        ; 0x7fa9
    push ax                          ; 0x7fac
    call api_idx_0004_QSNR           ; 0x7fad
    add sp, byte 0x0e                ; 0x7fb0
    cmp word [bp - 0x0094], byte 0xff ; 0x7fb3
    jne short loc_PGRQ               ; 0x7fb8
    cmp word [bp - 0x00a4], byte 0   ; 0x7fba
    jne short loc_PGRQ               ; 0x7fbf
    push word [bp - 0x0050]          ; 0x7fc1
    push word [bp - 0x004e]          ; 0x7fc4
    mov ax, 0x90e6                   ; 0x7fc7
    push ax                          ; 0x7fca
    call loc_HJSG                    ; 0x7fcb
    add sp, byte 6                   ; 0x7fce
    mov ax, 2                        ; 0x7fd1
    push ax                          ; 0x7fd4
    mov ax, 0x43                     ; 0x7fd5
    cmp word [bp - 0x004e], byte 0   ; 0x7fd8
    jne short loc_RJMI               ; 0x7fdc
    mov ax, 1                        ; 0x7fde
loc_RJMI:
    push ax                          ; 0x7fe1
    mov ax, 0x90e6                   ; 0x7fe2
    push ax                          ; 0x7fe5
    call api_idx_0002_TMNV           ; 0x7fe6
    add sp, byte 6                   ; 0x7fe9
loc_PGRQ:
    cmp word [bp - 0x0076], byte 0xff ; 0x7fec
    je short loc_TRMU                ; 0x7ff0
    mov word [bss_91d8], 0           ; 0x7ff2
    push word [bss_90de]             ; 0x7ff8
    mov ax, word [bp - 0x0094]       ; 0x7ffc
    mov cx, 0x100                    ; 0x8000
    cwd                              ; 0x8003
    idiv cx                          ; 0x8004
    mov ax, dx                       ; 0x8006
    cmp ax, strict word 0x41         ; 0x8008
    je short loc_QGMQ                ; 0x800b
    mov ax, word [bp - 0x0094]       ; 0x800d
    cmp ax, strict word 0xffff       ; 0x8011
    jne short loc_RLNG               ; 0x8014
loc_QGMQ:
    mov ax, 0                        ; 0x8016
    jmp short loc_HKKS               ; 0x8019
loc_RLNG:
    mov ax, 1                        ; 0x801b
loc_HKKS:
    push ax                          ; 0x801e
    push word [bp - 0x0076]          ; 0x801f
    push word [bp - 0x0050]          ; 0x8022
    push word [bp - 0x004e]          ; 0x8025
    call api_idx_0004_PMSR           ; 0x8028
    add sp, byte 0x0a                ; 0x802b
    mov word [bp - 0x009e], 0xffff   ; 0x802e
loc_TRMU:
    mov ax, word [bp - 0x004e]       ; 0x8034
    shl ax, 1                        ; 0x8037
    mov bx, ax                       ; 0x8039
    mov bx, word [bx - 0x7b70]       ; 0x803b
    mov al, byte [bx + 0x8f]         ; 0x803f
    sub ah, ah                       ; 0x8043
    push ax                          ; 0x8045
    mov al, byte [bx + 0x8e]         ; 0x8046
    sub ah, ah                       ; 0x804a
    mov cx, ax                       ; 0x804c
    pop ax                           ; 0x804e
    add ax, cx                       ; 0x804f
    push ax                          ; 0x8051
    mov al, byte [bx + 0x8d]         ; 0x8052
    sub ah, ah                       ; 0x8056
    mov cx, ax                       ; 0x8058
    pop ax                           ; 0x805a
    add ax, cx                       ; 0x805b
    push ax                          ; 0x805d
    mov ax, word [bss_8464]          ; 0x805e
    shl ax, 1                        ; 0x8061
    mov bx, ax                       ; 0x8063
    mov bx, word [bx - 0x7b70]       ; 0x8065
    mov al, byte [bx + 0x8f]         ; 0x8069
    sub ah, ah                       ; 0x806d
    mov cx, ax                       ; 0x806f
    mov al, byte [bx + 0x8e]         ; 0x8071
    sub ah, ah                       ; 0x8075
    mov dx, ax                       ; 0x8077
    add cx, ax                       ; 0x8079
    mov al, byte [bx + 0x8d]         ; 0x807b
    sub ah, ah                       ; 0x807f
    mov dx, ax                       ; 0x8081
    add cx, ax                       ; 0x8083
    pop ax                           ; 0x8085
    sub ax, cx                       ; 0x8086
    mov cx, 2                        ; 0x8088
    cwd                              ; 0x808b
    idiv cx                          ; 0x808c
    mov word [bp - 0x0054], ax       ; 0x808e
    mov bx, word [bp + 0x4]          ; 0x8091
    mov al, byte [bx + 0x28]         ; 0x8094
    cbw                              ; 0x8097
    mov word [bp - 0x007e], ax       ; 0x8098
    cmp word [bss_8464], byte 0      ; 0x809b
    je short loc_IKNT                ; 0x80a0
    jmp near loc_MIOR                ; 0x80a2
loc_IKNT:
    cmp word [bp + 0x8], byte 4      ; 0x80a5
    jne short loc_TJSR               ; 0x80a9
    mov word [bp - 0x007c], 5        ; 0x80ab
    jmp near loc_PTNM                ; 0x80b0
loc_TJSR:
    mov ax, 0x248                    ; 0x80b3
    imul word [bss_8462]             ; 0x80b6
    add ax, word [bp + 0x6]          ; 0x80ba
    mov bx, ax                       ; 0x80bd
    mov al, byte [bx + 0x5d48]       ; 0x80bf
    sub ah, ah                       ; 0x80c3
    cmp ax, 0xff                     ; 0x80c5
    jne short loc_OTSQ               ; 0x80c8
    jmp near loc_IVSS                ; 0x80ca
loc_OTSQ:
    mov ax, 0x248                    ; 0x80cd
    imul word [bss_8462]             ; 0x80d0
    push ax                          ; 0x80d4
    mov al, byte [bx + 0x5d48]       ; 0x80d5
    sub ah, ah                       ; 0x80d9
    mov cx, 0xc                      ; 0x80db
    imul cx                          ; 0x80de
    mov cx, ax                       ; 0x80e0
    pop ax                           ; 0x80e2
    add ax, cx                       ; 0x80e3
    mov bx, ax                       ; 0x80e5
    mov al, byte [bx + 0x5c39]       ; 0x80e7
    sub ah, ah                       ; 0x80eb
    jmp short loc_RLVQ               ; 0x80ed
loc_RHOO:
    mov word [bp - 0x007c], 0        ; 0x80ef
    jmp near loc_MNIM_81eb           ; 0x80f4
loc_NMQL:
    mov word [bp - 0x007c], 1        ; 0x80f7
    jmp near loc_MNIM_81eb           ; 0x80fc
loc_NIIH:
    mov word [bp - 0x007c], 2        ; 0x80ff
    jmp near loc_MNIM_81eb           ; 0x8104
loc_MSOP:
    mov word [bp - 0x007c], 3        ; 0x8107
    jmp near loc_MNIM_81eb           ; 0x810c
loc_VGQG:
    mov word [bp - 0x007c], 4        ; 0x810f
    jmp near loc_MNIM_81eb           ; 0x8114
loc_INNG:
    mov word [bp - 0x007c], 7        ; 0x8117
    jmp near loc_MNIM_81eb           ; 0x811c
loc_ITUL:
    mov word [bp - 0x007c], 6        ; 0x811f
    jmp near loc_MNIM_81eb           ; 0x8124
loc_RULQ:
    mov word [bp - 0x007c], 8        ; 0x8127
    jmp near loc_MNIM_81eb           ; 0x812c
loc_HMVS:
    mov word [bp - 0x007c], 0x12     ; 0x812f
    jmp near loc_MNIM_81eb           ; 0x8134
loc_QPPQ:
    mov word [bp - 0x007c], 9        ; 0x8137
    jmp near loc_MNIM_81eb           ; 0x813c
loc_RLVQ:
    mov cx, 0x2a                     ; 0x813f
    call leaf_loc_RJLR               ; 0x8142
jumptable_8145:
    dw 0                                       ; 0x8145
    dw 0x0001                                  ; 0x8147 ; literal
    dw 0x0002                                  ; 0x8149 ; literal
    dw 0x0003                                  ; 0x814b ; literal
    dw 0x0004                                  ; 0x814d ; literal
    dw 0x0005                                  ; 0x814f ; literal
    dw 0x0006                                  ; 0x8151 ; literal
    dw 0x0007                                  ; 0x8153 ; literal
    dw 0x0008                                  ; 0x8155 ; literal
    dw 0x0009                                  ; 0x8157 ; literal
    dw 0x000a                                  ; 0x8159 ; literal
    dw 0x000b                                  ; 0x815b ; literal
    dw 0x000c                                  ; 0x815d ; literal
    dw 0x000d                                  ; 0x815f ; literal
    dw 0x000e                                  ; 0x8161 ; literal
    dw 0x000f                                  ; 0x8163 ; literal
    dw 0x0010                                  ; 0x8165 ; literal
    dw 0x0011                                  ; 0x8167 ; literal
    dw 0x0012                                  ; 0x8169 ; literal
    dw 0x0013                                  ; 0x816b ; literal
    dw 0x0014                                  ; 0x816d ; literal
    dw 0x0018                                  ; 0x816f ; literal
    dw 0x0025                                  ; 0x8171 ; literal
    dw 0x0026                                  ; 0x8173 ; literal
    dw 0x0033                                  ; 0x8175 ; literal
    dw 0x0034                                  ; 0x8177 ; literal
    dw 0x0035                                  ; 0x8179 ; literal
    dw 0x0036                                  ; 0x817b ; literal
    dw 0x0037                                  ; 0x817d ; literal
    dw 0x0038                                  ; 0x817f ; literal
    dw 0x0039                                  ; 0x8181 ; literal
    dw 0x003a                                  ; 0x8183 ; literal
    dw 0x003b                                  ; 0x8185 ; literal
    dw 0x0058                                  ; 0x8187 ; literal
    dw 0x005a                                  ; 0x8189 ; literal
    dw 0x0068                                  ; 0x818b ; literal
    dw 0x0069                                  ; 0x818d ; literal
    dw 0x006a                                  ; 0x818f ; literal
    dw 0x006c                                  ; 0x8191 ; literal
    dw 0x006e                                  ; 0x8193 ; literal
    dw 0x0072                                  ; 0x8195 ; literal
    dw loc_RHOO - IMAGE_BASE + __zres_end      ; 0x8197
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x8199
    dw loc_NIIH - IMAGE_BASE + __zres_end      ; 0x819b
    dw loc_NIIH - IMAGE_BASE + __zres_end      ; 0x819d
    dw loc_MSOP - IMAGE_BASE + __zres_end      ; 0x819f
    dw loc_MSOP - IMAGE_BASE + __zres_end      ; 0x81a1
    dw loc_MSOP - IMAGE_BASE + __zres_end      ; 0x81a3
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81a5
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81a7
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81a9
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81ab
    dw loc_INNG - IMAGE_BASE + __zres_end      ; 0x81ad
    dw loc_INNG - IMAGE_BASE + __zres_end      ; 0x81af
    dw loc_ITUL - IMAGE_BASE + __zres_end      ; 0x81b1
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81b3
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81b5
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81b7
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81b9
    dw loc_RHOO - IMAGE_BASE + __zres_end      ; 0x81bb
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81bd
    dw loc_NIIH - IMAGE_BASE + __zres_end      ; 0x81bf
    dw loc_RULQ - IMAGE_BASE + __zres_end      ; 0x81c1
    dw loc_INNG - IMAGE_BASE + __zres_end      ; 0x81c3
    dw loc_RULQ - IMAGE_BASE + __zres_end      ; 0x81c5
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81c7
    dw loc_MSOP - IMAGE_BASE + __zres_end      ; 0x81c9
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81cb
    dw loc_MSOP - IMAGE_BASE + __zres_end      ; 0x81cd
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81cf
    dw loc_MSOP - IMAGE_BASE + __zres_end      ; 0x81d1
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81d3
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81d5
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81d7
    dw loc_RHOO - IMAGE_BASE + __zres_end      ; 0x81d9
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81db
    dw loc_HMVS - IMAGE_BASE + __zres_end      ; 0x81dd
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81df
    dw loc_VGQG - IMAGE_BASE + __zres_end      ; 0x81e1
    dw loc_NMQL - IMAGE_BASE + __zres_end      ; 0x81e3
    dw loc_HMVS - IMAGE_BASE + __zres_end      ; 0x81e5
    dw loc_HMVS - IMAGE_BASE + __zres_end      ; 0x81e7
    dw loc_QPPQ - IMAGE_BASE + __zres_end      ; 0x81e9
loc_MNIM_81eb:
    jmp short loc_PTNM               ; 0x81eb
loc_IVSS:
    mov word [bp - 0x007c], 9        ; 0x81ed
loc_PTNM:
    cmp word [bp - 0x007c], byte 9   ; 0x81f2
    jne short loc_VQQO               ; 0x81f6
    mov ax, 0x248                    ; 0x81f8
    imul word [bss_8462]             ; 0x81fb
    mov bx, ax                       ; 0x81ff
    cmp byte [bx + 0x5d75], 0        ; 0x8201
    ja short loc_VQQO                ; 0x8206
    cmp byte [bx + 0x5e2d], 0xc      ; 0x8208
    je short loc_VQQO                ; 0x820d
    cmp byte [bx + 0x5e2d], 0xd      ; 0x820f
    jne short loc_MSPK               ; 0x8214
loc_VQQO:
    cmp word [bp - 0x007c], byte 0x12 ; 0x8216
    jne short loc_VPQV               ; 0x821a
    mov ax, 0x248                    ; 0x821c
    imul word [bss_8462]             ; 0x821f
    mov bx, ax                       ; 0x8223
    cmp byte [bx + 0x5d7e], 0        ; 0x8225
    jbe short loc_MSPK               ; 0x822a
loc_VPQV:
    mov ax, 2                        ; 0x822c
    push ax                          ; 0x822f
    push word [bp - 0x007c]          ; 0x8230
    push word [bss_8462]             ; 0x8233
    call loc_SIKN                    ; 0x8237
    add sp, byte 6                   ; 0x823a
loc_MSPK:
    push word [bss_8462]             ; 0x823d
    call api_idx_0012_PGSL           ; 0x8241
    pop cx                           ; 0x8244
    mov si, ax                       ; 0x8245
    lea di, word [bp - 0x008e]       ; 0x8247
    mov cx, ds                       ; 0x824b
    mov es, cx                       ; 0x824d
    mov cx, 7                        ; 0x824f
    rep movsw                        ; 0x8252
    mov ax, word [bp - 0x008a]       ; 0x8254
    cmp word [bp + 0x6], byte 0      ; 0x8258
    jne short loc_MSSV               ; 0x825c
    mov ax, word [bp - 0x008c]       ; 0x825e
loc_MSSV:
    mov word [bp - 0x0090], ax       ; 0x8262
    mov bx, word [bp + 0x4]          ; 0x8266
    push word [bx + 0x8]             ; 0x8269
    push word [bx + 0x6]             ; 0x826c
    mov ax, 0                        ; 0x826f
    push ax                          ; 0x8272
    call api_idx_0004_QUVO           ; 0x8273
    add sp, byte 6                   ; 0x8276
    push ax                          ; 0x8279
    mov ax, 0x248                    ; 0x827a
    imul word [bss_8462]             ; 0x827d
    push ax                          ; 0x8281
    mov ax, 0x12                     ; 0x8282
    imul word [bp + 0x6]             ; 0x8285
    mov cx, ax                       ; 0x8288
    pop ax                           ; 0x828a
    add ax, cx                       ; 0x828b
    mov bx, ax                       ; 0x828d
    mov al, byte [bx + 0x5d32]       ; 0x828f
    cbw                              ; 0x8293
    mov cx, ax                       ; 0x8294
    pop ax                           ; 0x8296
    add ax, cx                       ; 0x8297
    push ax                          ; 0x8299
    mov ax, 0x248                    ; 0x829a
    imul word [bss_8462]             ; 0x829d
    mov bx, ax                       ; 0x82a1
    mov al, byte [bx + 0x5e3a]       ; 0x82a3
    cbw                              ; 0x82a7
    mov cx, ax                       ; 0x82a8
    pop ax                           ; 0x82aa
    add ax, cx                       ; 0x82ab
    push ax                          ; 0x82ad
    mov bx, word [bp + 0x4]          ; 0x82ae
    mov al, byte [bx + 0x27]         ; 0x82b1
    cbw                              ; 0x82b4
    mov cx, 5                        ; 0x82b5
    imul cx                          ; 0x82b8
    mov cx, ax                       ; 0x82ba
    pop ax                           ; 0x82bc
    add ax, cx                       ; 0x82bd
    add ax, word [bp - 0x0054]       ; 0x82bf
    mov cx, ax                       ; 0x82c2
    mov ax, word [bp - 0x0090]       ; 0x82c4
    add cx, ax                       ; 0x82c8
    mov ax, cx                       ; 0x82ca
    push ax                          ; 0x82cc
    mov ax, 0x248                    ; 0x82cd
    imul word [bss_8462]             ; 0x82d0
    add ax, word [bp - 0x007c]       ; 0x82d4
    mov bx, ax                       ; 0x82d7
    mov al, byte [bx + 0x5d6c]       ; 0x82d9
    sub ah, ah                       ; 0x82dd
    mov cx, 3                        ; 0x82df
    cwd                              ; 0x82e2
    idiv cx                          ; 0x82e3
    mov cx, ax                       ; 0x82e5
    pop ax                           ; 0x82e7
    sub ax, cx                       ; 0x82e8
    mov word [bp - 0x0056], ax       ; 0x82ea
    cmp word [bp - 0x007c], byte 0x12 ; 0x82ed
    jne short loc_RMQV               ; 0x82f1
    mov ax, 0x248                    ; 0x82f3
    imul word [bss_8462]             ; 0x82f6
    push ax                          ; 0x82fa
    mov ax, 0x12                     ; 0x82fb
    imul word [bp + 0x6]             ; 0x82fe
    mov cx, ax                       ; 0x8301
    pop ax                           ; 0x8303
    add ax, cx                       ; 0x8304
    mov bx, ax                       ; 0x8306
    mov al, byte [bx + 0x5d32]       ; 0x8308
    cbw                              ; 0x830c
    push ax                          ; 0x830d
    mov bx, word [bp + 0x4]          ; 0x830e
    mov al, byte [bx + 0x27]         ; 0x8311
    cbw                              ; 0x8314
    mov cx, 5                        ; 0x8315
    imul cx                          ; 0x8318
    mov cx, ax                       ; 0x831a
    pop ax                           ; 0x831c
    add ax, cx                       ; 0x831d
    add ax, word [bp - 0x0054]       ; 0x831f
    add ax, strict word 0x55         ; 0x8322
    push ax                          ; 0x8325
    mov ax, 0x248                    ; 0x8326
    imul word [bss_8462]             ; 0x8329
    mov bx, ax                       ; 0x832d
    mov al, byte [bx + 0x5d7e]       ; 0x832f
    sub ah, ah                       ; 0x8333
    mov cx, 2                        ; 0x8335
    cwd                              ; 0x8338
    idiv cx                          ; 0x8339
    mov cx, ax                       ; 0x833b
    pop ax                           ; 0x833d
    sub ax, cx                       ; 0x833e
    mov word [bp - 0x0056], ax       ; 0x8340
loc_RMQV:
    mov ax, 0x248                    ; 0x8343
    imul word [bss_8462]             ; 0x8346
    push ax                          ; 0x834a
    mov ax, 0x12                     ; 0x834b
    imul word [bp + 0x6]             ; 0x834e
    mov cx, ax                       ; 0x8351
    pop ax                           ; 0x8353
    add ax, cx                       ; 0x8354
    mov bx, ax                       ; 0x8356
    mov ax, word [bx + 0x5d24]       ; 0x8358
    mov word [bp - 0x0070], ax       ; 0x835c
    mov ax, word [bx + 0x5d26]       ; 0x835f
    mov word [bp - 0x006e], ax       ; 0x8363
    add bx, strict word 0x5d24       ; 0x8366
    mov word [bp - 0x0052], bx       ; 0x836a
    mov ax, 0x248                    ; 0x836d
    imul word [bss_8462]             ; 0x8370
    add ax, word [bp + 0x6]          ; 0x8374
    mov bx, ax                       ; 0x8377
    mov al, byte [bx + 0x5d48]       ; 0x8379
    sub ah, ah                       ; 0x837d
    mov word [bp - 0x0072], ax       ; 0x837f
    cmp word [bp + 0x8], byte 8      ; 0x8382
    je short loc_IHLI                ; 0x8386
    jmp near loc_KLIJ                ; 0x8388
loc_IHLI:
    mov word [bp - 0x007e], 0        ; 0x838b
    mov ax, 0x248                    ; 0x8390
    imul word [bss_8462]             ; 0x8393
    push ax                          ; 0x8397
    mov ax, 0xc                      ; 0x8398
    imul word [bp - 0x0072]          ; 0x839b
    mov cx, ax                       ; 0x839e
    pop ax                           ; 0x83a0
    add ax, cx                       ; 0x83a1
    mov bx, ax                       ; 0x83a3
    mov al, byte [bx + 0x5c3b]       ; 0x83a5
    sub ah, ah                       ; 0x83a9
    test ax, 0x20                    ; 0x83ab
    jne short loc_KTPL               ; 0x83ae
    jmp near loc_VULJ                ; 0x83b0
loc_KTPL:
    cmp byte [bx + 0x5c3a], 0        ; 0x83b3
    jne short loc_OOHJ               ; 0x83b8
    mov ax, word [bss_9058]          ; 0x83ba
    mov cx, 2                        ; 0x83bd
    cwd                              ; 0x83c0
    idiv cx                          ; 0x83c1
    push ax                          ; 0x83c3
    call api_idx_0004_QUPL           ; 0x83c4
    pop cx                           ; 0x83c7
    mov ax, 2                        ; 0x83c8
    push ax                          ; 0x83cb
    mov ax, 0x55                     ; 0x83cc
    push ax                          ; 0x83cf
    mov ax, 0xc93                    ; 0x83d0
    push ax                          ; 0x83d3
    call api_idx_0050_PLNP           ; 0x83d4
    add sp, byte 6                   ; 0x83d7
    mov ax, word [bss_9058]          ; 0x83da
    mov cx, 2                        ; 0x83dd
    cwd                              ; 0x83e0
    idiv cx                          ; 0x83e1
    push ax                          ; 0x83e3
    call api_idx_0004_QUPL           ; 0x83e4
    pop cx                           ; 0x83e7
    ret                              ; 0x83e8
loc_OOHJ:
    mov ax, 0x248                    ; 0x83e9
    imul word [bss_8462]             ; 0x83ec
    push ax                          ; 0x83f0
    mov ax, 0xc                      ; 0x83f1
    imul word [bp - 0x0072]          ; 0x83f4
    mov cx, ax                       ; 0x83f7
    pop ax                           ; 0x83f9
    add ax, cx                       ; 0x83fa
    mov bx, ax                       ; 0x83fc
    mov al, byte [bx + 0x5c3a]       ; 0x83fe
    sub ah, ah                       ; 0x8402
    cmp ax, 0xff                     ; 0x8404
    je short loc_RHUG                ; 0x8407
    dec byte [bx + 0x5c3a]           ; 0x8409
loc_RHUG:
    mov bx, word [bp - 0x0052]       ; 0x840d
    cmp byte [bx + 0x11], 0x16       ; 0x8410
    jne short loc_MNIM_8447          ; 0x8414
    mov ax, word [bp - 0x004e]       ; 0x8416
    shl ax, 1                        ; 0x8419
    mov bx, ax                       ; 0x841b
    mov bx, word [bx - 0x7b70]       ; 0x841d
    cmp byte [bx + 0xd6], 0x16       ; 0x8421
    jne short loc_MNIM_8447          ; 0x8426
    mov word [bp - 0x00a2], 1        ; 0x8428
    mov ax, 4                        ; 0x842e
    push ax                          ; 0x8431
    push ax                          ; 0x8432
    push ax                          ; 0x8433
    call ds_app_HGSV                 ; 0x8434
    add sp, byte 6                   ; 0x8437
    mov bx, ax                       ; 0x843a
    mov ax, word [bx]                ; 0x843c
    mov word [bp - 0x0070], ax       ; 0x843e
    mov ax, word [bx + 0x2]          ; 0x8441
    mov word [bp - 0x006e], ax       ; 0x8444
loc_MNIM_8447:
    jmp short loc_MNIM_84ae          ; 0x8447
loc_VULJ:
    mov ax, 0x248                    ; 0x8449
    imul word [bss_8462]             ; 0x844c
    mov bx, ax                       ; 0x8450
    mov al, byte [bx + 0x5d49]       ; 0x8452
    sub ah, ah                       ; 0x8456
    mov word [bp - 0x0074], ax       ; 0x8458
    cmp ax, 0xff                     ; 0x845b
    je short loc_MNIM_84ae           ; 0x845e
    mov cx, 0xc                      ; 0x8460
    imul cx                          ; 0x8463
    add bx, ax                       ; 0x8465
    cmp byte [bx + 0x5c38], 4        ; 0x8467
    jne short loc_MNIM_84ae          ; 0x846c
    mov ax, 0x248                    ; 0x846e
    imul word [bss_8462]             ; 0x8471
    mov bx, ax                       ; 0x8475
    mov ax, word [bx + 0x5d36]       ; 0x8477
    mov word [bp - 0x0070], ax       ; 0x847b
    mov ax, word [bx + 0x5d38]       ; 0x847e
    mov word [bp - 0x006e], ax       ; 0x8482
    add bx, strict word 0x5d36       ; 0x8485
    mov word [bp - 0x0052], bx       ; 0x8489
    mov ax, 0x248                    ; 0x848c
    imul word [bss_8462]             ; 0x848f
    mov bx, ax                       ; 0x8493
    mov al, byte [bx + 0x5d44]       ; 0x8495
    cbw                              ; 0x8499
    add word [bp - 0x0056], ax       ; 0x849a
    push word [bp - 0x0074]          ; 0x849d
    mov ax, 0                        ; 0x84a0
    push ax                          ; 0x84a3
    push word [bss_8462]             ; 0x84a4
    call api_idx_000e_PTNT           ; 0x84a8
    add sp, byte 6                   ; 0x84ab
loc_MNIM_84ae:
    jmp short loc_VTUI               ; 0x84ae
loc_KLIJ:
    cmp word [bp + 0x8], byte 4      ; 0x84b0
    jne short loc_VTUI               ; 0x84b4
    mov ax, 0x248                    ; 0x84b6
    imul word [bss_8462]             ; 0x84b9
    push ax                          ; 0x84bd
    mov ax, 0xc                      ; 0x84be
    imul word [bp - 0x0072]          ; 0x84c1
    mov cx, ax                       ; 0x84c4
    pop ax                           ; 0x84c6
    add ax, cx                       ; 0x84c7
    mov bx, ax                       ; 0x84c9
    mov al, byte [bx + 0x5c38]       ; 0x84cb
    cmp al, 0xe                      ; 0x84cf
    je short loc_USKN                ; 0x84d1
    cmp al, 0xc                      ; 0x84d3
    jae short loc_LJQG               ; 0x84d5
    cmp al, 2                        ; 0x84d7
    je short loc_LJQG                ; 0x84d9
loc_USKN:
    mov byte [bx + 0x5c3a], 1        ; 0x84db
loc_LJQG:
    mov word [bp - 0x007e], 0        ; 0x84e0
    push word [bp - 0x0072]          ; 0x84e5
    mov ax, 0                        ; 0x84e8
    push ax                          ; 0x84eb
    push word [bss_8462]             ; 0x84ec
    call api_idx_000e_PTNT           ; 0x84f0
    add sp, byte 6                   ; 0x84f3
loc_VTUI:
    mov ax, 0x2c                     ; 0x84f6
    imul word [bp - 0x0050]          ; 0x84f9
    mov si, ax                       ; 0x84fc
    mov ax, word [bp - 0x004e]       ; 0x84fe
    shl ax, 1                        ; 0x8501
    mov bx, ax                       ; 0x8503
    mov bx, word [bx - 0x7b7e]       ; 0x8505
    push word [bx + si + 0x8]        ; 0x8509
    push word [bx + si + 0x6]        ; 0x850c
    mov ax, 1                        ; 0x850f
    push ax                          ; 0x8512
    call api_idx_0004_QUVO           ; 0x8513
    add sp, byte 6                   ; 0x8516
    push ax                          ; 0x8519
    mov ax, 0x2c                     ; 0x851a
    imul word [bp - 0x0050]          ; 0x851d
    mov si, ax                       ; 0x8520
    mov ax, word [bp - 0x004e]       ; 0x8522
    shl ax, 1                        ; 0x8525
    mov bx, ax                       ; 0x8527
    mov bx, word [bx - 0x7b7e]       ; 0x8529
    mov al, byte [bx + si + 0x26]    ; 0x852d
    cbw                              ; 0x8530
    mov cx, ax                       ; 0x8531
    pop ax                           ; 0x8533
    add ax, cx                       ; 0x8534
    mov word [bp - 0x0058], ax       ; 0x8536
    cmp word [bss_82f2], byte 0      ; 0x8539
    jle short loc_QINI               ; 0x853e
    mov ax, word [bss_82f4]          ; 0x8540
    add word [bp - 0x0058], ax       ; 0x8543
loc_QINI:
    mov ax, word [bp - 0x004e]       ; 0x8546
    shl ax, 1                        ; 0x8549
    mov bx, ax                       ; 0x854b
    mov bx, word [bx - 0x7b70]       ; 0x854d
    mov al, byte [bx + 0xc4]         ; 0x8551
    cbw                              ; 0x8555
    add ax, word [bp - 0x0058]       ; 0x8556
    mov word [bp - 0x005a], ax       ; 0x8559
    mov si, word [bp + 0x8]          ; 0x855c
    mov al, byte [bx + si + 0xcc]    ; 0x855f
    cbw                              ; 0x8563
    add ax, word [bp - 0x0058]       ; 0x8564
    mov word [bp - 0x005c], ax       ; 0x8567
    jmp near loc_HKTT                ; 0x856a
loc_MIOR:
    mov bx, word [bp + 0x4]          ; 0x856d
    push word [bx + 0x8]             ; 0x8570
    push word [bx + 0x6]             ; 0x8573
    mov ax, 0                        ; 0x8576
    push ax                          ; 0x8579
    call api_idx_0004_QUVO           ; 0x857a
    add sp, byte 6                   ; 0x857d
    push ax                          ; 0x8580
    mov ax, 0x12                     ; 0x8581
    imul word [bp + 0x6]             ; 0x8584
    mov si, ax                       ; 0x8587
    mov ax, word [bss_8464]          ; 0x8589
    shl ax, 1                        ; 0x858c
    mov bx, ax                       ; 0x858e
    mov bx, word [bx - 0x7b70]       ; 0x8590
    mov al, byte [bx + si + 0x52]    ; 0x8594
    cbw                              ; 0x8597
    mov cx, ax                       ; 0x8598
    pop ax                           ; 0x859a
    add ax, cx                       ; 0x859b
    push ax                          ; 0x859d
    mov bx, word [bp + 0x4]          ; 0x859e
    mov al, byte [bx + 0x27]         ; 0x85a1
    cbw                              ; 0x85a4
    mov cx, 5                        ; 0x85a5
    imul cx                          ; 0x85a8
    mov cx, ax                       ; 0x85aa
    pop ax                           ; 0x85ac
    add ax, cx                       ; 0x85ad
    add ax, word [bp - 0x0054]       ; 0x85af
    mov word [bp - 0x0056], ax       ; 0x85b2
    mov ax, word [bss_8464]          ; 0x85b5
    shl ax, 1                        ; 0x85b8
    mov bx, ax                       ; 0x85ba
    mov bx, word [bx - 0x7b70]       ; 0x85bc
    mov ax, word [bx + si + 0x44]    ; 0x85c0
    mov word [bp - 0x0070], ax       ; 0x85c3
    mov ax, word [bx + si + 0x46]    ; 0x85c6
    mov word [bp - 0x006e], ax       ; 0x85c9
    add bx, si                       ; 0x85cc
    add bx, byte 0x44                ; 0x85ce
    mov word [bp - 0x0052], bx       ; 0x85d1
    cmp word [bp + 0x8], byte 4      ; 0x85d4
    je short loc_SIOJ                ; 0x85d8
    cmp word [bp + 0x8], byte 8      ; 0x85da
    jne short loc_UHGI               ; 0x85de
loc_SIOJ:
    mov word [bp - 0x007e], 0        ; 0x85e0
loc_UHGI:
    cmp word [bp - 0x004e], byte 0   ; 0x85e5
    jne short loc_QRPM               ; 0x85e9
    push word [bp - 0x0050]          ; 0x85eb
    call api_idx_0012_PGSL           ; 0x85ee
    pop cx                           ; 0x85f1
    mov si, ax                       ; 0x85f2
    lea di, word [bp - 0x008e]       ; 0x85f4
    mov cx, ds                       ; 0x85f8
    mov es, cx                       ; 0x85fa
    mov cx, 7                        ; 0x85fc
    rep movsw                        ; 0x85ff
    mov ax, word [bp - 0x008e]       ; 0x8601
    mov word [bp - 0x0092], ax       ; 0x8605
    jmp short loc_NSNK               ; 0x8609
loc_QRPM:
    mov word [bp - 0x0092], 0        ; 0x860b
loc_NSNK:
    mov ax, 0x2c                     ; 0x8611
    imul word [bp - 0x0050]          ; 0x8614
    mov si, ax                       ; 0x8617
    mov ax, word [bp - 0x004e]       ; 0x8619
    shl ax, 1                        ; 0x861c
    mov bx, ax                       ; 0x861e
    mov bx, word [bx - 0x7b7e]       ; 0x8620
    push word [bx + si + 0x8]        ; 0x8624
    push word [bx + si + 0x6]        ; 0x8627
    mov ax, 1                        ; 0x862a
    push ax                          ; 0x862d
    call api_idx_0004_QUVO           ; 0x862e
    add sp, byte 6                   ; 0x8631
    push ax                          ; 0x8634
    mov ax, 0x2c                     ; 0x8635
    imul word [bp - 0x0050]          ; 0x8638
    mov si, ax                       ; 0x863b
    mov ax, word [bp - 0x004e]       ; 0x863d
    shl ax, 1                        ; 0x8640
    mov bx, ax                       ; 0x8642
    mov bx, word [bx - 0x7b7e]       ; 0x8644
    mov al, byte [bx + si + 0x26]    ; 0x8648
    cbw                              ; 0x864b
    mov cx, ax                       ; 0x864c
    pop ax                           ; 0x864e
    add ax, cx                       ; 0x864f
    mov word [bp - 0x0058], ax       ; 0x8651
    cmp word [bp - 0x004e], byte 0   ; 0x8654
    jne short loc_TMML               ; 0x8658
    cmp word [bss_82f6], byte 0      ; 0x865a
    jle short loc_TMML               ; 0x865f
    mov ax, word [bss_82f8]          ; 0x8661
    sub word [bp - 0x0058], ax       ; 0x8664
loc_TMML:
    mov ax, word [bp - 0x004e]       ; 0x8667
    shl ax, 1                        ; 0x866a
    mov bx, ax                       ; 0x866c
    mov bx, word [bx - 0x7b70]       ; 0x866e
    mov al, byte [bx + 0xc4]         ; 0x8672
    cbw                              ; 0x8676
    add ax, word [bp - 0x0058]       ; 0x8677
    add ax, word [bp - 0x0092]       ; 0x867a
    mov word [bp - 0x005a], ax       ; 0x867e
    mov ax, word [bp - 0x0058]       ; 0x8681
    add ax, word [bp - 0x0092]       ; 0x8684
    mov word [bp - 0x005c], ax       ; 0x8688
    cmp word [bp - 0x004e], byte 0   ; 0x868b
    je short loc_HKTT                ; 0x868f
    mov si, word [bp + 0x8]          ; 0x8691
    mov al, byte [bx + si + 0xcc]    ; 0x8694
    cbw                              ; 0x8698
    add word [bp - 0x005c], ax       ; 0x8699
loc_HKTT:
    mov word [bp - 0x009a], 1        ; 0x869c
    mov bx, word [bp + 0x4]          ; 0x86a2
    cmp byte [bx + 0x2b], 0          ; 0x86a5
    je short loc_GTTM                ; 0x86a9
    mov ax, 0xa                      ; 0x86ab
    cmp word [bp - 0x005a], byte 0x0a ; 0x86ae
    jle short loc_IGJU_86b7          ; 0x86b2
    mov ax, word [bp - 0x005a]       ; 0x86b4
loc_IGJU_86b7:
    mov word [bp - 0x005a], ax       ; 0x86b7
    mov word [bp - 0x009a], 2        ; 0x86ba
loc_GTTM:
    cmp byte [bx + 0x12], 0          ; 0x86c0
    jbe short loc_SSQU_86e6          ; 0x86c4
    mov ax, word [bp - 0x0056]       ; 0x86c6
    push ax                          ; 0x86c9
    cmp ax, strict word 0x5a         ; 0x86ca
    pop ax                           ; 0x86cd
    jge short loc_GJRT               ; 0x86ce
    mov ax, 0x5a                     ; 0x86d0
loc_GJRT:
    mov word [bp - 0x0056], ax       ; 0x86d3
    mov ax, word [bp - 0x005a]       ; 0x86d6
    push ax                          ; 0x86d9
    cmp ax, strict word 0            ; 0x86da
    pop ax                           ; 0x86dd
    jle short loc_QVGH               ; 0x86de
    mov ax, 0                        ; 0x86e0
loc_QVGH:
    mov word [bp - 0x005a], ax       ; 0x86e3
loc_SSQU_86e6:
    cmp byte [bx + 0x16], 0          ; 0x86e6
    ja short loc_TTKS                ; 0x86ea
    cmp byte [bx + 0xf], 0           ; 0x86ec
    ja short loc_TTKS                ; 0x86f0
    cmp byte [bx + 0x17], 0          ; 0x86f2
    jbe short loc_JVML               ; 0x86f6
loc_TTKS:
    add word [bp - 0x0056], byte 0x19 ; 0x86f8
loc_JVML:
    mov ax, 0x2c                     ; 0x86fc
    imul word [bp - 0x0050]          ; 0x86ff
    mov si, ax                       ; 0x8702
    mov ax, word [bp - 0x004e]       ; 0x8704
    shl ax, 1                        ; 0x8707
    mov bx, ax                       ; 0x8709
    mov bx, word [bx - 0x7b7e]       ; 0x870b
    cmp byte [bx + si + 0x12], 0     ; 0x870f
    ja short loc_SQNT                ; 0x8713
    cmp byte [bx + si + 0x10], 0     ; 0x8715
    ja short loc_SQNT                ; 0x8719
    cmp byte [bx + si + 0x11], 0     ; 0x871b
    ja short loc_SQNT                ; 0x871f
    cmp byte [bx + si + 0x22], 2     ; 0x8721
    jne short loc_MLOM               ; 0x8725
loc_SQNT:
    mov word [bp - 0x005a], 0xf      ; 0x8727
    mov word [bp - 0x009a], 2        ; 0x872c
loc_MLOM:
    cmp byte [bx + si + 0x16], 0     ; 0x8732
    ja short loc_THTH                ; 0x8736
    cmp byte [bx + si + 0xf], 0      ; 0x8738
    jbe short loc_VPSR               ; 0x873c
loc_THTH:
    add word [bp - 0x005a], byte 4   ; 0x873e
loc_VPSR:
    mov ax, word [bss_8464]          ; 0x8742
    shl ax, 1                        ; 0x8745
    mov bx, ax                       ; 0x8747
    mov bx, word [bx - 0x7b70]       ; 0x8749
    cmp byte [bx + 0x8c], 0x11       ; 0x874d
    jbe short loc_LKPJ               ; 0x8752
    mov ax, 2                        ; 0x8754
    jmp short loc_TLRV               ; 0x8757
loc_LKPJ:
    mov ax, 0                        ; 0x8759
    cmp byte [bx + 0x8c], 0xf        ; 0x875c
    jbe short loc_TLRV               ; 0x8761
    mov ax, 1                        ; 0x8763
loc_TLRV:
    mov word [bp - 0x0080], ax       ; 0x8766
    mov ax, word [bp - 0x004e]       ; 0x8769
    shl ax, 1                        ; 0x876c
    mov bx, ax                       ; 0x876e
    mov bx, word [bx - 0x7b7e]       ; 0x8770
    mov al, byte [bx + si + 0x29]    ; 0x8774
    cbw                              ; 0x8777
    mov cx, 0xa                      ; 0x8778
    cwd                              ; 0x877b
    idiv cx                          ; 0x877c
    mov cx, ax                       ; 0x877e
    mov ax, word [bss_8464]          ; 0x8780
    shl ax, 1                        ; 0x8783
    mov bx, ax                       ; 0x8785
    mov bx, word [bx - 0x7b70]       ; 0x8787
    mov al, byte [bx + 0xda]         ; 0x878b
    sub ah, ah                       ; 0x878f
    sub ax, cx                       ; 0x8791
    push ax                          ; 0x8793
    call ds_app_PUNN                 ; 0x8794
    pop cx                           ; 0x8797
    inc ax                           ; 0x8798
    mov word [bp - 0x0064], ax       ; 0x8799
    cmp ax, strict word 1            ; 0x879c
    jge short loc_QJSK               ; 0x879f
    mov word [bp - 0x0064], 1        ; 0x87a1
loc_QJSK:
    cmp word [bp - 0x0064], byte 4   ; 0x87a6
    jle short loc_QLJK               ; 0x87aa
    mov word [bp - 0x0064], 4        ; 0x87ac
loc_QLJK:
    mov ax, word [bp + 0x8]          ; 0x87b1
    jmp near loc_SUQU                ; 0x87b4
