api_idx_000a:
    mov ax, 0xfff6                   ; 0x195c
    call ds_dispatch_f40b            ; 0x195f
    mov ax, 0x248                    ; 0x1962
    imul word [bp + 0x4]             ; 0x1965
    mov bx, ax                       ; 0x1968
    cmp byte [bx + 0x5e2f], 3        ; 0x196a
    jb short @..api_idx_000a.l1      ; 0x196f
    jmp near @..api_idx_000a.l24     ; 0x1971
@..api_idx_000a.l1:
    cmp byte [bx + 0x5d60], 0        ; 0x1974
    ja short @..api_idx_000a.l2      ; 0x1979
    jmp near @..api_idx_000a.l11     ; 0x197b
@..api_idx_000a.l2:
    mov ax, 0x64                     ; 0x197e
    push ax                          ; 0x1981
    call ds_dispatch_b7a9            ; 0x1982
    pop cx                           ; 0x1985
    test ax, ax                      ; 0x1986
    je short @..api_idx_000a.l3      ; 0x1988
    jmp near @..api_idx_000a.l8      ; 0x198a
@..api_idx_000a.l3:
    mov ax, 6                        ; 0x198d
    push ax                          ; 0x1990
    call ds_dispatch_b7a9            ; 0x1991
    pop cx                           ; 0x1994
    jmp short @..api_idx_000a.l4     ; 0x1995
    mov word [bp - 0x0008], 3        ; 0x1997
    jmp short @..api_idx_000a.l5     ; 0x199c
    mov word [bp - 0x0008], 4        ; 0x199e
    jmp short @..api_idx_000a.l5     ; 0x19a3
    mov word [bp - 0x0008], 5        ; 0x19a5
    jmp short @..api_idx_000a.l5     ; 0x19aa
    mov word [bp - 0x0008], 7        ; 0x19ac
    jmp short @..api_idx_000a.l5     ; 0x19b1
    mov word [bp - 0x0008], 8        ; 0x19b3
    jmp short @..api_idx_000a.l5     ; 0x19b8
    mov word [bp - 0x0008], 9        ; 0x19ba
    jmp short @..api_idx_000a.l5     ; 0x19bf
    fisubr word [bx + di - 0x001b]   ; 0x19c1
    imul bp, sp, 0xf369              ; 0x19c4
    imul di, dx, 0x169               ; 0x19c8
    db 0x6a
@..api_idx_000a.l4:
    cmp ax, strict word 6            ; 0x19cd
    jae short @..api_idx_000a.l5     ; 0x19d0
    xchg bx, ax                      ; 0x19d2
    shl bx, 1                        ; 0x19d3
    jmp [cs:bx + 0x6a08]             ; 0x19d5
@..api_idx_000a.l5:
    mov ax, 0x248                    ; 0x19da
    imul word [bp + 0x4]             ; 0x19dd
    add ax, word [bp - 0x0008]       ; 0x19e0
    mov bx, ax                       ; 0x19e3
    mov byte [bx + 0x5d5a], 0xff     ; 0x19e5
    cmp word [bp - 0x0008], byte 5   ; 0x19ea
    jne short @..api_idx_000a.l6     ; 0x19ee
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
@..api_idx_000a.l6:
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
    jne short @..api_idx_000a.l7     ; 0x1a26
    mov ax, 0x248                    ; 0x1a28
    imul word [bp + 0x4]             ; 0x1a2b
    add ax, word [bp - 0x000a]       ; 0x1a2e
    mov bx, ax                       ; 0x1a31
    cmp byte [bx + 0x5d64], 1        ; 0x1a33
    jbe short @..api_idx_000a.l7     ; 0x1a38
    dec byte [bx + 0x5d64]           ; 0x1a3a
@..api_idx_000a.l7:
    mov ax, 0xa                      ; 0x1a3e
    push ax                          ; 0x1a41
    call ds_dispatch_b7a9            ; 0x1a42
    pop cx                           ; 0x1a45
    test ax, ax                      ; 0x1a46
    jne short @..api_idx_000a.l8     ; 0x1a48
    mov ax, 0x248                    ; 0x1a4a
    imul word [bp + 0x4]             ; 0x1a4d
    mov bx, ax                       ; 0x1a50
    cmp word [bx + 0x5c0e], byte 2   ; 0x1a52
    jle short @..api_idx_000a.l8     ; 0x1a57
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
@..api_idx_000a.l8:
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
    jle short @..api_idx_000a.l9     ; 0x1aaa
    mov ax, word [bx + 0x5c0e]       ; 0x1aac
    mov word [bx + 0x5c0c], ax       ; 0x1ab0
@..api_idx_000a.l9:
    cmp word [bx + 0x5c0c], byte 0   ; 0x1ab4
    jg short @..api_idx_000a.l10     ; 0x1ab9
    mov ax, 0                        ; 0x1abb
    push ax                          ; 0x1abe
    push word [bp + 0x4]             ; 0x1abf
    call math_loc_10b0               ; 0x1ac2
    add sp, byte 4                   ; 0x1ac5
@..api_idx_000a.l10:
    jmp near @..api_idx_000a.l23     ; 0x1ac8
@..api_idx_000a.l11:
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
    jle short @..api_idx_000a.l12    ; 0x1b13
    mov ax, word [bx + 0x5c0e]       ; 0x1b15
    mov word [bx + 0x5c0c], ax       ; 0x1b19
@..api_idx_000a.l12:
    cmp word [bx + 0x5c0c], byte 0   ; 0x1b1d
    jg short @..api_idx_000a.l13     ; 0x1b22
    mov ax, 0                        ; 0x1b24
    push ax                          ; 0x1b27
    push word [bp + 0x4]             ; 0x1b28
    call math_loc_10b0               ; 0x1b2b
    add sp, byte 4                   ; 0x1b2e
    jmp near @..api_idx_000a.l23     ; 0x1b31
@..api_idx_000a.l13:
    mov ax, 0x248                    ; 0x1b34
    imul word [bp + 0x4]             ; 0x1b37
    mov bx, ax                       ; 0x1b3a
    cmp word [bx + 0x5c10], byte 0   ; 0x1b3c
    jg short @..api_idx_000a.l14     ; 0x1b41
    mov word [bx + 0x5c10], 0        ; 0x1b43
    mov ax, 6                        ; 0x1b49
    push ax                          ; 0x1b4c
    call ds_dispatch_b7a9            ; 0x1b4d
    pop cx                           ; 0x1b50
    add ax, strict word 6            ; 0x1b51
    push ax                          ; 0x1b54
    mov ax, 0x248                    ; 0x1b55
    imul word [bp + 0x4]             ; 0x1b58
