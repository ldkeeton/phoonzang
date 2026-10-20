; auto-generated
api_idx_00ac_OJJU:
    mov ax, 0xff54                   ; 0x7962
    call aztec_csav                  ; 0x7965
    mov word [bp - 0x00aa], 0x43     ; 0x7968
    mov word [bp - 0x00ac], 0        ; 0x796e
    mov word [bp - 0x00a8], 0        ; 0x7974
    mov word [bp - 0x00a2], 0        ; 0x797a
    mov bx, word [bp + 0x4]          ; 0x7980
    mov al, byte [bx + 0x1f]         ; 0x7983
    sub ah, ah                       ; 0x7986
    mov word [bp - 0x004e], ax       ; 0x7988
    mov al, byte [bx + 0x20]         ; 0x798b
    sub ah, ah                       ; 0x798e
    mov word [bp - 0x0050], ax       ; 0x7990
    mov word [bp - 0x0076], 0xffff   ; 0x7993
    mov word [bp - 0x0094], 0xffff   ; 0x7998
    mov word [bp - 0x009e], 0        ; 0x799e
    mov word [bp - 0x00a4], 0        ; 0x79a4
    mov word [bss_91d6], 4           ; 0x79aa
    push word [bss_8462]             ; 0x79b0
    push word [bss_8464]             ; 0x79b4
    mov ax, bss_90e6                 ; 0x79b8
    push ax                          ; 0x79bb
    call loc_HJSG                    ; 0x79bc
    add sp, byte 6                   ; 0x79bf
    mov byte [bss_9136], 0           ; 0x79c2
    mov byte [bss_9186], 0           ; 0x79c7
    mov word [bp - 0x00a6], 1        ; 0x79cc
    cmp word [bss_8464], byte 0      ; 0x79d2
    je short @..api_idx_00ac_OJJU.l1 ; 0x79d7
    jmp near @..api_idx_00ac_OJJU.l15 ; 0x79d9
@..api_idx_00ac_OJJU.l1:
    mov ax, bss_9136                 ; 0x79dc
    push ax                          ; 0x79df
    mov ax, word [bp + 0x8]          ; 0x79e0
    add ax, 0xd16                    ; 0x79e3
    push ax                          ; 0x79e6
    call ds_app_mem_TIMR             ; 0x79e7
    add sp, byte 4                   ; 0x79ea
    mov word [bp - 0x00a6], 0        ; 0x79ed
    mov ax, 0x248                    ; 0x79f3
    imul word [bss_8462]             ; 0x79f6
    add ax, word [bp + 0x6]          ; 0x79fa
    mov bx, ax                       ; 0x79fd
    mov al, byte [bx + 0x5d48]       ; 0x79ff
    sub ah, ah                       ; 0x7a03
    mov word [bp - 0x004c], ax       ; 0x7a05
    cmp word [bp + 0x8], byte 8      ; 0x7a08
    jne short @..api_idx_00ac_OJJU.l2 ; 0x7a0c
    mov ax, 0x248                    ; 0x7a0e
    imul word [bss_8462]             ; 0x7a11
    push ax                          ; 0x7a15
    mov ax, 0xc                      ; 0x7a16
    imul word [bp - 0x004c]          ; 0x7a19
    mov cx, ax                       ; 0x7a1c
    pop ax                           ; 0x7a1e
    add ax, cx                       ; 0x7a1f
    mov bx, ax                       ; 0x7a21
    mov al, byte [bx + 0x5c3b]       ; 0x7a23
    sub ah, ah                       ; 0x7a27
    test ax, 0x20                    ; 0x7a29
    jne short @..api_idx_00ac_OJJU.l2 ; 0x7a2c
    mov ax, 0x248                    ; 0x7a2e
    imul word [bss_8462]             ; 0x7a31
    mov bx, ax                       ; 0x7a35
    mov al, byte [bx + 0x5d49]       ; 0x7a37
    sub ah, ah                       ; 0x7a3b
    mov word [bp - 0x004c], ax       ; 0x7a3d
@..api_idx_00ac_OJJU.l2:
    mov bx, word [bp + 0x4]          ; 0x7a40
    cmp byte [bx + 0x2b], 0          ; 0x7a43
    je short @..api_idx_00ac_OJJU.l3 ; 0x7a47
    cmp word [bp + 0x8], byte 4      ; 0x7a49
    je short @..api_idx_00ac_OJJU.l3 ; 0x7a4d
    cmp word [bp + 0x8], byte 8      ; 0x7a4f
    je short @..api_idx_00ac_OJJU.l3 ; 0x7a53
    mov ax, 0x9136                   ; 0x7a55
    push ax                          ; 0x7a58
    mov ax, 2                        ; 0x7a59
    push ax                          ; 0x7a5c
    call random_below                ; 0x7a5d
    pop cx                           ; 0x7a60
    add ax, 0xd39                    ; 0x7a61
    push ax                          ; 0x7a64
    call ds_app_mem_TIMR             ; 0x7a65
    add sp, byte 4                   ; 0x7a68
@..api_idx_00ac_OJJU.l3:
    cmp word [bp - 0x004c], strict word 0xff ; 0x7a6b
    jne short @..api_idx_00ac_OJJU.l4 ; 0x7a70
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7a72
@..api_idx_00ac_OJJU.l4:
    mov ax, 0                        ; 0x7a75
    push ax                          ; 0x7a78
    mov ax, 0x248                    ; 0x7a79
    imul word [bss_8462]             ; 0x7a7c
    push ax                          ; 0x7a80
    mov ax, 0xc                      ; 0x7a81
    imul word [bp - 0x004c]          ; 0x7a84
    mov cx, ax                       ; 0x7a87
    pop ax                           ; 0x7a89
    add ax, cx                       ; 0x7a8a
    mov bx, ax                       ; 0x7a8c
    push word [bx + 0x5c34]          ; 0x7a8e
    lea ax, word [bp - 0x004a]       ; 0x7a92
    push ax                          ; 0x7a95
    mov ax, 1                        ; 0x7a96
    push ax                          ; 0x7a99
    call data_record_io              ; 0x7a9a
    add sp, byte 8                   ; 0x7a9d
    mov ax, 0x248                    ; 0x7aa0
    imul word [bss_8462]             ; 0x7aa3
    push ax                          ; 0x7aa7
    mov ax, 0xc                      ; 0x7aa8
    imul word [bp - 0x004c]          ; 0x7aab
    mov cx, ax                       ; 0x7aae
    pop ax                           ; 0x7ab0
    add ax, cx                       ; 0x7ab1
    mov bx, ax                       ; 0x7ab3
    mov al, byte [bx + 0x5c3b]       ; 0x7ab5
    sub ah, ah                       ; 0x7ab9
    test ax, 0x80                    ; 0x7abb
    je short @..api_idx_00ac_OJJU.l5 ; 0x7abe
    lea ax, word [bp - 0x004a]       ; 0x7ac0
    push ax                          ; 0x7ac3
    mov ax, bss_9186                 ; 0x7ac4
    push ax                          ; 0x7ac7
    call aztec_strcpy                ; 0x7ac8
    add sp, byte 4                   ; 0x7acb
    jmp short @..api_idx_00ac_OJJU.l6 ; 0x7ace
@..api_idx_00ac_OJJU.l5:
    mov ax, bss_9186                 ; 0x7ad0
    push ax                          ; 0x7ad3
    mov al, byte [bp - 0x0011]       ; 0x7ad4
    sub ah, ah                       ; 0x7ad7
    add ax, 0x1770                   ; 0x7ad9
    push ax                          ; 0x7adc
    call ds_app_mem_TIMR             ; 0x7add
    add sp, byte 4                   ; 0x7ae0
@..api_idx_00ac_OJJU.l6:
    mov ax, bss_9186                 ; 0x7ae3
    push ax                          ; 0x7ae6
    call api_idx_0002_GKQL           ; 0x7ae7
    pop cx                           ; 0x7aea
    cmp word [bp + 0x8], byte 4      ; 0x7aeb
    je short @..api_idx_00ac_OJJU.l7 ; 0x7aef
    cmp word [bp + 0x8], byte 8      ; 0x7af1
    je short @..api_idx_00ac_OJJU.l7 ; 0x7af5
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7af7
@..api_idx_00ac_OJJU.l7:
    cmp word [bp + 0x8], byte 4      ; 0x7afa
    jne short @..api_idx_00ac_OJJU.l8 ; 0x7afe
    cmp word [bp - 0x0028], byte 0   ; 0x7b00
    je short @..api_idx_00ac_OJJU.l8 ; 0x7b04
    mov ax, word [bp - 0x0028]       ; 0x7b06
    mov word [bp - 0x0094], ax       ; 0x7b09
    mov ax, bss_9136                 ; 0x7b0d
    push ax                          ; 0x7b10
    mov ax, 0xd38                    ; 0x7b11
    push ax                          ; 0x7b14
    call ds_app_mem_TIMR             ; 0x7b15
    add sp, byte 4                   ; 0x7b18
@..api_idx_00ac_OJJU.l8:
    mov ax, 0x248                    ; 0x7b1b
    imul word [bss_8462]             ; 0x7b1e
    push ax                          ; 0x7b22
    mov ax, 0xc                      ; 0x7b23
    imul word [bp - 0x004c]          ; 0x7b26
    mov cx, ax                       ; 0x7b29
    pop ax                           ; 0x7b2b
    add ax, cx                       ; 0x7b2c
    mov bx, ax                       ; 0x7b2e
    mov al, byte [bx + 0x5c39]       ; 0x7b30
    sub ah, ah                       ; 0x7b34
    jmp near @..api_idx_00ac_OJJU.l13 ; 0x7b36
jumptable_7c0e_case_16:
    mov word [bp - 0x0076], 0        ; 0x7b39
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b3e
jumptable_7c0e_case_17:
    mov word [bp - 0x0076], 0x14     ; 0x7b41
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b46
jumptable_7c0e_case_18:
    mov word [bp - 0x0076], 0x11     ; 0x7b49
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b4e
jumptable_7c0e_case_19:
    mov word [bp - 0x0076], 2        ; 0x7b51
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b56
jumptable_7c0e_case_23:
    mov word [bp - 0x0076], 4        ; 0x7b59
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b5e
jumptable_7c0e_case_20:
    mov word [bp - 0x0076], 0x10     ; 0x7b61
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b66
jumptable_7c0e_case_24:
    mov word [bp - 0x0076], 0x12     ; 0x7b69
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b6e
jumptable_7c0e_case_21:
    mov word [bp - 0x0076], 0x13     ; 0x7b71
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b76
jumptable_7c0e_case_22:
    mov word [bp - 0x0076], 0x16     ; 0x7b79
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b7e
jumptable_7c0e_case_30:
    mov word [bp - 0x0076], 6        ; 0x7b81
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7b86
jumptable_7c0e_case_28:
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
    jbe short @..api_idx_00ac_OJJU.l9 ; 0x7ba3
    mov word [bp - 0x0076], 0xf      ; 0x7ba5
    mov word [bss_90de], 0xc         ; 0x7baa
    jmp short @..api_idx_00ac_OJJU.l10 ; 0x7bb0
@..api_idx_00ac_OJJU.l9:
    mov word [bp - 0x00a4], 1        ; 0x7bb2
@..api_idx_00ac_OJJU.l10:
    mov ax, bss_9136                 ; 0x7bb8
    push ax                          ; 0x7bbb
    mov ax, 0xd1f                    ; 0x7bbc
    push ax                          ; 0x7bbf
    call ds_app_mem_TIMR             ; 0x7bc0
    add sp, byte 4                   ; 0x7bc3
    jmp near @..api_idx_00ac_OJJU.l14 ; 0x7bc6
jumptable_7c0e_case_31:
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
    jbe short @..api_idx_00ac_OJJU.l11 ; 0x7be3
    mov word [bp - 0x0076], 8        ; 0x7be5
    mov word [bss_90de], 5           ; 0x7bea
    jmp short @..api_idx_00ac_OJJU.l12 ; 0x7bf0
@..api_idx_00ac_OJJU.l11:
    mov word [bp - 0x00a4], 1        ; 0x7bf2
@..api_idx_00ac_OJJU.l12:
    mov ax, bss_9136                 ; 0x7bf8
    push ax                          ; 0x7bfb
    mov ax, 0xd1f                    ; 0x7bfc
    push ax                          ; 0x7bff
    call ds_app_mem_TIMR             ; 0x7c00
    add sp, byte 4                   ; 0x7c03
    jmp short @..api_idx_00ac_OJJU.l14 ; 0x7c06
@..api_idx_00ac_OJJU.l13:
    mov cx, 0x11                     ; 0x7c08
    call aztec_cswt                  ; 0x7c0b
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
    dw jumptable_7c0e_case_16 - IMAGE_BASE + __zres_end ; 0x7c2e
    dw jumptable_7c0e_case_17 - IMAGE_BASE + __zres_end ; 0x7c30
    dw jumptable_7c0e_case_18 - IMAGE_BASE + __zres_end ; 0x7c32
    dw jumptable_7c0e_case_19 - IMAGE_BASE + __zres_end ; 0x7c34
    dw jumptable_7c0e_case_20 - IMAGE_BASE + __zres_end ; 0x7c36
    dw jumptable_7c0e_case_21 - IMAGE_BASE + __zres_end ; 0x7c38
    dw jumptable_7c0e_case_22 - IMAGE_BASE + __zres_end ; 0x7c3a
    dw jumptable_7c0e_case_23 - IMAGE_BASE + __zres_end ; 0x7c3c
    dw jumptable_7c0e_case_24 - IMAGE_BASE + __zres_end ; 0x7c3e
    dw jumptable_7c0e_case_21 - IMAGE_BASE + __zres_end ; 0x7c40
    dw jumptable_7c0e_case_24 - IMAGE_BASE + __zres_end ; 0x7c42
    dw jumptable_7c0e_case_21 - IMAGE_BASE + __zres_end ; 0x7c44
    dw jumptable_7c0e_case_28 - IMAGE_BASE + __zres_end ; 0x7c46
    dw jumptable_7c0e_case_28 - IMAGE_BASE + __zres_end ; 0x7c48
    dw jumptable_7c0e_case_30 - IMAGE_BASE + __zres_end ; 0x7c4a
    dw jumptable_7c0e_case_31 - IMAGE_BASE + __zres_end ; 0x7c4c
    dw jumptable_7c0e_case_32 - IMAGE_BASE + __zres_end ; 0x7c4e
jumptable_7c0e_case_32:
@..api_idx_00ac_OJJU.l14:
    jmp near @..api_idx_00ac_OJJU.l24 ; 0x7c50
@..api_idx_00ac_OJJU.l15:
    mov ax, word [bss_8464]          ; 0x7c53
    shl ax, 1                        ; 0x7c56
    mov bx, ax                       ; 0x7c58
    mov bx, word [bx + party_char_ext] ; 0x7c5a
    mov si, word [bp + 0x6]          ; 0x7c5e
    cmp byte [bx + si + 0x86], 3     ; 0x7c61
    jbe short @..api_idx_00ac_OJJU.l16 ; 0x7c66
    jmp near @..api_idx_00ac_OJJU.l23 ; 0x7c68
@..api_idx_00ac_OJJU.l16:
    mov ax, bss_9136                 ; 0x7c6b
    push ax                          ; 0x7c6e
    mov ax, word [bp + 0x8]          ; 0x7c6f
    add ax, 0xd16                    ; 0x7c72
    push ax                          ; 0x7c75
    call ds_app_mem_TIMR             ; 0x7c76
    add sp, byte 4                   ; 0x7c79
    mov bx, word [bp + 0x4]          ; 0x7c7c
    cmp byte [bx + 0x2b], 0          ; 0x7c7f
    je short @..api_idx_00ac_OJJU.l17 ; 0x7c83
    mov ax, word [bp + 0x8]          ; 0x7c85
    cmp ax, strict word 4            ; 0x7c88
    je short @..api_idx_00ac_OJJU.l17 ; 0x7c8b
    cmp ax, strict word 8            ; 0x7c8d
    je short @..api_idx_00ac_OJJU.l17 ; 0x7c90
    mov ax, 0x9136                   ; 0x7c92
    push ax                          ; 0x7c95
    mov ax, 2                        ; 0x7c96
    push ax                          ; 0x7c99
    call random_below                ; 0x7c9a
    pop cx                           ; 0x7c9d
    add ax, 0xd39                    ; 0x7c9e
    push ax                          ; 0x7ca1
    call ds_app_mem_TIMR             ; 0x7ca2
    add sp, byte 4                   ; 0x7ca5
@..api_idx_00ac_OJJU.l17:
    cmp word [bp + 0x8], byte 4      ; 0x7ca8
    je short @..api_idx_00ac_OJJU.l18 ; 0x7cac
    cmp word [bp + 0x8], byte 8      ; 0x7cae
    je short @..api_idx_00ac_OJJU.l18 ; 0x7cb2
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7cb4
@..api_idx_00ac_OJJU.l18:
    mov ax, 0x12                     ; 0x7cb7
    imul word [bp + 0x6]             ; 0x7cba
    mov si, ax                       ; 0x7cbd
    mov ax, word [bss_8464]          ; 0x7cbf
    shl ax, 1                        ; 0x7cc2
    mov bx, ax                       ; 0x7cc4
    mov bx, word [bx + party_char_ext] ; 0x7cc6
    mov ax, word [bx + si + 0x44]    ; 0x7cca
    mov word [bp - 0x0070], ax       ; 0x7ccd
    mov ax, word [bx + si + 0x46]    ; 0x7cd0
    mov word [bp - 0x006e], ax       ; 0x7cd3
    mov si, word [bp + 0x6]          ; 0x7cd6
    mov al, byte [bx + si + 0x89]    ; 0x7cd9
    sub ah, ah                       ; 0x7cdd
    jmp near @..api_idx_00ac_OJJU.l20 ; 0x7cdf
jumptable_7e61_case_1:
    mov word [bp - 0x0076], 0x15     ; 0x7ce2
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7ce7
jumptable_7e61_case_49:
    mov word [bp - 0x0094], 0x714    ; 0x7cea
    mov word [bp - 0x0076], 0xa      ; 0x7cf0
    mov word [bss_90de], 0xb         ; 0x7cf5
    mov ax, bss_9136                 ; 0x7cfb
    push ax                          ; 0x7cfe
    mov ax, 0xd1f                    ; 0x7cff
    push ax                          ; 0x7d02
    call ds_app_mem_TIMR             ; 0x7d03
    add sp, byte 4                   ; 0x7d06
    mov word [bp - 0x00ac], 1        ; 0x7d09
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7d0f
jumptable_7e61_case_50:
    mov word [bp - 0x0094], 0x506    ; 0x7d12
    mov word [bp - 0x0076], 8        ; 0x7d18
    mov word [bss_90de], 0xb         ; 0x7d1d
    mov ax, bss_9136                 ; 0x7d23
    push ax                          ; 0x7d26
    mov ax, 0xd1f                    ; 0x7d27
    push ax                          ; 0x7d2a
    call ds_app_mem_TIMR             ; 0x7d2b
    add sp, byte 4                   ; 0x7d2e
    mov word [bp - 0x00ac], 1        ; 0x7d31
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7d37
jumptable_7e61_case_7:
    mov word [bp - 0x0076], 8        ; 0x7d3a
    mov word [bss_90de], 5           ; 0x7d3f
    mov ax, bss_9136                 ; 0x7d45
    push ax                          ; 0x7d48
    mov ax, 0xd1f                    ; 0x7d49
    push ax                          ; 0x7d4c
    call ds_app_mem_TIMR             ; 0x7d4d
    add sp, byte 4                   ; 0x7d50
    mov word [bp - 0x00a6], 0        ; 0x7d53
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7d59
jumptable_7e61_case_9:
    mov word [bp - 0x0076], 2        ; 0x7d5c
    mov word [bp - 0x00a6], 0        ; 0x7d61
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7d67
jumptable_7e61_case_53:
    mov word [bp - 0x00a6], 2        ; 0x7d6a
jumptable_7e61_case_54:
    cmp word [bp - 0x00a6], byte 1   ; 0x7d70
    jne short @..api_idx_00ac_OJJU.l19 ; 0x7d75
    mov word [bp - 0x00a6], 3        ; 0x7d77
jumptable_7e61_case_13:
@..api_idx_00ac_OJJU.l19:
    mov word [bp - 0x0076], 0xf      ; 0x7d7d
    mov word [bss_90de], 0xc         ; 0x7d82
    mov ax, bss_9136                 ; 0x7d88
    push ax                          ; 0x7d8b
    mov ax, 0xd1f                    ; 0x7d8c
    push ax                          ; 0x7d8f
    call ds_app_mem_TIMR             ; 0x7d90
    add sp, byte 4                   ; 0x7d93
    mov word [bp - 0x00ac], 1        ; 0x7d96
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7d9c
jumptable_7e61_case_16:
    mov word [bp - 0x0076], 0        ; 0x7d9f
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7da4
jumptable_7e61_case_23:
    mov word [bp - 0x0076], 0xc      ; 0x7da7
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7dac
jumptable_7e61_case_30:
    mov word [bp - 0x0076], 0x10     ; 0x7daf
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7db4
jumptable_7e61_case_31:
    mov word [bp - 0x0076], 6        ; 0x7db7
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7dbc
jumptable_7e61_case_36:
    mov word [bp - 0x0076], 0x11     ; 0x7dbf
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7dc4
jumptable_7e61_case_37:
    mov word [bp - 0x0076], 4        ; 0x7dc7
    mov word [bp - 0x00a6], 0        ; 0x7dcc
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7dd2
jumptable_7e61_case_52:
    mov word [bp - 0x0094], 0x643    ; 0x7dd5
    mov word [bp - 0x0076], 0x16     ; 0x7ddb
    mov word [bss_90de], 0xa         ; 0x7de0
    mov ax, bss_9136                 ; 0x7de6
    push ax                          ; 0x7de9
    mov ax, 0xd1f                    ; 0x7dea
    push ax                          ; 0x7ded
    call ds_app_mem_TIMR             ; 0x7dee
    add sp, byte 4                   ; 0x7df1
    mov word [bp - 0x00ac], 1        ; 0x7df4
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7dfa
jumptable_7e61_case_56:
    mov word [bp - 0x0094], 0x702    ; 0x7dfd
    mov word [bp - 0x0076], 0xc      ; 0x7e03
    mov word [bss_90de], 0xc         ; 0x7e08
    mov ax, bss_9136                 ; 0x7e0e
    push ax                          ; 0x7e11
    mov ax, 0xd1f                    ; 0x7e12
    push ax                          ; 0x7e15
    call ds_app_mem_TIMR             ; 0x7e16
    add sp, byte 4                   ; 0x7e19
    mov word [bp - 0x00ac], 1        ; 0x7e1c
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7e22
jumptable_7e61_case_60:
    mov word [bp - 0x00aa], 0xa4     ; 0x7e25
    mov word [bp - 0x0094], 0x641    ; 0x7e2b
    mov word [bp - 0x0076], 0xe      ; 0x7e31
    mov ax, 0x39                     ; 0x7e36
    push ax                          ; 0x7e39
    call ds_app_QTIV                 ; 0x7e3a
    pop cx                           ; 0x7e3d
    mov word [bp - 0x00a8], 0x2c     ; 0x7e3e
    mov word [bss_90de], 0x10        ; 0x7e44
    mov ax, bss_9136                 ; 0x7e4a
    push ax                          ; 0x7e4d
    mov ax, 0xd3c                    ; 0x7e4e
    push ax                          ; 0x7e51
    call ds_app_mem_TIMR             ; 0x7e52
    add sp, byte 4                   ; 0x7e55
    mov word [bp - 0x00ac], 1        ; 0x7e58
    jmp near @..api_idx_00ac_OJJU.l21 ; 0x7e5e
jumptable_7e61:
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e61
    dw jumptable_7e61_case_1 - IMAGE_BASE + __zres_end ; 0x7e63
    dw jumptable_7e61_case_1 - IMAGE_BASE + __zres_end ; 0x7e65
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e67
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e69
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e6b
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e6d
    dw jumptable_7e61_case_7 - IMAGE_BASE + __zres_end ; 0x7e6f
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e71
    dw jumptable_7e61_case_9 - IMAGE_BASE + __zres_end ; 0x7e73
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e75
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e77
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e79
    dw jumptable_7e61_case_13 - IMAGE_BASE + __zres_end ; 0x7e7b
    dw jumptable_7e61_case_13 - IMAGE_BASE + __zres_end ; 0x7e7d
    dw jumptable_7e61_case_13 - IMAGE_BASE + __zres_end ; 0x7e7f
    dw jumptable_7e61_case_16 - IMAGE_BASE + __zres_end ; 0x7e81
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e83
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e85
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e87
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e89
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e8b
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e8d
    dw jumptable_7e61_case_23 - IMAGE_BASE + __zres_end ; 0x7e8f
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e91
    dw jumptable_7e61_case_7 - IMAGE_BASE + __zres_end ; 0x7e93
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e95
    dw jumptable_7e61_case_16 - IMAGE_BASE + __zres_end ; 0x7e97
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e99
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7e9b
    dw jumptable_7e61_case_30 - IMAGE_BASE + __zres_end ; 0x7e9d
    dw jumptable_7e61_case_31 - IMAGE_BASE + __zres_end ; 0x7e9f
    dw jumptable_7e61_case_9 - IMAGE_BASE + __zres_end ; 0x7ea1
    dw jumptable_7e61_case_13 - IMAGE_BASE + __zres_end ; 0x7ea3
    dw jumptable_7e61_case_16 - IMAGE_BASE + __zres_end ; 0x7ea5
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ea7
    dw jumptable_7e61_case_36 - IMAGE_BASE + __zres_end ; 0x7ea9
    dw jumptable_7e61_case_37 - IMAGE_BASE + __zres_end ; 0x7eab
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ead
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7eaf
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7eb1
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7eb3
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7eb5
    dw jumptable_7e61_case_13 - IMAGE_BASE + __zres_end ; 0x7eb7
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7eb9
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ebb
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ebd
    dw jumptable_7e61_case_30 - IMAGE_BASE + __zres_end ; 0x7ebf
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ec1
    dw jumptable_7e61_case_49 - IMAGE_BASE + __zres_end ; 0x7ec3
    dw jumptable_7e61_case_50 - IMAGE_BASE + __zres_end ; 0x7ec5
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ec7
    dw jumptable_7e61_case_52 - IMAGE_BASE + __zres_end ; 0x7ec9
    dw jumptable_7e61_case_53 - IMAGE_BASE + __zres_end ; 0x7ecb
    dw jumptable_7e61_case_54 - IMAGE_BASE + __zres_end ; 0x7ecd
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ecf
    dw jumptable_7e61_case_56 - IMAGE_BASE + __zres_end ; 0x7ed1
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ed3
    dw jumptable_7e61_case_0 - IMAGE_BASE + __zres_end ; 0x7ed5
    dw jumptable_7e61_case_13 - IMAGE_BASE + __zres_end ; 0x7ed7
    dw jumptable_7e61_case_60 - IMAGE_BASE + __zres_end ; 0x7ed9
@..api_idx_00ac_OJJU.l20:
    cmp ax, strict word 0x3d         ; 0x7edb
    jae short @..api_idx_00ac_OJJU.l21 ; 0x7ede
    xchg bx, ax                      ; 0x7ee0
    shl bx, 1                        ; 0x7ee1
    jmp [cs:bx + jumptable_7e61 - IMAGE_BASE + __zres_end] ; 0x7ee3
jumptable_7e61_case_0:
@..api_idx_00ac_OJJU.l21:
    mov ax, word [bss_8464]          ; 0x7ee8
    shl ax, 1                        ; 0x7eeb
    mov bx, ax                       ; 0x7eed
    mov bx, word [bx + party_char_ext] ; 0x7eef
    mov si, word [bp + 0x6]          ; 0x7ef3
    cmp byte [bx + si + 0x89], 0     ; 0x7ef6
    jbe short @..api_idx_00ac_OJJU.l22 ; 0x7efb
    mov ax, bss_9186                 ; 0x7efd
    push ax                          ; 0x7f00
    mov al, byte [bx + si + 0x89]    ; 0x7f01
    sub ah, ah                       ; 0x7f05
    add ax, 0xed7                    ; 0x7f07
    push ax                          ; 0x7f0a
    call ds_app_mem_TIMR             ; 0x7f0b
    add sp, byte 4                   ; 0x7f0e
@..api_idx_00ac_OJJU.l22:
    jmp short @..api_idx_00ac_OJJU.l24 ; 0x7f11
@..api_idx_00ac_OJJU.l23:
    mov ax, bss_9136                 ; 0x7f13
    push ax                          ; 0x7f16
    mov ax, word [bss_8464]          ; 0x7f17
    shl ax, 1                        ; 0x7f1a
    mov bx, ax                       ; 0x7f1c
    mov bx, word [bx + party_char_ext] ; 0x7f1e
    mov si, word [bp + 0x6]          ; 0x7f22
    mov al, byte [bx + si + 0x86]    ; 0x7f25
    sub ah, ah                       ; 0x7f29
    add ax, 0xd2b                    ; 0x7f2b
    push ax                          ; 0x7f2e
    call ds_app_mem_TIMR             ; 0x7f2f
    add sp, byte 4                   ; 0x7f32
@..api_idx_00ac_OJJU.l24:
    cmp word [bp - 0x00a6], byte 0   ; 0x7f35
    jle short @..api_idx_00ac_OJJU.l25 ; 0x7f3a
    mov ax, 0x2c                     ; 0x7f3c
    imul word [bss_8462]             ; 0x7f3f
    mov si, ax                       ; 0x7f43
    mov ax, word [bss_8464]          ; 0x7f45
    shl ax, 1                        ; 0x7f48
    mov bx, ax                       ; 0x7f4a
    mov bx, word [bx + party_char]   ; 0x7f4c
    cmp byte [bx + si + 0x2a], 0xff  ; 0x7f50
    je short @..api_idx_00ac_OJJU.l25 ; 0x7f54
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
    call fill_action_slot_table      ; 0x7f79
    add sp, byte 8                   ; 0x7f7c
    mov ax, 5                        ; 0x7f7f
    push ax                          ; 0x7f82
    call api_idx_0004_QUPL           ; 0x7f83
    pop cx                           ; 0x7f86
@..api_idx_00ac_OJJU.l25:
    push word [bp - 0x00aa]          ; 0x7f87
    push word [bp - 0x00aa]          ; 0x7f8b
    mov ax, 0x43                     ; 0x7f8f
    cmp word [bss_8464], byte 0      ; 0x7f92
    jne short @..api_idx_00ac_OJJU.l26 ; 0x7f97
    mov ax, 1                        ; 0x7f99
@..api_idx_00ac_OJJU.l26:
    push ax                          ; 0x7f9c
    mov ax, bss_9186                 ; 0x7f9d
    push ax                          ; 0x7fa0
    mov ax, bss_9136                 ; 0x7fa1
    push ax                          ; 0x7fa4
    mov ax, bss_90e6                 ; 0x7fa5
    push ax                          ; 0x7fa8
    mov ax, 0                        ; 0x7fa9
    push ax                          ; 0x7fac
    call api_idx_0004_QSNR           ; 0x7fad
    add sp, byte 0x0e                ; 0x7fb0
    cmp word [bp - 0x0094], byte 0xff ; 0x7fb3
    jne short @..api_idx_00ac_OJJU.l28 ; 0x7fb8
    cmp word [bp - 0x00a4], byte 0   ; 0x7fba
    jne short @..api_idx_00ac_OJJU.l28 ; 0x7fbf
    push word [bp - 0x0050]          ; 0x7fc1
    push word [bp - 0x004e]          ; 0x7fc4
    mov ax, bss_90e6                 ; 0x7fc7
    push ax                          ; 0x7fca
    call loc_HJSG                    ; 0x7fcb
    add sp, byte 6                   ; 0x7fce
    mov ax, 2                        ; 0x7fd1
    push ax                          ; 0x7fd4
    mov ax, 0x43                     ; 0x7fd5
    cmp word [bp - 0x004e], byte 0   ; 0x7fd8
    jne short @..api_idx_00ac_OJJU.l27 ; 0x7fdc
    mov ax, 1                        ; 0x7fde
@..api_idx_00ac_OJJU.l27:
    push ax                          ; 0x7fe1
    mov ax, bss_90e6                 ; 0x7fe2
    push ax                          ; 0x7fe5
    call api_idx_0002_TMNV           ; 0x7fe6
    add sp, byte 6                   ; 0x7fe9
@..api_idx_00ac_OJJU.l28:
    cmp word [bp - 0x0076], byte 0xff ; 0x7fec
    je short @..api_idx_00ac_OJJU.l32 ; 0x7ff0
    mov word [bss_91d8], 0           ; 0x7ff2
    push word [bss_90de]             ; 0x7ff8
    mov ax, word [bp - 0x0094]       ; 0x7ffc
    mov cx, 0x100                    ; 0x8000
    cwd                              ; 0x8003
    idiv cx                          ; 0x8004
    mov ax, dx                       ; 0x8006
    cmp ax, strict word 0x41         ; 0x8008
    je short @..api_idx_00ac_OJJU.l29 ; 0x800b
    mov ax, word [bp - 0x0094]       ; 0x800d
    cmp ax, strict word 0xffff       ; 0x8011
    jne short @..api_idx_00ac_OJJU.l30 ; 0x8014
@..api_idx_00ac_OJJU.l29:
    mov ax, 0                        ; 0x8016
    jmp short @..api_idx_00ac_OJJU.l31 ; 0x8019
@..api_idx_00ac_OJJU.l30:
    mov ax, 1                        ; 0x801b
@..api_idx_00ac_OJJU.l31:
    push ax                          ; 0x801e
    push word [bp - 0x0076]          ; 0x801f
    push word [bp - 0x0050]          ; 0x8022
    push word [bp - 0x004e]          ; 0x8025
    call api_idx_0004_PMSR           ; 0x8028
    add sp, byte 0x0a                ; 0x802b
    mov word [bp - 0x009e], 0xffff   ; 0x802e
@..api_idx_00ac_OJJU.l32:
    mov ax, word [bp - 0x004e]       ; 0x8034
    shl ax, 1                        ; 0x8037
    mov bx, ax                       ; 0x8039
    mov bx, word [bx + party_char_ext] ; 0x803b
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
    mov bx, word [bx + party_char_ext] ; 0x8065
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
    je short @..api_idx_00ac_OJJU.l33 ; 0x80a0
    jmp near @..api_idx_00ac_OJJU.l57 ; 0x80a2
@..api_idx_00ac_OJJU.l33:
    cmp word [bp + 0x8], byte 4      ; 0x80a5
    jne short @..api_idx_00ac_OJJU.l34 ; 0x80a9
    mov word [bp - 0x007c], 5        ; 0x80ab
    jmp near @..api_idx_00ac_OJJU.l39 ; 0x80b0
@..api_idx_00ac_OJJU.l34:
    mov ax, 0x248                    ; 0x80b3
    imul word [bss_8462]             ; 0x80b6
    add ax, word [bp + 0x6]          ; 0x80ba
    mov bx, ax                       ; 0x80bd
    mov al, byte [bx + 0x5d48]       ; 0x80bf
    sub ah, ah                       ; 0x80c3
    cmp ax, 0xff                     ; 0x80c5
    jne short @..api_idx_00ac_OJJU.l35 ; 0x80c8
    jmp near @..api_idx_00ac_OJJU.l38 ; 0x80ca
@..api_idx_00ac_OJJU.l35:
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
    jmp short @..api_idx_00ac_OJJU.l36 ; 0x80ed
jumptable_8145_case_41:
    mov word [bp - 0x007c], 0        ; 0x80ef
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x80f4
jumptable_8145_case_42:
    mov word [bp - 0x007c], 1        ; 0x80f7
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x80fc
jumptable_8145_case_43:
    mov word [bp - 0x007c], 2        ; 0x80ff
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x8104
jumptable_8145_case_45:
    mov word [bp - 0x007c], 3        ; 0x8107
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x810c
jumptable_8145_case_48:
    mov word [bp - 0x007c], 4        ; 0x810f
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x8114
jumptable_8145_case_52:
    mov word [bp - 0x007c], 7        ; 0x8117
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x811c
jumptable_8145_case_54:
    mov word [bp - 0x007c], 6        ; 0x811f
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x8124
jumptable_8145_case_62:
    mov word [bp - 0x007c], 8        ; 0x8127
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x812c
jumptable_8145_case_76:
    mov word [bp - 0x007c], 0x12     ; 0x812f
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x8134
jumptable_8145_case_82:
    mov word [bp - 0x007c], 9        ; 0x8137
    jmp near @..api_idx_00ac_OJJU.l37 ; 0x813c
@..api_idx_00ac_OJJU.l36:
    mov cx, 0x2a                     ; 0x813f
    call aztec_cswt                  ; 0x8142
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
    dw jumptable_8145_case_41 - IMAGE_BASE + __zres_end ; 0x8197
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x8199
    dw jumptable_8145_case_43 - IMAGE_BASE + __zres_end ; 0x819b
    dw jumptable_8145_case_43 - IMAGE_BASE + __zres_end ; 0x819d
    dw jumptable_8145_case_45 - IMAGE_BASE + __zres_end ; 0x819f
    dw jumptable_8145_case_45 - IMAGE_BASE + __zres_end ; 0x81a1
    dw jumptable_8145_case_45 - IMAGE_BASE + __zres_end ; 0x81a3
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81a5
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81a7
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81a9
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81ab
    dw jumptable_8145_case_52 - IMAGE_BASE + __zres_end ; 0x81ad
    dw jumptable_8145_case_52 - IMAGE_BASE + __zres_end ; 0x81af
    dw jumptable_8145_case_54 - IMAGE_BASE + __zres_end ; 0x81b1
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81b3
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81b5
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81b7
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81b9
    dw jumptable_8145_case_41 - IMAGE_BASE + __zres_end ; 0x81bb
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81bd
    dw jumptable_8145_case_43 - IMAGE_BASE + __zres_end ; 0x81bf
    dw jumptable_8145_case_62 - IMAGE_BASE + __zres_end ; 0x81c1
    dw jumptable_8145_case_52 - IMAGE_BASE + __zres_end ; 0x81c3
    dw jumptable_8145_case_62 - IMAGE_BASE + __zres_end ; 0x81c5
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81c7
    dw jumptable_8145_case_45 - IMAGE_BASE + __zres_end ; 0x81c9
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81cb
    dw jumptable_8145_case_45 - IMAGE_BASE + __zres_end ; 0x81cd
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81cf
    dw jumptable_8145_case_45 - IMAGE_BASE + __zres_end ; 0x81d1
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81d3
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81d5
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81d7
    dw jumptable_8145_case_41 - IMAGE_BASE + __zres_end ; 0x81d9
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81db
    dw jumptable_8145_case_76 - IMAGE_BASE + __zres_end ; 0x81dd
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81df
    dw jumptable_8145_case_48 - IMAGE_BASE + __zres_end ; 0x81e1
    dw jumptable_8145_case_42 - IMAGE_BASE + __zres_end ; 0x81e3
    dw jumptable_8145_case_76 - IMAGE_BASE + __zres_end ; 0x81e5
    dw jumptable_8145_case_76 - IMAGE_BASE + __zres_end ; 0x81e7
    dw jumptable_8145_case_82 - IMAGE_BASE + __zres_end ; 0x81e9
@..api_idx_00ac_OJJU.l37:
    jmp short @..api_idx_00ac_OJJU.l39 ; 0x81eb
@..api_idx_00ac_OJJU.l38:
    mov word [bp - 0x007c], 9        ; 0x81ed
@..api_idx_00ac_OJJU.l39:
    cmp word [bp - 0x007c], byte 9   ; 0x81f2
    jne short @..api_idx_00ac_OJJU.l40 ; 0x81f6
    mov ax, 0x248                    ; 0x81f8
    imul word [bss_8462]             ; 0x81fb
    mov bx, ax                       ; 0x81ff
    cmp byte [bx + 0x5d75], 0        ; 0x8201
    ja short @..api_idx_00ac_OJJU.l40 ; 0x8206
    cmp byte [bx + 0x5e2d], 0xc      ; 0x8208
    je short @..api_idx_00ac_OJJU.l40 ; 0x820d
    cmp byte [bx + 0x5e2d], 0xd      ; 0x820f
    jne short @..api_idx_00ac_OJJU.l42 ; 0x8214
@..api_idx_00ac_OJJU.l40:
    cmp word [bp - 0x007c], byte 0x12 ; 0x8216
    jne short @..api_idx_00ac_OJJU.l41 ; 0x821a
    mov ax, 0x248                    ; 0x821c
    imul word [bss_8462]             ; 0x821f
    mov bx, ax                       ; 0x8223
    cmp byte [bx + 0x5d7e], 0        ; 0x8225
    jbe short @..api_idx_00ac_OJJU.l42 ; 0x822a
@..api_idx_00ac_OJJU.l41:
    mov ax, 2                        ; 0x822c
    push ax                          ; 0x822f
    push word [bp - 0x007c]          ; 0x8230
    push word [bss_8462]             ; 0x8233
    call loc_SIKN                    ; 0x8237
    add sp, byte 6                   ; 0x823a
@..api_idx_00ac_OJJU.l42:
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
    jne short @..api_idx_00ac_OJJU.l43 ; 0x825c
    mov ax, word [bp - 0x008c]       ; 0x825e
@..api_idx_00ac_OJJU.l43:
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
    jne short @..api_idx_00ac_OJJU.l44 ; 0x82f1
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
@..api_idx_00ac_OJJU.l44:
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
    je short @..api_idx_00ac_OJJU.l45 ; 0x8386
    jmp near @..api_idx_00ac_OJJU.l52 ; 0x8388
@..api_idx_00ac_OJJU.l45:
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
    jne short @..api_idx_00ac_OJJU.l46 ; 0x83ae
    jmp near @..api_idx_00ac_OJJU.l50 ; 0x83b0
@..api_idx_00ac_OJJU.l46:
    cmp byte [bx + 0x5c3a], 0        ; 0x83b3
    jne short @..api_idx_00ac_OJJU.l47 ; 0x83b8
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
@..api_idx_00ac_OJJU.l47:
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
    je short @..api_idx_00ac_OJJU.l48 ; 0x8407
    dec byte [bx + 0x5c3a]           ; 0x8409
@..api_idx_00ac_OJJU.l48:
    mov bx, word [bp - 0x0052]       ; 0x840d
    cmp byte [bx + 0x11], 0x16       ; 0x8410
    jne short @..api_idx_00ac_OJJU.l49 ; 0x8414
    mov ax, word [bp - 0x004e]       ; 0x8416
    shl ax, 1                        ; 0x8419
    mov bx, ax                       ; 0x841b
    mov bx, word [bx + party_char_ext] ; 0x841d
    cmp byte [bx + 0xd6], 0x16       ; 0x8421
    jne short @..api_idx_00ac_OJJU.l49 ; 0x8426
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
@..api_idx_00ac_OJJU.l49:
    jmp short @..api_idx_00ac_OJJU.l51 ; 0x8447
@..api_idx_00ac_OJJU.l50:
    mov ax, 0x248                    ; 0x8449
    imul word [bss_8462]             ; 0x844c
    mov bx, ax                       ; 0x8450
    mov al, byte [bx + 0x5d49]       ; 0x8452
    sub ah, ah                       ; 0x8456
    mov word [bp - 0x0074], ax       ; 0x8458
    cmp ax, 0xff                     ; 0x845b
    je short @..api_idx_00ac_OJJU.l51 ; 0x845e
    mov cx, 0xc                      ; 0x8460
    imul cx                          ; 0x8463
    add bx, ax                       ; 0x8465
    cmp byte [bx + 0x5c38], 4        ; 0x8467
    jne short @..api_idx_00ac_OJJU.l51 ; 0x846c
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
@..api_idx_00ac_OJJU.l51:
    jmp short @..api_idx_00ac_OJJU.l55 ; 0x84ae
@..api_idx_00ac_OJJU.l52:
    cmp word [bp + 0x8], byte 4      ; 0x84b0
    jne short @..api_idx_00ac_OJJU.l55 ; 0x84b4
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
    je short @..api_idx_00ac_OJJU.l53 ; 0x84d1
    cmp al, 0xc                      ; 0x84d3
    jae short @..api_idx_00ac_OJJU.l54 ; 0x84d5
    cmp al, 2                        ; 0x84d7
    je short @..api_idx_00ac_OJJU.l54 ; 0x84d9
@..api_idx_00ac_OJJU.l53:
    mov byte [bx + 0x5c3a], 1        ; 0x84db
@..api_idx_00ac_OJJU.l54:
    mov word [bp - 0x007e], 0        ; 0x84e0
    push word [bp - 0x0072]          ; 0x84e5
    mov ax, 0                        ; 0x84e8
    push ax                          ; 0x84eb
    push word [bss_8462]             ; 0x84ec
    call api_idx_000e_PTNT           ; 0x84f0
    add sp, byte 6                   ; 0x84f3
@..api_idx_00ac_OJJU.l55:
    mov ax, 0x2c                     ; 0x84f6
    imul word [bp - 0x0050]          ; 0x84f9
    mov si, ax                       ; 0x84fc
    mov ax, word [bp - 0x004e]       ; 0x84fe
    shl ax, 1                        ; 0x8501
    mov bx, ax                       ; 0x8503
    mov bx, word [bx + party_char]   ; 0x8505
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
    mov bx, word [bx + party_char]   ; 0x8529
    mov al, byte [bx + si + 0x26]    ; 0x852d
    cbw                              ; 0x8530
    mov cx, ax                       ; 0x8531
    pop ax                           ; 0x8533
    add ax, cx                       ; 0x8534
    mov word [bp - 0x0058], ax       ; 0x8536
    cmp word [bss_82f2], byte 0      ; 0x8539
    jle short @..api_idx_00ac_OJJU.l56 ; 0x853e
    mov ax, word [bss_82f4]          ; 0x8540
    add word [bp - 0x0058], ax       ; 0x8543
@..api_idx_00ac_OJJU.l56:
    mov ax, word [bp - 0x004e]       ; 0x8546
    shl ax, 1                        ; 0x8549
    mov bx, ax                       ; 0x854b
    mov bx, word [bx + party_char_ext] ; 0x854d
    mov al, byte [bx + 0xc4]         ; 0x8551
    cbw                              ; 0x8555
    add ax, word [bp - 0x0058]       ; 0x8556
    mov word [bp - 0x005a], ax       ; 0x8559
    mov si, word [bp + 0x8]          ; 0x855c
    mov al, byte [bx + si + 0xcc]    ; 0x855f
    cbw                              ; 0x8563
    add ax, word [bp - 0x0058]       ; 0x8564
    mov word [bp - 0x005c], ax       ; 0x8567
    jmp near @..api_idx_00ac_OJJU.l63 ; 0x856a
@..api_idx_00ac_OJJU.l57:
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
    mov bx, word [bx + party_char_ext] ; 0x8590
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
    mov bx, word [bx + party_char_ext] ; 0x85bc
    mov ax, word [bx + si + 0x44]    ; 0x85c0
    mov word [bp - 0x0070], ax       ; 0x85c3
    mov ax, word [bx + si + 0x46]    ; 0x85c6
    mov word [bp - 0x006e], ax       ; 0x85c9
    add bx, si                       ; 0x85cc
    add bx, byte 0x44                ; 0x85ce
    mov word [bp - 0x0052], bx       ; 0x85d1
    cmp word [bp + 0x8], byte 4      ; 0x85d4
    je short @..api_idx_00ac_OJJU.l58 ; 0x85d8
    cmp word [bp + 0x8], byte 8      ; 0x85da
    jne short @..api_idx_00ac_OJJU.l59 ; 0x85de
@..api_idx_00ac_OJJU.l58:
    mov word [bp - 0x007e], 0        ; 0x85e0
@..api_idx_00ac_OJJU.l59:
    cmp word [bp - 0x004e], byte 0   ; 0x85e5
    jne short @..api_idx_00ac_OJJU.l60 ; 0x85e9
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
    jmp short @..api_idx_00ac_OJJU.l61 ; 0x8609
@..api_idx_00ac_OJJU.l60:
    mov word [bp - 0x0092], 0        ; 0x860b
@..api_idx_00ac_OJJU.l61:
    mov ax, 0x2c                     ; 0x8611
    imul word [bp - 0x0050]          ; 0x8614
    mov si, ax                       ; 0x8617
    mov ax, word [bp - 0x004e]       ; 0x8619
    shl ax, 1                        ; 0x861c
    mov bx, ax                       ; 0x861e
    mov bx, word [bx + party_char]   ; 0x8620
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
    mov bx, word [bx + party_char]   ; 0x8644
    mov al, byte [bx + si + 0x26]    ; 0x8648
    cbw                              ; 0x864b
    mov cx, ax                       ; 0x864c
    pop ax                           ; 0x864e
    add ax, cx                       ; 0x864f
    mov word [bp - 0x0058], ax       ; 0x8651
    cmp word [bp - 0x004e], byte 0   ; 0x8654
    jne short @..api_idx_00ac_OJJU.l62 ; 0x8658
    cmp word [bss_82f6], byte 0      ; 0x865a
    jle short @..api_idx_00ac_OJJU.l62 ; 0x865f
    mov ax, word [bss_82f8]          ; 0x8661
    sub word [bp - 0x0058], ax       ; 0x8664
@..api_idx_00ac_OJJU.l62:
    mov ax, word [bp - 0x004e]       ; 0x8667
    shl ax, 1                        ; 0x866a
    mov bx, ax                       ; 0x866c
    mov bx, word [bx + party_char_ext] ; 0x866e
    mov al, byte [bx + 0xc4]         ; 0x8672
    cbw                              ; 0x8676
    add ax, word [bp - 0x0058]       ; 0x8677
    add ax, word [bp - 0x0092]       ; 0x867a
    mov word [bp - 0x005a], ax       ; 0x867e
    mov ax, word [bp - 0x0058]       ; 0x8681
    add ax, word [bp - 0x0092]       ; 0x8684
    mov word [bp - 0x005c], ax       ; 0x8688
    cmp word [bp - 0x004e], byte 0   ; 0x868b
    je short @..api_idx_00ac_OJJU.l63 ; 0x868f
    mov si, word [bp + 0x8]          ; 0x8691
    mov al, byte [bx + si + 0xcc]    ; 0x8694
    cbw                              ; 0x8698
    add word [bp - 0x005c], ax       ; 0x8699
@..api_idx_00ac_OJJU.l63:
    mov word [bp - 0x009a], 1        ; 0x869c
    mov bx, word [bp + 0x4]          ; 0x86a2
    cmp byte [bx + 0x2b], 0          ; 0x86a5
    je short @..api_idx_00ac_OJJU.l65 ; 0x86a9
    mov ax, 0xa                      ; 0x86ab
    cmp word [bp - 0x005a], byte 0x0a ; 0x86ae
    jle short @..api_idx_00ac_OJJU.l64 ; 0x86b2
    mov ax, word [bp - 0x005a]       ; 0x86b4
@..api_idx_00ac_OJJU.l64:
    mov word [bp - 0x005a], ax       ; 0x86b7
    mov word [bp - 0x009a], 2        ; 0x86ba
@..api_idx_00ac_OJJU.l65:
    cmp byte [bx + 0x12], 0          ; 0x86c0
    jbe short @..api_idx_00ac_OJJU.l68 ; 0x86c4
    mov ax, word [bp - 0x0056]       ; 0x86c6
    push ax                          ; 0x86c9
    cmp ax, strict word 0x5a         ; 0x86ca
    pop ax                           ; 0x86cd
    jge short @..api_idx_00ac_OJJU.l66 ; 0x86ce
    mov ax, 0x5a                     ; 0x86d0
@..api_idx_00ac_OJJU.l66:
    mov word [bp - 0x0056], ax       ; 0x86d3
    mov ax, word [bp - 0x005a]       ; 0x86d6
    push ax                          ; 0x86d9
    cmp ax, strict word 0            ; 0x86da
    pop ax                           ; 0x86dd
    jle short @..api_idx_00ac_OJJU.l67 ; 0x86de
    mov ax, 0                        ; 0x86e0
@..api_idx_00ac_OJJU.l67:
    mov word [bp - 0x005a], ax       ; 0x86e3
@..api_idx_00ac_OJJU.l68:
    cmp byte [bx + 0x16], 0          ; 0x86e6
    ja short @..api_idx_00ac_OJJU.l69 ; 0x86ea
    cmp byte [bx + 0xf], 0           ; 0x86ec
    ja short @..api_idx_00ac_OJJU.l69 ; 0x86f0
    cmp byte [bx + 0x17], 0          ; 0x86f2
    jbe short @..api_idx_00ac_OJJU.l70 ; 0x86f6
@..api_idx_00ac_OJJU.l69:
    add word [bp - 0x0056], byte 0x19 ; 0x86f8
@..api_idx_00ac_OJJU.l70:
    mov ax, 0x2c                     ; 0x86fc
    imul word [bp - 0x0050]          ; 0x86ff
    mov si, ax                       ; 0x8702
    mov ax, word [bp - 0x004e]       ; 0x8704
    shl ax, 1                        ; 0x8707
    mov bx, ax                       ; 0x8709
    mov bx, word [bx + party_char]   ; 0x870b
    cmp byte [bx + si + 0x12], 0     ; 0x870f
    ja short @..api_idx_00ac_OJJU.l71 ; 0x8713
    cmp byte [bx + si + 0x10], 0     ; 0x8715
    ja short @..api_idx_00ac_OJJU.l71 ; 0x8719
    cmp byte [bx + si + 0x11], 0     ; 0x871b
    ja short @..api_idx_00ac_OJJU.l71 ; 0x871f
    cmp byte [bx + si + 0x22], 2     ; 0x8721
    jne short @..api_idx_00ac_OJJU.l72 ; 0x8725
@..api_idx_00ac_OJJU.l71:
    mov word [bp - 0x005a], 0xf      ; 0x8727
    mov word [bp - 0x009a], 2        ; 0x872c
@..api_idx_00ac_OJJU.l72:
    cmp byte [bx + si + 0x16], 0     ; 0x8732
    ja short @..api_idx_00ac_OJJU.l73 ; 0x8736
    cmp byte [bx + si + 0xf], 0      ; 0x8738
    jbe short @..api_idx_00ac_OJJU.l74 ; 0x873c
@..api_idx_00ac_OJJU.l73:
    add word [bp - 0x005a], byte 4   ; 0x873e
@..api_idx_00ac_OJJU.l74:
    mov ax, word [bss_8464]          ; 0x8742
    shl ax, 1                        ; 0x8745
    mov bx, ax                       ; 0x8747
    mov bx, word [bx + party_char_ext] ; 0x8749
    cmp byte [bx + 0x8c], 0x11       ; 0x874d
    jbe short @..api_idx_00ac_OJJU.l75 ; 0x8752
    mov ax, 2                        ; 0x8754
    jmp short @..api_idx_00ac_OJJU.l76 ; 0x8757
@..api_idx_00ac_OJJU.l75:
    mov ax, 0                        ; 0x8759
    cmp byte [bx + 0x8c], 0xf        ; 0x875c
    jbe short @..api_idx_00ac_OJJU.l76 ; 0x8761
    mov ax, 1                        ; 0x8763
@..api_idx_00ac_OJJU.l76:
    mov word [bp - 0x0080], ax       ; 0x8766
    mov ax, word [bp - 0x004e]       ; 0x8769
    shl ax, 1                        ; 0x876c
    mov bx, ax                       ; 0x876e
    mov bx, word [bx + party_char]   ; 0x8770
    mov al, byte [bx + si + 0x29]    ; 0x8774
    cbw                              ; 0x8777
    mov cx, 0xa                      ; 0x8778
    cwd                              ; 0x877b
    idiv cx                          ; 0x877c
    mov cx, ax                       ; 0x877e
    mov ax, word [bss_8464]          ; 0x8780
    shl ax, 1                        ; 0x8783
    mov bx, ax                       ; 0x8785
    mov bx, word [bx + party_char_ext] ; 0x8787
    mov al, byte [bx + 0xda]         ; 0x878b
    sub ah, ah                       ; 0x878f
    sub ax, cx                       ; 0x8791
    push ax                          ; 0x8793
    call random_below                ; 0x8794
    pop cx                           ; 0x8797
    inc ax                           ; 0x8798
    mov word [bp - 0x0064], ax       ; 0x8799
    cmp ax, strict word 1            ; 0x879c
    jge short @..api_idx_00ac_OJJU.l77 ; 0x879f
    mov word [bp - 0x0064], 1        ; 0x87a1
@..api_idx_00ac_OJJU.l77:
    cmp word [bp - 0x0064], byte 4   ; 0x87a6
    jle short @..api_idx_00ac_OJJU.l78 ; 0x87aa
    mov word [bp - 0x0064], 4        ; 0x87ac
@..api_idx_00ac_OJJU.l78:
    mov ax, word [bp + 0x8]          ; 0x87b1
    jmp near @..api_idx_00ac_OJJU.l79 ; 0x87b4
jumptable_883a_case_0:
    jmp near @..api_idx_00ac_OJJU.l80 ; 0x87b7
jumptable_883a_case_1:
    dec word [bp - 0x005a]           ; 0x87ba
    dec word [bp - 0x005a]           ; 0x87bd
    inc word [bp - 0x005c]           ; 0x87c0
    inc word [bp - 0x005c]           ; 0x87c3
    jmp near @..api_idx_00ac_OJJU.l80 ; 0x87c6
jumptable_883a_case_2:
    dec word [bp - 0x005c]           ; 0x87c9
    mov ax, word [bp - 0x0080]       ; 0x87cc
    add word [bp - 0x007e], ax       ; 0x87cf
    jmp near @..api_idx_00ac_OJJU.l80 ; 0x87d2
jumptable_883a_case_3:
    add word [bp - 0x005a], byte 0xfc ; 0x87d5
    add word [bp - 0x005c], byte 0xfc ; 0x87d9
    mov word [bp - 0x009a], 2        ; 0x87dd
    jmp short @..api_idx_00ac_OJJU.l80 ; 0x87e3
jumptable_883a_case_4:
    mov word [bp - 0x0064], 1        ; 0x87e5
    mov word [bp - 0x009a], 1        ; 0x87ea
    dec word [bp - 0x005a]           ; 0x87f0
    inc word [bp - 0x005c]           ; 0x87f3
    jmp short @..api_idx_00ac_OJJU.l80 ; 0x87f6
jumptable_883a_case_5:
    inc word [bp - 0x005a]           ; 0x87f8
    dec word [bp - 0x005c]           ; 0x87fb
    jmp short @..api_idx_00ac_OJJU.l80 ; 0x87fe
jumptable_883a_case_6:
    dec word [bp - 0x005a]           ; 0x8800
    dec word [bp - 0x005a]           ; 0x8803
    mov ax, word [bp - 0x007e]       ; 0x8806
    add ax, word [bp - 0x0080]       ; 0x8809
    inc ax                           ; 0x880c
    inc ax                           ; 0x880d
    mov word [bp - 0x007e], ax       ; 0x880e
    jmp short @..api_idx_00ac_OJJU.l80 ; 0x8811
jumptable_883a_case_7:
    inc word [bp - 0x005a]           ; 0x8813
    inc word [bp - 0x005a]           ; 0x8816
    dec word [bp - 0x005c]           ; 0x8819
    dec word [bp - 0x005c]           ; 0x881c
    mov word [bp - 0x009a], 1        ; 0x881f
    jmp short @..api_idx_00ac_OJJU.l80 ; 0x8825
jumptable_883a_case_8:
    mov word [bp - 0x0064], 1        ; 0x8827
    mov word [bp - 0x009a], 1        ; 0x882c
    inc word [bp - 0x005c]           ; 0x8832
    inc word [bp - 0x005c]           ; 0x8835
    jmp short @..api_idx_00ac_OJJU.l80 ; 0x8838
jumptable_883a:
    dw jumptable_883a_case_0 - IMAGE_BASE + __zres_end ; 0x883a
    dw jumptable_883a_case_1 - IMAGE_BASE + __zres_end ; 0x883c
    dw jumptable_883a_case_2 - IMAGE_BASE + __zres_end ; 0x883e
    dw jumptable_883a_case_3 - IMAGE_BASE + __zres_end ; 0x8840
    dw jumptable_883a_case_4 - IMAGE_BASE + __zres_end ; 0x8842
    dw jumptable_883a_case_5 - IMAGE_BASE + __zres_end ; 0x8844
    dw jumptable_883a_case_6 - IMAGE_BASE + __zres_end ; 0x8846
    dw jumptable_883a_case_7 - IMAGE_BASE + __zres_end ; 0x8848
    dw jumptable_883a_case_8 - IMAGE_BASE + __zres_end ; 0x884a
@..api_idx_00ac_OJJU.l79:
    cmp ax, strict word 9            ; 0x884c
    jae short @..api_idx_00ac_OJJU.l80 ; 0x884f
    xchg bx, ax                      ; 0x8851
    shl bx, 1                        ; 0x8852
    jmp [cs:bx + jumptable_883a - IMAGE_BASE + __zres_end] ; 0x8854
@..api_idx_00ac_OJJU.l80:
    mov ax, 0x2c                     ; 0x8859
    imul word [bp - 0x0050]          ; 0x885c
    mov si, ax                       ; 0x885f
    mov ax, word [bp - 0x004e]       ; 0x8861
    shl ax, 1                        ; 0x8864
    mov bx, ax                       ; 0x8866
    mov bx, word [bx + party_char]   ; 0x8868
    cmp byte [bx + si + 0x1e], 6     ; 0x886c
    jne short @..api_idx_00ac_OJJU.l82 ; 0x8870
    mov ax, 0xa                      ; 0x8872
    cmp word [bp - 0x005a], byte 0x0a ; 0x8875
    jle short @..api_idx_00ac_OJJU.l81 ; 0x8879
    mov ax, word [bp - 0x005a]       ; 0x887b
@..api_idx_00ac_OJJU.l81:
    mov word [bp - 0x005a], ax       ; 0x887e
    mov word [bp - 0x009a], 2        ; 0x8881
@..api_idx_00ac_OJJU.l82:
    cmp byte [bx + si + 0x12], 0     ; 0x8887
    je short @..api_idx_00ac_OJJU.l83 ; 0x888b
    jmp near @..api_idx_00ac_OJJU.l110 ; 0x888d
@..api_idx_00ac_OJJU.l83:
    cmp byte [bx + si + 0x10], 0     ; 0x8890
    je short @..api_idx_00ac_OJJU.l84 ; 0x8894
    jmp near @..api_idx_00ac_OJJU.l110 ; 0x8896
@..api_idx_00ac_OJJU.l84:
    cmp byte [bx + si + 0x11], 0     ; 0x8899
    je short @..api_idx_00ac_OJJU.l85 ; 0x889d
    jmp near @..api_idx_00ac_OJJU.l110 ; 0x889f
@..api_idx_00ac_OJJU.l85:
    cmp byte [bx + si + 0x22], 0     ; 0x88a2
    je short @..api_idx_00ac_OJJU.l86 ; 0x88a6
    jmp near @..api_idx_00ac_OJJU.l110 ; 0x88a8
@..api_idx_00ac_OJJU.l86:
    cmp byte [bx + si + 0x1e], 1     ; 0x88ab
    je short @..api_idx_00ac_OJJU.l87 ; 0x88af
    jmp near @..api_idx_00ac_OJJU.l109 ; 0x88b1
@..api_idx_00ac_OJJU.l87:
    mov ax, word [bx + si + 0xa]     ; 0x88b4
    jmp near @..api_idx_00ac_OJJU.l104 ; 0x88b7
@..api_idx_00ac_OJJU.l88:
    cmp word [bp - 0x004e], byte 0   ; 0x88ba
    jne short @..api_idx_00ac_OJJU.l89 ; 0x88be
    mov ax, 0x248                    ; 0x88c0
    imul word [bp - 0x0050]          ; 0x88c3
    mov bx, ax                       ; 0x88c6
    mov al, byte [bx + 0x5d74]       ; 0x88c8
    sub ah, ah                       ; 0x88cc
    mov cx, 0xa                      ; 0x88ce
    cwd                              ; 0x88d1
    idiv cx                          ; 0x88d2
    inc ax                           ; 0x88d4
    sub word [bp - 0x005a], ax       ; 0x88d5
    mov ax, 2                        ; 0x88d8
    push ax                          ; 0x88db
    mov ax, 8                        ; 0x88dc
    push ax                          ; 0x88df
    push word [bp - 0x0050]          ; 0x88e0
    call loc_SIKN                    ; 0x88e3
    add sp, byte 6                   ; 0x88e6
    jmp short @..api_idx_00ac_OJJU.l90 ; 0x88e9
@..api_idx_00ac_OJJU.l89:
    mov ax, 0x2c                     ; 0x88eb
    imul word [bp - 0x0050]          ; 0x88ee
    mov si, ax                       ; 0x88f1
    mov ax, word [bp - 0x004e]       ; 0x88f3
    shl ax, 1                        ; 0x88f6
    mov bx, ax                       ; 0x88f8
    mov bx, word [bx + party_char]   ; 0x88fa
    mov ax, word [bx + si]           ; 0x88fe
    mov cx, 4                        ; 0x8900
    cwd                              ; 0x8903
    idiv cx                          ; 0x8904
    inc ax                           ; 0x8906
    sub word [bp - 0x005a], ax       ; 0x8907
@..api_idx_00ac_OJJU.l90:
    mov word [bp - 0x009a], 1        ; 0x890a
    jmp near @..api_idx_00ac_OJJU.l108 ; 0x8910
@..api_idx_00ac_OJJU.l91:
    dec word [bp - 0x005a]           ; 0x8913
    dec word [bp - 0x005a]           ; 0x8916
    mov word [bp - 0x009a], 1        ; 0x8919
    jmp near @..api_idx_00ac_OJJU.l108 ; 0x891f
@..api_idx_00ac_OJJU.l92:
    cmp word [bp + 0x8], byte 4      ; 0x8922
    jne short @..api_idx_00ac_OJJU.l93 ; 0x8926
    jmp near @..api_idx_00ac_OJJU.l102 ; 0x8928
@..api_idx_00ac_OJJU.l93:
    cmp word [bp + 0x8], byte 8      ; 0x892b
    jne short @..api_idx_00ac_OJJU.l94 ; 0x892f
    jmp near @..api_idx_00ac_OJJU.l102 ; 0x8931
@..api_idx_00ac_OJJU.l94:
    mov ax, 0x2c                     ; 0x8934
    imul word [bp - 0x0050]          ; 0x8937
    mov si, ax                       ; 0x893a
    mov ax, word [bp - 0x004e]       ; 0x893c
    shl ax, 1                        ; 0x893f
    mov bx, ax                       ; 0x8941
    mov bx, word [bx + party_char]   ; 0x8943
    mov byte [bx + si + 0x1e], 0     ; 0x8947
    mov ax, 0x2c                     ; 0x894b
    imul word [bp - 0x0050]          ; 0x894e
    mov si, ax                       ; 0x8951
    mov ax, word [bp - 0x004e]       ; 0x8953
    shl ax, 1                        ; 0x8956
    mov bx, ax                       ; 0x8958
    mov bx, word [bx + party_char]   ; 0x895a
    mov byte [bx + si + 0x21], 0     ; 0x895e
    mov ax, word [bss_8460]          ; 0x8962
    dec ax                           ; 0x8965
    push ax                          ; 0x8966
    mov ax, 0x2c                     ; 0x8967
    imul word [bp - 0x0050]          ; 0x896a
    mov si, ax                       ; 0x896d
    mov ax, word [bp - 0x004e]       ; 0x896f
    shl ax, 1                        ; 0x8972
    mov bx, ax                       ; 0x8974
    mov bx, word [bx + party_char]   ; 0x8976
    pop ax                           ; 0x897a
    mov byte [bx + si + 0x18], al    ; 0x897b
    mov al, byte [bss_8464]          ; 0x897e
    push ax                          ; 0x8981
    mov ax, 0x2c                     ; 0x8982
    imul word [bp - 0x0050]          ; 0x8985
    mov si, ax                       ; 0x8988
    mov ax, word [bp - 0x004e]       ; 0x898a
    shl ax, 1                        ; 0x898d
    mov bx, ax                       ; 0x898f
    mov bx, word [bx + party_char]   ; 0x8991
    pop ax                           ; 0x8995
    mov byte [bx + si + 0x1f], al    ; 0x8996
    mov al, byte [bss_8462]          ; 0x8999
    push ax                          ; 0x899c
    mov ax, 0x2c                     ; 0x899d
    imul word [bp - 0x0050]          ; 0x89a0
    mov si, ax                       ; 0x89a3
    mov ax, word [bp - 0x004e]       ; 0x89a5
    shl ax, 1                        ; 0x89a8
    mov bx, ax                       ; 0x89aa
    mov bx, word [bx + party_char]   ; 0x89ac
    pop ax                           ; 0x89b0
    mov byte [bx + si + 0x20], al    ; 0x89b1
    mov ax, 0x2c                     ; 0x89b4
    imul word [bp - 0x0050]          ; 0x89b7
    mov si, ax                       ; 0x89ba
    mov ax, word [bp - 0x004e]       ; 0x89bc
    shl ax, 1                        ; 0x89bf
    mov bx, ax                       ; 0x89c1
    mov bx, word [bx + party_char]   ; 0x89c3
    mov word [bx + si + 0xc], 0xffff ; 0x89c7
    mov ax, 0x2c                     ; 0x89cc
    imul word [bp - 0x0050]          ; 0x89cf
    mov si, ax                       ; 0x89d2
    mov ax, word [bp - 0x004e]       ; 0x89d4
    shl ax, 1                        ; 0x89d7
    mov bx, ax                       ; 0x89d9
    mov bx, word [bx + party_char]   ; 0x89db
    mov word [bx + si + 0xa], 0xff   ; 0x89df
    cmp word [bp - 0x004e], byte 0   ; 0x89e4
    jne short @..api_idx_00ac_OJJU.l97 ; 0x89e8
    mov word [bp - 0x0002], 7        ; 0x89ea
@..api_idx_00ac_OJJU.l95:
    push word [bp - 0x0002]          ; 0x89ef
    mov ax, 0x248                    ; 0x89f2
    imul word [bp - 0x0050]          ; 0x89f5
    add ax, 0x5d33                   ; 0x89f8
    push ax                          ; 0x89fb
    call ds_leaf_loc_PRVP            ; 0x89fc
    add sp, byte 4                   ; 0x89ff
    cmp ax, strict word 1            ; 0x8a02
    jne short @..api_idx_00ac_OJJU.l96 ; 0x8a05
    mov ax, word [bp - 0x0002]       ; 0x8a07
    push ax                          ; 0x8a0a
    mov ax, 0x2c                     ; 0x8a0b
    imul word [bp - 0x0050]          ; 0x8a0e
    mov si, ax                       ; 0x8a11
    mov ax, word [bp - 0x004e]       ; 0x8a13
    shl ax, 1                        ; 0x8a16
    mov bx, ax                       ; 0x8a18
    mov bx, word [bx + party_char]   ; 0x8a1a
    pop ax                           ; 0x8a1e
    mov word [bx + si + 0xa], ax     ; 0x8a1f
@..api_idx_00ac_OJJU.l96:
    dec word [bp - 0x0002]           ; 0x8a22
    jge short @..api_idx_00ac_OJJU.l95 ; 0x8a25
    jmp short @..api_idx_00ac_OJJU.l100 ; 0x8a27
@..api_idx_00ac_OJJU.l97:
    mov word [bp - 0x0002], 7        ; 0x8a29
@..api_idx_00ac_OJJU.l98:
    push word [bp - 0x0002]          ; 0x8a2e
    mov ax, word [bp - 0x004e]       ; 0x8a31
    shl ax, 1                        ; 0x8a34
    mov bx, ax                       ; 0x8a36
    mov ax, word [bx + party_char_ext] ; 0x8a38
    add ax, strict word 0x53         ; 0x8a3c
    push ax                          ; 0x8a3f
    call ds_leaf_loc_PRVP            ; 0x8a40
    add sp, byte 4                   ; 0x8a43
    cmp ax, strict word 1            ; 0x8a46
    jne short @..api_idx_00ac_OJJU.l99 ; 0x8a49
    mov ax, word [bp - 0x0002]       ; 0x8a4b
    push ax                          ; 0x8a4e
    mov ax, 0x2c                     ; 0x8a4f
    imul word [bp - 0x0050]          ; 0x8a52
    mov si, ax                       ; 0x8a55
    mov ax, word [bp - 0x004e]       ; 0x8a57
    shl ax, 1                        ; 0x8a5a
    mov bx, ax                       ; 0x8a5c
    mov bx, word [bx + party_char]   ; 0x8a5e
    pop ax                           ; 0x8a62
    mov word [bx + si + 0xa], ax     ; 0x8a63
@..api_idx_00ac_OJJU.l99:
    dec word [bp - 0x0002]           ; 0x8a66
    jge short @..api_idx_00ac_OJJU.l98 ; 0x8a69
@..api_idx_00ac_OJJU.l100:
    mov ax, 0x2c                     ; 0x8a6b
    imul word [bp - 0x0050]          ; 0x8a6e
    mov si, ax                       ; 0x8a71
    mov ax, word [bp - 0x004e]       ; 0x8a73
    shl ax, 1                        ; 0x8a76
    mov bx, ax                       ; 0x8a78
    mov bx, word [bx + party_char]   ; 0x8a7a
    cmp word [bx + si + 0xa], strict word 0xff ; 0x8a7e
    jne short @..api_idx_00ac_OJJU.l101 ; 0x8a83
    mov word [bx + si + 0xa], 8      ; 0x8a85
    cmp word [bp - 0x004e], byte 0   ; 0x8a8a
    jne short @..api_idx_00ac_OJJU.l101 ; 0x8a8e
    mov ax, 0x2c                     ; 0x8a90
    imul word [bp - 0x0050]          ; 0x8a93
    mov si, ax                       ; 0x8a96
    mov ax, word [bp - 0x004e]       ; 0x8a98
    shl ax, 1                        ; 0x8a9b
    mov bx, ax                       ; 0x8a9d
    mov bx, word [bx + party_char]   ; 0x8a9f
    mov byte [bx + si + 0x1e], 1     ; 0x8aa3
    mov ax, 0x2c                     ; 0x8aa7
    imul word [bp - 0x0050]          ; 0x8aaa
    mov si, ax                       ; 0x8aad
    mov ax, word [bp - 0x004e]       ; 0x8aaf
    shl ax, 1                        ; 0x8ab2
    mov bx, ax                       ; 0x8ab4
    mov bx, word [bx + party_char]   ; 0x8ab6
    mov byte [bx + si + 0x21], 0     ; 0x8aba
    mov ax, 0x2c                     ; 0x8abe
    imul word [bp - 0x0050]          ; 0x8ac1
    mov si, ax                       ; 0x8ac4
    mov ax, word [bp - 0x004e]       ; 0x8ac6
    shl ax, 1                        ; 0x8ac9
    mov bx, ax                       ; 0x8acb
    mov bx, word [bx + party_char]   ; 0x8acd
    mov byte [bx + si + 0x18], 0     ; 0x8ad1
    mov ax, 0x2c                     ; 0x8ad5
    imul word [bp - 0x0050]          ; 0x8ad8
    mov si, ax                       ; 0x8adb
    mov ax, word [bp - 0x004e]       ; 0x8add
    shl ax, 1                        ; 0x8ae0
    mov bx, ax                       ; 0x8ae2
    mov bx, word [bx + party_char]   ; 0x8ae4
    mov word [bx + si + 0xa], 1      ; 0x8ae8
@..api_idx_00ac_OJJU.l101:
    mov ax, 0x2c                     ; 0x8aed
    imul word [bp - 0x0050]          ; 0x8af0
    mov si, ax                       ; 0x8af3
    mov ax, word [bp - 0x004e]       ; 0x8af5
    shl ax, 1                        ; 0x8af8
    mov bx, ax                       ; 0x8afa
    mov bx, word [bx + party_char]   ; 0x8afc
    mov byte [bx + si + 0x1c], 0     ; 0x8b00
@..api_idx_00ac_OJJU.l102:
    jmp short @..api_idx_00ac_OJJU.l108 ; 0x8b04
@..api_idx_00ac_OJJU.l103:
    mov word [bp - 0x005a], 0xf      ; 0x8b06
    jmp short @..api_idx_00ac_OJJU.l108 ; 0x8b0b
@..api_idx_00ac_OJJU.l104:
    cmp ax, strict word 0            ; 0x8b0d
    jne short @..api_idx_00ac_OJJU.l105 ; 0x8b10
    jmp near @..api_idx_00ac_OJJU.l88 ; 0x8b12
@..api_idx_00ac_OJJU.l105:
    cmp ax, strict word 1            ; 0x8b15
    jne short @..api_idx_00ac_OJJU.l106 ; 0x8b18
    jmp near @..api_idx_00ac_OJJU.l91 ; 0x8b1a
@..api_idx_00ac_OJJU.l106:
    cmp ax, strict word 2            ; 0x8b1d
    jne short @..api_idx_00ac_OJJU.l107 ; 0x8b20
    jmp near @..api_idx_00ac_OJJU.l92 ; 0x8b22
@..api_idx_00ac_OJJU.l107:
    cmp ax, strict word 3            ; 0x8b25
    je short @..api_idx_00ac_OJJU.l103 ; 0x8b28
@..api_idx_00ac_OJJU.l108:
    jmp short @..api_idx_00ac_OJJU.l110 ; 0x8b2a
@..api_idx_00ac_OJJU.l109:
    cmp word [bp - 0x004e], byte 0   ; 0x8b2c
    jne short @..api_idx_00ac_OJJU.l110 ; 0x8b30
    mov ax, 0x248                    ; 0x8b32
    imul word [bp - 0x0050]          ; 0x8b35
    mov bx, ax                       ; 0x8b38
    mov al, byte [bx + 0x5d49]       ; 0x8b3a
    sub ah, ah                       ; 0x8b3e
    cmp ax, 0xff                     ; 0x8b40
    je short @..api_idx_00ac_OJJU.l110 ; 0x8b43
    mov cx, 0xc                      ; 0x8b45
    imul cx                          ; 0x8b48
    add bx, ax                       ; 0x8b4a
    cmp byte [bx + 0x5c38], 0xb      ; 0x8b4c
    jne short @..api_idx_00ac_OJJU.l110 ; 0x8b51
    mov ax, 0                        ; 0x8b53
    push ax                          ; 0x8b56
    mov ax, 8                        ; 0x8b57
    push ax                          ; 0x8b5a
    push word [bp - 0x0050]          ; 0x8b5b
    call loc_SIKN                    ; 0x8b5e
    add sp, byte 6                   ; 0x8b61
@..api_idx_00ac_OJJU.l110:
    cmp word [bss_8464], byte 0      ; 0x8b64
    je short @..api_idx_00ac_OJJU.l111 ; 0x8b69
    cmp word [bp - 0x009e], byte 0   ; 0x8b6b
    jne short @..api_idx_00ac_OJJU.l111 ; 0x8b70
    mov bx, word [bss_8492]          ; 0x8b72
    cmp byte [bx + 0xd8], 0          ; 0x8b76
    jbe short @..api_idx_00ac_OJJU.l111 ; 0x8b7b
    mov ax, word [bss_8464]          ; 0x8b7d
    shl ax, 1                        ; 0x8b80
    mov bx, ax                       ; 0x8b82
    mov bx, word [bx + party_char_ext] ; 0x8b84
    mov al, byte [bx + 0xd8]         ; 0x8b88
    mov bx, word [bss_8492]          ; 0x8b8c
    cmp al, byte [bx + 0xd8]         ; 0x8b90
    jne short @..api_idx_00ac_OJJU.l111 ; 0x8b94
    mov ax, 0x10                     ; 0x8b96
    push ax                          ; 0x8b99
    call ds_app_HKIJ                 ; 0x8b9a
    pop cx                           ; 0x8b9d
@..api_idx_00ac_OJJU.l111:
    mov ax, word [bss_9058]          ; 0x8b9e
    mov cx, 2                        ; 0x8ba1
    cwd                              ; 0x8ba4
    idiv cx                          ; 0x8ba5
    push ax                          ; 0x8ba7
    call api_idx_0004_QUPL           ; 0x8ba8
    pop cx                           ; 0x8bab
    mov ax, word [bp - 0x004e]       ; 0x8bac
    shl ax, 1                        ; 0x8baf
    mov bx, ax                       ; 0x8bb1
    mov bx, word [bx + party_char_ext] ; 0x8bb3
    mov cl, byte [bx + 0xd6]         ; 0x8bb7
    mov bx, word [bp - 0x0052]       ; 0x8bbb
    mov al, byte [bx + 0x11]         ; 0x8bbe
    cmp al, cl                       ; 0x8bc1
    jne short @..api_idx_00ac_OJJU.l112 ; 0x8bc3
    inc word [bp - 0x009a]           ; 0x8bc5
@..api_idx_00ac_OJJU.l112:
    mov word [bp - 0x0062], 0        ; 0x8bc9
    jmp near @..api_idx_00ac_OJJU.l143 ; 0x8bce
@..api_idx_00ac_OJJU.l113:
    mov ax, 0                        ; 0x8bd1
    cmp word [bss_905c], byte 0      ; 0x8bd4
    jne short @..api_idx_00ac_OJJU.l114 ; 0x8bd9
    mov ax, 0x64                     ; 0x8bdb
    push ax                          ; 0x8bde
    call random_below                ; 0x8bdf
    pop cx                           ; 0x8be2
@..api_idx_00ac_OJJU.l114:
    mov word [bp - 0x0060], ax       ; 0x8be3
    cmp word [bp - 0x004e], byte 0   ; 0x8be6
    jne short @..api_idx_00ac_OJJU.l115 ; 0x8bea
    mov ax, word [bss_8464]          ; 0x8bec
    shl ax, 1                        ; 0x8bef
    mov bx, ax                       ; 0x8bf1
    mov ax, word [bx + party_char_ext] ; 0x8bf3
    add ax, 0xbc                     ; 0x8bf7
    push ax                          ; 0x8bfa
    call api_idx_0004_NRKR           ; 0x8bfb
    pop cx                           ; 0x8bfe
    mov word [bp - 0x006c], ax       ; 0x8bff
    mov ax, word [bp - 0x004e]       ; 0x8c02
    shl ax, 1                        ; 0x8c05
    mov bx, ax                       ; 0x8c07
    mov bx, word [bx + party_char_ext] ; 0x8c09
    mov si, word [bp - 0x006c]       ; 0x8c0d
    mov al, byte [bx + si + 0xc4]    ; 0x8c10
    cbw                              ; 0x8c14
    add ax, word [bp - 0x005c]       ; 0x8c15
    mov word [bp - 0x005e], ax       ; 0x8c18
    jmp short @..api_idx_00ac_OJJU.l116 ; 0x8c1b
@..api_idx_00ac_OJJU.l115:
    mov ax, word [bp - 0x004e]       ; 0x8c1d
    shl ax, 1                        ; 0x8c20
    mov bx, ax                       ; 0x8c22
    mov ax, word [bx + party_char_ext] ; 0x8c24
    add ax, 0xb4                     ; 0x8c28
    push ax                          ; 0x8c2b
    call api_idx_0004_NRKR           ; 0x8c2c
    pop cx                           ; 0x8c2f
    mov word [bp - 0x006c], ax       ; 0x8c30
    mov ax, word [bp - 0x004e]       ; 0x8c33
    shl ax, 1                        ; 0x8c36
    mov bx, ax                       ; 0x8c38
    mov bx, word [bx + party_char_ext] ; 0x8c3a
    mov si, word [bp - 0x006c]       ; 0x8c3e
    mov al, byte [bx + si + 0xc4]    ; 0x8c41
    cbw                              ; 0x8c45
    add ax, word [bp - 0x005c]       ; 0x8c46
    mov word [bp - 0x005e], ax       ; 0x8c49
@..api_idx_00ac_OJJU.l116:
    mov ax, 0x2c                     ; 0x8c4c
    imul word [bp - 0x0050]          ; 0x8c4f
    mov si, ax                       ; 0x8c52
    mov ax, word [bp - 0x004e]       ; 0x8c54
    shl ax, 1                        ; 0x8c57
    mov bx, ax                       ; 0x8c59
    mov bx, word [bx + party_char]   ; 0x8c5b
    cmp byte [bx + si + 0x22], 2     ; 0x8c5f
    jne short @..api_idx_00ac_OJJU.l118 ; 0x8c63
    mov ax, word [bp - 0x005e]       ; 0x8c65
    push ax                          ; 0x8c68
    cmp ax, strict word 0            ; 0x8c69
    pop ax                           ; 0x8c6c
    jle short @..api_idx_00ac_OJJU.l117 ; 0x8c6d
    mov ax, 0                        ; 0x8c6f
@..api_idx_00ac_OJJU.l117:
    mov word [bp - 0x005e], ax       ; 0x8c72
@..api_idx_00ac_OJJU.l118:
    mov ax, 4                        ; 0x8c75
    push ax                          ; 0x8c78
    mov ax, 3                        ; 0x8c79
    push ax                          ; 0x8c7c
    call api_idx_0004_UONH           ; 0x8c7d
    add sp, byte 4                   ; 0x8c80
    cmp word [bp - 0x009e], byte 0xff ; 0x8c83
    je short @..api_idx_00ac_OJJU.l119 ; 0x8c88
    mov ax, 8                        ; 0x8c8a
    push ax                          ; 0x8c8d
    call random_below                ; 0x8c8e
    pop cx                           ; 0x8c91
    mov cx, ax                       ; 0x8c92
    mov ax, 3                        ; 0x8c94
    sub ax, cx                       ; 0x8c97
    shl ax, 1                        ; 0x8c99
    push ax                          ; 0x8c9b
    mov ax, 6                        ; 0x8c9c
    push ax                          ; 0x8c9f
    call api_idx_000c_NRPK           ; 0x8ca0
    add sp, byte 4                   ; 0x8ca3
@..api_idx_00ac_OJJU.l119:
    cmp word [bp + 0x8], byte 4      ; 0x8ca6
    je short @..api_idx_00ac_OJJU.l120 ; 0x8caa
    cmp word [bp + 0x8], byte 8      ; 0x8cac
    jne short @..api_idx_00ac_OJJU.l121 ; 0x8cb0
@..api_idx_00ac_OJJU.l120:
    cmp word [bp - 0x00ac], byte 0   ; 0x8cb2
    jne short @..api_idx_00ac_OJJU.l121 ; 0x8cb7
    mov ax, 0x64                     ; 0x8cb9
    push ax                          ; 0x8cbc
    call random_below                ; 0x8cbd
    pop cx                           ; 0x8cc0
    push ax                          ; 0x8cc1
    mov ax, word [bp - 0x004e]       ; 0x8cc2
    shl ax, 1                        ; 0x8cc5
    mov bx, ax                       ; 0x8cc7
    mov bx, word [bx + party_char]   ; 0x8cc9
    mov al, byte [bx + 0x18e]        ; 0x8ccd
    sub ah, ah                       ; 0x8cd1
    mov cx, ax                       ; 0x8cd3
    pop ax                           ; 0x8cd5
    cmp ax, cx                       ; 0x8cd6
    jge short @..api_idx_00ac_OJJU.l121 ; 0x8cd8
    mov ax, 3                        ; 0x8cda
    push ax                          ; 0x8cdd
    mov ax, 0x43                     ; 0x8cde
    push ax                          ; 0x8ce1
    mov ax, 0xc8e                    ; 0x8ce2
    push ax                          ; 0x8ce5
    call api_idx_0050_PLNP           ; 0x8ce6
    add sp, byte 6                   ; 0x8ce9
    mov ax, 7                        ; 0x8cec
    push ax                          ; 0x8cef
    call ds_app_HKIJ                 ; 0x8cf0
    pop cx                           ; 0x8cf3
    jmp near @..api_idx_00ac_OJJU.l142 ; 0x8cf4
@..api_idx_00ac_OJJU.l121:
    cmp word [bp - 0x0094], byte 0xff ; 0x8cf7
    jne short @..api_idx_00ac_OJJU.l123 ; 0x8cfc
    mov ax, word [bp - 0x0060]       ; 0x8cfe
    cmp ax, strict word 5            ; 0x8d01
    jge short @..api_idx_00ac_OJJU.l122 ; 0x8d04
    jmp near @..api_idx_00ac_OJJU.l141 ; 0x8d06
@..api_idx_00ac_OJJU.l122:
    cmp ax, strict word 0x5f         ; 0x8d09
    jge short @..api_idx_00ac_OJJU.l123 ; 0x8d0c
    mov ax, 5                        ; 0x8d0e
    imul word [bp - 0x005a]          ; 0x8d11
    mov cx, word [bp - 0x0056]       ; 0x8d14
    sub cx, ax                       ; 0x8d17
    mov ax, word [bp - 0x0060]       ; 0x8d19
    cmp cx, ax                       ; 0x8d1c
    jl short @..api_idx_00ac_OJJU.l123 ; 0x8d1e
    jmp near @..api_idx_00ac_OJJU.l141 ; 0x8d20
@..api_idx_00ac_OJJU.l123:
    cmp word [bp - 0x0094], byte 0xff ; 0x8d23
    je short @..api_idx_00ac_OJJU.l124 ; 0x8d28
    mov ax, word [bp - 0x0094]       ; 0x8d2a
    mov cx, 0x100                    ; 0x8d2e
    cwd                              ; 0x8d31
    idiv cx                          ; 0x8d32
    mov word [bp - 0x0098], ax       ; 0x8d34
    mov word [bp - 0x0096], dx       ; 0x8d38
    mov word [bss_91d8], 1           ; 0x8d3c
    push ax                          ; 0x8d42
    push dx                          ; 0x8d43
    push word [bp + 0x4]             ; 0x8d44
    call api_idx_000e_ORJG           ; 0x8d47
    add sp, byte 6                   ; 0x8d4a
    jmp near @..api_idx_00ac_OJJU.l140 ; 0x8d4d
@..api_idx_00ac_OJJU.l124:
    mov ax, 3                        ; 0x8d50
    push ax                          ; 0x8d53
    mov ax, 0x16                     ; 0x8d54
    push ax                          ; 0x8d57
    mov ax, 0xce6                    ; 0x8d58
    push ax                          ; 0x8d5b
    call api_idx_0050_PLNP           ; 0x8d5c
    add sp, byte 6                   ; 0x8d5f
    mov ax, 7                        ; 0x8d62
    push ax                          ; 0x8d65
    call ds_app_HKIJ                 ; 0x8d66
    pop cx                           ; 0x8d69
    mov ax, word [bp - 0x004e]       ; 0x8d6a
    shl ax, 1                        ; 0x8d6d
    mov bx, ax                       ; 0x8d6f
    mov bx, word [bx + party_char_ext] ; 0x8d71
    cmp byte [bx + 0xd6], 0x11       ; 0x8d75
    je short @..api_idx_00ac_OJJU.l125 ; 0x8d7a
    cmp byte [bx + 0xd6], 0x17       ; 0x8d7c
    jne short @..api_idx_00ac_OJJU.l126 ; 0x8d81
    cmp word [bp - 0x006c], byte 6   ; 0x8d83
    jne short @..api_idx_00ac_OJJU.l126 ; 0x8d87
@..api_idx_00ac_OJJU.l125:
    mov ax, bss_90e6                 ; 0x8d89
    push ax                          ; 0x8d8c
    mov ax, word [bp - 0x006c]       ; 0x8d8d
    add ax, 0xd02                    ; 0x8d90
    push ax                          ; 0x8d93
    call ds_app_mem_TIMR             ; 0x8d94
    add sp, byte 4                   ; 0x8d97
    jmp short @..api_idx_00ac_OJJU.l128 ; 0x8d9a
@..api_idx_00ac_OJJU.l126:
    mov ax, word [bp - 0x004e]       ; 0x8d9c
    shl ax, 1                        ; 0x8d9f
    mov bx, ax                       ; 0x8da1
    mov bx, word [bx + party_char_ext] ; 0x8da3
    cmp byte [bx + 0xd6], 0x1a       ; 0x8da7
    jne short @..api_idx_00ac_OJJU.l127 ; 0x8dac
    mov ax, bss_90e6                 ; 0x8dae
    push ax                          ; 0x8db1
    mov ax, word [bp - 0x006c]       ; 0x8db2
    add ax, 0xd3e                    ; 0x8db5
    push ax                          ; 0x8db8
    call ds_app_mem_TIMR             ; 0x8db9
    add sp, byte 4                   ; 0x8dbc
    jmp short @..api_idx_00ac_OJJU.l128 ; 0x8dbf
@..api_idx_00ac_OJJU.l127:
    mov ax, bss_90e6                 ; 0x8dc1
    push ax                          ; 0x8dc4
    mov ax, word [bp - 0x006c]       ; 0x8dc5
    add ax, 0xcf8                    ; 0x8dc8
    push ax                          ; 0x8dcb
    call ds_app_mem_TIMR             ; 0x8dcc
    add sp, byte 4                   ; 0x8dcf
@..api_idx_00ac_OJJU.l128:
    inc word [bp - 0x0066]           ; 0x8dd2
    mov bx, word [bp + 0x4]          ; 0x8dd5
    cmp byte [bx + 0x2b], 1          ; 0x8dd8
    jne short @..api_idx_00ac_OJJU.l129 ; 0x8ddc
    mov byte [bx + 0x2b], 0xff       ; 0x8dde
@..api_idx_00ac_OJJU.l129:
    mov word [bp - 0x006a], 0        ; 0x8de2
    mov ax, word [bp - 0x009a]       ; 0x8de7
    mov word [bp - 0x009c], ax       ; 0x8deb
@..api_idx_00ac_OJJU.l130:
    cmp word [bp - 0x009c], byte 0   ; 0x8def
    jle short @..api_idx_00ac_OJJU.l131 ; 0x8df4
    push word [bp - 0x006e]          ; 0x8df6
    push word [bp - 0x0070]          ; 0x8df9
    call ds_app_QSQR                 ; 0x8dfc
    add sp, byte 4                   ; 0x8dff
    add word [bp - 0x006a], ax       ; 0x8e02
    dec word [bp - 0x009c]           ; 0x8e05
    jmp short @..api_idx_00ac_OJJU.l130 ; 0x8e09
@..api_idx_00ac_OJJU.l131:
    mov ax, word [bp - 0x007e]       ; 0x8e0b
    add word [bp - 0x006a], ax       ; 0x8e0e
    cmp word [bp - 0x006a], byte 0   ; 0x8e11
    jg short @..api_idx_00ac_OJJU.l132 ; 0x8e15
    jmp near @..api_idx_00ac_OJJU.l139 ; 0x8e17
@..api_idx_00ac_OJJU.l132:
    cmp word [bp - 0x0060], byte 0x5f ; 0x8e1a
    jge short @..api_idx_00ac_OJJU.l133 ; 0x8e1e
    mov ax, 5                        ; 0x8e20
    imul word [bp - 0x005e]          ; 0x8e23
    mov cx, ax                       ; 0x8e26
    mov ax, word [bp - 0x0056]       ; 0x8e28
    sub ax, cx                       ; 0x8e2b
    cmp ax, word [bp - 0x0060]       ; 0x8e2d
    jl short @..api_idx_00ac_OJJU.l133 ; 0x8e30
    jmp near @..api_idx_00ac_OJJU.l139 ; 0x8e32
@..api_idx_00ac_OJJU.l133:
    mov ax, bss_9136                 ; 0x8e35
    push ax                          ; 0x8e38
    push word [bp - 0x006a]          ; 0x8e39
    call ds_app_OLKR                 ; 0x8e3c
    add sp, byte 4                   ; 0x8e3f
    mov ax, bss_9186                 ; 0x8e42
    push ax                          ; 0x8e45
    mov ax, 0xcea                    ; 0x8e46
    push ax                          ; 0x8e49
    call ds_app_mem_TIMR             ; 0x8e4a
    add sp, byte 4                   ; 0x8e4d
    mov ax, 0x43                     ; 0x8e50
    push ax                          ; 0x8e53
    mov ax, 0x41                     ; 0x8e54
    push ax                          ; 0x8e57
    mov ax, 0x43                     ; 0x8e58
    push ax                          ; 0x8e5b
    mov ax, bss_9186                 ; 0x8e5c
    push ax                          ; 0x8e5f
    mov ax, bss_9136                 ; 0x8e60
    push ax                          ; 0x8e63
    mov ax, bss_90e6                 ; 0x8e64
    push ax                          ; 0x8e67
    mov ax, 4                        ; 0x8e68
    push ax                          ; 0x8e6b
    call api_idx_0004_QSNR           ; 0x8e6c
    add sp, byte 0x0e                ; 0x8e6f
    mov ax, word [bp - 0x006a]       ; 0x8e72
    push ax                          ; 0x8e75
    mov ax, 0x2c                     ; 0x8e76
    imul word [bp - 0x0050]          ; 0x8e79
    mov si, ax                       ; 0x8e7c
    mov ax, word [bp - 0x004e]       ; 0x8e7e
    shl ax, 1                        ; 0x8e81
    mov bx, ax                       ; 0x8e83
    mov bx, word [bx + party_char]   ; 0x8e85
    pop ax                           ; 0x8e89
    sub word [bx + si + 0x2], ax     ; 0x8e8a
    mov ax, 0x2c                     ; 0x8e8d
    imul word [bp - 0x0050]          ; 0x8e90
    mov si, ax                       ; 0x8e93
    mov ax, word [bp - 0x004e]       ; 0x8e95
    shl ax, 1                        ; 0x8e98
    mov bx, ax                       ; 0x8e9a
    mov bx, word [bx + party_char]   ; 0x8e9c
    mov byte [bx + si + 0x10], 0     ; 0x8ea0
    mov ax, 3                        ; 0x8ea4
    push ax                          ; 0x8ea7
    call random_below                ; 0x8ea8
    pop cx                           ; 0x8eab
    mov cx, ax                       ; 0x8eac
    inc ax                           ; 0x8eae
    inc ax                           ; 0x8eaf
    mov cx, ax                       ; 0x8eb0
    mov ax, 0x2c                     ; 0x8eb2
    imul word [bp - 0x0050]          ; 0x8eb5
    mov si, ax                       ; 0x8eb8
    mov ax, word [bp - 0x004e]       ; 0x8eba
    shl ax, 1                        ; 0x8ebd
    mov bx, ax                       ; 0x8ebf
    mov bx, word [bx + party_char]   ; 0x8ec1
    mov al, byte [bx + si + 0x11]    ; 0x8ec5
    sub ah, ah                       ; 0x8ec8
    sub ax, cx                       ; 0x8eca
    mov word [bp - 0x00a0], ax       ; 0x8ecc
    cmp ax, strict word 0            ; 0x8ed0
    jge short @..api_idx_00ac_OJJU.l134 ; 0x8ed3
    mov word [bp - 0x00a0], 0        ; 0x8ed5
@..api_idx_00ac_OJJU.l134:
    mov al, byte [bp - 0x00a0]       ; 0x8edb
    mov byte [bx + si + 0x11], al    ; 0x8edf
    mov ax, 0x2c                     ; 0x8ee2
    imul word [bp - 0x0050]          ; 0x8ee5
    mov si, ax                       ; 0x8ee8
    mov ax, word [bp - 0x004e]       ; 0x8eea
    shl ax, 1                        ; 0x8eed
    mov bx, ax                       ; 0x8eef
    mov bx, word [bx + party_char]   ; 0x8ef1
    cmp word [bx + si + 0x2], byte 0 ; 0x8ef5
    jg short @..api_idx_00ac_OJJU.l136 ; 0x8ef9
    mov ax, word [bss_9058]          ; 0x8efb
    mov cx, 2                        ; 0x8efe
    cwd                              ; 0x8f01
    idiv cx                          ; 0x8f02
    push ax                          ; 0x8f04
    call api_idx_0004_QUPL           ; 0x8f05
    pop cx                           ; 0x8f08
    mov ax, 0                        ; 0x8f09
    push ax                          ; 0x8f0c
    mov ax, 0xd50                    ; 0x8f0d
    push ax                          ; 0x8f10
    mov ax, 0                        ; 0x8f11
    push ax                          ; 0x8f14
    mov ax, 3                        ; 0x8f15
    push ax                          ; 0x8f18
    mov ax, 0                        ; 0x8f19
    push ax                          ; 0x8f1c
    mov ax, 0xd9e                    ; 0x8f1d
    push ax                          ; 0x8f20
    push word [bp - 0x0050]          ; 0x8f21
    push word [bp - 0x004e]          ; 0x8f24
    call api_idx_0002_UTVG           ; 0x8f27
    add sp, byte 0x10                ; 0x8f2a
    mov bx, word [bp + 0x4]          ; 0x8f2d
    cmp byte [bx + 0x2b], 0xff       ; 0x8f30
    jne short @..api_idx_00ac_OJJU.l135 ; 0x8f34
    mov ax, 3                        ; 0x8f36
    push ax                          ; 0x8f39
    call random_below                ; 0x8f3a
    pop cx                           ; 0x8f3d
    cmp ax, strict word 0            ; 0x8f3e
    jle short @..api_idx_00ac_OJJU.l135 ; 0x8f41
    mov bx, word [bp + 0x4]          ; 0x8f43
    mov byte [bx + 0x2b], 1          ; 0x8f46
@..api_idx_00ac_OJJU.l135:
    jmp near @..api_idx_00ac_OJJU.l138 ; 0x8f4a
@..api_idx_00ac_OJJU.l136:
    cmp word [bp - 0x004e], byte 0   ; 0x8f4d
    jne short @..api_idx_00ac_OJJU.l137 ; 0x8f51
    mov ax, 0x248                    ; 0x8f53
    imul word [bp - 0x0050]          ; 0x8f56
    mov bx, ax                       ; 0x8f59
    mov al, byte [bx + 0x5e2c]       ; 0x8f5b
    sub ah, ah                       ; 0x8f5f
    inc ax                           ; 0x8f61
    inc ax                           ; 0x8f62
    push ax                          ; 0x8f63
    call ds_app_HKIJ                 ; 0x8f64
    pop cx                           ; 0x8f67
    mov ax, 1                        ; 0x8f68
    push ax                          ; 0x8f6b
    push word [bp - 0x0050]          ; 0x8f6c
    call api_idx_0004_MLLS           ; 0x8f6f
    add sp, byte 4                   ; 0x8f72
@..api_idx_00ac_OJJU.l137:
    mov ax, word [bss_9058]          ; 0x8f75
    mov cx, 2                        ; 0x8f78
    cwd                              ; 0x8f7b
    idiv cx                          ; 0x8f7c
    push ax                          ; 0x8f7e
    call api_idx_0004_QUPL           ; 0x8f7f
    pop cx                           ; 0x8f82
    push word [bp - 0x0050]          ; 0x8f83
    push word [bp - 0x004e]          ; 0x8f86
    push word [bp - 0x0052]          ; 0x8f89
    push word [bp + 0x4]             ; 0x8f8c
    call api_idx_000a_VQTM           ; 0x8f8f
    add sp, byte 8                   ; 0x8f92
    cmp word [bp - 0x00a2], byte 0   ; 0x8f95
    je short @..api_idx_00ac_OJJU.l138 ; 0x8f9a
    mov ax, 0x2c                     ; 0x8f9c
    imul word [bp - 0x0050]          ; 0x8f9f
    mov si, ax                       ; 0x8fa2
    mov ax, word [bp - 0x004e]       ; 0x8fa4
    shl ax, 1                        ; 0x8fa7
    mov bx, ax                       ; 0x8fa9
    mov bx, word [bx + party_char]   ; 0x8fab
    push word [bx + si]              ; 0x8faf
    call random_below                ; 0x8fb1
    pop cx                           ; 0x8fb4
    test ax, ax                      ; 0x8fb5
    jne short @..api_idx_00ac_OJJU.l138 ; 0x8fb7
    mov ax, 0                        ; 0x8fb9
    push ax                          ; 0x8fbc
    mov ax, 0xd50                    ; 0x8fbd
    push ax                          ; 0x8fc0
    mov ax, 2                        ; 0x8fc1
    push ax                          ; 0x8fc4
    push ax                          ; 0x8fc5
    push ax                          ; 0x8fc6
    mov ax, 0                        ; 0x8fc7
    push ax                          ; 0x8fca
    mov ax, 3                        ; 0x8fcb
    push ax                          ; 0x8fce
    mov ax, 4                        ; 0x8fcf
    push ax                          ; 0x8fd2
    mov ax, 0xd93                    ; 0x8fd3
    push ax                          ; 0x8fd6
    push word [bp - 0x0050]          ; 0x8fd7
    push word [bp - 0x004e]          ; 0x8fda
    call api_idx_0006_QJOL           ; 0x8fdd
    add sp, byte 0x16                ; 0x8fe0
@..api_idx_00ac_OJJU.l138:
    jmp short @..api_idx_00ac_OJJU.l140 ; 0x8fe3
@..api_idx_00ac_OJJU.l139:
    mov ax, bss_9136                 ; 0x8fe5
    push ax                          ; 0x8fe8
    mov ax, 0xce7                    ; 0x8fe9
    push ax                          ; 0x8fec
    call ds_app_mem_TIMR             ; 0x8fed
    add sp, byte 4                   ; 0x8ff0
    mov byte [bss_9186], 0           ; 0x8ff3
    mov ax, 0x43                     ; 0x8ff8
    push ax                          ; 0x8ffb
    push ax                          ; 0x8ffc
    push ax                          ; 0x8ffd
    mov ax, bss_9186                 ; 0x8ffe
    push ax                          ; 0x9001
    mov ax, bss_9136                 ; 0x9002
    push ax                          ; 0x9005
    mov ax, bss_90e6                 ; 0x9006
    push ax                          ; 0x9009
    mov ax, 4                        ; 0x900a
    push ax                          ; 0x900d
    call api_idx_0004_QSNR           ; 0x900e
    add sp, byte 0x0e                ; 0x9011
@..api_idx_00ac_OJJU.l140:
    jmp short @..api_idx_00ac_OJJU.l142 ; 0x9014
@..api_idx_00ac_OJJU.l141:
    mov ax, 3                        ; 0x9016
    push ax                          ; 0x9019
    mov ax, 0x43                     ; 0x901a
    push ax                          ; 0x901d
    mov ax, 0xce5                    ; 0x901e
    push ax                          ; 0x9021
    call api_idx_0050_PLNP           ; 0x9022
    add sp, byte 6                   ; 0x9025
@..api_idx_00ac_OJJU.l142:
    mov ax, word [bss_9058]          ; 0x9028
    mov cx, 2                        ; 0x902b
    cwd                              ; 0x902e
    idiv cx                          ; 0x902f
    push ax                          ; 0x9031
    call api_idx_0004_QUPL           ; 0x9032
    pop cx                           ; 0x9035
    inc word [bp - 0x0062]           ; 0x9036
@..api_idx_00ac_OJJU.l143:
    mov ax, word [bp - 0x0062]       ; 0x9039
    cmp ax, word [bp - 0x0064]       ; 0x903c
    jge short @..api_idx_00ac_OJJU.l144 ; 0x903f
    mov ax, 0x2c                     ; 0x9041
    imul word [bp - 0x0050]          ; 0x9044
    mov si, ax                       ; 0x9047
    mov ax, word [bp - 0x004e]       ; 0x9049
    shl ax, 1                        ; 0x904c
    mov bx, ax                       ; 0x904e
    mov bx, word [bx + party_char]   ; 0x9050
    cmp byte [bx + si + 0x22], 3     ; 0x9054
    jae short @..api_idx_00ac_OJJU.l144 ; 0x9058
    jmp near @..api_idx_00ac_OJJU.l113 ; 0x905a
@..api_idx_00ac_OJJU.l144:
    mov bx, word [bp + 0x4]          ; 0x905d
    cmp byte [bx + 0x2b], 0xff       ; 0x9060
    jne short @..api_idx_00ac_OJJU.l145 ; 0x9064
    mov byte [bx + 0x2b], 0          ; 0x9066
@..api_idx_00ac_OJJU.l145:
    cmp word [bp - 0x004e], byte 0   ; 0x906a
    jne short @..api_idx_00ac_OJJU.l146 ; 0x906e
    mov ax, 0                        ; 0x9070
    push ax                          ; 0x9073
    push word [bp - 0x0050]          ; 0x9074
    call api_idx_0004_MLLS           ; 0x9077
    add sp, byte 4                   ; 0x907a
@..api_idx_00ac_OJJU.l146:
    cmp word [bp - 0x00a8], byte 0   ; 0x907d
    jle short @..api_idx_00ac_OJJU.l147 ; 0x9082
    push word [bp - 0x00a8]          ; 0x9084
    call ds_app_QTIV                 ; 0x9088
    pop cx                           ; 0x908b
@..api_idx_00ac_OJJU.l147:
    ret                              ; 0x908c
