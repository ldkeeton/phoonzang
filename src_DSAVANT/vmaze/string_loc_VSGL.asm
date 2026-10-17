; auto-generated
string_loc_VSGL:
    jmp short loc_OQNV               ; 0x4b69
jumptable_4b6b:
    dw string_loc_VSGL - IMAGE_BASE + __zres_end ; 0x4b6b
    dw loc_GMQM - IMAGE_BASE + __zres_end      ; 0x4b6d
    dw loc_NQIP - IMAGE_BASE + __zres_end      ; 0x4b6f
    dw string_loc_NVUT - IMAGE_BASE + __zres_end ; 0x4b71
    dw string_loc_MNIM - IMAGE_BASE + __zres_end ; 0x4b73
loc_4b75:
    cmp ax, strict word 5            ; 0x4b75
    jae short loc_OQNV               ; 0x4b78
    xchg bx, ax                      ; 0x4b7a
    shl bx, 1                        ; 0x4b7b
    jmp [cs:bx - 0x644e]             ; 0x4b7d
loc_OQNV:
    cmp word [bp - 0x0012], byte 0   ; 0x4b82
    jne short loc_TGJG               ; 0x4b86
    jmp near loc_NHGQ                ; 0x4b88
loc_TGJG:
    mov ax, 0xa                      ; 0x4b8b
    imul word [bp + 0x4]             ; 0x4b8e
    mov cx, word [bp + 0x6]          ; 0x4b91
    shl cx, 1                        ; 0x4b94
    add ax, cx                       ; 0x4b96
    mov bx, ax                       ; 0x4b98
    cmp word [bx - 0x6dc4], byte 0   ; 0x4b9a
    jne short loc_PQNP               ; 0x4b9f
    cmp word [bx - 0x6d46], byte 0   ; 0x4ba1
    jne short loc_PQNP               ; 0x4ba6
    jmp near loc_NHGQ                ; 0x4ba8
loc_PQNP:
    cmp word [bp + 0x6], byte 2      ; 0x4bab
    jne short loc_VRLH               ; 0x4baf
    mov ax, word [bp + 0x24]         ; 0x4bb1
    add ax, word [bp + 0x4]          ; 0x4bb4
    push ax                          ; 0x4bb7
    call loc_UMHI_2eac               ; 0x4bb8
    pop cx                           ; 0x4bbb
    push ax                          ; 0x4bbc
    mov ax, 2                        ; 0x4bbd
    push ax                          ; 0x4bc0
    mov ax, word [bp + 0x26]         ; 0x4bc1
    add ax, word [bp + 0x4]          ; 0x4bc4
    push ax                          ; 0x4bc7
    mov ax, word [bp + 0x24]         ; 0x4bc8
    add ax, word [bp + 0x4]          ; 0x4bcb
    push ax                          ; 0x4bce
    call loc_LPLI_2ec0               ; 0x4bcf
    add sp, byte 4                   ; 0x4bd2
    push ax                          ; 0x4bd5
    mov ax, 3                        ; 0x4bd6
    push ax                          ; 0x4bd9
    call thunk_34                    ; 0x4bda
    add sp, byte 8                   ; 0x4bdd
    jmp short loc_PRNS               ; 0x4be0
loc_VRLH:
    cmp word [bp + 0x4], byte 0      ; 0x4be2
    jle short loc_PRNS               ; 0x4be6
    mov ax, 0xffff                   ; 0x4be8
    cmp word [bp + 0x6], byte 3      ; 0x4beb
    jne short loc_NMRU               ; 0x4bef
    mov ax, word [bp + 0x2e]         ; 0x4bf1
    add ax, word [bp + 0x4]          ; 0x4bf4
loc_NMRU:
    push ax                          ; 0x4bf7
    mov ax, 2                        ; 0x4bf8
    push ax                          ; 0x4bfb
    cmp word [bp + 0x6], byte 3      ; 0x4bfc
    jne short loc_MIMN               ; 0x4c00
    mov ax, word [bp + 0x2e]         ; 0x4c02
    add ax, word [bp + 0x4]          ; 0x4c05
    jmp short loc_LKOP               ; 0x4c08
loc_MIMN:
    mov ax, word [bp + 0x2c]         ; 0x4c0a
    add ax, word [bp + 0x4]          ; 0x4c0d
loc_LKOP:
    push ax                          ; 0x4c10
    mov ax, 3                        ; 0x4c11
    push ax                          ; 0x4c14
    call thunk_34                    ; 0x4c15
    add sp, byte 8                   ; 0x4c18
loc_PRNS:
    mov ax, 0xa                      ; 0x4c1b
    imul word [bp + 0x4]             ; 0x4c1e
    mov cx, word [bp + 0x6]          ; 0x4c21
    shl cx, 1                        ; 0x4c24
    add ax, cx                       ; 0x4c26
    mov bx, ax                       ; 0x4c28
    cmp word [bx - 0x6dc4], byte 0   ; 0x4c2a
    jne short loc_HPSS               ; 0x4c2f
    jmp near loc_NHGQ                ; 0x4c31
loc_HPSS:
    mov cx, word [bx - 0x6dc4]       ; 0x4c34
    dec cx                           ; 0x4c38
    mov ax, word [bss_82ee]          ; 0x4c39
    sub ax, cx                       ; 0x4c3c
    add ax, strict word 6            ; 0x4c3e
    mov cx, 4                        ; 0x4c41
    cwd                              ; 0x4c44
    idiv cx                          ; 0x4c45
    mov word [bp - 0x0002], dx       ; 0x4c47
    mov word [bp - 0x0004], 0        ; 0x4c4a
    mov ax, dx                       ; 0x4c4f
    mov cx, 2                        ; 0x4c51
    cwd                              ; 0x4c54
    idiv cx                          ; 0x4c55
    mov ax, dx                       ; 0x4c57
    test ax, ax                      ; 0x4c59
    jne short loc_LVNL               ; 0x4c5b
    cmp word [bp + 0x4], byte 0      ; 0x4c5d
    jg short loc_PVPG                ; 0x4c61
loc_LVNL:
    cmp word [bp + 0x6], byte 2      ; 0x4c63
    jne short loc_IQPO               ; 0x4c67
loc_PVPG:
    mov cx, word [bp + 0x4]          ; 0x4c69
    shl cx, 1                        ; 0x4c6c
    shl cx, 1                        ; 0x4c6e
    shl cx, 1                        ; 0x4c70
    add ax, cx                       ; 0x4c72
    inc ax                           ; 0x4c74
    mov word [bp - 0x0004], ax       ; 0x4c75
    mov ax, word [bss_91d0]          ; 0x4c78
    mov word [bp - 0x0006], ax       ; 0x4c7b
    mov ax, word [bx + 0x260]        ; 0x4c7e
    mov word [bp - 0x0008], ax       ; 0x4c82
    jmp short loc_NMVG               ; 0x4c85
loc_IQPO:
    cmp word [bp + 0x4], byte 0      ; 0x4c87
    jle short loc_NMVG               ; 0x4c8b
    mov ax, word [bp + 0x4]          ; 0x4c8d
    add ax, strict word 0x20         ; 0x4c90
    mov word [bp - 0x0004], ax       ; 0x4c93
    mov ax, 0                        ; 0x4c96
    cmp word [bp + 0x6], byte 3      ; 0x4c99
    jne short loc_KJQT               ; 0x4c9d
    mov ax, 1                        ; 0x4c9f
loc_KJQT:
    mov word [bp - 0x0006], ax       ; 0x4ca2
    mov word [bp - 0x0008], 0        ; 0x4ca5
loc_NMVG:
    cmp word [bp - 0x0004], byte 0   ; 0x4caa
    je short loc_NHGQ                ; 0x4cae
    mov ax, 0                        ; 0x4cb0
    push ax                          ; 0x4cb3
    push ax                          ; 0x4cb4
    push word [bp - 0x0006]          ; 0x4cb5
    push ax                          ; 0x4cb8
    push word [bp + 0x4]             ; 0x4cb9
    mov ax, 0xf8                     ; 0x4cbc
    push ax                          ; 0x4cbf
    mov ax, 0x48                     ; 0x4cc0
    push ax                          ; 0x4cc3
    mov ax, 0                        ; 0x4cc4
    push ax                          ; 0x4cc7
    push ax                          ; 0x4cc8
    push ax                          ; 0x4cc9
    push word [bp - 0x0004]          ; 0x4cca
    push ax                          ; 0x4ccd
    push word [bp - 0x0008]          ; 0x4cce
    mov ax, 4                        ; 0x4cd1
    push ax                          ; 0x4cd4
    call api_idx_0004_OVUO           ; 0x4cd5
    add sp, byte 0x1c                ; 0x4cd8
loc_NHGQ:
    cmp word [bp + 0x4], byte 4      ; 0x4cdb
    jl short loc_OQOV                ; 0x4cdf
    jmp near loc_PLIR_4f52           ; 0x4ce1
loc_OQOV:
    mov ax, 5                        ; 0x4ce4
    imul word [bp + 0x4]             ; 0x4ce7
    add ax, word [bp + 0x6]          ; 0x4cea
    mov bx, ax                       ; 0x4ced
    cmp byte [bx - 0x6d60], 3        ; 0x4cef
    je short loc_MKQL_4cf9           ; 0x4cf4
    jmp near loc_QOOH                ; 0x4cf6
loc_MKQL_4cf9:
    mov ax, word [bp + 0x4]          ; 0x4cf9
    cmp ax, strict word 0            ; 0x4cfc
    jg short loc_IOPP                ; 0x4cff
    mov ax, word [bp + 0x6]          ; 0x4d01
    cmp ax, strict word 2            ; 0x4d04
    je short loc_IOPP                ; 0x4d07
    jmp near loc_QOOH                ; 0x4d09
loc_IOPP:
    cmp word [bp + 0x4], byte 0      ; 0x4d0c
    jne short loc_MHPK               ; 0x4d10
    mov ax, word [bp + 0x6]          ; 0x4d12
    cmp ax, strict word 2            ; 0x4d15
    jne short loc_MHPK               ; 0x4d18
    cmp word [bss_8f22], byte 0      ; 0x4d1a
    je short loc_MHPK                ; 0x4d1f
    mov word [bss_8f20], 0xffff      ; 0x4d21
loc_MHPK:
    cmp word [bp + 0x4], byte 0      ; 0x4d27
    jne short loc_RLNG               ; 0x4d2b
    mov ax, word [bp + 0x6]          ; 0x4d2d
    cmp ax, strict word 2            ; 0x4d30
    jne short loc_RLNG               ; 0x4d33
    mov ax, 2                        ; 0x4d35
    jmp short loc_QUTL               ; 0x4d38
loc_RLNG:
    mov ax, 1                        ; 0x4d3a
loc_QUTL:
    mov word [bp - 0x0004], ax       ; 0x4d3d
    mov ax, word [bp + 0x4]          ; 0x4d40
    cmp word [bp - 0x0004], byte 2   ; 0x4d43
    je short loc_RJMO                ; 0x4d47
    dec ax                           ; 0x4d49
loc_RJMO:
    mov word [bp - 0x0008], ax       ; 0x4d4a
    mov ax, 1                        ; 0x4d4d
    push ax                          ; 0x4d50
    push ax                          ; 0x4d51
    mov ax, 0                        ; 0x4d52
    push ax                          ; 0x4d55
    mov ax, word [bp - 0x0008]       ; 0x4d56
    shl ax, 1                        ; 0x4d59
    mov bx, ax                       ; 0x4d5b
    push word [bx + 0x576]           ; 0x4d5d
    push word [bp + 0x4]             ; 0x4d61
    mov ax, 0xf8                     ; 0x4d64
    push ax                          ; 0x4d67
    mov ax, 0x48                     ; 0x4d68
    push ax                          ; 0x4d6b
    mov ax, 0                        ; 0x4d6c
    push ax                          ; 0x4d6f
    push ax                          ; 0x4d70
    push ax                          ; 0x4d71
    push word [bp - 0x0004]          ; 0x4d72
    push word [bx + 0x3dc]           ; 0x4d75
    mov ax, 0xa                      ; 0x4d79
    imul word [bp + 0x4]             ; 0x4d7c
    mov cx, word [bp + 0x6]          ; 0x4d7f
    shl cx, 1                        ; 0x4d82
    add ax, cx                       ; 0x4d84
    mov bx, ax                       ; 0x4d86
    push word [bx + 0x3aa]           ; 0x4d88
    mov ax, 0xc                      ; 0x4d8c
    push ax                          ; 0x4d8f
    call api_idx_0004_OVUO           ; 0x4d90
    add sp, byte 0x1c                ; 0x4d93
loc_QOOH:
    mov ax, 5                        ; 0x4d96
    imul word [bp + 0x4]             ; 0x4d99
    add ax, word [bp + 0x6]          ; 0x4d9c
    mov bx, ax                       ; 0x4d9f
    cmp byte [bx - 0x6d60], 1        ; 0x4da1
    je short loc_QMKQ                ; 0x4da6
    cmp byte [bx - 0x6d60], 2        ; 0x4da8
    jne short loc_SOVT               ; 0x4dad
loc_QMKQ:
    mov ax, word [bp + 0x4]          ; 0x4daf
    cmp ax, strict word 0            ; 0x4db2
    jg short loc_IQQN                ; 0x4db5
    mov ax, word [bp + 0x6]          ; 0x4db7
    cmp ax, strict word 2            ; 0x4dba
    jne short loc_SOVT               ; 0x4dbd
loc_IQQN:
    mov ax, 1                        ; 0x4dbf
    push ax                          ; 0x4dc2
    push ax                          ; 0x4dc3
    mov ax, 0                        ; 0x4dc4
    push ax                          ; 0x4dc7
    mov ax, word [bp + 0x4]          ; 0x4dc8
    shl ax, 1                        ; 0x4dcb
    mov bx, ax                       ; 0x4dcd
    push word [bx + 0x576]           ; 0x4dcf
    push word [bp + 0x4]             ; 0x4dd3
    mov ax, 0xf8                     ; 0x4dd6
    push ax                          ; 0x4dd9
    mov ax, 0x48                     ; 0x4dda
    push ax                          ; 0x4ddd
    mov ax, 0                        ; 0x4dde
    push ax                          ; 0x4de1
    push ax                          ; 0x4de2
    push ax                          ; 0x4de3
    mov ax, 5                        ; 0x4de4
    imul word [bp + 0x4]             ; 0x4de7
    add ax, word [bp + 0x6]          ; 0x4dea
    mov bx, ax                       ; 0x4ded
    mov al, byte [bx - 0x6d60]       ; 0x4def
    sub ah, ah                       ; 0x4df3
    push ax                          ; 0x4df5
    mov ax, word [bp + 0x4]          ; 0x4df6
    shl ax, 1                        ; 0x4df9
    mov bx, ax                       ; 0x4dfb
    push word [bx + 0x3dc]           ; 0x4dfd
    mov ax, 0xa                      ; 0x4e01
    imul word [bp + 0x4]             ; 0x4e04
    mov cx, word [bp + 0x6]          ; 0x4e07
    shl cx, 1                        ; 0x4e0a
    add ax, cx                       ; 0x4e0c
    mov bx, ax                       ; 0x4e0e
    push word [bx + 0x3aa]           ; 0x4e10
    mov ax, 0xb                      ; 0x4e14
    push ax                          ; 0x4e17
    call api_idx_0004_OVUO           ; 0x4e18
    add sp, byte 0x1c                ; 0x4e1b
loc_SOVT:
    mov ax, 5                        ; 0x4e1e
    imul word [bp + 0x4]             ; 0x4e21
    add ax, word [bp + 0x6]          ; 0x4e24
    mov bx, ax                       ; 0x4e27
    cmp byte [bx - 0x6ddd], 0        ; 0x4e29
    jne short loc_IMQK               ; 0x4e2e
    jmp near loc_PLIR_4f52           ; 0x4e30
loc_IMQK:
    cmp word [bp + 0x4], byte 0      ; 0x4e33
    jne short loc_MKQL_4e54          ; 0x4e37
    mov ax, word [bp + 0x6]          ; 0x4e39
    cmp ax, strict word 2            ; 0x4e3c
    jne short loc_MKQL_4e54          ; 0x4e3f
    cmp word [bss_8f22], byte 0      ; 0x4e41
    je short loc_MKQL_4e54           ; 0x4e46
    mov al, byte [bx - 0x6ddd]       ; 0x4e48
    sub ah, ah                       ; 0x4e4c
    mov word [bss_8f20], ax          ; 0x4e4e
    jmp near loc_PLIR_4f52           ; 0x4e51
loc_MKQL_4e54:
    mov ax, word [bp + 0x4]          ; 0x4e54
    cmp ax, strict word 0            ; 0x4e57
    jg short loc_TPTK                ; 0x4e5a
    mov ax, word [bp + 0x6]          ; 0x4e5c
    cmp ax, strict word 2            ; 0x4e5f
    je short loc_TPTK                ; 0x4e62
    jmp near loc_PLIR_4f52           ; 0x4e64
loc_TPTK:
    mov al, byte [bx - 0x6ddd]       ; 0x4e67
    sub ah, ah                       ; 0x4e6b
    mov cx, ax                       ; 0x4e6d
    dec ax                           ; 0x4e6f
    mov cx, ax                       ; 0x4e70
    mov ax, word [bss_82ee]          ; 0x4e72
    sub ax, cx                       ; 0x4e75
    add ax, strict word 6            ; 0x4e77
    mov cx, 4                        ; 0x4e7a
    cwd                              ; 0x4e7d
    idiv cx                          ; 0x4e7e
    mov word [bp - 0x0002], dx       ; 0x4e80
    mov ax, dx                       ; 0x4e83
    jmp near loc_TRHH                ; 0x4e85
loc_IJRJ:
    mov ax, 1                        ; 0x4e88
    push ax                          ; 0x4e8b
    push ax                          ; 0x4e8c
    mov ax, 0                        ; 0x4e8d
    push ax                          ; 0x4e90
    mov ax, word [bp + 0x4]          ; 0x4e91
    shl ax, 1                        ; 0x4e94
    mov bx, ax                       ; 0x4e96
    push word [bx + 0x576]           ; 0x4e98
    push word [bp + 0x4]             ; 0x4e9c
    mov ax, 0xf8                     ; 0x4e9f
    push ax                          ; 0x4ea2
    mov ax, 0x48                     ; 0x4ea3
    push ax                          ; 0x4ea6
    mov ax, 0                        ; 0x4ea7
    push ax                          ; 0x4eaa
    mov ax, 5                        ; 0x4eab
    cmp word [bp - 0x0002], byte 0   ; 0x4eae
    jne short loc_PRPT               ; 0x4eb2
    mov ax, 4                        ; 0x4eb4
loc_PRPT:
    push ax                          ; 0x4eb7
    mov ax, 2                        ; 0x4eb8
    push ax                          ; 0x4ebb
    mov ax, 1                        ; 0x4ebc
    push ax                          ; 0x4ebf
    push word [bx + 0x3dc]           ; 0x4ec0
    mov ax, 0xa                      ; 0x4ec4
    imul word [bp + 0x4]             ; 0x4ec7
    mov cx, word [bp + 0x6]          ; 0x4eca
    shl cx, 1                        ; 0x4ecd
    add ax, cx                       ; 0x4ecf
    mov bx, ax                       ; 0x4ed1
    push word [bx + 0x3aa]           ; 0x4ed3
    mov ax, 3                        ; 0x4ed7
    push ax                          ; 0x4eda
    call api_idx_0004_OVUO           ; 0x4edb
    add sp, byte 0x1c                ; 0x4ede
    jmp short loc_PLIR_4f52          ; 0x4ee1
loc_LNMM:
    mov ax, 1                        ; 0x4ee3
    push ax                          ; 0x4ee6
    push ax                          ; 0x4ee7
    mov ax, 0                        ; 0x4ee8
    cmp word [bp - 0x0002], byte 3   ; 0x4eeb
    jne short loc_QNUG               ; 0x4eef
    mov ax, 1                        ; 0x4ef1
loc_QNUG:
    push ax                          ; 0x4ef4
    mov ax, word [bp + 0x4]          ; 0x4ef5
    shl ax, 1                        ; 0x4ef8
    mov bx, ax                       ; 0x4efa
    push word [bx + 0x576]           ; 0x4efc
    push word [bp + 0x4]             ; 0x4f00
    mov ax, 0xf8                     ; 0x4f03
    push ax                          ; 0x4f06
    mov ax, 0x48                     ; 0x4f07
    push ax                          ; 0x4f0a
    mov ax, 0                        ; 0x4f0b
    push ax                          ; 0x4f0e
    push ax                          ; 0x4f0f
    push ax                          ; 0x4f10
    mov ax, 3                        ; 0x4f11
    push ax                          ; 0x4f14
    push word [bx + 0x3dc]           ; 0x4f15
    mov ax, 0xa                      ; 0x4f19
    imul word [bp + 0x4]             ; 0x4f1c
    mov cx, word [bp + 0x6]          ; 0x4f1f
    shl cx, 1                        ; 0x4f22
    add ax, cx                       ; 0x4f24
    mov bx, ax                       ; 0x4f26
    push word [bx + 0x3aa]           ; 0x4f28
    mov ax, 3                        ; 0x4f2c
    push ax                          ; 0x4f2f
    call api_idx_0004_OVUO           ; 0x4f30
    add sp, byte 0x1c                ; 0x4f33
    jmp short loc_PLIR_4f52          ; 0x4f36
loc_TRHH:
    cmp ax, strict word 0            ; 0x4f38
    jne short loc_VMJK               ; 0x4f3b
    jmp near loc_IJRJ                ; 0x4f3d
loc_VMJK:
    cmp ax, strict word 1            ; 0x4f40
    je short loc_LNMM                ; 0x4f43
    cmp ax, strict word 2            ; 0x4f45
    jne short loc_RJHH               ; 0x4f48
    jmp near loc_IJRJ                ; 0x4f4a
loc_RJHH:
    cmp ax, strict word 3            ; 0x4f4d
    je short loc_LNMM                ; 0x4f50
loc_PLIR_4f52:
    ret                              ; 0x4f52
