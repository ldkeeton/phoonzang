api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0d55
    call ds_dispatch_f40b            ; 0x0d58
    mov ax, 0                        ; 0x0d5b
    push ax                          ; 0x0d5e
    push ax                          ; 0x0d5f
    push word [bss_9404]             ; 0x0d60
    push word [bss_9402]             ; 0x0d64
    call ds_dispatch_e942            ; 0x0d68
    add sp, byte 8                   ; 0x0d6b
    mov word [bp - 0x0002], 0        ; 0x0d6e
@..api_idx_0004_3.l1:
    mov word [bp - 0x0004], 0        ; 0x0d73
@..api_idx_0004_3.l2:
    mov ax, 0                        ; 0x0d78
    push ax                          ; 0x0d7b
    mov ax, word [bp - 0x0002]       ; 0x0d7c
    shl ax, 1                        ; 0x0d7f
    shl ax, 1                        ; 0x0d81
    mov cx, word [bp - 0x0004]       ; 0x0d83
    shl cx, 1                        ; 0x0d86
    add ax, cx                       ; 0x0d88
    mov bx, ax                       ; 0x0d8a
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x0d90
    add sp, byte 4                   ; 0x0d93
    mov ax, word [bp - 0x0002]       ; 0x0d96
    shl ax, 1                        ; 0x0d99
    shl ax, 1                        ; 0x0d9b
    shl ax, 1                        ; 0x0d9d
    mov cx, word [bp - 0x0004]       ; 0x0d9f
    shl cx, 1                        ; 0x0da2
    shl cx, 1                        ; 0x0da4
    add ax, cx                       ; 0x0da6
    mov bx, ax                       ; 0x0da8
    push word [bx + 0x15e]           ; 0x0daa
    push word [bx + 0x15c]           ; 0x0dae
    call ds_dispatch_e809            ; 0x0db2
    add sp, byte 4                   ; 0x0db5
    mov ax, 3                        ; 0x0db8
    push ax                          ; 0x0dbb
    push ax                          ; 0x0dbc
    mov ax, 0x248                    ; 0x0dbd
    imul word [bp + 0x4]             ; 0x0dc0
    mov cx, word [bp - 0x0002]       ; 0x0dc3
    shl cx, 1                        ; 0x0dc6
    shl cx, 1                        ; 0x0dc8
    add ax, cx                       ; 0x0dca
    mov cx, word [bp - 0x0004]       ; 0x0dcc
    shl cx, 1                        ; 0x0dcf
    add ax, cx                       ; 0x0dd1
    mov bx, ax                       ; 0x0dd3
    push word [bx + 0x5c1c]          ; 0x0dd5
    call ds_dispatch_b2e7            ; 0x0dd9
    add sp, byte 6                   ; 0x0ddc
    inc word [bp - 0x0004]           ; 0x0ddf
    mov ax, word [bp - 0x0004]       ; 0x0de2
    cmp ax, strict word 2            ; 0x0de5
    jl short @..api_idx_0004_3.l2    ; 0x0de8
    inc word [bp - 0x0002]           ; 0x0dea
    mov ax, word [bp - 0x0002]       ; 0x0ded
    cmp ax, strict word 6            ; 0x0df0
    jge short @..api_idx_0004_3.l3   ; 0x0df3
    jmp near @..api_idx_0004_3.l1    ; 0x0df5
@..api_idx_0004_3.l3:
    mov ax, 0                        ; 0x0df8
    push ax                          ; 0x0dfb
    push ax                          ; 0x0dfc
    push ax                          ; 0x0dfd
    call api_idx_000c_2              ; 0x0dfe
    add sp, byte 6                   ; 0x0e01
    ret                              ; 0x0e04
