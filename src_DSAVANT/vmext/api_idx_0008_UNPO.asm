; auto-generated
api_idx_0008_UNPO:
    mov ax, 0xfff8                   ; 0x1a1d
    call aztec_csav                  ; 0x1a20
    cmp word [bp + 0xe], byte 0      ; 0x1a23
    jne short @..api_idx_0008_UNPO.l1 ; 0x1a27
    jmp near @..api_idx_0008_UNPO.l4 ; 0x1a29
@..api_idx_0008_UNPO.l1:
    mov ax, 0                        ; 0x1a2c
    push ax                          ; 0x1a2f
    push word [bp + 0xe]             ; 0x1a30
    lea ax, word [bp + 0xc]          ; 0x1a33
    push ax                          ; 0x1a36
    lea ax, word [bp + 0xa]          ; 0x1a37
    push ax                          ; 0x1a3a
    lea ax, word [bp + 0x8]          ; 0x1a3b
    push ax                          ; 0x1a3e
    lea ax, word [bp + 0x6]          ; 0x1a3f
    push ax                          ; 0x1a42
    lea ax, word [bp + 0x4]          ; 0x1a43
    push ax                          ; 0x1a46
    call loc_VOSO                    ; 0x1a47
    add sp, byte 0x0e                ; 0x1a4a
    test ax, ax                      ; 0x1a4d
    je short @..api_idx_0008_UNPO.l4 ; 0x1a4f
    mov ax, word [bss_91a8]          ; 0x1a51
    jmp short @..api_idx_0008_UNPO.l3 ; 0x1a54
jumptable_1a8f_case_0:
    mov ax, 2                        ; 0x1a56
    ret                              ; 0x1a59
jumptable_1a8f_case_3:
    cmp word [bss_9188], byte 0      ; 0x1a5a
    je short @..api_idx_0008_UNPO.l2 ; 0x1a5f
    mov ax, 0                        ; 0x1a61
    ret                              ; 0x1a64
jumptable_1a8f_case_1:
@..api_idx_0008_UNPO.l2:
    mov ax, 5                        ; 0x1a65
    imul word [bss_91aa]             ; 0x1a68
    add ax, word [bp + 0xe]          ; 0x1a6c
    mov bx, ax                       ; 0x1a6f
    mov byte [bx - 0x6e52], 1        ; 0x1a71
    mov ax, 4                        ; 0x1a76
    ret                              ; 0x1a79
jumptable_1a8f_case_5:
    mov ax, 5                        ; 0x1a7a
    imul word [bss_91aa]             ; 0x1a7d
    add ax, word [bp + 0xe]          ; 0x1a81
    mov bx, ax                       ; 0x1a84
    mov byte [bx - 0x6e52], 3        ; 0x1a86
    mov ax, 0                        ; 0x1a8b
    ret                              ; 0x1a8e
jumptable_1a8f:
    dw jumptable_1a8f_case_0 - IMAGE_BASE + __zres_end ; 0x1a8f
    dw jumptable_1a8f_case_1 - IMAGE_BASE + __zres_end ; 0x1a91
    dw jumptable_1a8f_case_0 - IMAGE_BASE + __zres_end ; 0x1a93
    dw jumptable_1a8f_case_3 - IMAGE_BASE + __zres_end ; 0x1a95
    dw jumptable_1a8f_case_0 - IMAGE_BASE + __zres_end ; 0x1a97
    dw jumptable_1a8f_case_5 - IMAGE_BASE + __zres_end ; 0x1a99
@..api_idx_0008_UNPO.l3:
    cmp ax, strict word 6            ; 0x1a9b
    jae short @..api_idx_0008_UNPO.l4 ; 0x1a9e
    xchg bx, ax                      ; 0x1aa0
    shl bx, 1                        ; 0x1aa1
    jmp [cs:bx + jumptable_1a8f - IMAGE_BASE + __zres_end] ; 0x1aa3
@..api_idx_0008_UNPO.l4:
    mov ax, word [bp + 0xc]          ; 0x1aa8
    mov cx, 6                        ; 0x1aab
    shl ax, cl                       ; 0x1aae
    mov cx, word [bp + 0xa]          ; 0x1ab0
    shl cx, 1                        ; 0x1ab3
    shl cx, 1                        ; 0x1ab5
    shl cx, 1                        ; 0x1ab7
    add ax, cx                       ; 0x1ab9
    add ax, word [bp + 0x8]          ; 0x1abb
    mov word [bp - 0x0002], ax       ; 0x1abe
    push ax                          ; 0x1ac1
    mov ax, word [bss_0e14]          ; 0x1ac2
    add ax, 0x9b0                    ; 0x1ac5
    push ax                          ; 0x1ac8
    call ds_leaf_loc_PRVP            ; 0x1ac9
    add sp, byte 4                   ; 0x1acc
    test ax, ax                      ; 0x1acf
    je short @..api_idx_0008_UNPO.l6 ; 0x1ad1
    mov ax, word [bss_91a8]          ; 0x1ad3
    jmp short @..api_idx_0008_UNPO.l5 ; 0x1ad6
jumptable_1b11_case_0:
    mov ax, 5                        ; 0x1ad8
    imul word [bss_91aa]             ; 0x1adb
    add ax, word [bp + 0xe]          ; 0x1adf
    mov bx, ax                       ; 0x1ae2
    mov byte [bx - 0x6e52], 3        ; 0x1ae4
    jmp short @..api_idx_0008_UNPO.l6 ; 0x1ae9
jumptable_1b11_case_1:
    mov ax, 5                        ; 0x1aeb
    imul word [bss_91aa]             ; 0x1aee
    add ax, word [bp + 0xe]          ; 0x1af2
    mov bx, ax                       ; 0x1af5
    mov byte [bx - 0x6e52], 1        ; 0x1af7
    jmp short @..api_idx_0008_UNPO.l6 ; 0x1afc
jumptable_1b11_case_2:
    mov ax, 5                        ; 0x1afe
    imul word [bss_91aa]             ; 0x1b01
    add ax, word [bp + 0xe]          ; 0x1b05
    mov bx, ax                       ; 0x1b08
    mov byte [bx - 0x6e52], 2        ; 0x1b0a
    jmp short @..api_idx_0008_UNPO.l6 ; 0x1b0f
jumptable_1b11:
    dw jumptable_1b11_case_0 - IMAGE_BASE + __zres_end ; 0x1b11
    dw jumptable_1b11_case_1 - IMAGE_BASE + __zres_end ; 0x1b13
    dw jumptable_1b11_case_2 - IMAGE_BASE + __zres_end ; 0x1b15
    dw jumptable_1b11_case_1 - IMAGE_BASE + __zres_end ; 0x1b17
    dw jumptable_1b11_case_0 - IMAGE_BASE + __zres_end ; 0x1b19
    dw jumptable_1b11_case_1 - IMAGE_BASE + __zres_end ; 0x1b1b
@..api_idx_0008_UNPO.l5:
    cmp ax, strict word 6            ; 0x1b1d
    jae short @..api_idx_0008_UNPO.l6 ; 0x1b20
    xchg bx, ax                      ; 0x1b22
    shl bx, 1                        ; 0x1b23
    jmp [cs:bx + jumptable_1b11 - IMAGE_BASE + __zres_end] ; 0x1b25
@..api_idx_0008_UNPO.l6:
    push word [bp - 0x0002]          ; 0x1b2a
    mov ax, word [bss_0e14]          ; 0x1b2d
    add ax, 0x8b0                    ; 0x1b30
    push ax                          ; 0x1b33
    call ds_leaf_loc_PRVP            ; 0x1b34
    add sp, byte 4                   ; 0x1b37
    test ax, ax                      ; 0x1b3a
    jne short @..api_idx_0008_UNPO.l7 ; 0x1b3c
    jmp near @..api_idx_0008_UNPO.l10 ; 0x1b3e
@..api_idx_0008_UNPO.l7:
    mov ax, word [bss_91a8]          ; 0x1b41
    jmp short @..api_idx_0008_UNPO.l9 ; 0x1b44
jumptable_1ba0_case_1:
    mov ax, 5                        ; 0x1b46
    imul word [bss_91aa]             ; 0x1b49
    add ax, word [bp + 0xe]          ; 0x1b4d
    mov bx, ax                       ; 0x1b50
    mov byte [bx - 0x6e52], 2        ; 0x1b52
    jmp short @..api_idx_0008_UNPO.l10 ; 0x1b57
jumptable_1ba0_case_2:
    mov ax, 5                        ; 0x1b59
    imul word [bss_91aa]             ; 0x1b5c
    add ax, word [bp + 0xe]          ; 0x1b60
    mov bx, ax                       ; 0x1b63
    mov byte [bx - 0x6e39], 1        ; 0x1b65
    jmp short @..api_idx_0008_UNPO.l10 ; 0x1b6a
jumptable_1ba0_case_5:
    mov ax, 5                        ; 0x1b6c
    imul word [bss_91aa]             ; 0x1b6f
    add ax, word [bp + 0xe]          ; 0x1b73
    mov bx, ax                       ; 0x1b76
    mov byte [bx - 0x6e52], 3        ; 0x1b78
    jmp short @..api_idx_0008_UNPO.l10 ; 0x1b7d
jumptable_1ba0_case_0:
    mov ax, 5                        ; 0x1b7f
    imul word [bss_91aa]             ; 0x1b82
    add ax, word [bp + 0xe]          ; 0x1b86
    mov bx, ax                       ; 0x1b89
    mov byte [bx - 0x6e20], 1        ; 0x1b8b
    cmp word [bss_91aa], byte 4      ; 0x1b90
    jge short @..api_idx_0008_UNPO.l8 ; 0x1b95
    mov byte [bx - 0x6e1b], 1        ; 0x1b97
@..api_idx_0008_UNPO.l8:
    mov ax, 0                        ; 0x1b9c
    ret                              ; 0x1b9f
jumptable_1ba0:
    dw jumptable_1ba0_case_0 - IMAGE_BASE + __zres_end ; 0x1ba0
    dw jumptable_1ba0_case_1 - IMAGE_BASE + __zres_end ; 0x1ba2
    dw jumptable_1ba0_case_2 - IMAGE_BASE + __zres_end ; 0x1ba4
    dw jumptable_1ba0_case_0 - IMAGE_BASE + __zres_end ; 0x1ba6
    dw jumptable_1ba0_case_2 - IMAGE_BASE + __zres_end ; 0x1ba8
    dw jumptable_1ba0_case_5 - IMAGE_BASE + __zres_end ; 0x1baa
@..api_idx_0008_UNPO.l9:
    cmp ax, strict word 6            ; 0x1bac
    jae short @..api_idx_0008_UNPO.l10 ; 0x1baf
    xchg bx, ax                      ; 0x1bb1
    shl bx, 1                        ; 0x1bb2
    jmp [cs:bx + jumptable_1ba0 - IMAGE_BASE + __zres_end] ; 0x1bb4
@..api_idx_0008_UNPO.l10:
    push word [bp - 0x0002]          ; 0x1bb9
    mov ax, word [bss_0e14]          ; 0x1bbc
    add ax, 0x930                    ; 0x1bbf
    push ax                          ; 0x1bc2
    call ds_leaf_loc_PRVP            ; 0x1bc3
    add sp, byte 4                   ; 0x1bc6
    test ax, ax                      ; 0x1bc9
    je short @..api_idx_0008_UNPO.l15 ; 0x1bcb
    mov ax, word [bss_830c]          ; 0x1bcd
    jmp short @..api_idx_0008_UNPO.l14 ; 0x1bd0
@..api_idx_0008_UNPO.l11:
    mov ax, 5                        ; 0x1bd2
    imul word [bss_91aa]             ; 0x1bd5
    add ax, word [bp + 0xe]          ; 0x1bd9
    mov bx, ax                       ; 0x1bdc
    mov byte [bx - 0x6e52], 3        ; 0x1bde
    jmp short @..api_idx_0008_UNPO.l15 ; 0x1be3
@..api_idx_0008_UNPO.l12:
    mov ax, 5                        ; 0x1be5
    imul word [bss_91aa]             ; 0x1be8
    add ax, word [bp + 0xe]          ; 0x1bec
    mov bx, ax                       ; 0x1bef
    mov byte [bx - 0x6e20], 2        ; 0x1bf1
    cmp word [bss_91aa], byte 4      ; 0x1bf6
    jge short @..api_idx_0008_UNPO.l13 ; 0x1bfb
    mov byte [bx - 0x6e1b], 2        ; 0x1bfd
@..api_idx_0008_UNPO.l13:
    jmp short @..api_idx_0008_UNPO.l15 ; 0x1c02
@..api_idx_0008_UNPO.l14:
    cmp ax, strict word 0xa          ; 0x1c04
    je short @..api_idx_0008_UNPO.l12 ; 0x1c07
    cmp ax, strict word 0xe          ; 0x1c09
    je short @..api_idx_0008_UNPO.l11 ; 0x1c0c
    cmp ax, strict word 0x13         ; 0x1c0e
    je short @..api_idx_0008_UNPO.l11 ; 0x1c11
    cmp ax, strict word 0x19         ; 0x1c13
    je short @..api_idx_0008_UNPO.l12 ; 0x1c16
    cmp ax, strict word 0x1f         ; 0x1c18
    je short @..api_idx_0008_UNPO.l11 ; 0x1c1b
@..api_idx_0008_UNPO.l15:
    mov ax, word [bss_82ee]          ; 0x1c1d
    jmp short @..api_idx_0008_UNPO.l20 ; 0x1c20
@..api_idx_0008_UNPO.l16:
    mov ax, 4                        ; 0x1c22
    push ax                          ; 0x1c25
    push word [bp - 0x0002]          ; 0x1c26
    mov ax, word [bss_0e14]          ; 0x1c29
    add ax, 0x90                     ; 0x1c2c
    push ax                          ; 0x1c2f
    call ds_leaf_loc_NPSL            ; 0x1c30
    add sp, byte 6                   ; 0x1c33
    mov word [bp - 0x0004], ax       ; 0x1c36
    jmp short @..api_idx_0008_UNPO.l21 ; 0x1c39
@..api_idx_0008_UNPO.l17:
    mov ax, 4                        ; 0x1c3b
    push ax                          ; 0x1c3e
    push word [bp - 0x0002]          ; 0x1c3f
    mov ax, word [bss_0e14]          ; 0x1c42
    add ax, 0x290                    ; 0x1c45
    push ax                          ; 0x1c48
    call ds_leaf_loc_NPSL            ; 0x1c49
    add sp, byte 6                   ; 0x1c4c
    mov word [bp - 0x0004], ax       ; 0x1c4f
    jmp short @..api_idx_0008_UNPO.l21 ; 0x1c52
@..api_idx_0008_UNPO.l18:
    push word [bp + 0xc]             ; 0x1c54
    push word [bp + 0xa]             ; 0x1c57
    push word [bp + 0x8]             ; 0x1c5a
    push word [bp + 0x6]             ; 0x1c5d
    push word [bp + 0x4]             ; 0x1c60
    call loc_GPIH                    ; 0x1c63
    add sp, byte 0x0a                ; 0x1c66
    mov word [bp - 0x0004], ax       ; 0x1c69
    jmp short @..api_idx_0008_UNPO.l21 ; 0x1c6c
@..api_idx_0008_UNPO.l19:
    push word [bp + 0xc]             ; 0x1c6e
    push word [bp + 0xa]             ; 0x1c71
    push word [bp + 0x8]             ; 0x1c74
    push word [bp + 0x6]             ; 0x1c77
    push word [bp + 0x4]             ; 0x1c7a
    call loc_MMMO                    ; 0x1c7d
    add sp, byte 0x0a                ; 0x1c80
    mov word [bp - 0x0004], ax       ; 0x1c83
    jmp short @..api_idx_0008_UNPO.l21 ; 0x1c86
@..api_idx_0008_UNPO.l20:
    cmp ax, strict word 0            ; 0x1c88
    je short @..api_idx_0008_UNPO.l16 ; 0x1c8b
    cmp ax, strict word 1            ; 0x1c8d
    je short @..api_idx_0008_UNPO.l17 ; 0x1c90
    cmp ax, strict word 2            ; 0x1c92
    je short @..api_idx_0008_UNPO.l18 ; 0x1c95
    cmp ax, strict word 3            ; 0x1c97
    je short @..api_idx_0008_UNPO.l19 ; 0x1c9a
@..api_idx_0008_UNPO.l21:
    lea ax, word [bp - 0x0008]       ; 0x1c9c
    push ax                          ; 0x1c9f
    lea ax, word [bp - 0x0006]       ; 0x1ca0
    push ax                          ; 0x1ca3
    push word [bp - 0x0002]          ; 0x1ca4
    call loc_RRJG                    ; 0x1ca7
    add sp, byte 6                   ; 0x1caa
    mov ax, word [bss_82ee]          ; 0x1cad
    cmp ax, word [bp - 0x0008]       ; 0x1cb0
    je short @..api_idx_0008_UNPO.l23 ; 0x1cb3
    mov ax, word [bp - 0x0006]       ; 0x1cb5
    cmp ax, strict word 7            ; 0x1cb8
    jl short @..api_idx_0008_UNPO.l22 ; 0x1cbb
    cmp ax, strict word 9            ; 0x1cbd
    jle short @..api_idx_0008_UNPO.l23 ; 0x1cc0
@..api_idx_0008_UNPO.l22:
    cmp ax, strict word 0xb          ; 0x1cc2
    jg short @..api_idx_0008_UNPO.l23 ; 0x1cc5
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1cc7
@..api_idx_0008_UNPO.l23:
    mov ax, word [bp - 0x0006]       ; 0x1cca
    jmp near @..api_idx_0008_UNPO.l27 ; 0x1ccd
jumptable_1de5_case_1:
    mov word [bp - 0x0004], 8        ; 0x1cd0
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1cd5
jumptable_1de5_case_2:
    mov word [bp - 0x0004], 9        ; 0x1cd8
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1cdd
jumptable_1de5_case_3:
    mov word [bp - 0x0004], 0xa      ; 0x1ce0
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1ce5
jumptable_1de5_case_4:
    mov word [bp - 0x0004], 0xb      ; 0x1ce8
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1ced
jumptable_1de5_case_5:
    cmp word [bss_91aa], byte 0      ; 0x1cf0
    jne short @..api_idx_0008_UNPO.l24 ; 0x1cf5
    mov word [bp - 0x0004], 0xc      ; 0x1cf7
@..api_idx_0008_UNPO.l24:
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1cfc
jumptable_1de5_case_6:
    cmp word [bss_91aa], byte 0      ; 0x1cff
    jne short @..api_idx_0008_UNPO.l25 ; 0x1d04
    mov word [bp - 0x0004], 0xd      ; 0x1d06
@..api_idx_0008_UNPO.l25:
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1d0b
jumptable_1de5_case_7:
    mov ax, word [bp - 0x0008]       ; 0x1d0e
    inc ax                           ; 0x1d11
    push ax                          ; 0x1d12
    mov ax, 5                        ; 0x1d13
    imul word [bss_91aa]             ; 0x1d16
    mov cx, ax                       ; 0x1d1a
    add ax, word [bp + 0xe]          ; 0x1d1c
    mov bx, ax                       ; 0x1d1f
    pop ax                           ; 0x1d21
    mov byte [bx - 0x6e07], al       ; 0x1d22
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1d26
jumptable_1de5_case_8:
    mov ax, word [bp - 0x0008]       ; 0x1d29
    inc ax                           ; 0x1d2c
    push ax                          ; 0x1d2d
    mov ax, 0xa                      ; 0x1d2e
    imul word [bss_91aa]             ; 0x1d31
    mov cx, ax                       ; 0x1d35
    mov dx, word [bp + 0xe]          ; 0x1d37
    shl dx, 1                        ; 0x1d3a
    add ax, dx                       ; 0x1d3c
    mov bx, ax                       ; 0x1d3e
    pop ax                           ; 0x1d40
    mov word [bx - 0x6dec], ax       ; 0x1d41
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1d45
jumptable_1de5_case_9:
    mov ax, word [bp - 0x0008]       ; 0x1d48
    inc ax                           ; 0x1d4b
    push ax                          ; 0x1d4c
    mov ax, 0xa                      ; 0x1d4d
    imul word [bss_91aa]             ; 0x1d50
    mov cx, ax                       ; 0x1d54
    mov dx, word [bp + 0xe]          ; 0x1d56
    shl dx, 1                        ; 0x1d59
    add ax, dx                       ; 0x1d5b
    mov bx, ax                       ; 0x1d5d
    pop ax                           ; 0x1d5f
    mov word [bx - 0x6dba], ax       ; 0x1d60
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1d64
jumptable_1de5_case_10:
    mov word [bp - 0x0004], 0xe      ; 0x1d67
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1d6c
jumptable_1de5_case_11:
    mov word [bp - 0x0004], 0xf      ; 0x1d6f
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1d74
jumptable_1de5_case_12:
    mov ax, 5                        ; 0x1d77
    imul word [bss_91aa]             ; 0x1d7a
    add ax, word [bp + 0xe]          ; 0x1d7e
    mov bx, ax                       ; 0x1d81
    mov byte [bx - 0x6d8a], 1        ; 0x1d83
    jmp near @..api_idx_0008_UNPO.l28 ; 0x1d88
jumptable_1de5_case_13:
    mov ax, 5                        ; 0x1d8b
    imul word [bss_91aa]             ; 0x1d8e
    add ax, word [bp + 0xe]          ; 0x1d92
    mov bx, ax                       ; 0x1d95
    mov byte [bx - 0x6e52], 3        ; 0x1d97
    jmp short @..api_idx_0008_UNPO.l28 ; 0x1d9c
jumptable_1de5_case_14:
    mov ax, 0xa                      ; 0x1d9e
    imul word [bss_91aa]             ; 0x1da1
    mov cx, word [bp + 0xe]          ; 0x1da5
    shl cx, 1                        ; 0x1da8
    add ax, cx                       ; 0x1daa
    mov bx, ax                       ; 0x1dac
    mov word [bx - 0x6d6e], 1        ; 0x1dae
jumptable_1de5_case_15:
    cmp word [bp - 0x0006], byte 0x0e ; 0x1db4
    je short @..api_idx_0008_UNPO.l26 ; 0x1db8
    mov ax, 0xa                      ; 0x1dba
    imul word [bss_91aa]             ; 0x1dbd
    mov cx, word [bp + 0xe]          ; 0x1dc1
    shl cx, 1                        ; 0x1dc4
    add ax, cx                       ; 0x1dc6
    mov bx, ax                       ; 0x1dc8
    mov word [bx - 0x6d3c], 1        ; 0x1dca
@..api_idx_0008_UNPO.l26:
    jmp short @..api_idx_0008_UNPO.l28 ; 0x1dd0
jumptable_1de5_case_16:
    mov ax, 5                        ; 0x1dd2
    imul word [bss_91aa]             ; 0x1dd5
    add ax, word [bp + 0xe]          ; 0x1dd9
    mov bx, ax                       ; 0x1ddc
    mov byte [bx - 0x6d8a], 2        ; 0x1dde
    jmp short @..api_idx_0008_UNPO.l28 ; 0x1de3
jumptable_1de5:
    dw jumptable_1de5_case_0 - IMAGE_BASE + __zres_end ; 0x1de5
    dw jumptable_1de5_case_1 - IMAGE_BASE + __zres_end ; 0x1de7
    dw jumptable_1de5_case_2 - IMAGE_BASE + __zres_end ; 0x1de9
    dw jumptable_1de5_case_3 - IMAGE_BASE + __zres_end ; 0x1deb
    dw jumptable_1de5_case_4 - IMAGE_BASE + __zres_end ; 0x1ded
    dw jumptable_1de5_case_5 - IMAGE_BASE + __zres_end ; 0x1def
    dw jumptable_1de5_case_6 - IMAGE_BASE + __zres_end ; 0x1df1
    dw jumptable_1de5_case_7 - IMAGE_BASE + __zres_end ; 0x1df3
    dw jumptable_1de5_case_8 - IMAGE_BASE + __zres_end ; 0x1df5
    dw jumptable_1de5_case_9 - IMAGE_BASE + __zres_end ; 0x1df7
    dw jumptable_1de5_case_10 - IMAGE_BASE + __zres_end ; 0x1df9
    dw jumptable_1de5_case_11 - IMAGE_BASE + __zres_end ; 0x1dfb
    dw jumptable_1de5_case_12 - IMAGE_BASE + __zres_end ; 0x1dfd
    dw jumptable_1de5_case_13 - IMAGE_BASE + __zres_end ; 0x1dff
    dw jumptable_1de5_case_14 - IMAGE_BASE + __zres_end ; 0x1e01
    dw jumptable_1de5_case_15 - IMAGE_BASE + __zres_end ; 0x1e03
    dw jumptable_1de5_case_16 - IMAGE_BASE + __zres_end ; 0x1e05
    dw jumptable_1de5_case_14 - IMAGE_BASE + __zres_end ; 0x1e07
@..api_idx_0008_UNPO.l27:
    cmp ax, strict word 0x12         ; 0x1e09
    jae short @..api_idx_0008_UNPO.l28 ; 0x1e0c
    xchg bx, ax                      ; 0x1e0e
    shl bx, 1                        ; 0x1e0f
    jmp [cs:bx + jumptable_1de5 - IMAGE_BASE + __zres_end] ; 0x1e11
jumptable_1de5_case_0:
@..api_idx_0008_UNPO.l28:
    mov ax, word [bss_830c]          ; 0x1e16
    cmp ax, word [bss_8f28]          ; 0x1e19
    jne short @..api_idx_0008_UNPO.l29 ; 0x1e1d
    mov ax, word [bp + 0xc]          ; 0x1e1f
    cmp ax, word [bss_8f2a]          ; 0x1e22
    jne short @..api_idx_0008_UNPO.l29 ; 0x1e26
    mov ax, word [bp + 0x8]          ; 0x1e28
    cmp ax, word [bss_8f2e]          ; 0x1e2b
    jne short @..api_idx_0008_UNPO.l29 ; 0x1e2f
    mov ax, word [bp + 0xa]          ; 0x1e31
    cmp ax, word [bss_8f2c]          ; 0x1e34
    jne short @..api_idx_0008_UNPO.l29 ; 0x1e38
    mov ax, 5                        ; 0x1e3a
    imul word [bss_91aa]             ; 0x1e3d
    add ax, word [bp + 0xe]          ; 0x1e41
    mov bx, ax                       ; 0x1e44
    mov byte [bx - 0x6d8a], 3        ; 0x1e46
@..api_idx_0008_UNPO.l29:
    mov ax, word [bp - 0x0004]       ; 0x1e4b
    ret                              ; 0x1e4e
