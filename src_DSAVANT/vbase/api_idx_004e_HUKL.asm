; auto-generated
api_idx_004e_HUKL:
    mov ax, 0xffb2                   ; 0x388c
    call aztec_csav                  ; 0x388f
    mov word [bp - 0xe], 0           ; 0x3892
    mov ax, word [disk_header]       ; 0x3897
    mov word [bp - 0x10], ax         ; 0x389a
    cmp byte [install_mode], 5       ; 0x389d
    jne short @..api_idx_004e_HUKL.l1 ; 0x38a2
    cmp ax, strict word 0            ; 0x38a4
    jle short @..api_idx_004e_HUKL.l1 ; 0x38a7
    inc ax                           ; 0x38a9
    inc ax                           ; 0x38aa
    jmp short @..api_idx_004e_HUKL.l2 ; 0x38ab
@..api_idx_004e_HUKL.l1:
    mov ax, word [bp - 0x10]         ; 0x38ad
@..api_idx_004e_HUKL.l2:
    mov word [bp - 0x10], ax         ; 0x38b0
    mov ax, 0                        ; 0x38b3
    push ax                          ; 0x38b6
    call gfx_wait_sound              ; 0x38b7
    pop cx                           ; 0x38ba
    lea ax, word [bp - 0x3a]         ; 0x38bb
    push ax                          ; 0x38be
    mov ax, MSG_DISK_ERROR           ; 0x38bf
    push ax                          ; 0x38c2
    call load_message_string         ; 0x38c3
    add sp, byte 4                   ; 0x38c6
    lea ax, word [bp - 0x4e]         ; 0x38c9
    push ax                          ; 0x38cc
    mov ax, MSG_SAVING               ; 0x38cd
    push ax                          ; 0x38d0
    call load_message_string         ; 0x38d1
    add sp, byte 4                   ; 0x38d4
    mov word [bp - 0x12], 1          ; 0x38d7
    cmp word [bp + 4], byte 1        ; 0x38dc
    jne short @..api_idx_004e_HUKL.l3 ; 0x38e0
    mov ax, dseg_90db                ; 0x38e2
    push ax                          ; 0x38e5
    lea ax, word [bp - 0x26]         ; 0x38e6
    push ax                          ; 0x38e9
    call aztec_strcpy                ; 0x38ea
    add sp, byte 4                   ; 0x38ed
    mov word [bp - 0xc], 0x591       ; 0x38f0
    jmp short @..api_idx_004e_HUKL.l4 ; 0x38f5
@..api_idx_004e_HUKL.l3:
    mov ax, bss_594e                 ; 0x38f7
    push ax                          ; 0x38fa
    lea ax, word [bp - 0x26]         ; 0x38fb
    push ax                          ; 0x38fe
    call aztec_strcpy                ; 0x38ff
    add sp, byte 4                   ; 0x3902
    mov word [bp - 0xc], 0x582       ; 0x3905
@..api_idx_004e_HUKL.l4:
    lea ax, word [bp - 0x26]         ; 0x390a
    push ax                          ; 0x390d
    mov ax, bss_593a                 ; 0x390e
    push ax                          ; 0x3911
    mov ax, 1                        ; 0x3912
    push ax                          ; 0x3915
    push ax                          ; 0x3916
    mov ax, 0                        ; 0x3917
    push ax                          ; 0x391a
    push word [bp - 0xc]             ; 0x391b
    call api_idx_0028_NRJN           ; 0x391e
    add sp, byte 0xc                 ; 0x3921
    cmp ax, strict word 2            ; 0x3924
    jne short @..api_idx_004e_HUKL.l5 ; 0x3927
    mov ax, 0xffff                   ; 0x3929
    ret                              ; 0x392c
@..api_idx_004e_HUKL.l5:
    cmp word [bp + 4], byte 0        ; 0x392d
    jne short @..api_idx_004e_HUKL.l6 ; 0x3931
    lea ax, word [bp - 0x26]         ; 0x3933
    push ax                          ; 0x3936
    mov ax, bss_594e                 ; 0x3937
    push ax                          ; 0x393a
    call aztec_strcpy                ; 0x393b
    add sp, byte 4                   ; 0x393e
@..api_idx_004e_HUKL.l6:
    mov ax, 0x3a                     ; 0x3941
    push ax                          ; 0x3944
    mov ax, data_path_prefixes       ; 0x3945
    push ax                          ; 0x3948
    mov ax, bss_91c6                 ; 0x3949
    push ax                          ; 0x394c
    call copy_through_char           ; 0x394d
    add sp, byte 6                   ; 0x3950
    mov ax, 0x3a                     ; 0x3953
    push ax                          ; 0x3956
    mov ax, bss_593a                 ; 0x3957
    push ax                          ; 0x395a
    mov ax, bss_91da                 ; 0x395b
    push ax                          ; 0x395e
    call copy_through_char           ; 0x395f
    add sp, byte 6                   ; 0x3962
    mov ax, bss_593a                 ; 0x3965
    push ax                          ; 0x3968
    mov ax, bss_91ee                 ; 0x3969
    push ax                          ; 0x396c
    call aztec_strcpy                ; 0x396d
    add sp, byte 4                   ; 0x3970
    mov ax, bss_91ee                 ; 0x3973
    push ax                          ; 0x3976
    call aztec_strlen                ; 0x3977
    pop cx                           ; 0x397a
    cmp ax, strict word 0            ; 0x397b
    jle short @..api_idx_004e_HUKL.l7 ; 0x397e
    mov ax, bss_91ee                 ; 0x3980
    push ax                          ; 0x3983
    call aztec_strlen                ; 0x3984
    pop cx                           ; 0x3987
    dec ax                           ; 0x3988
    mov word [bp - 2], ax            ; 0x3989
    mov bx, ax                       ; 0x398c
    cmp byte [bx + bss_91ee], 0x5c   ; 0x398e
    je short @..api_idx_004e_HUKL.l7 ; 0x3993
    mov byte [bx + bss_91ef], 0x5c   ; 0x3995
    mov byte [bx + bss_91f0], 0      ; 0x399a
@..api_idx_004e_HUKL.l7:
    lea ax, word [bp - 0x26]         ; 0x399f
    push ax                          ; 0x39a2
    mov ax, bss_91ee                 ; 0x39a3
    push ax                          ; 0x39a6
    call aztec_strcat                ; 0x39a7
    add sp, byte 4                   ; 0x39aa
    cmp byte [install_mode], 1       ; 0x39ad
    jne short @..api_idx_004e_HUKL.l8 ; 0x39b2
    mov ax, bss_91da                 ; 0x39b4
    push ax                          ; 0x39b7
    mov ax, bss_91c6                 ; 0x39b8
    push ax                          ; 0x39bb
    call aztec_strcmp                ; 0x39bc
    add sp, byte 4                   ; 0x39bf
    test ax, ax                      ; 0x39c2
    jne short @..api_idx_004e_HUKL.l8 ; 0x39c4
    jmp near @..api_idx_004e_HUKL.l14 ; 0x39c6
@..api_idx_004e_HUKL.l8:
    mov ax, bss_91da                 ; 0x39c9
    push ax                          ; 0x39cc
    call aztec_strlen                ; 0x39cd
    pop cx                           ; 0x39d0
    cmp ax, strict word 0            ; 0x39d1
    jle short @..api_idx_004e_HUKL.l12 ; 0x39d4
    mov ax, bss_91da                 ; 0x39d6
    push ax                          ; 0x39d9
    mov ax, bss_91c6                 ; 0x39da
    push ax                          ; 0x39dd
    call aztec_strcmp                ; 0x39de
    add sp, byte 4                   ; 0x39e1
    test ax, ax                      ; 0x39e4
    je short @..api_idx_004e_HUKL.l9 ; 0x39e6
    cmp byte [install_mode], 5       ; 0x39e8
    jne short @..api_idx_004e_HUKL.l10 ; 0x39ed
@..api_idx_004e_HUKL.l9:
    mov word [bp - 0xe], 1           ; 0x39ef
@..api_idx_004e_HUKL.l10:
    mov ax, 0                        ; 0x39f4
    push ax                          ; 0x39f7
    push word [bp - 0xe]             ; 0x39f8
    mov ax, 0xffff                   ; 0x39fb
    push ax                          ; 0x39fe
    mov ax, bss_91da                 ; 0x39ff
    push ax                          ; 0x3a02
    call prompt_disk_swap            ; 0x3a03
    add sp, byte 8                   ; 0x3a06
    mov ax, 1                        ; 0x3a09
    cmp word [bp - 0xe], byte 0      ; 0x3a0c
    je short @..api_idx_004e_HUKL.l11 ; 0x3a10
    mov ax, 0                        ; 0x3a12
@..api_idx_004e_HUKL.l11:
    mov word [bp - 0x12], ax         ; 0x3a15
    jmp short @..api_idx_004e_HUKL.l14 ; 0x3a18
@..api_idx_004e_HUKL.l12:
    cmp byte [install_mode], 1       ; 0x3a1a
    jbe short @..api_idx_004e_HUKL.l14 ; 0x3a1f
    mov word [bp - 0xe], 1           ; 0x3a21
    mov ax, 0                        ; 0x3a26
    push ax                          ; 0x3a29
    push word [bp - 0xe]             ; 0x3a2a
    mov ax, 0xffff                   ; 0x3a2d
    push ax                          ; 0x3a30
    mov ax, bss_91c6                 ; 0x3a31
    push ax                          ; 0x3a34
    call prompt_disk_swap            ; 0x3a35
    add sp, byte 8                   ; 0x3a38
    mov ax, 1                        ; 0x3a3b
    cmp word [bp - 0xe], byte 0      ; 0x3a3e
    je short @..api_idx_004e_HUKL.l13 ; 0x3a42
    mov ax, 0                        ; 0x3a44
@..api_idx_004e_HUKL.l13:
    mov word [bp - 0x12], ax         ; 0x3a47
@..api_idx_004e_HUKL.l14:
    mov ax, 0xc7                     ; 0x3a4a
    push ax                          ; 0x3a4d
    mov ax, 0x13f                    ; 0x3a4e
    push ax                          ; 0x3a51
    mov ax, 0                        ; 0x3a52
    push ax                          ; 0x3a55
    push ax                          ; 0x3a56
    call gfx_show_area               ; 0x3a57
    add sp, byte 8                   ; 0x3a5a
    mov ax, 0x301                    ; 0x3a5d
    push ax                          ; 0x3a60
    mov ax, bss_91ee                 ; 0x3a61
    push ax                          ; 0x3a64
    call aztec_open                  ; 0x3a65
    add sp, byte 4                   ; 0x3a68
    mov word [bp - 0xa], ax          ; 0x3a6b
    cmp ax, strict word 0xffff       ; 0x3a6e
    jne short @..api_idx_004e_HUKL.l16 ; 0x3a71
    lea ax, word [bp - 0x3a]         ; 0x3a73
    push ax                          ; 0x3a76
    call loc_KPLK                    ; 0x3a77
    pop cx                           ; 0x3a7a
    cmp word [bp - 0xe], byte 0      ; 0x3a7b
    je short @..api_idx_004e_HUKL.l15 ; 0x3a7f
    mov ax, 1                        ; 0x3a81
    push ax                          ; 0x3a84
    push word [bp - 0x12]            ; 0x3a85
    push word [bp - 0x10]            ; 0x3a88
    mov ax, bss_91c6                 ; 0x3a8b
    push ax                          ; 0x3a8e
    call prompt_disk_swap            ; 0x3a8f
    add sp, byte 8                   ; 0x3a92
@..api_idx_004e_HUKL.l15:
    mov ax, 0xffff                   ; 0x3a95
    ret                              ; 0x3a98
@..api_idx_004e_HUKL.l16:
    cmp word [game_state_arg], byte 0 ; 0x3a99
    jge short @..api_idx_004e_HUKL.l17 ; 0x3a9e
    jmp near @..api_idx_004e_HUKL.l18 ; 0x3aa0
@..api_idx_004e_HUKL.l17:
    mov ax, 1                        ; 0x3aa3
    push ax                          ; 0x3aa6
    mov ax, 0xd                      ; 0x3aa7
    push ax                          ; 0x3aaa
    mov ax, 0x12                     ; 0x3aab
    push ax                          ; 0x3aae
    mov ax, 0x24                     ; 0x3aaf
    push ax                          ; 0x3ab2
    mov ax, 0x61                     ; 0x3ab3
    push ax                          ; 0x3ab6
    mov ax, 3                        ; 0x3ab7
    push ax                          ; 0x3aba
    lea ax, word [bp - 0x4e]         ; 0x3abb
    push ax                          ; 0x3abe
    call api_idx_0004_VUIP           ; 0x3abf
    add sp, byte 0xe                 ; 0x3ac2
    mov ax, 0x80                     ; 0x3ac5
    push ax                          ; 0x3ac8
    mov ax, word [game_state_arg]    ; 0x3ac9
    mov cx, 7                        ; 0x3acc
    shl ax, cl                       ; 0x3acf
    mov cx, ax                       ; 0x3ad1
    mov ax, word [bss_0e1a]          ; 0x3ad3
    mov dx, word [bss_0e1c]          ; 0x3ad6
    add ax, cx                       ; 0x3ada
    push dx                          ; 0x3adc
    push ax                          ; 0x3add
    push ds                          ; 0x3ade
    mov ax, bss_8b7e                 ; 0x3adf
    push ax                          ; 0x3ae2
    call app_memmove                 ; 0x3ae3
    add sp, byte 0xa                 ; 0x3ae6
    mov ax, 0x80                     ; 0x3ae9
    push ax                          ; 0x3aec
    mov ax, word [game_state_arg]    ; 0x3aed
    mov cx, 7                        ; 0x3af0
    shl ax, cl                       ; 0x3af3
    mov cx, ax                       ; 0x3af5
    mov ax, word [bss_0e16]          ; 0x3af7
    mov dx, word [bss_0e18]          ; 0x3afa
    add ax, cx                       ; 0x3afe
    push dx                          ; 0x3b00
    push ax                          ; 0x3b01
    push ds                          ; 0x3b02
    mov ax, bss_8afe                 ; 0x3b03
    push ax                          ; 0x3b06
    call app_memmove                 ; 0x3b07
    add sp, byte 0xa                 ; 0x3b0a
    mov ax, 0x10                     ; 0x3b0d
    push ax                          ; 0x3b10
    mov ax, word [game_state_arg]    ; 0x3b11
    mov cx, 4                        ; 0x3b14
    shl ax, cl                       ; 0x3b17
    add ax, bss_5642                 ; 0x3b19
    push ax                          ; 0x3b1c
    mov ax, word [game_state_arg]    ; 0x3b1d
    shl ax, cl                       ; 0x3b20
    add ax, party_region + 0x2       ; 0x3b22
    push ax                          ; 0x3b25
    call aztec_movmem                ; 0x3b26
    add sp, byte 6                   ; 0x3b29
@..api_idx_004e_HUKL.l18:
    mov ax, 0                        ; 0x3b2c
    push ax                          ; 0x3b2f
    mov ax, 0                        ; 0x3b30
    mov dx, 0                        ; 0x3b33
    push dx                          ; 0x3b36
    push ax                          ; 0x3b37
    push word [bp - 0xa]             ; 0x3b38
    call aztec_lseek                 ; 0x3b3b
    add sp, byte 8                   ; 0x3b3e
    mov ax, 0x34c                    ; 0x3b41
    push ax                          ; 0x3b44
    mov ax, bss_5642                 ; 0x3b45
    push ax                          ; 0x3b48
    push word [bp - 0xa]             ; 0x3b49
    call aztec_write                 ; 0x3b4c
    add sp, byte 6                   ; 0x3b4f
    mov word [bp - 8], ax            ; 0x3b52
    cmp ax, strict word 0            ; 0x3b55
    jg short @..api_idx_004e_HUKL.l20 ; 0x3b58
    lea ax, word [bp - 0x3a]         ; 0x3b5a
    push ax                          ; 0x3b5d
    call loc_KPLK                    ; 0x3b5e
    pop cx                           ; 0x3b61
    push word [bp - 0xa]             ; 0x3b62
    call aztec_close                 ; 0x3b65
    pop cx                           ; 0x3b68
    cmp word [bp - 0xe], byte 0      ; 0x3b69
    je short @..api_idx_004e_HUKL.l19 ; 0x3b6d
    mov ax, 1                        ; 0x3b6f
    push ax                          ; 0x3b72
    push word [bp - 0x12]            ; 0x3b73
    push word [bp - 0x10]            ; 0x3b76
    mov ax, bss_91c6                 ; 0x3b79
    push ax                          ; 0x3b7c
    call prompt_disk_swap            ; 0x3b7d
    add sp, byte 8                   ; 0x3b80
@..api_idx_004e_HUKL.l19:
    mov ax, 0xffff                   ; 0x3b83
    ret                              ; 0x3b86
@..api_idx_004e_HUKL.l20:
    mov ax, 6                        ; 0x3b87
    imul word [bss_590e]             ; 0x3b8a
    mov word [bp - 6], ax            ; 0x3b8e
    cmp ax, strict word 0            ; 0x3b91
    jle short @..api_idx_004e_HUKL.l22 ; 0x3b94
    push ax                          ; 0x3b96
    push word [bss_0e10]             ; 0x3b97
    push word [bp - 0xa]             ; 0x3b9b
    call aztec_write                 ; 0x3b9e
    add sp, byte 6                   ; 0x3ba1
    mov word [bp - 8], ax            ; 0x3ba4
    cmp ax, strict word 0            ; 0x3ba7
    jg short @..api_idx_004e_HUKL.l22 ; 0x3baa
    lea ax, word [bp - 0x3a]         ; 0x3bac
    push ax                          ; 0x3baf
    call loc_KPLK                    ; 0x3bb0
    pop cx                           ; 0x3bb3
    push word [bp - 0xa]             ; 0x3bb4
    call aztec_close                 ; 0x3bb7
    pop cx                           ; 0x3bba
    cmp word [bp - 0xe], byte 0      ; 0x3bbb
    je short @..api_idx_004e_HUKL.l21 ; 0x3bbf
    mov ax, 1                        ; 0x3bc1
    push ax                          ; 0x3bc4
    push word [bp - 0x12]            ; 0x3bc5
    push word [bp - 0x10]            ; 0x3bc8
    mov ax, bss_91c6                 ; 0x3bcb
    push ax                          ; 0x3bce
    call prompt_disk_swap            ; 0x3bcf
    add sp, byte 8                   ; 0x3bd2
@..api_idx_004e_HUKL.l21:
    mov ax, 0xffff                   ; 0x3bd5
    ret                              ; 0x3bd8
@..api_idx_004e_HUKL.l22:
    mov ax, word [bss_5910]          ; 0x3bd9
    shl ax, 1                        ; 0x3bdc
    shl ax, 1                        ; 0x3bde
    shl ax, 1                        ; 0x3be0
    mov word [bp - 6], ax            ; 0x3be2
    cmp ax, strict word 0            ; 0x3be5
    jle short @..api_idx_004e_HUKL.l24 ; 0x3be8
    push ax                          ; 0x3bea
    push word [bss_0e0e]             ; 0x3beb
    push word [bp - 0xa]             ; 0x3bef
    call aztec_write                 ; 0x3bf2
    add sp, byte 6                   ; 0x3bf5
    mov word [bp - 8], ax            ; 0x3bf8
    cmp ax, strict word 0            ; 0x3bfb
    jg short @..api_idx_004e_HUKL.l24 ; 0x3bfe
    lea ax, word [bp - 0x3a]         ; 0x3c00
    push ax                          ; 0x3c03
    call loc_KPLK                    ; 0x3c04
    pop cx                           ; 0x3c07
    push word [bp - 0xa]             ; 0x3c08
    call aztec_close                 ; 0x3c0b
    pop cx                           ; 0x3c0e
    cmp word [bp - 0xe], byte 0      ; 0x3c0f
    je short @..api_idx_004e_HUKL.l23 ; 0x3c13
    mov ax, 1                        ; 0x3c15
    push ax                          ; 0x3c18
    push word [bp - 0x12]            ; 0x3c19
    push word [bp - 0x10]            ; 0x3c1c
    mov ax, bss_91c6                 ; 0x3c1f
    push ax                          ; 0x3c22
    call prompt_disk_swap            ; 0x3c23
    add sp, byte 8                   ; 0x3c26
@..api_idx_004e_HUKL.l23:
    mov ax, 0xffff                   ; 0x3c29
    ret                              ; 0x3c2c
@..api_idx_004e_HUKL.l24:
    mov word [bp - 4], 0             ; 0x3c2d
@..api_idx_004e_HUKL.l25:
    mov ax, 0x80                     ; 0x3c32
    push ax                          ; 0x3c35
    push ds                          ; 0x3c36
    mov ax, bss_9900                 ; 0x3c37
    push ax                          ; 0x3c3a
    mov ax, word [bp - 4]            ; 0x3c3b
    mov cx, 7                        ; 0x3c3e
    shl ax, cl                       ; 0x3c41
    mov cx, ax                       ; 0x3c43
    mov ax, word [bss_0e1a]          ; 0x3c45
    mov dx, word [bss_0e1c]          ; 0x3c48
    add ax, cx                       ; 0x3c4c
    push dx                          ; 0x3c4e
    push ax                          ; 0x3c4f
    call app_memmove                 ; 0x3c50
    add sp, byte 0xa                 ; 0x3c53
    mov ax, 0x80                     ; 0x3c56
    push ax                          ; 0x3c59
    push ds                          ; 0x3c5a
    mov ax, bss_9980                 ; 0x3c5b
    push ax                          ; 0x3c5e
    mov ax, word [bp - 4]            ; 0x3c5f
    mov cx, 7                        ; 0x3c62
    shl ax, cl                       ; 0x3c65
    mov cx, ax                       ; 0x3c67
    mov ax, word [bss_0e16]          ; 0x3c69
    mov dx, word [bss_0e18]          ; 0x3c6c
    add ax, cx                       ; 0x3c70
    push dx                          ; 0x3c72
    push ax                          ; 0x3c73
    call app_memmove                 ; 0x3c74
    add sp, byte 0xa                 ; 0x3c77
    mov ax, 0x80                     ; 0x3c7a
    push ax                          ; 0x3c7d
    mov ax, bss_9900                 ; 0x3c7e
    push ax                          ; 0x3c81
    push word [bp - 0xa]             ; 0x3c82
    call aztec_write                 ; 0x3c85
    add sp, byte 6                   ; 0x3c88
    mov word [bp - 8], ax            ; 0x3c8b
    cmp ax, strict word 0            ; 0x3c8e
    jg short @..api_idx_004e_HUKL.l27 ; 0x3c91
    lea ax, word [bp - 0x3a]         ; 0x3c93
    push ax                          ; 0x3c96
    call loc_KPLK                    ; 0x3c97
    pop cx                           ; 0x3c9a
    push word [bp - 0xa]             ; 0x3c9b
    call aztec_close                 ; 0x3c9e
    pop cx                           ; 0x3ca1
    cmp word [bp - 0xe], byte 0      ; 0x3ca2
    je short @..api_idx_004e_HUKL.l26 ; 0x3ca6
    mov ax, 1                        ; 0x3ca8
    push ax                          ; 0x3cab
    push word [bp - 0x12]            ; 0x3cac
    push word [bp - 0x10]            ; 0x3caf
    mov ax, bss_91c6                 ; 0x3cb2
    push ax                          ; 0x3cb5
    call prompt_disk_swap            ; 0x3cb6
    add sp, byte 8                   ; 0x3cb9
@..api_idx_004e_HUKL.l26:
    mov ax, 0xffff                   ; 0x3cbc
    ret                              ; 0x3cbf
@..api_idx_004e_HUKL.l27:
    mov ax, 0x80                     ; 0x3cc0
    push ax                          ; 0x3cc3
    mov ax, bss_9980                 ; 0x3cc4
    push ax                          ; 0x3cc7
    push word [bp - 0xa]             ; 0x3cc8
    call aztec_write                 ; 0x3ccb
    add sp, byte 6                   ; 0x3cce
    mov word [bp - 8], ax            ; 0x3cd1
    cmp ax, strict word 0            ; 0x3cd4
    jg short @..api_idx_004e_HUKL.l29 ; 0x3cd7
    lea ax, word [bp - 0x3a]         ; 0x3cd9
    push ax                          ; 0x3cdc
    call loc_KPLK                    ; 0x3cdd
    pop cx                           ; 0x3ce0
    push word [bp - 0xa]             ; 0x3ce1
    call aztec_close                 ; 0x3ce4
    pop cx                           ; 0x3ce7
    cmp word [bp - 0xe], byte 0      ; 0x3ce8
    je short @..api_idx_004e_HUKL.l28 ; 0x3cec
    mov ax, 1                        ; 0x3cee
    push ax                          ; 0x3cf1
    push word [bp - 0x12]            ; 0x3cf2
    push word [bp - 0x10]            ; 0x3cf5
    mov ax, bss_91c6                 ; 0x3cf8
    push ax                          ; 0x3cfb
    call prompt_disk_swap            ; 0x3cfc
    add sp, byte 8                   ; 0x3cff
@..api_idx_004e_HUKL.l28:
    mov ax, 0xffff                   ; 0x3d02
    ret                              ; 0x3d05
@..api_idx_004e_HUKL.l29:
    inc word [bp - 4]                ; 0x3d06
    mov ax, word [bp - 4]            ; 0x3d09
    cmp ax, strict word 0x20         ; 0x3d0c
    jge short @..api_idx_004e_HUKL.l30 ; 0x3d0f
    jmp near @..api_idx_004e_HUKL.l25 ; 0x3d11
@..api_idx_004e_HUKL.l30:
    mov ax, word [party_world_x]     ; 0x3d14
    mov word [bss_9a02], ax          ; 0x3d17
    mov ax, word [party_world_y]     ; 0x3d1a
    mov word [bss_9a04], ax          ; 0x3d1d
    mov ax, word [party_cell_x]      ; 0x3d20
    mov word [bss_9a06], ax          ; 0x3d23
    mov ax, word [party_cell_y]      ; 0x3d26
    mov word [bss_9a08], ax          ; 0x3d29
    mov ax, word [party_map_piece]   ; 0x3d2c
    mov word [bss_9a0a], ax          ; 0x3d2f
    mov ax, word [party_tag]         ; 0x3d32
    mov word [bss_9a0c], ax          ; 0x3d35
    mov ax, word [game_state_arg]    ; 0x3d38
    mov word [bss_9a00], ax          ; 0x3d3b
    mov ax, word [bss_8f3a]          ; 0x3d3e
    mov word [bss_9a10], ax          ; 0x3d41
    mov ax, word [bss_8f38]          ; 0x3d44
    mov word [bss_9a12], ax          ; 0x3d47
    mov ax, word [bss_8f36]          ; 0x3d4a
    mov word [bss_9a14], ax          ; 0x3d4d
    mov ax, word [bss_8f34]          ; 0x3d50
    mov word [bss_9a16], ax          ; 0x3d53
    mov ax, word [bss_8f32]          ; 0x3d56
    mov word [bss_9a18], ax          ; 0x3d59
    mov ax, word [bss_8f30]          ; 0x3d5c
    mov word [bss_9a1a], ax          ; 0x3d5f
    mov ax, word [bss_8f3c]          ; 0x3d62
    mov word [bss_9a0e], ax          ; 0x3d65
    mov ax, word [saved_cell_x]      ; 0x3d68
    mov word [bss_9a1c], ax          ; 0x3d6b
    mov ax, word [saved_cell_y]      ; 0x3d6e
    mov word [bss_9a1e], ax          ; 0x3d71
    mov ax, word [saved_map_piece]   ; 0x3d74
    mov word [bss_9a20], ax          ; 0x3d77
    mov ax, word [saved_level]       ; 0x3d7a
    mov word [bss_9a22], ax          ; 0x3d7d
    mov ax, word [bss_8f26]          ; 0x3d80
    mov word [bss_9a24], ax          ; 0x3d83
    mov word [bp - 2], 0             ; 0x3d86
@..api_idx_004e_HUKL.l31:
    mov ax, word [bp - 2]            ; 0x3d8b
    shl ax, 1                        ; 0x3d8e
    shl ax, 1                        ; 0x3d90
    mov bx, ax                       ; 0x3d92
    mov ax, word [bx + party_status_timer] ; 0x3d94
    mov word [bx + bss_9a32], ax     ; 0x3d98
    mov ax, word [bx + bss_82f4]     ; 0x3d9c
    mov word [bx + bss_9a34], ax     ; 0x3da0
    inc word [bp - 2]                ; 0x3da4
    mov ax, word [bp - 2]            ; 0x3da7
    cmp ax, strict word 6            ; 0x3daa
    jl short @..api_idx_004e_HUKL.l31 ; 0x3dad
    mov ax, word [game_time]         ; 0x3daf
    mov dx, word [game_time_hi]      ; 0x3db2
    mov word [bss_9a28], dx          ; 0x3db6
    mov word [bss_9a26], ax          ; 0x3dba
    mov ax, word [bss_8f18]          ; 0x3dbd
    mov dx, word [bss_8f1a]          ; 0x3dc0
    mov word [bss_9a2c], dx          ; 0x3dc4
    mov word [bss_9a2a], ax          ; 0x3dc8
    mov ax, word [bss_8f14]          ; 0x3dcb
    mov dx, word [bss_8f16]          ; 0x3dce
    mov word [bss_9a30], dx          ; 0x3dd2
    mov word [bss_9a2e], ax          ; 0x3dd6
    mov ax, word [party_char_count]  ; 0x3dd9
    mov word [bss_9a4a], ax          ; 0x3ddc
    mov ax, 0x4c                     ; 0x3ddf
    push ax                          ; 0x3de2
    mov ax, bss_9a00                 ; 0x3de3
    push ax                          ; 0x3de6
    push word [bp - 0xa]             ; 0x3de7
    call aztec_write                 ; 0x3dea
    add sp, byte 6                   ; 0x3ded
    mov word [bp - 8], ax            ; 0x3df0
    cmp ax, strict word 0            ; 0x3df3
    jg short @..api_idx_004e_HUKL.l33 ; 0x3df6
    lea ax, word [bp - 0x3a]         ; 0x3df8
    push ax                          ; 0x3dfb
    call loc_KPLK                    ; 0x3dfc
    pop cx                           ; 0x3dff
    push word [bp - 0xa]             ; 0x3e00
    call aztec_close                 ; 0x3e03
    pop cx                           ; 0x3e06
    cmp word [bp - 0xe], byte 0      ; 0x3e07
    je short @..api_idx_004e_HUKL.l32 ; 0x3e0b
    mov ax, 1                        ; 0x3e0d
    push ax                          ; 0x3e10
    push word [bp - 0x12]            ; 0x3e11
    push word [bp - 0x10]            ; 0x3e14
    mov ax, bss_91c6                 ; 0x3e17
    push ax                          ; 0x3e1a
    call prompt_disk_swap            ; 0x3e1b
    add sp, byte 8                   ; 0x3e1e
@..api_idx_004e_HUKL.l32:
    mov ax, 0xffff                   ; 0x3e21
    ret                              ; 0x3e24
@..api_idx_004e_HUKL.l33:
    mov ax, 0x80                     ; 0x3e25
    push ax                          ; 0x3e28
    mov ax, bss_8a6e                 ; 0x3e29
    push ax                          ; 0x3e2c
    push word [bp - 0xa]             ; 0x3e2d
    call aztec_write                 ; 0x3e30
    add sp, byte 6                   ; 0x3e33
    mov word [bp - 8], ax            ; 0x3e36
    mov ax, 0x90                     ; 0x3e39
    push ax                          ; 0x3e3c
    mov ax, target_weight            ; 0x3e3d
    push ax                          ; 0x3e40
    push word [bp - 0xa]             ; 0x3e41
    call aztec_write                 ; 0x3e44
    add sp, byte 6                   ; 0x3e47
    mov word [bp - 8], ax            ; 0x3e4a
    mov ax, 0x68                     ; 0x3e4d
    push ax                          ; 0x3e50
    mov ax, bss_8976                 ; 0x3e51
    push ax                          ; 0x3e54
    push word [bp - 0xa]             ; 0x3e55
    call aztec_write                 ; 0x3e58
    add sp, byte 6                   ; 0x3e5b
    mov word [bp - 8], ax            ; 0x3e5e
    mov ax, 0x14a                    ; 0x3e61
    push ax                          ; 0x3e64
    mov ax, bss_882c                 ; 0x3e65
    push ax                          ; 0x3e68
    push word [bp - 0xa]             ; 0x3e69
    call aztec_write                 ; 0x3e6c
    add sp, byte 6                   ; 0x3e6f
    mov word [bp - 8], ax            ; 0x3e72
    mov ax, 0x344                    ; 0x3e75
    push ax                          ; 0x3e78
    mov ax, slot_records             ; 0x3e79
    push ax                          ; 0x3e7c
    push word [bp - 0xa]             ; 0x3e7d
    call aztec_write                 ; 0x3e80
    add sp, byte 6                   ; 0x3e83
    mov word [bp - 8], ax            ; 0x3e86
    mov ax, 0x42                     ; 0x3e89
    push ax                          ; 0x3e8c
    mov ax, slot_bit_states          ; 0x3e8d
    push ax                          ; 0x3e90
    push word [bp - 0xa]             ; 0x3e91
    call aztec_write                 ; 0x3e94
    add sp, byte 6                   ; 0x3e97
    mov word [bp - 8], ax            ; 0x3e9a
    cmp ax, strict word 0            ; 0x3e9d
    jg short @..api_idx_004e_HUKL.l35 ; 0x3ea0
    lea ax, word [bp - 0x3a]         ; 0x3ea2
    push ax                          ; 0x3ea5
    call loc_KPLK                    ; 0x3ea6
    pop cx                           ; 0x3ea9
    push word [bp - 0xa]             ; 0x3eaa
    call aztec_close                 ; 0x3ead
    pop cx                           ; 0x3eb0
    cmp word [bp - 0xe], byte 0      ; 0x3eb1
    je short @..api_idx_004e_HUKL.l34 ; 0x3eb5
    mov ax, 1                        ; 0x3eb7
    push ax                          ; 0x3eba
    push word [bp - 0x12]            ; 0x3ebb
    push word [bp - 0x10]            ; 0x3ebe
    mov ax, bss_91c6                 ; 0x3ec1
    push ax                          ; 0x3ec4
    call prompt_disk_swap            ; 0x3ec5
    add sp, byte 8                   ; 0x3ec8
@..api_idx_004e_HUKL.l34:
    mov ax, 0xffff                   ; 0x3ecb
    ret                              ; 0x3ece
@..api_idx_004e_HUKL.l35:
    mov ax, 0x64                     ; 0x3ecf
    push ax                          ; 0x3ed2
    mov ax, code_characters          ; 0x3ed3
    push ax                          ; 0x3ed6
    push word [bp - 0xa]             ; 0x3ed7
    call aztec_write                 ; 0x3eda
    add sp, byte 6                   ; 0x3edd
    mov word [bp - 8], ax            ; 0x3ee0
    cmp ax, strict word 0            ; 0x3ee3
    jg short @..api_idx_004e_HUKL.l37 ; 0x3ee6
    lea ax, word [bp - 0x3a]         ; 0x3ee8
    push ax                          ; 0x3eeb
    call loc_KPLK                    ; 0x3eec
    pop cx                           ; 0x3eef
    push word [bp - 0xa]             ; 0x3ef0
    call aztec_close                 ; 0x3ef3
    pop cx                           ; 0x3ef6
    cmp word [bp - 0xe], byte 0      ; 0x3ef7
    je short @..api_idx_004e_HUKL.l36 ; 0x3efb
    mov ax, 1                        ; 0x3efd
    push ax                          ; 0x3f00
    push word [bp - 0x12]            ; 0x3f01
    push word [bp - 0x10]            ; 0x3f04
    mov ax, bss_91c6                 ; 0x3f07
    push ax                          ; 0x3f0a
    call prompt_disk_swap            ; 0x3f0b
    add sp, byte 8                   ; 0x3f0e
@..api_idx_004e_HUKL.l36:
    mov ax, 0xffff                   ; 0x3f11
    ret                              ; 0x3f14
@..api_idx_004e_HUKL.l37:
    mov word [bp - 2], 0             ; 0x3f15
    jmp short @..api_idx_004e_HUKL.l41 ; 0x3f1a
@..api_idx_004e_HUKL.l38:
    mov ax, 0x248                    ; 0x3f1c
    imul word [bp - 2]               ; 0x3f1f
    mov si, ax                       ; 0x3f22
    add ax, party_records            ; 0x3f24
    mov si, ax                       ; 0x3f27
    mov di, bss_9a4c                 ; 0x3f29
    mov cx, ds                       ; 0x3f2c
    mov es, cx                       ; 0x3f2e
    mov cx, 0x124                    ; 0x3f30
    rep movsw                        ; 0x3f33
    mov ax, 0x248                    ; 0x3f35
    push ax                          ; 0x3f38
    mov ax, bss_9a4c                 ; 0x3f39
    push ax                          ; 0x3f3c
    push word [bp - 0xa]             ; 0x3f3d
    call aztec_write                 ; 0x3f40
    add sp, byte 6                   ; 0x3f43
    mov word [bp - 8], ax            ; 0x3f46
    cmp ax, strict word 0            ; 0x3f49
    jg short @..api_idx_004e_HUKL.l40 ; 0x3f4c
    lea ax, word [bp - 0x3a]         ; 0x3f4e
    push ax                          ; 0x3f51
    call loc_KPLK                    ; 0x3f52
    pop cx                           ; 0x3f55
    push word [bp - 0xa]             ; 0x3f56
    call aztec_close                 ; 0x3f59
    pop cx                           ; 0x3f5c
    cmp word [bp - 0xe], byte 0      ; 0x3f5d
    je short @..api_idx_004e_HUKL.l39 ; 0x3f61
    mov ax, 1                        ; 0x3f63
    push ax                          ; 0x3f66
    push word [bp - 0x12]            ; 0x3f67
    push word [bp - 0x10]            ; 0x3f6a
    mov ax, bss_91c6                 ; 0x3f6d
    push ax                          ; 0x3f70
    call prompt_disk_swap            ; 0x3f71
    add sp, byte 8                   ; 0x3f74
@..api_idx_004e_HUKL.l39:
    mov ax, 0xffff                   ; 0x3f77
    ret                              ; 0x3f7a
@..api_idx_004e_HUKL.l40:
    inc word [bp - 2]                ; 0x3f7b
@..api_idx_004e_HUKL.l41:
    mov ax, word [bp - 2]            ; 0x3f7e
    cmp ax, word [party_char_count]  ; 0x3f81
    jl short @..api_idx_004e_HUKL.l38 ; 0x3f85
    push word [bp - 0xa]             ; 0x3f87
    call aztec_close                 ; 0x3f8a
    pop cx                           ; 0x3f8d
    cmp word [bp - 0xe], byte 0      ; 0x3f8e
    je short @..api_idx_004e_HUKL.l42 ; 0x3f92
    mov ax, 1                        ; 0x3f94
    push ax                          ; 0x3f97
    push word [bp - 0x12]            ; 0x3f98
    push word [bp - 0x10]            ; 0x3f9b
    mov ax, bss_91c6                 ; 0x3f9e
    push ax                          ; 0x3fa1
    call prompt_disk_swap            ; 0x3fa2
    add sp, byte 8                   ; 0x3fa5
@..api_idx_004e_HUKL.l42:
    mov ax, 0                        ; 0x3fa8
    ret                              ; 0x3fab
