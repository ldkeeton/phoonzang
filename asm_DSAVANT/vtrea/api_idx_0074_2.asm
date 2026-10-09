api_idx_0074_2:
    mov ax, 0xff8c                   ; 0x78ed
    call ds_dispatch_f40b            ; 0x78f0
    mov ax, word [data_8d12]         ; 0x78f3
    shl ax, 1                        ; 0x78f6
    mov si, ax                       ; 0x78f8
    mov bx, word [data_0e12]         ; 0x78fa
    mov ax, word [bx + si + 0x3c0]   ; 0x78fe
    mov word [bp - 0x0006], ax       ; 0x7902
    mov ax, 4                        ; 0x7905
    push ax                          ; 0x7908
    mov ax, 8                        ; 0x7909
    push ax                          ; 0x790c
    push word [bp - 0x0006]          ; 0x790d
    call ds_dispatch_ed3a            ; 0x7910
    add sp, byte 6                   ; 0x7913
    mov word [bp - 0x0004], ax       ; 0x7916
    mov ax, 4                        ; 0x7919
    push ax                          ; 0x791c
    mov ax, 0                        ; 0x791d
    push ax                          ; 0x7920
    push word [bp - 0x0006]          ; 0x7921
    call ds_dispatch_ed3a            ; 0x7924
    add sp, byte 6                   ; 0x7927
    mov word [bp - 0x000a], ax       ; 0x792a
    mov ax, 4                        ; 0x792d
    push ax                          ; 0x7930
    push ax                          ; 0x7931
    push word [bp - 0x0006]          ; 0x7932
    call ds_dispatch_ed3a            ; 0x7935
    add sp, byte 6                   ; 0x7938
    mov word [bp - 0x0008], ax       ; 0x793b
    mov ax, 1                        ; 0x793e
    push ax                          ; 0x7941
    mov ax, 0xc                      ; 0x7942
    push ax                          ; 0x7945
    push word [bp - 0x0006]          ; 0x7946
    call ds_dispatch_ed3a            ; 0x7949
    add sp, byte 6                   ; 0x794c
    mov word [bp - 0x0018], ax       ; 0x794f
    mov word [bp - 0x0024], 0        ; 0x7952
    mov ax, 1                        ; 0x7957
    push ax                          ; 0x795a
    mov ax, 0xf                      ; 0x795b
    push ax                          ; 0x795e
    push word [bp - 0x0006]          ; 0x795f
    call ds_dispatch_ed3a            ; 0x7962
    add sp, byte 6                   ; 0x7965
    mov word [bp - 0x0010], ax       ; 0x7968
    mov ax, word [data_8d12]         ; 0x796b
    shl ax, 1                        ; 0x796e
    mov si, ax                       ; 0x7970
    mov bx, word [data_0e12]         ; 0x7972
    cmp word [bx + si], byte 0       ; 0x7976
    jle short @..api_idx_0074_2.l1   ; 0x7979
    mov ax, 0                        ; 0x797b
    push ax                          ; 0x797e
    push word [bx + si]              ; 0x797f
    call loc_0d87                    ; 0x7981
    add sp, byte 4                   ; 0x7984
@..api_idx_0074_2.l1:
    mov ax, 1                        ; 0x7987
    push ax                          ; 0x798a
    call api_idx_000a_2              ; 0x798b
    pop cx                           ; 0x798e
    cmp word [bp - 0x0004], byte 4   ; 0x798f
    jne short @..api_idx_0074_2.l4   ; 0x7993
    mov word [bp - 0x0002], 0        ; 0x7995
    jmp short @..api_idx_0074_2.l3   ; 0x799a
@..api_idx_0074_2.l2:
    mov ax, data_0002                ; 0x799c
    push ax                          ; 0x799f
    push word [bp - 0x0002]          ; 0x79a0
    call loc_788f                    ; 0x79a3
    add sp, byte 4                   ; 0x79a6
    inc word [bp - 0x0002]           ; 0x79a9
@..api_idx_0074_2.l3:
    mov ax, word [bp - 0x0002]       ; 0x79ac
    cmp ax, word [data_69c8]         ; 0x79af
    jl short @..api_idx_0074_2.l2    ; 0x79b3
    mov ax, word [data_905a]         ; 0x79b5
    shl ax, 1                        ; 0x79b8
    push ax                          ; 0x79ba
    call api_idx_0004                ; 0x79bb
    pop cx                           ; 0x79be
    mov word [data_830a], 8          ; 0x79bf
    ret                              ; 0x79c5
@..api_idx_0074_2.l4:
    cmp word [bp - 0x0018], byte 0   ; 0x79c6
    jne short @..api_idx_0074_2.l5   ; 0x79ca
    jmp near @..api_idx_0074_2.l7    ; 0x79cc
@..api_idx_0074_2.l5:
    cmp word [data_8306], byte 0     ; 0x79cf
    jg short @..api_idx_0074_2.l6    ; 0x79d4
    jmp near @..api_idx_0074_2.l7    ; 0x79d6
@..api_idx_0074_2.l6:
    mov word [bp - 0x0010], 1        ; 0x79d9
    lea ax, word [bp - 0x0074]       ; 0x79de
    push ax                          ; 0x79e1
    mov ax, 0x808                    ; 0x79e2
    push ax                          ; 0x79e5
    call ds_dispatch_b53b            ; 0x79e6
    add sp, byte 4                   ; 0x79e9
    lea ax, word [bp - 0x0074]       ; 0x79ec
    push ax                          ; 0x79ef
    call ds_dispatch_fa90            ; 0x79f0
    pop cx                           ; 0x79f3
    mov cx, 6                        ; 0x79f4
    imul cx                          ; 0x79f7
    mov cx, data_0002                ; 0x79f9
    cwd                              ; 0x79fc
    idiv cx                          ; 0x79fd
    mov cx, ax                       ; 0x79ff
    mov ax, 0xa0                     ; 0x7a01
    sub ax, cx                       ; 0x7a04
    mov word [bp - 0x0020], ax       ; 0x7a06
    mov ax, 0xa3                     ; 0x7a09
    push ax                          ; 0x7a0c
    push word [bp - 0x0020]          ; 0x7a0d
    call ds_dispatch_e809            ; 0x7a10
    add sp, byte 4                   ; 0x7a13
    mov ax, 0                        ; 0x7a16
    push ax                          ; 0x7a19
    mov ax, 0xb8                     ; 0x7a1a
    push ax                          ; 0x7a1d
    call ds_dispatch_e823            ; 0x7a1e
    add sp, byte 4                   ; 0x7a21
    mov ax, 0                        ; 0x7a24
    push ax                          ; 0x7a27
    lea ax, word [bp - 0x0074]       ; 0x7a28
    push ax                          ; 0x7a2b
    call ds_dispatch_e84e            ; 0x7a2c
    add sp, byte 4                   ; 0x7a2f
    mov ax, 0xa9                     ; 0x7a32
    push ax                          ; 0x7a35
    lea ax, word [bp - 0x0074]       ; 0x7a36
    push ax                          ; 0x7a39
    call ds_dispatch_fa90            ; 0x7a3a
    pop cx                           ; 0x7a3d
    mov cx, 6                        ; 0x7a3e
    imul cx                          ; 0x7a41
    add ax, word [bp - 0x0020]       ; 0x7a43
    push ax                          ; 0x7a46
    mov ax, 0xa3                     ; 0x7a47
    push ax                          ; 0x7a4a
    push word [bp - 0x0020]          ; 0x7a4b
    call ds_dispatch_e8da            ; 0x7a4e
    add sp, byte 8                   ; 0x7a51
    mov ax, 0x11                     ; 0x7a54
    push ax                          ; 0x7a57
    call ds_dispatch_d7aa            ; 0x7a58
    pop cx                           ; 0x7a5b
    mov ax, 0x10                     ; 0x7a5c
    push ax                          ; 0x7a5f
    call ds_dispatch_b7e0            ; 0x7a60
    pop cx                           ; 0x7a63
    mov ax, 0x10                     ; 0x7a64
    push ax                          ; 0x7a67
    call ds_dispatch_d6c6            ; 0x7a68
    pop cx                           ; 0x7a6b
    mov word [data_598e], 0xffff     ; 0x7a6c
    push word [data_905a]            ; 0x7a72
    call api_idx_0004                ; 0x7a76
    pop cx                           ; 0x7a79
@..api_idx_0074_2.l7:
    mov bx, word [data_0e12]         ; 0x7a7a
    mov si, word [data_8d12]         ; 0x7a7e
    mov al, byte [bx + si + 0xa50]   ; 0x7a82
    sub ah, ah                       ; 0x7a86
    mov word [bp - 0x0022], ax       ; 0x7a88
    cmp ax, strict word 0            ; 0x7a8b
    jle short @..api_idx_0074_2.l10  ; 0x7a8e
    cmp ax, strict word 5            ; 0x7a90
    jl short @..api_idx_0074_2.l8    ; 0x7a93
    cmp ax, strict word 8            ; 0x7a95
    je short @..api_idx_0074_2.l8    ; 0x7a98
    cmp ax, strict word 9            ; 0x7a9a
    jne short @..api_idx_0074_2.l9   ; 0x7a9d
@..api_idx_0074_2.l8:
    push ax                          ; 0x7a9f
    call ds_dispatch_b7e0            ; 0x7aa0
    pop cx                           ; 0x7aa3
    jmp short @..api_idx_0074_2.l10  ; 0x7aa4
@..api_idx_0074_2.l9:
    push word [bp - 0x0022]          ; 0x7aa6
    call ds_dispatch_d7aa            ; 0x7aa9
    pop cx                           ; 0x7aac
    mov ax, 0x10                     ; 0x7aad
    push ax                          ; 0x7ab0
    call ds_dispatch_b7e0            ; 0x7ab1
    pop cx                           ; 0x7ab4
    mov ax, 0x10                     ; 0x7ab5
    push ax                          ; 0x7ab8
    call ds_dispatch_d6c6            ; 0x7ab9
    pop cx                           ; 0x7abc
    mov word [data_598e], 0xffff     ; 0x7abd
@..api_idx_0074_2.l10:
    mov ax, word [data_8d12]         ; 0x7ac3
    shl ax, 1                        ; 0x7ac6
    mov si, ax                       ; 0x7ac8
    mov bx, word [data_0e12]         ; 0x7aca
    mov ax, word [bx + si + 0x1e0]   ; 0x7ace
    mov word [bp - 0x000c], ax       ; 0x7ad2
    cmp ax, strict word 0xe          ; 0x7ad5
    jne short @..api_idx_0074_2.l11  ; 0x7ad8
    mov word [bp - 0x000c], 9        ; 0x7ada
    mov word [bp - 0x0024], 1        ; 0x7adf
@..api_idx_0074_2.l11:
    mov word [bp - 0x0014], 0        ; 0x7ae4
@..api_idx_0074_2.l12:
    mov ax, 0x248                    ; 0x7ae9
    imul word [bp - 0x0014]          ; 0x7aec
    mov bx, ax                       ; 0x7aef
    cmp byte [bx + 0x5e2f], 3        ; 0x7af1
    jb short @..api_idx_0074_2.l13   ; 0x7af6
    inc word [bp - 0x0014]           ; 0x7af8
    jmp short @..api_idx_0074_2.l12  ; 0x7afb
@..api_idx_0074_2.l13:
    mov ax, word [data_69c8]         ; 0x7afd
    cmp word [bp - 0x0004], byte 0x0c ; 0x7b00
    jne short @..api_idx_0074_2.l14  ; 0x7b04
    mov ax, word [bp - 0x0014]       ; 0x7b06
    inc ax                           ; 0x7b09
@..api_idx_0074_2.l14:
    mov word [bp - 0x0016], ax       ; 0x7b0a
    mov ax, word [data_69c8]         ; 0x7b0d
    push ax                          ; 0x7b10
    cmp ax, word [bp - 0x0016]       ; 0x7b11
    pop ax                           ; 0x7b14
    jle short @..api_idx_0074_2.l15  ; 0x7b15
    mov ax, word [bp - 0x0016]       ; 0x7b17
@..api_idx_0074_2.l15:
    mov word [bp - 0x0016], ax       ; 0x7b1a
    cmp word [bp - 0x0004], byte 0x0c ; 0x7b1d
    je short @..api_idx_0074_2.l16   ; 0x7b21
    cmp word [bp - 0x0024], byte 1   ; 0x7b23
    je short @..api_idx_0074_2.l16   ; 0x7b27
    cmp word [bp - 0x000c], byte 0   ; 0x7b29
    je short @..api_idx_0074_2.l16   ; 0x7b2d
    mov ax, word [bp - 0x000c]       ; 0x7b2f
    cmp ax, strict word 3            ; 0x7b32
    je short @..api_idx_0074_2.l16   ; 0x7b35
    cmp ax, strict word 0xd          ; 0x7b37
    jne short @..api_idx_0074_2.l17  ; 0x7b3a
@..api_idx_0074_2.l16:
    mov ax, 1                        ; 0x7b3c
    jmp short @..api_idx_0074_2.l18  ; 0x7b3f
@..api_idx_0074_2.l17:
    mov ax, 0                        ; 0x7b41
@..api_idx_0074_2.l18:
    mov word [bp - 0x0012], ax       ; 0x7b44
    mov ax, word [bp - 0x0014]       ; 0x7b47
    mov word [bp - 0x0002], ax       ; 0x7b4a
    jmp near @..api_idx_0074_2.l40   ; 0x7b4d
@..api_idx_0074_2.l19:
    mov ax, 0x36                     ; 0x7b50
    push ax                          ; 0x7b53
    call ds_dispatch_b7a9            ; 0x7b54
    pop cx                           ; 0x7b57
    push ax                          ; 0x7b58
    mov ax, 0x248                    ; 0x7b59
    imul word [bp - 0x0002]          ; 0x7b5c
    mov bx, ax                       ; 0x7b5f
    mov al, byte [bx + 0x5d68]       ; 0x7b61
    sub ah, ah                       ; 0x7b65
    mov cx, ax                       ; 0x7b67
    sub ax, word [bp - 0x0008]       ; 0x7b69
    mov cx, ax                       ; 0x7b6c
    pop ax                           ; 0x7b6e
    cmp ax, cx                       ; 0x7b6f
    jg short @..api_idx_0074_2.l20   ; 0x7b71
    cmp word [bp - 0x0012], byte 0   ; 0x7b73
    jne short @..api_idx_0074_2.l20  ; 0x7b77
    jmp near @..api_idx_0074_2.l38   ; 0x7b79
@..api_idx_0074_2.l20:
    mov ax, word [bp - 0x000c]       ; 0x7b7c
    cmp ax, strict word 0xd          ; 0x7b7f
    jne short @..api_idx_0074_2.l21  ; 0x7b82
    mov al, byte [bx + 0x5d77]       ; 0x7b84
    sub ah, ah                       ; 0x7b88
    sub ax, word [bp - 0x0008]       ; 0x7b8a
    jmp short @..api_idx_0074_2.l23  ; 0x7b8d
@..api_idx_0074_2.l21:
    mov ax, word [bp - 0x000c]       ; 0x7b8f
    cmp ax, strict word 3            ; 0x7b92
    jne short @..api_idx_0074_2.l22  ; 0x7b95
    mov al, byte [bx + 0x5d76]       ; 0x7b97
    sub ah, ah                       ; 0x7b9b
    sub ax, word [bp - 0x0008]       ; 0x7b9d
    jmp short @..api_idx_0074_2.l23  ; 0x7ba0
@..api_idx_0074_2.l22:
    add bx, word [bp - 0x000c]       ; 0x7ba2
    mov al, byte [bx + 0x5d9c]       ; 0x7ba5
    sub ah, ah                       ; 0x7ba9
    push ax                          ; 0x7bab
    mov ax, 3                        ; 0x7bac
    imul word [bp - 0x0008]          ; 0x7baf
    mov cx, ax                       ; 0x7bb2
    pop ax                           ; 0x7bb4
    sub ax, cx                       ; 0x7bb5
@..api_idx_0074_2.l23:
    mov word [bp - 0x001e], ax       ; 0x7bb7
    mov ax, 1                        ; 0x7bba
    cmp word [bp - 0x000c], byte 0   ; 0x7bbd
    je short @..api_idx_0074_2.l25   ; 0x7bc1
    mov cx, word [bp - 0x000c]       ; 0x7bc3
    cmp cx, byte 0x0d                ; 0x7bc6
    je short @..api_idx_0074_2.l25   ; 0x7bc9
    cmp cx, byte 3                   ; 0x7bcb
    je short @..api_idx_0074_2.l25   ; 0x7bce
    mov ax, 0x64                     ; 0x7bd0
    push ax                          ; 0x7bd3
    call ds_dispatch_b7a9            ; 0x7bd4
    pop cx                           ; 0x7bd7
    cmp ax, word [bp - 0x001e]       ; 0x7bd8
    jle short @..api_idx_0074_2.l24  ; 0x7bdb
    mov ax, 1                        ; 0x7bdd
    jmp short @..api_idx_0074_2.l25  ; 0x7be0
@..api_idx_0074_2.l24:
    mov ax, 0                        ; 0x7be2
@..api_idx_0074_2.l25:
    mov word [bp - 0x000e], ax       ; 0x7be5
    mov ax, word [bp - 0x0008]       ; 0x7be8
    mov word [bp - 0x001a], ax       ; 0x7beb
    mov ax, word [bp - 0x000a]       ; 0x7bee
    mov word [bp - 0x001c], ax       ; 0x7bf1
@..api_idx_0074_2.l26:
    cmp word [bp - 0x001c], byte 0   ; 0x7bf4
    jle short @..api_idx_0074_2.l28  ; 0x7bf8
    mov ax, 0x64                     ; 0x7bfa
    push ax                          ; 0x7bfd
    call ds_dispatch_b7a9            ; 0x7bfe
    pop cx                           ; 0x7c01
    cmp ax, word [bp - 0x001e]       ; 0x7c02
    jge short @..api_idx_0074_2.l28  ; 0x7c05
    dec word [bp - 0x001c]           ; 0x7c07
    cmp word [bp - 0x001a], byte 0   ; 0x7c0a
    jle short @..api_idx_0074_2.l27  ; 0x7c0e
    mov ax, 0x64                     ; 0x7c10
    push ax                          ; 0x7c13
    call ds_dispatch_b7a9            ; 0x7c14
    pop cx                           ; 0x7c17
    cmp ax, word [bp - 0x001e]       ; 0x7c18
    jge short @..api_idx_0074_2.l27  ; 0x7c1b
    dec word [bp - 0x001a]           ; 0x7c1d
@..api_idx_0074_2.l27:
    jmp short @..api_idx_0074_2.l26  ; 0x7c20
@..api_idx_0074_2.l28:
    cmp word [bp - 0x0010], byte 0   ; 0x7c22
    je short @..api_idx_0074_2.l29   ; 0x7c26
    jmp near @..api_idx_0074_2.l35   ; 0x7c28
@..api_idx_0074_2.l29:
    cmp word [bp - 0x000e], byte 0   ; 0x7c2b
    jne short @..api_idx_0074_2.l30  ; 0x7c2f
    jmp near @..api_idx_0074_2.l35   ; 0x7c31
@..api_idx_0074_2.l30:
    cmp word [bp - 0x001a], byte 0   ; 0x7c34
    jg short @..api_idx_0074_2.l31   ; 0x7c38
    jmp near @..api_idx_0074_2.l35   ; 0x7c3a
@..api_idx_0074_2.l31:
    cmp word [bp - 0x001c], byte 0   ; 0x7c3d
    jg short @..api_idx_0074_2.l32   ; 0x7c41
    jmp near @..api_idx_0074_2.l35   ; 0x7c43
@..api_idx_0074_2.l32:
    cmp word [bp - 0x000c], byte 3   ; 0x7c46
    jne short @..api_idx_0074_2.l33  ; 0x7c4a
    mov ax, 0x248                    ; 0x7c4c
    imul word [bp - 0x0002]          ; 0x7c4f
    mov bx, ax                       ; 0x7c52
    cmp word [bx + 0x5c10], byte 0   ; 0x7c54
    jle short @..api_idx_0074_2.l33  ; 0x7c59
    push word [bx + 0x5c10]          ; 0x7c5b
    mov ax, 1                        ; 0x7c5f
    push ax                          ; 0x7c62
    push word [bp - 0x001a]          ; 0x7c63
    push word [bp - 0x001c]          ; 0x7c66
    push word [bp - 0x001a]          ; 0x7c69
    call ds_dispatch_d0ea            ; 0x7c6c
    add sp, byte 6                   ; 0x7c6f
    mov cx, ax                       ; 0x7c72
    sub sp, byte 4                   ; 0x7c74
    mov ax, sp                       ; 0x7c77
    mov dx, ss                       ; 0x7c79
    mov es, dx                       ; 0x7c7b
    mov si, cx                       ; 0x7c7d
    mov di, ax                       ; 0x7c7f
    movsw                            ; 0x7c81
    movsw                            ; 0x7c82
    call ds_dispatch_d0be            ; 0x7c83
    add sp, byte 4                   ; 0x7c86
    mov cx, ax                       ; 0x7c89
    mov ax, 0x248                    ; 0x7c8b
    imul word [bp - 0x0002]          ; 0x7c8e
    mov bx, ax                       ; 0x7c91
    mov ax, word [bx + 0x5c10]       ; 0x7c93
    sub ax, cx                       ; 0x7c97
    push ax                          ; 0x7c99
    call ds_dispatch_b7c2            ; 0x7c9a
    add sp, byte 6                   ; 0x7c9d
    push ax                          ; 0x7ca0
    mov ax, 0x248                    ; 0x7ca1
    imul word [bp - 0x0002]          ; 0x7ca4
    mov bx, ax                       ; 0x7ca7
    pop ax                           ; 0x7ca9
    mov word [bx + 0x5c10], ax       ; 0x7caa
@..api_idx_0074_2.l33:
    push word [bp - 0x001c]          ; 0x7cae
    push word [bp - 0x001a]          ; 0x7cb1
    push word [bp - 0x0002]          ; 0x7cb4
    call api_idx_003e                ; 0x7cb7
    add sp, byte 6                   ; 0x7cba
    cmp word [bp - 0x000c], byte 3   ; 0x7cbd
    jne short @..api_idx_0074_2.l34  ; 0x7cc1
    mov ax, data_0002                ; 0x7cc3
    push ax                          ; 0x7cc6
    mov ax, 0xa                      ; 0x7cc7
    push ax                          ; 0x7cca
    push word [bp - 0x0002]          ; 0x7ccb
    call loc_0f54                    ; 0x7cce
    add sp, byte 6                   ; 0x7cd1
@..api_idx_0074_2.l34:
    cmp word [bp - 0x000c], byte 0x0d ; 0x7cd4
    jne short @..api_idx_0074_2.l35  ; 0x7cd8
    mov ax, 1                        ; 0x7cda
    push ax                          ; 0x7cdd
    mov ax, 0xb                      ; 0x7cde
    push ax                          ; 0x7ce1
    push word [bp - 0x0002]          ; 0x7ce2
    call loc_0f54                    ; 0x7ce5
    add sp, byte 6                   ; 0x7ce8
@..api_idx_0074_2.l35:
    cmp word [bp - 0x0004], byte 0   ; 0x7ceb
    jle short @..api_idx_0074_2.l38  ; 0x7cef
    cmp word [bp - 0x0004], byte 6   ; 0x7cf1
    jge short @..api_idx_0074_2.l36  ; 0x7cf5
    push word [bp - 0x0004]          ; 0x7cf7
    push word [bp - 0x000c]          ; 0x7cfa
    mov ax, word [bp - 0x0004]       ; 0x7cfd
    add ax, api_idx_0006             ; 0x7d00
    push ax                          ; 0x7d03
    push word [bp - 0x0002]          ; 0x7d04
    call api_idx_005a                ; 0x7d07
    add sp, byte 8                   ; 0x7d0a
    jmp short @..api_idx_0074_2.l38  ; 0x7d0d
@..api_idx_0074_2.l36:
    mov ax, word [bp - 0x0008]       ; 0x7d0f
    mov cx, word [bp - 0x0004]       ; 0x7d12
    cmp cx, byte 0x0c                ; 0x7d15
    jne short @..api_idx_0074_2.l37  ; 0x7d18
    mov ax, 0xff                     ; 0x7d1a
@..api_idx_0074_2.l37:
    push ax                          ; 0x7d1d
    mov ax, 0xa                      ; 0x7d1e
    push ax                          ; 0x7d21
    push word [bp - 0x0008]          ; 0x7d22
    add cx, byte 0xfa                ; 0x7d25
    mov ax, cx                       ; 0x7d28
    push ax                          ; 0x7d2a
    push word [bp - 0x000c]          ; 0x7d2b
    mov ax, word [bp - 0x0004]       ; 0x7d2e
    add ax, 0x147c                   ; 0x7d31
    push ax                          ; 0x7d34
    push word [bp - 0x0002]          ; 0x7d35
    call api_idx_0056                ; 0x7d38
    add sp, byte 0x0e                ; 0x7d3b
@..api_idx_0074_2.l38:
    cmp word [bp - 0x0024], byte 0   ; 0x7d3e
    je short @..api_idx_0074_2.l39   ; 0x7d42
    mov ax, 0x248                    ; 0x7d44
    imul word [bp - 0x0002]          ; 0x7d47
    mov bx, ax                       ; 0x7d4a
    cmp byte [bx + 0x5d5c], 0        ; 0x7d4c
    jne short @..api_idx_0074_2.l39  ; 0x7d51
    mov ax, data_0002                ; 0x7d53
    push ax                          ; 0x7d56
    mov ax, 0x17                     ; 0x7d57
    push ax                          ; 0x7d5a
    push word [bp - 0x0002]          ; 0x7d5b
    call loc_0f54                    ; 0x7d5e
    add sp, byte 6                   ; 0x7d61
@..api_idx_0074_2.l39:
    inc word [bp - 0x0002]           ; 0x7d64
@..api_idx_0074_2.l40:
    mov ax, word [bp - 0x0002]       ; 0x7d67
    cmp ax, word [bp - 0x0016]       ; 0x7d6a
    jge short @..api_idx_0074_2.l41  ; 0x7d6d
    jmp near @..api_idx_0074_2.l19   ; 0x7d6f
@..api_idx_0074_2.l41:
    mov ax, data_0002                ; 0x7d72
    push ax                          ; 0x7d75
    mov ax, 0xd                      ; 0x7d76
    push ax                          ; 0x7d79
    mov ax, word [data_8d12]         ; 0x7d7a
    shl ax, 1                        ; 0x7d7d
    mov si, ax                       ; 0x7d7f
    mov bx, word [data_0e12]         ; 0x7d81
    push word [bx + si + 0x3c0]      ; 0x7d85
    call ds_dispatch_ed3a            ; 0x7d89
    add sp, byte 6                   ; 0x7d8c
    push ax                          ; 0x7d8f
    call loc_782b                    ; 0x7d90
    pop cx                           ; 0x7d93
    inc word [data_8d12]             ; 0x7d94
    ret                              ; 0x7d98
loc_7d99:
    mov ax, 0                        ; 0x7d99
    call ds_dispatch_f40b            ; 0x7d9c
    call ds_dispatch_c145            ; 0x7d9f
    mov ax, 1                        ; 0x7da2
    push ax                          ; 0x7da5
    mov ax, 5                        ; 0x7da6
    push ax                          ; 0x7da9
    push ax                          ; 0x7daa
    call ds_dispatch_d6dc            ; 0x7dab
    add sp, byte 6                   ; 0x7dae
    mov ax, 7                        ; 0x7db1
    push ax                          ; 0x7db4
    mov ax, 9                        ; 0x7db5
    push ax                          ; 0x7db8
    call ds_dispatch_d61c            ; 0x7db9
    add sp, byte 4                   ; 0x7dbc
    mov ax, 0xf                      ; 0x7dbf
    push ax                          ; 0x7dc2
    mov ax, 0xd                      ; 0x7dc3
    push ax                          ; 0x7dc6
    call ds_dispatch_d61c            ; 0x7dc7
    add sp, byte 4                   ; 0x7dca
    mov ax, 0                        ; 0x7dcd
    push ax                          ; 0x7dd0
    mov ax, data_0002                ; 0x7dd1
    push ax                          ; 0x7dd4
    mov ax, 0x8f                     ; 0x7dd5
    push ax                          ; 0x7dd8
    mov ax, 0xf7                     ; 0x7dd9
    push ax                          ; 0x7ddc
    mov ax, 0x21                     ; 0x7ddd
    push ax                          ; 0x7de0
    mov ax, 0x48                     ; 0x7de1
    push ax                          ; 0x7de4
    call ds_dispatch_e935            ; 0x7de5
    add sp, byte 0x0c                ; 0x7de8
    mov word [data_9062], dx         ; 0x7deb
    mov word [data_9060], ax         ; 0x7def
    cmp word [data_906a], byte 0     ; 0x7df2
    je short @..local.l125           ; 0x7df7
    mov ax, 1                        ; 0x7df9
    push ax                          ; 0x7dfc
    push word [data_9068]            ; 0x7dfd
    call ds_dispatch_c459            ; 0x7e01
    add sp, byte 4                   ; 0x7e04
    mov word [data_906a], 0          ; 0x7e07
@..local.l125:
    mov ax, 0                        ; 0x7e0d
    push ax                          ; 0x7e10
    mov ax, data_0002                ; 0x7e11
    push ax                          ; 0x7e14
    mov ax, 0x8f                     ; 0x7e15
    push ax                          ; 0x7e18
    mov ax, 0xf7                     ; 0x7e19
    push ax                          ; 0x7e1c
    mov ax, 0x21                     ; 0x7e1d
    push ax                          ; 0x7e20
    mov ax, 0x48                     ; 0x7e21
    push ax                          ; 0x7e24
    call ds_dispatch_e935            ; 0x7e25
    add sp, byte 0x0c                ; 0x7e28
    mov word [data_9066], dx         ; 0x7e2b
    mov word [data_9064], ax         ; 0x7e2f
    call api_idx_000e                ; 0x7e32
    mov ax, 0xc6                     ; 0x7e35
    push ax                          ; 0x7e38
    mov ax, 0x127                    ; 0x7e39
    push ax                          ; 0x7e3c
    mov ax, 0xa5                     ; 0x7e3d
    push ax                          ; 0x7e40
    mov ax, 0x19                     ; 0x7e41
    push ax                          ; 0x7e44
    call ds_dispatch_e928            ; 0x7e45
    add sp, byte 8                   ; 0x7e48
    mov word [data_8d10], dx         ; 0x7e4b
    mov word [data_8d0e], ax         ; 0x7e4f
    mov ax, 0xa4                     ; 0x7e52
    push ax                          ; 0x7e55
    mov ax, 0xff                     ; 0x7e56
    push ax                          ; 0x7e59
    mov ax, 0x92                     ; 0x7e5a
    push ax                          ; 0x7e5d
    mov ax, 0x41                     ; 0x7e5e
    push ax                          ; 0x7e61
    call ds_dispatch_e928            ; 0x7e62
    add sp, byte 8                   ; 0x7e65
    mov word [data_8d0c], dx         ; 0x7e68
    mov word [data_8d0a], ax         ; 0x7e6c
    mov ax, 1                        ; 0x7e6f
    push ax                          ; 0x7e72
    mov ax, data_0002                ; 0x7e73
    push ax                          ; 0x7e76
    call ds_dispatch_d61c            ; 0x7e77
    add sp, byte 4                   ; 0x7e7a
    mov ax, data_0002                ; 0x7e7d
    push ax                          ; 0x7e80
    mov ax, 3                        ; 0x7e81
    push ax                          ; 0x7e84
    call ds_dispatch_d61c            ; 0x7e85
    add sp, byte 4                   ; 0x7e88
    mov word [data_91d4], 1          ; 0x7e8b
    mov word [data_9124], 5          ; 0x7e91
    mov word [data_911c], 0x8f       ; 0x7e97
    call ds_dispatch_ec17            ; 0x7e9d
    mov word [data_9126], 0          ; 0x7ea0
    cmp word [bp + 0x4], byte 0      ; 0x7ea6
    jle short @..local.l126          ; 0x7eaa
    mov ax, 0x9128                   ; 0x7eac
    push ax                          ; 0x7eaf
    push word [bp + 0x4]             ; 0x7eb0
    call ds_dispatch_b53b            ; 0x7eb3
    add sp, byte 4                   ; 0x7eb6
@..local.l126:
    ret                              ; 0x7eb9
loc_7eba:
    mov ax, 0                        ; 0x7eba
    call ds_dispatch_f40b            ; 0x7ebd
    mov ax, 0                        ; 0x7ec0
    push ax                          ; 0x7ec3
    mov ax, 1                        ; 0x7ec4
    push ax                          ; 0x7ec7
    push word [data_9066]            ; 0x7ec8
    push word [data_9064]            ; 0x7ecc
    call ds_dispatch_e942            ; 0x7ed0
    add sp, byte 8                   ; 0x7ed3
    mov ax, 0                        ; 0x7ed6
    push ax                          ; 0x7ed9
    mov ax, 1                        ; 0x7eda
    push ax                          ; 0x7edd
    push word [data_9062]            ; 0x7ede
    push word [data_9060]            ; 0x7ee2
    call ds_dispatch_e942            ; 0x7ee6
    add sp, byte 8                   ; 0x7ee9
    call api_idx_000e                ; 0x7eec
    mov ax, 0xf                      ; 0x7eef
    push ax                          ; 0x7ef2
    call ds_dispatch_c12a            ; 0x7ef3
    pop cx                           ; 0x7ef6
    mov ax, 7                        ; 0x7ef7
    push ax                          ; 0x7efa
    call ds_dispatch_c12a            ; 0x7efb
    pop cx                           ; 0x7efe
    mov ax, 5                        ; 0x7eff
    push ax                          ; 0x7f02
    call ds_dispatch_d6c6            ; 0x7f03
    pop cx                           ; 0x7f06
    mov ax, 0                        ; 0x7f07
    push ax                          ; 0x7f0a
    call api_idx_000a_2              ; 0x7f0b
    pop cx                           ; 0x7f0e
    mov ax, 1                        ; 0x7f0f
    push ax                          ; 0x7f12
    call ds_dispatch_c12a            ; 0x7f13
    pop cx                           ; 0x7f16
    mov ax, data_0002                ; 0x7f17
    push ax                          ; 0x7f1a
    call ds_dispatch_c12a            ; 0x7f1b
    pop cx                           ; 0x7f1e
    mov ax, 1                        ; 0x7f1f
    push ax                          ; 0x7f22
    push word [data_8d0c]            ; 0x7f23
    push word [data_8d0a]            ; 0x7f27
    call ds_dispatch_e94f            ; 0x7f2b
    add sp, byte 6                   ; 0x7f2e
    mov ax, 1                        ; 0x7f31
    push ax                          ; 0x7f34
    push word [data_8d10]            ; 0x7f35
    push word [data_8d0e]            ; 0x7f39
    call ds_dispatch_e94f            ; 0x7f3d
    add sp, byte 6                   ; 0x7f40
    mov ax, 0xc6                     ; 0x7f43
    push ax                          ; 0x7f46
    mov ax, 0x109                    ; 0x7f47
    push ax                          ; 0x7f4a
    mov ax, 0x92                     ; 0x7f4b
    push ax                          ; 0x7f4e
    mov ax, 0x37                     ; 0x7f4f
    push ax                          ; 0x7f52
    call ds_dispatch_bb33            ; 0x7f53
    add sp, byte 8                   ; 0x7f56
    ret                              ; 0x7f59
