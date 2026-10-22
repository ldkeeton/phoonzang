; auto-generated
api_idx_002e_JGHT:
    mov ax, 0xffd2                   ; 0x2582
    call aztec_csav                  ; 0x2585
    mov ax, 0                        ; 0x2588
    push ax                          ; 0x258b
    mov ax, 0x16                     ; 0x258c
    push ax                          ; 0x258f
    call gfx_set_text_color          ; 0x2590
    add sp, byte 4                   ; 0x2593
    mov ax, 0xae                     ; 0x2596
    push ax                          ; 0x2599
    mov ax, 6                        ; 0x259a
    push ax                          ; 0x259d
    call gfx_set_text_pos            ; 0x259e
    add sp, byte 4                   ; 0x25a1
    mov ax, 0                        ; 0x25a4
    push ax                          ; 0x25a7
    mov ax, bss_95f4                 ; 0x25a8
    push ax                          ; 0x25ab
    call draw_text_glyphs            ; 0x25ac
    add sp, byte 4                   ; 0x25af
    mov word [bp - 0x0004], 0        ; 0x25b2
    mov word [bp - 0x0006], 0        ; 0x25b7
    mov word [bp - 0x0002], 0        ; 0x25bc
@..api_idx_002e_JGHT.l1:
    mov ax, 0xa                      ; 0x25c1
    imul word [bp - 0x0002]          ; 0x25c4
    mov bx, ax                       ; 0x25c7
    add bx, bp                       ; 0x25c9
    mov byte [bx - 0x002e], 0        ; 0x25cb
    mov ax, word [bp - 0x0002]       ; 0x25cf
    cmp ax, word [bp + 0x4]          ; 0x25d2
    je short @..api_idx_002e_JGHT.l4 ; 0x25d5
    shl ax, 1                        ; 0x25d7
    mov bx, ax                       ; 0x25d9
    cmp word [bx - 0x69f8], byte 0   ; 0x25db
    jg short @..api_idx_002e_JGHT.l2 ; 0x25e0
    mov ax, word [bp - 0x0002]       ; 0x25e2
    cmp ax, strict word 2            ; 0x25e5
    je short @..api_idx_002e_JGHT.l4 ; 0x25e8
@..api_idx_002e_JGHT.l2:
    cmp word [bp - 0x0006], byte 0   ; 0x25ea
    je short @..api_idx_002e_JGHT.l3 ; 0x25ee
    inc word [bp - 0x0004]           ; 0x25f0
@..api_idx_002e_JGHT.l3:
    mov ax, 0xa                      ; 0x25f3
    imul word [bp - 0x0002]          ; 0x25f6
    lea cx, word [bp - 0x002e]       ; 0x25f9
    add ax, cx                       ; 0x25fc
    push ax                          ; 0x25fe
    push word [bx - 0x69f8]          ; 0x25ff
    call ds_app_OLKR                 ; 0x2603
    add sp, byte 4                   ; 0x2606
    mov word [bp - 0x0006], 1        ; 0x2609
    jmp short @..api_idx_002e_JGHT.l6 ; 0x260e
@..api_idx_002e_JGHT.l4:
    mov ax, word [bp - 0x0002]       ; 0x2610
    cmp ax, word [bp + 0x4]          ; 0x2613
    jne short @..api_idx_002e_JGHT.l6 ; 0x2616
    cmp word [bp - 0x0006], byte 0   ; 0x2618
    je short @..api_idx_002e_JGHT.l5 ; 0x261c
    inc word [bp - 0x0004]           ; 0x261e
@..api_idx_002e_JGHT.l5:
    mov cx, 0xa                      ; 0x2621
    imul cx                          ; 0x2624
    lea cx, word [bp - 0x002e]       ; 0x2626
    add ax, cx                       ; 0x2629
    push ax                          ; 0x262b
    push word [bp + 0x6]             ; 0x262c
    call ds_app_OLKR                 ; 0x262f
    add sp, byte 4                   ; 0x2632
    mov word [bp - 0x0006], 1        ; 0x2635
@..api_idx_002e_JGHT.l6:
    mov ax, 0xa                      ; 0x263a
    imul word [bp - 0x0002]          ; 0x263d
    lea cx, word [bp - 0x002e]       ; 0x2640
    add ax, cx                       ; 0x2643
    push ax                          ; 0x2645
    call aztec_strlen                ; 0x2646
    pop cx                           ; 0x2649
    add word [bp - 0x0004], ax       ; 0x264a
    inc word [bp - 0x0002]           ; 0x264d
    mov ax, word [bp - 0x0002]       ; 0x2650
    cmp ax, strict word 4            ; 0x2653
    jge short @..api_idx_002e_JGHT.l7 ; 0x2656
    jmp near @..api_idx_002e_JGHT.l1 ; 0x2658
@..api_idx_002e_JGHT.l7:
    mov ax, 0xae                     ; 0x265b
    push ax                          ; 0x265e
    mov ax, 0x1a                     ; 0x265f
    sub ax, word [bp - 0x0004]       ; 0x2662
    mov cx, 6                        ; 0x2665
    imul cx                          ; 0x2668
    add ax, strict word 0xfffb       ; 0x266a
    push ax                          ; 0x266d
    call gfx_set_text_pos            ; 0x266e
    add sp, byte 4                   ; 0x2671
    mov word [bp - 0x0006], 0        ; 0x2674
    mov word [bp - 0x0002], 0        ; 0x2679
@..api_idx_002e_JGHT.l8:
    mov ax, 0xa                      ; 0x267e
    imul word [bp - 0x0002]          ; 0x2681
    lea cx, word [bp - 0x002e]       ; 0x2684
    add ax, cx                       ; 0x2687
    push ax                          ; 0x2689
    call aztec_strlen                ; 0x268a
    pop cx                           ; 0x268d
    cmp ax, strict word 0            ; 0x268e
    jle short @..api_idx_002e_JGHT.l10 ; 0x2691
    cmp word [bp - 0x0006], byte 0   ; 0x2693
    je short @..api_idx_002e_JGHT.l9 ; 0x2697
    mov ax, 0                        ; 0x2699
    push ax                          ; 0x269c
    mov ax, 1                        ; 0x269d
    push ax                          ; 0x26a0
    call gfx_set_text_color          ; 0x26a1
    add sp, byte 4                   ; 0x26a4
    mov ax, 0                        ; 0x26a7
    push ax                          ; 0x26aa
    mov ax, 0x2f                     ; 0x26ab
    push ax                          ; 0x26ae
    call draw_font_glyph             ; 0x26af
    add sp, byte 4                   ; 0x26b2
@..api_idx_002e_JGHT.l9:
    mov ax, 0                        ; 0x26b5
    push ax                          ; 0x26b8
    mov ax, word [bp - 0x0002]       ; 0x26b9
    shl ax, 1                        ; 0x26bc
    mov bx, ax                       ; 0x26be
    push word [word bx + 0x30]       ; 0x26c0
    call gfx_set_text_color          ; 0x26c4
    add sp, byte 4                   ; 0x26c7
    mov ax, 0                        ; 0x26ca
    push ax                          ; 0x26cd
    mov ax, 0xa                      ; 0x26ce
    imul word [bp - 0x0002]          ; 0x26d1
    lea cx, word [bp - 0x002e]       ; 0x26d4
    add ax, cx                       ; 0x26d7
    push ax                          ; 0x26d9
    call draw_text_glyphs            ; 0x26da
    add sp, byte 4                   ; 0x26dd
    mov word [bp - 0x0006], 1        ; 0x26e0
@..api_idx_002e_JGHT.l10:
    inc word [bp - 0x0002]           ; 0x26e5
    mov ax, word [bp - 0x0002]       ; 0x26e8
    cmp ax, strict word 4            ; 0x26eb
    jl short @..api_idx_002e_JGHT.l8 ; 0x26ee
    ret                              ; 0x26f0
