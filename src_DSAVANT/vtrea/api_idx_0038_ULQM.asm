; auto-generated
api_idx_0038_ULQM:
    mov ax, 0xffc8                   ; 0x3a56
    call aztec_csav                  ; 0x3a59
    mov word [bss_904e], 0xffff      ; 0x3a5c
    mov word [bp - 0x0004], 0x37     ; 0x3a62
    mov word [bp - 0x0006], 0x8f     ; 0x3a67
    mov word [bp - 0x0008], 0x108    ; 0x3a6c
    mov word [bp - 0x000a], 0xc5     ; 0x3a71
    mov word [bss_911c], 0x8d        ; 0x3a76
    mov word [bp - 0x0012], 0x16     ; 0x3a7c
    mov ax, 3                        ; 0x3a81
    cmp word [bp + 0xc], byte 3      ; 0x3a84
    jge short @..api_idx_0038_ULQM.l1 ; 0x3a88
    mov ax, word [bp + 0xc]          ; 0x3a8a
@..api_idx_0038_ULQM.l1:
    mov word [bp - 0x0022], ax       ; 0x3a8d
    mov ax, 0x90dc                   ; 0x3a90
    push ax                          ; 0x3a93
    mov ax, word [bp - 0x000a]       ; 0x3a94
    inc ax                           ; 0x3a97
    push ax                          ; 0x3a98
    mov ax, word [bp - 0x0008]       ; 0x3a99
    inc ax                           ; 0x3a9c
    push ax                          ; 0x3a9d
    mov ax, word [bp - 0x0006]       ; 0x3a9e
    dec ax                           ; 0x3aa1
    push ax                          ; 0x3aa2
    mov ax, word [bp - 0x0004]       ; 0x3aa3
    dec ax                           ; 0x3aa6
    push ax                          ; 0x3aa7
    call ds_app_file_LMRK            ; 0x3aa8
    add sp, byte 0x0a                ; 0x3aab
    mov word [bp - 0x0038], ax       ; 0x3aae
    push word [bp - 0x000a]          ; 0x3ab1
    push word [bp - 0x0008]          ; 0x3ab4
    push word [bp - 0x0006]          ; 0x3ab7
    push word [bp - 0x0004]          ; 0x3aba
    call ds_app_KNSQ                 ; 0x3abd
    add sp, byte 8                   ; 0x3ac0
    cmp word [bp + 0x6], byte 0      ; 0x3ac3
    je short @..api_idx_0038_ULQM.l2 ; 0x3ac7
    lea ax, word [bp - 0x0036]       ; 0x3ac9
    push ax                          ; 0x3acc
    push word [bp + 0x4]             ; 0x3acd
    call ds_app_mem_TIMR             ; 0x3ad0
    add sp, byte 4                   ; 0x3ad3
    jmp short @..api_idx_0038_ULQM.l3 ; 0x3ad6
@..api_idx_0038_ULQM.l2:
    push word [bp + 0xe]             ; 0x3ad8
    lea ax, word [bp - 0x0036]       ; 0x3adb
    push ax                          ; 0x3ade
    call aztec_strcpy                ; 0x3adf
    add sp, byte 4                   ; 0x3ae2
@..api_idx_0038_ULQM.l3:
    lea ax, word [bp - 0x0036]       ; 0x3ae5
    push ax                          ; 0x3ae8
    push word [bp + 0x6]             ; 0x3ae9
    mov ax, 1                        ; 0x3aec
    push ax                          ; 0x3aef
    mov ax, 0xc                      ; 0x3af0
    push ax                          ; 0x3af3
    mov ax, word [bp - 0x0006]       ; 0x3af4
    add ax, strict word 7            ; 0x3af7
    push ax                          ; 0x3afa
    mov ax, word [bp - 0x0004]       ; 0x3afb
    add ax, strict word 8            ; 0x3afe
    push ax                          ; 0x3b01
    call ds_app_string_IIIR          ; 0x3b02
    add sp, byte 0x0c                ; 0x3b05
    lea ax, word [bp - 0x0036]       ; 0x3b08
    push ax                          ; 0x3b0b
    mov ax, word [bp + 0x4]          ; 0x3b0c
    inc ax                           ; 0x3b0f
    push ax                          ; 0x3b10
    call ds_app_mem_TIMR             ; 0x3b11
    add sp, byte 4                   ; 0x3b14
    lea ax, word [bp - 0x0036]       ; 0x3b17
    push ax                          ; 0x3b1a
    push word [bp + 0x8]             ; 0x3b1b
    mov ax, 1                        ; 0x3b1e
    push ax                          ; 0x3b21
    mov ax, 0xc                      ; 0x3b22
    push ax                          ; 0x3b25
    mov ax, word [bp - 0x0006]       ; 0x3b26
    add ax, strict word 0x17         ; 0x3b29
    push ax                          ; 0x3b2c
    mov ax, word [bp - 0x0004]       ; 0x3b2d
    add ax, strict word 8            ; 0x3b30
    push ax                          ; 0x3b33
    call ds_app_string_IIIR          ; 0x3b34
    add sp, byte 0x0c                ; 0x3b37
    lea ax, word [bp - 0x0036]       ; 0x3b3a
    push ax                          ; 0x3b3d
    mov ax, word [bp + 0x4]          ; 0x3b3e
    inc ax                           ; 0x3b41
    inc ax                           ; 0x3b42
    push ax                          ; 0x3b43
    call ds_app_mem_TIMR             ; 0x3b44
    add sp, byte 4                   ; 0x3b47
    lea ax, word [bp - 0x0036]       ; 0x3b4a
    push ax                          ; 0x3b4d
    push word [bp + 0xa]             ; 0x3b4e
    mov ax, 1                        ; 0x3b51
    push ax                          ; 0x3b54
    mov ax, 0xc                      ; 0x3b55
    push ax                          ; 0x3b58
    mov ax, word [bp - 0x0006]       ; 0x3b59
    add ax, strict word 0x27         ; 0x3b5c
    push ax                          ; 0x3b5f
    mov ax, word [bp - 0x0004]       ; 0x3b60
    add ax, strict word 8            ; 0x3b63
    push ax                          ; 0x3b66
    call ds_app_string_IIIR          ; 0x3b67
    add sp, byte 0x0c                ; 0x3b6a
    mov word [bp - 0x0016], 0        ; 0x3b6d
    mov word [bp - 0x0020], 0xffff   ; 0x3b72
    push word [bp - 0x0022]          ; 0x3b77
    push word [bp - 0x0020]          ; 0x3b7a
    push word [bp - 0x0016]          ; 0x3b7d
    mov ax, 7                        ; 0x3b80
    push ax                          ; 0x3b83
    mov ax, 0xf                      ; 0x3b84
    push ax                          ; 0x3b87
    mov ax, word [bp - 0x0006]       ; 0x3b88
    add ax, strict word 6            ; 0x3b8b
    push ax                          ; 0x3b8e
    mov ax, word [bp - 0x0004]       ; 0x3b8f
    add ax, strict word 0x5d         ; 0x3b92
    push ax                          ; 0x3b95
    call loc_HTKI                    ; 0x3b96
    add sp, byte 0x0e                ; 0x3b99
    mov word [bp - 0x0010], 0        ; 0x3b9c
    push word [bp - 0x0010]          ; 0x3ba1
    mov ax, 7                        ; 0x3ba4
    push ax                          ; 0x3ba7
    mov ax, 8                        ; 0x3ba8
    push ax                          ; 0x3bab
    mov ax, word [bp - 0x0006]       ; 0x3bac
    add ax, strict word 6            ; 0x3baf
    push ax                          ; 0x3bb2
    mov ax, word [bp - 0x0004]       ; 0x3bb3
    add ax, 0xc1                     ; 0x3bb6
    push ax                          ; 0x3bb9
    call ds_app_JKST                 ; 0x3bba
    add sp, byte 0x0a                ; 0x3bbd
    mov ax, 0                        ; 0x3bc0
    push ax                          ; 0x3bc3
    push ax                          ; 0x3bc4
    mov ax, word [bp - 0x0006]       ; 0x3bc5
    add ax, word [bp - 0x0010]       ; 0x3bc8
    add ax, strict word 0x12         ; 0x3bcb
    push ax                          ; 0x3bce
    mov ax, word [bp - 0x0004]       ; 0x3bcf
    add ax, 0xc9                     ; 0x3bd2
    push ax                          ; 0x3bd5
    mov ax, word [bp - 0x0006]       ; 0x3bd6
    add ax, word [bp - 0x0010]       ; 0x3bd9
    add ax, strict word 0xe          ; 0x3bdc
    push ax                          ; 0x3bdf
    mov ax, word [bp - 0x0004]       ; 0x3be0
    add ax, 0xc1                     ; 0x3be3
    push ax                          ; 0x3be6
    mov ax, 0                        ; 0x3be7
    push ax                          ; 0x3bea
    call ds_app_NGUR                 ; 0x3beb
    add sp, byte 0x0e                ; 0x3bee
    mov ax, 0                        ; 0x3bf1
    push ax                          ; 0x3bf4
    mov ax, 9                        ; 0x3bf5
    push ax                          ; 0x3bf8
    mov ax, word [bp - 0x0006]       ; 0x3bf9
    add ax, strict word 0xc          ; 0x3bfc
    push ax                          ; 0x3bff
    mov ax, word [bp - 0x0004]       ; 0x3c00
    add ax, 0xc9                     ; 0x3c03
    push ax                          ; 0x3c06
    mov ax, word [bp - 0x0006]       ; 0x3c07
    add ax, strict word 6            ; 0x3c0a
    push ax                          ; 0x3c0d
    mov ax, word [bp - 0x0004]       ; 0x3c0e
    add ax, 0xc1                     ; 0x3c11
    push ax                          ; 0x3c14
    mov ax, 1                        ; 0x3c15
    push ax                          ; 0x3c18
    call ds_app_NGUR                 ; 0x3c19
    add sp, byte 0x0e                ; 0x3c1c
    mov ax, 0                        ; 0x3c1f
    push ax                          ; 0x3c22
    mov ax, 0xb                      ; 0x3c23
    push ax                          ; 0x3c26
    mov ax, word [bp - 0x0006]       ; 0x3c27
    add ax, strict word 0x30         ; 0x3c2a
    push ax                          ; 0x3c2d
    mov ax, word [bp - 0x0004]       ; 0x3c2e
    add ax, 0xc9                     ; 0x3c31
    push ax                          ; 0x3c34
    mov ax, word [bp - 0x0006]       ; 0x3c35
    add ax, strict word 0x2a         ; 0x3c38
    push ax                          ; 0x3c3b
    mov ax, word [bp - 0x0004]       ; 0x3c3c
    add ax, 0xc1                     ; 0x3c3f
    push ax                          ; 0x3c42
    mov ax, 2                        ; 0x3c43
    push ax                          ; 0x3c46
    call ds_app_NGUR                 ; 0x3c47
    add sp, byte 0x0e                ; 0x3c4a
    cmp word [bp + 0x6], byte 0      ; 0x3c4d
    jne short @..api_idx_0038_ULQM.l4 ; 0x3c51
    jmp near @..api_idx_0038_ULQM.l5 ; 0x3c53
@..api_idx_0038_ULQM.l4:
    mov ax, 0xd                      ; 0x3c56
    push ax                          ; 0x3c59
    mov ax, 0x55                     ; 0x3c5a
    push ax                          ; 0x3c5d
    mov ax, word [bp - 0x0006]       ; 0x3c5e
    add ax, strict word 0xf          ; 0x3c61
    push ax                          ; 0x3c64
    mov ax, word [bp - 0x0004]       ; 0x3c65
    add ax, strict word 0x50         ; 0x3c68
    push ax                          ; 0x3c6b
    mov ax, word [bp - 0x0006]       ; 0x3c6c
    add ax, strict word 7            ; 0x3c6f
    push ax                          ; 0x3c72
    mov ax, word [bp - 0x0004]       ; 0x3c73
    add ax, strict word 8            ; 0x3c76
    push ax                          ; 0x3c79
    mov ax, 3                        ; 0x3c7a
    push ax                          ; 0x3c7d
    call ds_app_NGUR                 ; 0x3c7e
    add sp, byte 0x0e                ; 0x3c81
    mov ax, 0                        ; 0x3c84
    push ax                          ; 0x3c87
    mov ax, 0x44                     ; 0x3c88
    push ax                          ; 0x3c8b
    mov ax, word [bp - 0x0006]       ; 0x3c8c
    add ax, strict word 0x1f         ; 0x3c8f
    push ax                          ; 0x3c92
    mov ax, word [bp - 0x0004]       ; 0x3c93
    add ax, strict word 0x50         ; 0x3c96
    push ax                          ; 0x3c99
    mov ax, word [bp - 0x0006]       ; 0x3c9a
    add ax, strict word 0x17         ; 0x3c9d
    push ax                          ; 0x3ca0
    mov ax, word [bp - 0x0004]       ; 0x3ca1
    add ax, strict word 8            ; 0x3ca4
    push ax                          ; 0x3ca7
    mov ax, 4                        ; 0x3ca8
    push ax                          ; 0x3cab
    call ds_app_NGUR                 ; 0x3cac
    add sp, byte 0x0e                ; 0x3caf
    mov ax, 0                        ; 0x3cb2
    push ax                          ; 0x3cb5
    mov ax, 0x1b                     ; 0x3cb6
    push ax                          ; 0x3cb9
    mov ax, word [bp - 0x0006]       ; 0x3cba
    add ax, strict word 0x2f         ; 0x3cbd
    push ax                          ; 0x3cc0
    mov ax, word [bp - 0x0004]       ; 0x3cc1
    add ax, strict word 0x50         ; 0x3cc4
    push ax                          ; 0x3cc7
    mov ax, word [bp - 0x0006]       ; 0x3cc8
    add ax, strict word 0x27         ; 0x3ccb
    push ax                          ; 0x3cce
    mov ax, word [bp - 0x0004]       ; 0x3ccf
    add ax, strict word 8            ; 0x3cd2
    push ax                          ; 0x3cd5
    mov ax, 5                        ; 0x3cd6
    push ax                          ; 0x3cd9
    call ds_app_NGUR                 ; 0x3cda
    add sp, byte 0x0e                ; 0x3cdd
    jmp near @..api_idx_0038_ULQM.l6 ; 0x3ce0
@..api_idx_0038_ULQM.l5:
    mov ax, 0                        ; 0x3ce3
    push ax                          ; 0x3ce6
    push ax                          ; 0x3ce7
    mov ax, word [bp - 0x0006]       ; 0x3ce8
    add ax, strict word 0xf          ; 0x3ceb
    push ax                          ; 0x3cee
    mov ax, word [bp - 0x0004]       ; 0x3cef
    add ax, strict word 0x50         ; 0x3cf2
    push ax                          ; 0x3cf5
    mov ax, word [bp - 0x0006]       ; 0x3cf6
    add ax, strict word 7            ; 0x3cf9
    push ax                          ; 0x3cfc
    mov ax, word [bp - 0x0004]       ; 0x3cfd
    add ax, strict word 8            ; 0x3d00
    push ax                          ; 0x3d03
    mov ax, 3                        ; 0x3d04
    push ax                          ; 0x3d07
    call ds_app_NGUR                 ; 0x3d08
    add sp, byte 0x0e                ; 0x3d0b
    mov ax, 0xd                      ; 0x3d0e
    push ax                          ; 0x3d11
    mov ax, 0x54                     ; 0x3d12
    push ax                          ; 0x3d15
    mov ax, word [bp - 0x0006]       ; 0x3d16
    add ax, strict word 0x1f         ; 0x3d19
    push ax                          ; 0x3d1c
    mov ax, word [bp - 0x0004]       ; 0x3d1d
    add ax, strict word 0x50         ; 0x3d20
    push ax                          ; 0x3d23
    mov ax, word [bp - 0x0006]       ; 0x3d24
    add ax, strict word 0x17         ; 0x3d27
    push ax                          ; 0x3d2a
    mov ax, word [bp - 0x0004]       ; 0x3d2b
    add ax, strict word 8            ; 0x3d2e
    push ax                          ; 0x3d31
    mov ax, 4                        ; 0x3d32
    push ax                          ; 0x3d35
    call ds_app_NGUR                 ; 0x3d36
    add sp, byte 0x0e                ; 0x3d39
    mov ax, 0x1b                     ; 0x3d3c
    push ax                          ; 0x3d3f
    mov ax, 0x4c                     ; 0x3d40
    push ax                          ; 0x3d43
    mov ax, word [bp - 0x0006]       ; 0x3d44
    add ax, strict word 0x2f         ; 0x3d47
    push ax                          ; 0x3d4a
    mov ax, word [bp - 0x0004]       ; 0x3d4b
    add ax, strict word 0x50         ; 0x3d4e
    push ax                          ; 0x3d51
    mov ax, word [bp - 0x0006]       ; 0x3d52
    add ax, strict word 0x27         ; 0x3d55
    push ax                          ; 0x3d58
    mov ax, word [bp - 0x0004]       ; 0x3d59
    add ax, strict word 8            ; 0x3d5c
    push ax                          ; 0x3d5f
    mov ax, 5                        ; 0x3d60
    push ax                          ; 0x3d63
    call ds_app_NGUR                 ; 0x3d64
    add sp, byte 0x0e                ; 0x3d67
@..api_idx_0038_ULQM.l6:
    mov ax, 3                        ; 0x3d6a
    cmp word [bp + 0xc], byte 3      ; 0x3d6d
    jge short @..api_idx_0038_ULQM.l7 ; 0x3d71
    mov ax, word [bp + 0xc]          ; 0x3d73
@..api_idx_0038_ULQM.l7:
    mov word [bp - 0x001e], ax       ; 0x3d76
    mov word [bp - 0x0002], 0        ; 0x3d79
    jmp short @..api_idx_0038_ULQM.l9 ; 0x3d7e
@..api_idx_0038_ULQM.l8:
    mov ax, 0                        ; 0x3d80
    push ax                          ; 0x3d83
    push ax                          ; 0x3d84
    mov ax, 0xe                      ; 0x3d85
    imul word [bp - 0x0002]          ; 0x3d88
    add ax, word [bp - 0x0006]       ; 0x3d8b
    add ax, strict word 0x13         ; 0x3d8e
    push ax                          ; 0x3d91
    mov ax, word [bp - 0x0004]       ; 0x3d92
    add ax, 0xb9                     ; 0x3d95
    push ax                          ; 0x3d98
    mov ax, 0xe                      ; 0x3d99
    imul word [bp - 0x0002]          ; 0x3d9c
    add ax, word [bp - 0x0006]       ; 0x3d9f
    add ax, strict word 7            ; 0x3da2
    push ax                          ; 0x3da5
    mov ax, word [bp - 0x0004]       ; 0x3da6
    add ax, strict word 0x5d         ; 0x3da9
    push ax                          ; 0x3dac
    mov ax, word [bp - 0x0002]       ; 0x3dad
    add ax, strict word 6            ; 0x3db0
    push ax                          ; 0x3db3
    call ds_app_NGUR                 ; 0x3db4
    add sp, byte 0x0e                ; 0x3db7
    inc word [bp - 0x0002]           ; 0x3dba
@..api_idx_0038_ULQM.l9:
    mov ax, word [bp - 0x0002]       ; 0x3dbd
    cmp ax, word [bp - 0x001e]       ; 0x3dc0
    jl short @..api_idx_0038_ULQM.l8 ; 0x3dc3
    mov ax, 0                        ; 0x3dc5
    push ax                          ; 0x3dc8
    push ax                          ; 0x3dc9
    push ax                          ; 0x3dca
    push ax                          ; 0x3dcb
    push ax                          ; 0x3dcc
    mov ax, 0xffff                   ; 0x3dcd
    push ax                          ; 0x3dd0
    mov ax, word [bp - 0x001e]       ; 0x3dd1
    add ax, strict word 6            ; 0x3dd4
    push ax                          ; 0x3dd7
    call ds_app_NGUR                 ; 0x3dd8
    add sp, byte 0x0e                ; 0x3ddb
    mov ax, word [bp - 0x000a]       ; 0x3dde
    inc ax                           ; 0x3de1
    push ax                          ; 0x3de2
    mov ax, word [bp - 0x0008]       ; 0x3de3
    inc ax                           ; 0x3de6
    push ax                          ; 0x3de7
    mov ax, word [bp - 0x0006]       ; 0x3de8
    dec ax                           ; 0x3deb
    push ax                          ; 0x3dec
    mov ax, word [bp - 0x0004]       ; 0x3ded
    dec ax                           ; 0x3df0
    push ax                          ; 0x3df1
    call thunk_4                     ; 0x3df2
    add sp, byte 8                   ; 0x3df5
    mov word [bp - 0x001a], 1        ; 0x3df8
    mov word [bss_9124], 5           ; 0x3dfd
@..api_idx_0038_ULQM.l10:
    cmp word [bp + 0x6], byte 0      ; 0x3e03
    jne short @..api_idx_0038_ULQM.l11 ; 0x3e07
    call loc_IKLI                    ; 0x3e09
@..api_idx_0038_ULQM.l11:
    mov ax, 0x59fe                   ; 0x3e0c
    push ax                          ; 0x3e0f
    call ds_app_io_UHMG              ; 0x3e10
    pop cx                           ; 0x3e13
    dec ax                           ; 0x3e14
    mov word [bp - 0x0018], ax       ; 0x3e15
    cmp word [bss_59fc], byte 0      ; 0x3e18
    je short @..api_idx_0038_ULQM.l15 ; 0x3e1d
    mov ax, word [bp - 0x0020]       ; 0x3e1f
    cmp ax, word [bp - 0x0016]       ; 0x3e22
    jl short @..api_idx_0038_ULQM.l12 ; 0x3e25
    inc word [bp - 0x0020]           ; 0x3e27
@..api_idx_0038_ULQM.l12:
    mov ax, word [bp - 0x0020]       ; 0x3e2a
    cmp ax, strict word 0xffff       ; 0x3e2d
    je short @..api_idx_0038_ULQM.l13 ; 0x3e30
    cmp ax, word [bp - 0x0016]       ; 0x3e32
    jl short @..api_idx_0038_ULQM.l13 ; 0x3e35
    mov ax, word [bp - 0x0016]       ; 0x3e37
    add ax, word [bp - 0x001e]       ; 0x3e3a
    mov cx, ax                       ; 0x3e3d
    dec ax                           ; 0x3e3f
    mov cx, ax                       ; 0x3e40
    mov ax, word [bp - 0x0020]       ; 0x3e42
    cmp cx, ax                       ; 0x3e45
    jge short @..api_idx_0038_ULQM.l14 ; 0x3e47
@..api_idx_0038_ULQM.l13:
    mov ax, word [bp - 0x0016]       ; 0x3e49
    mov word [bp - 0x0020], ax       ; 0x3e4c
@..api_idx_0038_ULQM.l14:
    mov word [bss_5b3e], 1           ; 0x3e4f
    mov ax, word [bp - 0x0020]       ; 0x3e55
    sub ax, word [bp - 0x0016]       ; 0x3e58
    add ax, strict word 6            ; 0x3e5b
    mov word [bp - 0x0018], ax       ; 0x3e5e
@..api_idx_0038_ULQM.l15:
    cmp word [bss_5b3e], byte 1      ; 0x3e61
    je short @..api_idx_0038_ULQM.l16 ; 0x3e66
    jmp near @..api_idx_0038_ULQM.l30 ; 0x3e68
@..api_idx_0038_ULQM.l16:
    mov ax, word [bp - 0x0018]       ; 0x3e6b
    jmp near @..api_idx_0038_ULQM.l28 ; 0x3e6e
jumptable_4213_case_0:
    lea ax, word [bp - 0x000e]       ; 0x3e71
    push ax                          ; 0x3e74
    lea ax, word [bp - 0x000c]       ; 0x3e75
    push ax                          ; 0x3e78
    call thunk_38                    ; 0x3e79
    add sp, byte 4                   ; 0x3e7c
    mov ax, 4                        ; 0x3e7f
    push ax                          ; 0x3e82
    mov ax, 0                        ; 0x3e83
    push ax                          ; 0x3e86
    mov ax, word [bp - 0x000e]       ; 0x3e87
    mov cx, word [bp - 0x0006]       ; 0x3e8a
    add cx, word [bp - 0x0010]       ; 0x3e8d
    add cx, byte 0x0e                ; 0x3e90
    sub ax, cx                       ; 0x3e93
    push ax                          ; 0x3e95
    call clamp                       ; 0x3e96
    add sp, byte 6                   ; 0x3e99
    mov word [bp - 0x0014], ax       ; 0x3e9c
@..api_idx_0038_ULQM.l17:
    lea ax, word [bp - 0x000e]       ; 0x3e9f
    push ax                          ; 0x3ea2
    lea ax, word [bp - 0x000c]       ; 0x3ea3
    push ax                          ; 0x3ea6
    call thunk_38                    ; 0x3ea7
    add sp, byte 4                   ; 0x3eaa
    mov word [bp - 0x001c], ax       ; 0x3ead
    push word [bp - 0x0012]          ; 0x3eb0
    mov ax, 0                        ; 0x3eb3
    push ax                          ; 0x3eb6
    mov ax, word [bp - 0x000e]       ; 0x3eb7
    mov cx, word [bp - 0x0006]       ; 0x3eba
    add cx, byte 0x0e                ; 0x3ebd
    sub ax, cx                       ; 0x3ec0
    sub ax, word [bp - 0x0014]       ; 0x3ec2
    push ax                          ; 0x3ec5
    call clamp                       ; 0x3ec6
    add sp, byte 6                   ; 0x3ec9
    mov word [bp - 0x0010], ax       ; 0x3ecc
    cmp word [bp + 0xc], byte 3      ; 0x3ecf
    jle short @..api_idx_0038_ULQM.l18 ; 0x3ed3
    mov cx, 0x64                     ; 0x3ed5
    imul cx                          ; 0x3ed8
    push ax                          ; 0x3eda
    mov ax, word [bp - 0x0012]       ; 0x3edb
    imul cx                          ; 0x3ede
    add ax, strict word 0x64         ; 0x3ee0
    mov cx, word [bp + 0xc]          ; 0x3ee3
    dec cx                           ; 0x3ee6
    dec cx                           ; 0x3ee7
    cwd                              ; 0x3ee8
    idiv cx                          ; 0x3ee9
    mov cx, ax                       ; 0x3eeb
    pop ax                           ; 0x3eed
    cwd                              ; 0x3eee
    idiv cx                          ; 0x3eef
    mov word [bp - 0x0016], ax       ; 0x3ef1
@..api_idx_0038_ULQM.l18:
    push word [bp - 0x0022]          ; 0x3ef4
    push word [bp - 0x0020]          ; 0x3ef7
    push word [bp - 0x0016]          ; 0x3efa
    mov ax, 7                        ; 0x3efd
    push ax                          ; 0x3f00
    mov ax, 0xf                      ; 0x3f01
    push ax                          ; 0x3f04
    mov ax, word [bp - 0x0006]       ; 0x3f05
    add ax, strict word 6            ; 0x3f08
    push ax                          ; 0x3f0b
    mov ax, word [bp - 0x0004]       ; 0x3f0c
    add ax, strict word 0x5d         ; 0x3f0f
    push ax                          ; 0x3f12
    call loc_HTKI                    ; 0x3f13
    add sp, byte 0x0e                ; 0x3f16
    push word [bp - 0x0010]          ; 0x3f19
    mov ax, 7                        ; 0x3f1c
    push ax                          ; 0x3f1f
    mov ax, 8                        ; 0x3f20
    push ax                          ; 0x3f23
    mov ax, word [bp - 0x0006]       ; 0x3f24
    add ax, strict word 6            ; 0x3f27
    push ax                          ; 0x3f2a
    mov ax, word [bp - 0x0004]       ; 0x3f2b
    add ax, 0xc1                     ; 0x3f2e
    push ax                          ; 0x3f31
    call ds_app_JKST                 ; 0x3f32
    add sp, byte 0x0a                ; 0x3f35
    mov ax, 0                        ; 0x3f38
    push ax                          ; 0x3f3b
    push ax                          ; 0x3f3c
    mov ax, word [bp - 0x0006]       ; 0x3f3d
    add ax, word [bp - 0x0010]       ; 0x3f40
    add ax, strict word 0x12         ; 0x3f43
    push ax                          ; 0x3f46
    mov ax, word [bp - 0x0004]       ; 0x3f47
    add ax, 0xc9                     ; 0x3f4a
    push ax                          ; 0x3f4d
    mov ax, word [bp - 0x0006]       ; 0x3f4e
    add ax, word [bp - 0x0010]       ; 0x3f51
    add ax, strict word 0xe          ; 0x3f54
    push ax                          ; 0x3f57
    mov ax, word [bp - 0x0004]       ; 0x3f58
    add ax, 0xc1                     ; 0x3f5b
    push ax                          ; 0x3f5e
    mov ax, 0                        ; 0x3f5f
    push ax                          ; 0x3f62
    call ds_app_NGUR                 ; 0x3f63
    add sp, byte 0x0e                ; 0x3f66
    mov ax, word [bp - 0x0006]       ; 0x3f69
    add ax, strict word 0x30         ; 0x3f6c
    push ax                          ; 0x3f6f
    mov ax, word [bp - 0x0004]       ; 0x3f70
    add ax, 0xc9                     ; 0x3f73
    push ax                          ; 0x3f76
    mov ax, word [bp - 0x0006]       ; 0x3f77
    add ax, strict word 6            ; 0x3f7a
    push ax                          ; 0x3f7d
    mov ax, word [bp - 0x0004]       ; 0x3f7e
    add ax, strict word 0x5d         ; 0x3f81
    push ax                          ; 0x3f84
    call thunk_4                     ; 0x3f85
    add sp, byte 8                   ; 0x3f88
    cmp word [bp - 0x001c], byte 0   ; 0x3f8b
    je short @..api_idx_0038_ULQM.l19 ; 0x3f8f
    jmp near @..api_idx_0038_ULQM.l17 ; 0x3f91
@..api_idx_0038_ULQM.l19:
    jmp near @..api_idx_0038_ULQM.l30 ; 0x3f94
jumptable_4213_case_1:
    cmp word [bp - 0x0018], byte 1   ; 0x3f97
    jne short @..api_idx_0038_ULQM.l21 ; 0x3f9b
    mov ax, 1                        ; 0x3f9d
    push ax                          ; 0x3fa0
    mov ax, word [bp - 0x0006]       ; 0x3fa1
    add ax, strict word 0xc          ; 0x3fa4
    push ax                          ; 0x3fa7
    mov ax, word [bp - 0x0004]       ; 0x3fa8
    add ax, 0xc9                     ; 0x3fab
    push ax                          ; 0x3fae
    mov ax, word [bp - 0x0006]       ; 0x3faf
    add ax, strict word 6            ; 0x3fb2
    push ax                          ; 0x3fb5
    mov ax, word [bp - 0x0004]       ; 0x3fb6
    add ax, 0xc1                     ; 0x3fb9
    push ax                          ; 0x3fbc
    call ds_app_QOOL                 ; 0x3fbd
    add sp, byte 0x0a                ; 0x3fc0
    cmp word [bp - 0x0016], byte 0   ; 0x3fc3
    jle short @..api_idx_0038_ULQM.l20 ; 0x3fc7
    dec word [bp - 0x0016]           ; 0x3fc9
@..api_idx_0038_ULQM.l20:
    jmp short @..api_idx_0038_ULQM.l22 ; 0x3fcc
@..api_idx_0038_ULQM.l21:
    mov ax, 1                        ; 0x3fce
    push ax                          ; 0x3fd1
    mov ax, word [bp - 0x0006]       ; 0x3fd2
    add ax, strict word 0x30         ; 0x3fd5
    push ax                          ; 0x3fd8
    mov ax, word [bp - 0x0004]       ; 0x3fd9
    add ax, 0xc9                     ; 0x3fdc
    push ax                          ; 0x3fdf
    mov ax, word [bp - 0x0006]       ; 0x3fe0
    add ax, strict word 0x2a         ; 0x3fe3
    push ax                          ; 0x3fe6
    mov ax, word [bp - 0x0004]       ; 0x3fe7
    add ax, 0xc1                     ; 0x3fea
    push ax                          ; 0x3fed
    call ds_app_QOOL                 ; 0x3fee
    add sp, byte 0x0a                ; 0x3ff1
    mov ax, word [bp + 0xc]          ; 0x3ff4
    dec ax                           ; 0x3ff7
    dec ax                           ; 0x3ff8
    dec ax                           ; 0x3ff9
    cmp ax, word [bp - 0x0016]       ; 0x3ffa
    jle short @..api_idx_0038_ULQM.l22 ; 0x3ffd
    inc word [bp - 0x0016]           ; 0x3fff
@..api_idx_0038_ULQM.l22:
    cmp word [bp + 0xc], byte 3      ; 0x4002
    jle short @..api_idx_0038_ULQM.l23 ; 0x4006
    push word [bp - 0x0012]          ; 0x4008
    mov ax, 0                        ; 0x400b
    push ax                          ; 0x400e
    mov ax, 0x64                     ; 0x400f
    imul word [bp - 0x0012]          ; 0x4012
    add ax, strict word 0x64         ; 0x4015
    mov cx, word [bp + 0xc]          ; 0x4018
    dec cx                           ; 0x401b
    dec cx                           ; 0x401c
    dec cx                           ; 0x401d
    cwd                              ; 0x401e
    idiv cx                          ; 0x401f
    imul word [bp - 0x0016]          ; 0x4021
    mov cx, 0x64                     ; 0x4024
    cwd                              ; 0x4027
    idiv cx                          ; 0x4028
    push ax                          ; 0x402a
    call clamp                       ; 0x402b
    add sp, byte 6                   ; 0x402e
    mov word [bp - 0x0010], ax       ; 0x4031
@..api_idx_0038_ULQM.l23:
    push word [bp - 0x0022]          ; 0x4034
    push word [bp - 0x0020]          ; 0x4037
    push word [bp - 0x0016]          ; 0x403a
    mov ax, 7                        ; 0x403d
    push ax                          ; 0x4040
    mov ax, 0xf                      ; 0x4041
    push ax                          ; 0x4044
    mov ax, word [bp - 0x0006]       ; 0x4045
    add ax, strict word 6            ; 0x4048
    push ax                          ; 0x404b
    mov ax, word [bp - 0x0004]       ; 0x404c
    add ax, strict word 0x5d         ; 0x404f
    push ax                          ; 0x4052
    call loc_HTKI                    ; 0x4053
    add sp, byte 0x0e                ; 0x4056
    push word [bp - 0x0010]          ; 0x4059
    mov ax, 7                        ; 0x405c
    push ax                          ; 0x405f
    mov ax, 8                        ; 0x4060
    push ax                          ; 0x4063
    mov ax, word [bp - 0x0006]       ; 0x4064
    add ax, strict word 6            ; 0x4067
    push ax                          ; 0x406a
    mov ax, word [bp - 0x0004]       ; 0x406b
    add ax, 0xc1                     ; 0x406e
    push ax                          ; 0x4071
    call ds_app_JKST                 ; 0x4072
    add sp, byte 0x0a                ; 0x4075
    mov ax, 0                        ; 0x4078
    push ax                          ; 0x407b
    push ax                          ; 0x407c
    mov ax, word [bp - 0x0006]       ; 0x407d
    add ax, word [bp - 0x0010]       ; 0x4080
    add ax, strict word 0x12         ; 0x4083
    push ax                          ; 0x4086
    mov ax, word [bp - 0x0004]       ; 0x4087
    add ax, 0xc9                     ; 0x408a
    push ax                          ; 0x408d
    mov ax, word [bp - 0x0006]       ; 0x408e
    add ax, word [bp - 0x0010]       ; 0x4091
    add ax, strict word 0xe          ; 0x4094
    push ax                          ; 0x4097
    mov ax, word [bp - 0x0004]       ; 0x4098
    add ax, 0xc1                     ; 0x409b
    push ax                          ; 0x409e
    mov ax, 0                        ; 0x409f
    push ax                          ; 0x40a2
    call ds_app_NGUR                 ; 0x40a3
    add sp, byte 0x0e                ; 0x40a6
    mov ax, word [bp - 0x0006]       ; 0x40a9
    add ax, strict word 0x30         ; 0x40ac
    push ax                          ; 0x40af
    mov ax, word [bp - 0x0004]       ; 0x40b0
    add ax, 0xc9                     ; 0x40b3
    push ax                          ; 0x40b6
    mov ax, word [bp - 0x0006]       ; 0x40b7
    add ax, strict word 6            ; 0x40ba
    push ax                          ; 0x40bd
    mov ax, word [bp - 0x0004]       ; 0x40be
    add ax, strict word 0x5d         ; 0x40c1
    push ax                          ; 0x40c4
    call thunk_4                     ; 0x40c5
    add sp, byte 8                   ; 0x40c8
    jmp near @..api_idx_0038_ULQM.l30 ; 0x40cb
jumptable_4213_case_3:
    cmp word [bp + 0x6], byte 0      ; 0x40ce
    je short @..api_idx_0038_ULQM.l24 ; 0x40d2
    mov ax, 1                        ; 0x40d4
    push ax                          ; 0x40d7
    push ax                          ; 0x40d8
    mov ax, 0xc                      ; 0x40d9
    push ax                          ; 0x40dc
    mov ax, word [bp - 0x0006]       ; 0x40dd
    add ax, strict word 7            ; 0x40e0
    push ax                          ; 0x40e3
    mov ax, word [bp - 0x0004]       ; 0x40e4
    add ax, strict word 8            ; 0x40e7
    push ax                          ; 0x40ea
    call ds_app_VIGG                 ; 0x40eb
    add sp, byte 0x0a                ; 0x40ee
    mov ax, 0                        ; 0x40f1
    push ax                          ; 0x40f4
    mov ax, 1                        ; 0x40f5
    push ax                          ; 0x40f8
    mov ax, 0xc                      ; 0x40f9
    push ax                          ; 0x40fc
    mov ax, word [bp - 0x0006]       ; 0x40fd
    add ax, strict word 7            ; 0x4100
    push ax                          ; 0x4103
    mov ax, word [bp - 0x0004]       ; 0x4104
    add ax, strict word 8            ; 0x4107
    push ax                          ; 0x410a
    call ds_app_VIGG                 ; 0x410b
    add sp, byte 0x0a                ; 0x410e
    mov word [bss_9050], 0           ; 0x4111
    mov word [bp - 0x001a], 0        ; 0x4117
@..api_idx_0038_ULQM.l24:
    jmp near @..api_idx_0038_ULQM.l30 ; 0x411c
jumptable_4213_case_4:
    cmp word [bp + 0x8], byte 0      ; 0x411f
    je short @..api_idx_0038_ULQM.l25 ; 0x4123
    mov ax, 1                        ; 0x4125
    push ax                          ; 0x4128
    push ax                          ; 0x4129
    mov ax, 0xc                      ; 0x412a
    push ax                          ; 0x412d
    mov ax, word [bp - 0x0006]       ; 0x412e
    add ax, strict word 0x17         ; 0x4131
    push ax                          ; 0x4134
    mov ax, word [bp - 0x0004]       ; 0x4135
    add ax, strict word 8            ; 0x4138
    push ax                          ; 0x413b
    call ds_app_VIGG                 ; 0x413c
    add sp, byte 0x0a                ; 0x413f
    mov ax, 0                        ; 0x4142
    push ax                          ; 0x4145
    mov ax, 1                        ; 0x4146
    push ax                          ; 0x4149
    mov ax, 0xc                      ; 0x414a
    push ax                          ; 0x414d
    mov ax, word [bp - 0x0006]       ; 0x414e
    add ax, strict word 0x17         ; 0x4151
    push ax                          ; 0x4154
    mov ax, word [bp - 0x0004]       ; 0x4155
    add ax, strict word 8            ; 0x4158
    push ax                          ; 0x415b
    call ds_app_VIGG                 ; 0x415c
    add sp, byte 0x0a                ; 0x415f
    mov word [bss_9050], 1           ; 0x4162
    mov word [bp - 0x001a], 0        ; 0x4168
@..api_idx_0038_ULQM.l25:
    jmp near @..api_idx_0038_ULQM.l30 ; 0x416d
jumptable_4213_case_5:
    cmp word [bp + 0xa], byte 0      ; 0x4170
    je short @..api_idx_0038_ULQM.l26 ; 0x4174
    mov ax, 1                        ; 0x4176
    push ax                          ; 0x4179
    push ax                          ; 0x417a
    mov ax, 0xc                      ; 0x417b
    push ax                          ; 0x417e
    mov ax, word [bp - 0x0006]       ; 0x417f
    add ax, strict word 0x27         ; 0x4182
    push ax                          ; 0x4185
    mov ax, word [bp - 0x0004]       ; 0x4186
    add ax, strict word 8            ; 0x4189
    push ax                          ; 0x418c
    call ds_app_VIGG                 ; 0x418d
    add sp, byte 0x0a                ; 0x4190
    mov ax, 0                        ; 0x4193
    push ax                          ; 0x4196
    mov ax, 1                        ; 0x4197
    push ax                          ; 0x419a
    mov ax, 0xc                      ; 0x419b
    push ax                          ; 0x419e
    mov ax, word [bp - 0x0006]       ; 0x419f
    add ax, strict word 0x27         ; 0x41a2
    push ax                          ; 0x41a5
    mov ax, word [bp - 0x0004]       ; 0x41a6
    add ax, strict word 8            ; 0x41a9
    push ax                          ; 0x41ac
    call ds_app_VIGG                 ; 0x41ad
    add sp, byte 0x0a                ; 0x41b0
    mov word [bss_9050], 2           ; 0x41b3
    mov word [bp - 0x001a], 0        ; 0x41b9
@..api_idx_0038_ULQM.l26:
    jmp short @..api_idx_0038_ULQM.l30 ; 0x41be
@..api_idx_0038_ULQM.l27:
    mov ax, word [bp - 0x0016]       ; 0x41c0
    add ax, word [bp - 0x0018]       ; 0x41c3
    add ax, strict word 0xfffa       ; 0x41c6
    mov word [bp - 0x0020], ax       ; 0x41c9
    push word [bp - 0x0022]          ; 0x41cc
    push ax                          ; 0x41cf
    push word [bp - 0x0016]          ; 0x41d0
    mov ax, 7                        ; 0x41d3
    push ax                          ; 0x41d6
    mov ax, 0xf                      ; 0x41d7
    push ax                          ; 0x41da
    mov ax, word [bp - 0x0006]       ; 0x41db
    add ax, strict word 6            ; 0x41de
    push ax                          ; 0x41e1
    mov ax, word [bp - 0x0004]       ; 0x41e2
    add ax, strict word 0x5d         ; 0x41e5
    push ax                          ; 0x41e8
    call loc_HTKI                    ; 0x41e9
    add sp, byte 0x0e                ; 0x41ec
    mov ax, word [bp - 0x0006]       ; 0x41ef
    add ax, strict word 0x30         ; 0x41f2
    push ax                          ; 0x41f5
    mov ax, word [bp - 0x0004]       ; 0x41f6
    add ax, 0xb9                     ; 0x41f9
    push ax                          ; 0x41fc
    mov ax, word [bp - 0x0006]       ; 0x41fd
    add ax, strict word 6            ; 0x4200
    push ax                          ; 0x4203
    mov ax, word [bp - 0x0004]       ; 0x4204
    add ax, strict word 0x5d         ; 0x4207
    push ax                          ; 0x420a
    call thunk_4                     ; 0x420b
    add sp, byte 8                   ; 0x420e
    jmp short @..api_idx_0038_ULQM.l30 ; 0x4211
jumptable_4213:
    dw jumptable_4213_case_0 - IMAGE_BASE + 0x5055 ; 0x4213
    dw jumptable_4213_case_1 - IMAGE_BASE + 0x5055 ; 0x4215
    dw jumptable_4213_case_1 - IMAGE_BASE + 0x5055 ; 0x4217
    dw jumptable_4213_case_3 - IMAGE_BASE + 0x5055 ; 0x4219
    dw jumptable_4213_case_4 - IMAGE_BASE + 0x5055 ; 0x421b
    dw jumptable_4213_case_5 - IMAGE_BASE + 0x5055 ; 0x421d
@..api_idx_0038_ULQM.l28:
    cmp ax, strict word 6            ; 0x421f
    jae short @..api_idx_0038_ULQM.l29 ; 0x4222
    xchg bx, ax                      ; 0x4224
    shl bx, 1                        ; 0x4225
    jmp [cs:bx - 0x6da6]             ; 0x4227
@..api_idx_0038_ULQM.l29:
    jmp short @..api_idx_0038_ULQM.l27 ; 0x422c
@..api_idx_0038_ULQM.l30:
    cmp word [bp - 0x001a], byte 0   ; 0x422e
    je short @..api_idx_0038_ULQM.l31 ; 0x4232
    jmp near @..api_idx_0038_ULQM.l10 ; 0x4234
@..api_idx_0038_ULQM.l31:
    mov ax, 1                        ; 0x4237
    push ax                          ; 0x423a
    push word [bp - 0x0038]          ; 0x423b
    call ds_app_file_HMNO            ; 0x423e
    add sp, byte 4                   ; 0x4241
    mov word [bss_911c], 0x8f        ; 0x4244
    mov ax, word [bp - 0x0020]       ; 0x424a
    mov word [bss_904e], ax          ; 0x424d
    mov ax, word [bss_9050]          ; 0x4250
    ret                              ; 0x4253
