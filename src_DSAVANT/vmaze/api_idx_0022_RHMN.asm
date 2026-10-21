; auto-generated
api_idx_0022_RHMN:
    mov ax, 0xffde                   ; 0x2215
    call aztec_csav                  ; 0x2218
    cmp word [party_region], byte 0  ; 0x221b
    jl short @..api_idx_0022_RHMN.l1 ; 0x2220
    mov bx, word [maze_tables]       ; 0x2222
    mov si, word [party_map_piece]   ; 0x2226
    mov al, byte [bx + si + 0xb40]   ; 0x222a
    sub ah, ah                       ; 0x222e
    cmp ax, word [party_region]      ; 0x2230
    jle short @..api_idx_0022_RHMN.l1 ; 0x2234
    mov word [party_region], ax      ; 0x2236
@..api_idx_0022_RHMN.l1:
    cmp word [bss_905e], byte 0x17   ; 0x2239
    je short @..api_idx_0022_RHMN.l2 ; 0x223e
    mov ax, 0                        ; 0x2240
    push ax                          ; 0x2243
    push word [party_cell_y]         ; 0x2244
    push word [party_cell_x]         ; 0x2248
    push word [party_map_piece]      ; 0x224c
    call api_idx_0002_SMVN           ; 0x2250
    add sp, byte 8                   ; 0x2253
@..api_idx_0022_RHMN.l2:
    mov word [bp - 0x0004], 0        ; 0x2256
    jmp short @..api_idx_0022_RHMN.l4 ; 0x225b
@..api_idx_0022_RHMN.l3:
    mov ax, 1                        ; 0x225d
    push ax                          ; 0x2260
    push word [bp - 0x0004]          ; 0x2261
    call ds_app_string_LUOV          ; 0x2264
    add sp, byte 4                   ; 0x2267
    inc word [bp - 0x0004]           ; 0x226a
@..api_idx_0022_RHMN.l4:
    mov ax, word [bp - 0x0004]       ; 0x226d
    cmp ax, word [bss_69c8]          ; 0x2270
    jl short @..api_idx_0022_RHMN.l3 ; 0x2274
    mov word [bss_91aa], 1           ; 0x2276
    mov word [location_changed], 1   ; 0x227c
    mov word [bss_82e8], 0           ; 0x2282
    mov word [bss_82ec], 0           ; 0x2288
    mov word [bss_831a], 0           ; 0x228e
    call api_idx_0002_ITLQ           ; 0x2294
    mov word [bss_905e], 5           ; 0x2297
    mov word [game_state], 5         ; 0x229d
    mov word [bss_91b2], 1           ; 0x22a3
    mov word [bss_91b4], 1           ; 0x22a9
    mov word [bss_91b0], 0           ; 0x22af
@..api_idx_0022_RHMN.l5:
    cmp word [bss_91aa], byte 1      ; 0x22b5
    jne short @..api_idx_0022_RHMN.l6 ; 0x22ba
    call redraw_maze_view            ; 0x22bc
@..api_idx_0022_RHMN.l6:
    mov ax, word [party_map_piece]   ; 0x22bf
    mov cx, 6                        ; 0x22c2
    shl ax, cl                       ; 0x22c5
    mov cx, word [party_cell_y]      ; 0x22c7
    shl cx, 1                        ; 0x22cb
    shl cx, 1                        ; 0x22cd
    shl cx, 1                        ; 0x22cf
    add ax, cx                       ; 0x22d1
    add ax, word [party_cell_x]      ; 0x22d3
    mov word [bp - 0x000a], ax       ; 0x22d7
    push ax                          ; 0x22da
    mov ax, bss_8bfe                 ; 0x22db
    push ax                          ; 0x22de
    call ds_leaf_loc_PRVP            ; 0x22df
    add sp, byte 4                   ; 0x22e2
    test ax, ax                      ; 0x22e5
    je short @..api_idx_0022_RHMN.l7 ; 0x22e7
    call api_idx_0006_TGQJ           ; 0x22e9
    mov word [bss_91b4], ax          ; 0x22ec
    jmp short @..api_idx_0022_RHMN.l8 ; 0x22ef
@..api_idx_0022_RHMN.l7:
    cmp word [bss_91b4], byte 0      ; 0x22f1
    je short @..api_idx_0022_RHMN.l8 ; 0x22f6
    mov word [bss_91b4], 0           ; 0x22f8
    mov ax, 0                        ; 0x22fe
    push ax                          ; 0x2301
    push word [bss_8d08]             ; 0x2302
    push word [bss_8d06]             ; 0x2306
    call gfx_restore_area            ; 0x230a
    add sp, byte 6                   ; 0x230d
    mov ax, 0xc4                     ; 0x2310
    push ax                          ; 0x2313
    mov ax, 0x13c                    ; 0x2314
    push ax                          ; 0x2317
    mov ax, 0xb9                     ; 0x2318
    push ax                          ; 0x231b
    mov ax, 0x131                    ; 0x231c
    push ax                          ; 0x231f
    call gfx_show_area               ; 0x2320
    add sp, byte 8                   ; 0x2323
@..api_idx_0022_RHMN.l8:
    add word [bss_8f1c], byte 1      ; 0x2326
    adc word [bss_8f1e], byte 0      ; 0x232b
    call api_idx_0002_ITLQ           ; 0x2330
    mov ax, word [bss_9198]          ; 0x2333
    jmp short @..api_idx_0022_RHMN.l12 ; 0x2336
@..api_idx_0022_RHMN.l9:
    mov ax, 1                        ; 0x2338
    push ax                          ; 0x233b
    mov ax, 0                        ; 0x233c
    push ax                          ; 0x233f
    mov ax, 0x17                     ; 0x2340
    push ax                          ; 0x2343
    mov ax, 0x16                     ; 0x2344
    push ax                          ; 0x2347
    mov ax, 0x14                     ; 0x2348
    push ax                          ; 0x234b
    mov ax, 0x15                     ; 0x234c
    push ax                          ; 0x234f
    call api_idx_0008_URRP           ; 0x2350
    add sp, byte 0x0c                ; 0x2353
    jmp short @..api_idx_0022_RHMN.l13 ; 0x2356
@..api_idx_0022_RHMN.l10:
    mov ax, 2                        ; 0x2358
    push ax                          ; 0x235b
    mov ax, 0                        ; 0x235c
    push ax                          ; 0x235f
    push ax                          ; 0x2360
    mov ax, 0x1c                     ; 0x2361
    push ax                          ; 0x2364
    mov ax, 0                        ; 0x2365
    push ax                          ; 0x2368
    mov ax, 0xe                      ; 0x2369
    push ax                          ; 0x236c
    call api_idx_0008_URRP           ; 0x236d
    add sp, byte 0x0c                ; 0x2370
    jmp short @..api_idx_0022_RHMN.l13 ; 0x2373
@..api_idx_0022_RHMN.l11:
    mov ax, 3                        ; 0x2375
    push ax                          ; 0x2378
    mov ax, 0                        ; 0x2379
    push ax                          ; 0x237c
    mov ax, 0x17                     ; 0x237d
    push ax                          ; 0x2380
    mov ax, 0x16                     ; 0x2381
    push ax                          ; 0x2384
    mov ax, 0                        ; 0x2385
    push ax                          ; 0x2388
    mov ax, 0x1b                     ; 0x2389
    push ax                          ; 0x238c
    call api_idx_0008_URRP           ; 0x238d
    add sp, byte 0x0c                ; 0x2390
    jmp short @..api_idx_0022_RHMN.l13 ; 0x2393
@..api_idx_0022_RHMN.l12:
    cmp ax, strict word 1            ; 0x2395
    je short @..api_idx_0022_RHMN.l9 ; 0x2398
    cmp ax, strict word 2            ; 0x239a
    je short @..api_idx_0022_RHMN.l10 ; 0x239d
    cmp ax, strict word 3            ; 0x239f
    je short @..api_idx_0022_RHMN.l11 ; 0x23a2
@..api_idx_0022_RHMN.l13:
    mov ax, word [bss_8f1c]          ; 0x23a4
    mov dx, word [bss_8f1e]          ; 0x23a7
    mov cx, 0x3c                     ; 0x23ab
    mov bx, 0                        ; 0x23ae
    call aztec_lrm                   ; 0x23b1
    or dx, ax                        ; 0x23b4
    jne short @..api_idx_0022_RHMN.l14 ; 0x23b6
    call api_idx_0032_TNQM           ; 0x23b8
@..api_idx_0022_RHMN.l14:
    mov ax, word [bss_8f1c]          ; 0x23bb
    mov dx, word [bss_8f1e]          ; 0x23be
    mov cx, 0xf0                     ; 0x23c2
    mov bx, 0                        ; 0x23c5
    call aztec_lrm                   ; 0x23c8
    or dx, ax                        ; 0x23cb
    jne short @..api_idx_0022_RHMN.l15 ; 0x23cd
    mov ax, 0x64                     ; 0x23cf
    push ax                          ; 0x23d2
    call random_below                ; 0x23d3
    pop cx                           ; 0x23d6
    mov word [bp - 0x0004], ax       ; 0x23d7
    mov ax, 0x64                     ; 0x23da
    push ax                          ; 0x23dd
    call random_below                ; 0x23de
    pop cx                           ; 0x23e1
    mov bx, word [bp - 0x0004]       ; 0x23e2
    mov byte [bx + bss_5990], al     ; 0x23e5
@..api_idx_0022_RHMN.l15:
    mov ax, word [bss_8f1c]          ; 0x23e9
    mov dx, word [bss_8f1e]          ; 0x23ec
    mov cx, 0xa                      ; 0x23f0
    mov bx, 0                        ; 0x23f3
    call aztec_lrm                   ; 0x23f6
    cmp dx, byte 0                   ; 0x23f9
    jne short @..api_idx_0022_RHMN.l16 ; 0x23fc
    cmp ax, strict word 5            ; 0x23fe
@..api_idx_0022_RHMN.l16:
    je short @..api_idx_0022_RHMN.l17 ; 0x2401
    jmp near @..api_idx_0022_RHMN.l26 ; 0x2403
@..api_idx_0022_RHMN.l17:
    mov word [bp - 0x0004], 0        ; 0x2406
    jmp near @..api_idx_0022_RHMN.l25 ; 0x240b
@..api_idx_0022_RHMN.l18:
    mov ax, 0x248                    ; 0x240e
    imul word [bp - 0x0004]          ; 0x2411
    mov bx, ax                       ; 0x2414
    cmp byte [bx + 0x5e2f], 3        ; 0x2416
    jb short @..api_idx_0022_RHMN.l19 ; 0x241b
    jmp near @..api_idx_0022_RHMN.l24 ; 0x241d
@..api_idx_0022_RHMN.l19:
    mov ax, word [bss_8f1c]          ; 0x2420
    mov dx, word [bss_8f1e]          ; 0x2423
    mov cx, 0x3c                     ; 0x2427
    mov bx, 0                        ; 0x242a
    call aztec_lrm                   ; 0x242d
    mov cx, 0xa                      ; 0x2430
    mov bx, 0                        ; 0x2433
    call aztec_ldv                   ; 0x2436
    push ax                          ; 0x2439
    push dx                          ; 0x243a
    mov ax, word [bp - 0x0004]       ; 0x243b
    cwd                              ; 0x243e
    mov cx, ax                       ; 0x243f
    mov bx, dx                       ; 0x2441
    pop dx                           ; 0x2443
    pop ax                           ; 0x2444
    cmp dx, bx                       ; 0x2445
    jne short @..api_idx_0022_RHMN.l20 ; 0x2447
    cmp ax, cx                       ; 0x2449
@..api_idx_0022_RHMN.l20:
    jne short @..api_idx_0022_RHMN.l21 ; 0x244b
    mov ax, 1                        ; 0x244d
    jmp short @..api_idx_0022_RHMN.l22 ; 0x2450
@..api_idx_0022_RHMN.l21:
    mov ax, 0                        ; 0x2452
@..api_idx_0022_RHMN.l22:
    mov word [bp - 0x0012], ax       ; 0x2455
    cmp word [bp - 0x0012], byte 0   ; 0x2458
    je short @..api_idx_0022_RHMN.l23 ; 0x245c
    mov ax, 0x248                    ; 0x245e
    imul word [bp - 0x0004]          ; 0x2461
    mov bx, ax                       ; 0x2464
    mov al, byte [bx + 0x5e33]       ; 0x2466
    sub ah, ah                       ; 0x246a
    inc ax                           ; 0x246c
    sub word [bx + 0x5c10], ax       ; 0x246d
    cmp word [bx + 0x5c10], byte 0   ; 0x2471
    jge short @..api_idx_0022_RHMN.l23 ; 0x2476
    mov word [bx + 0x5c10], 0        ; 0x2478
@..api_idx_0022_RHMN.l23:
    push word [bp - 0x0012]          ; 0x247e
    mov ax, 1                        ; 0x2481
    push ax                          ; 0x2484
    mov ax, 0                        ; 0x2485
    push ax                          ; 0x2488
    push ax                          ; 0x2489
    push word [bp - 0x0004]          ; 0x248a
    call api_idx_000a_TQHL           ; 0x248d
    add sp, byte 0x0a                ; 0x2490
@..api_idx_0022_RHMN.l24:
    inc word [bp - 0x0004]           ; 0x2493
@..api_idx_0022_RHMN.l25:
    mov ax, word [bp - 0x0004]       ; 0x2496
    cmp ax, word [bss_69c8]          ; 0x2499
    jge short @..api_idx_0022_RHMN.l26 ; 0x249d
    jmp near @..api_idx_0022_RHMN.l18 ; 0x249f
@..api_idx_0022_RHMN.l26:
    mov word [bp - 0x0016], 0        ; 0x24a2
    mov word [bp - 0x0018], 0        ; 0x24a7
    mov word [bp - 0x0004], 0        ; 0x24ac
    jmp short @..api_idx_0022_RHMN.l30 ; 0x24b1
@..api_idx_0022_RHMN.l27:
    mov ax, 0x248                    ; 0x24b3
    imul word [bp - 0x0004]          ; 0x24b6
    mov bx, ax                       ; 0x24b9
    cmp byte [bx + 0x5e2f], 0        ; 0x24bb
    jne short @..api_idx_0022_RHMN.l29 ; 0x24c0
    inc word [bp - 0x0016]           ; 0x24c2
    cmp byte [bx + 0x5d5c], 0        ; 0x24c5
    ja short @..api_idx_0022_RHMN.l28 ; 0x24ca
    cmp byte [bx + 0x5d5d], 0        ; 0x24cc
    jbe short @..api_idx_0022_RHMN.l29 ; 0x24d1
@..api_idx_0022_RHMN.l28:
    inc word [bp - 0x0018]           ; 0x24d3
@..api_idx_0022_RHMN.l29:
    inc word [bp - 0x0004]           ; 0x24d6
@..api_idx_0022_RHMN.l30:
    mov ax, word [bp - 0x0004]       ; 0x24d9
    cmp ax, word [bss_69c8]          ; 0x24dc
    jl short @..api_idx_0022_RHMN.l27 ; 0x24e0
    cmp word [bp - 0x0016], byte 0   ; 0x24e2
    jne short @..api_idx_0022_RHMN.l31 ; 0x24e6
    mov word [game_state], 8         ; 0x24e8
    ret                              ; 0x24ee
@..api_idx_0022_RHMN.l31:
    mov ax, word [bp - 0x0018]       ; 0x24ef
    cmp ax, word [bp - 0x0016]       ; 0x24f2
    jne short @..api_idx_0022_RHMN.l32 ; 0x24f5
    call api_idx_0018_USPR           ; 0x24f7
    cmp ax, strict word 1            ; 0x24fa
    jne short @..api_idx_0022_RHMN.l32 ; 0x24fd
    push word [party_map_piece]      ; 0x24ff
    call api_idx_0002_TOSS           ; 0x2503
    pop cx                           ; 0x2506
    push ax                          ; 0x2507
    call api_idx_0006_KUNS           ; 0x2508
    pop cx                           ; 0x250b
    mov bx, word [bss_100a]          ; 0x250c
    mov word [bx], ax                ; 0x2510
    mov ax, 1                        ; 0x2512
    push ax                          ; 0x2515
    mov ax, 0                        ; 0x2516
    push ax                          ; 0x2519
    push ax                          ; 0x251a
    call loc_VGMJ                    ; 0x251b
    add sp, byte 6                   ; 0x251e
    ret                              ; 0x2521
@..api_idx_0022_RHMN.l32:
    mov ax, word [bp - 0x0018]       ; 0x2522
    cmp ax, word [bp - 0x0016]       ; 0x2525
    jne short @..api_idx_0022_RHMN.l33 ; 0x2528
    jmp near @..api_idx_0022_RHMN.l26 ; 0x252a
@..api_idx_0022_RHMN.l33:
    mov ax, word [party_map_piece]   ; 0x252d
    mov cx, 6                        ; 0x2530
    shl ax, cl                       ; 0x2533
    mov cx, word [party_cell_y]      ; 0x2535
    shl cx, 1                        ; 0x2539
    shl cx, 1                        ; 0x253b
    shl cx, 1                        ; 0x253d
    add ax, cx                       ; 0x253f
    add ax, word [party_cell_x]      ; 0x2541
    mov word [bp - 0x000a], ax       ; 0x2545
    push ax                          ; 0x2548
    mov ax, bss_8b7e                 ; 0x2549
    push ax                          ; 0x254c
    call ds_leaf_loc_PRVP            ; 0x254d
    add sp, byte 4                   ; 0x2550
    test ax, ax                      ; 0x2553
    je short @..api_idx_0022_RHMN.l34 ; 0x2555
    push word [party_map_piece]      ; 0x2557
    call api_idx_0002_TOSS           ; 0x255b
    pop cx                           ; 0x255e
    push ax                          ; 0x255f
    call api_idx_0006_KUNS           ; 0x2560
    pop cx                           ; 0x2563
    mov bx, word [bss_100a]          ; 0x2564
    mov word [bx], ax                ; 0x2568
    mov ax, 1                        ; 0x256a
    push ax                          ; 0x256d
    mov ax, 0                        ; 0x256e
    push ax                          ; 0x2571
    mov ax, 1                        ; 0x2572
    push ax                          ; 0x2575
    call loc_VGMJ                    ; 0x2576
    add sp, byte 6                   ; 0x2579
    ret                              ; 0x257c
@..api_idx_0022_RHMN.l34:
    push word [bp - 0x000a]          ; 0x257d
    mov ax, bss_8c7e                 ; 0x2580
    push ax                          ; 0x2583
    call ds_leaf_loc_PRVP            ; 0x2584
    add sp, byte 4                   ; 0x2587
    test ax, ax                      ; 0x258a
    je short @..api_idx_0022_RHMN.l35 ; 0x258c
    cmp word [location_changed], byte 1 ; 0x258e
    jne short @..api_idx_0022_RHMN.l35 ; 0x2593
    call loc_IPSH                    ; 0x2595
    cmp word [game_state], byte 5    ; 0x2598
    je short @..api_idx_0022_RHMN.l35 ; 0x259d
    ret                              ; 0x259f
@..api_idx_0022_RHMN.l35:
    mov ax, word [bss_8f1c]          ; 0x25a0
    mov dx, word [bss_8f1e]          ; 0x25a3
    mov cx, 0x1e                     ; 0x25a7
    mov bx, 0                        ; 0x25aa
    call aztec_lrm                   ; 0x25ad
    mov word [bp - 0x0008], ax       ; 0x25b0
    cmp ax, strict word 0x16         ; 0x25b3
    jge short @..api_idx_0022_RHMN.l37 ; 0x25b6
    mov cx, 0x26                     ; 0x25b8
    imul cx                          ; 0x25bb
    mov bx, ax                       ; 0x25bd
    cmp byte [bx - 0x7b00], 0        ; 0x25bf
    jle short @..api_idx_0022_RHMN.l37 ; 0x25c4
    cmp byte [bx - 0x7b16], 1        ; 0x25c6
    je short @..api_idx_0022_RHMN.l37 ; 0x25cb
    mov al, byte [bx - 0x7b14]       ; 0x25cd
    sub ah, ah                       ; 0x25d1
    shl ax, 1                        ; 0x25d3
    shl ax, 1                        ; 0x25d5
    mov bx, ax                       ; 0x25d7
    mov al, byte [bx - 0x7687]       ; 0x25d9
    cbw                              ; 0x25dd
    cmp ax, word [game_state_arg]    ; 0x25de
    jne short @..api_idx_0022_RHMN.l37 ; 0x25e2
    mov ax, word [bp - 0x0008]       ; 0x25e4
    imul cx                          ; 0x25e7
    mov bx, ax                       ; 0x25e9
    mov al, byte [bx - 0x7b13]       ; 0x25eb
    sub ah, ah                       ; 0x25ef
    cmp ax, word [party_map_piece]   ; 0x25f1
    jne short @..api_idx_0022_RHMN.l37 ; 0x25f5
    mov ax, word [bp - 0x0008]       ; 0x25f7
    mov bx, word [bss_100a]          ; 0x25fa
    mov word [bx], ax                ; 0x25fe
    mov ax, 0                        ; 0x2600
    cmp word [bp - 0x0008], byte 0x13 ; 0x2603
    je short @..api_idx_0022_RHMN.l36 ; 0x2607
    mov ax, 1                        ; 0x2609
@..api_idx_0022_RHMN.l36:
    push ax                          ; 0x260c
    mov ax, 0                        ; 0x260d
    push ax                          ; 0x2610
    mov ax, 1                        ; 0x2611
    push ax                          ; 0x2614
    call loc_VGMJ                    ; 0x2615
    add sp, byte 6                   ; 0x2618
    mov word [game_state], 0x12      ; 0x261b
    ret                              ; 0x2621
@..api_idx_0022_RHMN.l37:
    mov ax, 0x3e8                    ; 0x2622
    push ax                          ; 0x2625
    call random_below                ; 0x2626
    pop cx                           ; 0x2629
    cmp ax, 0x3e3                    ; 0x262a
    jl short @..api_idx_0022_RHMN.l38 ; 0x262d
    push word [party_map_piece]      ; 0x262f
    call api_idx_0002_TOSS           ; 0x2633
    pop cx                           ; 0x2636
    push ax                          ; 0x2637
    call api_idx_0006_KUNS           ; 0x2638
    pop cx                           ; 0x263b
    mov bx, word [bss_100a]          ; 0x263c
    mov word [bx], ax                ; 0x2640
    mov ax, 1                        ; 0x2642
    push ax                          ; 0x2645
    mov ax, 0                        ; 0x2646
    push ax                          ; 0x2649
    push ax                          ; 0x264a
    call loc_VGMJ                    ; 0x264b
    add sp, byte 6                   ; 0x264e
    ret                              ; 0x2651
@..api_idx_0022_RHMN.l38:
    mov word [bss_91aa], 0           ; 0x2652
    mov word [location_changed], 0   ; 0x2658
    mov word [bp - 0x0022], 0        ; 0x265e
    call check_at_saved_location     ; 0x2663
    mov ax, word [party_map_piece]   ; 0x2666
    mov cx, 6                        ; 0x2669
    shl ax, cl                       ; 0x266c
    mov cx, word [party_cell_y]      ; 0x266e
    shl cx, 1                        ; 0x2672
    shl cx, 1                        ; 0x2674
    shl cx, 1                        ; 0x2676
    add ax, cx                       ; 0x2678
    add ax, word [party_cell_x]      ; 0x267a
    mov word [bp - 0x000a], ax       ; 0x267e
    mov ax, 1                        ; 0x2681
    push ax                          ; 0x2684
    push word [bp - 0x000a]          ; 0x2685
    mov ax, bss_8afe                 ; 0x2688
    push ax                          ; 0x268b
    call set_bitmap_bit              ; 0x268c
    add sp, byte 6                   ; 0x268f
    call api_idx_0004_HRPS           ; 0x2692
    mov word [bp - 0x0010], ax       ; 0x2695
    cmp ax, strict word 1            ; 0x2698
    jne short @..api_idx_0022_RHMN.l41 ; 0x269b
    cmp word [save_location_flag], byte 0 ; 0x269d
    je short @..api_idx_0022_RHMN.l39 ; 0x26a2
    mov ax, 0x80e                    ; 0x26a4
    push ax                          ; 0x26a7
    call loc_MMGL                    ; 0x26a8
    pop cx                           ; 0x26ab
    jmp short @..api_idx_0022_RHMN.l40 ; 0x26ac
@..api_idx_0022_RHMN.l39:
    mov ax, 0x80c                    ; 0x26ae
    push ax                          ; 0x26b1
    call loc_MMGL                    ; 0x26b2
    pop cx                           ; 0x26b5
    mov word [bp - 0x0022], 1        ; 0x26b6
@..api_idx_0022_RHMN.l40:
    jmp short @..api_idx_0022_RHMN.l43 ; 0x26bb
@..api_idx_0022_RHMN.l41:
    cmp word [bp - 0x0010], byte 3   ; 0x26bd
    jne short @..api_idx_0022_RHMN.l42 ; 0x26c1
    mov ax, 0x80b                    ; 0x26c3
    push ax                          ; 0x26c6
    call loc_MMGL                    ; 0x26c7
    pop cx                           ; 0x26ca
    jmp short @..api_idx_0022_RHMN.l43 ; 0x26cb
@..api_idx_0022_RHMN.l42:
    cmp word [bss_91b2], byte 1      ; 0x26cd
    jne short @..api_idx_0022_RHMN.l43 ; 0x26d2
    mov ax, 0x98                     ; 0x26d4
    push ax                          ; 0x26d7
    mov ax, 0x13f                    ; 0x26d8
    push ax                          ; 0x26db
    mov ax, 0x92                     ; 0x26dc
    push ax                          ; 0x26df
    mov ax, 0                        ; 0x26e0
    push ax                          ; 0x26e3
    call gfx_show_area               ; 0x26e4
    add sp, byte 8                   ; 0x26e7
    mov word [bss_91b2], 0           ; 0x26ea
@..api_idx_0022_RHMN.l43:
    mov word [bp - 0x0004], 0        ; 0x26f0
@..api_idx_0022_RHMN.l44:
    mov ax, 0                        ; 0x26f5
    push ax                          ; 0x26f8
    mov bx, word [bp - 0x0004]       ; 0x26f9
    mov al, byte [bx + 0x150]        ; 0x26fc
    cbw                              ; 0x2700
    push ax                          ; 0x2701
    shl bx, 1                        ; 0x2702
    shl bx, 1                        ; 0x2704
    shl bx, 1                        ; 0x2706
    push word [bx + 0x126]           ; 0x2708
    push word [bx + 0x124]           ; 0x270c
    push word [bx + 0x122]           ; 0x2710
    push word [bx + 0x120]           ; 0x2714
    push word [bp - 0x0004]          ; 0x2718
    call set_hotspot                 ; 0x271b
    add sp, byte 0x0e                ; 0x271e
    inc word [bp - 0x0004]           ; 0x2721
    mov ax, word [bp - 0x0004]       ; 0x2724
    cmp ax, strict word 6            ; 0x2727
    jl short @..api_idx_0022_RHMN.l44 ; 0x272a
    mov ax, 0                        ; 0x272c
    push ax                          ; 0x272f
    mov ax, 0x52                     ; 0x2730
    push ax                          ; 0x2733
    mov ax, 0xac                     ; 0x2734
    push ax                          ; 0x2737
    mov ax, 0x6c                     ; 0x2738
    push ax                          ; 0x273b
    mov ax, 0xa3                     ; 0x273c
    push ax                          ; 0x273f
    mov ax, 0x5c                     ; 0x2740
    push ax                          ; 0x2743
    mov ax, 6                        ; 0x2744
    push ax                          ; 0x2747
    call set_hotspot                 ; 0x2748
    add sp, byte 0x0e                ; 0x274b
    mov ax, 0                        ; 0x274e
    push ax                          ; 0x2751
    mov ax, 0x53                     ; 0x2752
    push ax                          ; 0x2755
    mov ax, 0xba                     ; 0x2756
    push ax                          ; 0x2759
    mov ax, 0x6b                     ; 0x275a
    push ax                          ; 0x275d
    mov ax, 0xaf                     ; 0x275e
    push ax                          ; 0x2761
    mov ax, 0x58                     ; 0x2762
    push ax                          ; 0x2765
    mov ax, 7                        ; 0x2766
    push ax                          ; 0x2769
    call set_hotspot                 ; 0x276a
    add sp, byte 0x0e                ; 0x276d
    mov ax, 0                        ; 0x2770
    push ax                          ; 0x2773
    mov ax, 0x4d                     ; 0x2774
    push ax                          ; 0x2777
    mov ax, 0xc3                     ; 0x2778
    push ax                          ; 0x277b
    mov ax, 0x57                     ; 0x277c
    push ax                          ; 0x277f
    mov ax, 0xb9                     ; 0x2780
    push ax                          ; 0x2783
    mov ax, 0x41                     ; 0x2784
    push ax                          ; 0x2787
    mov ax, 8                        ; 0x2788
    push ax                          ; 0x278b
    call set_hotspot                 ; 0x278c
    add sp, byte 0x0e                ; 0x278f
    mov ax, 0                        ; 0x2792
    push ax                          ; 0x2795
    mov ax, 0x44                     ; 0x2796
    push ax                          ; 0x2799
    mov ax, 0xab                     ; 0x279a
    push ax                          ; 0x279d
    mov ax, 0xe4                     ; 0x279e
    push ax                          ; 0x27a1
    mov ax, 0xa3                     ; 0x27a2
    push ax                          ; 0x27a5
    mov ax, 0xd1                     ; 0x27a6
    push ax                          ; 0x27a9
    mov ax, 9                        ; 0x27aa
    push ax                          ; 0x27ad
    call set_hotspot                 ; 0x27ae
    add sp, byte 0x0e                ; 0x27b1
    mov ax, 0                        ; 0x27b4
    push ax                          ; 0x27b7
    mov ax, 0x4f                     ; 0x27b8
    push ax                          ; 0x27bb
    mov ax, 0xb9                     ; 0x27bc
    push ax                          ; 0x27bf
    mov ax, 0xe4                     ; 0x27c0
    push ax                          ; 0x27c3
    mov ax, 0xaf                     ; 0x27c4
    push ax                          ; 0x27c7
    mov ax, 0xd5                     ; 0x27c8
    push ax                          ; 0x27cb
    mov ax, 0xa                      ; 0x27cc
    push ax                          ; 0x27cf
    call set_hotspot                 ; 0x27d0
    add sp, byte 0x0e                ; 0x27d3
    mov ax, 0                        ; 0x27d6
    push ax                          ; 0x27d9
    mov ax, 0x55                     ; 0x27da
    push ax                          ; 0x27dd
    mov ax, 0xc3                     ; 0x27de
    push ax                          ; 0x27e1
    mov ax, 0xfe                     ; 0x27e2
    push ax                          ; 0x27e5
    mov ax, 0xb8                     ; 0x27e6
    push ax                          ; 0x27e9
    mov ax, 0xe5                     ; 0x27ea
    push ax                          ; 0x27ed
    mov ax, 0xb                      ; 0x27ee
    push ax                          ; 0x27f1
    call set_hotspot                 ; 0x27f2
    add sp, byte 0x0e                ; 0x27f5
    mov word [bp - 0x0004], 0        ; 0x27f8
@..api_idx_0022_RHMN.l45:
    mov ax, word [bp - 0x0004]       ; 0x27fd
    mov cx, 2                        ; 0x2800
    cwd                              ; 0x2803
    idiv cx                          ; 0x2804
    mov ax, dx                       ; 0x2806
    mov cx, 0xfc                     ; 0x2808
    imul cx                          ; 0x280b
    add ax, strict word 5            ; 0x280d
    mov word [bp - 0x000c], ax       ; 0x2810
    mov ax, word [bp - 0x0004]       ; 0x2813
    mov cx, 2                        ; 0x2816
    cwd                              ; 0x2819
    idiv cx                          ; 0x281a
    mov cx, 0x2d                     ; 0x281c
    imul cx                          ; 0x281f
    add ax, strict word 0x12         ; 0x2821
    mov word [bp - 0x000e], ax       ; 0x2824
    mov ax, 0                        ; 0x2827
    push ax                          ; 0x282a
    mov bx, word [bp - 0x0004]       ; 0x282b
    mov al, byte [bx + 0x156]        ; 0x282e
    cbw                              ; 0x2832
    push ax                          ; 0x2833
    mov ax, word [bp - 0x000e]       ; 0x2834
    add ax, strict word 0x25         ; 0x2837
    push ax                          ; 0x283a
    mov ax, word [bp - 0x000c]       ; 0x283b
    add ax, strict word 0x28         ; 0x283e
    push ax                          ; 0x2841
    mov ax, word [bp - 0x000e]       ; 0x2842
    add ax, strict word 0x20         ; 0x2845
    push ax                          ; 0x2848
    mov ax, word [bp - 0x000c]       ; 0x2849
    add ax, strict word 4            ; 0x284c
    push ax                          ; 0x284f
    add bx, byte 0x0c                ; 0x2850
    mov ax, bx                       ; 0x2853
    push ax                          ; 0x2855
    call set_hotspot                 ; 0x2856
    add sp, byte 0x0e                ; 0x2859
    mov ax, 0                        ; 0x285c
    push ax                          ; 0x285f
    mov ax, word [bp - 0x0004]       ; 0x2860
    add ax, strict word 0x31         ; 0x2863
    cbw                              ; 0x2866
    push ax                          ; 0x2867
    mov ax, word [bp - 0x000e]       ; 0x2868
    add ax, strict word 0x2b         ; 0x286b
    push ax                          ; 0x286e
    mov ax, word [bp - 0x000c]       ; 0x286f
    add ax, strict word 0x3b         ; 0x2872
    push ax                          ; 0x2875
    push word [bp - 0x000e]          ; 0x2876
    push word [bp - 0x000c]          ; 0x2879
    mov ax, word [bp - 0x0004]       ; 0x287c
    add ax, strict word 0x12         ; 0x287f
    push ax                          ; 0x2882
    call set_hotspot                 ; 0x2883
    add sp, byte 0x0e                ; 0x2886
    inc word [bp - 0x0004]           ; 0x2889
    mov ax, word [bp - 0x0004]       ; 0x288c
    cmp ax, strict word 6            ; 0x288f
    jge short @..api_idx_0022_RHMN.l46 ; 0x2892
    jmp near @..api_idx_0022_RHMN.l45 ; 0x2894
@..api_idx_0022_RHMN.l46:
    mov ax, 0                        ; 0x2897
    push ax                          ; 0x289a
    mov ax, 0x47                     ; 0x289b
    push ax                          ; 0x289e
    mov ax, 0xc4                     ; 0x289f
    push ax                          ; 0x28a2
    mov ax, 0x13c                    ; 0x28a3
    push ax                          ; 0x28a6
    mov ax, 0xb9                     ; 0x28a7
    push ax                          ; 0x28aa
    mov ax, 0x131                    ; 0x28ab
    push ax                          ; 0x28ae
    mov ax, 0x18                     ; 0x28af
    push ax                          ; 0x28b2
    call set_hotspot                 ; 0x28b3
    add sp, byte 0x0e                ; 0x28b6
    mov ax, 0                        ; 0x28b9
    push ax                          ; 0x28bc
    push ax                          ; 0x28bd
    push ax                          ; 0x28be
    push ax                          ; 0x28bf
    push ax                          ; 0x28c0
    mov ax, 0xffff                   ; 0x28c1
    push ax                          ; 0x28c4
    mov ax, 0x19                     ; 0x28c5
    push ax                          ; 0x28c8
    call set_hotspot                 ; 0x28c9
    add sp, byte 0x0e                ; 0x28cc
    mov word [bp - 0x001c], 0        ; 0x28cf
    lea ax, word [bp - 0x0020]       ; 0x28d4
    push ax                          ; 0x28d7
    lea ax, word [bp - 0x001e]       ; 0x28d8
    push ax                          ; 0x28db
    push word [bp - 0x000a]          ; 0x28dc
    call loc_RRJG                    ; 0x28df
    add sp, byte 6                   ; 0x28e2
    cmp word [bp - 0x001e], byte 0   ; 0x28e5
    jg short @..api_idx_0022_RHMN.l47 ; 0x28e9
    jmp near @..api_idx_0022_RHMN.l57 ; 0x28eb
@..api_idx_0022_RHMN.l47:
    cmp word [bp - 0x001e], byte 0x0e ; 0x28ee
    jne short @..api_idx_0022_RHMN.l48 ; 0x28f2
    mov ax, 0                        ; 0x28f4
    push ax                          ; 0x28f7
    mov ax, 0x43                     ; 0x28f8
    push ax                          ; 0x28fb
    mov ax, 0x8d                     ; 0x28fc
    push ax                          ; 0x28ff
    mov ax, 0xb6                     ; 0x2900
    push ax                          ; 0x2903
    mov ax, 0x76                     ; 0x2904
    push ax                          ; 0x2907
    mov ax, 0x8a                     ; 0x2908
    push ax                          ; 0x290b
    mov ax, 0x19                     ; 0x290c
    push ax                          ; 0x290f
    call set_hotspot                 ; 0x2910
    add sp, byte 0x0e                ; 0x2913
    mov word [bp - 0x001c], 3        ; 0x2916
    jmp near @..api_idx_0022_RHMN.l57 ; 0x291b
@..api_idx_0022_RHMN.l48:
    cmp word [bp - 0x001e], byte 8   ; 0x291e
    je short @..api_idx_0022_RHMN.l49 ; 0x2922
    cmp word [bp - 0x001e], byte 9   ; 0x2924
    jne short @..api_idx_0022_RHMN.l52 ; 0x2928
@..api_idx_0022_RHMN.l49:
    mov ax, word [party_tag]         ; 0x292a
    mov cx, 2                        ; 0x292d
    cwd                              ; 0x2930
    idiv cx                          ; 0x2931
    mov ax, dx                       ; 0x2933
    push ax                          ; 0x2935
    mov ax, word [bp - 0x0020]       ; 0x2936
    cwd                              ; 0x2939
    idiv cx                          ; 0x293a
    mov cx, dx                       ; 0x293c
    pop ax                           ; 0x293e
    cmp ax, cx                       ; 0x293f
    jne short @..api_idx_0022_RHMN.l52 ; 0x2941
    cmp word [bp - 0x001e], byte 8   ; 0x2943
    jne short @..api_idx_0022_RHMN.l50 ; 0x2947
    mov ax, 0                        ; 0x2949
    push ax                          ; 0x294c
    mov ax, 0x43                     ; 0x294d
    push ax                          ; 0x2950
    mov ax, 0x8d                     ; 0x2951
    push ax                          ; 0x2954
    mov ax, 0xb6                     ; 0x2955
    push ax                          ; 0x2958
    mov ax, 0x6b                     ; 0x2959
    push ax                          ; 0x295c
    mov ax, 0x8a                     ; 0x295d
    push ax                          ; 0x2960
    mov ax, 0x19                     ; 0x2961
    push ax                          ; 0x2964
    call set_hotspot                 ; 0x2965
    add sp, byte 0x0e                ; 0x2968
    mov word [bp - 0x001c], 1        ; 0x296b
    jmp short @..api_idx_0022_RHMN.l51 ; 0x2970
@..api_idx_0022_RHMN.l50:
    mov ax, 0                        ; 0x2972
    push ax                          ; 0x2975
    mov ax, 0x43                     ; 0x2976
    push ax                          ; 0x2979
    mov ax, 0x5e                     ; 0x297a
    push ax                          ; 0x297d
    mov ax, 0xb6                     ; 0x297e
    push ax                          ; 0x2981
    mov ax, 0x22                     ; 0x2982
    push ax                          ; 0x2985
    mov ax, 0x8a                     ; 0x2986
    push ax                          ; 0x2989
    mov ax, 0x19                     ; 0x298a
    push ax                          ; 0x298d
    call set_hotspot                 ; 0x298e
    add sp, byte 0x0e                ; 0x2991
    mov word [bp - 0x001c], 2        ; 0x2994
@..api_idx_0022_RHMN.l51:
    jmp near @..api_idx_0022_RHMN.l57 ; 0x2999
@..api_idx_0022_RHMN.l52:
    mov ax, word [party_tag]         ; 0x299c
    cmp ax, word [bp - 0x0020]       ; 0x299f
    je short @..api_idx_0022_RHMN.l53 ; 0x29a2
    jmp near @..api_idx_0022_RHMN.l57 ; 0x29a4
@..api_idx_0022_RHMN.l53:
    mov ax, word [bp - 0x001e]       ; 0x29a7
    jmp near @..api_idx_0022_RHMN.l56 ; 0x29aa
jumptable_2a3c_case_0:
    mov ax, 0                        ; 0x29ad
    push ax                          ; 0x29b0
    mov ax, 0x46                     ; 0x29b1
    push ax                          ; 0x29b4
    mov ax, 0x5f                     ; 0x29b5
    push ax                          ; 0x29b8
    mov ax, 0xbc                     ; 0x29b9
    push ax                          ; 0x29bc
    mov ax, 0x36                     ; 0x29bd
    push ax                          ; 0x29c0
    mov ax, 0x82                     ; 0x29c1
    push ax                          ; 0x29c4
    mov ax, 0x19                     ; 0x29c5
    push ax                          ; 0x29c8
    call set_hotspot                 ; 0x29c9
    add sp, byte 0x0e                ; 0x29cc
    jmp near @..api_idx_0022_RHMN.l57 ; 0x29cf
jumptable_2a3c_case_1:
    cmp word [maze_variant], byte 1  ; 0x29d2
    jne short @..api_idx_0022_RHMN.l54 ; 0x29d7
    mov ax, 0                        ; 0x29d9
    push ax                          ; 0x29dc
    push ax                          ; 0x29dd
    mov ax, 0x47                     ; 0x29de
    push ax                          ; 0x29e1
    mov ax, 0xa2                     ; 0x29e2
    push ax                          ; 0x29e5
    mov ax, 0x41                     ; 0x29e6
    push ax                          ; 0x29e9
    mov ax, 0x9c                     ; 0x29ea
    push ax                          ; 0x29ed
    mov ax, 0x19                     ; 0x29ee
    push ax                          ; 0x29f1
    call set_hotspot                 ; 0x29f2
    add sp, byte 0x0e                ; 0x29f5
    jmp short @..api_idx_0022_RHMN.l55 ; 0x29f8
@..api_idx_0022_RHMN.l54:
    mov ax, 0                        ; 0x29fa
    push ax                          ; 0x29fd
    push ax                          ; 0x29fe
    mov ax, 0x41                     ; 0x29ff
    push ax                          ; 0x2a02
    mov ax, 0xa2                     ; 0x2a03
    push ax                          ; 0x2a06
    mov ax, 0x3b                     ; 0x2a07
    push ax                          ; 0x2a0a
    mov ax, 0x9c                     ; 0x2a0b
    push ax                          ; 0x2a0e
    mov ax, 0x19                     ; 0x2a0f
    push ax                          ; 0x2a12
    call set_hotspot                 ; 0x2a13
    add sp, byte 0x0e                ; 0x2a16
@..api_idx_0022_RHMN.l55:
    jmp short @..api_idx_0022_RHMN.l57 ; 0x2a19
jumptable_2a3c_case_6:
    mov ax, 0                        ; 0x2a1b
    push ax                          ; 0x2a1e
    push ax                          ; 0x2a1f
    mov ax, 0x4d                     ; 0x2a20
    push ax                          ; 0x2a23
    mov ax, 0xa4                     ; 0x2a24
    push ax                          ; 0x2a27
    mov ax, 0x3b                     ; 0x2a28
    push ax                          ; 0x2a2b
    mov ax, 0x9a                     ; 0x2a2c
    push ax                          ; 0x2a2f
    mov ax, 0x19                     ; 0x2a30
    push ax                          ; 0x2a33
    call set_hotspot                 ; 0x2a34
    add sp, byte 0x0e                ; 0x2a37
    jmp short @..api_idx_0022_RHMN.l57 ; 0x2a3a
jumptable_2a3c:
    dw jumptable_2a3c_case_0 - IMAGE_BASE + __zres_end ; 0x2a3c
    dw jumptable_2a3c_case_1 - IMAGE_BASE + __zres_end ; 0x2a3e
    dw jumptable_2a3c_case_1 - IMAGE_BASE + __zres_end ; 0x2a40
    dw jumptable_2a3c_case_3 - IMAGE_BASE + __zres_end ; 0x2a42
    dw jumptable_2a3c_case_3 - IMAGE_BASE + __zres_end ; 0x2a44
    dw jumptable_2a3c_case_3 - IMAGE_BASE + __zres_end ; 0x2a46
    dw jumptable_2a3c_case_6 - IMAGE_BASE + __zres_end ; 0x2a48
    dw jumptable_2a3c_case_6 - IMAGE_BASE + __zres_end ; 0x2a4a
@..api_idx_0022_RHMN.l56:
    sub ax, strict word 4            ; 0x2a4c
    cmp ax, strict word 8            ; 0x2a4f
    jae short @..api_idx_0022_RHMN.l57 ; 0x2a52
    xchg bx, ax                      ; 0x2a54
    shl bx, 1                        ; 0x2a55
    jmp [cs:bx + jumptable_2a3c - IMAGE_BASE + __zres_end] ; 0x2a57
jumptable_2a3c_case_3:
@..api_idx_0022_RHMN.l57:
    mov ax, 0                        ; 0x2a5c
    push ax                          ; 0x2a5f
    push ax                          ; 0x2a60
    push ax                          ; 0x2a61
    push ax                          ; 0x2a62
    push ax                          ; 0x2a63
    mov ax, 0xffff                   ; 0x2a64
    push ax                          ; 0x2a67
    mov ax, 0x1a                     ; 0x2a68
    push ax                          ; 0x2a6b
    call set_hotspot                 ; 0x2a6c
    add sp, byte 0x0e                ; 0x2a6f
    mov ax, 0                        ; 0x2a72
    cmp word [bss_91b4], byte 0      ; 0x2a75
    je short @..api_idx_0022_RHMN.l58 ; 0x2a7a
    mov ax, 1                        ; 0x2a7c
@..api_idx_0022_RHMN.l58:
    mov word [bp - 0x001a], ax       ; 0x2a7f
    les bx, word [dseg_0002]         ; 0x2a82
    mov ax, word [es:bx]             ; 0x2a86
    mov dx, word [es:bx + 0x2]       ; 0x2a89
    add ax, strict word 0x24         ; 0x2a8d
    adc dx, byte 0                   ; 0x2a90
    mov word [bss_919c], dx          ; 0x2a93
    mov word [bss_919a], ax          ; 0x2a97
@..api_idx_0022_RHMN.l59:
    mov ax, 0x59fe                   ; 0x2a9a
    push ax                          ; 0x2a9d
    call poll_hotspots               ; 0x2a9e
    pop cx                           ; 0x2aa1
    dec ax                           ; 0x2aa2
    mov word [bp - 0x0002], ax       ; 0x2aa3
    call loc_HVLG                    ; 0x2aa6
    test ax, ax                      ; 0x2aa9
    je short @..api_idx_0022_RHMN.l60 ; 0x2aab
    mov ax, word [bss_82e8]          ; 0x2aad
    inc ax                           ; 0x2ab0
    mov cx, 2                        ; 0x2ab1
    cwd                              ; 0x2ab4
    idiv cx                          ; 0x2ab5
    mov word [bss_82e8], dx          ; 0x2ab7
    cmp word [hotspot_hit], byte 0   ; 0x2abb
    jne short @..api_idx_0022_RHMN.l60 ; 0x2ac0
    call redraw_maze_view            ; 0x2ac2
@..api_idx_0022_RHMN.l60:
    cmp word [hotspot_hit], byte 0   ; 0x2ac5
    jne short @..api_idx_0022_RHMN.l63 ; 0x2aca
    les bx, word [dseg_0002]         ; 0x2acc
    mov ax, word [es:bx]             ; 0x2ad0
    mov dx, word [es:bx + 0x2]       ; 0x2ad3
    cmp dx, word [bss_919c]          ; 0x2ad7
    jl short @..api_idx_0022_RHMN.l61 ; 0x2adb
    jne short @..api_idx_0022_RHMN.l62 ; 0x2add
    cmp ax, word [bss_919a]          ; 0x2adf
    ja short @..api_idx_0022_RHMN.l62 ; 0x2ae3
@..api_idx_0022_RHMN.l61:
    jmp short @..api_idx_0022_RHMN.l63 ; 0x2ae5
@..api_idx_0022_RHMN.l62:
    mov ax, 0                        ; 0x2ae7
    push ax                          ; 0x2aea
    call loc_LMUG                    ; 0x2aeb
    pop cx                           ; 0x2aee
@..api_idx_0022_RHMN.l63:
    cmp word [hotspot_hit], byte 0   ; 0x2aef
    je short @..api_idx_0022_RHMN.l59 ; 0x2af4
    cmp word [bp - 0x0002], byte 0x0c ; 0x2af6
    jl short @..api_idx_0022_RHMN.l65 ; 0x2afa
    cmp word [bp - 0x0002], byte 0x12 ; 0x2afc
    jge short @..api_idx_0022_RHMN.l65 ; 0x2b00
    mov ax, word [bp - 0x0002]       ; 0x2b02
    add ax, strict word 0xfff4       ; 0x2b05
    mov word [bss_8af0], ax          ; 0x2b08
    cmp ax, word [bss_69c8]          ; 0x2b0b
    jge short @..api_idx_0022_RHMN.l64 ; 0x2b0f
    mov word [game_state], 0x1f      ; 0x2b11
@..api_idx_0022_RHMN.l64:
    jmp near @..api_idx_0022_RHMN.l83 ; 0x2b17
@..api_idx_0022_RHMN.l65:
    cmp word [bp - 0x0002], byte 0x12 ; 0x2b1a
    jl short @..api_idx_0022_RHMN.l67 ; 0x2b1e
    cmp word [bp - 0x0002], byte 0x18 ; 0x2b20
    jge short @..api_idx_0022_RHMN.l67 ; 0x2b24
    mov ax, word [bp - 0x0002]       ; 0x2b26
    add ax, strict word 0xffee       ; 0x2b29
    mov word [bss_8af0], ax          ; 0x2b2c
    cmp ax, word [bss_69c8]          ; 0x2b2f
    jge short @..api_idx_0022_RHMN.l66 ; 0x2b33
    mov ax, 1                        ; 0x2b35
    push ax                          ; 0x2b38
    call api_idx_0002_IPQN           ; 0x2b39
    pop cx                           ; 0x2b3c
    mov word [game_state], 0x11      ; 0x2b3d
    mov word [bss_905e], 5           ; 0x2b43
@..api_idx_0022_RHMN.l66:
    jmp near @..api_idx_0022_RHMN.l83 ; 0x2b49
@..api_idx_0022_RHMN.l67:
    cmp word [bp - 0x0002], byte 0   ; 0x2b4c
    jl short @..api_idx_0022_RHMN.l68 ; 0x2b50
    cmp word [bp - 0x0002], byte 5   ; 0x2b52
    jg short @..api_idx_0022_RHMN.l68 ; 0x2b56
    push word [bp - 0x0002]          ; 0x2b58
    call api_idx_0010_HOIJ           ; 0x2b5b
    pop cx                           ; 0x2b5e
    mov ax, 0x32                     ; 0x2b5f
    push ax                          ; 0x2b62
    call delay_ms                    ; 0x2b63
    pop cx                           ; 0x2b66
@..api_idx_0022_RHMN.l68:
    mov ax, word [bp - 0x0002]       ; 0x2b67
    jmp near @..api_idx_0022_RHMN.l81 ; 0x2b6a
jumptable_2d1b_case_0:
    mov ax, 0                        ; 0x2b6d
    push ax                          ; 0x2b70
    call api_idx_0004_USIK           ; 0x2b71
    pop cx                           ; 0x2b74
    mov ax, 1                        ; 0x2b75
    push ax                          ; 0x2b78
    call api_idx_0002_IPQN           ; 0x2b79
    pop cx                           ; 0x2b7c
    mov word [bss_91b0], 0           ; 0x2b7d
    jmp near @..api_idx_0022_RHMN.l82 ; 0x2b83
jumptable_2d1b_case_1:
    call api_idx_0002_LMTG           ; 0x2b86
    mov ax, 1                        ; 0x2b89
    cmp word [bp - 0x0002], byte 1   ; 0x2b8c
    jne short @..api_idx_0022_RHMN.l69 ; 0x2b90
    mov ax, 3                        ; 0x2b92
@..api_idx_0022_RHMN.l69:
    add ax, word [party_tag]         ; 0x2b95
    mov cx, 4                        ; 0x2b99
    cwd                              ; 0x2b9c
    idiv cx                          ; 0x2b9d
    mov word [party_tag], dx         ; 0x2b9f
    mov word [bss_91aa], 1           ; 0x2ba3
    cmp dx, word [found_object_owner] ; 0x2ba9
    jne short @..api_idx_0022_RHMN.l70 ; 0x2bad
    mov word [location_changed], 1   ; 0x2baf
    mov bx, word [maze_tables]       ; 0x2bb5
    mov si, word [party_map_piece]   ; 0x2bb9
    mov al, byte [bx + si + 0xb40]   ; 0x2bbd
    sub ah, ah                       ; 0x2bc1
    mov word [party_region], ax      ; 0x2bc3
@..api_idx_0022_RHMN.l70:
    mov ax, 1                        ; 0x2bc6
    push ax                          ; 0x2bc9
    call api_idx_0002_IPQN           ; 0x2bca
    pop cx                           ; 0x2bcd
    jmp near @..api_idx_0022_RHMN.l82 ; 0x2bce
jumptable_2d1b_case_3:
    mov ax, 3                        ; 0x2bd1
    mov cx, word [bp - 0x0002]       ; 0x2bd4
    cmp cx, byte 3                   ; 0x2bd7
    je short @..api_idx_0022_RHMN.l71 ; 0x2bda
    mov ax, 2                        ; 0x2bdc
    cmp cx, byte 4                   ; 0x2bdf
    jne short @..api_idx_0022_RHMN.l71 ; 0x2be2
    mov ax, 1                        ; 0x2be4
@..api_idx_0022_RHMN.l71:
    push ax                          ; 0x2be7
    call api_idx_0004_USIK           ; 0x2be8
    pop cx                           ; 0x2beb
    mov ax, 1                        ; 0x2bec
    push ax                          ; 0x2bef
    call api_idx_0002_IPQN           ; 0x2bf0
    pop cx                           ; 0x2bf3
    jmp near @..api_idx_0022_RHMN.l82 ; 0x2bf4

    db 0xb8, 0x00, 0x00, 0x50, 0xe8, 0xe2, 0x8b, 0x59, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x2c, 0xbf, 0x59
    db 0x2a, 0xe4, 0x05, 0xd0, 0xff, 0x89, 0x46, 0xfc, 0xb8, 0x02, 0x00, 0x50, 0xe8, 0x1c, 0xbf, 0x59
    db 0x2a, 0xe4, 0x50, 0xb8, 0x0a, 0x00, 0xf7, 0x6e, 0xfc, 0x8b, 0xc8, 0x58, 0x03, 0xc1, 0x05, 0xd0
    db 0xff, 0x89, 0x46, 0xfc, 0x8b, 0x46, 0xfc, 0x8b, 0x1e, 0x0a, 0x10, 0x89, 0x07, 0xb8, 0x01, 0x00
    db 0x50, 0xb8, 0x00, 0x00, 0x50, 0x50, 0xe8, 0xd4, 0xde, 0x83, 0xc4, 0x06, 0xc3

jumptable_2d1b_case_25:
    cmp word [bp - 0x001c], byte 0   ; 0x2c44
    jle short @..api_idx_0022_RHMN.l73 ; 0x2c48
    mov ax, word [bp - 0x001c]       ; 0x2c4a
    dec ax                           ; 0x2c4d
    push ax                          ; 0x2c4e
    call api_idx_0002_SKMG           ; 0x2c4f
    pop cx                           ; 0x2c52
    cmp word [game_state], byte 5    ; 0x2c53
    je short @..api_idx_0022_RHMN.l72 ; 0x2c58
    ret                              ; 0x2c5a
@..api_idx_0022_RHMN.l72:
    jmp short @..api_idx_0022_RHMN.l74 ; 0x2c5b
@..api_idx_0022_RHMN.l73:
    mov ax, 0                        ; 0x2c5d
    push ax                          ; 0x2c60
    call check_cell_objects          ; 0x2c61
    pop cx                           ; 0x2c64
@..api_idx_0022_RHMN.l74:
    jmp near @..api_idx_0022_RHMN.l82 ; 0x2c65
jumptable_2d1b_case_7:
    mov ax, 1                        ; 0x2c68
    push ax                          ; 0x2c6b
    call check_cell_objects          ; 0x2c6c
    pop cx                           ; 0x2c6f
    mov ax, 1                        ; 0x2c70
    push ax                          ; 0x2c73
    call api_idx_0002_IPQN           ; 0x2c74
    pop cx                           ; 0x2c77
    jmp near @..api_idx_0022_RHMN.l82 ; 0x2c78
jumptable_2d1b_case_8:
    call ds_app_VGOM                 ; 0x2c7b
    mov word [bss_8af0], ax          ; 0x2c7e
    cmp ax, strict word 0xffff       ; 0x2c81
    je short @..api_idx_0022_RHMN.l76 ; 0x2c84
    push ax                          ; 0x2c86
    call ds_app_KTPM                 ; 0x2c87
    pop cx                           ; 0x2c8a
    test ax, ax                      ; 0x2c8b
    je short @..api_idx_0022_RHMN.l76 ; 0x2c8d
    mov ax, 1                        ; 0x2c8f
    push ax                          ; 0x2c92
    call api_idx_0002_IPQN           ; 0x2c93
    pop cx                           ; 0x2c96
    mov ax, 0x14                     ; 0x2c97
    cmp word [bp - 0x0002], byte 8   ; 0x2c9a
    jne short @..api_idx_0022_RHMN.l75 ; 0x2c9e
    mov ax, 0x13                     ; 0x2ca0
@..api_idx_0022_RHMN.l75:
    mov word [game_state], ax        ; 0x2ca3
    mov word [bss_905e], 5           ; 0x2ca6
@..api_idx_0022_RHMN.l76:
    jmp near @..api_idx_0022_RHMN.l82 ; 0x2cac
jumptable_2d1b_case_10:
    call api_idx_0002_QLLK           ; 0x2caf
    jmp near @..api_idx_0022_RHMN.l82 ; 0x2cb2
jumptable_2d1b_case_6:
    cmp word [bp - 0x0022], byte 0   ; 0x2cb5
    jne short @..api_idx_0022_RHMN.l78 ; 0x2cb9
    call api_idx_0018_USPR           ; 0x2cbb
    cmp ax, strict word 1            ; 0x2cbe
    jne short @..api_idx_0022_RHMN.l77 ; 0x2cc1
    push word [party_map_piece]      ; 0x2cc3
    call api_idx_0002_TOSS           ; 0x2cc7
    pop cx                           ; 0x2cca
    push ax                          ; 0x2ccb
    call api_idx_0006_KUNS           ; 0x2ccc
    pop cx                           ; 0x2ccf
    mov bx, word [bss_100a]          ; 0x2cd0
    mov word [bx], ax                ; 0x2cd4
    mov ax, 1                        ; 0x2cd6
    push ax                          ; 0x2cd9
    mov ax, 0                        ; 0x2cda
    push ax                          ; 0x2cdd
    push ax                          ; 0x2cde
    call loc_VGMJ                    ; 0x2cdf
    add sp, byte 6                   ; 0x2ce2
@..api_idx_0022_RHMN.l77:
    jmp short @..api_idx_0022_RHMN.l79 ; 0x2ce5
@..api_idx_0022_RHMN.l78:
    mov ax, 0                        ; 0x2ce7
    push ax                          ; 0x2cea
    call ds_app_HKIJ                 ; 0x2ceb
    pop cx                           ; 0x2cee
@..api_idx_0022_RHMN.l79:
    jmp short @..api_idx_0022_RHMN.l82 ; 0x2cef
jumptable_2d1b_case_9:
    mov word [game_state], 0x18      ; 0x2cf1
    jmp short @..api_idx_0022_RHMN.l82 ; 0x2cf7
jumptable_2d1b_case_24:
    cmp word [bp - 0x001a], byte 0   ; 0x2cf9
    je short @..api_idx_0022_RHMN.l80 ; 0x2cfd
    call ds_app_VGOM                 ; 0x2cff
    mov word [bss_8af0], ax          ; 0x2d02
    cmp ax, strict word 0xffff       ; 0x2d05
    je short @..api_idx_0022_RHMN.l80 ; 0x2d08
    push ax                          ; 0x2d0a
    call ds_app_KTPM                 ; 0x2d0b
    pop cx                           ; 0x2d0e
    test ax, ax                      ; 0x2d0f
    je short @..api_idx_0022_RHMN.l80 ; 0x2d11
    mov word [game_state], 0x1e      ; 0x2d13
@..api_idx_0022_RHMN.l80:
    jmp short @..api_idx_0022_RHMN.l82 ; 0x2d19
jumptable_2d1b:
    dw jumptable_2d1b_case_0 - IMAGE_BASE + __zres_end ; 0x2d1b
    dw jumptable_2d1b_case_1 - IMAGE_BASE + __zres_end ; 0x2d1d
    dw jumptable_2d1b_case_1 - IMAGE_BASE + __zres_end ; 0x2d1f
    dw jumptable_2d1b_case_3 - IMAGE_BASE + __zres_end ; 0x2d21
    dw jumptable_2d1b_case_3 - IMAGE_BASE + __zres_end ; 0x2d23
    dw jumptable_2d1b_case_3 - IMAGE_BASE + __zres_end ; 0x2d25
    dw jumptable_2d1b_case_6 - IMAGE_BASE + __zres_end ; 0x2d27
    dw jumptable_2d1b_case_7 - IMAGE_BASE + __zres_end ; 0x2d29
    dw jumptable_2d1b_case_8 - IMAGE_BASE + __zres_end ; 0x2d2b
    dw jumptable_2d1b_case_9 - IMAGE_BASE + __zres_end ; 0x2d2d
    dw jumptable_2d1b_case_10 - IMAGE_BASE + __zres_end ; 0x2d2f
    dw jumptable_2d1b_case_8 - IMAGE_BASE + __zres_end ; 0x2d31
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d33
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d35
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d37
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d39
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d3b
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d3d
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d3f
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d41
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d43
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d45
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d47
    dw jumptable_2d1b_case_12 - IMAGE_BASE + __zres_end ; 0x2d49
    dw jumptable_2d1b_case_24 - IMAGE_BASE + __zres_end ; 0x2d4b
    dw jumptable_2d1b_case_25 - IMAGE_BASE + __zres_end ; 0x2d4d
@..api_idx_0022_RHMN.l81:
    cmp ax, strict word 0x1a         ; 0x2d4f
    jae short @..api_idx_0022_RHMN.l82 ; 0x2d52
    xchg bx, ax                      ; 0x2d54
    shl bx, 1                        ; 0x2d55
    jmp [cs:bx + jumptable_2d1b - IMAGE_BASE + __zres_end] ; 0x2d57
jumptable_2d1b_case_12:
@..api_idx_0022_RHMN.l82:
    cmp word [bp - 0x0002], byte 0   ; 0x2d5c
    jl short @..api_idx_0022_RHMN.l83 ; 0x2d60
    cmp word [bp - 0x0002], byte 5   ; 0x2d62
    jg short @..api_idx_0022_RHMN.l83 ; 0x2d66
    mov ax, word [bp - 0x0002]       ; 0x2d68
    shl ax, 1                        ; 0x2d6b
    shl ax, 1                        ; 0x2d6d
    shl ax, 1                        ; 0x2d6f
    mov bx, ax                       ; 0x2d71
    push word [bx + 0x126]           ; 0x2d73
    push word [bx + 0x124]           ; 0x2d77
    push word [bx + 0x122]           ; 0x2d7b
    push word [bx + 0x120]           ; 0x2d7f
    call gfx_show_area               ; 0x2d83
    add sp, byte 8                   ; 0x2d86
@..api_idx_0022_RHMN.l83:
    cmp word [game_state], byte 5    ; 0x2d89
    jne short @..api_idx_0022_RHMN.l84 ; 0x2d8e
    jmp near @..api_idx_0022_RHMN.l5 ; 0x2d90
@..api_idx_0022_RHMN.l84:
    ret                              ; 0x2d93
