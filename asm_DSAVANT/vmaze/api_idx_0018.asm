api_idx_0018:
    mov ax, 0xffe8                   ; 0x1c94
    call ds_dispatch_f40b            ; 0x1c97
    call loc_0140                    ; 0x1c9a
    call ds_dispatch_d9a6            ; 0x1c9d
    mov word [data_8450], ax         ; 0x1ca0
    test ax, ax                      ; 0x1ca3
    je short @..api_idx_0018.l1      ; 0x1ca5
    mov ax, 0                        ; 0x1ca7
    push ax                          ; 0x1caa
    mov ax, 1                        ; 0x1cab
    push ax                          ; 0x1cae
    call ds_dispatch_d7e7            ; 0x1caf
    add sp, byte 4                   ; 0x1cb2
    mov ax, word [data_010e]         ; 0x1cb5
    mov word [data_844e], ax         ; 0x1cb8
    mov ax, 0                        ; 0x1cbb
    push ax                          ; 0x1cbe
    push word [data_844e]            ; 0x1cbf
    push ax                          ; 0x1cc3
    call ds_dispatch_d964            ; 0x1cc4
    add sp, byte 6                   ; 0x1cc7
    mov word [data_844c], ax         ; 0x1cca
@..api_idx_0018.l1:
    mov ax, 0x7f4                    ; 0x1ccd
    push ax                          ; 0x1cd0
    call api_idx_0050                ; 0x1cd1
    pop cx                           ; 0x1cd4
    mov word [data_91ae], 0          ; 0x1cd5
    mov ax, word [data_8f1c]         ; 0x1cdb
    mov dx, word [data_8f1e]         ; 0x1cde
    sub ax, word [data_8f18]         ; 0x1ce2
    sbb dx, word [api_idx_0002_20]   ; 0x1ce6
    add word [data_8f14], ax         ; 0x1cea
    adc word [data_8f16], dx         ; 0x1cee
    mov ax, word [data_8f14]         ; 0x1cf2
    mov dx, word [data_8f16]         ; 0x1cf5
    mov cx, 0x3c                     ; 0x1cf9
    mov bx, 0                        ; 0x1cfc
    call ds_dispatch_f99f            ; 0x1cff
    mov word [bp - 0x000c], ax       ; 0x1d02
    mov word [bp - 0x000e], 0        ; 0x1d05
@..api_idx_0018.l2:
    cmp word [bp - 0x000c], byte 4   ; 0x1d0a
    jl short @..api_idx_0018.l3      ; 0x1d0e
    inc word [bp - 0x000e]           ; 0x1d10
    add word [bp - 0x000c], byte 0xfc ; 0x1d13
    add word [data_8f14], strict word 0xff10 ; 0x1d17
    adc word [data_8f16], byte 0xff  ; 0x1d1d
    jmp short @..api_idx_0018.l2     ; 0x1d22
@..api_idx_0018.l3:
    mov ax, word [data_8f1c]         ; 0x1d24
    mov dx, word [data_8f1e]         ; 0x1d27
    mov word [api_idx_0002_20], dx   ; 0x1d2b
    mov word [data_8f18], ax         ; 0x1d2f
    cmp word [data_8450], byte 0     ; 0x1d32
    jne short @..api_idx_0018.l4     ; 0x1d37
    mov ax, 0x30                     ; 0x1d39
    jmp short @..api_idx_0018.l5     ; 0x1d3c
@..api_idx_0018.l4:
    mov ax, 0                        ; 0x1d3e
@..api_idx_0018.l5:
    mov word [bp - 0x0012], ax       ; 0x1d41
    mov word [bp - 0x0008], 0        ; 0x1d44
    mov word [bp - 0x0014], 0        ; 0x1d49
    mov word [bp - 0x0016], 0        ; 0x1d4e
    cmp word [data_830c], byte 0     ; 0x1d53
    jne short @..api_idx_0018.l6     ; 0x1d58
    mov ax, word [data_8f3e]         ; 0x1d5a
    mov cx, 6                        ; 0x1d5d
    shl ax, cl                       ; 0x1d60
    mov cx, word [data_8f40]         ; 0x1d62
    shl cx, 1                        ; 0x1d66
    shl cx, 1                        ; 0x1d68
    shl cx, 1                        ; 0x1d6a
    add ax, cx                       ; 0x1d6c
    add ax, word [data_8f42]         ; 0x1d6e
    mov word [bp - 0x0018], ax       ; 0x1d72
    push ax                          ; 0x1d75
    mov ax, word [data_0e14]         ; 0x1d76
    add ax, 0x930                    ; 0x1d79
    push ax                          ; 0x1d7c
    call ds_dispatch_ec74            ; 0x1d7d
    add sp, byte 4                   ; 0x1d80
    mov word [bp - 0x0014], ax       ; 0x1d83
@..api_idx_0018.l6:
    mov ax, word [bp - 0x0008]       ; 0x1d86
    cmp ax, word [bp - 0x0012]       ; 0x1d89
    jl short @..api_idx_0018.l7      ; 0x1d8c
    call ds_dispatch_ef83            ; 0x1d8e
    test ax, ax                      ; 0x1d91
    jne short @..api_idx_0018.l7     ; 0x1d93
    jmp near @..api_idx_0018.l32     ; 0x1d95
@..api_idx_0018.l7:
    cmp word [data_91ae], byte 0     ; 0x1d98
    je short @..api_idx_0018.l8      ; 0x1d9d
    jmp near @..api_idx_0018.l32     ; 0x1d9f
@..api_idx_0018.l8:
    cmp word [data_830a], byte 5     ; 0x1da2
    je short @..api_idx_0018.l9      ; 0x1da7
    jmp near @..api_idx_0018.l32     ; 0x1da9
@..api_idx_0018.l9:
    call loc_0f68                    ; 0x1dac
    test ax, ax                      ; 0x1daf
    jne short @..api_idx_0018.l10    ; 0x1db1
    jmp short @..api_idx_0018.l9     ; 0x1db3
@..api_idx_0018.l10:
    mov word [bp - 0x0002], 0        ; 0x1db5
    jmp short @..api_idx_0018.l12    ; 0x1dba
@..api_idx_0018.l11:
    mov ax, 0x248                    ; 0x1dbc
    imul word [bp - 0x0002]          ; 0x1dbf
    mov bx, ax                       ; 0x1dc2
    mov byte [bx + 0x5d5c], 0xa      ; 0x1dc4
    mov ax, 1                        ; 0x1dc9
    push ax                          ; 0x1dcc
    push word [bp - 0x0002]          ; 0x1dcd
    call ds_dispatch_cb3a            ; 0x1dd0
    add sp, byte 4                   ; 0x1dd3
    inc word [bp - 0x0002]           ; 0x1dd6
@..api_idx_0018.l12:
    mov ax, word [bp - 0x0002]       ; 0x1dd9
    cmp ax, word [data_69c8]         ; 0x1ddc
    jl short @..api_idx_0018.l11     ; 0x1de0
    cmp word [bp - 0x0014], byte 0   ; 0x1de2
    je short @..api_idx_0018.l13     ; 0x1de6
    cmp word [bp - 0x0016], byte 0   ; 0x1de8
    jne short @..api_idx_0018.l13    ; 0x1dec
    mov word [bp - 0x0016], 1        ; 0x1dee
    call api_idx_0004                ; 0x1df3
    test ax, ax                      ; 0x1df6
    je short @..api_idx_0018.l13     ; 0x1df8
    mov bx, word [data_0e12]         ; 0x1dfa
    mov si, word [data_8f3e]         ; 0x1dfe
    mov al, byte [bx + si + 0xb40]   ; 0x1e02
    sub ah, ah                       ; 0x1e06
    mov word [data_8d12], ax         ; 0x1e08
@..api_idx_0018.l13:
    call ds_dispatch_baef            ; 0x1e0b
    test ax, ax                      ; 0x1e0e
    je short @..api_idx_0018.l14     ; 0x1e10
    mov word [data_91ae], 1          ; 0x1e12
@..api_idx_0018.l14:
    call loc_0f68                    ; 0x1e18
    test ax, ax                      ; 0x1e1b
    jne short @..api_idx_0018.l15    ; 0x1e1d
    mov ax, 0xa                      ; 0x1e1f
    push ax                          ; 0x1e22
    call ds_dispatch_e489            ; 0x1e23
    pop cx                           ; 0x1e26
@..api_idx_0018.l15:
    cmp word [bp - 0x0014], byte 0   ; 0x1e27
    je short @..api_idx_0018.l16     ; 0x1e2b
    mov word [data_91ae], 0          ; 0x1e2d
@..api_idx_0018.l16:
    cmp word [data_91ae], byte 0     ; 0x1e33
    je short @..api_idx_0018.l17     ; 0x1e38
    jmp near @..api_idx_0018.l31     ; 0x1e3a
@..api_idx_0018.l17:
    inc word [bp - 0x0008]           ; 0x1e3d
    add word [data_8f1c], byte 0x0a  ; 0x1e40
    adc word [data_8f1e], byte 0     ; 0x1e45
    call api_idx_0002_8              ; 0x1e4a
    mov ax, 0xa                      ; 0x1e4d
    push ax                          ; 0x1e50
    call api_idx_0002_10             ; 0x1e51
    pop cx                           ; 0x1e54
    cmp word [bp - 0x0008], byte 0x18 ; 0x1e55
    jne short @..api_idx_0018.l18    ; 0x1e59
    mov ax, 0x64                     ; 0x1e5b
    push ax                          ; 0x1e5e
    call ds_dispatch_b7a9            ; 0x1e5f
    pop cx                           ; 0x1e62
    mov word [bp - 0x0002], ax       ; 0x1e63
    mov ax, 0x64                     ; 0x1e66
    push ax                          ; 0x1e69
    call ds_dispatch_b7a9            ; 0x1e6a
    pop cx                           ; 0x1e6d
    mov bx, word [bp - 0x0002]       ; 0x1e6e
    mov byte [bx + 0x5990], al       ; 0x1e71
@..api_idx_0018.l18:
    mov word [bp - 0x0002], 0        ; 0x1e75
    jmp near @..api_idx_0018.l27     ; 0x1e7a
@..api_idx_0018.l19:
    mov ax, word [bp - 0x0008]       ; 0x1e7d
    mov cx, 6                        ; 0x1e80
    cwd                              ; 0x1e83
    idiv cx                          ; 0x1e84
    mov ax, dx                       ; 0x1e86
    test ax, ax                      ; 0x1e88
    jne short @..api_idx_0018.l20    ; 0x1e8a
    mov ax, 1                        ; 0x1e8c
    jmp short @..api_idx_0018.l21    ; 0x1e8f
@..api_idx_0018.l20:
    mov ax, 0                        ; 0x1e91
