; auto-generated
api_idx_0018:
    mov ax, 0xffe8                   ; 0x378c
    call aztec_csav                  ; 0x378f
    mov ax, word [bp + 0x6]          ; 0x3792
    imul word [bp + 0xe]             ; 0x3795
    add ax, word [bp + 0xa]          ; 0x3798
    add ax, strict word 0xb          ; 0x379b
    push ax                          ; 0x379e
    mov ax, 6                        ; 0x379f
    imul word [bp + 0xc]             ; 0x37a2
    add ax, word [bp + 0x8]          ; 0x37a5
    inc ax                           ; 0x37a8
    push ax                          ; 0x37a9
    mov ax, word [bp + 0x6]          ; 0x37aa
    imul word [bp + 0xe]             ; 0x37ad
    add ax, word [bp + 0xa]          ; 0x37b0
    dec ax                           ; 0x37b3
    push ax                          ; 0x37b4
    mov ax, word [bp + 0x8]          ; 0x37b5
    dec ax                           ; 0x37b8
    push ax                          ; 0x37b9
    call thunk_10                    ; 0x37ba
    add sp, byte 8                   ; 0x37bd
    mov word [bp - 0x0016], dx       ; 0x37c0
    mov word [bp - 0x0018], ax       ; 0x37c3
    lea ax, word [bp - 0x0014]       ; 0x37c6
    push ax                          ; 0x37c9
    push word [bp + 0x4]             ; 0x37ca
    call ds_app_mem_0782             ; 0x37cd
    add sp, byte 4                   ; 0x37d0
    mov ax, 0                        ; 0x37d3
    push ax                          ; 0x37d6
    mov ax, word [bp + 0x6]          ; 0x37d7
    imul word [bp + 0xe]             ; 0x37da
    add ax, word [bp + 0xa]          ; 0x37dd
    add ax, strict word 8            ; 0x37e0
    push ax                          ; 0x37e3
    mov ax, 6                        ; 0x37e4
    imul word [bp + 0xc]             ; 0x37e7
    add ax, word [bp + 0x8]          ; 0x37ea
    push ax                          ; 0x37ed
    mov ax, word [bp + 0x6]          ; 0x37ee
    imul word [bp + 0xe]             ; 0x37f1
    add ax, word [bp + 0xa]          ; 0x37f4
    push ax                          ; 0x37f7
    push word [bp + 0x8]             ; 0x37f8
    call ds_app_0f2a                 ; 0x37fb
    add sp, byte 0x0a                ; 0x37fe
    mov ax, word [bp + 0x6]          ; 0x3801
    imul word [bp + 0xe]             ; 0x3804
    add ax, word [bp + 0xa]          ; 0x3807
    inc ax                           ; 0x380a
    inc ax                           ; 0x380b
    push ax                          ; 0x380c
    lea ax, word [bp - 0x0014]       ; 0x380d
    push ax                          ; 0x3810
    call aztec_strlen                ; 0x3811
    pop cx                           ; 0x3814
    mov cx, ax                       ; 0x3815
    mov ax, word [bp + 0xc]          ; 0x3817
    sub ax, cx                       ; 0x381a
    mov cx, 6                        ; 0x381c
    imul cx                          ; 0x381f
    mov cx, 2                        ; 0x3821
    cwd                              ; 0x3824
    idiv cx                          ; 0x3825
    add ax, word [bp + 0x8]          ; 0x3827
    inc ax                           ; 0x382a
    push ax                          ; 0x382b
    call thunk                       ; 0x382c
    add sp, byte 4                   ; 0x382f
    mov ax, 0xc0                     ; 0x3832
    push ax                          ; 0x3835
    mov ax, 0x1a                     ; 0x3836
    push ax                          ; 0x3839
    call thunk_3                     ; 0x383a
    add sp, byte 4                   ; 0x383d
    mov ax, 0                        ; 0x3840
    push ax                          ; 0x3843
    lea ax, word [bp - 0x0014]       ; 0x3844
    push ax                          ; 0x3847
    call ds_string_loc_3a95          ; 0x3848
    add sp, byte 4                   ; 0x384b
    mov ax, word [bp + 0x6]          ; 0x384e
    imul word [bp + 0xe]             ; 0x3851
    add ax, word [bp + 0xa]          ; 0x3854
    add ax, strict word 8            ; 0x3857
    push ax                          ; 0x385a
    mov ax, 6                        ; 0x385b
    imul word [bp + 0xc]             ; 0x385e
    add ax, word [bp + 0x8]          ; 0x3861
    push ax                          ; 0x3864
    mov ax, word [bp + 0x6]          ; 0x3865
    imul word [bp + 0xe]             ; 0x3868
    add ax, word [bp + 0xa]          ; 0x386b
    push ax                          ; 0x386e
    push word [bp + 0x8]             ; 0x386f
    call thunk_4                     ; 0x3872
    add sp, byte 8                   ; 0x3875
    mov ax, 1                        ; 0x3878
    push ax                          ; 0x387b
    push word [bp - 0x0016]          ; 0x387c
    push word [bp - 0x0018]          ; 0x387f
    call thunk_13                    ; 0x3882
    add sp, byte 6                   ; 0x3885
    ret                              ; 0x3888
