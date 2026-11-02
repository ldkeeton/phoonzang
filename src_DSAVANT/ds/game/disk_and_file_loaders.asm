; auto-generated
prompt_disk_swap:
    mov ax, 0xff46                   ; 0x23ef
    call aztec_csav                  ; 0x23f2
    mov word [bp - 0xb0], 0x37       ; 0x23f5
    mov word [bp - 0xb2], 0x8f       ; 0x23fb
    mov word [bp - 0xb4], 0x108      ; 0x2401
    mov word [bp - 0xb6], 0xc5       ; 0x2407
    mov ax, word [bp - 0xb6]         ; 0x240d
    inc ax                           ; 0x2411
    push ax                          ; 0x2412
    mov ax, word [bp - 0xb4]         ; 0x2413
    inc ax                           ; 0x2417
    push ax                          ; 0x2418
    mov ax, word [bp - 0xb2]         ; 0x2419
    dec ax                           ; 0x241d
    push ax                          ; 0x241e
    mov ax, word [bp - 0xb0]         ; 0x241f
    dec ax                           ; 0x2423
    push ax                          ; 0x2424
    call call_save_area              ; 0x2425
    add sp, byte 8                   ; 0x2428
    mov word [bp - 0xb8], dx         ; 0x242b
    mov word [bp - 0xba], ax         ; 0x242f
    mov ax, 0                        ; 0x2433
    push ax                          ; 0x2436
    call call_wait_sound             ; 0x2437
    pop cx                           ; 0x243a
    mov ax, word [bp + 6]            ; 0x243b
    mov word [bp - 0xae], ax         ; 0x243e
    push word [bp + 4]               ; 0x2442
    lea ax, word [bp - 0x78]         ; 0x2445
    push ax                          ; 0x2448
    call aztec_strcpy                ; 0x2449
    add sp, byte 4                   ; 0x244c
    cmp word [bp + 8], byte 0        ; 0x244f
    je short .forward1               ; 0x2453
    push word [msg_dbs_fd]           ; 0x2455
    call aztec_close                 ; 0x2459
    pop cx                           ; 0x245c
    push word [data_file_fd]         ; 0x245d
    call aztec_close                 ; 0x2461
    pop cx                           ; 0x2464
.forward1:
    mov word [bp - 0xaa], 0xfffe     ; 0x2465
.back1:
    mov word [bp - 0xa8], 0          ; 0x246b
.back2:
    cmp word [bp + 6], byte 0        ; 0x2471
    jge short .forward2              ; 0x2475
    mov ax, str_insert_savegame_disk ; 0x2477
    push ax                          ; 0x247a
    lea ax, word [bp - 0x50]         ; 0x247b
    push ax                          ; 0x247e
    call aztec_strcpy                ; 0x247f
    add sp, byte 4                   ; 0x2482
    jmp short .forward3              ; 0x2485
.forward2:
    mov ax, word [bp + 6]            ; 0x2487
    add ax, strict word 0x41         ; 0x248a
    mov byte [bp - 0xa0], al         ; 0x248d
    mov byte [bp - 0x9f], 0          ; 0x2491
    mov ax, str_insert_disk_n        ; 0x2496
    push ax                          ; 0x2499
    lea ax, word [bp - 0x50]         ; 0x249a
    push ax                          ; 0x249d
    call aztec_strcpy                ; 0x249e
    add sp, byte 4                   ; 0x24a1
    mov ax, 0x5e                     ; 0x24a4
    push ax                          ; 0x24a7
    lea ax, word [bp - 0xa0]         ; 0x24a8
    push ax                          ; 0x24ac
    lea ax, word [bp - 0x50]         ; 0x24ad
    push ax                          ; 0x24b0
    call str_subst_char              ; 0x24b1
    add sp, byte 6                   ; 0x24b4
.forward3:
    push word [bp - 0xb6]            ; 0x24b7
    push word [bp - 0xb4]            ; 0x24bb
    push word [bp - 0xb2]            ; 0x24bf
    push word [bp - 0xb0]            ; 0x24c3
    call draw_dialog_box             ; 0x24c7
    add sp, byte 8                   ; 0x24ca
    mov ax, 0xc2                     ; 0x24cd
    push ax                          ; 0x24d0
    mov ax, 1                        ; 0x24d1
    push ax                          ; 0x24d4
    call call_set_text_color         ; 0x24d5
    add sp, byte 4                   ; 0x24d8
    mov ax, word [bp - 0xb2]         ; 0x24db
    add ax, strict word 0xc          ; 0x24df
    push ax                          ; 0x24e2
    lea ax, word [bp - 0x50]         ; 0x24e3
    push ax                          ; 0x24e6
    call aztec_strlen                ; 0x24e7
    pop cx                           ; 0x24ea
    mov cx, 6                        ; 0x24eb
    imul cx                          ; 0x24ee
    mov cx, ax                       ; 0x24f0
    mov ax, word [bp - 0xb4]         ; 0x24f2
    sub ax, word [bp - 0xb0]         ; 0x24f6
    inc ax                           ; 0x24fa
    sub ax, cx                       ; 0x24fb
    mov cx, 2                        ; 0x24fd
    cwd                              ; 0x2500
    idiv cx                          ; 0x2501
    add ax, word [bp - 0xb0]         ; 0x2503
    push ax                          ; 0x2507
    call call_set_text_pos           ; 0x2508
    add sp, byte 4                   ; 0x250b
    mov ax, 0                        ; 0x250e
    push ax                          ; 0x2511
    lea ax, word [bp - 0x50]         ; 0x2512
    push ax                          ; 0x2515
    call draw_text_glyphs            ; 0x2516
    add sp, byte 4                   ; 0x2519
    mov ax, str_into_drive           ; 0x251c
    push ax                          ; 0x251f
    lea ax, word [bp - 0x50]         ; 0x2520
    push ax                          ; 0x2523
    call aztec_strcpy                ; 0x2524
    add sp, byte 4                   ; 0x2527
    mov ax, 0x5e                     ; 0x252a
    push ax                          ; 0x252d
    lea ax, word [bp - 0x78]         ; 0x252e
    push ax                          ; 0x2531
    lea ax, word [bp - 0x50]         ; 0x2532
    push ax                          ; 0x2535
    call str_subst_char              ; 0x2536
    add sp, byte 6                   ; 0x2539
    mov ax, word [bp - 0xb2]         ; 0x253c
    add ax, strict word 0x12         ; 0x2540
    push ax                          ; 0x2543
    lea ax, word [bp - 0x50]         ; 0x2544
    push ax                          ; 0x2547
    call aztec_strlen                ; 0x2548
    pop cx                           ; 0x254b
    mov cx, 6                        ; 0x254c
    imul cx                          ; 0x254f
    mov cx, ax                       ; 0x2551
    mov ax, word [bp - 0xb4]         ; 0x2553
    sub ax, word [bp - 0xb0]         ; 0x2557
    inc ax                           ; 0x255b
    sub ax, cx                       ; 0x255c
    mov cx, 2                        ; 0x255e
    cwd                              ; 0x2561
    idiv cx                          ; 0x2562
    add ax, word [bp - 0xb0]         ; 0x2564
    push ax                          ; 0x2568
    call call_set_text_pos           ; 0x2569
    add sp, byte 4                   ; 0x256c
    mov ax, 0                        ; 0x256f
    push ax                          ; 0x2572
    lea ax, word [bp - 0x50]         ; 0x2573
    push ax                          ; 0x2576
    call draw_text_glyphs            ; 0x2577
    add sp, byte 4                   ; 0x257a
    mov ax, str_continue             ; 0x257d
    push ax                          ; 0x2580
    mov ax, 1                        ; 0x2581
    push ax                          ; 0x2584
    push ax                          ; 0x2585
    mov ax, 0xc                      ; 0x2586
    push ax                          ; 0x2589
    mov ax, word [bp - 0xb2]         ; 0x258a
    add ax, strict word 0x27         ; 0x258e
    push ax                          ; 0x2591
    mov ax, word [bp - 0xb0]         ; 0x2592
    add ax, strict word 0x44         ; 0x2596
    push ax                          ; 0x2599
    call draw_button                 ; 0x259a
    add sp, byte 0xc                 ; 0x259d
    mov ax, 0                        ; 0x25a0
    push ax                          ; 0x25a3
    mov ax, 0xd                      ; 0x25a4
    push ax                          ; 0x25a7
    mov ax, word [bp - 0xb2]         ; 0x25a8
    add ax, strict word 0x2f         ; 0x25ac
    push ax                          ; 0x25af
    mov ax, word [bp - 0xb0]         ; 0x25b0
    add ax, 0x8c                     ; 0x25b4
    push ax                          ; 0x25b7
    mov ax, word [bp - 0xb2]         ; 0x25b8
    add ax, strict word 0x27         ; 0x25bc
    push ax                          ; 0x25bf
    mov ax, word [bp - 0xb0]         ; 0x25c0
    add ax, strict word 0x44         ; 0x25c4
    push ax                          ; 0x25c7
    mov ax, 0                        ; 0x25c8
    push ax                          ; 0x25cb
    call set_hotspot                 ; 0x25cc
    add sp, byte 0xe                 ; 0x25cf
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
    call set_hotspot                 ; 0x25e2
    add sp, byte 0xe                 ; 0x25e5
    mov ax, word [bp - 0xb6]         ; 0x25e8
    inc ax                           ; 0x25ec
    push ax                          ; 0x25ed
    mov ax, word [bp - 0xb4]         ; 0x25ee
    inc ax                           ; 0x25f2
    push ax                          ; 0x25f3
    mov ax, word [bp - 0xb2]         ; 0x25f4
    dec ax                           ; 0x25f8
    push ax                          ; 0x25f9
    mov ax, word [bp - 0xb0]         ; 0x25fa
    dec ax                           ; 0x25fe
    push ax                          ; 0x25ff
    call call_show_area              ; 0x2600
    add sp, byte 8                   ; 0x2603
    mov word [bp - 0xa4], 1          ; 0x2606
.back3:
    mov ax, hotspot_rects            ; 0x260c
    push ax                          ; 0x260f
    call poll_hotspots               ; 0x2610
    pop cx                           ; 0x2613
    cmp word [hotspot_hit], byte 1   ; 0x2614
    jne short .forward4              ; 0x2619
    mov ax, 1                        ; 0x261b
    push ax                          ; 0x261e
    push ax                          ; 0x261f
    mov ax, 0xc                      ; 0x2620
    push ax                          ; 0x2623
    mov ax, word [bp - 0xb2]         ; 0x2624
    add ax, strict word 0x27         ; 0x2628
    push ax                          ; 0x262b
    mov ax, word [bp - 0xb0]         ; 0x262c
    add ax, strict word 0x44         ; 0x2630
    push ax                          ; 0x2633
    call flash_button                ; 0x2634
    add sp, byte 0xa                 ; 0x2637
    mov ax, 0                        ; 0x263a
    push ax                          ; 0x263d
    mov ax, 1                        ; 0x263e
    push ax                          ; 0x2641
    mov ax, 0xc                      ; 0x2642
    push ax                          ; 0x2645
    mov ax, word [bp - 0xb2]         ; 0x2646
    add ax, strict word 0x27         ; 0x264a
    push ax                          ; 0x264d
    mov ax, word [bp - 0xb0]         ; 0x264e
    add ax, strict word 0x44         ; 0x2652
    push ax                          ; 0x2655
    call flash_button                ; 0x2656
    add sp, byte 0xa                 ; 0x2659
    mov word [bp - 0xa4], 0          ; 0x265c
.forward4:
    cmp word [bp - 0xa4], byte 0     ; 0x2662
    jne short .back3                 ; 0x2667
    call flush_keyboard              ; 0x2669
    mov ax, 0                        ; 0x266c
    push ax                          ; 0x266f
    push word [bp - 0xb8]            ; 0x2670
    push word [bp - 0xba]            ; 0x2674
    call call_restore_area           ; 0x2678
    add sp, byte 6                   ; 0x267b
    mov ax, word [bp - 0xb6]         ; 0x267e
    inc ax                           ; 0x2682
    push ax                          ; 0x2683
    mov ax, word [bp - 0xb4]         ; 0x2684
    inc ax                           ; 0x2688
    push ax                          ; 0x2689
    mov ax, word [bp - 0xb2]         ; 0x268a
    dec ax                           ; 0x268e
    push ax                          ; 0x268f
    mov ax, word [bp - 0xb0]         ; 0x2690
    dec ax                           ; 0x2694
    push ax                          ; 0x2695
    call call_show_area              ; 0x2696
    add sp, byte 8                   ; 0x2699
    lea ax, word [bp - 0x78]         ; 0x269c
    push ax                          ; 0x269f
    lea ax, word [bp - 0xa0]         ; 0x26a0
    push ax                          ; 0x26a4
    call aztec_strcpy                ; 0x26a5
    add sp, byte 4                   ; 0x26a8
    mov ax, str_disk_hdr             ; 0x26ab
    push ax                          ; 0x26ae
    lea ax, word [bp - 0xa0]         ; 0x26af
    push ax                          ; 0x26b3
    call aztec_strcat                ; 0x26b4
    add sp, byte 4                   ; 0x26b7
    mov ax, 0                        ; 0x26ba
    push ax                          ; 0x26bd
    lea ax, word [bp - 0xa0]         ; 0x26be
    push ax                          ; 0x26c2
    call aztec_open                  ; 0x26c3
    add sp, byte 4                   ; 0x26c6
    mov word [bp - 0xa2], ax         ; 0x26c9
    cmp word [bp + 6], byte 0        ; 0x26cd
    jge short .forward7              ; 0x26d1
    cmp ax, strict word 0xffff       ; 0x26d3
    jne short .forward5              ; 0x26d6
    mov word [bp - 0xa8], 1          ; 0x26d8
    jmp short .forward6              ; 0x26de
.forward5:
    push ax                          ; 0x26e0
    call aztec_close                 ; 0x26e1
    pop cx                           ; 0x26e4
    cmp byte [install_mode], 1       ; 0x26e5
    jne short .forward6              ; 0x26ea
    mov word [bp - 0xa8], 1          ; 0x26ec
.forward6:
    jmp short .forward11             ; 0x26f2
.forward7:
    cmp word [bp - 0xa2], byte -1    ; 0x26f4
    je short .forward11              ; 0x26f9
    mov ax, 0x30c                    ; 0x26fb
    push ax                          ; 0x26fe
    mov ax, disk_header              ; 0x26ff
    push ax                          ; 0x2702
    push word [bp - 0xa2]            ; 0x2703
    call aztec_read                  ; 0x2707
    add sp, byte 6                   ; 0x270a
    mov word [bp - 0xa6], ax         ; 0x270d
    cmp byte [install_mode], 5       ; 0x2711
    jne short .forward8              ; 0x2716
    mov ax, word [bp + 6]            ; 0x2718
    cmp ax, strict word 0            ; 0x271b
    jle short .forward8              ; 0x271e
    dec ax                           ; 0x2720
    dec ax                           ; 0x2721
    jmp short .forward9              ; 0x2722
.forward8:
    mov ax, word [bp + 6]            ; 0x2724
.forward9:
    mov word [bp - 0xac], ax         ; 0x2727
    cmp word [bp - 0xa6], byte 0     ; 0x272b
    jle short .forward10             ; 0x2730
    cmp ax, word [disk_header]       ; 0x2732
    jne short .forward10             ; 0x2736
    mov word [bp - 0xa8], 1          ; 0x2738
.forward10:
    push word [bp - 0xa2]            ; 0x273e
    call aztec_close                 ; 0x2742
    pop cx                           ; 0x2745
.forward11:
    cmp word [bp - 0xa8], byte 0     ; 0x2746
    jne short .forward12             ; 0x274b
    jmp near .back2                  ; 0x274d
.forward12:
    mov ax, word [bp - 0xaa]         ; 0x2750
    mov word [bp + 6], ax            ; 0x2754
    mov word [bp - 0xaa], 0xfffe     ; 0x2757
    mov ax, disk_drive_name          ; 0x275d
    push ax                          ; 0x2760
    lea ax, word [bp - 0x78]         ; 0x2761
    push ax                          ; 0x2764
    call aztec_strcpy                ; 0x2765
    add sp, byte 4                   ; 0x2768
    cmp word [bp + 6], byte -2       ; 0x276b
    je short .forward13              ; 0x276f
    jmp near .back1                  ; 0x2771
.forward13:
    mov ax, 1                        ; 0x2774
    push ax                          ; 0x2777
    push word [bp - 0xb8]            ; 0x2778
    push word [bp - 0xba]            ; 0x277c
    call call_restore_area           ; 0x2780
    add sp, byte 6                   ; 0x2783
    call flush_keyboard              ; 0x2786
    cmp word [bp + 0xa], byte 0      ; 0x2789
    je short .return1                ; 0x278d
    mov ax, 0                        ; 0x278f
    push ax                          ; 0x2792
    push ax                          ; 0x2793
    mov ax, str_msg_dbs              ; 0x2794
    push ax                          ; 0x2797
    call data_file_path              ; 0x2798
    add sp, byte 4                   ; 0x279b
    push ax                          ; 0x279e
    call aztec_open                  ; 0x279f
    add sp, byte 4                   ; 0x27a2
    mov word [msg_dbs_fd], ax        ; 0x27a5
    cmp ax, strict word 0xffff       ; 0x27a8
    jne short .forward14             ; 0x27ab
    mov ax, 0x19                     ; 0x27ad
    push ax                          ; 0x27b0
    call release_and_exit            ; 0x27b1
    pop cx                           ; 0x27b4
.forward14:
    mov ax, 0                        ; 0x27b5
    push ax                          ; 0x27b8
    mov ax, 1                        ; 0x27b9
    cmp word [bp - 0xae], byte 0     ; 0x27bc
    jne short .forward15             ; 0x27c1
    mov ax, 0                        ; 0x27c3
.forward15:
    push ax                          ; 0x27c6
    mov ax, str_scenario_dbs         ; 0x27c7
    push ax                          ; 0x27ca
    call data_file_path              ; 0x27cb
    add sp, byte 4                   ; 0x27ce
    push ax                          ; 0x27d1
    call aztec_open                  ; 0x27d2
    add sp, byte 4                   ; 0x27d5
    mov word [data_file_fd], ax      ; 0x27d8
    cmp ax, strict word 0xffff       ; 0x27db
    jne short .return1               ; 0x27de
    mov ax, 0x1a                     ; 0x27e0
    push ax                          ; 0x27e3
    call release_and_exit            ; 0x27e4
    pop cx                           ; 0x27e7
.return1:
    ret                              ; 0x27e8
ensure_game_disk:
    mov ax, 0xffe8                   ; 0x27e9
    call aztec_csav                  ; 0x27ec
    mov word [bp - 0x16], 0          ; 0x27ef
    mov al, byte [install_mode]      ; 0x27f4
    sub ah, ah                       ; 0x27f7
    jmp short .forward1              ; 0x27f9
.back1:
    mov word [bp - 0x16], 0          ; 0x27fb
    jmp short .forward2              ; 0x2800
.forward1:
    cmp ax, strict word 0            ; 0x2802
    je short .back1                  ; 0x2805
    cmp ax, strict word 1            ; 0x2807
    je short .back1                  ; 0x280a
.forward2:
    cmp byte [install_mode], 5       ; 0x280c
    jne short .forward3              ; 0x2811
    mov ax, word [bp - 0x16]         ; 0x2813
    cmp ax, strict word 0            ; 0x2816
    jle short .forward3              ; 0x2819
    dec ax                           ; 0x281b
    dec ax                           ; 0x281c
    jmp short .forward4              ; 0x281d
.forward3:
    mov ax, word [bp - 0x16]         ; 0x281f
.forward4:
    mov word [bp - 0x18], ax         ; 0x2822
    cmp ax, word [disk_header]       ; 0x2825
    je short .return1                ; 0x2829
    mov ax, 0x3a                     ; 0x282b
    push ax                          ; 0x282e
    mov ax, data_path_prefixes       ; 0x282f
    push ax                          ; 0x2832
    lea ax, word [bp - 0x14]         ; 0x2833
    push ax                          ; 0x2836
    call copy_through_char           ; 0x2837
    add sp, byte 6                   ; 0x283a
    mov ax, 1                        ; 0x283d
    push ax                          ; 0x2840
    push ax                          ; 0x2841
    push word [bp - 0x16]            ; 0x2842
    lea ax, word [bp - 0x14]         ; 0x2845
    push ax                          ; 0x2848
    call prompt_disk_swap            ; 0x2849
    add sp, byte 8                   ; 0x284c
    mov ax, 0xc7                     ; 0x284f
    push ax                          ; 0x2852
    mov ax, 0x13f                    ; 0x2853
    push ax                          ; 0x2856
    mov ax, 0                        ; 0x2857
    push ax                          ; 0x285a
    push ax                          ; 0x285b
    call call_show_area              ; 0x285c
    add sp, byte 8                   ; 0x285f
.return1:
    ret                              ; 0x2862
load_monster_picture:
    mov ax, 0xffe8                   ; 0x2863
    call aztec_csav                  ; 0x2866
    mov ax, 0                        ; 0x2869
    push ax                          ; 0x286c
    call call_wait_sound             ; 0x286d
    pop cx                           ; 0x2870
    mov bx, word [bp + 6]            ; 0x2871
    mov al, byte [bx + picture_slot_number] ; 0x2874
    sub ah, ah                       ; 0x2878
    cmp ax, word [bp + 4]            ; 0x287a
    jne short .forward1              ; 0x287d
    jmp near .return1                ; 0x287f
.forward1:
    mov ax, 0                        ; 0x2882
    push ax                          ; 0x2885
    push word [bp + 4]               ; 0x2886
    mov ax, 0x15e                    ; 0x2889
    imul bx                          ; 0x288c
    add ax, slot_recs                ; 0x288e
    push ax                          ; 0x2891
    mov ax, 8                        ; 0x2892
    push ax                          ; 0x2895
    call data_record_io              ; 0x2896
    add sp, byte 8                   ; 0x2899
    mov ax, monster_pic_name         ; 0x289c
    push ax                          ; 0x289f
    lea ax, word [bp - 0x18]         ; 0x28a0
    push ax                          ; 0x28a3
    call aztec_strcpy                ; 0x28a4
    add sp, byte 4                   ; 0x28a7
    mov ax, word [bp + 4]            ; 0x28aa
    mov cx, 0xa                      ; 0x28ad
    cwd                              ; 0x28b0
    idiv cx                          ; 0x28b1
    add ax, strict word 0x30         ; 0x28b3
    mov byte [bp - 0x15], al         ; 0x28b6
    add dx, byte 0x30                ; 0x28b9
    mov ax, dx                       ; 0x28bc
    mov byte [bp - 0x14], al         ; 0x28be
    mov ax, 0                        ; 0x28c1
    push ax                          ; 0x28c4
    mov ax, 1                        ; 0x28c5
    push ax                          ; 0x28c8
    lea ax, word [bp - 0x18]         ; 0x28c9
    push ax                          ; 0x28cc
    call data_file_path              ; 0x28cd
    add sp, byte 4                   ; 0x28d0
    push ax                          ; 0x28d3
    call aztec_open                  ; 0x28d4
    add sp, byte 4                   ; 0x28d7
    mov word [bp - 4], ax            ; 0x28da
    cmp ax, strict word 0xffff       ; 0x28dd
    jne short .forward2              ; 0x28e0
    mov ax, 0x12                     ; 0x28e2
    push ax                          ; 0x28e5
    call release_and_exit            ; 0x28e6
    pop cx                           ; 0x28e9
.forward2:
    push word [bp + 6]               ; 0x28ea
    push word [bp - 4]               ; 0x28ed
    call call_load_picture           ; 0x28f0
    add sp, byte 4                   ; 0x28f3
    push word [bp - 4]               ; 0x28f6
    call aztec_close                 ; 0x28f9
    pop cx                           ; 0x28fc
    mov al, byte [bp + 4]            ; 0x28fd
    mov bx, word [bp + 6]            ; 0x2900
    mov byte [bx + picture_slot_number], al ; 0x2903
    mov byte [bx + picture_slot_used], 1 ; 0x2907
.return1:
    ret                              ; 0x290c
wait_and_free_sound:
    mov ax, 0                        ; 0x290d
    call aztec_csav                  ; 0x2910
    mov ax, 1                        ; 0x2913
    push ax                          ; 0x2916
    call call_wait_sound             ; 0x2917
    pop cx                           ; 0x291a
    push word [bp + 4]               ; 0x291b
    call call_free_sound             ; 0x291e
    pop cx                           ; 0x2921
    ret                              ; 0x2922
load_sound_file:
    mov ax, 0xffe8                   ; 0x2923
    call aztec_csav                  ; 0x2926
    mov ax, 0                        ; 0x2929
    push ax                          ; 0x292c
    call call_wait_sound             ; 0x292d
    pop cx                           ; 0x2930
    mov ax, 0                        ; 0x2931
    push ax                          ; 0x2934
    push word [bp + 4]               ; 0x2935
    mov ax, 0xc                      ; 0x2938
    imul word [bp + 6]               ; 0x293b
    add ax, sound_slot_info          ; 0x293e
    push ax                          ; 0x2941
    mov ax, 9                        ; 0x2942
    push ax                          ; 0x2945
    call data_record_io              ; 0x2946
    add sp, byte 8                   ; 0x2949
    mov word [bp - 2], 1             ; 0x294c
    mov ax, 0xc                      ; 0x2951
    imul word [bp + 6]               ; 0x2954
    mov bx, ax                       ; 0x2957
    cmp word [bx + sound_slot_info + sound_slot_info_rec.size + 0x2], byte 0 ; 0x2959
    jne short .forward1              ; 0x295e
    cmp word [bx + sound_slot_info + sound_slot_info_rec.size], byte 0 ; 0x2960
.forward1:
    jne short .forward3              ; 0x2965
    mov ax, word [bx + sound_slot_info] ; 0x2967
    mov word [bp + 4], ax            ; 0x296b
    mov ax, 1                        ; 0x296e
    cmp word [bp + 8], byte 0        ; 0x2971
    je short .forward2               ; 0x2975
    mov ax, 0                        ; 0x2977
.forward2:
    mov word [bp - 2], ax            ; 0x297a
.forward3:
    cmp word [bp - 2], byte 0        ; 0x297d
    je short .return1                ; 0x2981
    mov ax, dseg_0bd7                ; 0x2983
    push ax                          ; 0x2986
    lea ax, word [bp - 0x18]         ; 0x2987
    push ax                          ; 0x298a
    call aztec_strcpy                ; 0x298b
    add sp, byte 4                   ; 0x298e
    mov ax, word [bp + 4]            ; 0x2991
    mov cx, 0xa                      ; 0x2994
    cwd                              ; 0x2997
    idiv cx                          ; 0x2998
    add ax, strict word 0x30         ; 0x299a
    mov byte [bp - 0x13], al         ; 0x299d
    add dx, byte 0x30                ; 0x29a0
    mov ax, dx                       ; 0x29a3
    mov byte [bp - 0x12], al         ; 0x29a5
    mov ax, 0                        ; 0x29a8
    push ax                          ; 0x29ab
    mov ax, 1                        ; 0x29ac
    push ax                          ; 0x29af
    lea ax, word [bp - 0x18]         ; 0x29b0
    push ax                          ; 0x29b3
    call data_file_path              ; 0x29b4
    add sp, byte 4                   ; 0x29b7
    push ax                          ; 0x29ba
    call aztec_open                  ; 0x29bb
    add sp, byte 4                   ; 0x29be
    mov word [bp - 4], ax            ; 0x29c1
    cmp ax, strict word 0xffff       ; 0x29c4
    jne short .forward4              ; 0x29c7
    mov ax, 0xb                      ; 0x29c9
    push ax                          ; 0x29cc
    call release_and_exit            ; 0x29cd
    pop cx                           ; 0x29d0
.forward4:
    push word [bp + 6]               ; 0x29d1
    push word [bp - 4]               ; 0x29d4
    call call_load_sound             ; 0x29d7
    add sp, byte 4                   ; 0x29da
    test ax, ax                      ; 0x29dd
    je short .forward5               ; 0x29df
    mov ax, 0xc                      ; 0x29e1
    push ax                          ; 0x29e4
    call release_and_exit            ; 0x29e5
    pop cx                           ; 0x29e8
.forward5:
    push word [bp - 4]               ; 0x29e9
    call aztec_close                 ; 0x29ec
    pop cx                           ; 0x29ef
.return1:
    ret                              ; 0x29f0
ensure_sound_loaded:
    mov ax, 0                        ; 0x29f1
    call aztec_csav                  ; 0x29f4
    mov ax, word [loaded_sound_id]   ; 0x29f7
    cmp ax, word [bp + 4]            ; 0x29fa
    je short .return1                ; 0x29fd
    mov ax, 1                        ; 0x29ff
    push ax                          ; 0x2a02
    call call_wait_sound             ; 0x2a03
    pop cx                           ; 0x2a06
    cmp word [loaded_sound_id], byte -1 ; 0x2a07
    je short .forward1               ; 0x2a0c
    mov ax, 0x10                     ; 0x2a0e
    push ax                          ; 0x2a11
    call wait_and_free_sound         ; 0x2a12
    pop cx                           ; 0x2a15
.forward1:
    mov ax, word [bp + 4]            ; 0x2a16
    mov word [loaded_sound_id], ax   ; 0x2a19
    mov ax, 0                        ; 0x2a1c
    push ax                          ; 0x2a1f
    mov ax, 0x10                     ; 0x2a20
    push ax                          ; 0x2a23
    push word [bp + 4]               ; 0x2a24
    call load_sound_file             ; 0x2a27
    add sp, byte 6                   ; 0x2a2a
.return1:
    ret                              ; 0x2a2d
load_score_files:
    mov ax, 0xff58                   ; 0x2a2e
    call aztec_csav                  ; 0x2a31
    mov al, byte [video_mode]        ; 0x2a34
    sub ah, ah                       ; 0x2a37
    mov word [bp - 0xa8], ax         ; 0x2a39
    cmp ax, strict word 6            ; 0x2a3d
    jne short .forward1              ; 0x2a40
    mov word [bp - 0xa8], 4          ; 0x2a42
.forward1:
    mov ax, dseg_0be3                ; 0x2a48
    push ax                          ; 0x2a4b
    lea ax, word [bp - 0xa4]         ; 0x2a4c
    push ax                          ; 0x2a50
    call aztec_strcpy                ; 0x2a51
    add sp, byte 4                   ; 0x2a54
    mov ax, word [bp + 4]            ; 0x2a57
    mov cx, 0xa                      ; 0x2a5a
    cwd                              ; 0x2a5d
    idiv cx                          ; 0x2a5e
    add ax, strict word 0x30         ; 0x2a60
    mov byte [bp - 0x9f], al         ; 0x2a63
    add dx, byte 0x30                ; 0x2a67
    mov ax, dx                       ; 0x2a6a
    mov byte [bp - 0x9e], al         ; 0x2a6c
    lea ax, word [bp - 0xa4]         ; 0x2a70
    push ax                          ; 0x2a74
    lea ax, word [bp - 0x54]         ; 0x2a75
    push ax                          ; 0x2a78
    call aztec_strcpy                ; 0x2a79
    add sp, byte 4                   ; 0x2a7c
    mov ax, score_ext_csf            ; 0x2a7f
    push ax                          ; 0x2a82
    lea ax, word [bp - 0x54]         ; 0x2a83
    push ax                          ; 0x2a86
    call aztec_strcat                ; 0x2a87
    add sp, byte 4                   ; 0x2a8a
    mov ax, 0                        ; 0x2a8d
    push ax                          ; 0x2a90
    mov ax, 1                        ; 0x2a91
    push ax                          ; 0x2a94
    lea ax, word [bp - 0x54]         ; 0x2a95
    push ax                          ; 0x2a98
    call data_file_path              ; 0x2a99
    add sp, byte 4                   ; 0x2a9c
    push ax                          ; 0x2a9f
    call aztec_open                  ; 0x2aa0
    add sp, byte 4                   ; 0x2aa3
    mov word [bp - 2], ax            ; 0x2aa6
    cmp ax, strict word 0xffff       ; 0x2aa9
    jne short .forward2              ; 0x2aac
    mov ax, 0xf                      ; 0x2aae
    push ax                          ; 0x2ab1
    call release_and_exit            ; 0x2ab2
    pop cx                           ; 0x2ab5
.forward2:
    lea ax, word [bp - 0xa4]         ; 0x2ab6
    push ax                          ; 0x2aba
    lea ax, word [bp - 0x54]         ; 0x2abb
    push ax                          ; 0x2abe
    call aztec_strcpy                ; 0x2abf
    add sp, byte 4                   ; 0x2ac2
    cmp word [bp - 0xa8], byte 5     ; 0x2ac5
    jne short .forward3              ; 0x2aca
    mov ax, score_ext_pbl            ; 0x2acc
    push ax                          ; 0x2acf
    lea ax, word [bp - 0x54]         ; 0x2ad0
    push ax                          ; 0x2ad3
    call aztec_strcat                ; 0x2ad4
    add sp, byte 4                   ; 0x2ad7
    jmp short .forward4              ; 0x2ada
.forward3:
    mov ax, score_ext_pba            ; 0x2adc
    push ax                          ; 0x2adf
    lea ax, word [bp - 0x54]         ; 0x2ae0
    push ax                          ; 0x2ae3
    call aztec_strcat                ; 0x2ae4
    add sp, byte 4                   ; 0x2ae7
.forward4:
    mov ax, 0                        ; 0x2aea
    push ax                          ; 0x2aed
    mov ax, 1                        ; 0x2aee
    push ax                          ; 0x2af1
    lea ax, word [bp - 0x54]         ; 0x2af2
    push ax                          ; 0x2af5
    call data_file_path              ; 0x2af6
    add sp, byte 4                   ; 0x2af9
    push ax                          ; 0x2afc
    call aztec_open                  ; 0x2afd
    add sp, byte 4                   ; 0x2b00
    mov word [bp - 4], ax            ; 0x2b03
    cmp ax, strict word 0xffff       ; 0x2b06
    jne short .forward5              ; 0x2b09
    mov ax, 0x10                     ; 0x2b0b
    push ax                          ; 0x2b0e
    call release_and_exit            ; 0x2b0f
    pop cx                           ; 0x2b12
.forward5:
    push word [bp + 6]               ; 0x2b13
    push word [bp - 0xa8]            ; 0x2b16
    push word [bp - 4]               ; 0x2b1a
    push word [bp - 2]               ; 0x2b1d
    call call_load_score             ; 0x2b20
    add sp, byte 8                   ; 0x2b23
    mov word [bp - 0xa6], ax         ; 0x2b26
    cmp word [bp - 0xa6], byte 0     ; 0x2b2a
    je short .forward6               ; 0x2b2f
    mov ax, 0x11                     ; 0x2b31
    push ax                          ; 0x2b34
    call release_and_exit            ; 0x2b35
    pop cx                           ; 0x2b38
.forward6:
    push word [bp - 2]               ; 0x2b39
    call aztec_close                 ; 0x2b3c
    pop cx                           ; 0x2b3f
    push word [bp - 4]               ; 0x2b40
    call aztec_close                 ; 0x2b43
    pop cx                           ; 0x2b46
    mov ax, word [bp + 4]            ; 0x2b47
    mov word [loaded_score_num], ax  ; 0x2b4a
    ret                              ; 0x2b4d
