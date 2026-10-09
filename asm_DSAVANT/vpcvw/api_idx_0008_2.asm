api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x21fd
    call ds_dispatch_f40b            ; 0x2200
    mov ax, word [bp + 0x6]          ; 0x2203
    jmp near @..api_idx_0008_2.l4    ; 0x2206
    mov ax, 0x32                     ; 0x2209
    imul word [bp + 0x8]             ; 0x220c
    add word [data_82fe], ax         ; 0x220f
    mov ax, 0                        ; 0x2213
    push ax                          ; 0x2216
    push word [data_8300]            ; 0x2217
    mov ax, 5                        ; 0x221b
    imul word [bp + 0x8]             ; 0x221e
    add ax, strict word 0x46         ; 0x2221
    push ax                          ; 0x2224
    call loc_21ad                    ; 0x2225
    add sp, byte 6                   ; 0x2228
    mov word [data_8300], ax         ; 0x222b
    jmp near @..api_idx_0008_2.l16   ; 0x222e
    mov ax, 0x23                     ; 0x2231
    imul word [bp + 0x8]             ; 0x2234
    add word [data_82f2], ax         ; 0x2237
    mov ax, 0                        ; 0x223b
    push ax                          ; 0x223e
    push word [data_82f4]            ; 0x223f
    mov ax, word [bp + 0x8]          ; 0x2243
    dec ax                           ; 0x2246
    mov cx, data_0002                ; 0x2247
    cwd                              ; 0x224a
    idiv cx                          ; 0x224b
    inc ax                           ; 0x224d
    push ax                          ; 0x224e
    call loc_21ad                    ; 0x224f
    add sp, byte 6                   ; 0x2252
    mov word [data_82f4], ax         ; 0x2255
    jmp near @..api_idx_0008_2.l16   ; 0x2258
    mov ax, 0x32                     ; 0x225b
    imul word [bp + 0x8]             ; 0x225e
    add word [data_82f6], ax         ; 0x2261
    mov ax, 0                        ; 0x2265
    push ax                          ; 0x2268
    push word [data_82f8]            ; 0x2269
    mov ax, word [bp + 0x8]          ; 0x226d
    dec ax                           ; 0x2270
    mov cx, data_0002                ; 0x2271
    cwd                              ; 0x2274
    idiv cx                          ; 0x2275
    inc ax                           ; 0x2277
    push ax                          ; 0x2278
    call loc_21ad                    ; 0x2279
    add sp, byte 6                   ; 0x227c
    mov word [data_82f8], ax         ; 0x227f
    jmp near @..api_idx_0008_2.l16   ; 0x2282
    mov ax, 5                        ; 0x2285
    imul word [bp + 0x8]             ; 0x2288
    add word [data_8306], ax         ; 0x228b
    jmp near @..api_idx_0008_2.l16   ; 0x228f
    mov ax, 0x64                     ; 0x2292
    imul word [bp + 0x8]             ; 0x2295
    add word [data_8302], ax         ; 0x2298
    jmp near @..api_idx_0008_2.l16   ; 0x229c
    mov ax, 0x32                     ; 0x229f
    imul word [bp + 0x8]             ; 0x22a2
    add word [data_82fa], ax         ; 0x22a5
    mov ax, 0                        ; 0x22a9
    push ax                          ; 0x22ac
    push word [data_82fc]            ; 0x22ad
    mov ax, 5                        ; 0x22b1
    imul word [bp + 0x8]             ; 0x22b4
    push ax                          ; 0x22b7
    call loc_21ad                    ; 0x22b8
    add sp, byte 6                   ; 0x22bb
    mov word [data_82fc], ax         ; 0x22be
    jmp near @..api_idx_0008_2.l16   ; 0x22c1
    mov ax, 0                        ; 0x22c4
    cmp word [bp + 0x6], byte 0x13   ; 0x22c7
    je short loc_22d0                ; 0x22cb
    mov ax, word [bp + 0xa]          ; 0x22cd
    mov word [bp - 0x0002], ax       ; 0x22d0
    mov ax, word [data_69c8]         ; 0x22d3
    cmp word [bp + 0x6], byte 0x13   ; 0x22d6
    je short loc_22e0                ; 0x22da
    mov ax, word [bp + 0xa]          ; 0x22dc
    inc ax                           ; 0x22df
    mov word [bp - 0x0004], ax       ; 0x22e0
    mov ax, word [bp + 0x8]          ; 0x22e3
    cmp word [bp + 0x6], byte 0x13   ; 0x22e6
    je short loc_22ee                ; 0x22ea
    shl ax, 1                        ; 0x22ec
    mov word [bp - 0x0006], ax       ; 0x22ee
    mov ax, 0                        ; 0x22f1
    cmp word [bp + 0x6], byte 0x13   ; 0x22f4
    je short loc_22fd                ; 0x22f8
    mov ax, word [bp + 0x8]          ; 0x22fa
    mov word [bp - 0x0008], ax       ; 0x22fd
    jmp short loc_236c               ; 0x2300
    mov ax, 0x248                    ; 0x2302
    imul word [bp - 0x0002]          ; 0x2305
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]          ; 0x230a
    mov ax, 0                        ; 0x230e
    push ax                          ; 0x2311
    push word [bp - 0x0008]          ; 0x2312
    mov ax, 8                        ; 0x2315
    push ax                          ; 0x2318
    push word [bp - 0x0006]          ; 0x2319
    db 0xe8, 0xcb, 0xad ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x231f
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2324
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x2329
    mov es, dx                       ; 0x232b
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2331
    movsw                            ; 0x2332
    db 0xe8, 0x88, 0xad ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x2336
    push ax                          ; 0x2339
    mov ax, 0x248                    ; 0x233a
    imul word [bp - 0x0002]          ; 0x233d
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2342
    add ax, word [bx + 0x5c10]       ; 0x2343
    push ax                          ; 0x2347
    db 0xe8, 0x77, 0x94 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x234b
    push ax                          ; 0x234e
    mov ax, 0x248                    ; 0x234f
    imul word [bp - 0x0002]          ; 0x2352
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2357
    mov word [bx + 0x5c10], ax       ; 0x2358
    cmp word [bp + 0x6], byte 0x13   ; 0x235c
    je short loc_2369                ; 0x2360
    push word [bp - 0x0002]          ; 0x2362
    call loc_2190                    ; 0x2365
    pop cx                           ; 0x2368
    inc word [bp - 0x0002]           ; 0x2369
    mov ax, word [bp - 0x0002]       ; 0x236c
    cmp ax, word [bp - 0x0004]       ; 0x236f
    jl short loc_2302                ; 0x2372
    jmp near @..api_idx_0008_2.l16   ; 0x2374
    mov ax, 0x248                    ; 0x2377
    imul word [bp + 0xa]             ; 0x237a
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5d]       ; 0x237f
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x2385
    mov ax, 0x19                     ; 0x2386
    imul word [bp + 0x8]             ; 0x2389
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x238e
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x2391
    cmp ax, strict word 0            ; 0x2394
    jge short loc_239e               ; 0x2397
    mov word [bp - 0x0002], 0        ; 0x2399
    mov al, byte [bp - 0x0002]       ; 0x239e
    mov byte [bx + 0x5d5d], al       ; 0x23a1
    push word [bp + 0xa]             ; 0x23a5
    call loc_2190                    ; 0x23a8
    pop cx                           ; 0x23ab
    jmp near @..api_idx_0008_2.l16   ; 0x23ac
    mov ax, 0x248                    ; 0x23af
    imul word [bp + 0xa]             ; 0x23b2
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e32]       ; 0x23b7
    db 0x2a, 0xe4 ; sub ah, ah
    sub ax, word [bp + 0x8]          ; 0x23bd
    mov word [bp - 0x0002], ax       ; 0x23c0
    cmp ax, strict word 0            ; 0x23c3
    jg short loc_23d2                ; 0x23c6
    mov word [bp - 0x0002], 0        ; 0x23c8
    mov byte [bx + 0x5d5f], 0        ; 0x23cd
    mov al, byte [bp - 0x0002]       ; 0x23d2
    mov byte [bx + 0x5e32], al       ; 0x23d5
    mov al, byte [bx + 0x5d5f]       ; 0x23d9
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x23df
    mov ax, 5                        ; 0x23e0
    imul word [bp + 0x8]             ; 0x23e3
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x23e8
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x23eb
    cmp ax, strict word 0            ; 0x23ee
    jg short loc_23fd                ; 0x23f1
    mov word [bp - 0x0002], 0        ; 0x23f3
    mov byte [bx + 0x5e32], 0        ; 0x23f8
    mov al, byte [bp - 0x0002]       ; 0x23fd
    mov byte [bx + 0x5d5f], al       ; 0x2400
    push word [bp + 0xa]             ; 0x2404
    call loc_2190                    ; 0x2407
    pop cx                           ; 0x240a
    jmp near @..api_idx_0008_2.l16   ; 0x240b
    mov ax, 0x248                    ; 0x240e
    imul word [bp + 0xa]             ; 0x2411
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], data_0002 ; 0x2416
    je short loc_2420                ; 0x241b
    jmp near loc_249a                ; 0x241d
    mov ax, 3                        ; 0x2420
    imul word [bp + 0x8]             ; 0x2423
    push ax                          ; 0x2426
    mov al, byte [bx + 0x5d67]       ; 0x2427
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x15                     ; 0x242f
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x2434
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_249a               ; 0x2437
    dec byte [bx + 0x5d67]           ; 0x2439
    mov ax, 0xb7                     ; 0x243d
    push ax                          ; 0x2440
    db 0xe8, 0x65, 0x93 ; call ds_dispatch_b7a9
    pop cx                           ; 0x2444
    add ax, 0xb7                     ; 0x2445
    cwd                              ; 0x2448
    push ax                          ; 0x2449
    push dx                          ; 0x244a
    mov ax, 0x248                    ; 0x244b
    imul word [bp + 0xa]             ; 0x244e
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x2453
    pop ax                           ; 0x2454
    add word [bx + 0x5bfc], ax       ; 0x2455
    adc word [bx + 0x5bfe], dx       ; 0x2459
    mov ax, 0x12                     ; 0x245d
    push ax                          ; 0x2460
    db 0xe8, 0x45, 0x93 ; call ds_dispatch_b7a9
    pop cx                           ; 0x2464
    push ax                          ; 0x2465
    mov ax, 0x248                    ; 0x2466
    imul word [bp + 0xa]             ; 0x2469
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x246e
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x2476
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_248e               ; 0x2479
    mov byte [bx + 0x5e2f], 3        ; 0x247b
    mov word [bx + 0x5c0c], 0        ; 0x2480
    mov word [bx + 0x5c10], 0        ; 0x2486
    jmp short loc_2493               ; 0x248c
    mov byte [bx + 0x5e2f], 0        ; 0x248e
    push word [bp + 0xa]             ; 0x2493
    call loc_2190                    ; 0x2496
    pop cx                           ; 0x2499
    jmp near @..api_idx_0008_2.l16   ; 0x249a
    mov ax, 0x248                    ; 0x249d
    imul word [bp + 0xa]             ; 0x24a0
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d61]       ; 0x24a5
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x24ab
    mov ax, 0x19                     ; 0x24ac
    imul word [bp + 0x8]             ; 0x24af
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x24b4
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x24b7
    cmp ax, strict word 0            ; 0x24ba
    jge short loc_24c4               ; 0x24bd
    mov word [bp - 0x0002], 0        ; 0x24bf
    mov al, byte [bp - 0x0002]       ; 0x24c4
    mov byte [bx + 0x5d61], al       ; 0x24c7
    push word [bp + 0xa]             ; 0x24cb
    call loc_2190                    ; 0x24ce
    pop cx                           ; 0x24d1
    jmp near @..api_idx_0008_2.l16   ; 0x24d2
    mov ax, 3                        ; 0x24d5
    imul word [bp + 0x8]             ; 0x24d8
    push ax                          ; 0x24db
    mov ax, 0x248                    ; 0x24dc
    imul word [bp + 0xa]             ; 0x24df
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x24e4
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x12                     ; 0x24ec
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x24f1
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_24fb               ; 0x24f4
    mov byte [bx + 0x5d60], 0        ; 0x24f6
    push word [bp + 0xa]             ; 0x24fb
    call loc_2190                    ; 0x24fe
    pop cx                           ; 0x2501
    jmp near @..api_idx_0008_2.l16   ; 0x2502
    mov word [bp - 0x0002], 0        ; 0x2505
    jmp short loc_2548               ; 0x250a
    mov ax, 0x248                    ; 0x250c
    imul word [bp + 0xa]             ; 0x250f
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5c]       ; 0x2514
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x251a
    mov ax, word [bp + 0x8]          ; 0x251b
    imul ax                          ; 0x251e
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 4            ; 0x2522
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x2527
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0004], ax       ; 0x252a
    cmp ax, strict word 0            ; 0x252d
    jge short loc_2537               ; 0x2530
    mov word [bp - 0x0004], 0        ; 0x2532
    mov al, byte [bp - 0x0004]       ; 0x2537
    mov byte [bx + 0x5d5c], al       ; 0x253a
    push word [bp - 0x0002]          ; 0x253e
    call loc_2190                    ; 0x2541
    pop cx                           ; 0x2544
    inc word [bp - 0x0002]           ; 0x2545
    mov ax, word [bp - 0x0002]       ; 0x2548
    cmp ax, word [data_69c8]         ; 0x254b
    jl short loc_250c                ; 0x254f
    jmp near @..api_idx_0008_2.l16   ; 0x2551
    mov word [bp - 0x0004], 1        ; 0x2554
    mov ax, word [bp - 0x0004]       ; 0x2559
    cmp ax, strict word 1            ; 0x255c
    je short loc_2575                ; 0x255f
    cmp ax, strict word 2            ; 0x2561
    db 0x74, 0x0f ; je short loc_2575
    cmp ax, strict word 4            ; 0x2566
    db 0x74, 0x0a ; je short loc_2575
    cmp ax, strict word 8            ; 0x256b
    db 0x74, 0x05 ; je short loc_2575
    cmp ax, strict word 9            ; 0x2570
    jne short loc_25ae               ; 0x2573
    mov ax, 0x248                    ; 0x2575
    imul word [bp + 0xa]             ; 0x2578
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0004]       ; 0x257d
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    mov al, byte [bx + 0x5d5a]       ; 0x2584
    db 0x2a, 0xe4 ; sub ah, ah
    push ax                          ; 0x258a
    mov ax, word [bp + 0x8]          ; 0x258b
    imul ax                          ; 0x258e
    db 0x8b, 0xc8 ; mov cx, ax
    add ax, strict word 4            ; 0x2592
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x2597
    db 0x2b, 0xc1 ; sub ax, cx
    mov word [bp - 0x0002], ax       ; 0x259a
    cmp ax, strict word 0            ; 0x259d
    jge short loc_25a7               ; 0x25a0
    mov word [bp - 0x0002], 0        ; 0x25a2
    mov al, byte [bp - 0x0002]       ; 0x25a7
    mov byte [bx + 0x5d5a], al       ; 0x25aa
    inc word [bp - 0x0004]           ; 0x25ae
    mov ax, word [bp - 0x0004]       ; 0x25b1
    cmp ax, strict word 9            ; 0x25b4
    jle short loc_2559               ; 0x25b7
    push word [bp + 0xa]             ; 0x25b9
    call loc_2190                    ; 0x25bc
    pop cx                           ; 0x25bf
    jmp near @..api_idx_0008_2.l16   ; 0x25c0
    mov ax, 0                        ; 0x25c3
    cmp word [bp + 0x6], byte 0x58   ; 0x25c6
    je short loc_25cf                ; 0x25ca
    mov ax, word [bp + 0xa]          ; 0x25cc
    mov word [bp - 0x0002], ax       ; 0x25cf
    mov ax, word [data_69c8]         ; 0x25d2
    cmp word [bp + 0x6], byte 0x58   ; 0x25d5
    je short loc_25df                ; 0x25d9
    mov ax, word [bp + 0xa]          ; 0x25db
    inc ax                           ; 0x25de
    mov word [bp - 0x0004], ax       ; 0x25df
    mov ax, 4                        ; 0x25e2
    cmp word [bp + 0x6], byte 0x58   ; 0x25e5
    je short loc_25ee                ; 0x25e9
    mov ax, 7                        ; 0x25eb
    mov word [bp - 0x0006], ax       ; 0x25ee
    mov ax, 0                        ; 0x25f1
    cmp word [bp + 0x6], byte 0x58   ; 0x25f4
    je short loc_25fd                ; 0x25f8
    mov ax, word [bp + 0x8]          ; 0x25fa
    mov word [bp - 0x0008], ax       ; 0x25fd
    jmp short loc_2675               ; 0x2600
    mov ax, 0x248                    ; 0x2602
    imul word [bp - 0x0002]          ; 0x2605
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]          ; 0x260a
    mov ax, 0                        ; 0x260e
    push ax                          ; 0x2611
    push word [bp - 0x0008]          ; 0x2612
    push word [bp - 0x0006]          ; 0x2615
    push word [bp + 0x8]             ; 0x2618
    db 0xe8, 0xcc, 0xaa ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x261e
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2623
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x2628
    mov es, dx                       ; 0x262a
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2630
    movsw                            ; 0x2631
    db 0xe8, 0x89, 0xaa ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x2635
    push ax                          ; 0x2638
    mov ax, 0x248                    ; 0x2639
    imul word [bp - 0x0002]          ; 0x263c
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2641
    add ax, word [bx + 0x5c0c]       ; 0x2642
    push ax                          ; 0x2646
    db 0xe8, 0x78, 0x91 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x264a
    push ax                          ; 0x264d
    mov ax, 0x248                    ; 0x264e
    imul word [bp - 0x0002]          ; 0x2651
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2656
    mov word [bx + 0x5c0c], ax       ; 0x2657
    add word [bx + 0x5bfc], byte 1   ; 0x265b
    adc word [bx + 0x5bfe], byte 0   ; 0x2660
    cmp word [bp + 0x6], byte 0x58   ; 0x2665
    je short loc_2672                ; 0x2669
    push word [bp - 0x0002]          ; 0x266b
    call loc_2190                    ; 0x266e
    pop cx                           ; 0x2671
    inc word [bp - 0x0002]           ; 0x2672
    mov ax, word [bp - 0x0002]       ; 0x2675
    cmp ax, word [bp - 0x0004]       ; 0x2678
    jl short loc_2602                ; 0x267b
    jmp near @..api_idx_0008_2.l16   ; 0x267d
    mov ax, 0x248                    ; 0x2680
    imul word [bp + 0xa]             ; 0x2683
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 3        ; 0x2688
    je short loc_2692                ; 0x268d
    jmp near loc_2714                ; 0x268f
    mov ax, 3                        ; 0x2692
    imul word [bp + 0x8]             ; 0x2695
    push ax                          ; 0x2698
    mov al, byte [bx + 0x5d67]       ; 0x2699
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xd0 ; mov dx, ax
    mov cx, 0x15                     ; 0x26a1
    db 0x2b, 0xc8 ; sub cx, ax
    pop ax                           ; 0x26a6
    db 0x3b, 0xc1 ; cmp ax, cx
    jle short loc_2714               ; 0x26a9
    dec byte [bx + 0x5d67]           ; 0x26ab
    mov byte [bx + 0x5e2f], 0        ; 0x26af
    push word [bx + 0x5c0e]          ; 0x26b4
    mov ax, 1                        ; 0x26b8
    push ax                          ; 0x26bb
    mov ax, word [bx + 0x5c0e]       ; 0x26bc
    mov cx, 3                        ; 0x26c0
    cwd                              ; 0x26c3
    idiv cx                          ; 0x26c4
    push ax                          ; 0x26c6
    db 0xe8, 0xf8, 0x90 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x26ca
    push ax                          ; 0x26cd
    mov ax, 0x248                    ; 0x26ce
    imul word [bp + 0xa]             ; 0x26d1
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x26d6
    mov word [bx + 0x5c0c], ax       ; 0x26d7
    mov ax, word [bx + 0x5c12]       ; 0x26db
    mov cx, 0xa                      ; 0x26df
    cwd                              ; 0x26e2
    idiv cx                          ; 0x26e3
    mov word [bx + 0x5c10], ax       ; 0x26e5
    inc word [bx + 0x5c1a]           ; 0x26e9
    mov ax, 0xb7                     ; 0x26ed
    push ax                          ; 0x26f0
    db 0xe8, 0xb5, 0x90 ; call ds_dispatch_b7a9
    pop cx                           ; 0x26f4
    add ax, 0x16d                    ; 0x26f5
    cwd                              ; 0x26f8
    push ax                          ; 0x26f9
    push dx                          ; 0x26fa
    mov ax, 0x248                    ; 0x26fb
    imul word [bp + 0xa]             ; 0x26fe
    db 0x8b, 0xd8 ; mov bx, ax
    pop dx                           ; 0x2703
    pop ax                           ; 0x2704
    add word [bx + 0x5bfc], ax       ; 0x2705
    adc word [bx + 0x5bfe], dx       ; 0x2709
    push word [bp + 0xa]             ; 0x270d
    call loc_2190                    ; 0x2710
    pop cx                           ; 0x2713
    jmp near @..api_idx_0008_2.l16   ; 0x2714
    push word [bp + 0x8]             ; 0x2717
    mov ax, 8                        ; 0x271a
    push ax                          ; 0x271d
    push word [bp + 0x8]             ; 0x271e
    db 0xe8, 0xc6, 0xa9 ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x2724
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2729
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x272e
    mov es, dx                       ; 0x2730
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2736
    movsw                            ; 0x2737
    db 0xe8, 0x83, 0xa9 ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x273b
    mov word [bp - 0x0002], ax       ; 0x273e
    push ax                          ; 0x2741
    mov ax, 0x248                    ; 0x2742
    imul word [bp + 0x4]             ; 0x2745
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x274a
    add word [bx + 0x5c10], ax       ; 0x274b
    mov ax, word [bx + 0x5c10]       ; 0x274f
    cmp ax, word [bx + 0x5c12]       ; 0x2753
    jle short loc_2761               ; 0x2757
    mov ax, word [bx + 0x5c12]       ; 0x2759
    mov word [bx + 0x5c10], ax       ; 0x275d
    mov ax, 0                        ; 0x2761
    push ax                          ; 0x2764
    mov ax, data_0002                ; 0x2765
    push ax                          ; 0x2768
    push word [bp + 0x8]             ; 0x2769
    db 0xe8, 0x7b, 0xa9 ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x276f
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x2774
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x2779
    mov es, dx                       ; 0x277b
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x2781
    movsw                            ; 0x2782
    db 0xe8, 0x38, 0xa9 ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x2786
    mov word [bp - 0x0002], ax       ; 0x2789
    push ax                          ; 0x278c
    mov ax, 0x248                    ; 0x278d
    imul word [bp + 0x4]             ; 0x2790
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x2795
    add word [bx + 0x5c0c], ax       ; 0x2796
    mov ax, word [bx + 0x5c0c]       ; 0x279a
    cmp ax, word [bx + 0x5c0e]       ; 0x279e
    jle short loc_27ac               ; 0x27a2
    mov ax, word [bx + 0x5c0e]       ; 0x27a4
    mov word [bx + 0x5c0c], ax       ; 0x27a8
    jmp near @..api_idx_0008_2.l16   ; 0x27ac
    mov word [bp - 0x0002], 0        ; 0x27af
    mov ax, 0                        ; 0x27b4
    push ax                          ; 0x27b7
    mov ax, 0xa                      ; 0x27b8
    push ax                          ; 0x27bb
    push word [bp + 0x8]             ; 0x27bc
    db 0xe8, 0x28, 0xa9 ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x27c2
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x27c7
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x27cc
    mov es, dx                       ; 0x27ce
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x27d4
    movsw                            ; 0x27d5
    db 0xe8, 0xe5, 0xa8 ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x27d9
    mov word [bp - 0x0004], ax       ; 0x27dc
    push ax                          ; 0x27df
    mov ax, 0x248                    ; 0x27e0
    imul word [bp + 0x4]             ; 0x27e3
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0002]       ; 0x27e8
    shl dx, 1                        ; 0x27eb
    shl dx, 1                        ; 0x27ed
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x27f3
    add word [bx + 0x5c1c], ax       ; 0x27f4
    mov ax, word [bx + 0x5c1c]       ; 0x27f8
    cmp ax, word [bx + 0x5c1e]       ; 0x27fc
    jle short loc_280a               ; 0x2800
    mov ax, word [bx + 0x5c1e]       ; 0x2802
    mov word [bx + 0x5c1c], ax       ; 0x2806
    inc word [bp - 0x0002]           ; 0x280a
    mov ax, word [bp - 0x0002]       ; 0x280d
    cmp ax, strict word 6            ; 0x2810
    jl short loc_27b4                ; 0x2813
    jmp near @..api_idx_0008_2.l16   ; 0x2815
    call api_idx_0012_3              ; 0x2818
    mov word [data_8aee], ax         ; 0x281b
    cmp ax, strict word 0xffff       ; 0x281e
    je short loc_286a                ; 0x2821
    mov ax, 0x248                    ; 0x2823
    imul word [bp + 0x4]             ; 0x2826
    push ax                          ; 0x2829
    mov ax, 0x78                     ; 0x282a
    imul word [api_idx_0016]         ; 0x282d
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x2833
    db 0x03, 0xc1 ; add ax, cx
    push ax                          ; 0x2836
    mov ax, 0xc                      ; 0x2837
    imul word [data_8aee]            ; 0x283a
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x2840
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    cmp word [bx + 0x5c34], byte 0   ; 0x2845
    jle short loc_286a               ; 0x284a
    push word [bp + 0x8]             ; 0x284c
    mov ax, 0x16                     ; 0x284f
    imul word [data_8aee]            ; 0x2852
    add ax, 0x9436                   ; 0x2856
    push ax                          ; 0x2859
    add bx, strict word 0x5c34       ; 0x285a
    db 0x8b, 0xc3 ; mov ax, bx
    push ax                          ; 0x2860
    push word [bp + 0x4]             ; 0x2861
    call loc_70ca                    ; 0x2864
    add sp, byte 8                   ; 0x2867
    jmp near @..api_idx_0008_2.l16   ; 0x286a
    mov word [bp - 0x0004], 0        ; 0x286d
    mov word [bp - 0x0002], 0        ; 0x2872
    mov ax, 0x64                     ; 0x2877
    push ax                          ; 0x287a
    db 0xe8, 0x2b, 0x8f ; call ds_dispatch_b7a9
    pop cx                           ; 0x287e
    push ax                          ; 0x287f
    mov ax, 0xf                      ; 0x2880
    imul word [bp + 0x8]             ; 0x2883
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x2888
    db 0x3b, 0xc1 ; cmp ax, cx
    jge short loc_28ba               ; 0x288b
    mov ax, 0x248                    ; 0x288d
    imul word [bp + 0xa]             ; 0x2890
    push ax                          ; 0x2893
    mov ax, 0x78                     ; 0x2894
    imul word [bp - 0x0004]          ; 0x2897
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x289c
    db 0x03, 0xc1 ; add ax, cx
    push ax                          ; 0x289f
    mov ax, 0xc                      ; 0x28a0
    imul word [bp - 0x0002]          ; 0x28a3
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x28a8
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5c3b]       ; 0x28ad
    db 0x2a, 0xe4 ; sub ah, ah
    and ax, strict word 0xfffd       ; 0x28b3
    mov byte [bx + 0x5c3b], al       ; 0x28b6
    inc word [bp - 0x0002]           ; 0x28ba
    mov ax, word [bp - 0x0002]       ; 0x28bd
    cmp ax, strict word 0xa          ; 0x28c0
    jl short loc_2877                ; 0x28c3
    inc word [bp - 0x0004]           ; 0x28c5
    mov ax, word [bp - 0x0004]       ; 0x28c8
    cmp ax, strict word 2            ; 0x28cb
    jl short loc_2872                ; 0x28ce
    jmp near @..api_idx_0008_2.l16   ; 0x28d0
    call api_idx_0012_3              ; 0x28d3
    mov word [data_8aee], ax         ; 0x28d6
    cmp ax, strict word 0xffff       ; 0x28d9
    je short @..api_idx_0008_2.l3    ; 0x28dc
    mov ax, 0x248                    ; 0x28de
    imul word [bp + 0x4]             ; 0x28e1
    push ax                          ; 0x28e4
    mov ax, 0x78                     ; 0x28e5
    imul word [api_idx_0016]         ; 0x28e8
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x28ee
    db 0x03, 0xc1 ; add ax, cx
    push ax                          ; 0x28f1
    mov ax, 0xc                      ; 0x28f2
    imul word [data_8aee]            ; 0x28f5
    db 0x8b, 0xc8 ; mov cx, ax
@..api_idx_0008_2.l1:
    pop ax                           ; 0x28fb
    add ax, cx                       ; 0x28fc
@..api_idx_0008_2.l2:
    mov bx, ax                       ; 0x28fe
    cmp word [bx + 0x5c34], byte 0   ; 0x2900
    jle short @..api_idx_0008_2.l3   ; 0x2905
    push word [bp + 0x8]             ; 0x2907
    add ax, 0x5c34                   ; 0x290a
    push ax                          ; 0x290d
loc_290e:
    push word [bp + 0x4]             ; 0x290e
    call api_idx_009a                ; 0x2911
    add sp, byte 6                   ; 0x2914
@..api_idx_0008_2.l3:
    jmp short @..api_idx_0008_2.l16  ; 0x2917
@..api_idx_0008_2.l4:
    mov cx, 0x18                     ; 0x2919
    call leaf_loc_982c               ; 0x291c
    or al, 0                         ; 0x291f
    adc word [bx + si], ax           ; 0x2921
    db 0x13
@..api_idx_0008_2.l5:
    db 0x00
    sbb word [bx + si], ax           ; 0x2925
    and word [bx + si], ax           ; 0x2927
    and ax, 0x2e00                   ; 0x2929
    add byte [bx + di], dh           ; 0x292c
    add byte [bx + si], bh           ; 0x292e
    add byte [di], bh                ; 0x2930
    db 0x00
@..api_idx_0008_2.l6:
    db 0x3f
    db 0x00, 0x40, 0x00 ; add byte [bx + si], al
    inc dx                           ; 0x2937
    db 0x00, 0x45, 0x00 ; add byte [di], al
    dec si                           ; 0x293b
    db 0x00
@..api_idx_0008_2.l7:
    db 0x52
    db 0x00
    push sp                          ; 0x293f
@..api_idx_0008_2.l8:
    db 0x00
@..api_idx_0008_2.l9:
    db 0x57
    db 0x00
    pop ax                           ; 0x2943
    db 0x00, 0x5c, 0x00 ; add byte [si], bl
    pop si                           ; 0x2947
    db 0x00, 0x61, 0x00 ; add byte [bx + di], ah
    db 0x62
@..api_idx_0008_2.l10:
    db 0x00
    or si, word [bp + di - 0x0042]   ; 0x294d
    jae short @..api_idx_0008_2.l12  ; 0x2950
    jae short @..api_idx_0008_2.l13  ; 0x2952
@..api_idx_0008_2.l11:
    jne short @..api_idx_0008_2.l10  ; 0x2954
    jae short @..api_idx_0008_2.l5   ; 0x2956
    jb short @..api_idx_0008_2.l6    ; 0x2958
    jb short @..api_idx_0008_2.l2    ; 0x295a
    db 0x72
@..api_idx_0008_2.l12:
    db 0x55
    je short @..api_idx_0008_2.l1    ; 0x295e
    jne short @..api_idx_0008_2.l17  ; 0x2960
    jb short @..api_idx_0008_2.l19   ; 0x2962
    js short @..api_idx_0008_2.l17   ; 0x2964
    jne short @..api_idx_0008_2.l10  ; 0x2966
    je short @..api_idx_0008_2.l14   ; 0x2968
    jbe short @..api_idx_0008_2.l21  ; 0x296a
    jb short @..api_idx_0008_2.l11   ; 0x296c
    jb short @..api_idx_0008_2.l5    ; 0x296e
@..api_idx_0008_2.l13:
    js short @..api_idx_0008_2.l15   ; 0x2970
    jbe short loc_298e               ; 0x2972
@..api_idx_0008_2.l14:
    jns short @..api_idx_0008_2.l7   ; 0x2974
    jbe short @..api_idx_0008_2.l20  ; 0x2976
    ja short @..api_idx_0008_2.l13   ; 0x2978
    ja short @..api_idx_0008_2.l8    ; 0x297a
@..api_idx_0008_2.l15:
    db 0x79
@..api_idx_0008_2.l16:
    db 0xc3
