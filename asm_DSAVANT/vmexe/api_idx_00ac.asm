api_idx_00ac:
    mov ax, 0xff54                   ; 0x7962
    call ds_dispatch_f40b            ; 0x7965
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
    mov ax, 0x90e6                   ; 0x79b8
    push ax                          ; 0x79bb
    call loc_15ab                    ; 0x79bc
    add sp, byte 6                   ; 0x79bf
    mov byte [bss_9136], 0           ; 0x79c2
    mov byte [bss_9186], 0           ; 0x79c7
    mov word [bp - 0x00a6], 1        ; 0x79cc
    cmp word [bss_8464], byte 0      ; 0x79d2
    je short @..api_idx_00ac.l1      ; 0x79d7
    jmp near @..api_idx_00ac.l12     ; 0x79d9
@..api_idx_00ac.l1:
    mov ax, 0x9136                   ; 0x79dc
    push ax                          ; 0x79df
    mov ax, word [bp + 0x8]          ; 0x79e0
    add ax, 0xd16                    ; 0x79e3
    push ax                          ; 0x79e6
    call ds_dispatch_b53b            ; 0x79e7
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
    jne short @..api_idx_00ac.l2     ; 0x7a0c
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
    jne short @..api_idx_00ac.l2     ; 0x7a2c
    mov ax, 0x248                    ; 0x7a2e
    imul word [bss_8462]             ; 0x7a31
    mov bx, ax                       ; 0x7a35
    mov al, byte [bx + 0x5d49]       ; 0x7a37
    sub ah, ah                       ; 0x7a3b
    mov word [bp - 0x004c], ax       ; 0x7a3d
@..api_idx_00ac.l2:
    mov bx, word [bp + 0x4]          ; 0x7a40
    cmp byte [bx + 0x2b], 0          ; 0x7a43
    je short @..api_idx_00ac.l3      ; 0x7a47
    cmp word [bp + 0x8], byte 4      ; 0x7a49
    je short @..api_idx_00ac.l3      ; 0x7a4d
    cmp word [bp + 0x8], byte 8      ; 0x7a4f
    je short @..api_idx_00ac.l3      ; 0x7a53
    mov ax, 0x9136                   ; 0x7a55
    push ax                          ; 0x7a58
    mov ax, 2                        ; 0x7a59
    push ax                          ; 0x7a5c
    call ds_dispatch_b7a9            ; 0x7a5d
    pop cx                           ; 0x7a60
    add ax, 0xd39                    ; 0x7a61
    push ax                          ; 0x7a64
    call ds_dispatch_b53b            ; 0x7a65
    add sp, byte 4                   ; 0x7a68
@..api_idx_00ac.l3:
    cmp word [bp - 0x004c], strict word 0xff ; 0x7a6b
    jne short @..api_idx_00ac.l4     ; 0x7a70
    jmp near @..api_idx_00ac.l11     ; 0x7a72
@..api_idx_00ac.l4:
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
    call ds_dispatch_b63c            ; 0x7a9a
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
    je short @..api_idx_00ac.l5      ; 0x7abe
    lea ax, word [bp - 0x004a]       ; 0x7ac0
    push ax                          ; 0x7ac3
    mov ax, 0x9186                   ; 0x7ac4
    push ax                          ; 0x7ac7
    call ds_dispatch_f364            ; 0x7ac8
    add sp, byte 4                   ; 0x7acb
    jmp short @..api_idx_00ac.l6     ; 0x7ace
@..api_idx_00ac.l5:
    mov ax, 0x9186                   ; 0x7ad0
    push ax                          ; 0x7ad3
    mov al, byte [bp - 0x0011]       ; 0x7ad4
    sub ah, ah                       ; 0x7ad7
    add ax, 0x1770                   ; 0x7ad9
    push ax                          ; 0x7adc
    call ds_dispatch_b53b            ; 0x7add
    add sp, byte 4                   ; 0x7ae0
@..api_idx_00ac.l6:
    mov ax, 0x9186                   ; 0x7ae3
    push ax                          ; 0x7ae6
    call api_idx_0002                ; 0x7ae7
    pop cx                           ; 0x7aea
    cmp word [bp + 0x8], byte 4      ; 0x7aeb
    je short @..api_idx_00ac.l7      ; 0x7aef
    cmp word [bp + 0x8], byte 8      ; 0x7af1
    je short @..api_idx_00ac.l7      ; 0x7af5
    jmp near @..api_idx_00ac.l11     ; 0x7af7
@..api_idx_00ac.l7:
    cmp word [bp + 0x8], byte 4      ; 0x7afa
    jne short @..api_idx_00ac.l8     ; 0x7afe
    cmp word [bp - 0x0028], byte 0   ; 0x7b00
    je short @..api_idx_00ac.l8      ; 0x7b04
    mov ax, word [bp - 0x0028]       ; 0x7b06
    mov word [bp - 0x0094], ax       ; 0x7b09
    mov ax, 0x9136                   ; 0x7b0d
    push ax                          ; 0x7b10
    mov ax, 0xd38                    ; 0x7b11
    push ax                          ; 0x7b14
    call ds_dispatch_b53b            ; 0x7b15
    add sp, byte 4                   ; 0x7b18
@..api_idx_00ac.l8:
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
    jmp near @..api_idx_00ac.l9      ; 0x7b36

    db 0xc7, 0x46, 0x8a, 0x00, 0x00, 0xe9, 0x0f, 0x01, 0xc7, 0x46, 0x8a, 0x14, 0x00, 0xe9, 0x07, 0x01
    db 0xc7, 0x46, 0x8a, 0x11, 0x00, 0xe9, 0xff, 0x00, 0xc7, 0x46, 0x8a, 0x02, 0x00, 0xe9, 0xf7, 0x00
    db 0xc7, 0x46, 0x8a, 0x04, 0x00, 0xe9, 0xef, 0x00, 0xc7, 0x46, 0x8a, 0x10, 0x00, 0xe9, 0xe7, 0x00
    db 0xc7, 0x46, 0x8a, 0x12, 0x00, 0xe9, 0xdf, 0x00, 0xc7, 0x46, 0x8a, 0x13, 0x00, 0xe9, 0xd7, 0x00
    db 0xc7, 0x46, 0x8a, 0x16, 0x00, 0xe9, 0xcf, 0x00, 0xc7, 0x46, 0x8a, 0x06, 0x00, 0xe9, 0xc7, 0x00
    db 0xb8, 0x48, 0x02, 0xf7, 0x2e, 0x62, 0x84, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb4, 0x8b, 0xc8
    db 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x80, 0xbf, 0x3a, 0x5c, 0x00, 0x76, 0x0d, 0xc7, 0x46, 0x8a, 0x0f
    db 0x00, 0xc7, 0x06, 0xde, 0x90, 0x0c, 0x00, 0xeb, 0x06, 0xc7, 0x86, 0x5c, 0xff, 0x01, 0x00, 0xb8
    db 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x78, 0x39, 0x83, 0xc4, 0x04, 0xe9, 0x87, 0x00
    db 0xb8, 0x48, 0x02, 0xf7, 0x2e, 0x62, 0x84, 0x50, 0xb8, 0x0c, 0x00, 0xf7, 0x6e, 0xb4, 0x8b, 0xc8
    db 0x58, 0x03, 0xc1, 0x8b, 0xd8, 0x80, 0xbf, 0x3a, 0x5c, 0x00, 0x76, 0x0d, 0xc7, 0x46, 0x8a, 0x08
    db 0x00, 0xc7, 0x06, 0xde, 0x90, 0x05, 0x00, 0xeb, 0x06, 0xc7, 0x86, 0x5c, 0xff, 0x01, 0x00, 0xb8
    db 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x38, 0x39, 0x83, 0xc4, 0x04, 0xeb, 0x48

@..api_idx_00ac.l9:
    mov cx, 0x11                     ; 0x7c08
    call leaf_loc_a508               ; 0x7c0b
    add byte [bx + si], al           ; 0x7c0e
    adc al, byte [bx + si]           ; 0x7c10
    adc ax, 0x1600                   ; 0x7c12
    add byte [bx], dl                ; 0x7c15
    add byte [bx + si], ah           ; 0x7c17
    add byte [bp + si], ah           ; 0x7c19
    db 0x00, 0x53, 0x00 ; add byte [bp + di], dl
    db 0x64, 0x00, 0x65, 0x00 ; add byte [fs:di], ah
    db 0x66, 0x00, 0x67, 0x00 ; add byte [bx], ah
    push 0x6e00                      ; 0x7c26
    db 0x00, 0x70, 0x00 ; add byte [bx + si], dh
    jb short @..api_idx_00ac.l10     ; 0x7c2c
@..api_idx_00ac.l10:
    or bl, 0x88                      ; 0x7c2e
    retf                             ; 0x7c31
loc_7c32:
    nop                              ; 0x7c32
    retf                             ; 0x7c33
    cbw                              ; 0x7c34
    retf                             ; 0x7c35
    test al, 0xcb                    ; 0x7c36
    mov ax, 0xc0cb                   ; 0x7c38
    retf                             ; 0x7c3b
    mov al, byte [data_b0cb]         ; 0x7c3c
    retf                             ; 0x7c3f
    mov ax, 0xb0cb                   ; 0x7c40
    retf                             ; 0x7c43
    mov ax, 0xd0cb                   ; 0x7c44
    retf                             ; 0x7c47
    ror bl, 1                        ; 0x7c48
    enter 0x10cb, 0xffcc             ; 0x7c4a
    xchg di, ax                      ; 0x7c4e
    int3                             ; 0x7c4f
@..api_idx_00ac.l11:
    jmp near @..api_idx_00ac.l20     ; 0x7c50
@..api_idx_00ac.l12:
    mov ax, word [bss_8464]          ; 0x7c53
    shl ax, 1                        ; 0x7c56
    mov bx, ax                       ; 0x7c58
    mov bx, word [bx - 0x7b70]       ; 0x7c5a
    mov si, word [bp + 0x6]          ; 0x7c5e
    cmp byte [bx + si + 0x86], 3     ; 0x7c61
    jbe short @..api_idx_00ac.l13    ; 0x7c66
    jmp near @..api_idx_00ac.l19     ; 0x7c68
@..api_idx_00ac.l13:
    mov ax, 0x9136                   ; 0x7c6b
    push ax                          ; 0x7c6e
    mov ax, word [bp + 0x8]          ; 0x7c6f
    add ax, 0xd16                    ; 0x7c72
    push ax                          ; 0x7c75
    call ds_dispatch_b53b            ; 0x7c76
    add sp, byte 4                   ; 0x7c79
    mov bx, word [bp + 0x4]          ; 0x7c7c
    cmp byte [bx + 0x2b], 0          ; 0x7c7f
    je short @..api_idx_00ac.l14     ; 0x7c83
    mov ax, word [bp + 0x8]          ; 0x7c85
    cmp ax, strict word 4            ; 0x7c88
    je short @..api_idx_00ac.l14     ; 0x7c8b
    cmp ax, strict word 8            ; 0x7c8d
    je short @..api_idx_00ac.l14     ; 0x7c90
    mov ax, 0x9136                   ; 0x7c92
    push ax                          ; 0x7c95
    mov ax, 2                        ; 0x7c96
    push ax                          ; 0x7c99
    call ds_dispatch_b7a9            ; 0x7c9a
    pop cx                           ; 0x7c9d
    add ax, 0xd39                    ; 0x7c9e
    push ax                          ; 0x7ca1
    call ds_dispatch_b53b            ; 0x7ca2
    add sp, byte 4                   ; 0x7ca5
@..api_idx_00ac.l14:
    cmp word [bp + 0x8], byte 4      ; 0x7ca8
    je short @..api_idx_00ac.l15     ; 0x7cac
    cmp word [bp + 0x8], byte 8      ; 0x7cae
    je short @..api_idx_00ac.l15     ; 0x7cb2
    jmp near @..api_idx_00ac.l17     ; 0x7cb4
@..api_idx_00ac.l15:
    mov ax, 0x12                     ; 0x7cb7
    imul word [bp + 0x6]             ; 0x7cba
    mov si, ax                       ; 0x7cbd
    mov ax, word [bss_8464]          ; 0x7cbf
    shl ax, 1                        ; 0x7cc2
    mov bx, ax                       ; 0x7cc4
    mov bx, word [bx - 0x7b70]       ; 0x7cc6
    mov ax, word [bx + si + 0x44]    ; 0x7cca
    mov word [bp - 0x0070], ax       ; 0x7ccd
    mov ax, word [bx + si + 0x46]    ; 0x7cd0
    mov word [bp - 0x006e], ax       ; 0x7cd3
    mov si, word [bp + 0x6]          ; 0x7cd6
    mov al, byte [bx + si + 0x89]    ; 0x7cd9
    sub ah, ah                       ; 0x7cdd
    jmp near @..api_idx_00ac.l16     ; 0x7cdf

    db 0xc7, 0x46, 0x8a, 0x15, 0x00, 0xe9, 0xfe, 0x01, 0xc7, 0x86, 0x6c, 0xff, 0x14, 0x07, 0xc7, 0x46
    db 0x8a, 0x0a, 0x00, 0xc7, 0x06, 0xde, 0x90, 0x0b, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d
    db 0x50, 0xe8, 0x35, 0x38, 0x83, 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0xd6, 0x01
    db 0xc7, 0x86, 0x6c, 0xff, 0x06, 0x05, 0xc7, 0x46, 0x8a, 0x08, 0x00, 0xc7, 0x06, 0xde, 0x90, 0x0b
    db 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x0d, 0x38, 0x83, 0xc4, 0x04, 0xc7
    db 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0xae, 0x01, 0xc7, 0x46, 0x8a, 0x08, 0x00, 0xc7, 0x06, 0xde
    db 0x90, 0x05, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0xeb, 0x37, 0x83, 0xc4
    db 0x04, 0xc7, 0x86, 0x5a, 0xff, 0x00, 0x00, 0xe9, 0x8c, 0x01, 0xc7, 0x46, 0x8a, 0x02, 0x00, 0xc7
    db 0x86, 0x5a, 0xff, 0x00, 0x00, 0xe9, 0x7e, 0x01, 0xc7, 0x86, 0x5a, 0xff, 0x02, 0x00, 0x83, 0xbe
    db 0x5a, 0xff, 0x01, 0x75, 0x06, 0xc7, 0x86, 0x5a, 0xff, 0x03, 0x00, 0xc7, 0x46, 0x8a, 0x0f, 0x00
    db 0xc7, 0x06, 0xde, 0x90, 0x0c, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0xa8
    db 0x37, 0x83, 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0x49, 0x01, 0xc7, 0x46, 0x8a
    db 0x00, 0x00, 0xe9, 0x41, 0x01, 0xc7, 0x46, 0x8a, 0x0c, 0x00, 0xe9, 0x39, 0x01, 0xc7, 0x46, 0x8a
    db 0x10, 0x00, 0xe9, 0x31, 0x01, 0xc7, 0x46, 0x8a, 0x06, 0x00, 0xe9, 0x29, 0x01, 0xc7, 0x46, 0x8a
    db 0x11, 0x00, 0xe9, 0x21, 0x01, 0xc7, 0x46, 0x8a, 0x04, 0x00, 0xc7, 0x86, 0x5a, 0xff, 0x00, 0x00
    db 0xe9, 0x13, 0x01, 0xc7, 0x86, 0x6c, 0xff, 0x43, 0x06, 0xc7, 0x46, 0x8a, 0x16, 0x00, 0xc7, 0x06
    db 0xde, 0x90, 0x0a, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x4a, 0x37, 0x83
    db 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0xeb, 0x00, 0xc7, 0x86, 0x6c, 0xff, 0x02
    db 0x07, 0xc7, 0x46, 0x8a, 0x0c, 0x00, 0xc7, 0x06, 0xde, 0x90, 0x0c, 0x00, 0xb8, 0x36, 0x91, 0x50
    db 0xb8, 0x1f, 0x0d, 0x50, 0xe8, 0x22, 0x37, 0x83, 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00
    db 0xe9, 0xc3, 0x00, 0xc7, 0x86, 0x56, 0xff, 0xa4, 0x00, 0xc7, 0x86, 0x6c, 0xff, 0x41, 0x06, 0xc7
    db 0x46, 0x8a, 0x0e, 0x00, 0xb8, 0x39, 0x00, 0x50, 0xe8, 0x6d, 0x59, 0x59, 0xc7, 0x86, 0x58, 0xff
    db 0x2c, 0x00, 0xc7, 0x06, 0xde, 0x90, 0x10, 0x00, 0xb8, 0x36, 0x91, 0x50, 0xb8, 0x3c, 0x0d, 0x50
    db 0xe8, 0xe6, 0x36, 0x83, 0xc4, 0x04, 0xc7, 0x86, 0x54, 0xff, 0x01, 0x00, 0xe9, 0x87, 0x00, 0x2f
    db 0xcf, 0x29, 0xcd, 0x29, 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x81, 0xcd, 0x2f
    db 0xcf, 0xa3, 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0xc4, 0xcd, 0xc4, 0xcd, 0xc4, 0xcd, 0xe6
    db 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0xee, 0xcd, 0x2f
    db 0xcf, 0x81, 0xcd, 0x2f, 0xcf, 0xe6, 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0xf6, 0xcd, 0xfe, 0xcd, 0xa3
    db 0xcd, 0xc4, 0xcd, 0xe6, 0xcd, 0x2f, 0xcf, 0x06, 0xce, 0x0e, 0xce, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f
    db 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0xc4, 0xcd, 0x2f, 0xcf, 0x2f, 0xcf, 0x2f, 0xcf, 0xf6, 0xcd, 0x2f
    db 0xcf, 0x31, 0xcd, 0x59, 0xcd, 0x2f, 0xcf, 0x1c, 0xce, 0xb1, 0xcd, 0xb7, 0xcd, 0x2f, 0xcf, 0x44
    db 0xce, 0x2f, 0xcf, 0x2f, 0xcf, 0xc4, 0xcd, 0x6c, 0xce

@..api_idx_00ac.l16:
    cmp ax, strict word 0x3d         ; 0x7edb
    jae short @..api_idx_00ac.l17    ; 0x7ede
    xchg bx, ax                      ; 0x7ee0
    shl bx, 1                        ; 0x7ee1
    jmp [cs:bx - 0x3158]             ; 0x7ee3
@..api_idx_00ac.l17:
    mov ax, word [bss_8464]          ; 0x7ee8
    shl ax, 1                        ; 0x7eeb
    mov bx, ax                       ; 0x7eed
    mov bx, word [bx - 0x7b70]       ; 0x7eef
    mov si, word [bp + 0x6]          ; 0x7ef3
    cmp byte [bx + si + 0x89], 0     ; 0x7ef6
    jbe short @..api_idx_00ac.l18    ; 0x7efb
    mov ax, 0x9186                   ; 0x7efd
    push ax                          ; 0x7f00
    mov al, byte [bx + si + 0x89]    ; 0x7f01
    sub ah, ah                       ; 0x7f05
    add ax, 0xed7                    ; 0x7f07
    push ax                          ; 0x7f0a
    call ds_dispatch_b53b            ; 0x7f0b
    add sp, byte 4                   ; 0x7f0e
@..api_idx_00ac.l18:
    jmp short @..api_idx_00ac.l20    ; 0x7f11
@..api_idx_00ac.l19:
    mov ax, 0x9136                   ; 0x7f13
    push ax                          ; 0x7f16
    mov ax, word [bss_8464]          ; 0x7f17
    shl ax, 1                        ; 0x7f1a
    mov bx, ax                       ; 0x7f1c
    mov bx, word [bx - 0x7b70]       ; 0x7f1e
    mov si, word [bp + 0x6]          ; 0x7f22
    mov al, byte [bx + si + 0x86]    ; 0x7f25
    sub ah, ah                       ; 0x7f29
    add ax, 0xd2b                    ; 0x7f2b
    push ax                          ; 0x7f2e
    call ds_dispatch_b53b            ; 0x7f2f
    add sp, byte 4                   ; 0x7f32
@..api_idx_00ac.l20:
    cmp word [bp - 0x00a6], byte 0   ; 0x7f35
    jle short @..api_idx_00ac.l21    ; 0x7f3a
    mov ax, 0x2c                     ; 0x7f3c
    imul word [bss_8462]             ; 0x7f3f
    mov si, ax                       ; 0x7f43
    mov ax, word [bss_8464]          ; 0x7f45
    shl ax, 1                        ; 0x7f48
    mov bx, ax                       ; 0x7f4a
    mov bx, word [bx - 0x7b7e]       ; 0x7f4c
    cmp byte [bx + si + 0x2a], 0xff  ; 0x7f50
    je short @..api_idx_00ac.l21     ; 0x7f54
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
    call api_idx_000a                ; 0x7f79
    add sp, byte 8                   ; 0x7f7c
    mov ax, 5                        ; 0x7f7f
    push ax                          ; 0x7f82
    call api_idx_0004_5              ; 0x7f83
    pop cx                           ; 0x7f86
@..api_idx_00ac.l21:
    push word [bp - 0x00aa]          ; 0x7f87
    push word [bp - 0x00aa]          ; 0x7f8b
    mov ax, 0x43                     ; 0x7f8f
    cmp word [bss_8464], byte 0      ; 0x7f92
    jne short @..api_idx_00ac.l22    ; 0x7f97
    mov ax, 1                        ; 0x7f99
@..api_idx_00ac.l22:
    push ax                          ; 0x7f9c
    mov ax, 0x9186                   ; 0x7f9d
    push ax                          ; 0x7fa0
    mov ax, 0x9136                   ; 0x7fa1
    push ax                          ; 0x7fa4
    mov ax, 0x90e6                   ; 0x7fa5
    push ax                          ; 0x7fa8
    mov ax, 0                        ; 0x7fa9
    push ax                          ; 0x7fac
    call api_idx_0004_4              ; 0x7fad
    add sp, byte 0x0e                ; 0x7fb0
    cmp word [bp - 0x0094], byte 0xff ; 0x7fb3
    jne short @..api_idx_00ac.l24    ; 0x7fb8
    cmp word [bp - 0x00a4], byte 0   ; 0x7fba
    jne short @..api_idx_00ac.l24    ; 0x7fbf
    push word [bp - 0x0050]          ; 0x7fc1
    push word [bp - 0x004e]          ; 0x7fc4
    mov ax, 0x90e6                   ; 0x7fc7
    push ax                          ; 0x7fca
    call loc_15ab                    ; 0x7fcb
    add sp, byte 6                   ; 0x7fce
    mov ax, 2                        ; 0x7fd1
    push ax                          ; 0x7fd4
    mov ax, 0x43                     ; 0x7fd5
    cmp word [bp - 0x004e], byte 0   ; 0x7fd8
    jne short @..api_idx_00ac.l23    ; 0x7fdc
    mov ax, 1                        ; 0x7fde
@..api_idx_00ac.l23:
    push ax                          ; 0x7fe1
    mov ax, 0x90e6                   ; 0x7fe2
    push ax                          ; 0x7fe5
    call api_idx_0002_2              ; 0x7fe6
    add sp, byte 6                   ; 0x7fe9
@..api_idx_00ac.l24:
    cmp word [bp - 0x0076], byte 0xff ; 0x7fec
    je short @..api_idx_00ac.l28     ; 0x7ff0
    mov word [bss_91d8], 0           ; 0x7ff2
    push word [bss_90de]             ; 0x7ff8
    mov ax, word [bp - 0x0094]       ; 0x7ffc
    mov cx, 0x100                    ; 0x8000
    cwd                              ; 0x8003
    idiv cx                          ; 0x8004
    mov ax, dx                       ; 0x8006
    cmp ax, strict word 0x41         ; 0x8008
    je short @..api_idx_00ac.l25     ; 0x800b
    mov ax, word [bp - 0x0094]       ; 0x800d
    cmp ax, strict word 0xffff       ; 0x8011
    jne short @..api_idx_00ac.l26    ; 0x8014
@..api_idx_00ac.l25:
    mov ax, 0                        ; 0x8016
    jmp short @..api_idx_00ac.l27    ; 0x8019
@..api_idx_00ac.l26:
    mov ax, 1                        ; 0x801b
@..api_idx_00ac.l27:
    push ax                          ; 0x801e
    push word [bp - 0x0076]          ; 0x801f
    push word [bp - 0x0050]          ; 0x8022
    push word [bp - 0x004e]          ; 0x8025
    call api_idx_0004_9              ; 0x8028
    add sp, byte 0x0a                ; 0x802b
    mov word [bp - 0x009e], 0xffff   ; 0x802e
@..api_idx_00ac.l28:
    mov ax, word [bp - 0x004e]       ; 0x8034
    shl ax, 1                        ; 0x8037
    mov bx, ax                       ; 0x8039
    mov bx, word [bx - 0x7b70]       ; 0x803b
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
    mov bx, word [bx - 0x7b70]       ; 0x8065
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
    je short @..api_idx_00ac.l29     ; 0x80a0
    jmp near @..api_idx_00ac.l55     ; 0x80a2
@..api_idx_00ac.l29:
    cmp word [bp + 0x8], byte 4      ; 0x80a5
    jne short @..api_idx_00ac.l30    ; 0x80a9
    mov word [bp - 0x007c], 5        ; 0x80ab
    jmp near @..api_idx_00ac.l37     ; 0x80b0
@..api_idx_00ac.l30:
    mov ax, 0x248                    ; 0x80b3
    imul word [bss_8462]             ; 0x80b6
    add ax, word [bp + 0x6]          ; 0x80ba
    mov bx, ax                       ; 0x80bd
    mov al, byte [bx + 0x5d48]       ; 0x80bf
    sub ah, ah                       ; 0x80c3
    cmp ax, 0xff                     ; 0x80c5
    jne short @..api_idx_00ac.l31    ; 0x80c8
    jmp near @..api_idx_00ac.l36     ; 0x80ca
@..api_idx_00ac.l31:
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
    jmp short @..api_idx_00ac.l32    ; 0x80ed

    db 0xc7, 0x46, 0x84, 0x00, 0x00, 0xe9, 0xf4, 0x00, 0xc7, 0x46, 0x84, 0x01, 0x00, 0xe9, 0xec, 0x00
    db 0xc7, 0x46, 0x84, 0x02, 0x00, 0xe9, 0xe4, 0x00, 0xc7, 0x46, 0x84, 0x03, 0x00, 0xe9, 0xdc, 0x00
    db 0xc7, 0x46, 0x84, 0x04, 0x00, 0xe9, 0xd4, 0x00, 0xc7, 0x46, 0x84, 0x07, 0x00, 0xe9, 0xcc, 0x00
    db 0xc7, 0x46, 0x84, 0x06, 0x00, 0xe9, 0xc4, 0x00, 0xc7, 0x46, 0x84, 0x08, 0x00, 0xe9, 0xbc, 0x00
    db 0xc7, 0x46, 0x84, 0x12, 0x00, 0xe9, 0xb4, 0x00, 0xc7, 0x46, 0x84, 0x09, 0x00, 0xe9, 0xac, 0x00

@..api_idx_00ac.l32:
    mov cx, 0x2a                     ; 0x813f
    call leaf_loc_a508               ; 0x8142
    add byte [bx + si], al           ; 0x8145
    add word [bx + si], ax           ; 0x8147
    add al, byte [bx + si]           ; 0x8149
    add ax, word [bx + si]           ; 0x814b
    add al, 0                        ; 0x814d
    add ax, 0x600                    ; 0x814f
    add byte [bx], al                ; 0x8152
    add byte [bx + si], cl           ; 0x8154
    add byte [bx + di], cl           ; 0x8156
    add byte [bp + si], cl           ; 0x8158
    add byte [bp + di], cl           ; 0x815a
    add byte [si], cl                ; 0x815c
    add byte [di], cl                ; 0x815e
    add byte [bss_0f00], cl          ; 0x8160
    add byte [bx + si], dl           ; 0x8164
    add byte [bx + di], dl           ; 0x8166
    add byte [bp + si], dl           ; 0x8168
    add byte [bp + di], dl           ; 0x816a
    add byte [si], dl                ; 0x816c
    add byte [bx + si], bl           ; 0x816e
    add byte [di], ah                ; 0x8170
    add byte [bss_3300], ah          ; 0x8172
    add byte [si], dh                ; 0x8176
    add byte [di], dh                ; 0x8178
    add byte [bss_3700], dh          ; 0x817a
    add byte [bx + si], bh           ; 0x817e
    add byte [bx + di], bh           ; 0x8180
    add byte [bp + si], bh           ; 0x8182
    add byte [bp + di], bh           ; 0x8184
    db 0x00, 0x58, 0x00 ; add byte [bx + si], bl
    pop dx                           ; 0x8189
    db 0x00, 0x68, 0x00 ; add byte [bx + si], ch
    imul ax, word [bx + si], 0x6a    ; 0x818d
    insb                             ; 0x8191
    add byte [bp], ch                ; 0x8192
    jb short @..api_idx_00ac.l33     ; 0x8195
@..api_idx_00ac.l33:
    sar word [ss:bss_46d1], 1        ; 0x8197
    rol word [bp - 0x002f], 1        ; 0x819c
    dec si                           ; 0x819f
    ror word [bp - 0x002f], 1        ; 0x81a0
    dec si                           ; 0x81a3
    rcl word [bp - 0x002f], 1        ; 0x81a4
    push si                          ; 0x81a7
    rcl word [bp - 0x002f], 1        ; 0x81a8
    push si                          ; 0x81ab
    rcr word [bp - 0x002f], 1        ; 0x81ac
    pop si                           ; 0x81af
loc_81b0:
    shl word [bp - 0x002f], 1        ; 0x81b0
    sar word [ds:bss_3ed1], 1        ; 0x81b3
    db 0xd1, 0x56
@..api_idx_00ac.l34:
    db 0xd1, 0x36
@..api_idx_00ac.l35:
    db 0xd1, 0x56, 0xd1
    inc si                           ; 0x81bf
    shr word [bp - 0x002f], 1        ; 0x81c0
    pop si                           ; 0x81c3
    shr word [bp - 0x002f], 1        ; 0x81c4
    ror word [ds:bp - 0x002f], 1     ; 0x81c7
    ror word [ds:bp - 0x002f], 1     ; 0x81cb
    ror word [ds:bp - 0x002f], 1     ; 0x81cf
    push si                          ; 0x81d3
    sar word [bss_3ed1], 1           ; 0x81d4
    db 0xd1, 0x36, 0xd1, 0x56 ; sal word [bss_56d1], 1
    db 0xd1, 0x76, 0xd1 ; sal word [bp - 0x002f], 1
    push si                          ; 0x81df
    rcl word [bp - 0x002f], 1        ; 0x81e0
    db 0x3e, 0xd1, 0x76, 0xd1 ; sal word [ds:bp - 0x002f], 1
    jbe short @..api_idx_00ac.l34    ; 0x81e7
    jle short @..api_idx_00ac.l35    ; 0x81e9
    jmp short @..api_idx_00ac.l37    ; 0x81eb
@..api_idx_00ac.l36:
    mov word [bp - 0x007c], 9        ; 0x81ed
@..api_idx_00ac.l37:
    cmp word [bp - 0x007c], byte 9   ; 0x81f2
    jne short @..api_idx_00ac.l38    ; 0x81f6
    mov ax, 0x248                    ; 0x81f8
    imul word [bss_8462]             ; 0x81fb
    mov bx, ax                       ; 0x81ff
    cmp byte [bx + 0x5d75], 0        ; 0x8201
    ja short @..api_idx_00ac.l38     ; 0x8206
    cmp byte [bx + 0x5e2d], 0xc      ; 0x8208
    je short @..api_idx_00ac.l38     ; 0x820d
    cmp byte [bx + 0x5e2d], 0xd      ; 0x820f
    jne short @..api_idx_00ac.l40    ; 0x8214
@..api_idx_00ac.l38:
    cmp word [bp - 0x007c], byte 0x12 ; 0x8216
    jne short @..api_idx_00ac.l39    ; 0x821a
    mov ax, 0x248                    ; 0x821c
    imul word [bss_8462]             ; 0x821f
    mov bx, ax                       ; 0x8223
    cmp byte [bx + 0x5d7e], 0        ; 0x8225
    jbe short @..api_idx_00ac.l40    ; 0x822a
@..api_idx_00ac.l39:
    mov ax, 2                        ; 0x822c
    push ax                          ; 0x822f
    push word [bp - 0x007c]          ; 0x8230
    push word [bss_8462]             ; 0x8233
    call loc_1bf4                    ; 0x8237
    add sp, byte 6                   ; 0x823a
@..api_idx_00ac.l40:
    push word [bss_8462]             ; 0x823d
    call api_idx_0012                ; 0x8241
    pop cx                           ; 0x8244
    mov si, ax                       ; 0x8245
    lea di, word [bp - 0x008e]       ; 0x8247
    mov cx, ds                       ; 0x824b
    mov es, cx                       ; 0x824d
    mov cx, 7                        ; 0x824f
    rep movsw                        ; 0x8252
    mov ax, word [bp - 0x008a]       ; 0x8254
    cmp word [bp + 0x6], byte 0      ; 0x8258
    jne short @..api_idx_00ac.l41    ; 0x825c
    mov ax, word [bp - 0x008c]       ; 0x825e
@..api_idx_00ac.l41:
    mov word [bp - 0x0090], ax       ; 0x8262
    mov bx, word [bp + 0x4]          ; 0x8266
    push word [bx + 0x8]             ; 0x8269
    push word [bx + 0x6]             ; 0x826c
    mov ax, 0                        ; 0x826f
    push ax                          ; 0x8272
    call api_idx_0004                ; 0x8273
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
    jne short @..api_idx_00ac.l42    ; 0x82f1
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
@..api_idx_00ac.l42:
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
    je short @..api_idx_00ac.l43     ; 0x8386
    jmp near @..api_idx_00ac.l50     ; 0x8388
@..api_idx_00ac.l43:
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
    jne short @..api_idx_00ac.l44    ; 0x83ae
    jmp near @..api_idx_00ac.l48     ; 0x83b0
@..api_idx_00ac.l44:
    cmp byte [bx + 0x5c3a], 0        ; 0x83b3
    jne short @..api_idx_00ac.l45    ; 0x83b8
    mov ax, word [bss_9058]          ; 0x83ba
    mov cx, 2                        ; 0x83bd
    cwd                              ; 0x83c0
    idiv cx                          ; 0x83c1
    push ax                          ; 0x83c3
    call api_idx_0004_5              ; 0x83c4
    pop cx                           ; 0x83c7
    mov ax, 2                        ; 0x83c8
    push ax                          ; 0x83cb
    mov ax, 0x55                     ; 0x83cc
    push ax                          ; 0x83cf
    mov ax, 0xc93                    ; 0x83d0
    push ax                          ; 0x83d3
    call api_idx_0050                ; 0x83d4
    add sp, byte 6                   ; 0x83d7
    mov ax, word [bss_9058]          ; 0x83da
    mov cx, 2                        ; 0x83dd
    cwd                              ; 0x83e0
    idiv cx                          ; 0x83e1
    push ax                          ; 0x83e3
    call api_idx_0004_5              ; 0x83e4
    pop cx                           ; 0x83e7
    ret                              ; 0x83e8
@..api_idx_00ac.l45:
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
    je short @..api_idx_00ac.l46     ; 0x8407
    dec byte [bx + 0x5c3a]           ; 0x8409
@..api_idx_00ac.l46:
    mov bx, word [bp - 0x0052]       ; 0x840d
    cmp byte [bx + 0x11], 0x16       ; 0x8410
    jne short @..api_idx_00ac.l47    ; 0x8414
    mov ax, word [bp - 0x004e]       ; 0x8416
    shl ax, 1                        ; 0x8419
    mov bx, ax                       ; 0x841b
    mov bx, word [bx - 0x7b70]       ; 0x841d
    cmp byte [bx + 0xd6], 0x16       ; 0x8421
    jne short @..api_idx_00ac.l47    ; 0x8426
    mov word [bp - 0x00a2], 1        ; 0x8428
    mov ax, 4                        ; 0x842e
    push ax                          ; 0x8431
    push ax                          ; 0x8432
    push ax                          ; 0x8433
    call ds_dispatch_d0ea            ; 0x8434
    add sp, byte 6                   ; 0x8437
    mov bx, ax                       ; 0x843a
    mov ax, word [bx]                ; 0x843c
    mov word [bp - 0x0070], ax       ; 0x843e
    mov ax, word [bx + 0x2]          ; 0x8441
    mov word [bp - 0x006e], ax       ; 0x8444
@..api_idx_00ac.l47:
    jmp short @..api_idx_00ac.l49    ; 0x8447
@..api_idx_00ac.l48:
    mov ax, 0x248                    ; 0x8449
    imul word [bss_8462]             ; 0x844c
    mov bx, ax                       ; 0x8450
    mov al, byte [bx + 0x5d49]       ; 0x8452
    sub ah, ah                       ; 0x8456
    mov word [bp - 0x0074], ax       ; 0x8458
    cmp ax, 0xff                     ; 0x845b
    je short @..api_idx_00ac.l49     ; 0x845e
    mov cx, 0xc                      ; 0x8460
    imul cx                          ; 0x8463
    add bx, ax                       ; 0x8465
    cmp byte [bx + 0x5c38], 4        ; 0x8467
    jne short @..api_idx_00ac.l49    ; 0x846c
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
    call api_idx_000e_3              ; 0x84a8
    add sp, byte 6                   ; 0x84ab
@..api_idx_00ac.l49:
    jmp short @..api_idx_00ac.l53    ; 0x84ae
@..api_idx_00ac.l50:
    cmp word [bp + 0x8], byte 4      ; 0x84b0
    jne short @..api_idx_00ac.l53    ; 0x84b4
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
    je short @..api_idx_00ac.l51     ; 0x84d1
    cmp al, 0xc                      ; 0x84d3
    jae short @..api_idx_00ac.l52    ; 0x84d5
    cmp al, 2                        ; 0x84d7
    je short @..api_idx_00ac.l52     ; 0x84d9
@..api_idx_00ac.l51:
    mov byte [bx + 0x5c3a], 1        ; 0x84db
@..api_idx_00ac.l52:
    mov word [bp - 0x007e], 0        ; 0x84e0
    push word [bp - 0x0072]          ; 0x84e5
    mov ax, 0                        ; 0x84e8
    push ax                          ; 0x84eb
    push word [bss_8462]             ; 0x84ec
    call api_idx_000e_3              ; 0x84f0
    add sp, byte 6                   ; 0x84f3
@..api_idx_00ac.l53:
    mov ax, 0x2c                     ; 0x84f6
    imul word [bp - 0x0050]          ; 0x84f9
    mov si, ax                       ; 0x84fc
    mov ax, word [bp - 0x004e]       ; 0x84fe
    shl ax, 1                        ; 0x8501
    mov bx, ax                       ; 0x8503
    mov bx, word [bx - 0x7b7e]       ; 0x8505
    push word [bx + si + 0x8]        ; 0x8509
    push word [bx + si + 0x6]        ; 0x850c
    mov ax, 1                        ; 0x850f
    push ax                          ; 0x8512
    call api_idx_0004                ; 0x8513
    add sp, byte 6                   ; 0x8516
    push ax                          ; 0x8519
    mov ax, 0x2c                     ; 0x851a
    imul word [bp - 0x0050]          ; 0x851d
    mov si, ax                       ; 0x8520
    mov ax, word [bp - 0x004e]       ; 0x8522
    shl ax, 1                        ; 0x8525
    mov bx, ax                       ; 0x8527
    mov bx, word [bx - 0x7b7e]       ; 0x8529
    mov al, byte [bx + si + 0x26]    ; 0x852d
    cbw                              ; 0x8530
    mov cx, ax                       ; 0x8531
    pop ax                           ; 0x8533
    add ax, cx                       ; 0x8534
    mov word [bp - 0x0058], ax       ; 0x8536
    cmp word [bss_82f2], byte 0      ; 0x8539
    jle short @..api_idx_00ac.l54    ; 0x853e
    mov ax, word [bss_82f4]          ; 0x8540
    add word [bp - 0x0058], ax       ; 0x8543
@..api_idx_00ac.l54:
    mov ax, word [bp - 0x004e]       ; 0x8546
    shl ax, 1                        ; 0x8549
    mov bx, ax                       ; 0x854b
    mov bx, word [bx - 0x7b70]       ; 0x854d
    mov al, byte [bx + 0xc4]         ; 0x8551
    cbw                              ; 0x8555
    add ax, word [bp - 0x0058]       ; 0x8556
    mov word [bp - 0x005a], ax       ; 0x8559
    mov si, word [bp + 0x8]          ; 0x855c
    mov al, byte [bx + si + 0xcc]    ; 0x855f
    cbw                              ; 0x8563
    add ax, word [bp - 0x0058]       ; 0x8564
    mov word [bp - 0x005c], ax       ; 0x8567
    jmp near @..api_idx_00ac.l61     ; 0x856a
@..api_idx_00ac.l55:
    mov bx, word [bp + 0x4]          ; 0x856d
    push word [bx + 0x8]             ; 0x8570
    push word [bx + 0x6]             ; 0x8573
    mov ax, 0                        ; 0x8576
    push ax                          ; 0x8579
    call api_idx_0004                ; 0x857a
    add sp, byte 6                   ; 0x857d
    push ax                          ; 0x8580
    mov ax, 0x12                     ; 0x8581
    imul word [bp + 0x6]             ; 0x8584
    mov si, ax                       ; 0x8587
    mov ax, word [bss_8464]          ; 0x8589
    shl ax, 1                        ; 0x858c
    mov bx, ax                       ; 0x858e
    mov bx, word [bx - 0x7b70]       ; 0x8590
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
    mov bx, word [bx - 0x7b70]       ; 0x85bc
    mov ax, word [bx + si + 0x44]    ; 0x85c0
    mov word [bp - 0x0070], ax       ; 0x85c3
    mov ax, word [bx + si + 0x46]    ; 0x85c6
    mov word [bp - 0x006e], ax       ; 0x85c9
    add bx, si                       ; 0x85cc
    add bx, byte 0x44                ; 0x85ce
    mov word [bp - 0x0052], bx       ; 0x85d1
    cmp word [bp + 0x8], byte 4      ; 0x85d4
    je short @..api_idx_00ac.l56     ; 0x85d8
    cmp word [bp + 0x8], byte 8      ; 0x85da
    jne short @..api_idx_00ac.l57    ; 0x85de
@..api_idx_00ac.l56:
    mov word [bp - 0x007e], 0        ; 0x85e0
@..api_idx_00ac.l57:
    cmp word [bp - 0x004e], byte 0   ; 0x85e5
    jne short @..api_idx_00ac.l58    ; 0x85e9
    push word [bp - 0x0050]          ; 0x85eb
    call api_idx_0012                ; 0x85ee
    pop cx                           ; 0x85f1
    mov si, ax                       ; 0x85f2
    lea di, word [bp - 0x008e]       ; 0x85f4
    mov cx, ds                       ; 0x85f8
    mov es, cx                       ; 0x85fa
    mov cx, 7                        ; 0x85fc
    rep movsw                        ; 0x85ff
    mov ax, word [bp - 0x008e]       ; 0x8601
    mov word [bp - 0x0092], ax       ; 0x8605
    jmp short @..api_idx_00ac.l59    ; 0x8609
@..api_idx_00ac.l58:
    mov word [bp - 0x0092], 0        ; 0x860b
@..api_idx_00ac.l59:
    mov ax, 0x2c                     ; 0x8611
    imul word [bp - 0x0050]          ; 0x8614
    mov si, ax                       ; 0x8617
    mov ax, word [bp - 0x004e]       ; 0x8619
    shl ax, 1                        ; 0x861c
    mov bx, ax                       ; 0x861e
    mov bx, word [bx - 0x7b7e]       ; 0x8620
    push word [bx + si + 0x8]        ; 0x8624
    push word [bx + si + 0x6]        ; 0x8627
    mov ax, 1                        ; 0x862a
    push ax                          ; 0x862d
    call api_idx_0004                ; 0x862e
    add sp, byte 6                   ; 0x8631
    push ax                          ; 0x8634
    mov ax, 0x2c                     ; 0x8635
    imul word [bp - 0x0050]          ; 0x8638
    mov si, ax                       ; 0x863b
    mov ax, word [bp - 0x004e]       ; 0x863d
    shl ax, 1                        ; 0x8640
    mov bx, ax                       ; 0x8642
    mov bx, word [bx - 0x7b7e]       ; 0x8644
    mov al, byte [bx + si + 0x26]    ; 0x8648
    cbw                              ; 0x864b
    mov cx, ax                       ; 0x864c
    pop ax                           ; 0x864e
    add ax, cx                       ; 0x864f
    mov word [bp - 0x0058], ax       ; 0x8651
    cmp word [bp - 0x004e], byte 0   ; 0x8654
    jne short @..api_idx_00ac.l60    ; 0x8658
    cmp word [bss_82f6], byte 0      ; 0x865a
    jle short @..api_idx_00ac.l60    ; 0x865f
    mov ax, word [bss_82f8]          ; 0x8661
    sub word [bp - 0x0058], ax       ; 0x8664
@..api_idx_00ac.l60:
    mov ax, word [bp - 0x004e]       ; 0x8667
    shl ax, 1                        ; 0x866a
    mov bx, ax                       ; 0x866c
    mov bx, word [bx - 0x7b70]       ; 0x866e
    mov al, byte [bx + 0xc4]         ; 0x8672
    cbw                              ; 0x8676
    add ax, word [bp - 0x0058]       ; 0x8677
    add ax, word [bp - 0x0092]       ; 0x867a
    mov word [bp - 0x005a], ax       ; 0x867e
    mov ax, word [bp - 0x0058]       ; 0x8681
    add ax, word [bp - 0x0092]       ; 0x8684
    mov word [bp - 0x005c], ax       ; 0x8688
    cmp word [bp - 0x004e], byte 0   ; 0x868b
    je short @..api_idx_00ac.l61     ; 0x868f
    mov si, word [bp + 0x8]          ; 0x8691
    mov al, byte [bx + si + 0xcc]    ; 0x8694
    cbw                              ; 0x8698
    add word [bp - 0x005c], ax       ; 0x8699
@..api_idx_00ac.l61:
    mov word [bp - 0x009a], 1        ; 0x869c
    mov bx, word [bp + 0x4]          ; 0x86a2
    cmp byte [bx + 0x2b], 0          ; 0x86a5
    je short @..api_idx_00ac.l63     ; 0x86a9
    mov ax, 0xa                      ; 0x86ab
    cmp word [bp - 0x005a], byte 0x0a ; 0x86ae
    jle short @..api_idx_00ac.l62    ; 0x86b2
    mov ax, word [bp - 0x005a]       ; 0x86b4
@..api_idx_00ac.l62:
    mov word [bp - 0x005a], ax       ; 0x86b7
    mov word [bp - 0x009a], 2        ; 0x86ba
@..api_idx_00ac.l63:
    cmp byte [bx + 0x12], 0          ; 0x86c0
    jbe short @..api_idx_00ac.l66    ; 0x86c4
    mov ax, word [bp - 0x0056]       ; 0x86c6
    push ax                          ; 0x86c9
    cmp ax, strict word 0x5a         ; 0x86ca
    pop ax                           ; 0x86cd
    jge short @..api_idx_00ac.l64    ; 0x86ce
    mov ax, 0x5a                     ; 0x86d0
@..api_idx_00ac.l64:
    mov word [bp - 0x0056], ax       ; 0x86d3
    mov ax, word [bp - 0x005a]       ; 0x86d6
    push ax                          ; 0x86d9
    cmp ax, strict word 0            ; 0x86da
    pop ax                           ; 0x86dd
    jle short @..api_idx_00ac.l65    ; 0x86de
    mov ax, 0                        ; 0x86e0
@..api_idx_00ac.l65:
    mov word [bp - 0x005a], ax       ; 0x86e3
@..api_idx_00ac.l66:
    cmp byte [bx + 0x16], 0          ; 0x86e6
    ja short @..api_idx_00ac.l67     ; 0x86ea
    cmp byte [bx + 0xf], 0           ; 0x86ec
    ja short @..api_idx_00ac.l67     ; 0x86f0
    cmp byte [bx + 0x17], 0          ; 0x86f2
    jbe short @..api_idx_00ac.l68    ; 0x86f6
@..api_idx_00ac.l67:
    add word [bp - 0x0056], byte 0x19 ; 0x86f8
@..api_idx_00ac.l68:
    mov ax, 0x2c                     ; 0x86fc
    imul word [bp - 0x0050]          ; 0x86ff
    mov si, ax                       ; 0x8702
    mov ax, word [bp - 0x004e]       ; 0x8704
    shl ax, 1                        ; 0x8707
    mov bx, ax                       ; 0x8709
    mov bx, word [bx - 0x7b7e]       ; 0x870b
    cmp byte [bx + si + 0x12], 0     ; 0x870f
    ja short @..api_idx_00ac.l69     ; 0x8713
    cmp byte [bx + si + 0x10], 0     ; 0x8715
    ja short @..api_idx_00ac.l69     ; 0x8719
    cmp byte [bx + si + 0x11], 0     ; 0x871b
    ja short @..api_idx_00ac.l69     ; 0x871f
    cmp byte [bx + si + 0x22], 2     ; 0x8721
    jne short @..api_idx_00ac.l70    ; 0x8725
@..api_idx_00ac.l69:
    mov word [bp - 0x005a], 0xf      ; 0x8727
    mov word [bp - 0x009a], 2        ; 0x872c
@..api_idx_00ac.l70:
    cmp byte [bx + si + 0x16], 0     ; 0x8732
    ja short @..api_idx_00ac.l71     ; 0x8736
    cmp byte [bx + si + 0xf], 0      ; 0x8738
    jbe short @..api_idx_00ac.l72    ; 0x873c
@..api_idx_00ac.l71:
    add word [bp - 0x005a], byte 4   ; 0x873e
@..api_idx_00ac.l72:
    mov ax, word [bss_8464]          ; 0x8742
    shl ax, 1                        ; 0x8745
    mov bx, ax                       ; 0x8747
    mov bx, word [bx - 0x7b70]       ; 0x8749
    cmp byte [bx + 0x8c], 0x11       ; 0x874d
    jbe short @..api_idx_00ac.l73    ; 0x8752
    mov ax, 2                        ; 0x8754
    jmp short @..api_idx_00ac.l74    ; 0x8757
@..api_idx_00ac.l73:
    mov ax, 0                        ; 0x8759
    cmp byte [bx + 0x8c], 0xf        ; 0x875c
    jbe short @..api_idx_00ac.l74    ; 0x8761
    mov ax, 1                        ; 0x8763
@..api_idx_00ac.l74:
    mov word [bp - 0x0080], ax       ; 0x8766
    mov ax, word [bp - 0x004e]       ; 0x8769
    shl ax, 1                        ; 0x876c
    mov bx, ax                       ; 0x876e
    mov bx, word [bx - 0x7b7e]       ; 0x8770
    mov al, byte [bx + si + 0x29]    ; 0x8774
    cbw                              ; 0x8777
    mov cx, 0xa                      ; 0x8778
    cwd                              ; 0x877b
    idiv cx                          ; 0x877c
    mov cx, ax                       ; 0x877e
    mov ax, word [bss_8464]          ; 0x8780
    shl ax, 1                        ; 0x8783
    mov bx, ax                       ; 0x8785
    mov bx, word [bx - 0x7b70]       ; 0x8787
    mov al, byte [bx + 0xda]         ; 0x878b
    sub ah, ah                       ; 0x878f
    sub ax, cx                       ; 0x8791
    push ax                          ; 0x8793
    call ds_dispatch_b7a9            ; 0x8794
    pop cx                           ; 0x8797
    inc ax                           ; 0x8798
    mov word [bp - 0x0064], ax       ; 0x8799
    cmp ax, strict word 1            ; 0x879c
    jge short @..api_idx_00ac.l75    ; 0x879f
    mov word [bp - 0x0064], 1        ; 0x87a1
@..api_idx_00ac.l75:
    cmp word [bp - 0x0064], byte 4   ; 0x87a6
    jle short @..api_idx_00ac.l76    ; 0x87aa
    mov word [bp - 0x0064], 4        ; 0x87ac
@..api_idx_00ac.l76:
    mov ax, word [bp + 0x8]          ; 0x87b1
    jmp near @..api_idx_00ac.l77     ; 0x87b4

    db 0xe9, 0x9f, 0x00, 0xff, 0x4e, 0xa6, 0xff, 0x4e, 0xa6, 0xff, 0x46, 0xa4, 0xff, 0x46, 0xa4, 0xe9
    db 0x90, 0x00, 0xff, 0x4e, 0xa4, 0x8b, 0x46, 0x80, 0x01, 0x46, 0x82, 0xe9, 0x84, 0x00, 0x83, 0x46
    db 0xa6, 0xfc, 0x83, 0x46, 0xa4, 0xfc, 0xc7, 0x86, 0x66, 0xff, 0x02, 0x00, 0xeb, 0x74, 0xc7, 0x46
    db 0x9c, 0x01, 0x00, 0xc7, 0x86, 0x66, 0xff, 0x01, 0x00, 0xff, 0x4e, 0xa6, 0xff, 0x46, 0xa4, 0xeb
    db 0x61, 0xff, 0x46, 0xa6, 0xff, 0x4e, 0xa4, 0xeb, 0x59, 0xff, 0x4e, 0xa6, 0xff, 0x4e, 0xa6, 0x8b
    db 0x46, 0x82, 0x03, 0x46, 0x80, 0x40, 0x40, 0x89, 0x46, 0x82, 0xeb, 0x46, 0xff, 0x46, 0xa6, 0xff
    db 0x46, 0xa6, 0xff, 0x4e, 0xa4, 0xff, 0x4e, 0xa4, 0xc7, 0x86, 0x66, 0xff, 0x01, 0x00, 0xeb, 0x32
    db 0xc7, 0x46, 0x9c, 0x01, 0x00, 0xc7, 0x86, 0x66, 0xff, 0x01, 0x00, 0xff, 0x46, 0xa4, 0xff, 0x46
    db 0xa4, 0xeb, 0x1f, 0xfe, 0xd7, 0x01, 0xd8, 0x10, 0xd8, 0x1c, 0xd8, 0x2c, 0xd8, 0x3f, 0xd8, 0x47
    db 0xd8, 0x5a, 0xd8, 0x6e, 0xd8

@..api_idx_00ac.l77:
    cmp ax, strict word 9            ; 0x884c
    jae short @..api_idx_00ac.l78    ; 0x884f
    xchg bx, ax                      ; 0x8851
    shl bx, 1                        ; 0x8852
    jmp [cs:bx - 0x277f]             ; 0x8854
@..api_idx_00ac.l78:
    mov ax, 0x2c                     ; 0x8859
    imul word [bp - 0x0050]          ; 0x885c
    mov si, ax                       ; 0x885f
    mov ax, word [bp - 0x004e]       ; 0x8861
    shl ax, 1                        ; 0x8864
    mov bx, ax                       ; 0x8866
    mov bx, word [bx - 0x7b7e]       ; 0x8868
    cmp byte [bx + si + 0x1e], 6     ; 0x886c
    jne short @..api_idx_00ac.l80    ; 0x8870
    mov ax, 0xa                      ; 0x8872
    cmp word [bp - 0x005a], byte 0x0a ; 0x8875
    jle short @..api_idx_00ac.l79    ; 0x8879
    mov ax, word [bp - 0x005a]       ; 0x887b
@..api_idx_00ac.l79:
    mov word [bp - 0x005a], ax       ; 0x887e
    mov word [bp - 0x009a], 2        ; 0x8881
@..api_idx_00ac.l80:
    cmp byte [bx + si + 0x12], 0     ; 0x8887
    je short @..api_idx_00ac.l81     ; 0x888b
    jmp near @..api_idx_00ac.l108    ; 0x888d
@..api_idx_00ac.l81:
    cmp byte [bx + si + 0x10], 0     ; 0x8890
    je short @..api_idx_00ac.l82     ; 0x8894
    jmp near @..api_idx_00ac.l108    ; 0x8896
@..api_idx_00ac.l82:
    cmp byte [bx + si + 0x11], 0     ; 0x8899
    je short @..api_idx_00ac.l83     ; 0x889d
    jmp near @..api_idx_00ac.l108    ; 0x889f
@..api_idx_00ac.l83:
    cmp byte [bx + si + 0x22], 0     ; 0x88a2
    je short @..api_idx_00ac.l84     ; 0x88a6
    jmp near @..api_idx_00ac.l108    ; 0x88a8
@..api_idx_00ac.l84:
    cmp byte [bx + si + 0x1e], 1     ; 0x88ab
    je short @..api_idx_00ac.l85     ; 0x88af
    jmp near @..api_idx_00ac.l107    ; 0x88b1
@..api_idx_00ac.l85:
    mov ax, word [bx + si + 0xa]     ; 0x88b4
    jmp near @..api_idx_00ac.l102    ; 0x88b7
@..api_idx_00ac.l86:
    cmp word [bp - 0x004e], byte 0   ; 0x88ba
    jne short @..api_idx_00ac.l87    ; 0x88be
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
    call loc_1bf4                    ; 0x88e3
    add sp, byte 6                   ; 0x88e6
    jmp short @..api_idx_00ac.l88    ; 0x88e9
@..api_idx_00ac.l87:
    mov ax, 0x2c                     ; 0x88eb
    imul word [bp - 0x0050]          ; 0x88ee
    mov si, ax                       ; 0x88f1
    mov ax, word [bp - 0x004e]       ; 0x88f3
    shl ax, 1                        ; 0x88f6
    mov bx, ax                       ; 0x88f8
    mov bx, word [bx - 0x7b7e]       ; 0x88fa
    mov ax, word [bx + si]           ; 0x88fe
    mov cx, 4                        ; 0x8900
    cwd                              ; 0x8903
    idiv cx                          ; 0x8904
    inc ax                           ; 0x8906
    sub word [bp - 0x005a], ax       ; 0x8907
@..api_idx_00ac.l88:
    mov word [bp - 0x009a], 1        ; 0x890a
    jmp near @..api_idx_00ac.l106    ; 0x8910
@..api_idx_00ac.l89:
    dec word [bp - 0x005a]           ; 0x8913
    dec word [bp - 0x005a]           ; 0x8916
    mov word [bp - 0x009a], 1        ; 0x8919
    jmp near @..api_idx_00ac.l106    ; 0x891f
@..api_idx_00ac.l90:
    cmp word [bp + 0x8], byte 4      ; 0x8922
    jne short @..api_idx_00ac.l91    ; 0x8926
    jmp near @..api_idx_00ac.l100    ; 0x8928
@..api_idx_00ac.l91:
    cmp word [bp + 0x8], byte 8      ; 0x892b
    jne short @..api_idx_00ac.l92    ; 0x892f
    jmp near @..api_idx_00ac.l100    ; 0x8931
@..api_idx_00ac.l92:
    mov ax, 0x2c                     ; 0x8934
    imul word [bp - 0x0050]          ; 0x8937
    mov si, ax                       ; 0x893a
    mov ax, word [bp - 0x004e]       ; 0x893c
    shl ax, 1                        ; 0x893f
    mov bx, ax                       ; 0x8941
    mov bx, word [bx - 0x7b7e]       ; 0x8943
    mov byte [bx + si + 0x1e], 0     ; 0x8947
    mov ax, 0x2c                     ; 0x894b
    imul word [bp - 0x0050]          ; 0x894e
    mov si, ax                       ; 0x8951
    mov ax, word [bp - 0x004e]       ; 0x8953
    shl ax, 1                        ; 0x8956
    mov bx, ax                       ; 0x8958
    mov bx, word [bx - 0x7b7e]       ; 0x895a
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
    mov bx, word [bx - 0x7b7e]       ; 0x8976
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
    mov bx, word [bx - 0x7b7e]       ; 0x8991
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
    mov bx, word [bx - 0x7b7e]       ; 0x89ac
    pop ax                           ; 0x89b0
    mov byte [bx + si + 0x20], al    ; 0x89b1
    mov ax, 0x2c                     ; 0x89b4
    imul word [bp - 0x0050]          ; 0x89b7
    mov si, ax                       ; 0x89ba
    mov ax, word [bp - 0x004e]       ; 0x89bc
    shl ax, 1                        ; 0x89bf
    mov bx, ax                       ; 0x89c1
    mov bx, word [bx - 0x7b7e]       ; 0x89c3
    mov word [bx + si + 0xc], 0xffff ; 0x89c7
    mov ax, 0x2c                     ; 0x89cc
    imul word [bp - 0x0050]          ; 0x89cf
    mov si, ax                       ; 0x89d2
    mov ax, word [bp - 0x004e]       ; 0x89d4
    shl ax, 1                        ; 0x89d7
    mov bx, ax                       ; 0x89d9
    mov bx, word [bx - 0x7b7e]       ; 0x89db
    mov word [bx + si + 0xa], 0xff   ; 0x89df
    cmp word [bp - 0x004e], byte 0   ; 0x89e4
    jne short @..api_idx_00ac.l95    ; 0x89e8
    mov word [bp - 0x0002], 7        ; 0x89ea
@..api_idx_00ac.l93:
    push word [bp - 0x0002]          ; 0x89ef
    mov ax, 0x248                    ; 0x89f2
    imul word [bp - 0x0050]          ; 0x89f5
    add ax, 0x5d33                   ; 0x89f8
    push ax                          ; 0x89fb
    call ds_dispatch_ec74            ; 0x89fc
    add sp, byte 4                   ; 0x89ff
    cmp ax, strict word 1            ; 0x8a02
    jne short @..api_idx_00ac.l94    ; 0x8a05
    mov ax, word [bp - 0x0002]       ; 0x8a07
    push ax                          ; 0x8a0a
    mov ax, 0x2c                     ; 0x8a0b
    imul word [bp - 0x0050]          ; 0x8a0e
    mov si, ax                       ; 0x8a11
    mov ax, word [bp - 0x004e]       ; 0x8a13
    shl ax, 1                        ; 0x8a16
    mov bx, ax                       ; 0x8a18
    mov bx, word [bx - 0x7b7e]       ; 0x8a1a
    pop ax                           ; 0x8a1e
    mov word [bx + si + 0xa], ax     ; 0x8a1f
@..api_idx_00ac.l94:
    dec word [bp - 0x0002]           ; 0x8a22
    jge short @..api_idx_00ac.l93    ; 0x8a25
    jmp short @..api_idx_00ac.l98    ; 0x8a27
@..api_idx_00ac.l95:
    mov word [bp - 0x0002], 7        ; 0x8a29
@..api_idx_00ac.l96:
    push word [bp - 0x0002]          ; 0x8a2e
    mov ax, word [bp - 0x004e]       ; 0x8a31
    shl ax, 1                        ; 0x8a34
    mov bx, ax                       ; 0x8a36
    mov ax, word [bx - 0x7b70]       ; 0x8a38
    add ax, strict word 0x53         ; 0x8a3c
    push ax                          ; 0x8a3f
    call ds_dispatch_ec74            ; 0x8a40
    add sp, byte 4                   ; 0x8a43
    cmp ax, strict word 1            ; 0x8a46
    jne short @..api_idx_00ac.l97    ; 0x8a49
    mov ax, word [bp - 0x0002]       ; 0x8a4b
    push ax                          ; 0x8a4e
    mov ax, 0x2c                     ; 0x8a4f
    imul word [bp - 0x0050]          ; 0x8a52
    mov si, ax                       ; 0x8a55
    mov ax, word [bp - 0x004e]       ; 0x8a57
    shl ax, 1                        ; 0x8a5a
    mov bx, ax                       ; 0x8a5c
    mov bx, word [bx - 0x7b7e]       ; 0x8a5e
    pop ax                           ; 0x8a62
    mov word [bx + si + 0xa], ax     ; 0x8a63
@..api_idx_00ac.l97:
    dec word [bp - 0x0002]           ; 0x8a66
    jge short @..api_idx_00ac.l96    ; 0x8a69
@..api_idx_00ac.l98:
    mov ax, 0x2c                     ; 0x8a6b
    imul word [bp - 0x0050]          ; 0x8a6e
    mov si, ax                       ; 0x8a71
    mov ax, word [bp - 0x004e]       ; 0x8a73
    shl ax, 1                        ; 0x8a76
    mov bx, ax                       ; 0x8a78
    mov bx, word [bx - 0x7b7e]       ; 0x8a7a
    cmp word [bx + si + 0xa], strict word 0xff ; 0x8a7e
    jne short @..api_idx_00ac.l99    ; 0x8a83
    mov word [bx + si + 0xa], 8      ; 0x8a85
    cmp word [bp - 0x004e], byte 0   ; 0x8a8a
    jne short @..api_idx_00ac.l99    ; 0x8a8e
    mov ax, 0x2c                     ; 0x8a90
    imul word [bp - 0x0050]          ; 0x8a93
    mov si, ax                       ; 0x8a96
    mov ax, word [bp - 0x004e]       ; 0x8a98
    shl ax, 1                        ; 0x8a9b
    mov bx, ax                       ; 0x8a9d
    mov bx, word [bx - 0x7b7e]       ; 0x8a9f
    mov byte [bx + si + 0x1e], 1     ; 0x8aa3
    mov ax, 0x2c                     ; 0x8aa7
    imul word [bp - 0x0050]          ; 0x8aaa
    mov si, ax                       ; 0x8aad
    mov ax, word [bp - 0x004e]       ; 0x8aaf
    shl ax, 1                        ; 0x8ab2
    mov bx, ax                       ; 0x8ab4
    mov bx, word [bx - 0x7b7e]       ; 0x8ab6
    mov byte [bx + si + 0x21], 0     ; 0x8aba
    mov ax, 0x2c                     ; 0x8abe
    imul word [bp - 0x0050]          ; 0x8ac1
    mov si, ax                       ; 0x8ac4
    mov ax, word [bp - 0x004e]       ; 0x8ac6
    shl ax, 1                        ; 0x8ac9
    mov bx, ax                       ; 0x8acb
    mov bx, word [bx - 0x7b7e]       ; 0x8acd
    mov byte [bx + si + 0x18], 0     ; 0x8ad1
    mov ax, 0x2c                     ; 0x8ad5
    imul word [bp - 0x0050]          ; 0x8ad8
    mov si, ax                       ; 0x8adb
    mov ax, word [bp - 0x004e]       ; 0x8add
    shl ax, 1                        ; 0x8ae0
    mov bx, ax                       ; 0x8ae2
    mov bx, word [bx - 0x7b7e]       ; 0x8ae4
    mov word [bx + si + 0xa], 1      ; 0x8ae8
@..api_idx_00ac.l99:
    mov ax, 0x2c                     ; 0x8aed
    imul word [bp - 0x0050]          ; 0x8af0
    mov si, ax                       ; 0x8af3
    mov ax, word [bp - 0x004e]       ; 0x8af5
    shl ax, 1                        ; 0x8af8
    mov bx, ax                       ; 0x8afa
    mov bx, word [bx - 0x7b7e]       ; 0x8afc
    mov byte [bx + si + 0x1c], 0     ; 0x8b00
@..api_idx_00ac.l100:
    jmp short @..api_idx_00ac.l106   ; 0x8b04
@..api_idx_00ac.l101:
    mov word [bp - 0x005a], 0xf      ; 0x8b06
    jmp short @..api_idx_00ac.l106   ; 0x8b0b
@..api_idx_00ac.l102:
    cmp ax, strict word 0            ; 0x8b0d
    jne short @..api_idx_00ac.l103   ; 0x8b10
    jmp near @..api_idx_00ac.l86     ; 0x8b12
@..api_idx_00ac.l103:
    cmp ax, strict word 1            ; 0x8b15
    jne short @..api_idx_00ac.l104   ; 0x8b18
    jmp near @..api_idx_00ac.l89     ; 0x8b1a
@..api_idx_00ac.l104:
    cmp ax, strict word 2            ; 0x8b1d
    jne short @..api_idx_00ac.l105   ; 0x8b20
    jmp near @..api_idx_00ac.l90     ; 0x8b22
@..api_idx_00ac.l105:
    cmp ax, strict word 3            ; 0x8b25
    je short @..api_idx_00ac.l101    ; 0x8b28
@..api_idx_00ac.l106:
    jmp short @..api_idx_00ac.l108   ; 0x8b2a
@..api_idx_00ac.l107:
    cmp word [bp - 0x004e], byte 0   ; 0x8b2c
    jne short @..api_idx_00ac.l108   ; 0x8b30
    mov ax, 0x248                    ; 0x8b32
    imul word [bp - 0x0050]          ; 0x8b35
    mov bx, ax                       ; 0x8b38
    mov al, byte [bx + 0x5d49]       ; 0x8b3a
    sub ah, ah                       ; 0x8b3e
    cmp ax, 0xff                     ; 0x8b40
    je short @..api_idx_00ac.l108    ; 0x8b43
    mov cx, 0xc                      ; 0x8b45
    imul cx                          ; 0x8b48
    add bx, ax                       ; 0x8b4a
    cmp byte [bx + 0x5c38], 0xb      ; 0x8b4c
    jne short @..api_idx_00ac.l108   ; 0x8b51
    mov ax, 0                        ; 0x8b53
    push ax                          ; 0x8b56
    mov ax, 8                        ; 0x8b57
    push ax                          ; 0x8b5a
    push word [bp - 0x0050]          ; 0x8b5b
    call loc_1bf4                    ; 0x8b5e
    add sp, byte 6                   ; 0x8b61
@..api_idx_00ac.l108:
    cmp word [bss_8464], byte 0      ; 0x8b64
    je short @..api_idx_00ac.l109    ; 0x8b69
    cmp word [bp - 0x009e], byte 0   ; 0x8b6b
    jne short @..api_idx_00ac.l109   ; 0x8b70
    mov bx, word [bss_8492]          ; 0x8b72
    cmp byte [bx + 0xd8], 0          ; 0x8b76
    jbe short @..api_idx_00ac.l109   ; 0x8b7b
    mov ax, word [bss_8464]          ; 0x8b7d
    shl ax, 1                        ; 0x8b80
    mov bx, ax                       ; 0x8b82
    mov bx, word [bx - 0x7b70]       ; 0x8b84
    mov al, byte [bx + 0xd8]         ; 0x8b88
    mov bx, word [bss_8492]          ; 0x8b8c
    cmp al, byte [bx + 0xd8]         ; 0x8b90
    jne short @..api_idx_00ac.l109   ; 0x8b94
    mov ax, 0x10                     ; 0x8b96
    push ax                          ; 0x8b99
    call ds_dispatch_b7e0            ; 0x8b9a
    pop cx                           ; 0x8b9d
@..api_idx_00ac.l109:
    mov ax, word [bss_9058]          ; 0x8b9e
    mov cx, 2                        ; 0x8ba1
    cwd                              ; 0x8ba4
    idiv cx                          ; 0x8ba5
    push ax                          ; 0x8ba7
    call api_idx_0004_5              ; 0x8ba8
    pop cx                           ; 0x8bab
    mov ax, word [bp - 0x004e]       ; 0x8bac
    shl ax, 1                        ; 0x8baf
    mov bx, ax                       ; 0x8bb1
    mov bx, word [bx - 0x7b70]       ; 0x8bb3
    mov cl, byte [bx + 0xd6]         ; 0x8bb7
    mov bx, word [bp - 0x0052]       ; 0x8bbb
    mov al, byte [bx + 0x11]         ; 0x8bbe
    cmp al, cl                       ; 0x8bc1
    jne short @..api_idx_00ac.l110   ; 0x8bc3
    inc word [bp - 0x009a]           ; 0x8bc5
@..api_idx_00ac.l110:
    mov word [bp - 0x0062], 0        ; 0x8bc9
    jmp near @..api_idx_00ac.l141    ; 0x8bce
@..api_idx_00ac.l111:
    mov ax, 0                        ; 0x8bd1
    cmp word [bss_905c], byte 0      ; 0x8bd4
    jne short @..api_idx_00ac.l112   ; 0x8bd9
    mov ax, 0x64                     ; 0x8bdb
    push ax                          ; 0x8bde
    call ds_dispatch_b7a9            ; 0x8bdf
    pop cx                           ; 0x8be2
@..api_idx_00ac.l112:
    mov word [bp - 0x0060], ax       ; 0x8be3
    cmp word [bp - 0x004e], byte 0   ; 0x8be6
    jne short @..api_idx_00ac.l113   ; 0x8bea
    mov ax, word [bss_8464]          ; 0x8bec
    shl ax, 1                        ; 0x8bef
    mov bx, ax                       ; 0x8bf1
    mov ax, word [bx - 0x7b70]       ; 0x8bf3
    add ax, 0xbc                     ; 0x8bf7
    push ax                          ; 0x8bfa
    call api_idx_0004_11             ; 0x8bfb
    pop cx                           ; 0x8bfe
    mov word [bp - 0x006c], ax       ; 0x8bff
    mov ax, word [bp - 0x004e]       ; 0x8c02
    shl ax, 1                        ; 0x8c05
    mov bx, ax                       ; 0x8c07
    mov bx, word [bx - 0x7b70]       ; 0x8c09
    mov si, word [bp - 0x006c]       ; 0x8c0d
    mov al, byte [bx + si + 0xc4]    ; 0x8c10
    cbw                              ; 0x8c14
    add ax, word [bp - 0x005c]       ; 0x8c15
    mov word [bp - 0x005e], ax       ; 0x8c18
    jmp short @..api_idx_00ac.l114   ; 0x8c1b
@..api_idx_00ac.l113:
    mov ax, word [bp - 0x004e]       ; 0x8c1d
    shl ax, 1                        ; 0x8c20
    mov bx, ax                       ; 0x8c22
    mov ax, word [bx - 0x7b70]       ; 0x8c24
    add ax, 0xb4                     ; 0x8c28
    push ax                          ; 0x8c2b
    call api_idx_0004_11             ; 0x8c2c
    pop cx                           ; 0x8c2f
    mov word [bp - 0x006c], ax       ; 0x8c30
    mov ax, word [bp - 0x004e]       ; 0x8c33
    shl ax, 1                        ; 0x8c36
    mov bx, ax                       ; 0x8c38
    mov bx, word [bx - 0x7b70]       ; 0x8c3a
    mov si, word [bp - 0x006c]       ; 0x8c3e
    mov al, byte [bx + si + 0xc4]    ; 0x8c41
    cbw                              ; 0x8c45
    add ax, word [bp - 0x005c]       ; 0x8c46
    mov word [bp - 0x005e], ax       ; 0x8c49
@..api_idx_00ac.l114:
    mov ax, 0x2c                     ; 0x8c4c
    imul word [bp - 0x0050]          ; 0x8c4f
    mov si, ax                       ; 0x8c52
    mov ax, word [bp - 0x004e]       ; 0x8c54
    shl ax, 1                        ; 0x8c57
    mov bx, ax                       ; 0x8c59
    mov bx, word [bx - 0x7b7e]       ; 0x8c5b
    cmp byte [bx + si + 0x22], 2     ; 0x8c5f
    jne short @..api_idx_00ac.l116   ; 0x8c63
    mov ax, word [bp - 0x005e]       ; 0x8c65
    push ax                          ; 0x8c68
    cmp ax, strict word 0            ; 0x8c69
    pop ax                           ; 0x8c6c
    jle short @..api_idx_00ac.l115   ; 0x8c6d
    mov ax, 0                        ; 0x8c6f
@..api_idx_00ac.l115:
    mov word [bp - 0x005e], ax       ; 0x8c72
@..api_idx_00ac.l116:
    mov ax, 4                        ; 0x8c75
    push ax                          ; 0x8c78
    mov ax, 3                        ; 0x8c79
    push ax                          ; 0x8c7c
    call api_idx_0004_6              ; 0x8c7d
    add sp, byte 4                   ; 0x8c80
    cmp word [bp - 0x009e], byte 0xff ; 0x8c83
    je short @..api_idx_00ac.l117    ; 0x8c88
    mov ax, 8                        ; 0x8c8a
    push ax                          ; 0x8c8d
    call ds_dispatch_b7a9            ; 0x8c8e
    pop cx                           ; 0x8c91
    mov cx, ax                       ; 0x8c92
    mov ax, 3                        ; 0x8c94
    sub ax, cx                       ; 0x8c97
    shl ax, 1                        ; 0x8c99
    push ax                          ; 0x8c9b
    mov ax, 6                        ; 0x8c9c
    push ax                          ; 0x8c9f
    call api_idx_000c_2              ; 0x8ca0
    add sp, byte 4                   ; 0x8ca3
@..api_idx_00ac.l117:
    cmp word [bp + 0x8], byte 4      ; 0x8ca6
    je short @..api_idx_00ac.l118    ; 0x8caa
    cmp word [bp + 0x8], byte 8      ; 0x8cac
    jne short @..api_idx_00ac.l119   ; 0x8cb0
@..api_idx_00ac.l118:
    cmp word [bp - 0x00ac], byte 0   ; 0x8cb2
    jne short @..api_idx_00ac.l119   ; 0x8cb7
    mov ax, 0x64                     ; 0x8cb9
    push ax                          ; 0x8cbc
    call ds_dispatch_b7a9            ; 0x8cbd
    pop cx                           ; 0x8cc0
    push ax                          ; 0x8cc1
    mov ax, word [bp - 0x004e]       ; 0x8cc2
    shl ax, 1                        ; 0x8cc5
    mov bx, ax                       ; 0x8cc7
    mov bx, word [bx - 0x7b7e]       ; 0x8cc9
    mov al, byte [bx + 0x18e]        ; 0x8ccd
    sub ah, ah                       ; 0x8cd1
    mov cx, ax                       ; 0x8cd3
    pop ax                           ; 0x8cd5
    cmp ax, cx                       ; 0x8cd6
    jge short @..api_idx_00ac.l119   ; 0x8cd8
    mov ax, 3                        ; 0x8cda
    push ax                          ; 0x8cdd
    mov ax, 0x43                     ; 0x8cde
    push ax                          ; 0x8ce1
    mov ax, 0xc8e                    ; 0x8ce2
    push ax                          ; 0x8ce5
    call api_idx_0050                ; 0x8ce6
    add sp, byte 6                   ; 0x8ce9
    mov ax, 7                        ; 0x8cec
    push ax                          ; 0x8cef
    call ds_dispatch_b7e0            ; 0x8cf0
    pop cx                           ; 0x8cf3
    jmp near @..api_idx_00ac.l140    ; 0x8cf4
@..api_idx_00ac.l119:
    cmp word [bp - 0x0094], byte 0xff ; 0x8cf7
    jne short @..api_idx_00ac.l121   ; 0x8cfc
    mov ax, word [bp - 0x0060]       ; 0x8cfe
    cmp ax, strict word 5            ; 0x8d01
    jge short @..api_idx_00ac.l120   ; 0x8d04
    jmp near @..api_idx_00ac.l139    ; 0x8d06
@..api_idx_00ac.l120:
    cmp ax, strict word 0x5f         ; 0x8d09
    jge short @..api_idx_00ac.l121   ; 0x8d0c
    mov ax, 5                        ; 0x8d0e
    imul word [bp - 0x005a]          ; 0x8d11
    mov cx, word [bp - 0x0056]       ; 0x8d14
    sub cx, ax                       ; 0x8d17
    mov ax, word [bp - 0x0060]       ; 0x8d19
    cmp cx, ax                       ; 0x8d1c
    jl short @..api_idx_00ac.l121    ; 0x8d1e
    jmp near @..api_idx_00ac.l139    ; 0x8d20
@..api_idx_00ac.l121:
    cmp word [bp - 0x0094], byte 0xff ; 0x8d23
    je short @..api_idx_00ac.l122    ; 0x8d28
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
    call api_idx_000e_5              ; 0x8d47
    add sp, byte 6                   ; 0x8d4a
    jmp near @..api_idx_00ac.l138    ; 0x8d4d
@..api_idx_00ac.l122:
    mov ax, 3                        ; 0x8d50
    push ax                          ; 0x8d53
    mov ax, 0x16                     ; 0x8d54
    push ax                          ; 0x8d57
    mov ax, 0xce6                    ; 0x8d58
    push ax                          ; 0x8d5b
    call api_idx_0050                ; 0x8d5c
    add sp, byte 6                   ; 0x8d5f
    mov ax, 7                        ; 0x8d62
    push ax                          ; 0x8d65
    call ds_dispatch_b7e0            ; 0x8d66
    pop cx                           ; 0x8d69
    mov ax, word [bp - 0x004e]       ; 0x8d6a
    shl ax, 1                        ; 0x8d6d
    mov bx, ax                       ; 0x8d6f
    mov bx, word [bx - 0x7b70]       ; 0x8d71
    cmp byte [bx + 0xd6], 0x11       ; 0x8d75
    je short @..api_idx_00ac.l123    ; 0x8d7a
    cmp byte [bx + 0xd6], 0x17       ; 0x8d7c
    jne short @..api_idx_00ac.l124   ; 0x8d81
    cmp word [bp - 0x006c], byte 6   ; 0x8d83
    jne short @..api_idx_00ac.l124   ; 0x8d87
@..api_idx_00ac.l123:
    mov ax, 0x90e6                   ; 0x8d89
    push ax                          ; 0x8d8c
    mov ax, word [bp - 0x006c]       ; 0x8d8d
    add ax, 0xd02                    ; 0x8d90
    push ax                          ; 0x8d93
    call ds_dispatch_b53b            ; 0x8d94
    add sp, byte 4                   ; 0x8d97
    jmp short @..api_idx_00ac.l126   ; 0x8d9a
@..api_idx_00ac.l124:
    mov ax, word [bp - 0x004e]       ; 0x8d9c
    shl ax, 1                        ; 0x8d9f
    mov bx, ax                       ; 0x8da1
    mov bx, word [bx - 0x7b70]       ; 0x8da3
    cmp byte [bx + 0xd6], 0x1a       ; 0x8da7
    jne short @..api_idx_00ac.l125   ; 0x8dac
    mov ax, 0x90e6                   ; 0x8dae
    push ax                          ; 0x8db1
    mov ax, word [bp - 0x006c]       ; 0x8db2
    add ax, 0xd3e                    ; 0x8db5
    push ax                          ; 0x8db8
    call ds_dispatch_b53b            ; 0x8db9
    add sp, byte 4                   ; 0x8dbc
    jmp short @..api_idx_00ac.l126   ; 0x8dbf
@..api_idx_00ac.l125:
    mov ax, 0x90e6                   ; 0x8dc1
    push ax                          ; 0x8dc4
    mov ax, word [bp - 0x006c]       ; 0x8dc5
    add ax, 0xcf8                    ; 0x8dc8
    push ax                          ; 0x8dcb
    call ds_dispatch_b53b            ; 0x8dcc
    add sp, byte 4                   ; 0x8dcf
@..api_idx_00ac.l126:
    inc word [bp - 0x0066]           ; 0x8dd2
    mov bx, word [bp + 0x4]          ; 0x8dd5
    cmp byte [bx + 0x2b], 1          ; 0x8dd8
    jne short @..api_idx_00ac.l127   ; 0x8ddc
    mov byte [bx + 0x2b], 0xff       ; 0x8dde
@..api_idx_00ac.l127:
    mov word [bp - 0x006a], 0        ; 0x8de2
    mov ax, word [bp - 0x009a]       ; 0x8de7
    mov word [bp - 0x009c], ax       ; 0x8deb
@..api_idx_00ac.l128:
    cmp word [bp - 0x009c], byte 0   ; 0x8def
    jle short @..api_idx_00ac.l129   ; 0x8df4
    push word [bp - 0x006e]          ; 0x8df6
    push word [bp - 0x0070]          ; 0x8df9
    call ds_dispatch_d0be            ; 0x8dfc
    add sp, byte 4                   ; 0x8dff
    add word [bp - 0x006a], ax       ; 0x8e02
    dec word [bp - 0x009c]           ; 0x8e05
    jmp short @..api_idx_00ac.l128   ; 0x8e09
@..api_idx_00ac.l129:
    mov ax, word [bp - 0x007e]       ; 0x8e0b
    add word [bp - 0x006a], ax       ; 0x8e0e
    cmp word [bp - 0x006a], byte 0   ; 0x8e11
    jg short @..api_idx_00ac.l130    ; 0x8e15
    jmp near @..api_idx_00ac.l137    ; 0x8e17
@..api_idx_00ac.l130:
    cmp word [bp - 0x0060], byte 0x5f ; 0x8e1a
    jge short @..api_idx_00ac.l131   ; 0x8e1e
    mov ax, 5                        ; 0x8e20
    imul word [bp - 0x005e]          ; 0x8e23
    mov cx, ax                       ; 0x8e26
    mov ax, word [bp - 0x0056]       ; 0x8e28
    sub ax, cx                       ; 0x8e2b
    cmp ax, word [bp - 0x0060]       ; 0x8e2d
    jl short @..api_idx_00ac.l131    ; 0x8e30
    jmp near @..api_idx_00ac.l137    ; 0x8e32
@..api_idx_00ac.l131:
    mov ax, 0x9136                   ; 0x8e35
    push ax                          ; 0x8e38
    push word [bp - 0x006a]          ; 0x8e39
    call ds_dispatch_b27d            ; 0x8e3c
    add sp, byte 4                   ; 0x8e3f
    mov ax, 0x9186                   ; 0x8e42
    push ax                          ; 0x8e45
    mov ax, 0xcea                    ; 0x8e46
    push ax                          ; 0x8e49
    call ds_dispatch_b53b            ; 0x8e4a
    add sp, byte 4                   ; 0x8e4d
    mov ax, 0x43                     ; 0x8e50
    push ax                          ; 0x8e53
    mov ax, 0x41                     ; 0x8e54
    push ax                          ; 0x8e57
    mov ax, 0x43                     ; 0x8e58
    push ax                          ; 0x8e5b
    mov ax, 0x9186                   ; 0x8e5c
    push ax                          ; 0x8e5f
    mov ax, 0x9136                   ; 0x8e60
    push ax                          ; 0x8e63
    mov ax, 0x90e6                   ; 0x8e64
    push ax                          ; 0x8e67
    mov ax, 4                        ; 0x8e68
    push ax                          ; 0x8e6b
    call api_idx_0004_4              ; 0x8e6c
    add sp, byte 0x0e                ; 0x8e6f
    mov ax, word [bp - 0x006a]       ; 0x8e72
    push ax                          ; 0x8e75
    mov ax, 0x2c                     ; 0x8e76
    imul word [bp - 0x0050]          ; 0x8e79
    mov si, ax                       ; 0x8e7c
    mov ax, word [bp - 0x004e]       ; 0x8e7e
    shl ax, 1                        ; 0x8e81
    mov bx, ax                       ; 0x8e83
    mov bx, word [bx - 0x7b7e]       ; 0x8e85
    pop ax                           ; 0x8e89
    sub word [bx + si + 0x2], ax     ; 0x8e8a
    mov ax, 0x2c                     ; 0x8e8d
    imul word [bp - 0x0050]          ; 0x8e90
    mov si, ax                       ; 0x8e93
    mov ax, word [bp - 0x004e]       ; 0x8e95
    shl ax, 1                        ; 0x8e98
    mov bx, ax                       ; 0x8e9a
    mov bx, word [bx - 0x7b7e]       ; 0x8e9c
    mov byte [bx + si + 0x10], 0     ; 0x8ea0
    mov ax, 3                        ; 0x8ea4
    push ax                          ; 0x8ea7
    call ds_dispatch_b7a9            ; 0x8ea8
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
    mov bx, word [bx - 0x7b7e]       ; 0x8ec1
    mov al, byte [bx + si + 0x11]    ; 0x8ec5
    sub ah, ah                       ; 0x8ec8
    sub ax, cx                       ; 0x8eca
    mov word [bp - 0x00a0], ax       ; 0x8ecc
    cmp ax, strict word 0            ; 0x8ed0
    jge short @..api_idx_00ac.l132   ; 0x8ed3
    mov word [bp - 0x00a0], 0        ; 0x8ed5
@..api_idx_00ac.l132:
    mov al, byte [bp - 0x00a0]       ; 0x8edb
    mov byte [bx + si + 0x11], al    ; 0x8edf
    mov ax, 0x2c                     ; 0x8ee2
    imul word [bp - 0x0050]          ; 0x8ee5
    mov si, ax                       ; 0x8ee8
    mov ax, word [bp - 0x004e]       ; 0x8eea
    shl ax, 1                        ; 0x8eed
    mov bx, ax                       ; 0x8eef
    mov bx, word [bx - 0x7b7e]       ; 0x8ef1
    cmp word [bx + si + 0x2], byte 0 ; 0x8ef5
    jg short @..api_idx_00ac.l134    ; 0x8ef9
    mov ax, word [bss_9058]          ; 0x8efb
    mov cx, 2                        ; 0x8efe
    cwd                              ; 0x8f01
    idiv cx                          ; 0x8f02
    push ax                          ; 0x8f04
    call api_idx_0004_5              ; 0x8f05
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
    call api_idx_0002_4              ; 0x8f27
    add sp, byte 0x10                ; 0x8f2a
    mov bx, word [bp + 0x4]          ; 0x8f2d
    cmp byte [bx + 0x2b], 0xff       ; 0x8f30
    jne short @..api_idx_00ac.l133   ; 0x8f34
    mov ax, 3                        ; 0x8f36
    push ax                          ; 0x8f39
    call ds_dispatch_b7a9            ; 0x8f3a
    pop cx                           ; 0x8f3d
    cmp ax, strict word 0            ; 0x8f3e
    jle short @..api_idx_00ac.l133   ; 0x8f41
    mov bx, word [bp + 0x4]          ; 0x8f43
    mov byte [bx + 0x2b], 1          ; 0x8f46
@..api_idx_00ac.l133:
    jmp near @..api_idx_00ac.l136    ; 0x8f4a
@..api_idx_00ac.l134:
    cmp word [bp - 0x004e], byte 0   ; 0x8f4d
    jne short @..api_idx_00ac.l135   ; 0x8f51
    mov ax, 0x248                    ; 0x8f53
    imul word [bp - 0x0050]          ; 0x8f56
    mov bx, ax                       ; 0x8f59
    mov al, byte [bx + 0x5e2c]       ; 0x8f5b
    sub ah, ah                       ; 0x8f5f
    inc ax                           ; 0x8f61
    inc ax                           ; 0x8f62
    push ax                          ; 0x8f63
    call ds_dispatch_b7e0            ; 0x8f64
    pop cx                           ; 0x8f67
    mov ax, 1                        ; 0x8f68
    push ax                          ; 0x8f6b
    push word [bp - 0x0050]          ; 0x8f6c
    call api_idx_0004_2              ; 0x8f6f
    add sp, byte 4                   ; 0x8f72
@..api_idx_00ac.l135:
    mov ax, word [bss_9058]          ; 0x8f75
    mov cx, 2                        ; 0x8f78
    cwd                              ; 0x8f7b
    idiv cx                          ; 0x8f7c
    push ax                          ; 0x8f7e
    call api_idx_0004_5              ; 0x8f7f
    pop cx                           ; 0x8f82
    push word [bp - 0x0050]          ; 0x8f83
    push word [bp - 0x004e]          ; 0x8f86
    push word [bp - 0x0052]          ; 0x8f89
    push word [bp + 0x4]             ; 0x8f8c
    call api_idx_000a_5              ; 0x8f8f
    add sp, byte 8                   ; 0x8f92
    cmp word [bp - 0x00a2], byte 0   ; 0x8f95
    je short @..api_idx_00ac.l136    ; 0x8f9a
    mov ax, 0x2c                     ; 0x8f9c
    imul word [bp - 0x0050]          ; 0x8f9f
    mov si, ax                       ; 0x8fa2
    mov ax, word [bp - 0x004e]       ; 0x8fa4
    shl ax, 1                        ; 0x8fa7
    mov bx, ax                       ; 0x8fa9
    mov bx, word [bx - 0x7b7e]       ; 0x8fab
    push word [bx + si]              ; 0x8faf
    call ds_dispatch_b7a9            ; 0x8fb1
    pop cx                           ; 0x8fb4
    test ax, ax                      ; 0x8fb5
    jne short @..api_idx_00ac.l136   ; 0x8fb7
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
    call api_idx_0006_2              ; 0x8fdd
    add sp, byte 0x16                ; 0x8fe0
@..api_idx_00ac.l136:
    jmp short @..api_idx_00ac.l138   ; 0x8fe3
@..api_idx_00ac.l137:
    mov ax, 0x9136                   ; 0x8fe5
    push ax                          ; 0x8fe8
    mov ax, 0xce7                    ; 0x8fe9
    push ax                          ; 0x8fec
    call ds_dispatch_b53b            ; 0x8fed
    add sp, byte 4                   ; 0x8ff0
    mov byte [bss_9186], 0           ; 0x8ff3
    mov ax, 0x43                     ; 0x8ff8
    push ax                          ; 0x8ffb
    push ax                          ; 0x8ffc
    push ax                          ; 0x8ffd
    mov ax, 0x9186                   ; 0x8ffe
    push ax                          ; 0x9001
    mov ax, 0x9136                   ; 0x9002
    push ax                          ; 0x9005
    mov ax, 0x90e6                   ; 0x9006
    push ax                          ; 0x9009
    mov ax, 4                        ; 0x900a
    push ax                          ; 0x900d
    call api_idx_0004_4              ; 0x900e
    add sp, byte 0x0e                ; 0x9011
@..api_idx_00ac.l138:
    jmp short @..api_idx_00ac.l140   ; 0x9014
@..api_idx_00ac.l139:
    mov ax, 3                        ; 0x9016
    push ax                          ; 0x9019
    mov ax, 0x43                     ; 0x901a
    push ax                          ; 0x901d
    mov ax, 0xce5                    ; 0x901e
    push ax                          ; 0x9021
    call api_idx_0050                ; 0x9022
    add sp, byte 6                   ; 0x9025
@..api_idx_00ac.l140:
    mov ax, word [bss_9058]          ; 0x9028
    mov cx, 2                        ; 0x902b
    cwd                              ; 0x902e
    idiv cx                          ; 0x902f
    push ax                          ; 0x9031
    call api_idx_0004_5              ; 0x9032
    pop cx                           ; 0x9035
    inc word [bp - 0x0062]           ; 0x9036
@..api_idx_00ac.l141:
    mov ax, word [bp - 0x0062]       ; 0x9039
    cmp ax, word [bp - 0x0064]       ; 0x903c
    jge short @..api_idx_00ac.l142   ; 0x903f
    mov ax, 0x2c                     ; 0x9041
    imul word [bp - 0x0050]          ; 0x9044
    mov si, ax                       ; 0x9047
    mov ax, word [bp - 0x004e]       ; 0x9049
    shl ax, 1                        ; 0x904c
    mov bx, ax                       ; 0x904e
    mov bx, word [bx - 0x7b7e]       ; 0x9050
    cmp byte [bx + si + 0x22], 3     ; 0x9054
    jae short @..api_idx_00ac.l142   ; 0x9058
    jmp near @..api_idx_00ac.l111    ; 0x905a
@..api_idx_00ac.l142:
    mov bx, word [bp + 0x4]          ; 0x905d
    cmp byte [bx + 0x2b], 0xff       ; 0x9060
    jne short @..api_idx_00ac.l143   ; 0x9064
    mov byte [bx + 0x2b], 0          ; 0x9066
@..api_idx_00ac.l143:
    cmp word [bp - 0x004e], byte 0   ; 0x906a
    jne short @..api_idx_00ac.l144   ; 0x906e
    mov ax, 0                        ; 0x9070
    push ax                          ; 0x9073
    push word [bp - 0x0050]          ; 0x9074
    call api_idx_0004_2              ; 0x9077
    add sp, byte 4                   ; 0x907a
@..api_idx_00ac.l144:
    cmp word [bp - 0x00a8], byte 0   ; 0x907d
    jle short @..api_idx_00ac.l145   ; 0x9082
    push word [bp - 0x00a8]          ; 0x9084
    call ds_dispatch_d7aa            ; 0x9088
    pop cx                           ; 0x908b
@..api_idx_00ac.l145:
    ret                              ; 0x908c
