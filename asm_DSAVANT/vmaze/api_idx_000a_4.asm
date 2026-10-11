api_idx_000a_4:
    mov ax, 0xfff6                   ; 0x7ce5
    call ds_dispatch_f40b            ; 0x7ce8
    mov bx, word [dseg_0e14]         ; 0x7ceb
    mov si, word [bp + 0x8]          ; 0x7cef
    mov al, byte [bx + si + 0x490]   ; 0x7cf2
    sub ah, ah                       ; 0x7cf6
    add ax, word [bp + 0xa]          ; 0x7cf8
    mov word [bp - 0x0006], ax       ; 0x7cfb
    mov al, byte [bx + si + 0x4a0]   ; 0x7cfe
    sub ah, ah                       ; 0x7d02
    add ax, word [bp + 0xc]          ; 0x7d04
    mov word [bp - 0x0008], ax       ; 0x7d07
    mov cx, 6                        ; 0x7d0a
    shl si, cl                       ; 0x7d0d
    mov ax, si                       ; 0x7d0f
    mov cx, word [bp + 0xc]          ; 0x7d11
    shl cx, 1                        ; 0x7d14
    shl cx, 1                        ; 0x7d16
    shl cx, 1                        ; 0x7d18
    add ax, cx                       ; 0x7d1a
    add ax, word [bp + 0xa]          ; 0x7d1c
    mov word [bp - 0x000a], ax       ; 0x7d1f
    mov word [bp - 0x0002], 0xffff   ; 0x7d22
    mov ax, word [bp + 0x4]          ; 0x7d27
    jmp near @..api_idx_000a_4.l7    ; 0x7d2a
@..api_idx_000a_4.l1:
    mov word [bp - 0x0002], 0        ; 0x7d2d
    mov word [bp - 0x0004], 1        ; 0x7d32
    jmp near @..api_idx_000a_4.l11   ; 0x7d37
@..api_idx_000a_4.l2:
    mov word [bp - 0x0002], 1        ; 0x7d3a
    mov word [bp - 0x0004], 2        ; 0x7d3f
    jmp near @..api_idx_000a_4.l11   ; 0x7d44
@..api_idx_000a_4.l3:
    mov ax, word [bp - 0x0008]       ; 0x7d47
    dec ax                           ; 0x7d4a
    push ax                          ; 0x7d4b
    push word [bp - 0x0006]          ; 0x7d4c
    lea ax, word [bp + 0x8]          ; 0x7d4f
    push ax                          ; 0x7d52
    lea ax, word [bp + 0xc]          ; 0x7d53
    push ax                          ; 0x7d56
    lea ax, word [bp + 0xa]          ; 0x7d57
    push ax                          ; 0x7d5a
    call api_idx_0004_6              ; 0x7d5b
    add sp, byte 0x0a                ; 0x7d5e
    test ax, ax                      ; 0x7d61
    jne short @..api_idx_000a_4.l4   ; 0x7d63
    mov ax, word [bp + 0x8]          ; 0x7d65
    mov cx, 6                        ; 0x7d68
    shl ax, cl                       ; 0x7d6b
    mov cx, word [bp + 0xc]          ; 0x7d6d
    shl cx, 1                        ; 0x7d70
    shl cx, 1                        ; 0x7d72
    shl cx, 1                        ; 0x7d74
    add ax, cx                       ; 0x7d76
    add ax, word [bp + 0xa]          ; 0x7d78
    mov word [bp - 0x000a], ax       ; 0x7d7b
    mov word [bp - 0x0002], 0        ; 0x7d7e
    mov word [bp - 0x0004], 1        ; 0x7d83
@..api_idx_000a_4.l4:
    jmp short @..api_idx_000a_4.l11  ; 0x7d88
@..api_idx_000a_4.l5:
    push word [bp - 0x0008]          ; 0x7d8a
    mov ax, word [bp - 0x0006]       ; 0x7d8d
    dec ax                           ; 0x7d90
    push ax                          ; 0x7d91
    lea ax, word [bp + 0x8]          ; 0x7d92
    push ax                          ; 0x7d95
    lea ax, word [bp + 0xc]          ; 0x7d96
    push ax                          ; 0x7d99
    lea ax, word [bp + 0xa]          ; 0x7d9a
    push ax                          ; 0x7d9d
    call api_idx_0004_6              ; 0x7d9e
    add sp, byte 0x0a                ; 0x7da1
    test ax, ax                      ; 0x7da4
    jne short @..api_idx_000a_4.l6   ; 0x7da6
    mov ax, word [bp + 0x8]          ; 0x7da8
    mov cx, 6                        ; 0x7dab
    shl ax, cl                       ; 0x7dae
    mov cx, word [bp + 0xc]          ; 0x7db0
    shl cx, 1                        ; 0x7db3
    shl cx, 1                        ; 0x7db5
    shl cx, 1                        ; 0x7db7
    add ax, cx                       ; 0x7db9
    add ax, word [bp + 0xa]          ; 0x7dbb
    mov word [bp - 0x000a], ax       ; 0x7dbe
    mov word [bp - 0x0002], 1        ; 0x7dc1
    mov word [bp - 0x0004], 2        ; 0x7dc6
@..api_idx_000a_4.l6:
    jmp short @..api_idx_000a_4.l11  ; 0x7dcb
@..api_idx_000a_4.l7:
    cmp ax, strict word 0            ; 0x7dcd
    jne short @..api_idx_000a_4.l8   ; 0x7dd0
    jmp near @..api_idx_000a_4.l1    ; 0x7dd2
@..api_idx_000a_4.l8:
    cmp ax, strict word 1            ; 0x7dd5
    jne short @..api_idx_000a_4.l9   ; 0x7dd8
    jmp near @..api_idx_000a_4.l2    ; 0x7dda
@..api_idx_000a_4.l9:
    cmp ax, strict word 2            ; 0x7ddd
    jne short @..api_idx_000a_4.l10  ; 0x7de0
    jmp near @..api_idx_000a_4.l3    ; 0x7de2
@..api_idx_000a_4.l10:
    cmp ax, strict word 3            ; 0x7de5
    je short @..api_idx_000a_4.l5    ; 0x7de8
@..api_idx_000a_4.l11:
    cmp word [bp - 0x0002], byte 0xff ; 0x7dea
    je short @..api_idx_000a_4.l13   ; 0x7dee
    mov ax, 0                        ; 0x7df0
    push ax                          ; 0x7df3
    push ax                          ; 0x7df4
    push ax                          ; 0x7df5
    push word [bp + 0x6]             ; 0x7df6
    push word [bp + 0xc]             ; 0x7df9
    push word [bp + 0xa]             ; 0x7dfc
    push word [bp + 0x8]             ; 0x7dff
    push word [bp - 0x0004]          ; 0x7e02
    push word [dseg_830c]            ; 0x7e05
    call api_idx_0004_7              ; 0x7e09
    add sp, byte 0x12                ; 0x7e0c
    cmp word [bp - 0x0002], byte 0   ; 0x7e0f
    jne short @..api_idx_000a_4.l12  ; 0x7e13
    push word [bp + 0x6]             ; 0x7e15
    mov ax, 4                        ; 0x7e18
    push ax                          ; 0x7e1b
    push word [bp - 0x000a]          ; 0x7e1c
    mov ax, word [dseg_0e14]         ; 0x7e1f
    add ax, 0x90                     ; 0x7e22
    push ax                          ; 0x7e25
    call ds_dispatch_eca4            ; 0x7e26
    add sp, byte 8                   ; 0x7e29
    jmp short @..api_idx_000a_4.l13  ; 0x7e2c
@..api_idx_000a_4.l12:
    push word [bp + 0x6]             ; 0x7e2e
    mov ax, 4                        ; 0x7e31
    push ax                          ; 0x7e34
    push word [bp - 0x000a]          ; 0x7e35
    mov ax, word [dseg_0e14]         ; 0x7e38
    add ax, 0x290                    ; 0x7e3b
    push ax                          ; 0x7e3e
    call ds_dispatch_eca4            ; 0x7e3f
    add sp, byte 8                   ; 0x7e42
@..api_idx_000a_4.l13:
    ret                              ; 0x7e45
