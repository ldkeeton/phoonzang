; auto-generated
loc_OVQV:
    mov ax, 0                        ; 0x242c
    call aztec_csav                  ; 0x242f
    mov ax, 0xc0                     ; 0x2432
    cmp word [bp + 0xc], byte 0      ; 0x2435
    je short .forward1               ; 0x2439
    mov ax, 0xc2                     ; 0x243b
.forward1:
    push ax                          ; 0x243e
    push word [bp + 0xa]             ; 0x243f
    push word [bp + 8]               ; 0x2442
    push word [bp + 6]               ; 0x2445
    push word [bp + 4]               ; 0x2448
    call call_fill_area              ; 0x244b
    add sp, byte 0xa                 ; 0x244e
    push word [bp + 0xa]             ; 0x2451
    push word [bp + 8]               ; 0x2454
    push word [bp + 6]               ; 0x2457
    push word [bp + 4]               ; 0x245a
    call draw_rect_outline           ; 0x245d
    add sp, byte 8                   ; 0x2460
    mov ax, 0xc5                     ; 0x2463
    cmp word [bp + 0xc], byte 0      ; 0x2466
    je short .forward2               ; 0x246a
    mov ax, 0xc6                     ; 0x246c
.forward2:
    push ax                          ; 0x246f
    mov ax, 0xb0                     ; 0x2470
    cmp word [bp + 0xc], byte 0      ; 0x2473
    je short .forward3               ; 0x2477
    mov ax, 0xc4                     ; 0x2479
.forward3:
    push ax                          ; 0x247c
    push word [bp + 0xa]             ; 0x247d
    push word [bp + 8]               ; 0x2480
    push word [bp + 6]               ; 0x2483
    push word [bp + 4]               ; 0x2486
    call draw_rect_bevel             ; 0x2489
    add sp, byte 0xc                 ; 0x248c
    mov ax, 0xb4                     ; 0x248f
    push ax                          ; 0x2492
    mov ax, 0xc5                     ; 0x2493
    push ax                          ; 0x2496
    mov ax, word [bp + 0xa]          ; 0x2497
    inc ax                           ; 0x249a
    inc ax                           ; 0x249b
    push ax                          ; 0x249c
    mov ax, word [bp + 8]            ; 0x249d
    inc ax                           ; 0x24a0
    inc ax                           ; 0x24a1
    push ax                          ; 0x24a2
    mov ax, word [bp + 6]            ; 0x24a3
    dec ax                           ; 0x24a6
    dec ax                           ; 0x24a7
    push ax                          ; 0x24a8
    mov ax, word [bp + 4]            ; 0x24a9
    dec ax                           ; 0x24ac
    dec ax                           ; 0x24ad
    push ax                          ; 0x24ae
    call draw_rect_bevel             ; 0x24af
    add sp, byte 0xc                 ; 0x24b2
    mov ax, 0x51                     ; 0x24b5
    cmp word [bp + 0xc], byte 0      ; 0x24b8
    je short .forward4               ; 0x24bc
    mov ax, 0xc3                     ; 0x24be
.forward4:
    push ax                          ; 0x24c1
    push word [bp + 6]               ; 0x24c2
    push word [bp + 4]               ; 0x24c5
    call call_put_pixel              ; 0x24c8
    add sp, byte 6                   ; 0x24cb
    mov ax, 0xb6                     ; 0x24ce
    cmp word [bp + 0xc], byte 0      ; 0x24d1
    je short .forward5               ; 0x24d5
    mov ax, 0xc5                     ; 0x24d7
.forward5:
    push ax                          ; 0x24da
    push word [bp + 6]               ; 0x24db
    push word [bp + 8]               ; 0x24de
    call call_put_pixel              ; 0x24e1
    add sp, byte 6                   ; 0x24e4
    mov ax, 0xb6                     ; 0x24e7
    cmp word [bp + 0xc], byte 0      ; 0x24ea
    je short .forward6               ; 0x24ee
    mov ax, 0xc5                     ; 0x24f0
.forward6:
    push ax                          ; 0x24f3
    push word [bp + 0xa]             ; 0x24f4
    push word [bp + 4]               ; 0x24f7
    call call_put_pixel              ; 0x24fa
    add sp, byte 6                   ; 0x24fd
    mov ax, 0xc6                     ; 0x2500
    cmp word [bp + 0xc], byte 0      ; 0x2503
    je short .forward7               ; 0x2507
    mov ax, 0xc7                     ; 0x2509
.forward7:
    push ax                          ; 0x250c
    push word [bp + 0xa]             ; 0x250d
    push word [bp + 8]               ; 0x2510
    call call_put_pixel              ; 0x2513
    add sp, byte 6                   ; 0x2516
    ret                              ; 0x2519
