fpu_loc_19ba:
    mov word [bp - 0x0008], 9        ; 0x19ba
    jmp short loc_19da               ; 0x19bf
jumptable_19c1:
    dw fpu_loc_1997 - IMAGE_BASE + 0x5055      ; 0x19c1
    dw fpu_loc_199e - IMAGE_BASE + 0x5055      ; 0x19c3
    dw fpu_loc_19a5 - IMAGE_BASE + 0x5055      ; 0x19c5
    dw fpu_loc_19ac - IMAGE_BASE + 0x5055      ; 0x19c7
    dw fpu_loc_19b3 - IMAGE_BASE + 0x5055      ; 0x19c9
    dw fpu_loc_19ba - IMAGE_BASE + 0x5055      ; 0x19cb
@..api_idx_000a.l4:
    cmp ax, strict word 6            ; 0x19cd
    jae short loc_19da               ; 0x19d0
    xchg bx, ax                      ; 0x19d2
    shl bx, 1                        ; 0x19d3
    jmp [cs:bx + 0x6a08]             ; 0x19d5
loc_19da:
    mov ax, 0x248                    ; 0x19da
    imul word [bp + 0x4]             ; 0x19dd
    add ax, word [bp - 0x0008]       ; 0x19e0
    mov bx, ax                       ; 0x19e3
    mov byte [bx + 0x5d5a], 0xff     ; 0x19e5
    cmp word [bp - 0x0008], byte 5   ; 0x19ea
    jne short loc_1a11               ; 0x19ee
    mov ax, 2                        ; 0x19f0
    push ax                          ; 0x19f3
    call ds_dispatch_b7a9            ; 0x19f4
    pop cx                           ; 0x19f7
    push ax                          ; 0x19f8
    mov ax, 0x248                    ; 0x19f9
    imul word [bp + 0x4]             ; 0x19fc
    mov bx, ax                       ; 0x19ff
    mov al, byte [bx + 0x5e32]       ; 0x1a01
    sub ah, ah                       ; 0x1a05
    mov cx, ax                       ; 0x1a07
    pop ax                           ; 0x1a09
    add ax, cx                       ; 0x1a0a
    inc ax                           ; 0x1a0c
    mov byte [bx + 0x5e32], al       ; 0x1a0d
loc_1a11:
    mov ax, 7                        ; 0x1a11
    push ax                          ; 0x1a14
    call ds_dispatch_b7a9            ; 0x1a15
    pop cx                           ; 0x1a18
    mov word [bp - 0x000a], ax       ; 0x1a19
    mov ax, 0xa                      ; 0x1a1c
    push ax                          ; 0x1a1f
    call ds_dispatch_b7a9            ; 0x1a20
    pop cx                           ; 0x1a23
    test ax, ax                      ; 0x1a24
    jne short loc_1a3e               ; 0x1a26
    mov ax, 0x248                    ; 0x1a28
    imul word [bp + 0x4]             ; 0x1a2b
    add ax, word [bp - 0x000a]       ; 0x1a2e
    mov bx, ax                       ; 0x1a31
    cmp byte [bx + 0x5d64], 1        ; 0x1a33
    jbe short loc_1a3e               ; 0x1a38
    dec byte [bx + 0x5d64]           ; 0x1a3a
loc_1a3e:
    mov ax, 0xa                      ; 0x1a3e
    push ax                          ; 0x1a41
    call ds_dispatch_b7a9            ; 0x1a42
    pop cx                           ; 0x1a45
    test ax, ax                      ; 0x1a46
    jne short loc_1a6f               ; 0x1a48
    mov ax, 0x248                    ; 0x1a4a
    imul word [bp + 0x4]             ; 0x1a4d
    mov bx, ax                       ; 0x1a50
    cmp word [bx + 0x5c0e], byte 2   ; 0x1a52
    jle short loc_1a6f               ; 0x1a57
    mov ax, 3                        ; 0x1a59
    push ax                          ; 0x1a5c
    call ds_dispatch_b7a9            ; 0x1a5d
    pop cx                           ; 0x1a60
    push ax                          ; 0x1a61
    mov ax, 0x248                    ; 0x1a62
    imul word [bp + 0x4]             ; 0x1a65
    mov bx, ax                       ; 0x1a68
    pop ax                           ; 0x1a6a
    sub word [bx + 0x5c0e], ax       ; 0x1a6b
loc_1a6f:
    mov ax, 0x248                    ; 0x1a6f
    imul word [bp + 0x4]             ; 0x1a72
    mov bx, ax                       ; 0x1a75
    mov al, byte [bx + 0x5e30]       ; 0x1a77
    sub ah, ah                       ; 0x1a7b
    imul word [bp + 0xa]             ; 0x1a7d
    push ax                          ; 0x1a80
    mov al, byte [bx + 0x5e31]       ; 0x1a81
    sub ah, ah                       ; 0x1a85
    imul word [bp + 0xa]             ; 0x1a87
    mov cx, ax                       ; 0x1a8a
    pop ax                           ; 0x1a8c
    sub ax, cx                       ; 0x1a8d
    push ax                          ; 0x1a8f
    mov al, byte [bx + 0x5e32]       ; 0x1a90
    sub ah, ah                       ; 0x1a94
    imul word [bp + 0xa]             ; 0x1a96
    mov cx, ax                       ; 0x1a99
    pop ax                           ; 0x1a9b
    sub ax, cx                       ; 0x1a9c
    add word [bx + 0x5c0c], ax       ; 0x1a9e
    mov ax, word [bx + 0x5c0c]       ; 0x1aa2
    cmp ax, word [bx + 0x5c0e]       ; 0x1aa6
    jle short loc_1ab4               ; 0x1aaa
    mov ax, word [bx + 0x5c0e]       ; 0x1aac
    mov word [bx + 0x5c0c], ax       ; 0x1ab0
loc_1ab4:
    cmp word [bx + 0x5c0c], byte 0   ; 0x1ab4
    jg short loc_1ac8                ; 0x1ab9
    mov ax, 0                        ; 0x1abb
    push ax                          ; 0x1abe
    push word [bp + 0x4]             ; 0x1abf
    call loc_10b0                    ; 0x1ac2
    add sp, byte 4                   ; 0x1ac5
loc_1ac8:
    jmp near loc_1c86                ; 0x1ac8
@..api_idx_000a.l5:
    push word [bp + 0x6]             ; 0x1acb
    call ds_dispatch_b7a9            ; 0x1ace
    pop cx                           ; 0x1ad1
    push ax                          ; 0x1ad2
    mov ax, 0x248                    ; 0x1ad3
    imul word [bp + 0x4]             ; 0x1ad6
    mov bx, ax                       ; 0x1ad9
    mov al, byte [bx + 0x5e30]       ; 0x1adb
    sub ah, ah                       ; 0x1adf
    imul word [bp + 0xa]             ; 0x1ae1
    mov cx, ax                       ; 0x1ae4
    pop ax                           ; 0x1ae6
    add ax, cx                       ; 0x1ae7
    push ax                          ; 0x1ae9
    mov al, byte [bx + 0x5e31]       ; 0x1aea
    sub ah, ah                       ; 0x1aee
    imul word [bp + 0xa]             ; 0x1af0
    mov cx, ax                       ; 0x1af3
    pop ax                           ; 0x1af5
    sub ax, cx                       ; 0x1af6
    push ax                          ; 0x1af8
    mov al, byte [bx + 0x5e32]       ; 0x1af9
    sub ah, ah                       ; 0x1afd
    imul word [bp + 0xa]             ; 0x1aff
    mov cx, ax                       ; 0x1b02
    pop ax                           ; 0x1b04
    sub ax, cx                       ; 0x1b05
    add word [bx + 0x5c0c], ax       ; 0x1b07
    mov ax, word [bx + 0x5c0c]       ; 0x1b0b
    cmp ax, word [bx + 0x5c0e]       ; 0x1b0f
    jle short @..api_idx_000a.l6     ; 0x1b13
    mov ax, word [bx + 0x5c0e]       ; 0x1b15
    mov word [bx + 0x5c0c], ax       ; 0x1b19
@..api_idx_000a.l6:
    cmp word [bx + 0x5c0c], byte 0   ; 0x1b1d
    jg short @..api_idx_000a.l7      ; 0x1b22
    mov ax, 0                        ; 0x1b24
    push ax                          ; 0x1b27
    push word [bp + 0x4]             ; 0x1b28
    call loc_10b0                    ; 0x1b2b
    add sp, byte 4                   ; 0x1b2e
    jmp near loc_1c86                ; 0x1b31
@..api_idx_000a.l7:
    mov ax, 0x248                    ; 0x1b34
    imul word [bp + 0x4]             ; 0x1b37
    mov bx, ax                       ; 0x1b3a
    cmp word [bx + 0x5c10], byte 0   ; 0x1b3c
    jg short @..api_idx_000a.l8      ; 0x1b41
    mov word [bx + 0x5c10], 0        ; 0x1b43
    mov ax, 6                        ; 0x1b49
    push ax                          ; 0x1b4c
    call ds_dispatch_b7a9            ; 0x1b4d
    pop cx                           ; 0x1b50
    add ax, strict word 6            ; 0x1b51
    push ax                          ; 0x1b54
    mov ax, 0x248                    ; 0x1b55
    imul word [bp + 0x4]             ; 0x1b58
    mov bx, ax                       ; 0x1b5b
    pop ax                           ; 0x1b5d
    mov byte [bx + 0x5d5c], al       ; 0x1b5e
@..api_idx_000a.l8:
    cmp word [bp + 0x8], byte 0      ; 0x1b62
    jle short @..api_idx_000a.l9     ; 0x1b66
    mov ax, 0x248                    ; 0x1b68
    imul word [bp + 0x4]             ; 0x1b6b
    mov bx, ax                       ; 0x1b6e
    mov ax, word [bx + 0x5c12]       ; 0x1b70
    mov cx, word [bp + 0x8]          ; 0x1b74
    mov bx, cx                       ; 0x1b77
    imul bx                          ; 0x1b79
    mov cx, 0x64                     ; 0x1b7b
    mov bx, 0                        ; 0x1b7e
    call ds_dispatch_f99f            ; 0x1b81
    mov word [bp - 0x0006], ax       ; 0x1b84
    mov cx, 2                        ; 0x1b87
    cwd                              ; 0x1b8a
    idiv cx                          ; 0x1b8b
    push ax                          ; 0x1b8d
    call ds_dispatch_b7a9            ; 0x1b8e
    pop cx                           ; 0x1b91
    push ax                          ; 0x1b92
    mov ax, 0x248                    ; 0x1b93
    imul word [bp + 0x4]             ; 0x1b96
    mov bx, ax                       ; 0x1b99
    mov cx, word [bx + 0x5c10]       ; 0x1b9b
    pop ax                           ; 0x1b9f
    add ax, cx                       ; 0x1ba0
    push ax                          ; 0x1ba2
    mov ax, word [bp - 0x0006]       ; 0x1ba3
    mov cx, 2                        ; 0x1ba6
    cwd                              ; 0x1ba9
    idiv cx                          ; 0x1baa
    mov cx, ax                       ; 0x1bac
    pop ax                           ; 0x1bae
    add ax, cx                       ; 0x1baf
    inc ax                           ; 0x1bb1
    mov word [bx + 0x5c10], ax       ; 0x1bb2
    mov ax, word [bx + 0x5c10]       ; 0x1bb6
    cmp ax, word [bx + 0x5c12]       ; 0x1bba
    jle short @..api_idx_000a.l9     ; 0x1bbe
    mov ax, word [bx + 0x5c12]       ; 0x1bc0
    mov word [bx + 0x5c10], ax       ; 0x1bc4
@..api_idx_000a.l9:
    mov word [bp - 0x0004], 0        ; 0x1bc8
@..api_idx_000a.l10:
    mov ax, 0x248                    ; 0x1bcd
    imul word [bp + 0x4]             ; 0x1bd0
    add ax, word [bp - 0x0004]       ; 0x1bd3
    mov bx, ax                       ; 0x1bd6
    mov al, byte [bx + 0x5d5a]       ; 0x1bd8
    sub ah, ah                       ; 0x1bdc
    mov word [bp - 0x0006], ax       ; 0x1bde
    cmp ax, strict word 0            ; 0x1be1
    jle short @..api_idx_000a.l12    ; 0x1be4
    cmp ax, 0xff                     ; 0x1be6
    je short @..api_idx_000a.l12     ; 0x1be9
    mov ax, word [bp + 0xa]          ; 0x1beb
    sub word [bp - 0x0006], ax       ; 0x1bee
    cmp word [bp - 0x0006], byte 0   ; 0x1bf1
    jge short @..api_idx_000a.l11    ; 0x1bf5
    mov word [bp - 0x0006], 0        ; 0x1bf7
@..api_idx_000a.l11:
    mov al, byte [bp - 0x0006]       ; 0x1bfc
    mov byte [bx + 0x5d5a], al       ; 0x1bff
@..api_idx_000a.l12:
    inc word [bp - 0x0004]           ; 0x1c03
    mov ax, word [bp - 0x0004]       ; 0x1c06
    cmp ax, strict word 0xa          ; 0x1c09
    jl short @..api_idx_000a.l10     ; 0x1c0c
    mov ax, 0x248                    ; 0x1c0e
    imul word [bp + 0x4]             ; 0x1c11
    mov bx, ax                       ; 0x1c14
    cmp byte [bx + 0x5d5f], 0        ; 0x1c16
    je short @..api_idx_000a.l13     ; 0x1c1b
    cmp byte [bx + 0x5e32], 0        ; 0x1c1d
    jne short @..api_idx_000a.l14    ; 0x1c22
@..api_idx_000a.l13:
    mov byte [bx + 0x5d5f], 0        ; 0x1c24
    mov byte [bx + 0x5e32], 0        ; 0x1c29
@..api_idx_000a.l14:
    cmp word [bp + 0xc], byte 0      ; 0x1c2e
    jle short loc_1c86               ; 0x1c32
    mov word [bp - 0x0004], 0        ; 0x1c34
@..api_idx_000a.l15:
    mov ax, 0x248                    ; 0x1c39
    imul word [bp + 0x4]             ; 0x1c3c
    add ax, word [bp - 0x0004]       ; 0x1c3f
    mov bx, ax                       ; 0x1c42
    mov al, byte [bx + 0x5d54]       ; 0x1c44
    sub ah, ah                       ; 0x1c48
    inc ax                           ; 0x1c4a
    push ax                          ; 0x1c4b
    call ds_dispatch_b7a9            ; 0x1c4c
    pop cx                           ; 0x1c4f
    push ax                          ; 0x1c50
    mov ax, 0x248                    ; 0x1c51
    imul word [bp + 0x4]             ; 0x1c54
    mov cx, ax                       ; 0x1c57
    mov dx, word [bp - 0x0004]       ; 0x1c59
    shl dx, 1                        ; 0x1c5c
    shl dx, 1                        ; 0x1c5e
    add ax, dx                       ; 0x1c60
    mov bx, ax                       ; 0x1c62
    pop ax                           ; 0x1c64
    add word [bx + 0x5c1c], ax       ; 0x1c65
    mov ax, word [bx + 0x5c1c]       ; 0x1c69
    cmp ax, word [bx + 0x5c1e]       ; 0x1c6d
    jle short @..api_idx_000a.l16    ; 0x1c71
    mov ax, word [bx + 0x5c1e]       ; 0x1c73
    mov word [bx + 0x5c1c], ax       ; 0x1c77
@..api_idx_000a.l16:
    inc word [bp - 0x0004]           ; 0x1c7b
    mov ax, word [bp - 0x0004]       ; 0x1c7e
    cmp ax, strict word 6            ; 0x1c81
    jl short @..api_idx_000a.l15     ; 0x1c84
loc_1c86:
    mov ax, 1                        ; 0x1c86
    push ax                          ; 0x1c89
    push word [bp + 0x4]             ; 0x1c8a
    call ds_dispatch_cb3a            ; 0x1c8d
    add sp, byte 4                   ; 0x1c90
loc_1c93:
    ret                              ; 0x1c93
