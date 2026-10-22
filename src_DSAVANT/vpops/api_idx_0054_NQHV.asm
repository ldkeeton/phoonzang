; auto-generated
api_idx_0054_NQHV:
    mov ax, 0xffac                   ; 0x035f
    call aztec_csav                  ; 0x0362
    mov ax, 1                        ; 0x0365
    push ax                          ; 0x0368
    call api_idx_0006_SHUK           ; 0x0369
    pop cx                           ; 0x036c
    mov word [bp - 0x0002], 1        ; 0x036d
    jmp near @..api_idx_0054_NQHV.l9 ; 0x0372
@..api_idx_0054_NQHV.l1:
    mov ax, word [bp - 0x0002]       ; 0x0375
    shl ax, 1                        ; 0x0378
    mov bx, ax                       ; 0x037a
    mov bx, word [bx + party_char]   ; 0x037c
    mov byte [bx + 0x1a2], 0         ; 0x0380
    mov word [bp - 0x0004], 0        ; 0x0385
    jmp short @..api_idx_0054_NQHV.l4 ; 0x038a
@..api_idx_0054_NQHV.l2:
    mov ax, 0x2c                     ; 0x038c
    imul word [bp - 0x0004]          ; 0x038f
    mov si, ax                       ; 0x0392
    mov ax, word [bp - 0x0002]       ; 0x0394
    shl ax, 1                        ; 0x0397
    mov bx, ax                       ; 0x0399
    mov bx, word [bx + party_char]   ; 0x039b
    cmp byte [bx + si + 0x22], 2     ; 0x039f
    jae short @..api_idx_0054_NQHV.l3 ; 0x03a3
    cmp byte [bx + si + 0x11], 0     ; 0x03a5
    jne short @..api_idx_0054_NQHV.l3 ; 0x03a9
    cmp byte [bx + si + 0x10], 0     ; 0x03ab
    jne short @..api_idx_0054_NQHV.l3 ; 0x03af
    inc byte [bx + 0x1a2]            ; 0x03b1
@..api_idx_0054_NQHV.l3:
    inc word [bp - 0x0004]           ; 0x03b5
@..api_idx_0054_NQHV.l4:
    mov ax, word [bp - 0x0002]       ; 0x03b8
    shl ax, 1                        ; 0x03bb
    mov bx, ax                       ; 0x03bd
    mov bx, word [bx + party_char]   ; 0x03bf
    mov al, byte [bx + 0x1a1]        ; 0x03c3
    sub ah, ah                       ; 0x03c7
    cmp ax, word [bp - 0x0004]       ; 0x03c9
    jg short @..api_idx_0054_NQHV.l2 ; 0x03cc
    mov ax, word [bp - 0x0002]       ; 0x03ce
    cmp ax, word [bp + 0x4]          ; 0x03d1
    jne short @..api_idx_0054_NQHV.l5 ; 0x03d4
    mov ax, 0x5f                     ; 0x03d6
    push ax                          ; 0x03d9
    mov ax, 6                        ; 0x03da
    imul word [bp - 0x0002]          ; 0x03dd
    add ax, 0xa2                     ; 0x03e0
    push ax                          ; 0x03e3
    mov ax, 0xdd                     ; 0x03e4
    push ax                          ; 0x03e7
    mov ax, 6                        ; 0x03e8
    imul word [bp - 0x0002]          ; 0x03eb
    add ax, 0x9e                     ; 0x03ee
    push ax                          ; 0x03f1
    mov ax, 0x62                     ; 0x03f2
    push ax                          ; 0x03f5
    call gfx_fill_area               ; 0x03f6
    add sp, byte 0x0a                ; 0x03f9
    mov ax, 0x5f                     ; 0x03fc
    push ax                          ; 0x03ff
    mov ax, 1                        ; 0x0400
    push ax                          ; 0x0403
    call gfx_set_text_color          ; 0x0404
    add sp, byte 4                   ; 0x0407
    jmp short @..api_idx_0054_NQHV.l6 ; 0x040a
@..api_idx_0054_NQHV.l5:
    mov ax, 0                        ; 0x040c
    push ax                          ; 0x040f
    mov ax, 0x5f                     ; 0x0410
    push ax                          ; 0x0413
    call gfx_set_text_color          ; 0x0414
    add sp, byte 4                   ; 0x0417
@..api_idx_0054_NQHV.l6:
    mov ax, 6                        ; 0x041a
    imul word [bp - 0x0002]          ; 0x041d
    add ax, 0x9e                     ; 0x0420
    push ax                          ; 0x0423
    mov ax, 0x63                     ; 0x0424
    push ax                          ; 0x0427
    call gfx_set_text_pos            ; 0x0428
    add sp, byte 4                   ; 0x042b
    mov ax, 0                        ; 0x042e
    push ax                          ; 0x0431
    mov ax, 1                        ; 0x0432
    push ax                          ; 0x0435
    mov ax, word [bp - 0x0002]       ; 0x0436
    shl ax, 1                        ; 0x0439
    mov bx, ax                       ; 0x043b
    mov bx, word [bx + party_char]   ; 0x043d
    mov al, byte [bx + 0x1a1]        ; 0x0441
    sub ah, ah                       ; 0x0445
    push ax                          ; 0x0447
    call ds_app_GUML                 ; 0x0448
    add sp, byte 6                   ; 0x044b
    mov ax, 0                        ; 0x044e
    push ax                          ; 0x0451
    mov ax, 0x20                     ; 0x0452
    push ax                          ; 0x0455
    call draw_font_glyph             ; 0x0456
    add sp, byte 4                   ; 0x0459
    mov ax, 0                        ; 0x045c
    push ax                          ; 0x045f
    mov ax, word [bp - 0x0002]       ; 0x0460
    shl ax, 1                        ; 0x0463
    mov bx, ax                       ; 0x0465
    mov bx, word [bx + party_char]   ; 0x0467
    cmp byte [bx + 0x1a1], 1         ; 0x046b
    jne short @..api_idx_0054_NQHV.l7 ; 0x0470
    mov ax, 0                        ; 0x0472
    jmp short @..api_idx_0054_NQHV.l8 ; 0x0475
@..api_idx_0054_NQHV.l7:
    mov ax, 1                        ; 0x0477
@..api_idx_0054_NQHV.l8:
    mov cx, 4                        ; 0x047a
    shl ax, cl                       ; 0x047d
    mov cx, ax                       ; 0x047f
    push cx                          ; 0x0481
    mov al, byte [bx + 0x1a0]        ; 0x0482
    sub ah, ah                       ; 0x0486
    mov cx, 5                        ; 0x0488
    shl ax, cl                       ; 0x048b
    pop cx                           ; 0x048d
    add cx, ax                       ; 0x048e
    mov ax, word [bp - 0x0002]       ; 0x0490
    shl ax, 1                        ; 0x0493
    mov bx, ax                       ; 0x0495
    mov ax, word [bx + party_char_ext] ; 0x0497
    add ax, cx                       ; 0x049b
    push ax                          ; 0x049d
    call draw_text_glyphs            ; 0x049e
    add sp, byte 4                   ; 0x04a1
    mov ax, 6                        ; 0x04a4
    imul word [bp - 0x0002]          ; 0x04a7
    add ax, 0x9e                     ; 0x04aa
    push ax                          ; 0x04ad
    mov ax, 0xce                     ; 0x04ae
    push ax                          ; 0x04b1
    call gfx_set_text_pos            ; 0x04b2
    add sp, byte 4                   ; 0x04b5
    mov ax, 0                        ; 0x04b8
    push ax                          ; 0x04bb
    mov ax, 0x28                     ; 0x04bc
    push ax                          ; 0x04bf
    call draw_font_glyph             ; 0x04c0
    add sp, byte 4                   ; 0x04c3
    mov ax, 0                        ; 0x04c6
    push ax                          ; 0x04c9
    mov ax, 1                        ; 0x04ca
    push ax                          ; 0x04cd
    mov ax, word [bp - 0x0002]       ; 0x04ce
    shl ax, 1                        ; 0x04d1
    mov bx, ax                       ; 0x04d3
    mov bx, word [bx + party_char]   ; 0x04d5
    mov al, byte [bx + 0x1a2]        ; 0x04d9
    sub ah, ah                       ; 0x04dd
    push ax                          ; 0x04df
    call ds_app_GUML                 ; 0x04e0
    add sp, byte 6                   ; 0x04e3
    mov ax, 0                        ; 0x04e6
    push ax                          ; 0x04e9
    mov ax, 0x29                     ; 0x04ea
    push ax                          ; 0x04ed
    call draw_font_glyph             ; 0x04ee
    add sp, byte 4                   ; 0x04f1
    inc word [bp - 0x0002]           ; 0x04f4
@..api_idx_0054_NQHV.l9:
    mov ax, word [bp - 0x0002]       ; 0x04f7
    cmp ax, word [bss_8466]          ; 0x04fa
    jg short @..api_idx_0054_NQHV.l10 ; 0x04fe
    jmp near @..api_idx_0054_NQHV.l1 ; 0x0500
@..api_idx_0054_NQHV.l10:
    ret                              ; 0x0503
