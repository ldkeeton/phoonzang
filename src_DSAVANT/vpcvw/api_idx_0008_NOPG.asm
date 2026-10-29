; auto-generated
api_idx_0008_NOPG:
    mov ax, 0xfff8                   ; 0x21fd
    call aztec_csav                  ; 0x2200
    mov ax, word [bp + 6]            ; 0x2203
    jmp near .forward35              ; 0x2206
jumptable_291f_case_33:
    mov ax, 0x32                     ; 0x2209
    imul word [bp + 8]               ; 0x220c
    add word [bss_82fe], ax          ; 0x220f
    mov ax, 0                        ; 0x2213
    push ax                          ; 0x2216
    push word [bss_8300]             ; 0x2217
    mov ax, 5                        ; 0x221b
    imul word [bp + 8]               ; 0x221e
    add ax, strict word 0x46         ; 0x2221
    push ax                          ; 0x2224
    call loc_QQUT                    ; 0x2225
    add sp, byte 6                   ; 0x2228
    mov word [bss_8300], ax          ; 0x222b
    jmp near jumptable_291f_case_46  ; 0x222e
jumptable_291f_case_38:
    mov ax, 0x23                     ; 0x2231
    imul word [bp + 8]               ; 0x2234
    add word [party_status_timer], ax ; 0x2237
    mov ax, 0                        ; 0x223b
    push ax                          ; 0x223e
    push word [party_status_offset]  ; 0x223f
    mov ax, word [bp + 8]            ; 0x2243
    dec ax                           ; 0x2246
    mov cx, 2                        ; 0x2247
    cwd                              ; 0x224a
    idiv cx                          ; 0x224b
    inc ax                           ; 0x224d
    push ax                          ; 0x224e
    call loc_QQUT                    ; 0x224f
    add sp, byte 6                   ; 0x2252
    mov word [party_status_offset], ax ; 0x2255
    jmp near jumptable_291f_case_46  ; 0x2258
jumptable_291f_case_30:
    mov ax, 0x32                     ; 0x225b
    imul word [bp + 8]               ; 0x225e
    add word [bss_82f6], ax          ; 0x2261
    mov ax, 0                        ; 0x2265
    push ax                          ; 0x2268
    push word [bss_82f8]             ; 0x2269
    mov ax, word [bp + 8]            ; 0x226d
    dec ax                           ; 0x2270
    mov cx, 2                        ; 0x2271
    cwd                              ; 0x2274
    idiv cx                          ; 0x2275
    inc ax                           ; 0x2277
    push ax                          ; 0x2278
    call loc_QQUT                    ; 0x2279
    add sp, byte 6                   ; 0x227c
    mov word [bss_82f8], ax          ; 0x227f
    jmp near jumptable_291f_case_46  ; 0x2282
jumptable_291f_case_28:
    mov ax, 5                        ; 0x2285
    imul word [bp + 8]               ; 0x2288
    add word [bss_8306], ax          ; 0x228b
    jmp near jumptable_291f_case_46  ; 0x228f
jumptable_291f_case_29:
    mov ax, 0x64                     ; 0x2292
    imul word [bp + 8]               ; 0x2295
    add word [bss_8302], ax          ; 0x2298
    jmp near jumptable_291f_case_46  ; 0x229c
jumptable_291f_case_39:
    mov ax, 0x32                     ; 0x229f
    imul word [bp + 8]               ; 0x22a2
    add word [party_buff_turns], ax  ; 0x22a5
    mov ax, 0                        ; 0x22a9
    push ax                          ; 0x22ac
    push word [party_buff_charge]    ; 0x22ad
    mov ax, 5                        ; 0x22b1
    imul word [bp + 8]               ; 0x22b4
    push ax                          ; 0x22b7
    call loc_QQUT                    ; 0x22b8
    add sp, byte 6                   ; 0x22bb
    mov word [party_buff_charge], ax ; 0x22be
    jmp near jumptable_291f_case_46  ; 0x22c1
jumptable_291f_case_23:
    mov ax, 0                        ; 0x22c4
    cmp word [bp + 6], byte 0x13     ; 0x22c7
    je short api_idx_0008_NOPG.forward1 ; 0x22cb
    mov ax, word [bp + 0xa]          ; 0x22cd
api_idx_0008_NOPG.forward1:
    mov word [bp - 2], ax            ; 0x22d0
    mov ax, word [party_char_count]  ; 0x22d3
    cmp word [bp + 6], byte 0x13     ; 0x22d6
    je short api_idx_0008_NOPG.forward2 ; 0x22da
    mov ax, word [bp + 0xa]          ; 0x22dc
    inc ax                           ; 0x22df
api_idx_0008_NOPG.forward2:
    mov word [bp - 4], ax            ; 0x22e0
    mov ax, word [bp + 8]            ; 0x22e3
    cmp word [bp + 6], byte 0x13     ; 0x22e6
    je short api_idx_0008_NOPG.forward3 ; 0x22ea
    shl ax, 1                        ; 0x22ec
api_idx_0008_NOPG.forward3:
    mov word [bp - 6], ax            ; 0x22ee
    mov ax, 0                        ; 0x22f1
    cmp word [bp + 6], byte 0x13     ; 0x22f4
    je short api_idx_0008_NOPG.forward4 ; 0x22f8
    mov ax, word [bp + 8]            ; 0x22fa
api_idx_0008_NOPG.forward4:
    mov word [bp - 8], ax            ; 0x22fd
    jmp short api_idx_0008_NOPG.forward6 ; 0x2300
api_idx_0008_NOPG.back1:
    mov ax, 0x248                    ; 0x2302
    imul word [bp - 2]               ; 0x2305
    mov bx, ax                       ; 0x2308
    push word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x230a
    mov ax, 0                        ; 0x230e
    push ax                          ; 0x2311
    push word [bp - 8]               ; 0x2312
    mov ax, 8                        ; 0x2315
    push ax                          ; 0x2318
    push word [bp - 6]               ; 0x2319
    call store_word_and_pair         ; 0x231c
    add sp, byte 6                   ; 0x231f
    mov cx, ax                       ; 0x2322
    sub sp, byte 4                   ; 0x2324
    mov ax, sp                       ; 0x2327
    mov dx, ss                       ; 0x2329
    mov es, dx                       ; 0x232b
    mov si, cx                       ; 0x232d
    mov di, ax                       ; 0x232f
    movsw                            ; 0x2331
    movsw                            ; 0x2332
    call add_random_steps            ; 0x2333
    add sp, byte 4                   ; 0x2336
    push ax                          ; 0x2339
    mov ax, 0x248                    ; 0x233a
    imul word [bp - 2]               ; 0x233d
    mov bx, ax                       ; 0x2340
    pop ax                           ; 0x2342
    add ax, word [bx + party_records + pc_rec.pair_b] ; 0x2343
    push ax                          ; 0x2347
    call clamp_between               ; 0x2348
    add sp, byte 6                   ; 0x234b
    push ax                          ; 0x234e
    mov ax, 0x248                    ; 0x234f
    imul word [bp - 2]               ; 0x2352
    mov bx, ax                       ; 0x2355
    pop ax                           ; 0x2357
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x2358
    cmp word [bp + 6], byte 0x13     ; 0x235c
    je short api_idx_0008_NOPG.forward5 ; 0x2360
    push word [bp - 2]               ; 0x2362
    call loc_IIRG                    ; 0x2365
    pop cx                           ; 0x2368
api_idx_0008_NOPG.forward5:
    inc word [bp - 2]                ; 0x2369
api_idx_0008_NOPG.forward6:
    mov ax, word [bp - 2]            ; 0x236c
    cmp ax, word [bp - 4]            ; 0x236f
    jl short api_idx_0008_NOPG.back1 ; 0x2372
    jmp near jumptable_291f_case_46  ; 0x2374
jumptable_291f_case_24:
    mov ax, 0x248                    ; 0x2377
    imul word [bp + 0xa]             ; 0x237a
    mov bx, ax                       ; 0x237d
    mov al, byte [bx + party_records + pc_rec.status + 0x3] ; 0x237f
    sub ah, ah                       ; 0x2383
    push ax                          ; 0x2385
    mov ax, 0x19                     ; 0x2386
    imul word [bp + 8]               ; 0x2389
    mov cx, ax                       ; 0x238c
    pop ax                           ; 0x238e
    sub ax, cx                       ; 0x238f
    mov word [bp - 2], ax            ; 0x2391
    cmp ax, strict word 0            ; 0x2394
    jge short api_idx_0008_NOPG.forward7 ; 0x2397
    mov word [bp - 2], 0             ; 0x2399
api_idx_0008_NOPG.forward7:
    mov al, byte [bp - 2]            ; 0x239e
    mov byte [bx + party_records + pc_rec.status + 0x3], al ; 0x23a1
    push word [bp + 0xa]             ; 0x23a5
    call loc_IIRG                    ; 0x23a8
    pop cx                           ; 0x23ab
    jmp near jumptable_291f_case_46  ; 0x23ac
jumptable_291f_case_27:
    mov ax, 0x248                    ; 0x23af
    imul word [bp + 0xa]             ; 0x23b2
    mov bx, ax                       ; 0x23b5
    mov al, byte [bx + party_records + pc_rec.f_023e] ; 0x23b7
    sub ah, ah                       ; 0x23bb
    sub ax, word [bp + 8]            ; 0x23bd
    mov word [bp - 2], ax            ; 0x23c0
    cmp ax, strict word 0            ; 0x23c3
    jg short api_idx_0008_NOPG.forward8 ; 0x23c6
    mov word [bp - 2], 0             ; 0x23c8
    mov byte [bx + party_records + pc_rec.status + 0x5], 0 ; 0x23cd
api_idx_0008_NOPG.forward8:
    mov al, byte [bp - 2]            ; 0x23d2
    mov byte [bx + party_records + pc_rec.f_023e], al ; 0x23d5
    mov al, byte [bx + party_records + pc_rec.status + 0x5] ; 0x23d9
    sub ah, ah                       ; 0x23dd
    push ax                          ; 0x23df
    mov ax, 5                        ; 0x23e0
    imul word [bp + 8]               ; 0x23e3
    mov cx, ax                       ; 0x23e6
    pop ax                           ; 0x23e8
    sub ax, cx                       ; 0x23e9
    mov word [bp - 2], ax            ; 0x23eb
    cmp ax, strict word 0            ; 0x23ee
    jg short api_idx_0008_NOPG.forward9 ; 0x23f1
    mov word [bp - 2], 0             ; 0x23f3
    mov byte [bx + party_records + pc_rec.f_023e], 0 ; 0x23f8
api_idx_0008_NOPG.forward9:
    mov al, byte [bp - 2]            ; 0x23fd
    mov byte [bx + party_records + pc_rec.status + 0x5], al ; 0x2400
    push word [bp + 0xa]             ; 0x2404
    call loc_IIRG                    ; 0x2407
    pop cx                           ; 0x240a
    jmp near jumptable_291f_case_46  ; 0x240b
jumptable_291f_case_31:
    mov ax, 0x248                    ; 0x240e
    imul word [bp + 0xa]             ; 0x2411
    mov bx, ax                       ; 0x2414
    cmp byte [bx + party_records + pc_rec.state], 2 ; 0x2416
    je short api_idx_0008_NOPG.forward10 ; 0x241b
    jmp near api_idx_0008_NOPG.forward13 ; 0x241d
api_idx_0008_NOPG.forward10:
    mov ax, 3                        ; 0x2420
    imul word [bp + 8]               ; 0x2423
    push ax                          ; 0x2426
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x2427
    sub ah, ah                       ; 0x242b
    mov dx, ax                       ; 0x242d
    mov cx, 0x15                     ; 0x242f
    sub cx, ax                       ; 0x2432
    pop ax                           ; 0x2434
    cmp ax, cx                       ; 0x2435
    jle short api_idx_0008_NOPG.forward13 ; 0x2437
    dec byte [bx + party_records + pc_rec.stat + 0x3] ; 0x2439
    mov ax, 0xb7                     ; 0x243d
    push ax                          ; 0x2440
    call random_below                ; 0x2441
    pop cx                           ; 0x2444
    add ax, 0xb7                     ; 0x2445
    cwd                              ; 0x2448
    push ax                          ; 0x2449
    push dx                          ; 0x244a
    mov ax, 0x248                    ; 0x244b
    imul word [bp + 0xa]             ; 0x244e
    mov bx, ax                       ; 0x2451
    pop dx                           ; 0x2453
    pop ax                           ; 0x2454
    add word [bx + party_records + pc_rec.f_0008], ax ; 0x2455
    adc word [bx + party_records + pc_rec.f_000a], dx ; 0x2459
    mov ax, 0x12                     ; 0x245d
    push ax                          ; 0x2460
    call random_below                ; 0x2461
    pop cx                           ; 0x2464
    push ax                          ; 0x2465
    mov ax, 0x248                    ; 0x2466
    imul word [bp + 0xa]             ; 0x2469
    mov bx, ax                       ; 0x246c
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x246e
    sub ah, ah                       ; 0x2472
    mov cx, ax                       ; 0x2474
    pop ax                           ; 0x2476
    cmp ax, cx                       ; 0x2477
    jle short api_idx_0008_NOPG.forward11 ; 0x2479
    mov byte [bx + party_records + pc_rec.state], 3 ; 0x247b
    mov word [bx + party_records + pc_rec.pair_a], 0 ; 0x2480
    mov word [bx + party_records + pc_rec.pair_b], 0 ; 0x2486
    jmp short api_idx_0008_NOPG.forward12 ; 0x248c
api_idx_0008_NOPG.forward11:
    mov byte [bx + party_records + pc_rec.state], 0 ; 0x248e
api_idx_0008_NOPG.forward12:
    push word [bp + 0xa]             ; 0x2493
    call loc_IIRG                    ; 0x2496
    pop cx                           ; 0x2499
api_idx_0008_NOPG.forward13:
    jmp near jumptable_291f_case_46  ; 0x249a
jumptable_291f_case_36:
    mov ax, 0x248                    ; 0x249d
    imul word [bp + 0xa]             ; 0x24a0
    mov bx, ax                       ; 0x24a3
    mov al, byte [bx + party_records + pc_rec.status + 0x7] ; 0x24a5
    sub ah, ah                       ; 0x24a9
    push ax                          ; 0x24ab
    mov ax, 0x19                     ; 0x24ac
    imul word [bp + 8]               ; 0x24af
    mov cx, ax                       ; 0x24b2
    pop ax                           ; 0x24b4
    sub ax, cx                       ; 0x24b5
    mov word [bp - 2], ax            ; 0x24b7
    cmp ax, strict word 0            ; 0x24ba
    jge short api_idx_0008_NOPG.forward14 ; 0x24bd
    mov word [bp - 2], 0             ; 0x24bf
api_idx_0008_NOPG.forward14:
    mov al, byte [bp - 2]            ; 0x24c4
    mov byte [bx + party_records + pc_rec.status + 0x7], al ; 0x24c7
    push word [bp + 0xa]             ; 0x24cb
    call loc_IIRG                    ; 0x24ce
    pop cx                           ; 0x24d1
    jmp near jumptable_291f_case_46  ; 0x24d2
jumptable_291f_case_26:
    mov ax, 3                        ; 0x24d5
    imul word [bp + 8]               ; 0x24d8
    push ax                          ; 0x24db
    mov ax, 0x248                    ; 0x24dc
    imul word [bp + 0xa]             ; 0x24df
    mov bx, ax                       ; 0x24e2
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x24e4
    sub ah, ah                       ; 0x24e8
    mov dx, ax                       ; 0x24ea
    mov cx, 0x12                     ; 0x24ec
    sub cx, ax                       ; 0x24ef
    pop ax                           ; 0x24f1
    cmp ax, cx                       ; 0x24f2
    jle short api_idx_0008_NOPG.forward15 ; 0x24f4
    mov byte [bx + party_records + pc_rec.status + 0x6], 0 ; 0x24f6
api_idx_0008_NOPG.forward15:
    push word [bp + 0xa]             ; 0x24fb
    call loc_IIRG                    ; 0x24fe
    pop cx                           ; 0x2501
    jmp near jumptable_291f_case_46  ; 0x2502
jumptable_291f_case_35:
    mov word [bp - 2], 0             ; 0x2505
    jmp short api_idx_0008_NOPG.forward17 ; 0x250a
api_idx_0008_NOPG.back2:
    mov ax, 0x248                    ; 0x250c
    imul word [bp + 0xa]             ; 0x250f
    mov bx, ax                       ; 0x2512
    mov al, byte [bx + party_records + pc_rec.status + 0x2] ; 0x2514
    sub ah, ah                       ; 0x2518
    push ax                          ; 0x251a
    mov ax, word [bp + 8]            ; 0x251b
    imul ax                          ; 0x251e
    mov cx, ax                       ; 0x2520
    add ax, strict word 4            ; 0x2522
    mov cx, ax                       ; 0x2525
    pop ax                           ; 0x2527
    sub ax, cx                       ; 0x2528
    mov word [bp - 4], ax            ; 0x252a
    cmp ax, strict word 0            ; 0x252d
    jge short api_idx_0008_NOPG.forward16 ; 0x2530
    mov word [bp - 4], 0             ; 0x2532
api_idx_0008_NOPG.forward16:
    mov al, byte [bp - 4]            ; 0x2537
    mov byte [bx + party_records + pc_rec.status + 0x2], al ; 0x253a
    push word [bp - 2]               ; 0x253e
    call loc_IIRG                    ; 0x2541
    pop cx                           ; 0x2544
    inc word [bp - 2]                ; 0x2545
api_idx_0008_NOPG.forward17:
    mov ax, word [bp - 2]            ; 0x2548
    cmp ax, word [party_char_count]  ; 0x254b
    jl short api_idx_0008_NOPG.back2 ; 0x254f
    jmp near jumptable_291f_case_46  ; 0x2551
jumptable_291f_case_32:
    mov word [bp - 4], 1             ; 0x2554
api_idx_0008_NOPG.back3:
    mov ax, word [bp - 4]            ; 0x2559
    cmp ax, strict word 1            ; 0x255c
    je short api_idx_0008_NOPG.forward18 ; 0x255f
    cmp ax, strict word 2            ; 0x2561
    je short api_idx_0008_NOPG.forward18 ; 0x2564
    cmp ax, strict word 4            ; 0x2566
    je short api_idx_0008_NOPG.forward18 ; 0x2569
    cmp ax, strict word 8            ; 0x256b
    je short api_idx_0008_NOPG.forward18 ; 0x256e
    cmp ax, strict word 9            ; 0x2570
    jne short api_idx_0008_NOPG.forward20 ; 0x2573
api_idx_0008_NOPG.forward18:
    mov ax, 0x248                    ; 0x2575
    imul word [bp + 0xa]             ; 0x2578
    mov cx, ax                       ; 0x257b
    mov ax, word [bp - 4]            ; 0x257d
    add cx, ax                       ; 0x2580
    mov bx, cx                       ; 0x2582
    mov al, byte [bx + party_records + pc_rec.status] ; 0x2584
    sub ah, ah                       ; 0x2588
    push ax                          ; 0x258a
    mov ax, word [bp + 8]            ; 0x258b
    imul ax                          ; 0x258e
    mov cx, ax                       ; 0x2590
    add ax, strict word 4            ; 0x2592
    mov cx, ax                       ; 0x2595
    pop ax                           ; 0x2597
    sub ax, cx                       ; 0x2598
    mov word [bp - 2], ax            ; 0x259a
    cmp ax, strict word 0            ; 0x259d
    jge short api_idx_0008_NOPG.forward19 ; 0x25a0
    mov word [bp - 2], 0             ; 0x25a2
api_idx_0008_NOPG.forward19:
    mov al, byte [bp - 2]            ; 0x25a7
    mov byte [bx + party_records + pc_rec.status], al ; 0x25aa
api_idx_0008_NOPG.forward20:
    inc word [bp - 4]                ; 0x25ae
    mov ax, word [bp - 4]            ; 0x25b1
    cmp ax, strict word 9            ; 0x25b4
    jle short api_idx_0008_NOPG.back3 ; 0x25b7
    push word [bp + 0xa]             ; 0x25b9
    call loc_IIRG                    ; 0x25bc
    pop cx                           ; 0x25bf
    jmp near jumptable_291f_case_46  ; 0x25c0
jumptable_291f_case_37:
    mov ax, 0                        ; 0x25c3
    cmp word [bp + 6], byte 0x58     ; 0x25c6
    je short api_idx_0008_NOPG.forward21 ; 0x25ca
    mov ax, word [bp + 0xa]          ; 0x25cc
api_idx_0008_NOPG.forward21:
    mov word [bp - 2], ax            ; 0x25cf
    mov ax, word [party_char_count]  ; 0x25d2
    cmp word [bp + 6], byte 0x58     ; 0x25d5
    je short api_idx_0008_NOPG.forward22 ; 0x25d9
    mov ax, word [bp + 0xa]          ; 0x25db
    inc ax                           ; 0x25de
api_idx_0008_NOPG.forward22:
    mov word [bp - 4], ax            ; 0x25df
    mov ax, 4                        ; 0x25e2
    cmp word [bp + 6], byte 0x58     ; 0x25e5
    je short api_idx_0008_NOPG.forward23 ; 0x25e9
    mov ax, 7                        ; 0x25eb
api_idx_0008_NOPG.forward23:
    mov word [bp - 6], ax            ; 0x25ee
    mov ax, 0                        ; 0x25f1
    cmp word [bp + 6], byte 0x58     ; 0x25f4
    je short api_idx_0008_NOPG.forward24 ; 0x25f8
    mov ax, word [bp + 8]            ; 0x25fa
api_idx_0008_NOPG.forward24:
    mov word [bp - 8], ax            ; 0x25fd
    jmp short api_idx_0008_NOPG.forward26 ; 0x2600
api_idx_0008_NOPG.back4:
    mov ax, 0x248                    ; 0x2602
    imul word [bp - 2]               ; 0x2605
    mov bx, ax                       ; 0x2608
    push word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x260a
    mov ax, 0                        ; 0x260e
    push ax                          ; 0x2611
    push word [bp - 8]               ; 0x2612
    push word [bp - 6]               ; 0x2615
    push word [bp + 8]               ; 0x2618
    call store_word_and_pair         ; 0x261b
    add sp, byte 6                   ; 0x261e
    mov cx, ax                       ; 0x2621
    sub sp, byte 4                   ; 0x2623
    mov ax, sp                       ; 0x2626
    mov dx, ss                       ; 0x2628
    mov es, dx                       ; 0x262a
    mov si, cx                       ; 0x262c
    mov di, ax                       ; 0x262e
    movsw                            ; 0x2630
    movsw                            ; 0x2631
    call add_random_steps            ; 0x2632
    add sp, byte 4                   ; 0x2635
    push ax                          ; 0x2638
    mov ax, 0x248                    ; 0x2639
    imul word [bp - 2]               ; 0x263c
    mov bx, ax                       ; 0x263f
    pop ax                           ; 0x2641
    add ax, word [bx + party_records + pc_rec.pair_a] ; 0x2642
    push ax                          ; 0x2646
    call clamp_between               ; 0x2647
    add sp, byte 6                   ; 0x264a
    push ax                          ; 0x264d
    mov ax, 0x248                    ; 0x264e
    imul word [bp - 2]               ; 0x2651
    mov bx, ax                       ; 0x2654
    pop ax                           ; 0x2656
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x2657
    add word [bx + party_records + pc_rec.f_0008], byte 1 ; 0x265b
    adc word [bx + party_records + pc_rec.f_000a], byte 0 ; 0x2660
    cmp word [bp + 6], byte 0x58     ; 0x2665
    je short api_idx_0008_NOPG.forward25 ; 0x2669
    push word [bp - 2]               ; 0x266b
    call loc_IIRG                    ; 0x266e
    pop cx                           ; 0x2671
api_idx_0008_NOPG.forward25:
    inc word [bp - 2]                ; 0x2672
api_idx_0008_NOPG.forward26:
    mov ax, word [bp - 2]            ; 0x2675
    cmp ax, word [bp - 4]            ; 0x2678
    jl short api_idx_0008_NOPG.back4 ; 0x267b
    jmp near jumptable_291f_case_46  ; 0x267d
jumptable_291f_case_43:
    mov ax, 0x248                    ; 0x2680
    imul word [bp + 0xa]             ; 0x2683
    mov bx, ax                       ; 0x2686
    cmp byte [bx + party_records + pc_rec.state], 3 ; 0x2688
    je short api_idx_0008_NOPG.forward27 ; 0x268d
    jmp near api_idx_0008_NOPG.forward28 ; 0x268f
api_idx_0008_NOPG.forward27:
    mov ax, 3                        ; 0x2692
    imul word [bp + 8]               ; 0x2695
    push ax                          ; 0x2698
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x2699
    sub ah, ah                       ; 0x269d
    mov dx, ax                       ; 0x269f
    mov cx, 0x15                     ; 0x26a1
    sub cx, ax                       ; 0x26a4
    pop ax                           ; 0x26a6
    cmp ax, cx                       ; 0x26a7
    jle short api_idx_0008_NOPG.forward28 ; 0x26a9
    dec byte [bx + party_records + pc_rec.stat + 0x3] ; 0x26ab
    mov byte [bx + party_records + pc_rec.state], 0 ; 0x26af
    push word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x26b4
    mov ax, 1                        ; 0x26b8
    push ax                          ; 0x26bb
    mov ax, word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x26bc
    mov cx, 3                        ; 0x26c0
    cwd                              ; 0x26c3
    idiv cx                          ; 0x26c4
    push ax                          ; 0x26c6
    call clamp_between               ; 0x26c7
    add sp, byte 6                   ; 0x26ca
    push ax                          ; 0x26cd
    mov ax, 0x248                    ; 0x26ce
    imul word [bp + 0xa]             ; 0x26d1
    mov bx, ax                       ; 0x26d4
    pop ax                           ; 0x26d6
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x26d7
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x26db
    mov cx, 0xa                      ; 0x26df
    cwd                              ; 0x26e2
    idiv cx                          ; 0x26e3
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x26e5
    inc word [bx + party_records + pc_rec.f_0026] ; 0x26e9
    mov ax, 0xb7                     ; 0x26ed
    push ax                          ; 0x26f0
    call random_below                ; 0x26f1
    pop cx                           ; 0x26f4
    add ax, 0x16d                    ; 0x26f5
    cwd                              ; 0x26f8
    push ax                          ; 0x26f9
    push dx                          ; 0x26fa
    mov ax, 0x248                    ; 0x26fb
    imul word [bp + 0xa]             ; 0x26fe
    mov bx, ax                       ; 0x2701
    pop dx                           ; 0x2703
    pop ax                           ; 0x2704
    add word [bx + party_records + pc_rec.f_0008], ax ; 0x2705
    adc word [bx + party_records + pc_rec.f_000a], dx ; 0x2709
    push word [bp + 0xa]             ; 0x270d
    call loc_IIRG                    ; 0x2710
    pop cx                           ; 0x2713
api_idx_0008_NOPG.forward28:
    jmp near jumptable_291f_case_46  ; 0x2714
jumptable_291f_case_44:
    push word [bp + 8]               ; 0x2717
    mov ax, 8                        ; 0x271a
    push ax                          ; 0x271d
    push word [bp + 8]               ; 0x271e
    call store_word_and_pair         ; 0x2721
    add sp, byte 6                   ; 0x2724
    mov cx, ax                       ; 0x2727
    sub sp, byte 4                   ; 0x2729
    mov ax, sp                       ; 0x272c
    mov dx, ss                       ; 0x272e
    mov es, dx                       ; 0x2730
    mov si, cx                       ; 0x2732
    mov di, ax                       ; 0x2734
    movsw                            ; 0x2736
    movsw                            ; 0x2737
    call add_random_steps            ; 0x2738
    add sp, byte 4                   ; 0x273b
    mov word [bp - 2], ax            ; 0x273e
    push ax                          ; 0x2741
    mov ax, 0x248                    ; 0x2742
    imul word [bp + 4]               ; 0x2745
    mov bx, ax                       ; 0x2748
    pop ax                           ; 0x274a
    add word [bx + party_records + pc_rec.pair_b], ax ; 0x274b
    mov ax, word [bx + party_records + pc_rec.pair_b] ; 0x274f
    cmp ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x2753
    jle short api_idx_0008_NOPG.forward29 ; 0x2757
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x2759
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x275d
api_idx_0008_NOPG.forward29:
    mov ax, 0                        ; 0x2761
    push ax                          ; 0x2764
    mov ax, 2                        ; 0x2765
    push ax                          ; 0x2768
    push word [bp + 8]               ; 0x2769
    call store_word_and_pair         ; 0x276c
    add sp, byte 6                   ; 0x276f
    mov cx, ax                       ; 0x2772
    sub sp, byte 4                   ; 0x2774
    mov ax, sp                       ; 0x2777
    mov dx, ss                       ; 0x2779
    mov es, dx                       ; 0x277b
    mov si, cx                       ; 0x277d
    mov di, ax                       ; 0x277f
    movsw                            ; 0x2781
    movsw                            ; 0x2782
    call add_random_steps            ; 0x2783
    add sp, byte 4                   ; 0x2786
    mov word [bp - 2], ax            ; 0x2789
    push ax                          ; 0x278c
    mov ax, 0x248                    ; 0x278d
    imul word [bp + 4]               ; 0x2790
    mov bx, ax                       ; 0x2793
    pop ax                           ; 0x2795
    add word [bx + party_records + pc_rec.pair_a], ax ; 0x2796
    mov ax, word [bx + party_records + pc_rec.pair_a] ; 0x279a
    cmp ax, word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x279e
    jle short api_idx_0008_NOPG.forward30 ; 0x27a2
    mov ax, word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x27a4
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x27a8
api_idx_0008_NOPG.forward30:
    jmp near jumptable_291f_case_46  ; 0x27ac
jumptable_291f_case_45:
    mov word [bp - 2], 0             ; 0x27af
api_idx_0008_NOPG.back5:
    mov ax, 0                        ; 0x27b4
    push ax                          ; 0x27b7
    mov ax, 0xa                      ; 0x27b8
    push ax                          ; 0x27bb
    push word [bp + 8]               ; 0x27bc
    call store_word_and_pair         ; 0x27bf
    add sp, byte 6                   ; 0x27c2
    mov cx, ax                       ; 0x27c5
    sub sp, byte 4                   ; 0x27c7
    mov ax, sp                       ; 0x27ca
    mov dx, ss                       ; 0x27cc
    mov es, dx                       ; 0x27ce
    mov si, cx                       ; 0x27d0
    mov di, ax                       ; 0x27d2
    movsw                            ; 0x27d4
    movsw                            ; 0x27d5
    call add_random_steps            ; 0x27d6
    add sp, byte 4                   ; 0x27d9
    mov word [bp - 4], ax            ; 0x27dc
    push ax                          ; 0x27df
    mov ax, 0x248                    ; 0x27e0
    imul word [bp + 4]               ; 0x27e3
    mov cx, ax                       ; 0x27e6
    mov dx, word [bp - 2]            ; 0x27e8
    shl dx, 1                        ; 0x27eb
    shl dx, 1                        ; 0x27ed
    add ax, dx                       ; 0x27ef
    mov bx, ax                       ; 0x27f1
    pop ax                           ; 0x27f3
    add word [bx + party_records + pc_rec.realm_points], ax ; 0x27f4
    mov ax, word [bx + party_records + pc_rec.realm_points] ; 0x27f8
    cmp ax, word [bx + party_records + pc_rec.realm_points + 0x2] ; 0x27fc
    jle short api_idx_0008_NOPG.forward31 ; 0x2800
    mov ax, word [bx + party_records + pc_rec.realm_points + 0x2] ; 0x2802
    mov word [bx + party_records + pc_rec.realm_points], ax ; 0x2806
api_idx_0008_NOPG.forward31:
    inc word [bp - 2]                ; 0x280a
    mov ax, word [bp - 2]            ; 0x280d
    cmp ax, strict word 6            ; 0x2810
    jl short api_idx_0008_NOPG.back5 ; 0x2813
    jmp near jumptable_291f_case_46  ; 0x2815
jumptable_291f_case_34:
    call api_idx_0012_SHRT           ; 0x2818
    mov word [bss_8aee], ax          ; 0x281b
    cmp ax, strict word 0xffff       ; 0x281e
    je short api_idx_0008_NOPG.forward32 ; 0x2821
    mov ax, 0x248                    ; 0x2823
    imul word [bp + 4]               ; 0x2826
    push ax                          ; 0x2829
    mov ax, 0x78                     ; 0x282a
    imul word [roster_page]          ; 0x282d
    mov cx, ax                       ; 0x2831
    pop ax                           ; 0x2833
    add ax, cx                       ; 0x2834
    push ax                          ; 0x2836
    mov ax, 0xc                      ; 0x2837
    imul word [bss_8aee]             ; 0x283a
    mov cx, ax                       ; 0x283e
    pop ax                           ; 0x2840
    add ax, cx                       ; 0x2841
    mov bx, ax                       ; 0x2843
    cmp word [bx + party_records + pc_rec.cell], byte 0 ; 0x2845
    jle short api_idx_0008_NOPG.forward32 ; 0x284a
    push word [bp + 8]               ; 0x284c
    mov ax, 0x16                     ; 0x284f
    imul word [bss_8aee]             ; 0x2852
    add ax, roster_names             ; 0x2856
    push ax                          ; 0x2859
    add bx, strict word 0x5c34       ; 0x285a
    mov ax, bx                       ; 0x285e
    push ax                          ; 0x2860
    push word [bp + 4]               ; 0x2861
    call loc_IUTP                    ; 0x2864
    add sp, byte 8                   ; 0x2867
api_idx_0008_NOPG.forward32:
    jmp near jumptable_291f_case_46  ; 0x286a
jumptable_291f_case_40:
    mov word [bp - 4], 0             ; 0x286d
api_idx_0008_NOPG.back6:
    mov word [bp - 2], 0             ; 0x2872
api_idx_0008_NOPG.back7:
    mov ax, 0x64                     ; 0x2877
    push ax                          ; 0x287a
    call random_below                ; 0x287b
    pop cx                           ; 0x287e
    push ax                          ; 0x287f
    mov ax, 0xf                      ; 0x2880
    imul word [bp + 8]               ; 0x2883
    mov cx, ax                       ; 0x2886
    pop ax                           ; 0x2888
    cmp ax, cx                       ; 0x2889
    jge short api_idx_0008_NOPG.forward33 ; 0x288b
    mov ax, 0x248                    ; 0x288d
    imul word [bp + 0xa]             ; 0x2890
    push ax                          ; 0x2893
    mov ax, 0x78                     ; 0x2894
    imul word [bp - 4]               ; 0x2897
    mov cx, ax                       ; 0x289a
    pop ax                           ; 0x289c
    add ax, cx                       ; 0x289d
    push ax                          ; 0x289f
    mov ax, 0xc                      ; 0x28a0
    imul word [bp - 2]               ; 0x28a3
    mov cx, ax                       ; 0x28a6
    pop ax                           ; 0x28a8
    add ax, cx                       ; 0x28a9
    mov bx, ax                       ; 0x28ab
    mov al, byte [bx + party_records + pc_rec.cell + 0x7] ; 0x28ad
    sub ah, ah                       ; 0x28b1
    and ax, strict word 0xfffd       ; 0x28b3
    mov byte [bx + party_records + pc_rec.cell + 0x7], al ; 0x28b6
api_idx_0008_NOPG.forward33:
    inc word [bp - 2]                ; 0x28ba
    mov ax, word [bp - 2]            ; 0x28bd
    cmp ax, strict word 0xa          ; 0x28c0
    jl short api_idx_0008_NOPG.back7 ; 0x28c3
    inc word [bp - 4]                ; 0x28c5
    mov ax, word [bp - 4]            ; 0x28c8
    cmp ax, strict word 2            ; 0x28cb
    jl short api_idx_0008_NOPG.back6 ; 0x28ce
    jmp near jumptable_291f_case_46  ; 0x28d0
jumptable_291f_case_42:
    call api_idx_0012_SHRT           ; 0x28d3
    mov word [bss_8aee], ax          ; 0x28d6
    cmp ax, strict word 0xffff       ; 0x28d9
    je short api_idx_0008_NOPG.forward34 ; 0x28dc
    mov ax, 0x248                    ; 0x28de
    imul word [bp + 4]               ; 0x28e1
    push ax                          ; 0x28e4
    mov ax, 0x78                     ; 0x28e5
    imul word [roster_page]          ; 0x28e8
    mov cx, ax                       ; 0x28ec
    pop ax                           ; 0x28ee
    add ax, cx                       ; 0x28ef
    push ax                          ; 0x28f1
    mov ax, 0xc                      ; 0x28f2
    imul word [bss_8aee]             ; 0x28f5
    mov cx, ax                       ; 0x28f9
    pop ax                           ; 0x28fb
    add ax, cx                       ; 0x28fc
    mov bx, ax                       ; 0x28fe
    cmp word [bx + party_records + pc_rec.cell], byte 0 ; 0x2900
    jle short api_idx_0008_NOPG.forward34 ; 0x2905
    push word [bp + 8]               ; 0x2907
    add ax, 0x5c34                   ; 0x290a
    push ax                          ; 0x290d
    push word [bp + 4]               ; 0x290e
    call api_idx_009a_KOSH           ; 0x2911
    add sp, byte 6                   ; 0x2914
api_idx_0008_NOPG.forward34:
    jmp short jumptable_291f_case_46 ; 0x2917
api_idx_0008_NOPG.forward35:
    mov cx, 0x18                     ; 0x2919
    call aztec_cswt                  ; 0x291c
jumptable_291f:
    dw 0x000c                                  ; 0x291f ; literal
    dw 0x0011                                  ; 0x2921 ; literal
    dw 0x0013                                  ; 0x2923 ; literal
    dw 0x0019                                  ; 0x2925 ; literal
    dw 0x0021                                  ; 0x2927 ; literal
    dw 0x0025                                  ; 0x2929 ; literal
    dw 0x002e                                  ; 0x292b ; literal
    dw 0x0031                                  ; 0x292d ; literal
    dw 0x0038                                  ; 0x292f ; literal
    dw 0x003d                                  ; 0x2931 ; literal
    dw 0x003f                                  ; 0x2933 ; literal
    dw 0x0040                                  ; 0x2935 ; literal
    dw 0x0042                                  ; 0x2937 ; literal
    dw 0x0045                                  ; 0x2939 ; literal
    dw 0x004e                                  ; 0x293b ; literal
    dw 0x0052                                  ; 0x293d ; literal
    dw 0x0054                                  ; 0x293f ; literal
    dw 0x0057                                  ; 0x2941 ; literal
    dw 0x0058                                  ; 0x2943 ; literal
    dw 0x005c                                  ; 0x2945 ; literal
    dw 0x005e                                  ; 0x2947 ; literal
    dw 0x0061                                  ; 0x2949 ; literal
    dw 0x0062                                  ; 0x294b ; literal
    dw jumptable_291f_case_23 - IMAGE_BASE + __zres_end ; 0x294d
    dw jumptable_291f_case_24 - IMAGE_BASE + __zres_end ; 0x294f
    dw jumptable_291f_case_23 - IMAGE_BASE + __zres_end ; 0x2951
    dw jumptable_291f_case_26 - IMAGE_BASE + __zres_end ; 0x2953
    dw jumptable_291f_case_27 - IMAGE_BASE + __zres_end ; 0x2955
    dw jumptable_291f_case_28 - IMAGE_BASE + __zres_end ; 0x2957
    dw jumptable_291f_case_29 - IMAGE_BASE + __zres_end ; 0x2959
    dw jumptable_291f_case_30 - IMAGE_BASE + __zres_end ; 0x295b
    dw jumptable_291f_case_31 - IMAGE_BASE + __zres_end ; 0x295d
    dw jumptable_291f_case_32 - IMAGE_BASE + __zres_end ; 0x295f
    dw jumptable_291f_case_33 - IMAGE_BASE + __zres_end ; 0x2961
    dw jumptable_291f_case_34 - IMAGE_BASE + __zres_end ; 0x2963
    dw jumptable_291f_case_35 - IMAGE_BASE + __zres_end ; 0x2965
    dw jumptable_291f_case_36 - IMAGE_BASE + __zres_end ; 0x2967
    dw jumptable_291f_case_37 - IMAGE_BASE + __zres_end ; 0x2969
    dw jumptable_291f_case_38 - IMAGE_BASE + __zres_end ; 0x296b
    dw jumptable_291f_case_39 - IMAGE_BASE + __zres_end ; 0x296d
    dw jumptable_291f_case_40 - IMAGE_BASE + __zres_end ; 0x296f
    dw jumptable_291f_case_37 - IMAGE_BASE + __zres_end ; 0x2971
    dw jumptable_291f_case_42 - IMAGE_BASE + __zres_end ; 0x2973
    dw jumptable_291f_case_43 - IMAGE_BASE + __zres_end ; 0x2975
    dw jumptable_291f_case_44 - IMAGE_BASE + __zres_end ; 0x2977
    dw jumptable_291f_case_45 - IMAGE_BASE + __zres_end ; 0x2979
    dw jumptable_291f_case_46 - IMAGE_BASE + __zres_end ; 0x297b
jumptable_291f_case_46:
    ret                              ; 0x297d
