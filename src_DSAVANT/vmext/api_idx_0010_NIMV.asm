; auto-generated
api_idx_0010_NIMV:
    mov ax, 0xfff0                   ; 0x2291
    call aztec_csav                  ; 0x2294
    mov ax, 4                        ; 0x2297
    cmp word [bss_91a8], byte 0      ; 0x229a
    jne short @..api_idx_0010_NIMV.l1 ; 0x229f
    mov ax, 3                        ; 0x22a1
@..api_idx_0010_NIMV.l1:
    mov word [bp - 0x000a], ax       ; 0x22a4
    mov word [bp - 0x0002], 0xffff   ; 0x22a7
    mov word [bp - 0x0004], 0xffff   ; 0x22ac
    cmp word [bss_91a8], byte 0      ; 0x22b1
    jg short @..api_idx_0010_NIMV.l2 ; 0x22b6
    jmp near @..api_idx_0010_NIMV.l11 ; 0x22b8
@..api_idx_0010_NIMV.l2:
    cmp word [bp + 0x4], byte 3      ; 0x22bb
    je short @..api_idx_0010_NIMV.l3 ; 0x22bf
    jmp near @..api_idx_0010_NIMV.l11 ; 0x22c1
@..api_idx_0010_NIMV.l3:
    mov ax, word [bss_91a8]          ; 0x22c4
    cmp ax, strict word 3            ; 0x22c7
    jl short @..api_idx_0010_NIMV.l4 ; 0x22ca
    cmp ax, strict word 5            ; 0x22cc
    jne short @..api_idx_0010_NIMV.l5 ; 0x22cf
@..api_idx_0010_NIMV.l4:
    mov ax, 0x15                     ; 0x22d1
    jmp short @..api_idx_0010_NIMV.l6 ; 0x22d4
@..api_idx_0010_NIMV.l5:
    mov ax, 0x14                     ; 0x22d6
@..api_idx_0010_NIMV.l6:
    mov word [bp - 0x000c], ax       ; 0x22d9
    cmp word [bss_91a8], byte 3      ; 0x22dc
    jl short @..api_idx_0010_NIMV.l7 ; 0x22e1
    cmp word [bss_91a8], byte 5      ; 0x22e3
    jne short @..api_idx_0010_NIMV.l8 ; 0x22e8
@..api_idx_0010_NIMV.l7:
    mov ax, 0x16                     ; 0x22ea
    jmp short @..api_idx_0010_NIMV.l9 ; 0x22ed
@..api_idx_0010_NIMV.l8:
    mov ax, 0x15                     ; 0x22ef
@..api_idx_0010_NIMV.l9:
    mov word [bp - 0x000e], ax       ; 0x22f2
    cmp word [bp + 0x8], byte 0      ; 0x22f5
    jne short @..api_idx_0010_NIMV.l10 ; 0x22f9
    push ax                          ; 0x22fb
    push word [bp - 0x000c]          ; 0x22fc
    call loc_LPLI_1927               ; 0x22ff
    add sp, byte 4                   ; 0x2302
    mov word [bp - 0x0002], ax       ; 0x2305
    push word [bp - 0x000c]          ; 0x2308
    call loc_UMHI_1913               ; 0x230b
    pop cx                           ; 0x230e
    mov word [bp - 0x0004], ax       ; 0x230f
    jmp short @..api_idx_0010_NIMV.l11 ; 0x2312
@..api_idx_0010_NIMV.l10:
    cmp word [bp + 0x8], byte 4      ; 0x2314
    jne short @..api_idx_0010_NIMV.l11 ; 0x2318
    push word [bp - 0x000c]          ; 0x231a
    push word [bp - 0x000e]          ; 0x231d
    call loc_LPLI_1927               ; 0x2320
    add sp, byte 4                   ; 0x2323
    mov word [bp - 0x0002], ax       ; 0x2326
    push word [bp - 0x000e]          ; 0x2329
    call loc_UMHI_1913               ; 0x232c
    pop cx                           ; 0x232f
    mov word [bp - 0x0004], ax       ; 0x2330
@..api_idx_0010_NIMV.l11:
    mov ax, word [bp + 0x6]          ; 0x2333
    jmp near @..api_idx_0010_NIMV.l25 ; 0x2336
jumptable_2515_case_1:
    cmp word [bp - 0x0002], byte 0xff ; 0x2339
    je short @..api_idx_0010_NIMV.l13 ; 0x233d
    mov ax, 0                        ; 0x233f
    push ax                          ; 0x2342
    push ax                          ; 0x2343
    push ax                          ; 0x2344
    push word [bp + 0x10]            ; 0x2345
    push word [bp + 0x4]             ; 0x2348
    mov ax, 0xffff                   ; 0x234b
    push ax                          ; 0x234e
    push word [bp - 0x0004]          ; 0x234f
    mov ax, 0                        ; 0x2352
    push ax                          ; 0x2355
    push ax                          ; 0x2356
    push ax                          ; 0x2357
    cmp word [bp + 0x4], byte 1      ; 0x2358
    jne short @..api_idx_0010_NIMV.l12 ; 0x235c
    mov ax, 2                        ; 0x235e
@..api_idx_0010_NIMV.l12:
    push ax                          ; 0x2361
    mov ax, 0xffff                   ; 0x2362
    push ax                          ; 0x2365
    push word [bp - 0x0002]          ; 0x2366
    mov ax, 0xff                     ; 0x2369
    push ax                          ; 0x236c
    call api_idx_0004_RTNM           ; 0x236d
    add sp, byte 0x1c                ; 0x2370
@..api_idx_0010_NIMV.l13:
    jmp near @..api_idx_0010_NIMV.l26 ; 0x2373
jumptable_2515_case_5:
    cmp word [bp - 0x0002], byte 0xff ; 0x2376
    je short @..api_idx_0010_NIMV.l14 ; 0x237a
    mov ax, 0                        ; 0x237c
    push ax                          ; 0x237f
    push ax                          ; 0x2380
    push ax                          ; 0x2381
    push word [bp + 0x14]            ; 0x2382
    push word [bp + 0x4]             ; 0x2385
    mov ax, 0xffff                   ; 0x2388
    push ax                          ; 0x238b
    push word [bp - 0x0004]          ; 0x238c
    mov ax, 0                        ; 0x238f
    push ax                          ; 0x2392
    push ax                          ; 0x2393
    push ax                          ; 0x2394
    mov ax, 2                        ; 0x2395
    push ax                          ; 0x2398
    mov ax, 0xffff                   ; 0x2399
    push ax                          ; 0x239c
    push word [bp - 0x0002]          ; 0x239d
    mov ax, 0xff                     ; 0x23a0
    push ax                          ; 0x23a3
    call api_idx_0004_RTNM           ; 0x23a4
    add sp, byte 0x1c                ; 0x23a7
@..api_idx_0010_NIMV.l14:
    jmp near @..api_idx_0010_NIMV.l26 ; 0x23aa
jumptable_2515_case_2:
    cmp word [bss_91a8], byte 0      ; 0x23ad
    jne short @..api_idx_0010_NIMV.l17 ; 0x23b2
    cmp word [bp + 0x4], byte 3      ; 0x23b4
    jge short @..api_idx_0010_NIMV.l16 ; 0x23b8
    mov ax, 0                        ; 0x23ba
    push ax                          ; 0x23bd
    push ax                          ; 0x23be
    push ax                          ; 0x23bf
    push word [bp + 0xa]             ; 0x23c0
    push word [bp + 0x4]             ; 0x23c3
    mov ax, 0xffff                   ; 0x23c6
    push ax                          ; 0x23c9
    mov ax, word [bp + 0x16]         ; 0x23ca
    add ax, word [bp + 0x4]          ; 0x23cd
    push ax                          ; 0x23d0
    call loc_UMHI_1913               ; 0x23d1
    pop cx                           ; 0x23d4
    push ax                          ; 0x23d5
    mov ax, 0                        ; 0x23d6
    push ax                          ; 0x23d9
    push ax                          ; 0x23da
    push ax                          ; 0x23db
    mov cx, word [bp + 0x4]          ; 0x23dc
    cmp cx, byte 1                   ; 0x23df
    jne short @..api_idx_0010_NIMV.l15 ; 0x23e2
    mov ax, 2                        ; 0x23e4
@..api_idx_0010_NIMV.l15:
    push ax                          ; 0x23e7
    mov ax, 0xffff                   ; 0x23e8
    push ax                          ; 0x23eb
    add cx, word [bp + 0x18]         ; 0x23ec
    mov ax, cx                       ; 0x23ef
    push ax                          ; 0x23f1
    mov ax, word [bp + 0x16]         ; 0x23f2
    add ax, word [bp + 0x4]          ; 0x23f5
    push ax                          ; 0x23f8
    call loc_LPLI_1927               ; 0x23f9
    add sp, byte 4                   ; 0x23fc
    push ax                          ; 0x23ff
    mov ax, 0xff                     ; 0x2400
    push ax                          ; 0x2403
    call api_idx_0004_RTNM           ; 0x2404
    add sp, byte 0x1c                ; 0x2407
@..api_idx_0010_NIMV.l16:
    jmp near @..api_idx_0010_NIMV.l21 ; 0x240a
@..api_idx_0010_NIMV.l17:
    cmp word [bss_91a8], byte 3      ; 0x240d
    jl short @..api_idx_0010_NIMV.l18 ; 0x2412
    cmp word [bss_91a8], byte 5      ; 0x2414
    jne short @..api_idx_0010_NIMV.l20 ; 0x2419
@..api_idx_0010_NIMV.l18:
    cmp word [bp + 0x4], byte 4      ; 0x241b
    jge short @..api_idx_0010_NIMV.l19 ; 0x241f
    mov ax, 0                        ; 0x2421
    push ax                          ; 0x2424
    push ax                          ; 0x2425
    push ax                          ; 0x2426
    push word [bp + 0x10]            ; 0x2427
    push word [bp + 0x4]             ; 0x242a
    push word [bp - 0x0004]          ; 0x242d
    mov ax, word [bp + 0x32]         ; 0x2430
    add ax, word [bp + 0x4]          ; 0x2433
    push ax                          ; 0x2436
    call loc_UMHI_1913               ; 0x2437
    pop cx                           ; 0x243a
    push ax                          ; 0x243b
    mov ax, 0                        ; 0x243c
    push ax                          ; 0x243f
    push ax                          ; 0x2440
    mov ax, 2                        ; 0x2441
    push ax                          ; 0x2444
    push ax                          ; 0x2445
    push word [bp - 0x0002]          ; 0x2446
    mov ax, word [bp + 0x34]         ; 0x2449
    add ax, word [bp + 0x4]          ; 0x244c
    push ax                          ; 0x244f
    mov ax, word [bp + 0x32]         ; 0x2450
    add ax, word [bp + 0x4]          ; 0x2453
    push ax                          ; 0x2456
    call loc_LPLI_1927               ; 0x2457
    add sp, byte 4                   ; 0x245a
    push ax                          ; 0x245d
    mov ax, 0xff                     ; 0x245e
    push ax                          ; 0x2461
    call api_idx_0004_RTNM           ; 0x2462
    add sp, byte 0x1c                ; 0x2465
@..api_idx_0010_NIMV.l19:
    jmp short @..api_idx_0010_NIMV.l21 ; 0x2468
@..api_idx_0010_NIMV.l20:
    cmp word [bss_91a8], byte 5      ; 0x246a
    jge short @..api_idx_0010_NIMV.l21 ; 0x246f
    cmp word [bp + 0x4], byte 4      ; 0x2471
    jge short @..api_idx_0010_NIMV.l21 ; 0x2475
    mov ax, 0                        ; 0x2477
    push ax                          ; 0x247a
    push ax                          ; 0x247b
    push ax                          ; 0x247c
    push word [bp + 0x14]            ; 0x247d
    push word [bp + 0x4]             ; 0x2480
    push word [bp - 0x0004]          ; 0x2483
    mov ax, word [bp + 0x46]         ; 0x2486
    add ax, word [bp + 0x4]          ; 0x2489
    push ax                          ; 0x248c
    call loc_UMHI_1913               ; 0x248d
    pop cx                           ; 0x2490
    push ax                          ; 0x2491
    mov ax, 0                        ; 0x2492
    push ax                          ; 0x2495
    push ax                          ; 0x2496
    mov ax, 2                        ; 0x2497
    push ax                          ; 0x249a
    push ax                          ; 0x249b
    push word [bp - 0x0002]          ; 0x249c
    mov ax, word [bp + 0x48]         ; 0x249f
    add ax, word [bp + 0x4]          ; 0x24a2
    push ax                          ; 0x24a5
    mov ax, word [bp + 0x46]         ; 0x24a6
    add ax, word [bp + 0x4]          ; 0x24a9
    push ax                          ; 0x24ac
    call loc_LPLI_1927               ; 0x24ad
    add sp, byte 4                   ; 0x24b0
    push ax                          ; 0x24b3
    mov ax, 0xff                     ; 0x24b4
    push ax                          ; 0x24b7
    call api_idx_0004_RTNM           ; 0x24b8
    add sp, byte 0x1c                ; 0x24bb
@..api_idx_0010_NIMV.l21:
    jmp near @..api_idx_0010_NIMV.l26 ; 0x24be
jumptable_2515_case_4:
    mov ax, word [bss_91a8]          ; 0x24c1
    mov cx, 2                        ; 0x24c4
    cwd                              ; 0x24c7
    idiv cx                          ; 0x24c8
    mov ax, dx                       ; 0x24ca
    cmp ax, strict word 1            ; 0x24cc
    jne short @..api_idx_0010_NIMV.l24 ; 0x24cf
    cmp word [bp + 0x4], byte 4      ; 0x24d1
    jge short @..api_idx_0010_NIMV.l24 ; 0x24d5
    mov ax, 0                        ; 0x24d7
    push ax                          ; 0x24da
    push ax                          ; 0x24db
    push ax                          ; 0x24dc
    push word [bp + 0xc]             ; 0x24dd
    push word [bp + 0x4]             ; 0x24e0
    mov ax, 0xffff                   ; 0x24e3
    push ax                          ; 0x24e6
    push ax                          ; 0x24e7
    mov ax, 0                        ; 0x24e8
    push ax                          ; 0x24eb
    push ax                          ; 0x24ec
    push ax                          ; 0x24ed
    push cx                          ; 0x24ee
    mov ax, 0xffff                   ; 0x24ef
    push ax                          ; 0x24f2
    cmp word [bss_9aec], byte 0      ; 0x24f3
    je short @..api_idx_0010_NIMV.l22 ; 0x24f8
    mov ax, word [bp + 0x1c]         ; 0x24fa
    add ax, word [bp + 0x4]          ; 0x24fd
    jmp short @..api_idx_0010_NIMV.l23 ; 0x2500
@..api_idx_0010_NIMV.l22:
    mov ax, word [bp + 0x1a]         ; 0x2502
    add ax, word [bp + 0x4]          ; 0x2505
@..api_idx_0010_NIMV.l23:
    push ax                          ; 0x2508
    mov ax, 0xfc                     ; 0x2509
    push ax                          ; 0x250c
    call api_idx_0004_RTNM           ; 0x250d
    add sp, byte 0x1c                ; 0x2510
@..api_idx_0010_NIMV.l24:
    jmp short @..api_idx_0010_NIMV.l26 ; 0x2513
jumptable_2515:
    dw jumptable_2515_case_0 - IMAGE_BASE + __zres_end ; 0x2515
    dw jumptable_2515_case_1 - IMAGE_BASE + __zres_end ; 0x2517
    dw jumptable_2515_case_2 - IMAGE_BASE + __zres_end ; 0x2519
    dw jumptable_2515_case_1 - IMAGE_BASE + __zres_end ; 0x251b
    dw jumptable_2515_case_4 - IMAGE_BASE + __zres_end ; 0x251d
    dw jumptable_2515_case_5 - IMAGE_BASE + __zres_end ; 0x251f
    dw jumptable_2515_case_1 - IMAGE_BASE + __zres_end ; 0x2521
    dw jumptable_2515_case_1 - IMAGE_BASE + __zres_end ; 0x2523
    dw jumptable_2515_case_0 - IMAGE_BASE + __zres_end ; 0x2525
    dw jumptable_2515_case_0 - IMAGE_BASE + __zres_end ; 0x2527
    dw jumptable_2515_case_2 - IMAGE_BASE + __zres_end ; 0x2529
    dw jumptable_2515_case_2 - IMAGE_BASE + __zres_end ; 0x252b
    dw jumptable_2515_case_2 - IMAGE_BASE + __zres_end ; 0x252d
    dw jumptable_2515_case_2 - IMAGE_BASE + __zres_end ; 0x252f
    dw jumptable_2515_case_2 - IMAGE_BASE + __zres_end ; 0x2531
    dw jumptable_2515_case_2 - IMAGE_BASE + __zres_end ; 0x2533
@..api_idx_0010_NIMV.l25:
    cmp ax, strict word 0x10         ; 0x2535
    jae short @..api_idx_0010_NIMV.l26 ; 0x2538
    xchg bx, ax                      ; 0x253a
    shl bx, 1                        ; 0x253b
    jmp [cs:bx + jumptable_2515 - IMAGE_BASE + __zres_end] ; 0x253d
jumptable_2515_case_0:
@..api_idx_0010_NIMV.l26:
    mov word [bp - 0x0002], 0xffff   ; 0x2542
    mov word [bp - 0x0004], 0xffff   ; 0x2547
    mov ax, word [bp + 0x4]          ; 0x254c
    cmp ax, word [bp - 0x000a]       ; 0x254f
    jl short @..api_idx_0010_NIMV.l27 ; 0x2552
    jmp near @..api_idx_0010_NIMV.l49 ; 0x2554
@..api_idx_0010_NIMV.l27:
    mov word [bp - 0x0010], 0xffff   ; 0x2557
    mov ax, word [bp + 0x6]          ; 0x255c
    jmp near @..api_idx_0010_NIMV.l47 ; 0x255f
jumptable_2967_case_8:
    mov ax, word [bp + 0x2e]         ; 0x2562
    cmp word [bp + 0x6], byte 8      ; 0x2565
    jne short @..api_idx_0010_NIMV.l28 ; 0x2569
    mov ax, word [bp + 0x2a]         ; 0x256b
@..api_idx_0010_NIMV.l28:
    mov word [bp - 0x0006], ax       ; 0x256e
    mov ax, word [bp + 0x30]         ; 0x2571
    cmp word [bp + 0x6], byte 8      ; 0x2574
    jne short @..api_idx_0010_NIMV.l29 ; 0x2578
    mov ax, word [bp + 0x2c]         ; 0x257a
@..api_idx_0010_NIMV.l29:
    mov word [bp - 0x0008], ax       ; 0x257d
    mov ax, word [bp - 0x0006]       ; 0x2580
    add ax, word [bp + 0x4]          ; 0x2583
    inc ax                           ; 0x2586
    inc ax                           ; 0x2587
    inc ax                           ; 0x2588
    mov word [bp - 0x0002], ax       ; 0x2589
    mov word [bp - 0x0004], 0xffff   ; 0x258c
jumptable_2967_case_7:
    cmp word [bp + 0x6], byte 7      ; 0x2591
    jne short @..api_idx_0010_NIMV.l30 ; 0x2595
    mov ax, word [bp + 0x44]         ; 0x2597
    add ax, word [bp + 0x4]          ; 0x259a
    push ax                          ; 0x259d
    mov ax, word [bp + 0x42]         ; 0x259e
    add ax, word [bp + 0x4]          ; 0x25a1
    push ax                          ; 0x25a4
    call loc_LPLI_1927               ; 0x25a5
    add sp, byte 4                   ; 0x25a8
    mov word [bp - 0x0002], ax       ; 0x25ab
    mov ax, word [bp + 0x42]         ; 0x25ae
    add ax, word [bp + 0x4]          ; 0x25b1
    push ax                          ; 0x25b4
    call loc_UMHI_1913               ; 0x25b5
    pop cx                           ; 0x25b8
    mov word [bp - 0x0004], ax       ; 0x25b9
jumptable_2967_case_1:
@..api_idx_0010_NIMV.l30:
    cmp word [bss_91a8], byte 0      ; 0x25bc
    jne short @..api_idx_0010_NIMV.l31 ; 0x25c1
    mov ax, 0                        ; 0x25c3
    push ax                          ; 0x25c6
    push ax                          ; 0x25c7
    push ax                          ; 0x25c8
    push word [bp + 0xa]             ; 0x25c9
    push word [bp + 0x4]             ; 0x25cc
    push word [bp - 0x0004]          ; 0x25cf
    mov ax, word [bp + 0x1e]         ; 0x25d2
    add ax, word [bp + 0x4]          ; 0x25d5
    push ax                          ; 0x25d8
    call loc_UMHI_1913               ; 0x25d9
    pop cx                           ; 0x25dc
    push ax                          ; 0x25dd
    mov ax, 0                        ; 0x25de
    push ax                          ; 0x25e1
    push ax                          ; 0x25e2
    mov ax, 2                        ; 0x25e3
    push ax                          ; 0x25e6
    push ax                          ; 0x25e7
    push word [bp - 0x0002]          ; 0x25e8
    mov ax, word [bp + 0x20]         ; 0x25eb
    add ax, word [bp + 0x4]          ; 0x25ee
    push ax                          ; 0x25f1
    mov ax, word [bp + 0x1e]         ; 0x25f2
    add ax, word [bp + 0x4]          ; 0x25f5
    push ax                          ; 0x25f8
    call loc_LPLI_1927               ; 0x25f9
    add sp, byte 4                   ; 0x25fc
    push ax                          ; 0x25ff
    mov ax, 0xff                     ; 0x2600
    push ax                          ; 0x2603
    call api_idx_0004_RTNM           ; 0x2604
    add sp, byte 0x1c                ; 0x2607
    jmp short @..api_idx_0010_NIMV.l32 ; 0x260a
@..api_idx_0010_NIMV.l31:
    cmp word [bss_91a8], byte 2      ; 0x260c
    jne short @..api_idx_0010_NIMV.l32 ; 0x2611
    mov ax, 0                        ; 0x2613
    push ax                          ; 0x2616
    push ax                          ; 0x2617
    push ax                          ; 0x2618
    push word [bp + 0xe]             ; 0x2619
    push word [bp + 0x4]             ; 0x261c
    push word [bp - 0x0004]          ; 0x261f
    mov ax, word [bp + 0x36]         ; 0x2622
    add ax, word [bp + 0x4]          ; 0x2625
    push ax                          ; 0x2628
    call loc_UMHI_1913               ; 0x2629
    pop cx                           ; 0x262c
    push ax                          ; 0x262d
    mov ax, 0                        ; 0x262e
    push ax                          ; 0x2631
    push ax                          ; 0x2632
    mov ax, 2                        ; 0x2633
    push ax                          ; 0x2636
    push ax                          ; 0x2637
    push word [bp - 0x0002]          ; 0x2638
    mov ax, word [bp + 0x38]         ; 0x263b
    add ax, word [bp + 0x4]          ; 0x263e
    push ax                          ; 0x2641
    mov ax, word [bp + 0x36]         ; 0x2642
    add ax, word [bp + 0x4]          ; 0x2645
    push ax                          ; 0x2648
    call loc_LPLI_1927               ; 0x2649
    add sp, byte 4                   ; 0x264c
    push ax                          ; 0x264f
    mov ax, 0xff                     ; 0x2650
    push ax                          ; 0x2653
    call api_idx_0004_RTNM           ; 0x2654
    add sp, byte 0x1c                ; 0x2657
@..api_idx_0010_NIMV.l32:
    cmp word [bp + 0x6], byte 3      ; 0x265a
    je short @..api_idx_0010_NIMV.l33 ; 0x265e
    jmp near @..api_idx_0010_NIMV.l36 ; 0x2660
@..api_idx_0010_NIMV.l33:
    cmp word [bss_831a], byte 0      ; 0x2663
    je short @..api_idx_0010_NIMV.l34 ; 0x2668
    cmp word [bp + 0x4], byte 0      ; 0x266a
    jne short @..api_idx_0010_NIMV.l34 ; 0x266e
    cmp word [bp + 0x8], byte 2      ; 0x2670
    jne short @..api_idx_0010_NIMV.l34 ; 0x2674
    mov ax, 0                        ; 0x2676
    push ax                          ; 0x2679
    push ax                          ; 0x267a
    push ax                          ; 0x267b
    push ax                          ; 0x267c
    push word [bp + 0x4]             ; 0x267d
    mov ax, 0xf8                     ; 0x2680
    push ax                          ; 0x2683
    mov ax, 0x48                     ; 0x2684
    push ax                          ; 0x2687
    mov ax, 0                        ; 0x2688
    push ax                          ; 0x268b
    push ax                          ; 0x268c
    push ax                          ; 0x268d
    mov ax, word [bss_831a]          ; 0x268e
    add ax, strict word 0xc          ; 0x2691
    push ax                          ; 0x2694
    mov ax, 0                        ; 0x2695
    push ax                          ; 0x2698
    mov ax, 0xa                      ; 0x2699
    imul word [bp + 0x4]             ; 0x269c
    mov cx, word [bp + 0x8]          ; 0x269f
    shl cx, 1                        ; 0x26a2
    add ax, cx                       ; 0x26a4
    mov bx, ax                       ; 0x26a6
    push word [bx + 0x36e]           ; 0x26a8
    mov ax, 5                        ; 0x26ac
    push ax                          ; 0x26af
    call api_idx_0004_RTNM           ; 0x26b0
    add sp, byte 0x1c                ; 0x26b3
    jmp near @..api_idx_0010_NIMV.l35 ; 0x26b6
@..api_idx_0010_NIMV.l34:
    mov ax, 0                        ; 0x26b9
    push ax                          ; 0x26bc
    push ax                          ; 0x26bd
    push word [bss_91a4]             ; 0x26be
    push ax                          ; 0x26c2
    push word [bp + 0x4]             ; 0x26c3
    mov ax, 0xf8                     ; 0x26c6
    push ax                          ; 0x26c9
    mov ax, 0x48                     ; 0x26ca
    push ax                          ; 0x26cd
    mov ax, 0                        ; 0x26ce
    push ax                          ; 0x26d1
    push ax                          ; 0x26d2
    push ax                          ; 0x26d3
    mov ax, word [bp + 0x4]          ; 0x26d4
    shl ax, 1                        ; 0x26d7
    add ax, word [bss_91a4]          ; 0x26d9
    add ax, strict word 5            ; 0x26dd
    push ax                          ; 0x26e0
    mov ax, 0                        ; 0x26e1
    push ax                          ; 0x26e4
    mov ax, 0xa                      ; 0x26e5
    imul word [bp + 0x4]             ; 0x26e8
    mov cx, word [bp + 0x8]          ; 0x26eb
    shl cx, 1                        ; 0x26ee
    add ax, cx                       ; 0x26f0
    mov bx, ax                       ; 0x26f2
    push word [bx + 0x36e]           ; 0x26f4
    mov ax, 5                        ; 0x26f8
    push ax                          ; 0x26fb
    call api_idx_0004_RTNM           ; 0x26fc
    add sp, byte 0x1c                ; 0x26ff
    mov ax, 0                        ; 0x2702
    push ax                          ; 0x2705
    push ax                          ; 0x2706
    push word [bss_91a4]             ; 0x2707
    push ax                          ; 0x270b
    push word [bp + 0x4]             ; 0x270c
    mov ax, 0xf8                     ; 0x270f
    push ax                          ; 0x2712
    mov ax, 0x48                     ; 0x2713
    push ax                          ; 0x2716
    mov ax, 0                        ; 0x2717
    push ax                          ; 0x271a
    push ax                          ; 0x271b
    push ax                          ; 0x271c
    mov ax, word [bp + 0x4]          ; 0x271d
    inc ax                           ; 0x2720
    push ax                          ; 0x2721
    mov ax, 0                        ; 0x2722
    push ax                          ; 0x2725
    mov ax, 0xa                      ; 0x2726
    imul word [bp + 0x4]             ; 0x2729
    mov cx, word [bp + 0x8]          ; 0x272c
    shl cx, 1                        ; 0x272f
    add ax, cx                       ; 0x2731
    mov bx, ax                       ; 0x2733
    push word [bx + 0x36e]           ; 0x2735
    mov ax, 5                        ; 0x2739
    push ax                          ; 0x273c
    call api_idx_0004_RTNM           ; 0x273d
    add sp, byte 0x1c                ; 0x2740
@..api_idx_0010_NIMV.l35:
    jmp short @..api_idx_0010_NIMV.l37 ; 0x2743
@..api_idx_0010_NIMV.l36:
    cmp word [bp + 0x6], byte 6      ; 0x2745
    jne short @..api_idx_0010_NIMV.l37 ; 0x2749
    mov ax, 0                        ; 0x274b
    push ax                          ; 0x274e
    push ax                          ; 0x274f
    push word [bss_91a4]             ; 0x2750
    push ax                          ; 0x2754
    push word [bp + 0x4]             ; 0x2755
    mov ax, 0xf8                     ; 0x2758
    push ax                          ; 0x275b
    mov ax, 0x48                     ; 0x275c
    push ax                          ; 0x275f
    mov ax, 0                        ; 0x2760
    push ax                          ; 0x2763
    push ax                          ; 0x2764
    push ax                          ; 0x2765
    mov ax, word [bp + 0x4]          ; 0x2766
    inc ax                           ; 0x2769
    push ax                          ; 0x276a
    mov ax, 0                        ; 0x276b
    push ax                          ; 0x276e
    mov ax, 0xa                      ; 0x276f
    imul word [bp + 0x4]             ; 0x2772
    mov cx, word [bp + 0x8]          ; 0x2775
    shl cx, 1                        ; 0x2778
    add ax, cx                       ; 0x277a
    mov bx, ax                       ; 0x277c
    push word [bx + 0x36e]           ; 0x277e
    mov ax, 5                        ; 0x2782
    push ax                          ; 0x2785
    call api_idx_0004_RTNM           ; 0x2786
    add sp, byte 0x1c                ; 0x2789
@..api_idx_0010_NIMV.l37:
    cmp word [bss_91a8], byte 0      ; 0x278c
    jne short @..api_idx_0010_NIMV.l38 ; 0x2791
    mov ax, 0                        ; 0x2793
    push ax                          ; 0x2796
    push ax                          ; 0x2797
    push ax                          ; 0x2798
    push word [bp + 0xa]             ; 0x2799
    push word [bp + 0x4]             ; 0x279c
    mov ax, word [bp + 0x26]         ; 0x279f
    add ax, word [bp + 0x4]          ; 0x27a2
    push ax                          ; 0x27a5
    call loc_UMHI_1913               ; 0x27a6
    pop cx                           ; 0x27a9
    push ax                          ; 0x27aa
    mov ax, word [bp + 0x22]         ; 0x27ab
    add ax, word [bp + 0x4]          ; 0x27ae
    push ax                          ; 0x27b1
    call loc_UMHI_1913               ; 0x27b2
    pop cx                           ; 0x27b5
    push ax                          ; 0x27b6
    mov ax, 0                        ; 0x27b7
    push ax                          ; 0x27ba
    push ax                          ; 0x27bb
    mov ax, 2                        ; 0x27bc
    push ax                          ; 0x27bf
    push ax                          ; 0x27c0
    mov ax, word [bp + 0x28]         ; 0x27c1
    add ax, word [bp + 0x4]          ; 0x27c4
    push ax                          ; 0x27c7
    mov ax, word [bp + 0x26]         ; 0x27c8
    add ax, word [bp + 0x4]          ; 0x27cb
    push ax                          ; 0x27ce
    call loc_LPLI_1927               ; 0x27cf
    add sp, byte 4                   ; 0x27d2
    push ax                          ; 0x27d5
    mov ax, word [bp + 0x24]         ; 0x27d6
    add ax, word [bp + 0x4]          ; 0x27d9
    push ax                          ; 0x27dc
    mov ax, word [bp + 0x22]         ; 0x27dd
    add ax, word [bp + 0x4]          ; 0x27e0
    push ax                          ; 0x27e3
    call loc_LPLI_1927               ; 0x27e4
    add sp, byte 4                   ; 0x27e7
    push ax                          ; 0x27ea
    mov ax, 0xff                     ; 0x27eb
    push ax                          ; 0x27ee
    call api_idx_0004_RTNM           ; 0x27ef
    add sp, byte 0x1c                ; 0x27f2
    jmp short @..api_idx_0010_NIMV.l39 ; 0x27f5
@..api_idx_0010_NIMV.l38:
    cmp word [bss_91a8], byte 2      ; 0x27f7
    jne short @..api_idx_0010_NIMV.l39 ; 0x27fc
    mov ax, 0                        ; 0x27fe
    push ax                          ; 0x2801
    push ax                          ; 0x2802
    push ax                          ; 0x2803
    push word [bp + 0xe]             ; 0x2804
    push word [bp + 0x4]             ; 0x2807
    mov ax, word [bp + 0x3e]         ; 0x280a
    add ax, word [bp + 0x4]          ; 0x280d
    push ax                          ; 0x2810
    call loc_UMHI_1913               ; 0x2811
    pop cx                           ; 0x2814
    push ax                          ; 0x2815
    mov ax, word [bp + 0x3a]         ; 0x2816
    add ax, word [bp + 0x4]          ; 0x2819
    push ax                          ; 0x281c
    call loc_UMHI_1913               ; 0x281d
    pop cx                           ; 0x2820
    push ax                          ; 0x2821
    mov ax, 0                        ; 0x2822
    push ax                          ; 0x2825
    push ax                          ; 0x2826
    mov ax, 2                        ; 0x2827
    push ax                          ; 0x282a
    push ax                          ; 0x282b
    mov ax, word [bp + 0x40]         ; 0x282c
    add ax, word [bp + 0x4]          ; 0x282f
    push ax                          ; 0x2832
    mov ax, word [bp + 0x3e]         ; 0x2833
    add ax, word [bp + 0x4]          ; 0x2836
    push ax                          ; 0x2839
    call loc_LPLI_1927               ; 0x283a
    add sp, byte 4                   ; 0x283d
    push ax                          ; 0x2840
    mov ax, word [bp + 0x3c]         ; 0x2841
    add ax, word [bp + 0x4]          ; 0x2844
    push ax                          ; 0x2847
    mov ax, word [bp + 0x3a]         ; 0x2848
    add ax, word [bp + 0x4]          ; 0x284b
    push ax                          ; 0x284e
    call loc_LPLI_1927               ; 0x284f
    add sp, byte 4                   ; 0x2852
    push ax                          ; 0x2855
    mov ax, 0xff                     ; 0x2856
    push ax                          ; 0x2859
    call api_idx_0004_RTNM           ; 0x285a
    add sp, byte 0x1c                ; 0x285d
@..api_idx_0010_NIMV.l39:
    cmp word [bp + 0x6], byte 8      ; 0x2860
    je short @..api_idx_0010_NIMV.l40 ; 0x2864
    cmp word [bp + 0x6], byte 9      ; 0x2866
    jne short @..api_idx_0010_NIMV.l41 ; 0x286a
@..api_idx_0010_NIMV.l40:
    mov ax, 0                        ; 0x286c
    push ax                          ; 0x286f
    push ax                          ; 0x2870
    push ax                          ; 0x2871
    push word [bp + 0xa]             ; 0x2872
    push word [bp + 0x4]             ; 0x2875
    mov ax, 0xffff                   ; 0x2878
    push ax                          ; 0x287b
    push ax                          ; 0x287c
    mov ax, 0                        ; 0x287d
    push ax                          ; 0x2880
    push ax                          ; 0x2881
    push ax                          ; 0x2882
    mov ax, 2                        ; 0x2883
    push ax                          ; 0x2886
    mov ax, 0xffff                   ; 0x2887
    push ax                          ; 0x288a
    mov ax, word [bp - 0x0006]       ; 0x288b
    add ax, word [bp + 0x4]          ; 0x288e
    push ax                          ; 0x2891
    mov ax, 0xff                     ; 0x2892
    push ax                          ; 0x2895
    call api_idx_0004_RTNM           ; 0x2896
    add sp, byte 0x1c                ; 0x2899
@..api_idx_0010_NIMV.l41:
    jmp near @..api_idx_0010_NIMV.l48 ; 0x289c
jumptable_2967_case_5:
    cmp word [bp + 0x4], byte 4      ; 0x289f
    jge short @..api_idx_0010_NIMV.l42 ; 0x28a3
    mov ax, 0                        ; 0x28a5
    push ax                          ; 0x28a8
    push ax                          ; 0x28a9
    push ax                          ; 0x28aa
    push word [bp + 0x12]            ; 0x28ab
    push word [bp + 0x4]             ; 0x28ae
    mov ax, 0xffff                   ; 0x28b1
    push ax                          ; 0x28b4
    mov ax, word [bp + 0x4a]         ; 0x28b5
    add ax, word [bp + 0x4]          ; 0x28b8
    push ax                          ; 0x28bb
    call loc_UMHI_1913               ; 0x28bc
    pop cx                           ; 0x28bf
    push ax                          ; 0x28c0
    mov ax, 0                        ; 0x28c1
    push ax                          ; 0x28c4
    push ax                          ; 0x28c5
    push ax                          ; 0x28c6
    mov ax, 2                        ; 0x28c7
    push ax                          ; 0x28ca
    mov ax, 0xffff                   ; 0x28cb
    push ax                          ; 0x28ce
    mov ax, word [bp + 0x4c]         ; 0x28cf
    add ax, word [bp + 0x4]          ; 0x28d2
    push ax                          ; 0x28d5
    mov ax, word [bp + 0x4a]         ; 0x28d6
    add ax, word [bp + 0x4]          ; 0x28d9
    push ax                          ; 0x28dc
    call loc_LPLI_1927               ; 0x28dd
    add sp, byte 4                   ; 0x28e0
    push ax                          ; 0x28e3
    mov ax, 0xff                     ; 0x28e4
    push ax                          ; 0x28e7
    call api_idx_0004_RTNM           ; 0x28e8
    add sp, byte 0x1c                ; 0x28eb
@..api_idx_0010_NIMV.l42:
    jmp near @..api_idx_0010_NIMV.l48 ; 0x28ee
jumptable_2967_case_10:
    mov word [bp - 0x0010], 9        ; 0x28f1
    mov word [bp - 0x000c], 1        ; 0x28f6
    mov ax, word [bss_82e8]          ; 0x28fb
    inc ax                           ; 0x28fe
    inc ax                           ; 0x28ff
    mov word [bp - 0x000e], ax       ; 0x2900
    jmp near @..api_idx_0010_NIMV.l48 ; 0x2903
jumptable_2967_case_11:
    mov word [bp - 0x0010], 9        ; 0x2906
    mov word [bp - 0x000c], 7        ; 0x290b
    mov ax, 0                        ; 0x2910
    cmp word [bss_82e8], byte 0      ; 0x2913
    je short @..api_idx_0010_NIMV.l43 ; 0x2918
    mov ax, 8                        ; 0x291a
@..api_idx_0010_NIMV.l43:
    mov word [bp - 0x000e], ax       ; 0x291d
    jmp short @..api_idx_0010_NIMV.l48 ; 0x2920
jumptable_2967_case_12:
    mov word [bp - 0x0010], 0xa      ; 0x2922
    mov ax, 5                        ; 0x2927
    cmp word [bss_91a8], byte 0      ; 0x292a
    jne short @..api_idx_0010_NIMV.l44 ; 0x292f
    mov ax, 1                        ; 0x2931
@..api_idx_0010_NIMV.l44:
    mov cx, 0                        ; 0x2934
    cmp word [bp + 0x6], byte 0x0d   ; 0x2937
    jne short @..api_idx_0010_NIMV.l45 ; 0x293b
    mov cx, 1                        ; 0x293d
@..api_idx_0010_NIMV.l45:
    add ax, cx                       ; 0x2940
    mov word [bp - 0x000c], ax       ; 0x2942
    mov word [bp - 0x000e], 0        ; 0x2945
    jmp short @..api_idx_0010_NIMV.l48 ; 0x294a
jumptable_2967_case_14:
    mov word [bp - 0x0010], 0xa      ; 0x294c
    mov word [bp - 0x000c], 9        ; 0x2951
    mov ax, 0xb                      ; 0x2956
    cmp word [bp + 0x6], byte 0x0e   ; 0x2959
    jne short @..api_idx_0010_NIMV.l46 ; 0x295d
    mov ax, 0xa                      ; 0x295f
@..api_idx_0010_NIMV.l46:
    mov word [bp - 0x000e], ax       ; 0x2962
    jmp short @..api_idx_0010_NIMV.l48 ; 0x2965
jumptable_2967:
    dw jumptable_2967_case_0 - IMAGE_BASE + __zres_end ; 0x2967
    dw jumptable_2967_case_1 - IMAGE_BASE + __zres_end ; 0x2969
    dw jumptable_2967_case_0 - IMAGE_BASE + __zres_end ; 0x296b
    dw jumptable_2967_case_1 - IMAGE_BASE + __zres_end ; 0x296d
    dw jumptable_2967_case_0 - IMAGE_BASE + __zres_end ; 0x296f
    dw jumptable_2967_case_5 - IMAGE_BASE + __zres_end ; 0x2971
    dw jumptable_2967_case_1 - IMAGE_BASE + __zres_end ; 0x2973
    dw jumptable_2967_case_7 - IMAGE_BASE + __zres_end ; 0x2975
    dw jumptable_2967_case_8 - IMAGE_BASE + __zres_end ; 0x2977
    dw jumptable_2967_case_8 - IMAGE_BASE + __zres_end ; 0x2979
    dw jumptable_2967_case_10 - IMAGE_BASE + __zres_end ; 0x297b
    dw jumptable_2967_case_11 - IMAGE_BASE + __zres_end ; 0x297d
    dw jumptable_2967_case_12 - IMAGE_BASE + __zres_end ; 0x297f
    dw jumptable_2967_case_12 - IMAGE_BASE + __zres_end ; 0x2981
    dw jumptable_2967_case_14 - IMAGE_BASE + __zres_end ; 0x2983
    dw jumptable_2967_case_14 - IMAGE_BASE + __zres_end ; 0x2985
@..api_idx_0010_NIMV.l47:
    cmp ax, strict word 0x10         ; 0x2987
    jae short @..api_idx_0010_NIMV.l48 ; 0x298a
    xchg bx, ax                      ; 0x298c
    shl bx, 1                        ; 0x298d
    jmp [cs:bx + jumptable_2967 - IMAGE_BASE + __zres_end] ; 0x298f
jumptable_2967_case_0:
@..api_idx_0010_NIMV.l48:
    cmp word [bp - 0x0010], byte 0xff ; 0x2994
    je short @..api_idx_0010_NIMV.l49 ; 0x2998
    mov ax, 2                        ; 0x299a
    push ax                          ; 0x299d
    mov ax, 0                        ; 0x299e
    push ax                          ; 0x29a1
    push word [bss_91a4]             ; 0x29a2
    mov ax, word [bp + 0x4]          ; 0x29a6
    shl ax, 1                        ; 0x29a9
    mov bx, ax                       ; 0x29ab
    push word [bx + 0x576]           ; 0x29ad
    push word [bp + 0x4]             ; 0x29b1
    mov ax, 0xf8                     ; 0x29b4
    push ax                          ; 0x29b7
    mov ax, 0x48                     ; 0x29b8
    push ax                          ; 0x29bb
    mov ax, 0                        ; 0x29bc
    push ax                          ; 0x29bf
    push ax                          ; 0x29c0
    push word [bp - 0x000e]          ; 0x29c1
    push word [bp - 0x000c]          ; 0x29c4
    push ax                          ; 0x29c7
    mov ax, 0xa                      ; 0x29c8
    imul word [bp + 0x4]             ; 0x29cb
    mov cx, word [bp + 0x8]          ; 0x29ce
    shl cx, 1                        ; 0x29d1
    add ax, cx                       ; 0x29d3
    mov bx, ax                       ; 0x29d5
    push word [bx + 0x36e]           ; 0x29d7
    push word [bp - 0x0010]          ; 0x29db
    call api_idx_0004_RTNM           ; 0x29de
    add sp, byte 0x1c                ; 0x29e1
@..api_idx_0010_NIMV.l49:
    ret                              ; 0x29e4
