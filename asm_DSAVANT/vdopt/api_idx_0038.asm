api_idx_0038:
    mov ax, 0xffc8                   ; 0x3a2c
    call ds_dispatch_f40b            ; 0x3a2f
    mov word [data_904e], 0xffff     ; 0x3a32
    mov word [bp - 0x0004], 0x37     ; 0x3a38
    mov word [bp - 0x0006], 0x8f     ; 0x3a3d
    mov word [bp - 0x0008], 0x108    ; 0x3a42
    mov word [bp - 0x000a], 0xc5     ; 0x3a47
    mov word [bp - 0x0012], 0x16     ; 0x3a4c
    mov ax, 3                        ; 0x3a51
    cmp word [bp + 0xc], byte 3      ; 0x3a54
    jge short @..api_idx_0038.l1     ; 0x3a58
    mov ax, word [bp + 0xc]          ; 0x3a5a
@..api_idx_0038.l1:
    mov word [bp - 0x0022], ax       ; 0x3a5d
    mov ax, 0x90a4                   ; 0x3a60
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
    call ds_dispatch_c283            ; 0x3a78
    add sp, byte 0x0a                ; 0x3a7b
    mov word [bp - 0x0038], ax       ; 0x3a7e
    push word [bp - 0x000a]          ; 0x3a81
    push word [bp - 0x0008]          ; 0x3a84
    push word [bp - 0x0006]          ; 0x3a87
    push word [bp - 0x0004]          ; 0x3a8a
    call ds_dispatch_bc9a            ; 0x3a8d
    add sp, byte 8                   ; 0x3a90
    cmp word [bp + 0x6], byte 0      ; 0x3a93
    je short @..api_idx_0038.l2      ; 0x3a97
    lea ax, word [bp - 0x0036]       ; 0x3a99
    push ax                          ; 0x3a9c
    push word [bp + 0x4]             ; 0x3a9d
    call ds_dispatch_b53b            ; 0x3aa0
    add sp, byte 4                   ; 0x3aa3
    jmp short @..api_idx_0038.l3     ; 0x3aa6
@..api_idx_0038.l2:
    push word [bp + 0xe]             ; 0x3aa8
    lea ax, word [bp - 0x0036]       ; 0x3aab
    push ax                          ; 0x3aae
    call ds_dispatch_f364            ; 0x3aaf
    add sp, byte 4                   ; 0x3ab2
@..api_idx_0038.l3:
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
    call ds_dispatch_c0c1            ; 0x3ad2
    add sp, byte 0x0c                ; 0x3ad5
    lea ax, word [bp - 0x0036]       ; 0x3ad8
    push ax                          ; 0x3adb
    mov ax, word [bp + 0x4]          ; 0x3adc
    inc ax                           ; 0x3adf
    push ax                          ; 0x3ae0
    call ds_dispatch_b53b            ; 0x3ae1
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
    call ds_dispatch_c0c1            ; 0x3b04
    add sp, byte 0x0c                ; 0x3b07
    lea ax, word [bp - 0x0036]       ; 0x3b0a
    push ax                          ; 0x3b0d
    mov ax, word [bp + 0x4]          ; 0x3b0e
    inc ax                           ; 0x3b11
    inc ax                           ; 0x3b12
    push ax                          ; 0x3b13
    call ds_dispatch_b53b            ; 0x3b14
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
    call ds_dispatch_c0c1            ; 0x3b37
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
    call math_loc_39eb               ; 0x3b66
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
    call ds_dispatch_bfd8            ; 0x3b8a
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
    call ds_dispatch_baa6            ; 0x3bbb
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
    call ds_dispatch_baa6            ; 0x3be9
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
    mov ax, data_0002                ; 0x3c13
    push ax                          ; 0x3c16
    call ds_dispatch_baa6            ; 0x3c17
    add sp, byte 0x0e                ; 0x3c1a
    mov ax, 0xd                      ; 0x3c1d
    push ax                          ; 0x3c20
    mov ax, 0x55                     ; 0x3c21
    push ax                          ; 0x3c24
    mov ax, word [bp - 0x0006]       ; 0x3c25
    add ax, strict word 0xf          ; 0x3c28
    push ax                          ; 0x3c2b
