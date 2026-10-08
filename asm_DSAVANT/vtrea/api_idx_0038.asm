api_idx_0038:
    mov ax, 0xffc8                   ; 0x3a56
    call ds_dispatch_f40b            ; 0x3a59
    mov word [data_904e], 0xffff     ; 0x3a5c
    mov word [bp - 0x0004], 0x37     ; 0x3a62
    mov word [bp - 0x0006], 0x8f     ; 0x3a67
    mov word [bp - 0x0008], 0x108    ; 0x3a6c
    mov word [bp - 0x000a], 0xc5     ; 0x3a71
    mov word [data_911c], 0x8d       ; 0x3a76
    mov word [bp - 0x0012], 0x16     ; 0x3a7c
    mov ax, 3                        ; 0x3a81
    cmp word [bp + 0xc], byte 3      ; 0x3a84
    jge short @..api_idx_0038.l1     ; 0x3a88
    mov ax, word [bp + 0xc]          ; 0x3a8a
@..api_idx_0038.l1:
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
    call ds_dispatch_c283            ; 0x3aa8
    add sp, byte 0x0a                ; 0x3aab
    mov word [bp - 0x0038], ax       ; 0x3aae
    push word [bp - 0x000a]          ; 0x3ab1
    push word [bp - 0x0008]          ; 0x3ab4
    push word [bp - 0x0006]          ; 0x3ab7
    push word [bp - 0x0004]          ; 0x3aba
    call ds_dispatch_bc9a            ; 0x3abd
    add sp, byte 8                   ; 0x3ac0
    cmp word [bp + 0x6], byte 0      ; 0x3ac3
    je short @..api_idx_0038.l2      ; 0x3ac7
    lea ax, word [bp - 0x0036]       ; 0x3ac9
    push ax                          ; 0x3acc
    push word [bp + 0x4]             ; 0x3acd
    call ds_dispatch_b53b            ; 0x3ad0
    add sp, byte 4                   ; 0x3ad3
    jmp short @..api_idx_0038.l3     ; 0x3ad6
@..api_idx_0038.l2:
    push word [bp + 0xe]             ; 0x3ad8
    lea ax, word [bp - 0x0036]       ; 0x3adb
    push ax                          ; 0x3ade
    call ds_dispatch_f364            ; 0x3adf
    add sp, byte 4                   ; 0x3ae2
@..api_idx_0038.l3:
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
    call ds_dispatch_c0c1            ; 0x3b02
    add sp, byte 0x0c                ; 0x3b05
    lea ax, word [bp - 0x0036]       ; 0x3b08
    push ax                          ; 0x3b0b
    mov ax, word [bp + 0x4]          ; 0x3b0c
    inc ax                           ; 0x3b0f
    push ax                          ; 0x3b10
    call ds_dispatch_b53b            ; 0x3b11
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
    call ds_dispatch_c0c1            ; 0x3b34
    add sp, byte 0x0c                ; 0x3b37
    lea ax, word [bp - 0x0036]       ; 0x3b3a
    push ax                          ; 0x3b3d
    mov ax, word [bp + 0x4]          ; 0x3b3e
    inc ax                           ; 0x3b41
    inc ax                           ; 0x3b42
    push ax                          ; 0x3b43
    call ds_dispatch_b53b            ; 0x3b44
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
    call ds_dispatch_c0c1            ; 0x3b67
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
    call math_loc_3a15               ; 0x3b96
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
    call ds_dispatch_bfd8            ; 0x3bba
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
    call ds_dispatch_baa6            ; 0x3beb
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
    call ds_dispatch_baa6            ; 0x3c19
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
    mov ax, data_0002                ; 0x3c43
    push ax                          ; 0x3c46
    call ds_dispatch_baa6            ; 0x3c47
    add sp, byte 0x0e                ; 0x3c4a
    cmp word [bp + 0x6], byte 0      ; 0x3c4d
    jne short @..api_idx_0038.l4     ; 0x3c51
    jmp near @..api_idx_0038.l5      ; 0x3c53
@..api_idx_0038.l4:
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
    call ds_dispatch_baa6            ; 0x3c7e
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
    call ds_dispatch_baa6            ; 0x3cac
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
    call ds_dispatch_baa6            ; 0x3cda
    add sp, byte 0x0e                ; 0x3cdd
    jmp near @..api_idx_0038.l6      ; 0x3ce0
@..api_idx_0038.l5:
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
    call ds_dispatch_baa6            ; 0x3d08
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
    call ds_dispatch_baa6            ; 0x3d36
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
    call ds_dispatch_baa6            ; 0x3d64
    add sp, byte 0x0e                ; 0x3d67
@..api_idx_0038.l6:
    mov ax, 3                        ; 0x3d6a
    cmp word [bp + 0xc], byte 3      ; 0x3d6d
    jge short @..api_idx_0038.l7     ; 0x3d71
    mov ax, word [bp + 0xc]          ; 0x3d73
@..api_idx_0038.l7:
    mov word [bp - 0x001e], ax       ; 0x3d76
    mov word [bp - 0x0002], 0        ; 0x3d79
    jmp short @..api_idx_0038.l9     ; 0x3d7e
