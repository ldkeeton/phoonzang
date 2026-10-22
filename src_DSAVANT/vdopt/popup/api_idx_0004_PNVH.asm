; auto-generated
api_idx_0004_PNVH:
    mov ax, 0xfffc                   ; 0x3889
    call aztec_csav                  ; 0x388c
    mov word [bp - 0x0002], 0        ; 0x388f
    jmp near @..api_idx_0004_PNVH.l8 ; 0x3894
@..api_idx_0004_PNVH.l1:
    mov ax, word [bp + 0xc]          ; 0x3897
    add ax, word [bp - 0x0002]       ; 0x389a
    cmp ax, word [bp + 0xe]          ; 0x389d
    jne short @..api_idx_0004_PNVH.l2 ; 0x38a0
    mov ax, 1                        ; 0x38a2
    push ax                          ; 0x38a5
    mov ax, 0xe                      ; 0x38a6
    imul word [bp - 0x0002]          ; 0x38a9
    add ax, word [bp + 0x6]          ; 0x38ac
    add ax, strict word 0xd          ; 0x38af
    push ax                          ; 0x38b2
    mov ax, 6                        ; 0x38b3
    imul word [bp + 0x8]             ; 0x38b6
    add ax, word [bp + 0x4]          ; 0x38b9
    inc ax                           ; 0x38bc
    inc ax                           ; 0x38bd
    push ax                          ; 0x38be
    mov ax, 0xe                      ; 0x38bf
    imul word [bp - 0x0002]          ; 0x38c2
    add ax, word [bp + 0x6]          ; 0x38c5
    inc ax                           ; 0x38c8
    push ax                          ; 0x38c9
    mov ax, word [bp + 0x4]          ; 0x38ca
    add ax, strict word 0x1c         ; 0x38cd
    push ax                          ; 0x38d0
    call gfx_fill_area               ; 0x38d1
    add sp, byte 0x0a                ; 0x38d4
    mov word [bp - 0x0004], 0        ; 0x38d7
    jmp short @..api_idx_0004_PNVH.l3 ; 0x38dc
@..api_idx_0004_PNVH.l2:
    mov word [bp - 0x0004], 0xb4     ; 0x38de
@..api_idx_0004_PNVH.l3:
    mov ax, 0xe                      ; 0x38e3
    imul word [bp - 0x0002]          ; 0x38e6
    add ax, word [bp + 0x6]          ; 0x38e9
    inc ax                           ; 0x38ec
    push ax                          ; 0x38ed
    mov ax, word [bp + 0x4]          ; 0x38ee
    inc ax                           ; 0x38f1
    inc ax                           ; 0x38f2
    push ax                          ; 0x38f3
    call gfx_set_text_pos            ; 0x38f4
    add sp, byte 4                   ; 0x38f7
    mov ax, word [bp + 0xc]          ; 0x38fa
    add ax, word [bp - 0x0002]       ; 0x38fd
    shl ax, 1                        ; 0x3900
    mov bx, ax                       ; 0x3902
    cmp word [bx - 0x64a0], byte 0   ; 0x3904
    je short @..api_idx_0004_PNVH.l4 ; 0x3909
    mov ax, 4                        ; 0x390b
    push ax                          ; 0x390e
    mov ax, 0x63                     ; 0x390f
    push ax                          ; 0x3912
    call draw_font_glyph             ; 0x3913
    add sp, byte 4                   ; 0x3916
@..api_idx_0004_PNVH.l4:
    mov ax, 0xe                      ; 0x3919
    imul word [bp - 0x0002]          ; 0x391c
    add ax, word [bp + 0x6]          ; 0x391f
    inc ax                           ; 0x3922
    push ax                          ; 0x3923
    mov ax, word [bp + 0x4]          ; 0x3924
    add ax, strict word 0xf          ; 0x3927
    push ax                          ; 0x392a
    call gfx_set_text_pos            ; 0x392b
    add sp, byte 4                   ; 0x392e
    mov ax, 4                        ; 0x3931
    push ax                          ; 0x3934
    mov ax, word [bp + 0xc]          ; 0x3935
    add ax, word [bp - 0x0002]       ; 0x3938
    shl ax, 1                        ; 0x393b
    mov bx, ax                       ; 0x393d
    mov al, byte [bx - 0x6478]       ; 0x393f
    sub ah, ah                       ; 0x3943
    push ax                          ; 0x3945
    call draw_font_glyph             ; 0x3946
    add sp, byte 4                   ; 0x3949
    push word [bp - 0x0004]          ; 0x394c
    mov ax, 0xe                      ; 0x394f
    imul word [bp - 0x0002]          ; 0x3952
    add ax, word [bp + 0x6]          ; 0x3955
    inc ax                           ; 0x3958
    inc ax                           ; 0x3959
    push ax                          ; 0x395a
    mov ax, word [bp + 0x4]          ; 0x395b
    add ax, strict word 0x1d         ; 0x395e
    push ax                          ; 0x3961
    mov ax, word [bp + 0xc]          ; 0x3962
    add ax, word [bp - 0x0002]       ; 0x3965
    mov cx, 0x16                     ; 0x3968
    imul cx                          ; 0x396b
    add ax, 0x9bb0                   ; 0x396d
    push ax                          ; 0x3970
    call api_idx_002a_SRJL           ; 0x3971
    add sp, byte 8                   ; 0x3974
    mov ax, word [bp + 0xc]          ; 0x3977
    add ax, word [bp - 0x0002]       ; 0x397a
    shl ax, 1                        ; 0x397d
    mov bx, ax                       ; 0x397f
    cmp word [bx - 0x6298], byte 0   ; 0x3981
    jle short @..api_idx_0004_PNVH.l7 ; 0x3986
    mov ax, 0xe                      ; 0x3988
    imul word [bp - 0x0002]          ; 0x398b
    add ax, word [bp + 0x6]          ; 0x398e
    add ax, strict word 8            ; 0x3991
    push ax                          ; 0x3994
    mov ax, word [bp + 0x4]          ; 0x3995
    add ax, strict word 0x47         ; 0x3998
    push ax                          ; 0x399b
    call gfx_set_text_pos            ; 0x399c
    add sp, byte 4                   ; 0x399f
    mov ax, 0                        ; 0x39a2
    push ax                          ; 0x39a5
    mov ax, word [bp + 0xc]          ; 0x39a6
    add ax, word [bp - 0x0002]       ; 0x39a9
    cmp ax, word [bp + 0xe]          ; 0x39ac
    jne short @..api_idx_0004_PNVH.l5 ; 0x39af
    mov ax, word [bp - 0x0004]       ; 0x39b1
    jmp short @..api_idx_0004_PNVH.l6 ; 0x39b4
@..api_idx_0004_PNVH.l5:
    mov ax, 2                        ; 0x39b6
@..api_idx_0004_PNVH.l6:
    push ax                          ; 0x39b9
    call gfx_set_text_color          ; 0x39ba
    add sp, byte 4                   ; 0x39bd
    mov ax, 0                        ; 0x39c0
    push ax                          ; 0x39c3
    mov ax, 3                        ; 0x39c4
    push ax                          ; 0x39c7
    mov ax, word [bp + 0xc]          ; 0x39c8
    add ax, word [bp - 0x0002]       ; 0x39cb
    shl ax, 1                        ; 0x39ce
    mov bx, ax                       ; 0x39d0
    push word [bx - 0x6298]          ; 0x39d2
    call ds_app_GUML                 ; 0x39d6
    add sp, byte 6                   ; 0x39d9
@..api_idx_0004_PNVH.l7:
    inc word [bp - 0x0002]           ; 0x39dc
@..api_idx_0004_PNVH.l8:
    mov ax, word [bp - 0x0002]       ; 0x39df
    cmp ax, word [bp + 0xa]          ; 0x39e2
    jge short @..api_idx_0004_PNVH.l9 ; 0x39e5
    jmp near @..api_idx_0004_PNVH.l1 ; 0x39e7
@..api_idx_0004_PNVH.l9:
    ret                              ; 0x39ea
