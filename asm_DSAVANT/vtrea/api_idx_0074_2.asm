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
    call math_loc_788f               ; 0x79a3
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
