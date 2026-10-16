; auto-generated
api_idx_0002_SSJN:
    mov ax, 0xfffe                   ; 0x19ab
    call aztec_csav                  ; 0x19ae
    mov ax, 0                        ; 0x19b1
    push ax                          ; 0x19b4
    push ax                          ; 0x19b5
    push word [bss_953e]             ; 0x19b6
    push word [bss_953c]             ; 0x19ba
    call thunk_12                    ; 0x19be
    add sp, byte 8                   ; 0x19c1
    mov ax, 0                        ; 0x19c4
    push ax                          ; 0x19c7
    mov ax, 0x55                     ; 0x19c8
    push ax                          ; 0x19cb
    call thunk_3                     ; 0x19cc
    add sp, byte 4                   ; 0x19cf
    mov word [bp - 0x0002], 0        ; 0x19d2
@..api_idx_0002_SSJN.l1:
    mov ax, 6                        ; 0x19d7
    imul word [bp - 0x0002]          ; 0x19da
    add ax, strict word 0x23         ; 0x19dd
    push ax                          ; 0x19e0
    mov ax, 0x73                     ; 0x19e1
    push ax                          ; 0x19e4
    call thunk                       ; 0x19e5
    add sp, byte 4                   ; 0x19e8
    mov ax, 0                        ; 0x19eb
    push ax                          ; 0x19ee
    mov ax, 0xa                      ; 0x19ef
    imul word [bp - 0x0002]          ; 0x19f2
    add ax, 0x9544                   ; 0x19f5
    push ax                          ; 0x19f8
    call ds_string_loc_QRJV          ; 0x19f9
    add sp, byte 4                   ; 0x19fc
    mov ax, 0                        ; 0x19ff
    push ax                          ; 0x1a02
    mov ax, 3                        ; 0x1a03
    push ax                          ; 0x1a06
    mov ax, 0x248                    ; 0x1a07
    imul word [bp + 0x4]             ; 0x1a0a
    add ax, word [bp - 0x0002]       ; 0x1a0d
    mov bx, ax                       ; 0x1a10
    mov al, byte [bx + 0x5d64]       ; 0x1a12
    sub ah, ah                       ; 0x1a16
    push ax                          ; 0x1a18
    call ds_app_GUML                 ; 0x1a19
    add sp, byte 6                   ; 0x1a1c
    inc word [bp - 0x0002]           ; 0x1a1f
    mov ax, word [bp - 0x0002]       ; 0x1a22
    cmp ax, strict word 8            ; 0x1a25
    jl short @..api_idx_0002_SSJN.l1 ; 0x1a28
    cmp word [bss_9594], byte 0      ; 0x1a2a
    jl short @..api_idx_0002_SSJN.l2 ; 0x1a2f
    mov ax, 0                        ; 0x1a31
    push ax                          ; 0x1a34
    mov ax, 0x16                     ; 0x1a35
    push ax                          ; 0x1a38
    call thunk_3                     ; 0x1a39
    add sp, byte 4                   ; 0x1a3c
    mov ax, 0x59                     ; 0x1a3f
    push ax                          ; 0x1a42
    mov ax, 0x67                     ; 0x1a43
    push ax                          ; 0x1a46
    call thunk                       ; 0x1a47
    add sp, byte 4                   ; 0x1a4a
    mov ax, 0                        ; 0x1a4d
    push ax                          ; 0x1a50
    mov ax, 0x9596                   ; 0x1a51
    push ax                          ; 0x1a54
    call ds_string_loc_QRJV          ; 0x1a55
    add sp, byte 4                   ; 0x1a58
    mov ax, 0                        ; 0x1a5b
    push ax                          ; 0x1a5e
    mov ax, 1                        ; 0x1a5f
    push ax                          ; 0x1a62
    call thunk_3                     ; 0x1a63
    add sp, byte 4                   ; 0x1a66
    mov ax, 0                        ; 0x1a69
    push ax                          ; 0x1a6c
    mov ax, 3                        ; 0x1a6d
    push ax                          ; 0x1a70
    push word [bss_9594]             ; 0x1a71
    call ds_app_GUML                 ; 0x1a75
    add sp, byte 6                   ; 0x1a78
@..api_idx_0002_SSJN.l2:
    cmp word [bp + 0x6], byte 0      ; 0x1a7b
    je short @..api_idx_0002_SSJN.l3 ; 0x1a7f
    mov ax, 0x60                     ; 0x1a81
    push ax                          ; 0x1a84
    mov ax, 0xa8                     ; 0x1a85
    push ax                          ; 0x1a88
    mov ax, 0x23                     ; 0x1a89
    push ax                          ; 0x1a8c
    mov ax, 0x66                     ; 0x1a8d
    push ax                          ; 0x1a90
    call thunk_4                     ; 0x1a91
    add sp, byte 8                   ; 0x1a94
@..api_idx_0002_SSJN.l3:
    ret                              ; 0x1a97
