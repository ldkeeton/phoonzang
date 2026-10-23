; auto-generated
trigger_keyed_cell_object:
    mov ax, 0xfff4                   ; 0x238d
    call aztec_csav                  ; 0x2390
    mov bx, word [maze_tables]       ; 0x2393
    mov si, word [party_map_piece]   ; 0x2397
    mov al, byte [bx + si + spell_table + 0x520] ; 0x239b
    sub ah, ah                       ; 0x239f
    mov word [bp - 0x0008], ax       ; 0x23a1
@..trigger_keyed_cell_object.l1:
    push word [bp - 0x0008]          ; 0x23a4
    push word [party_map_piece]      ; 0x23a7
    push word [party_cell_y]         ; 0x23ab
    push word [party_cell_x]         ; 0x23af
    call find_object_at              ; 0x23b3
    add sp, byte 8                   ; 0x23b6
    mov word [bp - 0x0008], ax       ; 0x23b9
    cmp ax, strict word 0xffff       ; 0x23bc
    jne short @..trigger_keyed_cell_object.l2 ; 0x23bf
    jmp near @..trigger_keyed_cell_object.l14 ; 0x23c1
@..trigger_keyed_cell_object.l2:
    mov bx, word [maze_tables]       ; 0x23c4
    mov si, ax                       ; 0x23c8
    cmp byte [bx + si + 0x5a0], 0x13 ; 0x23ca
    je short @..trigger_keyed_cell_object.l3 ; 0x23cf
    jmp near @..trigger_keyed_cell_object.l10 ; 0x23d1
@..trigger_keyed_cell_object.l3:
    mov ax, 0x248                    ; 0x23d4
    imul word [bp + 0x4]             ; 0x23d7
    push ax                          ; 0x23da
    mov ax, 0x78                     ; 0x23db
    imul word [bp + 0x6]             ; 0x23de
    mov cx, ax                       ; 0x23e1
    pop ax                           ; 0x23e3
    add ax, cx                       ; 0x23e4
    push ax                          ; 0x23e6
    mov ax, 0xc                      ; 0x23e7
    imul word [bp + 0x8]             ; 0x23ea
    mov cx, ax                       ; 0x23ed
    pop ax                           ; 0x23ef
    add ax, cx                       ; 0x23f0
    mov bx, ax                       ; 0x23f2
    mov ax, word [bx + cell_key_grid] ; 0x23f4
    shl si, 1                        ; 0x23f8
    mov bx, word [maze_tables]       ; 0x23fa
    mov cx, word [bx + si]           ; 0x23fe
    cmp ax, cx                       ; 0x2400
    je short @..trigger_keyed_cell_object.l4 ; 0x2402
    jmp near @..trigger_keyed_cell_object.l10 ; 0x2404
@..trigger_keyed_cell_object.l4:
    cmp word [bx + si + 0x1e0], byte 0 ; 0x2407
    je short @..trigger_keyed_cell_object.l5 ; 0x240c
    mov ax, 1                        ; 0x240e
    mov cx, word [party_tag]         ; 0x2411
    shl ax, cl                       ; 0x2415
    test word [bx + si + 0x1e0], ax  ; 0x2417
    jne short @..trigger_keyed_cell_object.l5 ; 0x241b
    jmp near @..trigger_keyed_cell_object.l10 ; 0x241d
@..trigger_keyed_cell_object.l5:
    mov ax, 8                        ; 0x2420
    push ax                          ; 0x2423
    mov ax, 0                        ; 0x2424
    push ax                          ; 0x2427
    push word [bx + si + 0x3c0]      ; 0x2428
    call get_bits                    ; 0x242c
    add sp, byte 6                   ; 0x242f
    mov word [bp - 0x000a], ax       ; 0x2432
    mov ax, 0                        ; 0x2435
    push ax                          ; 0x2438
    push word [bp - 0x000a]          ; 0x2439
    mov ax, word [game_state_arg]    ; 0x243c
    mov cx, 4                        ; 0x243f
    shl ax, cl                       ; 0x2442
    add ax, party_region + 0x2       ; 0x2444
    push ax                          ; 0x2447
    call set_bitmap_bit              ; 0x2448
    add sp, byte 6                   ; 0x244b
    mov ax, 8                        ; 0x244e
    push ax                          ; 0x2451
    push ax                          ; 0x2452
    mov ax, word [bp - 0x0008]       ; 0x2453
    shl ax, 1                        ; 0x2456
    mov si, ax                       ; 0x2458
    mov bx, word [maze_tables]       ; 0x245a
    push word [bx + si + 0x3c0]      ; 0x245e
    call get_bits                    ; 0x2462
    add sp, byte 6                   ; 0x2465
    mov word [bp - 0x000a], ax       ; 0x2468
    test ax, ax                      ; 0x246b
    je short @..trigger_keyed_cell_object.l6 ; 0x246d
    mov ax, 1                        ; 0x246f
    push ax                          ; 0x2472
    push word [bp - 0x000a]          ; 0x2473
    mov ax, word [game_state_arg]    ; 0x2476
    mov cx, 4                        ; 0x2479
    shl ax, cl                       ; 0x247c
    add ax, party_region + 0x2       ; 0x247e
    push ax                          ; 0x2481
    call set_bitmap_bit              ; 0x2482
    add sp, byte 6                   ; 0x2485
@..trigger_keyed_cell_object.l6:
    mov bx, word [maze_tables]       ; 0x2488
    mov si, word [bp - 0x0008]       ; 0x248c
    cmp byte [bx + si + spell_table + 0x430], 0 ; 0x248f
    jbe short @..trigger_keyed_cell_object.l9 ; 0x2494
    mov ax, 0xc6                     ; 0x2496
    push ax                          ; 0x2499
    mov ax, 0x109                    ; 0x249a
    push ax                          ; 0x249d
    mov ax, 0x8e                     ; 0x249e
    push ax                          ; 0x24a1
    mov ax, 0x36                     ; 0x24a2
    push ax                          ; 0x24a5
    call gfx_show_area               ; 0x24a6
    add sp, byte 8                   ; 0x24a9
    mov bx, word [maze_tables]       ; 0x24ac
    mov si, word [bp - 0x0008]       ; 0x24b0
    mov al, byte [bx + si + spell_table + 0x430] ; 0x24b3
    sub ah, ah                       ; 0x24b7
    mov word [bp - 0x000c], ax       ; 0x24b9
    cmp ax, strict word 5            ; 0x24bc
    jl short @..trigger_keyed_cell_object.l7 ; 0x24bf
    cmp ax, strict word 8            ; 0x24c1
    je short @..trigger_keyed_cell_object.l7 ; 0x24c4
    cmp ax, strict word 9            ; 0x24c6
    jne short @..trigger_keyed_cell_object.l8 ; 0x24c9
@..trigger_keyed_cell_object.l7:
    push ax                          ; 0x24cb
    call play_sound_effect           ; 0x24cc
    pop cx                           ; 0x24cf
    jmp short @..trigger_keyed_cell_object.l9 ; 0x24d0
@..trigger_keyed_cell_object.l8:
    push word [bp - 0x000c]          ; 0x24d2
    call ds_app_QTIV                 ; 0x24d5
    pop cx                           ; 0x24d8
    mov ax, 0x10                     ; 0x24d9
    push ax                          ; 0x24dc
    call play_sound_effect           ; 0x24dd
    pop cx                           ; 0x24e0
    mov ax, 0x10                     ; 0x24e1
    push ax                          ; 0x24e4
    call wait_and_free_sound         ; 0x24e5
    pop cx                           ; 0x24e8
    mov word [loaded_sound_id], 0xffff ; 0x24e9
@..trigger_keyed_cell_object.l9:
    mov ax, word [bp - 0x0008]       ; 0x24ef
    inc ax                           ; 0x24f2
    mov word [party_region], ax      ; 0x24f3
    mov ax, 1                        ; 0x24f6
    ret                              ; 0x24f9
@..trigger_keyed_cell_object.l10:
    mov bx, word [maze_tables]       ; 0x24fa
    mov si, word [bp - 0x0008]       ; 0x24fe
    cmp byte [bx + si + 0x5a0], 7    ; 0x2501
    je short @..trigger_keyed_cell_object.l11 ; 0x2506
    jmp near @..trigger_keyed_cell_object.l13 ; 0x2508
@..trigger_keyed_cell_object.l11:
    mov ax, 2                        ; 0x250b
    push ax                          ; 0x250e
    mov ax, word [party_tag]         ; 0x250f
    shl ax, 1                        ; 0x2512
    push ax                          ; 0x2514
    shl si, 1                        ; 0x2515
    push word [bx + si + 0x3c0]      ; 0x2517
    call get_bits                    ; 0x251b
    add sp, byte 6                   ; 0x251e
    cmp ax, strict word 1            ; 0x2521
    je short @..trigger_keyed_cell_object.l12 ; 0x2524
    mov ax, 2                        ; 0x2526
    push ax                          ; 0x2529
    mov ax, word [party_tag]         ; 0x252a
    shl ax, 1                        ; 0x252d
    push ax                          ; 0x252f
    mov ax, word [bp - 0x0008]       ; 0x2530
    shl ax, 1                        ; 0x2533
    mov si, ax                       ; 0x2535
    mov bx, word [maze_tables]       ; 0x2537
    push word [bx + si + 0x3c0]      ; 0x253b
    call get_bits                    ; 0x253f
    add sp, byte 6                   ; 0x2542
    cmp ax, strict word 2            ; 0x2545
    jne short @..trigger_keyed_cell_object.l13 ; 0x2548
@..trigger_keyed_cell_object.l12:
    mov ax, word [bp - 0x0008]       ; 0x254a
    shl ax, 1                        ; 0x254d
    mov si, ax                       ; 0x254f
    mov bx, word [maze_tables]       ; 0x2551
    mov ax, word [bx + si + 0x1e0]   ; 0x2555
    mov word [bp - 0x0006], ax       ; 0x2559
    mov ax, 0x248                    ; 0x255c
    imul word [bp + 0x4]             ; 0x255f
    push ax                          ; 0x2562
    mov ax, 0x78                     ; 0x2563
    imul word [bp + 0x6]             ; 0x2566
    mov cx, ax                       ; 0x2569
    pop ax                           ; 0x256b
    add ax, cx                       ; 0x256c
    push ax                          ; 0x256e
    mov ax, 0xc                      ; 0x256f
    imul word [bp + 0x8]             ; 0x2572
    mov cx, ax                       ; 0x2575
    pop ax                           ; 0x2577
    add ax, cx                       ; 0x2578
    mov bx, ax                       ; 0x257a
    mov cx, word [bx + cell_key_grid] ; 0x257c
    mov ax, word [bp - 0x0006]       ; 0x2580
    cmp cx, ax                       ; 0x2583
    jne short @..trigger_keyed_cell_object.l13 ; 0x2585
    push word [bp - 0x0008]          ; 0x2587
    call claim_type7_object          ; 0x258a
    pop cx                           ; 0x258d
    mov word [pending_event], 0x841  ; 0x258e
    mov word [pending_event_hi], 0   ; 0x2594
    mov ax, 1                        ; 0x259a
    ret                              ; 0x259d
@..trigger_keyed_cell_object.l13:
    inc word [bp - 0x0008]           ; 0x259e
    jmp near @..trigger_keyed_cell_object.l1 ; 0x25a1
@..trigger_keyed_cell_object.l14:
    mov ax, 0                        ; 0x25a4
    ret                              ; 0x25a7
