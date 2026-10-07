api_idx_0004_11:
    mov ax, 0xfffc                   ; 0x73f6
    call ds_dispatch_f40b            ; 0x73f9
    mov ax, 0x64                     ; 0x73fc
    push ax                          ; 0x73ff
    call ds_dispatch_b7a9            ; 0x7400
    pop cx                           ; 0x7403
    mov word [bp - 0x0004], ax       ; 0x7404
    mov word [bp - 0x0002], 0        ; 0x7407
@..api_idx_0004_11.l1:
    mov bx, word [bp + 0x4]          ; 0x740c
    mov si, word [bp - 0x0002]       ; 0x740f
    mov al, byte [bx + si]           ; 0x7412
    sub ah, ah                       ; 0x7414
    cmp ax, word [bp - 0x0004]       ; 0x7416
    jle short @..api_idx_0004_11.l2  ; 0x7419
    mov ax, si                       ; 0x741b
    ret                              ; 0x741d
