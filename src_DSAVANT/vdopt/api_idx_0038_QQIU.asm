; auto-generated
api_idx_0038_QQIU:
    mov ax, 0xffc8                   ; 0x3a2c
    call aztec_csav                  ; 0x3a2f
    mov word [bss_904e], 0xffff      ; 0x3a32
    mov word [bp - 0x0004], 0x37     ; 0x3a38
    mov word [bp - 0x0006], 0x8f     ; 0x3a3d
    mov word [bp - 0x0008], 0x108    ; 0x3a42
    mov word [bp - 0x000a], 0xc5     ; 0x3a47
    mov word [bp - 0x0012], 0x16     ; 0x3a4c
    mov ax, 3                        ; 0x3a51
    cmp word [bp + 0xc], byte 3      ; 0x3a54
    jge short @..api_idx_0038_QQIU.l1 ; 0x3a58
    mov ax, word [bp + 0xc]          ; 0x3a5a
@..api_idx_0038_QQIU.l1:
    mov word [bp - 0x0022], ax       ; 0x3a5d
    mov ax, dseg_90a4                ; 0x3a60
    push ax                          ; 0x3a63
    mov ax, word [bp - 0x000a]       ; 0x3a64
    inc ax                           ; 0x3a67
    push ax                          ; 0x3a68
    mov ax, word [bp - 0x0008]       ; 0x3a69
    inc ax                           ; 0x3a6c
    push ax                          ; 0x3a6d
    mov ax, word [bp - 0x0006]       ; 0x3a6e
    dec ax                           ; 0x3a71
    push ax                          ; 0x3a72
    mov ax, word [bp - 0x0004]       ; 0x3a73
    dec ax                           ; 0x3a76
    push ax                          ; 0x3a77
    call ds_app_file_LMRK            ; 0x3a78
    add sp, byte 0x0a                ; 0x3a7b
    mov word [bp - 0x0038], ax       ; 0x3a7e
    push word [bp - 0x000a]          ; 0x3a81
    push word [bp - 0x0008]          ; 0x3a84
    push word [bp - 0x0006]          ; 0x3a87
    push word [bp - 0x0004]          ; 0x3a8a
    call ds_app_KNSQ                 ; 0x3a8d
    add sp, byte 8                   ; 0x3a90
    cmp word [bp + 0x6], byte 0      ; 0x3a93
    je short @..api_idx_0038_QQIU.l2 ; 0x3a97
    lea ax, word [bp - 0x0036]       ; 0x3a99
    push ax                          ; 0x3a9c
    push word [bp + 0x4]             ; 0x3a9d
    call ds_app_mem_TIMR             ; 0x3aa0
    add sp, byte 4                   ; 0x3aa3
    jmp short @..api_idx_0038_QQIU.l3 ; 0x3aa6
@..api_idx_0038_QQIU.l2:
    push word [bp + 0xe]             ; 0x3aa8
    lea ax, word [bp - 0x0036]       ; 0x3aab
    push ax                          ; 0x3aae
    call aztec_strcpy                ; 0x3aaf
    add sp, byte 4                   ; 0x3ab2
@..api_idx_0038_QQIU.l3:
    lea ax, word [bp - 0x0036]       ; 0x3ab5
    push ax                          ; 0x3ab8
    push word [bp + 0x6]             ; 0x3ab9
    mov ax, 1                        ; 0x3abc
    push ax                          ; 0x3abf
    mov ax, 0xc                      ; 0x3ac0
    push ax                          ; 0x3ac3
    mov ax, word [bp - 0x0006]       ; 0x3ac4
    add ax, strict word 7            ; 0x3ac7
    push ax                          ; 0x3aca
    mov ax, word [bp - 0x0004]       ; 0x3acb
    add ax, strict word 8            ; 0x3ace
    push ax                          ; 0x3ad1
    call ds_app_string_IIIR          ; 0x3ad2
    add sp, byte 0x0c                ; 0x3ad5
    lea ax, word [bp - 0x0036]       ; 0x3ad8
    push ax                          ; 0x3adb
    mov ax, word [bp + 0x4]          ; 0x3adc
    inc ax                           ; 0x3adf
    push ax                          ; 0x3ae0
    call ds_app_mem_TIMR             ; 0x3ae1
    add sp, byte 4                   ; 0x3ae4
    lea ax, word [bp - 0x0036]       ; 0x3ae7
    push ax                          ; 0x3aea
    push word [bp + 0x8]             ; 0x3aeb
    mov ax, 1                        ; 0x3aee
    push ax                          ; 0x3af1
    mov ax, 0xc                      ; 0x3af2
    push ax                          ; 0x3af5
    mov ax, word [bp - 0x0006]       ; 0x3af6
    add ax, strict word 0x17         ; 0x3af9
    push ax                          ; 0x3afc
    mov ax, word [bp - 0x0004]       ; 0x3afd
    add ax, strict word 8            ; 0x3b00
    push ax                          ; 0x3b03
    call ds_app_string_IIIR          ; 0x3b04
    add sp, byte 0x0c                ; 0x3b07
    lea ax, word [bp - 0x0036]       ; 0x3b0a
    push ax                          ; 0x3b0d
    mov ax, word [bp + 0x4]          ; 0x3b0e
    inc ax                           ; 0x3b11
    inc ax                           ; 0x3b12
    push ax                          ; 0x3b13
    call ds_app_mem_TIMR             ; 0x3b14
    add sp, byte 4                   ; 0x3b17
    lea ax, word [bp - 0x0036]       ; 0x3b1a
    push ax                          ; 0x3b1d
    push word [bp + 0xa]             ; 0x3b1e
    mov ax, 1                        ; 0x3b21
    push ax                          ; 0x3b24
    mov ax, 0xc                      ; 0x3b25
    push ax                          ; 0x3b28
    mov ax, word [bp - 0x0006]       ; 0x3b29
    add ax, strict word 0x27         ; 0x3b2c
    push ax                          ; 0x3b2f
    mov ax, word [bp - 0x0004]       ; 0x3b30
    add ax, strict word 8            ; 0x3b33
    push ax                          ; 0x3b36
    call ds_app_string_IIIR          ; 0x3b37
    add sp, byte 0x0c                ; 0x3b3a
    mov word [bp - 0x0016], 0        ; 0x3b3d
    mov word [bp - 0x0020], 0xffff   ; 0x3b42
    push word [bp - 0x0022]          ; 0x3b47
    push word [bp - 0x0020]          ; 0x3b4a
    push word [bp - 0x0016]          ; 0x3b4d
    mov ax, 7                        ; 0x3b50
    push ax                          ; 0x3b53
    mov ax, 0xf                      ; 0x3b54
    push ax                          ; 0x3b57
    mov ax, word [bp - 0x0006]       ; 0x3b58
    add ax, strict word 6            ; 0x3b5b
    push ax                          ; 0x3b5e
    mov ax, word [bp - 0x0004]       ; 0x3b5f
    add ax, strict word 0x5d         ; 0x3b62
    push ax                          ; 0x3b65
    call loc_HTKI                    ; 0x3b66
    add sp, byte 0x0e                ; 0x3b69
    mov word [bp - 0x0010], 0        ; 0x3b6c
    push word [bp - 0x0010]          ; 0x3b71
    mov ax, 7                        ; 0x3b74
    push ax                          ; 0x3b77
    mov ax, 8                        ; 0x3b78
    push ax                          ; 0x3b7b
    mov ax, word [bp - 0x0006]       ; 0x3b7c
    add ax, strict word 6            ; 0x3b7f
    push ax                          ; 0x3b82
    mov ax, word [bp - 0x0004]       ; 0x3b83
    add ax, 0xc1                     ; 0x3b86
    push ax                          ; 0x3b89
    call ds_app_JKST                 ; 0x3b8a
    add sp, byte 0x0a                ; 0x3b8d
    mov ax, 0                        ; 0x3b90
    push ax                          ; 0x3b93
    push ax                          ; 0x3b94
    mov ax, word [bp - 0x0006]       ; 0x3b95
    add ax, word [bp - 0x0010]       ; 0x3b98
    add ax, strict word 0x12         ; 0x3b9b
    push ax                          ; 0x3b9e
    mov ax, word [bp - 0x0004]       ; 0x3b9f
    add ax, 0xc9                     ; 0x3ba2
    push ax                          ; 0x3ba5
    mov ax, word [bp - 0x0006]       ; 0x3ba6
    add ax, word [bp - 0x0010]       ; 0x3ba9
    add ax, strict word 0xe          ; 0x3bac
    push ax                          ; 0x3baf
    mov ax, word [bp - 0x0004]       ; 0x3bb0
    add ax, 0xc1                     ; 0x3bb3
    push ax                          ; 0x3bb6
    mov ax, 0                        ; 0x3bb7
    push ax                          ; 0x3bba
    call ds_app_NGUR                 ; 0x3bbb
    add sp, byte 0x0e                ; 0x3bbe
    mov ax, 0                        ; 0x3bc1
    push ax                          ; 0x3bc4
    mov ax, 9                        ; 0x3bc5
    push ax                          ; 0x3bc8
    mov ax, word [bp - 0x0006]       ; 0x3bc9
    add ax, strict word 0xc          ; 0x3bcc
    push ax                          ; 0x3bcf
    mov ax, word [bp - 0x0004]       ; 0x3bd0
    add ax, 0xc9                     ; 0x3bd3
    push ax                          ; 0x3bd6
    mov ax, word [bp - 0x0006]       ; 0x3bd7
    add ax, strict word 6            ; 0x3bda
    push ax                          ; 0x3bdd
    mov ax, word [bp - 0x0004]       ; 0x3bde
    add ax, 0xc1                     ; 0x3be1
    push ax                          ; 0x3be4
    mov ax, 1                        ; 0x3be5
    push ax                          ; 0x3be8
    call ds_app_NGUR                 ; 0x3be9
    add sp, byte 0x0e                ; 0x3bec
    mov ax, 0                        ; 0x3bef
    push ax                          ; 0x3bf2
    mov ax, 0xb                      ; 0x3bf3
    push ax                          ; 0x3bf6
    mov ax, word [bp - 0x0006]       ; 0x3bf7
    add ax, strict word 0x30         ; 0x3bfa
    push ax                          ; 0x3bfd
    mov ax, word [bp - 0x0004]       ; 0x3bfe
    add ax, 0xc9                     ; 0x3c01
    push ax                          ; 0x3c04
    mov ax, word [bp - 0x0006]       ; 0x3c05
    add ax, strict word 0x2a         ; 0x3c08
    push ax                          ; 0x3c0b
    mov ax, word [bp - 0x0004]       ; 0x3c0c
    add ax, 0xc1                     ; 0x3c0f
    push ax                          ; 0x3c12
    mov ax, 2                        ; 0x3c13
    push ax                          ; 0x3c16
    call ds_app_NGUR                 ; 0x3c17
    add sp, byte 0x0e                ; 0x3c1a
    mov ax, 0xd                      ; 0x3c1d
    push ax                          ; 0x3c20
    mov ax, 0x55                     ; 0x3c21
    push ax                          ; 0x3c24
    mov ax, word [bp - 0x0006]       ; 0x3c25
    add ax, strict word 0xf          ; 0x3c28
    push ax                          ; 0x3c2b
    mov ax, word [bp - 0x0004]       ; 0x3c2c
    add ax, strict word 0x50         ; 0x3c2f
    push ax                          ; 0x3c32
    mov ax, word [bp - 0x0006]       ; 0x3c33
    add ax, strict word 7            ; 0x3c36
    push ax                          ; 0x3c39
    mov ax, word [bp - 0x0004]       ; 0x3c3a
    add ax, strict word 8            ; 0x3c3d
    push ax                          ; 0x3c40
    mov ax, 3                        ; 0x3c41
    push ax                          ; 0x3c44
    call ds_app_NGUR                 ; 0x3c45
    add sp, byte 0x0e                ; 0x3c48
    mov ax, 0                        ; 0x3c4b
    push ax                          ; 0x3c4e
    mov ax, 0x44                     ; 0x3c4f
    push ax                          ; 0x3c52
    mov ax, word [bp - 0x0006]       ; 0x3c53
    add ax, strict word 0x1f         ; 0x3c56
    push ax                          ; 0x3c59
    mov ax, word [bp - 0x0004]       ; 0x3c5a
    add ax, strict word 0x50         ; 0x3c5d
    push ax                          ; 0x3c60
    mov ax, word [bp - 0x0006]       ; 0x3c61
    add ax, strict word 0x17         ; 0x3c64
    push ax                          ; 0x3c67
    mov ax, word [bp - 0x0004]       ; 0x3c68
    add ax, strict word 8            ; 0x3c6b
    push ax                          ; 0x3c6e
    mov ax, 4                        ; 0x3c6f
    push ax                          ; 0x3c72
    call ds_app_NGUR                 ; 0x3c73
    add sp, byte 0x0e                ; 0x3c76
    mov ax, 0                        ; 0x3c79
    push ax                          ; 0x3c7c
    mov ax, 0x1b                     ; 0x3c7d
    push ax                          ; 0x3c80
    mov ax, word [bp - 0x0006]       ; 0x3c81
    add ax, strict word 0x2f         ; 0x3c84
    push ax                          ; 0x3c87
    mov ax, word [bp - 0x0004]       ; 0x3c88
    add ax, strict word 0x50         ; 0x3c8b
    push ax                          ; 0x3c8e
    mov ax, word [bp - 0x0006]       ; 0x3c8f
    add ax, strict word 0x27         ; 0x3c92
    push ax                          ; 0x3c95
    mov ax, word [bp - 0x0004]       ; 0x3c96
    add ax, strict word 8            ; 0x3c99
    push ax                          ; 0x3c9c
    mov ax, 5                        ; 0x3c9d
    push ax                          ; 0x3ca0
    call ds_app_NGUR                 ; 0x3ca1
    add sp, byte 0x0e                ; 0x3ca4
    mov ax, 3                        ; 0x3ca7
    cmp word [bp + 0xc], byte 3      ; 0x3caa
    jge short @..api_idx_0038_QQIU.l4 ; 0x3cae
    mov ax, word [bp + 0xc]          ; 0x3cb0
@..api_idx_0038_QQIU.l4:
    mov word [bp - 0x001e], ax       ; 0x3cb3
    mov word [bp - 0x0002], 0        ; 0x3cb6
    jmp short @..api_idx_0038_QQIU.l6 ; 0x3cbb
@..api_idx_0038_QQIU.l5:
    mov ax, 0                        ; 0x3cbd
    push ax                          ; 0x3cc0
    push ax                          ; 0x3cc1
    mov ax, 0xe                      ; 0x3cc2
    imul word [bp - 0x0002]          ; 0x3cc5
    add ax, word [bp - 0x0006]       ; 0x3cc8
    add ax, strict word 0x13         ; 0x3ccb
    push ax                          ; 0x3cce
    mov ax, word [bp - 0x0004]       ; 0x3ccf
    add ax, 0xb9                     ; 0x3cd2
    push ax                          ; 0x3cd5
    mov ax, 0xe                      ; 0x3cd6
    imul word [bp - 0x0002]          ; 0x3cd9
    add ax, word [bp - 0x0006]       ; 0x3cdc
    add ax, strict word 7            ; 0x3cdf
    push ax                          ; 0x3ce2
    mov ax, word [bp - 0x0004]       ; 0x3ce3
    add ax, strict word 0x5d         ; 0x3ce6
    push ax                          ; 0x3ce9
    mov ax, word [bp - 0x0002]       ; 0x3cea
    add ax, strict word 6            ; 0x3ced
    push ax                          ; 0x3cf0
    call ds_app_NGUR                 ; 0x3cf1
    add sp, byte 0x0e                ; 0x3cf4
    inc word [bp - 0x0002]           ; 0x3cf7
@..api_idx_0038_QQIU.l6:
    mov ax, word [bp - 0x0002]       ; 0x3cfa
    cmp ax, word [bp - 0x001e]       ; 0x3cfd
    jl short @..api_idx_0038_QQIU.l5 ; 0x3d00
    mov ax, 0                        ; 0x3d02
    push ax                          ; 0x3d05
    push ax                          ; 0x3d06
    push ax                          ; 0x3d07
    push ax                          ; 0x3d08
    push ax                          ; 0x3d09
    mov ax, 0xffff                   ; 0x3d0a
    push ax                          ; 0x3d0d
    mov ax, word [bp - 0x001e]       ; 0x3d0e
    add ax, strict word 6            ; 0x3d11
    push ax                          ; 0x3d14
    call ds_app_NGUR                 ; 0x3d15
    add sp, byte 0x0e                ; 0x3d18
    mov ax, word [bp - 0x000a]       ; 0x3d1b
    inc ax                           ; 0x3d1e
    push ax                          ; 0x3d1f
    mov ax, word [bp - 0x0008]       ; 0x3d20
    inc ax                           ; 0x3d23
    push ax                          ; 0x3d24
    mov ax, word [bp - 0x0006]       ; 0x3d25
    dec ax                           ; 0x3d28
    push ax                          ; 0x3d29
    mov ax, word [bp - 0x0004]       ; 0x3d2a
    dec ax                           ; 0x3d2d
    push ax                          ; 0x3d2e
    call gfx_entry_16                ; 0x3d2f
    add sp, byte 8                   ; 0x3d32
    mov word [bp - 0x001a], 1        ; 0x3d35
@..api_idx_0038_QQIU.l7:
    mov ax, 0x59fe                   ; 0x3d3a
    push ax                          ; 0x3d3d
    call ds_app_UHMG                 ; 0x3d3e
    pop cx                           ; 0x3d41
    dec ax                           ; 0x3d42
    mov word [bp - 0x0018], ax       ; 0x3d43
    cmp word [bss_59fc], byte 0      ; 0x3d46
    je short @..api_idx_0038_QQIU.l11 ; 0x3d4b
    mov ax, word [bp - 0x0020]       ; 0x3d4d
    cmp ax, word [bp - 0x0016]       ; 0x3d50
    jl short @..api_idx_0038_QQIU.l8 ; 0x3d53
    inc word [bp - 0x0020]           ; 0x3d55
@..api_idx_0038_QQIU.l8:
    mov ax, word [bp - 0x0020]       ; 0x3d58
    cmp ax, strict word 0xffff       ; 0x3d5b
    je short @..api_idx_0038_QQIU.l9 ; 0x3d5e
    cmp ax, word [bp - 0x0016]       ; 0x3d60
    jl short @..api_idx_0038_QQIU.l9 ; 0x3d63
    mov ax, word [bp - 0x0016]       ; 0x3d65
    add ax, word [bp - 0x001e]       ; 0x3d68
    mov cx, ax                       ; 0x3d6b
    dec ax                           ; 0x3d6d
    mov cx, ax                       ; 0x3d6e
    mov ax, word [bp - 0x0020]       ; 0x3d70
    cmp cx, ax                       ; 0x3d73
    jge short @..api_idx_0038_QQIU.l10 ; 0x3d75
@..api_idx_0038_QQIU.l9:
    mov ax, word [bp - 0x0016]       ; 0x3d77
    mov word [bp - 0x0020], ax       ; 0x3d7a
@..api_idx_0038_QQIU.l10:
    mov word [bss_5b3e], 1           ; 0x3d7d
    mov ax, word [bp - 0x0020]       ; 0x3d83
    sub ax, word [bp - 0x0016]       ; 0x3d86
    add ax, strict word 6            ; 0x3d89
    mov word [bp - 0x0018], ax       ; 0x3d8c
@..api_idx_0038_QQIU.l11:
    cmp word [bss_5b3e], byte 1      ; 0x3d8f
    je short @..api_idx_0038_QQIU.l12 ; 0x3d94
    jmp near @..api_idx_0038_QQIU.l26 ; 0x3d96
@..api_idx_0038_QQIU.l12:
    mov ax, word [bp - 0x0018]       ; 0x3d99
    jmp near @..api_idx_0038_QQIU.l24 ; 0x3d9c
jumptable_4141_case_0:
    lea ax, word [bp - 0x000e]       ; 0x3d9f
    push ax                          ; 0x3da2
    lea ax, word [bp - 0x000c]       ; 0x3da3
    push ax                          ; 0x3da6
    call gfx_entry_23                ; 0x3da7
    add sp, byte 4                   ; 0x3daa
    mov ax, 4                        ; 0x3dad
    push ax                          ; 0x3db0
    mov ax, 0                        ; 0x3db1
    push ax                          ; 0x3db4
    mov ax, word [bp - 0x000e]       ; 0x3db5
    mov cx, word [bp - 0x0006]       ; 0x3db8
    add cx, word [bp - 0x0010]       ; 0x3dbb
    add cx, byte 0x0e                ; 0x3dbe
    sub ax, cx                       ; 0x3dc1
    push ax                          ; 0x3dc3
    call clamp_between               ; 0x3dc4
    add sp, byte 6                   ; 0x3dc7
    mov word [bp - 0x0014], ax       ; 0x3dca
@..api_idx_0038_QQIU.l13:
    lea ax, word [bp - 0x000e]       ; 0x3dcd
    push ax                          ; 0x3dd0
    lea ax, word [bp - 0x000c]       ; 0x3dd1
    push ax                          ; 0x3dd4
    call gfx_entry_23                ; 0x3dd5
    add sp, byte 4                   ; 0x3dd8
    mov word [bp - 0x001c], ax       ; 0x3ddb
    push word [bp - 0x0012]          ; 0x3dde
    mov ax, 0                        ; 0x3de1
    push ax                          ; 0x3de4
    mov ax, word [bp - 0x000e]       ; 0x3de5
    mov cx, word [bp - 0x0006]       ; 0x3de8
    add cx, byte 0x0e                ; 0x3deb
    sub ax, cx                       ; 0x3dee
    sub ax, word [bp - 0x0014]       ; 0x3df0
    push ax                          ; 0x3df3
    call clamp_between               ; 0x3df4
    add sp, byte 6                   ; 0x3df7
    mov word [bp - 0x0010], ax       ; 0x3dfa
    cmp word [bp + 0xc], byte 3      ; 0x3dfd
    jle short @..api_idx_0038_QQIU.l14 ; 0x3e01
    mov cx, 0x64                     ; 0x3e03
    imul cx                          ; 0x3e06
    push ax                          ; 0x3e08
    mov ax, word [bp - 0x0012]       ; 0x3e09
    imul cx                          ; 0x3e0c
    add ax, strict word 0x64         ; 0x3e0e
    mov cx, word [bp + 0xc]          ; 0x3e11
    dec cx                           ; 0x3e14
    dec cx                           ; 0x3e15
    cwd                              ; 0x3e16
    idiv cx                          ; 0x3e17
    mov cx, ax                       ; 0x3e19
    pop ax                           ; 0x3e1b
    cwd                              ; 0x3e1c
    idiv cx                          ; 0x3e1d
    mov word [bp - 0x0016], ax       ; 0x3e1f
@..api_idx_0038_QQIU.l14:
    push word [bp - 0x0022]          ; 0x3e22
    push word [bp - 0x0020]          ; 0x3e25
    push word [bp - 0x0016]          ; 0x3e28
    mov ax, 7                        ; 0x3e2b
    push ax                          ; 0x3e2e
    mov ax, 0xf                      ; 0x3e2f
    push ax                          ; 0x3e32
    mov ax, word [bp - 0x0006]       ; 0x3e33
    add ax, strict word 6            ; 0x3e36
    push ax                          ; 0x3e39
    mov ax, word [bp - 0x0004]       ; 0x3e3a
    add ax, strict word 0x5d         ; 0x3e3d
    push ax                          ; 0x3e40
    call loc_HTKI                    ; 0x3e41
    add sp, byte 0x0e                ; 0x3e44
    push word [bp - 0x0010]          ; 0x3e47
    mov ax, 7                        ; 0x3e4a
    push ax                          ; 0x3e4d
    mov ax, 8                        ; 0x3e4e
    push ax                          ; 0x3e51
    mov ax, word [bp - 0x0006]       ; 0x3e52
    add ax, strict word 6            ; 0x3e55
    push ax                          ; 0x3e58
    mov ax, word [bp - 0x0004]       ; 0x3e59
    add ax, 0xc1                     ; 0x3e5c
    push ax                          ; 0x3e5f
    call ds_app_JKST                 ; 0x3e60
    add sp, byte 0x0a                ; 0x3e63
    mov ax, 0                        ; 0x3e66
    push ax                          ; 0x3e69
    push ax                          ; 0x3e6a
    mov ax, word [bp - 0x0006]       ; 0x3e6b
    add ax, word [bp - 0x0010]       ; 0x3e6e
    add ax, strict word 0x12         ; 0x3e71
    push ax                          ; 0x3e74
    mov ax, word [bp - 0x0004]       ; 0x3e75
    add ax, 0xc9                     ; 0x3e78
    push ax                          ; 0x3e7b
    mov ax, word [bp - 0x0006]       ; 0x3e7c
    add ax, word [bp - 0x0010]       ; 0x3e7f
    add ax, strict word 0xe          ; 0x3e82
    push ax                          ; 0x3e85
    mov ax, word [bp - 0x0004]       ; 0x3e86
    add ax, 0xc1                     ; 0x3e89
    push ax                          ; 0x3e8c
    mov ax, 0                        ; 0x3e8d
    push ax                          ; 0x3e90
    call ds_app_NGUR                 ; 0x3e91
    add sp, byte 0x0e                ; 0x3e94
    mov ax, word [bp - 0x0006]       ; 0x3e97
    add ax, strict word 0x30         ; 0x3e9a
    push ax                          ; 0x3e9d
    mov ax, word [bp - 0x0004]       ; 0x3e9e
    add ax, 0xc9                     ; 0x3ea1
    push ax                          ; 0x3ea4
    mov ax, word [bp - 0x0006]       ; 0x3ea5
    add ax, strict word 6            ; 0x3ea8
    push ax                          ; 0x3eab
    mov ax, word [bp - 0x0004]       ; 0x3eac
    add ax, strict word 0x5d         ; 0x3eaf
    push ax                          ; 0x3eb2
    call gfx_entry_16                ; 0x3eb3
    add sp, byte 8                   ; 0x3eb6
    cmp word [bp - 0x001c], byte 0   ; 0x3eb9
    je short @..api_idx_0038_QQIU.l15 ; 0x3ebd
    jmp near @..api_idx_0038_QQIU.l13 ; 0x3ebf
@..api_idx_0038_QQIU.l15:
    jmp near @..api_idx_0038_QQIU.l26 ; 0x3ec2
jumptable_4141_case_1:
    cmp word [bp - 0x0018], byte 1   ; 0x3ec5
    jne short @..api_idx_0038_QQIU.l17 ; 0x3ec9
    mov ax, 1                        ; 0x3ecb
    push ax                          ; 0x3ece
    mov ax, word [bp - 0x0006]       ; 0x3ecf
    add ax, strict word 0xc          ; 0x3ed2
    push ax                          ; 0x3ed5
    mov ax, word [bp - 0x0004]       ; 0x3ed6
    add ax, 0xc9                     ; 0x3ed9
    push ax                          ; 0x3edc
    mov ax, word [bp - 0x0006]       ; 0x3edd
    add ax, strict word 6            ; 0x3ee0
    push ax                          ; 0x3ee3
    mov ax, word [bp - 0x0004]       ; 0x3ee4
    add ax, 0xc1                     ; 0x3ee7
    push ax                          ; 0x3eea
    call ds_app_QOOL                 ; 0x3eeb
    add sp, byte 0x0a                ; 0x3eee
    cmp word [bp - 0x0016], byte 0   ; 0x3ef1
    jle short @..api_idx_0038_QQIU.l16 ; 0x3ef5
    dec word [bp - 0x0016]           ; 0x3ef7
@..api_idx_0038_QQIU.l16:
    jmp short @..api_idx_0038_QQIU.l18 ; 0x3efa
@..api_idx_0038_QQIU.l17:
    mov ax, 1                        ; 0x3efc
    push ax                          ; 0x3eff
    mov ax, word [bp - 0x0006]       ; 0x3f00
    add ax, strict word 0x30         ; 0x3f03
    push ax                          ; 0x3f06
    mov ax, word [bp - 0x0004]       ; 0x3f07
    add ax, 0xc9                     ; 0x3f0a
    push ax                          ; 0x3f0d
    mov ax, word [bp - 0x0006]       ; 0x3f0e
    add ax, strict word 0x2a         ; 0x3f11
    push ax                          ; 0x3f14
    mov ax, word [bp - 0x0004]       ; 0x3f15
    add ax, 0xc1                     ; 0x3f18
    push ax                          ; 0x3f1b
    call ds_app_QOOL                 ; 0x3f1c
    add sp, byte 0x0a                ; 0x3f1f
    mov ax, word [bp + 0xc]          ; 0x3f22
    dec ax                           ; 0x3f25
    dec ax                           ; 0x3f26
    dec ax                           ; 0x3f27
    cmp ax, word [bp - 0x0016]       ; 0x3f28
    jle short @..api_idx_0038_QQIU.l18 ; 0x3f2b
    inc word [bp - 0x0016]           ; 0x3f2d
@..api_idx_0038_QQIU.l18:
    cmp word [bp + 0xc], byte 3      ; 0x3f30
    jle short @..api_idx_0038_QQIU.l19 ; 0x3f34
    push word [bp - 0x0012]          ; 0x3f36
    mov ax, 0                        ; 0x3f39
    push ax                          ; 0x3f3c
    mov ax, 0x64                     ; 0x3f3d
    imul word [bp - 0x0012]          ; 0x3f40
    add ax, strict word 0x64         ; 0x3f43
    mov cx, word [bp + 0xc]          ; 0x3f46
    dec cx                           ; 0x3f49
    dec cx                           ; 0x3f4a
    dec cx                           ; 0x3f4b
    cwd                              ; 0x3f4c
    idiv cx                          ; 0x3f4d
    imul word [bp - 0x0016]          ; 0x3f4f
    mov cx, 0x64                     ; 0x3f52
    cwd                              ; 0x3f55
    idiv cx                          ; 0x3f56
    push ax                          ; 0x3f58
    call clamp_between               ; 0x3f59
    add sp, byte 6                   ; 0x3f5c
    mov word [bp - 0x0010], ax       ; 0x3f5f
@..api_idx_0038_QQIU.l19:
    push word [bp - 0x0022]          ; 0x3f62
    push word [bp - 0x0020]          ; 0x3f65
    push word [bp - 0x0016]          ; 0x3f68
    mov ax, 7                        ; 0x3f6b
    push ax                          ; 0x3f6e
    mov ax, 0xf                      ; 0x3f6f
    push ax                          ; 0x3f72
    mov ax, word [bp - 0x0006]       ; 0x3f73
    add ax, strict word 6            ; 0x3f76
    push ax                          ; 0x3f79
    mov ax, word [bp - 0x0004]       ; 0x3f7a
    add ax, strict word 0x5d         ; 0x3f7d
    push ax                          ; 0x3f80
    call loc_HTKI                    ; 0x3f81
    add sp, byte 0x0e                ; 0x3f84
    push word [bp - 0x0010]          ; 0x3f87
    mov ax, 7                        ; 0x3f8a
    push ax                          ; 0x3f8d
    mov ax, 8                        ; 0x3f8e
    push ax                          ; 0x3f91
    mov ax, word [bp - 0x0006]       ; 0x3f92
    add ax, strict word 6            ; 0x3f95
    push ax                          ; 0x3f98
    mov ax, word [bp - 0x0004]       ; 0x3f99
    add ax, 0xc1                     ; 0x3f9c
    push ax                          ; 0x3f9f
    call ds_app_JKST                 ; 0x3fa0
    add sp, byte 0x0a                ; 0x3fa3
    mov ax, 0                        ; 0x3fa6
    push ax                          ; 0x3fa9
    push ax                          ; 0x3faa
    mov ax, word [bp - 0x0006]       ; 0x3fab
    add ax, word [bp - 0x0010]       ; 0x3fae
    add ax, strict word 0x12         ; 0x3fb1
    push ax                          ; 0x3fb4
    mov ax, word [bp - 0x0004]       ; 0x3fb5
    add ax, 0xc9                     ; 0x3fb8
    push ax                          ; 0x3fbb
    mov ax, word [bp - 0x0006]       ; 0x3fbc
    add ax, word [bp - 0x0010]       ; 0x3fbf
    add ax, strict word 0xe          ; 0x3fc2
    push ax                          ; 0x3fc5
    mov ax, word [bp - 0x0004]       ; 0x3fc6
    add ax, 0xc1                     ; 0x3fc9
    push ax                          ; 0x3fcc
    mov ax, 0                        ; 0x3fcd
    push ax                          ; 0x3fd0
    call ds_app_NGUR                 ; 0x3fd1
    add sp, byte 0x0e                ; 0x3fd4
    mov ax, word [bp - 0x0006]       ; 0x3fd7
    add ax, strict word 0x30         ; 0x3fda
    push ax                          ; 0x3fdd
    mov ax, word [bp - 0x0004]       ; 0x3fde
    add ax, 0xc9                     ; 0x3fe1
    push ax                          ; 0x3fe4
    mov ax, word [bp - 0x0006]       ; 0x3fe5
    add ax, strict word 6            ; 0x3fe8
    push ax                          ; 0x3feb
    mov ax, word [bp - 0x0004]       ; 0x3fec
    add ax, strict word 0x5d         ; 0x3fef
    push ax                          ; 0x3ff2
    call gfx_entry_16                ; 0x3ff3
    add sp, byte 8                   ; 0x3ff6
    jmp near @..api_idx_0038_QQIU.l26 ; 0x3ff9
jumptable_4141_case_3:
    cmp word [bp + 0x6], byte 0      ; 0x3ffc
    je short @..api_idx_0038_QQIU.l20 ; 0x4000
    mov ax, 1                        ; 0x4002
    push ax                          ; 0x4005
    push ax                          ; 0x4006
    mov ax, 0xc                      ; 0x4007
    push ax                          ; 0x400a
    mov ax, word [bp - 0x0006]       ; 0x400b
    add ax, strict word 7            ; 0x400e
    push ax                          ; 0x4011
    mov ax, word [bp - 0x0004]       ; 0x4012
    add ax, strict word 8            ; 0x4015
    push ax                          ; 0x4018
    call ds_app_VIGG                 ; 0x4019
    add sp, byte 0x0a                ; 0x401c
    mov ax, 0                        ; 0x401f
    push ax                          ; 0x4022
    mov ax, 1                        ; 0x4023
    push ax                          ; 0x4026
    mov ax, 0xc                      ; 0x4027
    push ax                          ; 0x402a
    mov ax, word [bp - 0x0006]       ; 0x402b
    add ax, strict word 7            ; 0x402e
    push ax                          ; 0x4031
    mov ax, word [bp - 0x0004]       ; 0x4032
    add ax, strict word 8            ; 0x4035
    push ax                          ; 0x4038
    call ds_app_VIGG                 ; 0x4039
    add sp, byte 0x0a                ; 0x403c
    mov word [bss_9050], 0           ; 0x403f
    mov word [bp - 0x001a], 0        ; 0x4045
@..api_idx_0038_QQIU.l20:
    jmp near @..api_idx_0038_QQIU.l26 ; 0x404a
jumptable_4141_case_4:
    cmp word [bp + 0x8], byte 0      ; 0x404d
    je short @..api_idx_0038_QQIU.l21 ; 0x4051
    mov ax, 1                        ; 0x4053
    push ax                          ; 0x4056
    push ax                          ; 0x4057
    mov ax, 0xc                      ; 0x4058
    push ax                          ; 0x405b
    mov ax, word [bp - 0x0006]       ; 0x405c
    add ax, strict word 0x17         ; 0x405f
    push ax                          ; 0x4062
    mov ax, word [bp - 0x0004]       ; 0x4063
    add ax, strict word 8            ; 0x4066
    push ax                          ; 0x4069
    call ds_app_VIGG                 ; 0x406a
    add sp, byte 0x0a                ; 0x406d
    mov ax, 0                        ; 0x4070
    push ax                          ; 0x4073
    mov ax, 1                        ; 0x4074
    push ax                          ; 0x4077
    mov ax, 0xc                      ; 0x4078
    push ax                          ; 0x407b
    mov ax, word [bp - 0x0006]       ; 0x407c
    add ax, strict word 0x17         ; 0x407f
    push ax                          ; 0x4082
    mov ax, word [bp - 0x0004]       ; 0x4083
    add ax, strict word 8            ; 0x4086
    push ax                          ; 0x4089
    call ds_app_VIGG                 ; 0x408a
    add sp, byte 0x0a                ; 0x408d
    mov word [bss_9050], 1           ; 0x4090
    mov word [bp - 0x001a], 0        ; 0x4096
@..api_idx_0038_QQIU.l21:
    jmp near @..api_idx_0038_QQIU.l26 ; 0x409b
jumptable_4141_case_5:
    cmp word [bp + 0xa], byte 0      ; 0x409e
    je short @..api_idx_0038_QQIU.l22 ; 0x40a2
    mov ax, 1                        ; 0x40a4
    push ax                          ; 0x40a7
    push ax                          ; 0x40a8
    mov ax, 0xc                      ; 0x40a9
    push ax                          ; 0x40ac
    mov ax, word [bp - 0x0006]       ; 0x40ad
    add ax, strict word 0x27         ; 0x40b0
    push ax                          ; 0x40b3
    mov ax, word [bp - 0x0004]       ; 0x40b4
    add ax, strict word 8            ; 0x40b7
    push ax                          ; 0x40ba
    call ds_app_VIGG                 ; 0x40bb
    add sp, byte 0x0a                ; 0x40be
    mov ax, 0                        ; 0x40c1
    push ax                          ; 0x40c4
    mov ax, 1                        ; 0x40c5
    push ax                          ; 0x40c8
    mov ax, 0xc                      ; 0x40c9
    push ax                          ; 0x40cc
    mov ax, word [bp - 0x0006]       ; 0x40cd
    add ax, strict word 0x27         ; 0x40d0
    push ax                          ; 0x40d3
    mov ax, word [bp - 0x0004]       ; 0x40d4
    add ax, strict word 8            ; 0x40d7
    push ax                          ; 0x40da
    call ds_app_VIGG                 ; 0x40db
    add sp, byte 0x0a                ; 0x40de
    mov word [bss_9050], 2           ; 0x40e1
    mov word [bp - 0x001a], 0        ; 0x40e7
@..api_idx_0038_QQIU.l22:
    jmp short @..api_idx_0038_QQIU.l26 ; 0x40ec
@..api_idx_0038_QQIU.l23:
    mov ax, word [bp - 0x0016]       ; 0x40ee
    add ax, word [bp - 0x0018]       ; 0x40f1
    add ax, strict word 0xfffa       ; 0x40f4
    mov word [bp - 0x0020], ax       ; 0x40f7
    push word [bp - 0x0022]          ; 0x40fa
    push ax                          ; 0x40fd
    push word [bp - 0x0016]          ; 0x40fe
    mov ax, 7                        ; 0x4101
    push ax                          ; 0x4104
    mov ax, 0xf                      ; 0x4105
    push ax                          ; 0x4108
    mov ax, word [bp - 0x0006]       ; 0x4109
    add ax, strict word 6            ; 0x410c
    push ax                          ; 0x410f
    mov ax, word [bp - 0x0004]       ; 0x4110
    add ax, strict word 0x5d         ; 0x4113
    push ax                          ; 0x4116
    call loc_HTKI                    ; 0x4117
    add sp, byte 0x0e                ; 0x411a
    mov ax, word [bp - 0x0006]       ; 0x411d
    add ax, strict word 0x30         ; 0x4120
    push ax                          ; 0x4123
    mov ax, word [bp - 0x0004]       ; 0x4124
    add ax, 0xb9                     ; 0x4127
    push ax                          ; 0x412a
    mov ax, word [bp - 0x0006]       ; 0x412b
    add ax, strict word 6            ; 0x412e
    push ax                          ; 0x4131
    mov ax, word [bp - 0x0004]       ; 0x4132
    add ax, strict word 0x5d         ; 0x4135
    push ax                          ; 0x4138
    call gfx_entry_16                ; 0x4139
    add sp, byte 8                   ; 0x413c
    jmp short @..api_idx_0038_QQIU.l26 ; 0x413f
jumptable_4141:
    dw jumptable_4141_case_0 - IMAGE_BASE + __zres_end ; 0x4141
    dw jumptable_4141_case_1 - IMAGE_BASE + __zres_end ; 0x4143
    dw jumptable_4141_case_1 - IMAGE_BASE + __zres_end ; 0x4145
    dw jumptable_4141_case_3 - IMAGE_BASE + __zres_end ; 0x4147
    dw jumptable_4141_case_4 - IMAGE_BASE + __zres_end ; 0x4149
    dw jumptable_4141_case_5 - IMAGE_BASE + __zres_end ; 0x414b
@..api_idx_0038_QQIU.l24:
    cmp ax, strict word 6            ; 0x414d
    jae short @..api_idx_0038_QQIU.l25 ; 0x4150
    xchg bx, ax                      ; 0x4152
    shl bx, 1                        ; 0x4153
    jmp [cs:bx + jumptable_4141 - IMAGE_BASE + __zres_end] ; 0x4155
@..api_idx_0038_QQIU.l25:
    jmp short @..api_idx_0038_QQIU.l23 ; 0x415a
@..api_idx_0038_QQIU.l26:
    cmp word [bp - 0x001a], byte 0   ; 0x415c
    je short @..api_idx_0038_QQIU.l27 ; 0x4160
    jmp near @..api_idx_0038_QQIU.l7 ; 0x4162
@..api_idx_0038_QQIU.l27:
    mov ax, 1                        ; 0x4165
    push ax                          ; 0x4168
    push word [bp - 0x0038]          ; 0x4169
    call draw_restore_saved_screen   ; 0x416c
    add sp, byte 4                   ; 0x416f
    mov ax, word [bp - 0x0020]       ; 0x4172
    mov word [bss_904e], ax          ; 0x4175
    mov ax, word [bss_9050]          ; 0x4178
    ret                              ; 0x417b
