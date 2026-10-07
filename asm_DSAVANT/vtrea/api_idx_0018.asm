api_idx_0018:
    mov ax, 0xffe8                   ; 0x37b6
    call ds_dispatch_f40b            ; 0x37b9
    mov ax, word [bp + 0x6]          ; 0x37bc
    imul word [bp + 0xe]             ; 0x37bf
    add ax, word [bp + 0xa]          ; 0x37c2
    add ax, strict word 0xb          ; 0x37c5
    push ax                          ; 0x37c8
    mov ax, 6                        ; 0x37c9
    imul word [bp + 0xc]             ; 0x37cc
    add ax, word [bp + 0x8]          ; 0x37cf
    inc ax                           ; 0x37d2
    push ax                          ; 0x37d3
    mov ax, word [bp + 0x6]          ; 0x37d4
    imul word [bp + 0xe]             ; 0x37d7
    add ax, word [bp + 0xa]          ; 0x37da
    dec ax                           ; 0x37dd
    push ax                          ; 0x37de
    mov ax, word [bp + 0x8]          ; 0x37df
    dec ax                           ; 0x37e2
    push ax                          ; 0x37e3
    call ds_dispatch_e928            ; 0x37e4
    add sp, byte 8                   ; 0x37e7
    mov word [bp - 0x0016], dx       ; 0x37ea
    mov word [bp - 0x0018], ax       ; 0x37ed
    lea ax, word [bp - 0x0014]       ; 0x37f0
    push ax                          ; 0x37f3
    push word [bp + 0x4]             ; 0x37f4
    call ds_dispatch_b53b            ; 0x37f7
    add sp, byte 4                   ; 0x37fa
    mov ax, 0                        ; 0x37fd
    push ax                          ; 0x3800
    mov ax, word [bp + 0x6]          ; 0x3801
    imul word [bp + 0xe]             ; 0x3804
    add ax, word [bp + 0xa]          ; 0x3807
    add ax, strict word 8            ; 0x380a
    push ax                          ; 0x380d
    mov ax, 6                        ; 0x380e
    imul word [bp + 0xc]             ; 0x3811
    add ax, word [bp + 0x8]          ; 0x3814
    push ax                          ; 0x3817
    mov ax, word [bp + 0x6]          ; 0x3818
    imul word [bp + 0xe]             ; 0x381b
    add ax, word [bp + 0xa]          ; 0x381e
    push ax                          ; 0x3821
    push word [bp + 0x8]             ; 0x3822
    call ds_dispatch_bce3            ; 0x3825
    add sp, byte 0x0a                ; 0x3828
    mov ax, word [bp + 0x6]          ; 0x382b
    imul word [bp + 0xe]             ; 0x382e
    add ax, word [bp + 0xa]          ; 0x3831
    inc ax                           ; 0x3834
    inc ax                           ; 0x3835
    push ax                          ; 0x3836
    lea ax, word [bp - 0x0014]       ; 0x3837
    push ax                          ; 0x383a
    call ds_dispatch_fa90            ; 0x383b
    pop cx                           ; 0x383e
    mov cx, ax                       ; 0x383f
    mov ax, word [bp + 0xc]          ; 0x3841
    sub ax, cx                       ; 0x3844
    mov cx, 6                        ; 0x3846
    imul cx                          ; 0x3849
    mov cx, data_0002                ; 0x384b
    cwd                              ; 0x384e
    idiv cx                          ; 0x384f
    add ax, word [bp + 0x8]          ; 0x3851
    inc ax                           ; 0x3854
    push ax                          ; 0x3855
    call ds_dispatch_e809            ; 0x3856
    add sp, byte 4                   ; 0x3859
    mov ax, 0xc0                     ; 0x385c
    push ax                          ; 0x385f
    mov ax, 0x1a                     ; 0x3860
    push ax                          ; 0x3863
    call ds_dispatch_e823            ; 0x3864
    add sp, byte 4                   ; 0x3867
    mov ax, 0                        ; 0x386a
    push ax                          ; 0x386d
    lea ax, word [bp - 0x0014]       ; 0x386e
    push ax                          ; 0x3871
    call ds_dispatch_e84e            ; 0x3872
    add sp, byte 4                   ; 0x3875
    mov ax, word [bp + 0x6]          ; 0x3878
    imul word [bp + 0xe]             ; 0x387b
    add ax, word [bp + 0xa]          ; 0x387e
    add ax, strict word 8            ; 0x3881
    push ax                          ; 0x3884
    mov ax, 6                        ; 0x3885
    imul word [bp + 0xc]             ; 0x3888
    add ax, word [bp + 0x8]          ; 0x388b
    push ax                          ; 0x388e
    mov ax, word [bp + 0x6]          ; 0x388f
    imul word [bp + 0xe]             ; 0x3892
    add ax, word [bp + 0xa]          ; 0x3895
    push ax                          ; 0x3898
    push word [bp + 0x8]             ; 0x3899
    call ds_dispatch_e8da            ; 0x389c
    add sp, byte 8                   ; 0x389f
    mov ax, 1                        ; 0x38a2
    push ax                          ; 0x38a5
    push word [bp - 0x0016]          ; 0x38a6
    push word [bp - 0x0018]          ; 0x38a9
    call ds_dispatch_e94f            ; 0x38ac
    add sp, byte 6                   ; 0x38af
    ret                              ; 0x38b2
