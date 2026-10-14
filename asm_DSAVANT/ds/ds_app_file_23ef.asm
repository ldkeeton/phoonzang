; auto-generated
ds_app_file_23ef: ; Aztec csav frame=0x00ba
    mov ax, 0xff46                   ; 0x23ef
    call aztec_csav                  ; 0x23f2
    mov word [bp - 0x00b0], 0x37     ; 0x23f5
    mov word [bp - 0x00b2], 0x8f     ; 0x23fb
    mov word [bp - 0x00b4], 0x108    ; 0x2401
    mov word [bp - 0x00b6], 0xc5     ; 0x2407
    mov ax, word [bp - 0x00b6]       ; 0x240d
    inc ax                           ; 0x2411
    push ax                          ; 0x2412
    mov ax, word [bp - 0x00b4]       ; 0x2413
    inc ax                           ; 0x2417
    push ax                          ; 0x2418
    mov ax, word [bp - 0x00b2]       ; 0x2419
    dec ax                           ; 0x241d
    push ax                          ; 0x241e
    mov ax, word [bp - 0x00b0]       ; 0x241f
    dec ax                           ; 0x2423
    push ax                          ; 0x2424
    call thunk_10                    ; 0x2425
    add sp, byte 8                   ; 0x2428
    mov word [bp - 0x00b8], dx       ; 0x242b
    mov word [bp - 0x00ba], ax       ; 0x242f
    mov ax, 0                        ; 0x2433
    push ax                          ; 0x2436
    call thunk_17                    ; 0x2437
    pop cx                           ; 0x243a
    mov ax, word [bp + 0x6]          ; 0x243b
    mov word [bp - 0x00ae], ax       ; 0x243e
    push word [bp + 0x4]             ; 0x2442
    lea ax, word [bp - 0x0078]       ; 0x2445
    push ax                          ; 0x2448
    call aztec_strcpy                ; 0x2449
    add sp, byte 4                   ; 0x244c
    cmp word [bp + 0x8], byte 0      ; 0x244f
    je short @..ds_app_file_23ef.l1  ; 0x2453
    push word [bss_0e24]             ; 0x2455
    call aztec_close                 ; 0x2459
    pop cx                           ; 0x245c
    push word [bss_0e22]             ; 0x245d
    call aztec_close                 ; 0x2461
    pop cx                           ; 0x2464
@..ds_app_file_23ef.l1:
    mov word [bp - 0x00aa], 0xfffe   ; 0x2465
@..ds_app_file_23ef.l2:
    mov word [bp - 0x00a8], 0        ; 0x246b
@..ds_app_file_23ef.l3:
    cmp word [bp + 0x6], byte 0      ; 0x2471
    jge short @..ds_app_file_23ef.l4 ; 0x2475
    mov ax, 0xb74                    ; 0x2477
    push ax                          ; 0x247a
    lea ax, word [bp - 0x0050]       ; 0x247b
    push ax                          ; 0x247e
    call aztec_strcpy                ; 0x247f
    add sp, byte 4                   ; 0x2482
    jmp short @..ds_app_file_23ef.l5 ; 0x2485
@..ds_app_file_23ef.l4:
    mov ax, word [bp + 0x6]          ; 0x2487
    add ax, strict word 0x41         ; 0x248a
    mov byte [bp - 0x00a0], al       ; 0x248d
    mov byte [bp - 0x009f], 0        ; 0x2491
    mov ax, 0xb89                    ; 0x2496
    push ax                          ; 0x2499
    lea ax, word [bp - 0x0050]       ; 0x249a
    push ax                          ; 0x249d
    call aztec_strcpy                ; 0x249e
    add sp, byte 4                   ; 0x24a1
    mov ax, 0x5e                     ; 0x24a4
    push ax                          ; 0x24a7
    lea ax, word [bp - 0x00a0]       ; 0x24a8
    push ax                          ; 0x24ac
    lea ax, word [bp - 0x0050]       ; 0x24ad
    push ax                          ; 0x24b0
    call ds_app_string_0547          ; 0x24b1
    add sp, byte 6                   ; 0x24b4
@..ds_app_file_23ef.l5:
    push word [bp - 0x00b6]          ; 0x24b7
    push word [bp - 0x00b4]          ; 0x24bb
    push word [bp - 0x00b2]          ; 0x24bf
    push word [bp - 0x00b0]          ; 0x24c3
    call ds_app_0ee1                 ; 0x24c7
    add sp, byte 8                   ; 0x24ca
    mov ax, 0xc2                     ; 0x24cd
    push ax                          ; 0x24d0
    mov ax, 1                        ; 0x24d1
    push ax                          ; 0x24d4
    call thunk_3                     ; 0x24d5
    add sp, byte 4                   ; 0x24d8
    mov ax, word [bp - 0x00b2]       ; 0x24db
    add ax, strict word 0xc          ; 0x24df
    push ax                          ; 0x24e2
    lea ax, word [bp - 0x0050]       ; 0x24e3
    push ax                          ; 0x24e6
    call aztec_strlen                ; 0x24e7
    pop cx                           ; 0x24ea
    mov cx, 6                        ; 0x24eb
    imul cx                          ; 0x24ee
    mov cx, ax                       ; 0x24f0
    mov ax, word [bp - 0x00b4]       ; 0x24f2
    sub ax, word [bp - 0x00b0]       ; 0x24f6
    inc ax                           ; 0x24fa
    sub ax, cx                       ; 0x24fb
    mov cx, 2                        ; 0x24fd
    cwd                              ; 0x2500
    idiv cx                          ; 0x2501
    add ax, word [bp - 0x00b0]       ; 0x2503
    push ax                          ; 0x2507
    call thunk                       ; 0x2508
    add sp, byte 4                   ; 0x250b
    mov ax, 0                        ; 0x250e
    push ax                          ; 0x2511
    lea ax, word [bp - 0x0050]       ; 0x2512
    push ax                          ; 0x2515
    call ds_string_loc_3a95          ; 0x2516
    add sp, byte 4                   ; 0x2519
    mov ax, 0xb99                    ; 0x251c
    push ax                          ; 0x251f
    lea ax, word [bp - 0x0050]       ; 0x2520
    push ax                          ; 0x2523
    call aztec_strcpy                ; 0x2524
    add sp, byte 4                   ; 0x2527
    mov ax, 0x5e                     ; 0x252a
    push ax                          ; 0x252d
    lea ax, word [bp - 0x0078]       ; 0x252e
    push ax                          ; 0x2531
    lea ax, word [bp - 0x0050]       ; 0x2532
    push ax                          ; 0x2535
    call ds_app_string_0547          ; 0x2536
    add sp, byte 6                   ; 0x2539
    mov ax, word [bp - 0x00b2]       ; 0x253c
    add ax, strict word 0x12         ; 0x2540
    push ax                          ; 0x2543
    lea ax, word [bp - 0x0050]       ; 0x2544
    push ax                          ; 0x2547
    call aztec_strlen                ; 0x2548
    pop cx                           ; 0x254b
    mov cx, 6                        ; 0x254c
    imul cx                          ; 0x254f
    mov cx, ax                       ; 0x2551
    mov ax, word [bp - 0x00b4]       ; 0x2553
    sub ax, word [bp - 0x00b0]       ; 0x2557
    inc ax                           ; 0x255b
    sub ax, cx                       ; 0x255c
    mov cx, 2                        ; 0x255e
    cwd                              ; 0x2561
    idiv cx                          ; 0x2562
    add ax, word [bp - 0x00b0]       ; 0x2564
    push ax                          ; 0x2568
    call thunk                       ; 0x2569
    add sp, byte 4                   ; 0x256c
    mov ax, 0                        ; 0x256f
    push ax                          ; 0x2572
    lea ax, word [bp - 0x0050]       ; 0x2573
    push ax                          ; 0x2576
    call ds_string_loc_3a95          ; 0x2577
    add sp, byte 4                   ; 0x257a
    mov ax, 0xba6                    ; 0x257d
    push ax                          ; 0x2580
    mov ax, 1                        ; 0x2581
    push ax                          ; 0x2584
    push ax                          ; 0x2585
    mov ax, 0xc                      ; 0x2586
    push ax                          ; 0x2589
    mov ax, word [bp - 0x00b2]       ; 0x258a
    add ax, strict word 0x27         ; 0x258e
    push ax                          ; 0x2591
    mov ax, word [bp - 0x00b0]       ; 0x2592
    add ax, strict word 0x44         ; 0x2596
    push ax                          ; 0x2599
    call ds_app_string_1308          ; 0x259a
    add sp, byte 0x0c                ; 0x259d
    mov ax, 0                        ; 0x25a0
    push ax                          ; 0x25a3
    mov ax, 0xd                      ; 0x25a4
    push ax                          ; 0x25a7
    mov ax, word [bp - 0x00b2]       ; 0x25a8
    add ax, strict word 0x2f         ; 0x25ac
    push ax                          ; 0x25af
    mov ax, word [bp - 0x00b0]       ; 0x25b0
    add ax, 0x8c                     ; 0x25b4
    push ax                          ; 0x25b7
    mov ax, word [bp - 0x00b2]       ; 0x25b8
    add ax, strict word 0x27         ; 0x25bc
    push ax                          ; 0x25bf
    mov ax, word [bp - 0x00b0]       ; 0x25c0
    add ax, strict word 0x44         ; 0x25c4
    push ax                          ; 0x25c7
    mov ax, 0                        ; 0x25c8
    push ax                          ; 0x25cb
    call ds_app_0ced                 ; 0x25cc
    add sp, byte 0x0e                ; 0x25cf
    mov ax, 0                        ; 0x25d2
    push ax                          ; 0x25d5
    push ax                          ; 0x25d6
    push ax                          ; 0x25d7
    push ax                          ; 0x25d8
    push ax                          ; 0x25d9
    mov ax, 0xffff                   ; 0x25da
    push ax                          ; 0x25dd
    mov ax, 1                        ; 0x25de
    push ax                          ; 0x25e1
    call ds_app_0ced                 ; 0x25e2
    add sp, byte 0x0e                ; 0x25e5
    mov ax, word [bp - 0x00b6]       ; 0x25e8
    inc ax                           ; 0x25ec
    push ax                          ; 0x25ed
    mov ax, word [bp - 0x00b4]       ; 0x25ee
    inc ax                           ; 0x25f2
    push ax                          ; 0x25f3
    mov ax, word [bp - 0x00b2]       ; 0x25f4
    dec ax                           ; 0x25f8
    push ax                          ; 0x25f9
    mov ax, word [bp - 0x00b0]       ; 0x25fa
    dec ax                           ; 0x25fe
    push ax                          ; 0x25ff
    call thunk_4                     ; 0x2600
    add sp, byte 8                   ; 0x2603
    mov word [bp - 0x00a4], 1        ; 0x2606
@..ds_app_file_23ef.l6:
    mov ax, 0x59fe                   ; 0x260c
    push ax                          ; 0x260f
    call ds_app_io_0b54              ; 0x2610
    pop cx                           ; 0x2613
    cmp word [bss_5b3e], byte 1      ; 0x2614
    jne short @..ds_app_file_23ef.l7 ; 0x2619
    mov ax, 1                        ; 0x261b
    push ax                          ; 0x261e
    push ax                          ; 0x261f
    mov ax, 0xc                      ; 0x2620
    push ax                          ; 0x2623
    mov ax, word [bp - 0x00b2]       ; 0x2624
    add ax, strict word 0x27         ; 0x2628
    push ax                          ; 0x262b
    mov ax, word [bp - 0x00b0]       ; 0x262c
    add ax, strict word 0x44         ; 0x2630
    push ax                          ; 0x2633
    call ds_app_10a6                 ; 0x2634
    add sp, byte 0x0a                ; 0x2637
    mov ax, 0                        ; 0x263a
    push ax                          ; 0x263d
    mov ax, 1                        ; 0x263e
    push ax                          ; 0x2641
    mov ax, 0xc                      ; 0x2642
    push ax                          ; 0x2645
    mov ax, word [bp - 0x00b2]       ; 0x2646
    add ax, strict word 0x27         ; 0x264a
    push ax                          ; 0x264d
    mov ax, word [bp - 0x00b0]       ; 0x264e
    add ax, strict word 0x44         ; 0x2652
    push ax                          ; 0x2655
    call ds_app_10a6                 ; 0x2656
    add sp, byte 0x0a                ; 0x2659
    mov word [bp - 0x00a4], 0        ; 0x265c
@..ds_app_file_23ef.l7:
    cmp word [bp - 0x00a4], byte 0   ; 0x2662
    jne short @..ds_app_file_23ef.l6 ; 0x2667
    call bios_kbd_check              ; 0x2669
    mov ax, 0                        ; 0x266c
    push ax                          ; 0x266f
    push word [bp - 0x00b8]          ; 0x2670
    push word [bp - 0x00ba]          ; 0x2674
    call thunk_13                    ; 0x2678
    add sp, byte 6                   ; 0x267b
    mov ax, word [bp - 0x00b6]       ; 0x267e
    inc ax                           ; 0x2682
    push ax                          ; 0x2683
    mov ax, word [bp - 0x00b4]       ; 0x2684
    inc ax                           ; 0x2688
    push ax                          ; 0x2689
    mov ax, word [bp - 0x00b2]       ; 0x268a
    dec ax                           ; 0x268e
    push ax                          ; 0x268f
    mov ax, word [bp - 0x00b0]       ; 0x2690
    dec ax                           ; 0x2694
    push ax                          ; 0x2695
    call thunk_4                     ; 0x2696
    add sp, byte 8                   ; 0x2699
    lea ax, word [bp - 0x0078]       ; 0x269c
    push ax                          ; 0x269f
    lea ax, word [bp - 0x00a0]       ; 0x26a0
    push ax                          ; 0x26a4
    call aztec_strcpy                ; 0x26a5
    add sp, byte 4                   ; 0x26a8
    mov ax, 0xbaf                    ; 0x26ab
    push ax                          ; 0x26ae
    lea ax, word [bp - 0x00a0]       ; 0x26af
    push ax                          ; 0x26b3
    call ds_string_loc_4574          ; 0x26b4
    add sp, byte 4                   ; 0x26b7
    mov ax, 0                        ; 0x26ba
    push ax                          ; 0x26bd
    lea ax, word [bp - 0x00a0]       ; 0x26be
    push ax                          ; 0x26c2
    call aztec_open                  ; 0x26c3
    add sp, byte 4                   ; 0x26c6
    mov word [bp - 0x00a2], ax       ; 0x26c9
    cmp word [bp + 0x6], byte 0      ; 0x26cd
    jge short @..ds_app_file_23ef.l10 ; 0x26d1
    cmp ax, strict word 0xffff       ; 0x26d3
    jne short @..ds_app_file_23ef.l8 ; 0x26d6
    mov word [bp - 0x00a8], 1        ; 0x26d8
    jmp short @..ds_app_file_23ef.l9 ; 0x26de
@..ds_app_file_23ef.l8:
    push ax                          ; 0x26e0
    call aztec_close                 ; 0x26e1
    pop cx                           ; 0x26e4
    cmp byte [bss_5987], 1           ; 0x26e5
    jne short @..ds_app_file_23ef.l9 ; 0x26ea
    mov word [bp - 0x00a8], 1        ; 0x26ec
@..ds_app_file_23ef.l9:
    jmp short @..ds_app_file_23ef.l14 ; 0x26f2
@..ds_app_file_23ef.l10:
    cmp word [bp - 0x00a2], byte 0xff ; 0x26f4
    je short @..ds_app_file_23ef.l14 ; 0x26f9
    mov ax, 0x30c                    ; 0x26fb
    push ax                          ; 0x26fe
    mov ax, 0x5218                   ; 0x26ff
    push ax                          ; 0x2702
    push word [bp - 0x00a2]          ; 0x2703
    call ds_leaf_loc_4fb6            ; 0x2707
    add sp, byte 6                   ; 0x270a
    mov word [bp - 0x00a6], ax       ; 0x270d
    cmp byte [bss_5987], 5           ; 0x2711
    jne short @..ds_app_file_23ef.l11 ; 0x2716
    mov ax, word [bp + 0x6]          ; 0x2718
    cmp ax, strict word 0            ; 0x271b
    jle short @..ds_app_file_23ef.l11 ; 0x271e
    dec ax                           ; 0x2720
    dec ax                           ; 0x2721
    jmp short @..ds_app_file_23ef.l12 ; 0x2722
@..ds_app_file_23ef.l11:
    mov ax, word [bp + 0x6]          ; 0x2724
@..ds_app_file_23ef.l12:
    mov word [bp - 0x00ac], ax       ; 0x2727
    cmp word [bp - 0x00a6], byte 0   ; 0x272b
    jle short @..ds_app_file_23ef.l13 ; 0x2730
    cmp ax, word [bss_5218]          ; 0x2732
    jne short @..ds_app_file_23ef.l13 ; 0x2736
    mov word [bp - 0x00a8], 1        ; 0x2738
@..ds_app_file_23ef.l13:
    push word [bp - 0x00a2]          ; 0x273e
    call aztec_close                 ; 0x2742
    pop cx                           ; 0x2745
@..ds_app_file_23ef.l14:
    cmp word [bp - 0x00a8], byte 0   ; 0x2746
    jne short @..ds_app_file_23ef.l15 ; 0x274b
    jmp near @..ds_app_file_23ef.l3  ; 0x274d
@..ds_app_file_23ef.l15:
    mov ax, word [bp - 0x00aa]       ; 0x2750
    mov word [bp + 0x6], ax          ; 0x2754
    mov word [bp - 0x00aa], 0xfffe   ; 0x2757
    mov ax, 0x5926                   ; 0x275d
    push ax                          ; 0x2760
    lea ax, word [bp - 0x0078]       ; 0x2761
    push ax                          ; 0x2764
    call aztec_strcpy                ; 0x2765
    add sp, byte 4                   ; 0x2768
    cmp word [bp + 0x6], byte 0xfe   ; 0x276b
    je short @..ds_app_file_23ef.l16 ; 0x276f
    jmp near @..ds_app_file_23ef.l2  ; 0x2771
@..ds_app_file_23ef.l16:
    mov ax, 1                        ; 0x2774
    push ax                          ; 0x2777
    push word [bp - 0x00b8]          ; 0x2778
    push word [bp - 0x00ba]          ; 0x277c
    call thunk_13                    ; 0x2780
    add sp, byte 6                   ; 0x2783
    call bios_kbd_check              ; 0x2786
    cmp word [bp + 0xa], byte 0      ; 0x2789
    je short @..ds_app_file_23ef.l19 ; 0x278d
    mov ax, 0                        ; 0x278f
    push ax                          ; 0x2792
    push ax                          ; 0x2793
    mov ax, 0xbb8                    ; 0x2794
    push ax                          ; 0x2797
    call ds_app_23a8                 ; 0x2798
    add sp, byte 4                   ; 0x279b
    push ax                          ; 0x279e
    call aztec_open                  ; 0x279f
    add sp, byte 4                   ; 0x27a2
    mov word [bss_0e24], ax          ; 0x27a5
    cmp ax, strict word 0xffff       ; 0x27a8
    jne short @..ds_app_file_23ef.l17 ; 0x27ab
    mov ax, 0x19                     ; 0x27ad
    push ax                          ; 0x27b0
    call ds_app_03b8                 ; 0x27b1
    pop cx                           ; 0x27b4
@..ds_app_file_23ef.l17:
    mov ax, 0                        ; 0x27b5
    push ax                          ; 0x27b8
    mov ax, 1                        ; 0x27b9
    cmp word [bp - 0x00ae], byte 0   ; 0x27bc
    jne short @..ds_app_file_23ef.l18 ; 0x27c1
    mov ax, 0                        ; 0x27c3
@..ds_app_file_23ef.l18:
    push ax                          ; 0x27c6
    mov ax, 0xbc0                    ; 0x27c7
    push ax                          ; 0x27ca
    call ds_app_23a8                 ; 0x27cb
    add sp, byte 4                   ; 0x27ce
    push ax                          ; 0x27d1
    call aztec_open                  ; 0x27d2
    add sp, byte 4                   ; 0x27d5
    mov word [bss_0e22], ax          ; 0x27d8
    cmp ax, strict word 0xffff       ; 0x27db
    jne short @..ds_app_file_23ef.l19 ; 0x27de
    mov ax, 0x1a                     ; 0x27e0
    push ax                          ; 0x27e3
    call ds_app_03b8                 ; 0x27e4
    pop cx                           ; 0x27e7
@..ds_app_file_23ef.l19:
    ret                              ; 0x27e8
