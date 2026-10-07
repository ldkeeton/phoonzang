api_idx_0012_2:
    mov ax, 0xffee                   ; 0x29e5
    call ds_dispatch_f40b            ; 0x29e8
    mov word [bp - 0x0004], 0xffff   ; 0x29eb
    mov word [bp - 0x0006], 0xffff   ; 0x29f0
    mov ax, word [bp + 0x6]          ; 0x29f5
    jmp near @..api_idx_0012_2.l1    ; 0x29f8
    cmp word [bp + 0x26], byte 0xff  ; 0x29fb
    jne short loc_2a04               ; 0x29ff
    jmp near loc_2a88                ; 0x2a01
    cmp word [bp + 0x4], byte 0      ; 0x2a04
    je short loc_2a0d                ; 0x2a08
    db 0xe9, 0x7b, 0x00 ; jmp near loc_2a88
    cmp word [bp + 0x6], byte 8      ; 0x2a0d
    jne short loc_2a19               ; 0x2a11
    mov ax, word [bp + 0x26]         ; 0x2a13
    inc ax                           ; 0x2a16
    jmp short loc_2a1f               ; 0x2a17
    mov ax, word [bp + 0x26]         ; 0x2a19
    inc ax                           ; 0x2a1c
    inc ax                           ; 0x2a1d
    inc ax                           ; 0x2a1e
    mov word [bp - 0x0002], ax       ; 0x2a1f
    mov ax, 0                        ; 0x2a22
    push ax                          ; 0x2a25
    mov ax, 1                        ; 0x2a26
    push ax                          ; 0x2a29
    mov ax, 0                        ; 0x2a2a
    push ax                          ; 0x2a2d
    push word [bp + 0xa]             ; 0x2a2e
    push word [bp + 0x4]             ; 0x2a31
    mov ax, 0xffff                   ; 0x2a34
    cmp word [bp + 0x8], byte 2      ; 0x2a37
    jge short loc_2a41               ; 0x2a3b
    mov ax, word [bp - 0x0002]       ; 0x2a3d
    inc ax                           ; 0x2a40
    push ax                          ; 0x2a41
    mov ax, 0xffff                   ; 0x2a42
    cmp word [bp + 0x8], byte 2      ; 0x2a45
    jge short loc_2a4e               ; 0x2a49
    mov ax, word [bp - 0x0002]       ; 0x2a4b
    push ax                          ; 0x2a4e
    mov ax, 0                        ; 0x2a4f
    push ax                          ; 0x2a52
    push ax                          ; 0x2a53
    mov ax, 2                        ; 0x2a54
    push ax                          ; 0x2a57
    push ax                          ; 0x2a58
    cmp word [bp + 0x6], byte 8      ; 0x2a59
    jne short loc_2a65               ; 0x2a5d
    cmp word [bp + 0x8], byte 2      ; 0x2a5f
    jg short loc_2a71                ; 0x2a63
    cmp word [bp + 0x6], byte 9      ; 0x2a65
    jne short loc_2a77               ; 0x2a69
    cmp word [bp + 0x8], byte 2      ; 0x2a6b
    jge short loc_2a77               ; 0x2a6f
    mov ax, word [bp - 0x0002]       ; 0x2a71
    inc ax                           ; 0x2a74
    jmp short loc_2a7a               ; 0x2a75
    mov ax, 0xffff                   ; 0x2a77
    push ax                          ; 0x2a7a
    push word [bp - 0x0002]          ; 0x2a7b
    mov ax, 0xfd                     ; 0x2a7e
    push ax                          ; 0x2a81
    call api_idx_0004_5              ; 0x2a82
    add sp, byte 0x1c                ; 0x2a85
    cmp word [bp + 0x6], byte 3      ; 0x2a88
    je short loc_2a91                ; 0x2a8c
    jmp near loc_2b14                ; 0x2a8e
    cmp word [bp + 0x4], byte 4      ; 0x2a91
    jl short loc_2a9a                ; 0x2a95
    db 0xe9, 0x7a, 0x00 ; jmp near loc_2b14
    cmp word [bp + 0x34], byte 0xff  ; 0x2a9a
    je short loc_2aef                ; 0x2a9e
    mov ax, 0                        ; 0x2aa0
    push ax                          ; 0x2aa3
    mov ax, 1                        ; 0x2aa4
    push ax                          ; 0x2aa7
    mov ax, 0                        ; 0x2aa8
    push ax                          ; 0x2aab
    push word [bp + 0xe]             ; 0x2aac
    push word [bp + 0x4]             ; 0x2aaf
    mov ax, 0xffff                   ; 0x2ab2
    push ax                          ; 0x2ab5
    mov ax, word [bp + 0x34]         ; 0x2ab6
    add ax, word [bp + 0x4]          ; 0x2ab9
    push ax                          ; 0x2abc
    call loc_193b                    ; 0x2abd
    pop cx                           ; 0x2ac0
    push ax                          ; 0x2ac1
    mov ax, 0                        ; 0x2ac2
    push ax                          ; 0x2ac5
    push ax                          ; 0x2ac6
    push ax                          ; 0x2ac7
    mov ax, 2                        ; 0x2ac8
    push ax                          ; 0x2acb
    mov ax, 0xffff                   ; 0x2acc
    push ax                          ; 0x2acf
    mov ax, word [bp + 0x36]         ; 0x2ad0
    add ax, word [bp + 0x4]          ; 0x2ad3
    push ax                          ; 0x2ad6
    mov ax, word [bp + 0x34]         ; 0x2ad7
    add ax, word [bp + 0x4]          ; 0x2ada
    push ax                          ; 0x2add
    call loc_194f                    ; 0x2ade
    add sp, byte 4                   ; 0x2ae1
    push ax                          ; 0x2ae4
    mov ax, 0xfd                     ; 0x2ae5
    push ax                          ; 0x2ae8
    call api_idx_0004_5              ; 0x2ae9
    add sp, byte 0x1c                ; 0x2aec
    mov ax, word [bp + 0x32]         ; 0x2aef
    add ax, word [bp + 0x4]          ; 0x2af2
    push ax                          ; 0x2af5
    mov ax, word [bp + 0x30]         ; 0x2af6
    add ax, word [bp + 0x4]          ; 0x2af9
    push ax                          ; 0x2afc
    call loc_194f                    ; 0x2afd
    add sp, byte 4                   ; 0x2b00
    mov word [bp - 0x0004], ax       ; 0x2b03
    mov ax, word [bp + 0x30]         ; 0x2b06
    add ax, word [bp + 0x4]          ; 0x2b09
    push ax                          ; 0x2b0c
    call loc_193b                    ; 0x2b0d
    pop cx                           ; 0x2b10
    mov word [bp - 0x0006], ax       ; 0x2b11
    cmp word [bp + 0x6], byte 6      ; 0x2b14
    jne short loc_2b45               ; 0x2b18
    cmp word [bp + 0x4], byte 4      ; 0x2b1a
    jge short loc_2b45               ; 0x2b1e
    mov ax, word [bp + 0x24]         ; 0x2b20
    add ax, word [bp + 0x4]          ; 0x2b23
    push ax                          ; 0x2b26
    mov ax, word [bp + 0x22]         ; 0x2b27
    add ax, word [bp + 0x4]          ; 0x2b2a
    push ax                          ; 0x2b2d
    call loc_194f                    ; 0x2b2e
    add sp, byte 4                   ; 0x2b31
    mov word [bp - 0x0004], ax       ; 0x2b34
    mov ax, word [bp + 0x22]         ; 0x2b37
    add ax, word [bp + 0x4]          ; 0x2b3a
    push ax                          ; 0x2b3d
    call loc_193b                    ; 0x2b3e
    pop cx                           ; 0x2b41
    mov word [bp - 0x0006], ax       ; 0x2b42
    cmp word [data_91a8], byte 0     ; 0x2b45
    jne short loc_2ba1               ; 0x2b4a
    cmp word [bp + 0x4], byte 4      ; 0x2b4c
    jge short loc_2b9f               ; 0x2b50
    mov ax, 0                        ; 0x2b52
    push ax                          ; 0x2b55
    mov ax, 1                        ; 0x2b56
    push ax                          ; 0x2b59
    mov ax, 0                        ; 0x2b5a
    push ax                          ; 0x2b5d
    push word [bp + 0xa]             ; 0x2b5e
    push word [bp + 0x4]             ; 0x2b61
    push word [bp - 0x0006]          ; 0x2b64
    mov ax, word [bp + 0x1e]         ; 0x2b67
    add ax, word [bp + 0x4]          ; 0x2b6a
    push ax                          ; 0x2b6d
    call loc_193b                    ; 0x2b6e
    pop cx                           ; 0x2b71
    push ax                          ; 0x2b72
    mov ax, 0                        ; 0x2b73
    push ax                          ; 0x2b76
    push ax                          ; 0x2b77
    mov ax, 2                        ; 0x2b78
    push ax                          ; 0x2b7b
    push ax                          ; 0x2b7c
    push word [bp - 0x0004]          ; 0x2b7d
    mov ax, word [bp + 0x20]         ; 0x2b80
    add ax, word [bp + 0x4]          ; 0x2b83
    push ax                          ; 0x2b86
    mov ax, word [bp + 0x1e]         ; 0x2b87
    add ax, word [bp + 0x4]          ; 0x2b8a
    push ax                          ; 0x2b8d
    call loc_194f                    ; 0x2b8e
    add sp, byte 4                   ; 0x2b91
    push ax                          ; 0x2b94
    mov ax, 0xfd                     ; 0x2b95
    push ax                          ; 0x2b98
    call api_idx_0004_5              ; 0x2b99
    add sp, byte 0x1c                ; 0x2b9c
    jmp short loc_2bfb               ; 0x2b9f
    cmp word [data_91a8], byte 2     ; 0x2ba1
    jne short loc_2bfb               ; 0x2ba6
    cmp word [bp + 0x4], byte 5      ; 0x2ba8
    jge short loc_2bfb               ; 0x2bac
    mov ax, 0                        ; 0x2bae
    push ax                          ; 0x2bb1
    mov ax, 1                        ; 0x2bb2
    push ax                          ; 0x2bb5
    mov ax, 0                        ; 0x2bb6
    push ax                          ; 0x2bb9
    push word [bp + 0xe]             ; 0x2bba
    push word [bp + 0x4]             ; 0x2bbd
    push word [bp - 0x0006]          ; 0x2bc0
    mov ax, word [bp + 0x2c]         ; 0x2bc3
    add ax, word [bp + 0x4]          ; 0x2bc6
    push ax                          ; 0x2bc9
    call loc_193b                    ; 0x2bca
    pop cx                           ; 0x2bcd
    push ax                          ; 0x2bce
    mov ax, 0                        ; 0x2bcf
    push ax                          ; 0x2bd2
    push ax                          ; 0x2bd3
    mov ax, 2                        ; 0x2bd4
    push ax                          ; 0x2bd7
    push ax                          ; 0x2bd8
    push word [bp - 0x0004]          ; 0x2bd9
    mov ax, word [bp + 0x2e]         ; 0x2bdc
    add ax, word [bp + 0x4]          ; 0x2bdf
    push ax                          ; 0x2be2
