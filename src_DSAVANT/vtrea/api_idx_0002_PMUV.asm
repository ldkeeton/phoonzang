; auto-generated
api_idx_0002_PMUV:
    mov ax, 0xfffe                   ; 0x251a
    call aztec_csav                  ; 0x251d
    mov ax, 0xc3                     ; 0x2520
    push ax                          ; 0x2523
    mov ax, 0xb4                     ; 0x2524
    push ax                          ; 0x2527
    call gfx_set_text_color          ; 0x2528
    add sp, byte 4                   ; 0x252b
    mov word [bp - 2], 0             ; 0x252e
.back1:
    mov ax, word [bp - 2]            ; 0x2533
    mov cx, 4                        ; 0x2536
    cwd                              ; 0x2539
    idiv cx                          ; 0x253a
    mov cx, 6                        ; 0x253c
    imul cx                          ; 0x253f
    add ax, word [bp + 8]            ; 0x2541
    push ax                          ; 0x2544
    mov ax, word [bp - 2]            ; 0x2545
    mov cx, 4                        ; 0x2548
    cwd                              ; 0x254b
    idiv cx                          ; 0x254c
    mov ax, dx                       ; 0x254e
    mov cx, 6                        ; 0x2550
    imul cx                          ; 0x2553
    add ax, word [bp + 6]            ; 0x2555
    push ax                          ; 0x2558
    call gfx_set_text_pos            ; 0x2559
    add sp, byte 4                   ; 0x255c
    cmp word [bp + 0xa], byte 0      ; 0x255f
    je short .forward1               ; 0x2563
    mov ax, 0                        ; 0x2565
    push ax                          ; 0x2568
    mov ax, 0xa                      ; 0x2569
    imul word [bp + 4]               ; 0x256c
    add ax, word [bp - 2]            ; 0x256f
    mov bx, ax                       ; 0x2572
    mov al, byte [bx + bss_9372]     ; 0x2574
    sub ah, ah                       ; 0x2578
    push ax                          ; 0x257a
    call draw_font_glyph             ; 0x257b
    add sp, byte 4                   ; 0x257e
    jmp short .forward2              ; 0x2581
.forward1:
    mov ax, 0                        ; 0x2583
    push ax                          ; 0x2586
    mov ax, 0xa                      ; 0x2587
    imul word [bp + 4]               ; 0x258a
    add ax, word [bp - 2]            ; 0x258d
    mov bx, ax                       ; 0x2590
    mov al, byte [bx + bss_9252]     ; 0x2592
    sub ah, ah                       ; 0x2596
    push ax                          ; 0x2598
    call draw_font_glyph             ; 0x2599
    add sp, byte 4                   ; 0x259c
.forward2:
    inc word [bp - 2]                ; 0x259f
    mov ax, word [bp - 2]            ; 0x25a2
    cmp ax, strict word 8            ; 0x25a5
    jl short .back1                  ; 0x25a8
    ret                              ; 0x25aa
