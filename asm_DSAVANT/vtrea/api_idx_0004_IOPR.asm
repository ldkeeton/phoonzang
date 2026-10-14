; auto-generated
api_idx_0004_IOPR:
    mov ax, 0xfffc                   ; 0x8a18
    call aztec_csav                  ; 0x8a1b
    mov word [bp - 0x0004], 0        ; 0x8a1e
    mov word [bp - 0x0002], 0        ; 0x8a23
@..api_idx_0004_IOPR.l1:
    mov ax, 6                        ; 0x8a28
    imul word [bp - 0x0002]          ; 0x8a2b
    mov bx, ax                       ; 0x8a2e
    mov al, byte [bx + 0x620]        ; 0x8a30
    sub ah, ah                       ; 0x8a34
    cmp ax, word [bp + 0x6]          ; 0x8a36
    jne short @..api_idx_0004_IOPR.l2 ; 0x8a39
    push word [bp - 0x0002]          ; 0x8a3b
    mov ax, 0x248                    ; 0x8a3e
    imul word [bp + 0x4]             ; 0x8a41
    add ax, 0x5e12                   ; 0x8a44
    push ax                          ; 0x8a47
    call ds_leaf_loc_KIMU            ; 0x8a48
    add sp, byte 4                   ; 0x8a4b
    test ax, ax                      ; 0x8a4e
    je short @..api_idx_0004_IOPR.l2 ; 0x8a50
    mov ax, 0x14                     ; 0x8a52
    imul word [bp - 0x0004]          ; 0x8a55
    add ax, 0xe38                    ; 0x8a58
    push ax                          ; 0x8a5b
    mov ax, word [bp - 0x0002]       ; 0x8a5c
    add ax, 0xfa0                    ; 0x8a5f
    push ax                          ; 0x8a62
    call ds_app_mem_VKHV             ; 0x8a63
    add sp, byte 4                   ; 0x8a66
    mov ax, word [bp - 0x0002]       ; 0x8a69
    mov cx, word [bp - 0x0004]       ; 0x8a6c
    shl cx, 1                        ; 0x8a6f
    mov bx, cx                       ; 0x8a71
    mov word [bx - 0x6996], ax       ; 0x8a73
    inc word [bp - 0x0004]           ; 0x8a77
@..api_idx_0004_IOPR.l2:
    inc word [bp - 0x0002]           ; 0x8a7a
    mov ax, word [bp - 0x0002]       ; 0x8a7d
    cmp ax, strict word 0x66         ; 0x8a80
    jl short @..api_idx_0004_IOPR.l1 ; 0x8a83
    mov ax, word [bp - 0x0004]       ; 0x8a85
    ret                              ; 0x8a88
