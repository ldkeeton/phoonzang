; auto-generated
leaf_loc_SLSK:
    mov word [bp - 0x0004], 9        ; 0x2ad9
    jmp short loc_SVKO               ; 0x2ade
loc_PIVO:
    mov word [bp - 0x0004], 0xa      ; 0x2ae0
    jmp short loc_SVKO               ; 0x2ae5
loc_QJQU:
    mov word [bp - 0x0004], 0x19     ; 0x2ae7
    jmp short loc_SVKO               ; 0x2aec
loc_KMQR:
    mov word [bp - 0x0004], 0x2f     ; 0x2aee
    jmp short loc_SVKO               ; 0x2af3
jumptable_2af5:
    dw leaf_loc_LGUH - IMAGE_BASE + 0x5055     ; 0x2af5
    dw leaf_loc_HSKV - IMAGE_BASE + 0x5055     ; 0x2af7
    dw leaf_loc_RGKU - IMAGE_BASE + 0x5055     ; 0x2af9
    dw leaf_loc_PQKI - IMAGE_BASE + 0x5055     ; 0x2afb
    dw leaf_loc_HGNR - IMAGE_BASE + 0x5055     ; 0x2afd
    dw leaf_loc_IHKI - IMAGE_BASE + 0x5055     ; 0x2aff
    dw leaf_loc_NSLJ - IMAGE_BASE + 0x5055     ; 0x2b01
    dw leaf_loc_IMSM - IMAGE_BASE + 0x5055     ; 0x2b03
    dw leaf_loc_OISN - IMAGE_BASE + 0x5055     ; 0x2b05
    dw leaf_loc_GUJN - IMAGE_BASE + 0x5055     ; 0x2b07
    dw leaf_loc_SLSK - IMAGE_BASE + 0x5055     ; 0x2b09
    dw loc_PIVO - IMAGE_BASE + 0x5055          ; 0x2b0b
    dw loc_QJQU - IMAGE_BASE + 0x5055          ; 0x2b0d
    dw loc_KMQR - IMAGE_BASE + 0x5055          ; 0x2b0f
loc_VGMV:
    cmp ax, strict word 0xe          ; 0x2b11
    jae short loc_SVKO               ; 0x2b14
    xchg bx, ax                      ; 0x2b16
    shl bx, 1                        ; 0x2b17
    jmp [cs:bx + 0x7b3c]             ; 0x2b19
loc_SVKO:
    cmp byte [bss_959f], 5           ; 0x2b1e
    jne short loc_GMUI               ; 0x2b23
    mov word [bp - 0x0004], 0x18d    ; 0x2b25
    mov word [bp - 0x0006], 0        ; 0x2b2a
loc_GMUI:
    cmp word [bp - 0x0004], byte 0   ; 0x2b2f
    jle short loc_IMMP               ; 0x2b33
    mov ax, 1                        ; 0x2b35
    push ax                          ; 0x2b38
    mov ax, 0xfffe                   ; 0x2b39
    push ax                          ; 0x2b3c
    mov ax, 0x78                     ; 0x2b3d
    imul word [bp - 0x0016]          ; 0x2b40
    mov cx, ax                       ; 0x2b43
    mov ax, 0xc                      ; 0x2b45
    imul word [bp - 0x0018]          ; 0x2b48
    add cx, ax                       ; 0x2b4b
    mov ax, word [bp - 0x0014]       ; 0x2b4d
    add ax, cx                       ; 0x2b50
    add ax, strict word 0x40         ; 0x2b52
    push ax                          ; 0x2b55
    push word [bp - 0x0004]          ; 0x2b56
    push word [bss_69c8]             ; 0x2b59
    call api_idx_004c_MNLG           ; 0x2b5d
    add sp, byte 0x0a                ; 0x2b60
    inc word [bp - 0x0018]           ; 0x2b63
loc_IMMP:
    cmp word [bp - 0x0006], byte 0   ; 0x2b66
    jle short loc_JJRR               ; 0x2b6a
    mov ax, 1                        ; 0x2b6c
    push ax                          ; 0x2b6f
    mov ax, 0xfffe                   ; 0x2b70
    push ax                          ; 0x2b73
    mov ax, 0x78                     ; 0x2b74
    imul word [bp - 0x0016]          ; 0x2b77
    mov cx, ax                       ; 0x2b7a
    mov ax, 0xc                      ; 0x2b7c
    imul word [bp - 0x0018]          ; 0x2b7f
    add cx, ax                       ; 0x2b82
    mov ax, word [bp - 0x0014]       ; 0x2b84
    add ax, cx                       ; 0x2b87
    add ax, strict word 0x40         ; 0x2b89
    push ax                          ; 0x2b8c
    push word [bp - 0x0006]          ; 0x2b8d
    push word [bss_69c8]             ; 0x2b90
    call api_idx_004c_MNLG           ; 0x2b94
    add sp, byte 0x0a                ; 0x2b97
    inc word [bp - 0x0018]           ; 0x2b9a
loc_JJRR:
    mov word [bp - 0x0022], 0xffff   ; 0x2b9d
    mov word [bp - 0x0004], 0        ; 0x2ba2
    jmp near loc_LGUH_2c5f           ; 0x2ba7
loc_MQMM:
    mov ax, word [bp - 0x0004]       ; 0x2baa
    shl ax, 1                        ; 0x2bad
    shl ax, 1                        ; 0x2baf
    shl ax, 1                        ; 0x2bb1
    mov bx, ax                       ; 0x2bb3
    mov ax, word [bx - 0x6bbe]       ; 0x2bb5
    mov word [bp - 0x0006], ax       ; 0x2bb9
    cmp ax, strict word 0            ; 0x2bbc
    jg short loc_PHJR_2bc4           ; 0x2bbf
    jmp near loc_PKPQ_2c5c           ; 0x2bc1
loc_PHJR_2bc4:
    push ax                          ; 0x2bc4
    call loc_QKKR_1683               ; 0x2bc5
    pop cx                           ; 0x2bc8
    mov word [bp - 0x0006], ax       ; 0x2bc9
    cmp ax, strict word 0            ; 0x2bcc
    jge short loc_PRVO               ; 0x2bcf
    cmp word [bp - 0x0022], byte 0xff ; 0x2bd1
    je short loc_IGRO                ; 0x2bd5
    mov ax, 3                        ; 0x2bd7
    push ax                          ; 0x2bda
    call ds_app_PUNN                 ; 0x2bdb
    pop cx                           ; 0x2bde
    test ax, ax                      ; 0x2bdf
    jne short loc_MNIM_2bff          ; 0x2be1
loc_IGRO:
    mov ax, word [bp - 0x0004]       ; 0x2be3
    shl ax, 1                        ; 0x2be6
    shl ax, 1                        ; 0x2be8
    shl ax, 1                        ; 0x2bea
    mov bx, ax                       ; 0x2bec
    mov al, byte [bx - 0x6bb7]       ; 0x2bee
    sub ah, ah                       ; 0x2bf2
    test ax, 1                       ; 0x2bf4
    je short loc_MNIM_2bff           ; 0x2bf7
    mov ax, word [bp - 0x0004]       ; 0x2bf9
    mov word [bp - 0x0022], ax       ; 0x2bfc
loc_MNIM_2bff:
    jmp short loc_PKPQ_2c5c          ; 0x2bff
loc_PRVO:
    cmp word [bp - 0x0006], byte 0   ; 0x2c01
    jle short loc_PKPQ_2c5c          ; 0x2c05
    cmp word [bp - 0x0016], byte 2   ; 0x2c07
    jge short loc_PKPQ_2c5c          ; 0x2c0b
    mov ax, 1                        ; 0x2c0d
    push ax                          ; 0x2c10
    mov ax, word [bp - 0x0004]       ; 0x2c11
    shl ax, 1                        ; 0x2c14
    shl ax, 1                        ; 0x2c16
    shl ax, 1                        ; 0x2c18
    mov bx, ax                       ; 0x2c1a
    mov al, byte [bx - 0x6bb8]       ; 0x2c1c
    sub ah, ah                       ; 0x2c20
    push ax                          ; 0x2c22
    mov ax, 0x78                     ; 0x2c23
    imul word [bp - 0x0016]          ; 0x2c26
    mov cx, ax                       ; 0x2c29
    mov ax, 0xc                      ; 0x2c2b
    imul word [bp - 0x0018]          ; 0x2c2e
    add cx, ax                       ; 0x2c31
    mov ax, word [bp - 0x0014]       ; 0x2c33
    add ax, cx                       ; 0x2c36
    add ax, strict word 0x40         ; 0x2c38
    push ax                          ; 0x2c3b
    push word [bp - 0x0006]          ; 0x2c3c
    push word [bss_69c8]             ; 0x2c3f
    call api_idx_004c_MNLG           ; 0x2c43
    add sp, byte 0x0a                ; 0x2c46
    inc word [bp - 0x0018]           ; 0x2c49
    mov ax, word [bp - 0x0018]       ; 0x2c4c
    cmp ax, strict word 0xa          ; 0x2c4f
    jl short loc_PKPQ_2c5c           ; 0x2c52
    mov word [bp - 0x0018], 0        ; 0x2c54
    inc word [bp - 0x0016]           ; 0x2c59
loc_PKPQ_2c5c:
    inc word [bp - 0x0004]           ; 0x2c5c
loc_LGUH_2c5f:
    mov al, byte [bss_95ae]          ; 0x2c5f
    sub ah, ah                       ; 0x2c62
    cmp ax, word [bp - 0x0004]       ; 0x2c64
    jle short loc_JGMH_2c6c          ; 0x2c67
    jmp near loc_MQMM                ; 0x2c69
loc_JGMH_2c6c:
    mov word [bp - 0x0004], 0        ; 0x2c6c
    jmp near loc_LGUH_2d2c           ; 0x2c71
loc_KVRU:
    mov ax, word [bp - 0x0004]       ; 0x2c74
    shl ax, 1                        ; 0x2c77
    shl ax, 1                        ; 0x2c79
    shl ax, 1                        ; 0x2c7b
    mov bx, ax                       ; 0x2c7d
    mov ax, word [bx - 0x6b6e]       ; 0x2c7f
    mov word [bp - 0x0006], ax       ; 0x2c83
    cmp ax, strict word 0            ; 0x2c86
    jg short loc_PHJR_2c8e           ; 0x2c89
    jmp near loc_PKPQ_2d29           ; 0x2c8b
loc_PHJR_2c8e:
    push ax                          ; 0x2c8e
    call loc_QKKR_1683               ; 0x2c8f
    pop cx                           ; 0x2c92
    mov word [bp - 0x0006], ax       ; 0x2c93
    cmp ax, strict word 0            ; 0x2c96
    jge short loc_OTKK               ; 0x2c99
    cmp word [bp - 0x0022], byte 0xff ; 0x2c9b
    je short loc_HNGR                ; 0x2c9f
    mov ax, 3                        ; 0x2ca1
    push ax                          ; 0x2ca4
    call ds_app_PUNN                 ; 0x2ca5
    pop cx                           ; 0x2ca8
    test ax, ax                      ; 0x2ca9
    jne short loc_MNIM_2ccc          ; 0x2cab
loc_HNGR:
    mov ax, word [bp - 0x0004]       ; 0x2cad
    shl ax, 1                        ; 0x2cb0
    shl ax, 1                        ; 0x2cb2
    shl ax, 1                        ; 0x2cb4
    mov bx, ax                       ; 0x2cb6
    mov al, byte [bx - 0x6b67]       ; 0x2cb8
    sub ah, ah                       ; 0x2cbc
    test ax, 1                       ; 0x2cbe
    je short loc_MNIM_2ccc           ; 0x2cc1
    mov ax, word [bp - 0x0004]       ; 0x2cc3
    add ax, strict word 0xa          ; 0x2cc6
    mov word [bp - 0x0022], ax       ; 0x2cc9
loc_MNIM_2ccc:
    jmp short loc_PKPQ_2d29          ; 0x2ccc
loc_OTKK:
    cmp word [bp - 0x0006], byte 0   ; 0x2cce
    jle short loc_PKPQ_2d29          ; 0x2cd2
    cmp word [bp - 0x0016], byte 2   ; 0x2cd4
    jge short loc_PKPQ_2d29          ; 0x2cd8
    mov ax, 1                        ; 0x2cda
    push ax                          ; 0x2cdd
    mov ax, word [bp - 0x0004]       ; 0x2cde
    shl ax, 1                        ; 0x2ce1
    shl ax, 1                        ; 0x2ce3
    shl ax, 1                        ; 0x2ce5
    mov bx, ax                       ; 0x2ce7
    mov al, byte [bx - 0x6b68]       ; 0x2ce9
    sub ah, ah                       ; 0x2ced
    push ax                          ; 0x2cef
    mov ax, 0x78                     ; 0x2cf0
    imul word [bp - 0x0016]          ; 0x2cf3
    mov cx, ax                       ; 0x2cf6
    mov ax, 0xc                      ; 0x2cf8
    imul word [bp - 0x0018]          ; 0x2cfb
    add cx, ax                       ; 0x2cfe
    mov ax, word [bp - 0x0014]       ; 0x2d00
    add ax, cx                       ; 0x2d03
    add ax, strict word 0x40         ; 0x2d05
    push ax                          ; 0x2d08
    push word [bp - 0x0006]          ; 0x2d09
    push word [bss_69c8]             ; 0x2d0c
    call api_idx_004c_MNLG           ; 0x2d10
    add sp, byte 0x0a                ; 0x2d13
    inc word [bp - 0x0018]           ; 0x2d16
    mov ax, word [bp - 0x0018]       ; 0x2d19
    cmp ax, strict word 0xa          ; 0x2d1c
    jl short loc_PKPQ_2d29           ; 0x2d1f
    mov word [bp - 0x0018], 0        ; 0x2d21
    inc word [bp - 0x0016]           ; 0x2d26
loc_PKPQ_2d29:
    inc word [bp - 0x0004]           ; 0x2d29
loc_LGUH_2d2c:
    mov al, byte [bss_95af]          ; 0x2d2c
    sub ah, ah                       ; 0x2d2f
    cmp ax, word [bp - 0x0004]       ; 0x2d31
    jle short loc_MGHJ               ; 0x2d34
    jmp near loc_KVRU                ; 0x2d36
loc_MGHJ:
    cmp word [bp - 0x0022], byte 0xff ; 0x2d39
    je short loc_VJIN                ; 0x2d3d
    cmp word [bp - 0x0016], byte 2   ; 0x2d3f
    jge short loc_VJIN               ; 0x2d43
    mov ax, word [bp - 0x0022]       ; 0x2d45
    shl ax, 1                        ; 0x2d48
    shl ax, 1                        ; 0x2d4a
    shl ax, 1                        ; 0x2d4c
    mov bx, ax                       ; 0x2d4e
    push word [bx - 0x6bbe]          ; 0x2d50
    call loc_QKKR_1683               ; 0x2d54
    pop cx                           ; 0x2d57
    mov word [bp - 0x0006], ax       ; 0x2d58
    cmp ax, strict word 0            ; 0x2d5b
    jge short loc_UQQS               ; 0x2d5e
    push ax                          ; 0x2d60
    cmp ax, strict word 0            ; 0x2d61
    pop ax                           ; 0x2d64
    jge short loc_LLLP               ; 0x2d65
    neg ax                           ; 0x2d67
loc_LLLP:
    mov word [bp - 0x0006], ax       ; 0x2d69
loc_UQQS:
    cmp word [bp - 0x0006], byte 0   ; 0x2d6c
    jle short loc_VJIN               ; 0x2d70
    mov ax, 1                        ; 0x2d72
    push ax                          ; 0x2d75
    mov ax, word [bp - 0x0022]       ; 0x2d76
    shl ax, 1                        ; 0x2d79
    shl ax, 1                        ; 0x2d7b
    shl ax, 1                        ; 0x2d7d
    mov bx, ax                       ; 0x2d7f
    mov al, byte [bx - 0x6bb8]       ; 0x2d81
    sub ah, ah                       ; 0x2d85
    push ax                          ; 0x2d87
    mov ax, 0x78                     ; 0x2d88
    imul word [bp - 0x0016]          ; 0x2d8b
    mov cx, ax                       ; 0x2d8e
    mov ax, 0xc                      ; 0x2d90
    imul word [bp - 0x0018]          ; 0x2d93
    add cx, ax                       ; 0x2d96
    mov ax, word [bp - 0x0014]       ; 0x2d98
    add ax, cx                       ; 0x2d9b
    add ax, strict word 0x40         ; 0x2d9d
    push ax                          ; 0x2da0
    push word [bp - 0x0006]          ; 0x2da1
    push word [bss_69c8]             ; 0x2da4
    call api_idx_004c_MNLG           ; 0x2da8
    add sp, byte 0x0a                ; 0x2dab
loc_VJIN:
    inc word [bss_69c8]              ; 0x2dae
    inc word [bp - 0x0002]           ; 0x2db2
loc_GIGL:
    mov ax, word [bp - 0x0002]       ; 0x2db5
    cmp ax, word [bss_9400]          ; 0x2db8
    jge short loc_QKRM               ; 0x2dbc
    jmp near loc_NUMT                ; 0x2dbe
loc_QKRM:
    push word [bp - 0x000a]          ; 0x2dc1
    call aztec_close                 ; 0x2dc4
    pop cx                           ; 0x2dc7
    mov word [bp - 0x001a], 0xffff   ; 0x2dc8
    mov word [bp - 0x0004], 0        ; 0x2dcd
    jmp short loc_TSJM               ; 0x2dd2
loc_OPMS:
    mov word [bp - 0x0006], 0        ; 0x2dd4
loc_RTNH:
    push word [bp - 0x0006]          ; 0x2dd9
    mov ax, 0x248                    ; 0x2ddc
    imul word [bp - 0x0004]          ; 0x2ddf
    add ax, 0x5e26                   ; 0x2de2
    push ax                          ; 0x2de5
    call ds_leaf_loc_PRVP            ; 0x2de6
    add sp, byte 4                   ; 0x2de9
    test ax, ax                      ; 0x2dec
    je short loc_NKRT                ; 0x2dee
    mov ax, word [bp - 0x0006]       ; 0x2df0
    mov word [bp - 0x001a], ax       ; 0x2df3
loc_NKRT:
    inc word [bp - 0x0006]           ; 0x2df6
    mov ax, word [bp - 0x0006]       ; 0x2df9
    cmp ax, strict word 3            ; 0x2dfc
    jl short loc_RTNH                ; 0x2dff
    inc word [bp - 0x0004]           ; 0x2e01
loc_TSJM:
    mov ax, word [bp - 0x0004]       ; 0x2e04
    cmp ax, word [bss_69c8]          ; 0x2e07
    jl short loc_OPMS                ; 0x2e0b
    mov ax, word [bp - 0x001a]       ; 0x2e0d
    jmp near loc_MMTV                ; 0x2e10
loc_GMTH:
    mov word [bss_8f46], 0x5c        ; 0x2e13
    mov word [bss_8f44], 0x4f        ; 0x2e19
    mov word [bss_8f42], 4           ; 0x2e1f
    mov word [bss_8f40], 7           ; 0x2e25
    mov word [bss_8f3e], 3           ; 0x2e2b
    mov word [bss_82ee], 2           ; 0x2e31
    mov word [bss_830c], 0           ; 0x2e37
    mov word [bss_5c0a], 0           ; 0x2e3d
    mov word [bss_5c08], 0x1388      ; 0x2e43
    mov ax, 0                        ; 0x2e49
    push ax                          ; 0x2e4c
    mov ax, 0x5a                     ; 0x2e4d
    push ax                          ; 0x2e50
    mov ax, 0x14                     ; 0x2e51
    push ax                          ; 0x2e54
    mov ax, 0xffec                   ; 0x2e55
    push ax                          ; 0x2e58
    mov ax, 0                        ; 0x2e59
    push ax                          ; 0x2e5c
    push ax                          ; 0x2e5d
    mov ax, 0xa                      ; 0x2e5e
    push ax                          ; 0x2e61
    push ax                          ; 0x2e62
    mov ax, 0xffec                   ; 0x2e63
    push ax                          ; 0x2e66
    mov ax, 0xffa6                   ; 0x2e67
    push ax                          ; 0x2e6a
    call loc_MJMJ                    ; 0x2e6b
    add sp, byte 0x14                ; 0x2e6e
    mov word [bss_95b2], 1           ; 0x2e71
    jmp near loc_NOGQ                ; 0x2e77
loc_JSIU:
    mov word [bss_8f46], 0x8c        ; 0x2e7a
    mov word [bss_8f44], 0x7d        ; 0x2e80
    mov word [bss_8f42], 4           ; 0x2e86
    mov word [bss_8f40], 5           ; 0x2e8c
    mov word [bss_8f3e], 0xb         ; 0x2e92
    mov word [bss_82ee], 3           ; 0x2e98
    mov word [bss_830c], 6           ; 0x2e9e
    mov word [bss_5c0a], 0           ; 0x2ea4
    mov word [bss_5c08], 0x2710      ; 0x2eaa
    mov ax, 0x5a                     ; 0x2eb0
    push ax                          ; 0x2eb3
    mov ax, 0                        ; 0x2eb4
    push ax                          ; 0x2eb7
    mov ax, 0xa                      ; 0x2eb8
    push ax                          ; 0x2ebb
    push ax                          ; 0x2ebc
    mov ax, 0                        ; 0x2ebd
    push ax                          ; 0x2ec0
    mov ax, 0xa                      ; 0x2ec1
    push ax                          ; 0x2ec4
    mov ax, 0xffd8                   ; 0x2ec5
    push ax                          ; 0x2ec8
    mov ax, 0x28                     ; 0x2ec9
    push ax                          ; 0x2ecc
    mov ax, 0xffa6                   ; 0x2ecd
    push ax                          ; 0x2ed0
    mov ax, 0xffce                   ; 0x2ed1
    push ax                          ; 0x2ed4
    call loc_MJMJ                    ; 0x2ed5
    add sp, byte 0x14                ; 0x2ed8
    mov word [bss_95b2], 2           ; 0x2edb
    jmp near loc_NOGQ                ; 0x2ee1
loc_HTJL:
    mov word [bss_8f46], 0x6e        ; 0x2ee4
    mov word [bss_8f44], 0x8e        ; 0x2eea
    mov word [bss_8f42], 6           ; 0x2ef0
    mov word [bss_8f40], 6           ; 0x2ef6
    mov word [bss_8f3e], 1           ; 0x2efc
    mov word [bss_82ee], 2           ; 0x2f02
    mov word [bss_830c], 2           ; 0x2f08
    mov ax, 0xffa6                   ; 0x2f0e
    push ax                          ; 0x2f11
    push ax                          ; 0x2f12
    mov ax, 0                        ; 0x2f13
    push ax                          ; 0x2f16
    mov ax, 0x14                     ; 0x2f17
    push ax                          ; 0x2f1a
    mov ax, 0xffec                   ; 0x2f1b
    push ax                          ; 0x2f1e
    mov ax, 0xffce                   ; 0x2f1f
    push ax                          ; 0x2f22
    mov ax, 0x19                     ; 0x2f23
    push ax                          ; 0x2f26
    mov ax, 0xffa1                   ; 0x2f27
    push ax                          ; 0x2f2a
    mov ax, 0x23                     ; 0x2f2b
    push ax                          ; 0x2f2e
    mov ax, 0                        ; 0x2f2f
    push ax                          ; 0x2f32
    call loc_MJMJ                    ; 0x2f33
    add sp, byte 0x14                ; 0x2f36
    mov word [bss_95b2], 3           ; 0x2f39
    jmp short loc_NOGQ               ; 0x2f3f
loc_KTJU:
    mov word [bss_95b2], 4           ; 0x2f41
    jmp short loc_NOGQ               ; 0x2f47
loc_MMTV:
    cmp ax, strict word 0xffff       ; 0x2f49
    je short loc_KTJU                ; 0x2f4c
    cmp ax, strict word 0            ; 0x2f4e
    jne short loc_JULU               ; 0x2f51
    jmp near loc_GMTH                ; 0x2f53
loc_JULU:
    cmp ax, strict word 1            ; 0x2f56
    jne short loc_MUNN               ; 0x2f59
    jmp near loc_JSIU                ; 0x2f5b
loc_MUNN:
    cmp ax, strict word 2            ; 0x2f5e
    je short loc_HTJL                ; 0x2f61
loc_NOGQ:
    cmp word [bp - 0x001a], byte 0xff ; 0x2f63
    jne short loc_PTUO               ; 0x2f67
    jmp near loc_PKOU                ; 0x2f69
loc_PTUO:
    mov ax, 1                        ; 0x2f6c
    push ax                          ; 0x2f6f
    push ax                          ; 0x2f70
    mov ax, 0x5642                   ; 0x2f71
    push ax                          ; 0x2f74
    call set_bitmap_bit              ; 0x2f75
    add sp, byte 6                   ; 0x2f78
    mov ax, 1                        ; 0x2f7b
    push ax                          ; 0x2f7e
    mov ax, 2                        ; 0x2f7f
    push ax                          ; 0x2f82
    mov ax, 0x5642                   ; 0x2f83
    push ax                          ; 0x2f86
    call set_bitmap_bit              ; 0x2f87
    add sp, byte 6                   ; 0x2f8a
    mov ax, 0                        ; 0x2f8d
    push ax                          ; 0x2f90
    mov ax, 0x14                     ; 0x2f91
    push ax                          ; 0x2f94
    mov ax, word [bss_830c]          ; 0x2f95
    mov cx, 4                        ; 0x2f98
    shl ax, cl                       ; 0x2f9b
    add ax, 0x5642                   ; 0x2f9d
    push ax                          ; 0x2fa0
    call set_bitmap_bit              ; 0x2fa1
    add sp, byte 6                   ; 0x2fa4
    mov ax, 0                        ; 0x2fa7
    push ax                          ; 0x2faa
    mov ax, 0x15                     ; 0x2fab
    push ax                          ; 0x2fae
    mov ax, word [bss_830c]          ; 0x2faf
    mov cx, 4                        ; 0x2fb2
    shl ax, cl                       ; 0x2fb5
    add ax, 0x5642                   ; 0x2fb7
    push ax                          ; 0x2fba
    call set_bitmap_bit              ; 0x2fbb
    add sp, byte 6                   ; 0x2fbe
    mov ax, word [bss_8f46]          ; 0x2fc1
    mov word [bss_8f3a], ax          ; 0x2fc4
    mov ax, word [bss_8f44]          ; 0x2fc7
    mov word [bss_8f38], ax          ; 0x2fca
    mov ax, word [bss_8f42]          ; 0x2fcd
    mov word [bss_8f36], ax          ; 0x2fd0
    mov ax, word [bss_8f40]          ; 0x2fd3
    mov word [bss_8f34], ax          ; 0x2fd6
    mov ax, word [bss_8f3e]          ; 0x2fd9
    mov word [bss_8f32], ax          ; 0x2fdc
    mov ax, word [bss_82ee]          ; 0x2fdf
    mov word [bss_8f30], ax          ; 0x2fe2
    mov ax, word [bss_830c]          ; 0x2fe5
    mov word [bss_8f3c], ax          ; 0x2fe8
loc_PKOU:
    mov ax, 0                        ; 0x2feb
    ret                              ; 0x2fee
