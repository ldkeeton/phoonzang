api_idx_001c:
    mov ax, 0xffe4                   ; 0x2565
    call aztec_csav                  ; 0x2568
    mov byte [bp - 0x001c], 0        ; 0x256b
    mov ax, 6                        ; 0x256f
    imul word [bp + 0x4]             ; 0x2572
    mov cx, word [bp + 0x6]          ; 0x2575
    shl cx, 1                        ; 0x2578
    add ax, cx                       ; 0x257a
    mov bx, ax                       ; 0x257c
    mov ax, word [bx - 0x7bc6]       ; 0x257e
    mov cx, 0xa                      ; 0x2582
    cwd                              ; 0x2585
    idiv cx                          ; 0x2586
    mov word [bp - 0x0002], ax       ; 0x2588
    mov word [bp - 0x0004], dx       ; 0x258b
    cmp ax, strict word 1            ; 0x258e
    jl short @..api_idx_001c.l1      ; 0x2591
    cmp ax, strict word 3            ; 0x2593
    jg short @..api_idx_001c.l1      ; 0x2596
    mov ax, word [bp + 0x4]          ; 0x2598
    cmp ax, word [bss_8454]          ; 0x259b
    jle short @..api_idx_001c.l2     ; 0x259f
@..api_idx_001c.l1:
    ret                              ; 0x25a1
@..api_idx_001c.l2:
    mov ax, word [bp - 0x0002]       ; 0x25a2
    shl ax, 1                        ; 0x25a5
    mov bx, ax                       ; 0x25a7
    mov bx, word [bx - 0x7b7e]       ; 0x25a9
    cmp byte [bx + 0x19f], 0xff      ; 0x25ad
    jne short @..api_idx_001c.l3     ; 0x25b2
    ret                              ; 0x25b4
@..api_idx_001c.l3:
    mov al, byte [bx + 0x19f]        ; 0x25b5
    cbw                              ; 0x25b9
    mov word [bp - 0x0006], ax       ; 0x25ba
    lea ax, word [bp - 0x001c]       ; 0x25bd
    push ax                          ; 0x25c0
    push word [bp + 0x10]            ; 0x25c1
    push word [bp + 0x6]             ; 0x25c4
    push word [bp + 0x4]             ; 0x25c7
    push dx                          ; 0x25ca
    push word [bp - 0x0002]          ; 0x25cb
    call api_idx_000e_2              ; 0x25ce
    add sp, byte 0x0c                ; 0x25d1
    cmp byte [bp - 0x001c], 0        ; 0x25d4
    jne short @..api_idx_001c.l4     ; 0x25d8
    ret                              ; 0x25da
@..api_idx_001c.l4:
    mov ax, word [bp + 0x6]          ; 0x25db
    mov cx, 2                        ; 0x25de
    cwd                              ; 0x25e1
    idiv cx                          ; 0x25e2
    mov word [bp - 0x0008], dx       ; 0x25e4
    mov al, byte [bp - 0x001c]       ; 0x25e7
    sub ah, ah                       ; 0x25ea
    mov word [bp - 0x000a], ax       ; 0x25ec
    mov ax, 0x15e                    ; 0x25ef
    imul word [bp - 0x0006]          ; 0x25f2
    mov bx, ax                       ; 0x25f5
    cmp byte [bx + 0x6b75], 0        ; 0x25f7
    je short @..api_idx_001c.l5      ; 0x25fc
    mov word [bp + 0x8], 0           ; 0x25fe
@..api_idx_001c.l5:
    mov cx, word [bp - 0x000a]       ; 0x2603
    shl cx, 1                        ; 0x2606
    shl cx, 1                        ; 0x2608
    add ax, cx                       ; 0x260a
    mov bx, ax                       ; 0x260c
    mov al, byte [bx + 0x6abf]       ; 0x260e
    sub ah, ah                       ; 0x2612
    mov word [bp - 0x000c], ax       ; 0x2614
    cmp word [bp - 0x000c], byte 0   ; 0x2617
    jne short @..api_idx_001c.l6     ; 0x261b
    mov ax, 6                        ; 0x261d
    imul word [bp + 0x4]             ; 0x2620
    mov cx, word [bp + 0x6]          ; 0x2623
    shl cx, 1                        ; 0x2626
    add ax, cx                       ; 0x2628
    mov bx, ax                       ; 0x262a
    mov ax, word [bx + 0x5b6]        ; 0x262c
    sub ax, word [bp - 0x0002]       ; 0x2630
    mov word [bp - 0x000c], ax       ; 0x2633
    jmp short @..api_idx_001c.l8     ; 0x2636
@..api_idx_001c.l6:
    mov ax, 0x64                     ; 0x2638
    push ax                          ; 0x263b
    mov ax, 5                        ; 0x263c
    push ax                          ; 0x263f
    mov ax, 0xa                      ; 0x2640
    imul word [bp + 0x4]             ; 0x2643
    mov cx, ax                       ; 0x2646
    mov ax, 0                        ; 0x2648
    cmp word [bp + 0x6], byte 0      ; 0x264b
    jne short @..api_idx_001c.l7     ; 0x264f
    mov ax, 5                        ; 0x2651
@..api_idx_001c.l7:
    add cx, ax                       ; 0x2654
    mov ax, word [bp - 0x000c]       ; 0x2656
    sub ax, cx                       ; 0x2659
    push ax                          ; 0x265b
    call ds_app_0a09                 ; 0x265c
    add sp, byte 6                   ; 0x265f
    mov word [bp - 0x000c], ax       ; 0x2662
@..api_idx_001c.l8:
    mov ax, word [bp + 0xe]          ; 0x2665
    dec ax                           ; 0x2668
    push ax                          ; 0x2669
    mov ax, 0                        ; 0x266a
    push ax                          ; 0x266d
    mov ax, 0x15e                    ; 0x266e
    imul word [bp - 0x0006]          ; 0x2671
    push ax                          ; 0x2674
    mov ax, word [bp - 0x0008]       ; 0x2675
    mov cx, 2                        ; 0x2678
    cwd                              ; 0x267b
    idiv cx                          ; 0x267c
    mov cx, dx                       ; 0x267e
    pop ax                           ; 0x2680
    add ax, cx                       ; 0x2681
    mov cx, word [bp - 0x000a]       ; 0x2683
    shl cx, 1                        ; 0x2686
    add ax, cx                       ; 0x2688
    mov bx, ax                       ; 0x268a
    mov al, byte [bx + 0x6a52]       ; 0x268c
    sub ah, ah                       ; 0x2690
    push ax                          ; 0x2692
    mov ax, 0x15e                    ; 0x2693
    imul word [bp - 0x0006]          ; 0x2696
    mov cx, word [bp + 0x6]          ; 0x2699
    shl cx, 1                        ; 0x269c
    add ax, cx                       ; 0x269e
    mov bx, ax                       ; 0x26a0
    mov al, byte [bx + 0x6b60]       ; 0x26a2
    cbw                              ; 0x26a6
    mov cx, ax                       ; 0x26a7
    pop ax                           ; 0x26a9
    add ax, cx                       ; 0x26aa
    push ax                          ; 0x26ac
    call ds_app_0a09                 ; 0x26ad
    add sp, byte 6                   ; 0x26b0
    mov word [bp - 0x000e], ax       ; 0x26b3
    mov ax, 0x15e                    ; 0x26b6
    imul word [bp - 0x0006]          ; 0x26b9
    add ax, word [bp - 0x000a]       ; 0x26bc
    mov bx, ax                       ; 0x26bf
    mov al, byte [bx + 0x6a9b]       ; 0x26c1
    sub ah, ah                       ; 0x26c5
    push ax                          ; 0x26c7
    mov ax, 0x15e                    ; 0x26c8
    imul word [bp - 0x0006]          ; 0x26cb
    mov cx, word [bp + 0x6]          ; 0x26ce
    shl cx, 1                        ; 0x26d1
    add ax, cx                       ; 0x26d3
    mov bx, ax                       ; 0x26d5
    mov al, byte [bx + 0x6b61]       ; 0x26d7
    cbw                              ; 0x26db
    mov cx, ax                       ; 0x26dc
    pop ax                           ; 0x26de
    add ax, cx                       ; 0x26df
    mov word [bp - 0x0010], ax       ; 0x26e1
    cmp word [bss_8466], byte 1      ; 0x26e4
    jne short @..api_idx_001c.l9     ; 0x26e9
    mov bx, word [bss_8484]          ; 0x26eb
    cmp byte [bx + 0x1a1], 1         ; 0x26ef
    jne short @..api_idx_001c.l9     ; 0x26f4
    cmp word [bp + 0x4], byte 0      ; 0x26f6
    jne short @..api_idx_001c.l9     ; 0x26fa
    mov word [bp + 0xa], 0           ; 0x26fc
@..api_idx_001c.l9:
    mov ax, 0xa0                     ; 0x2701
    sub ax, word [bp - 0x000e]       ; 0x2704
    imul word [bp + 0xa]             ; 0x2707
    mov cx, 0x64                     ; 0x270a
    cwd                              ; 0x270d
    idiv cx                          ; 0x270e
    add word [bp - 0x000e], ax       ; 0x2710
    mov ax, word [bp - 0x0008]       ; 0x2713
    mov cx, 2                        ; 0x2716
    cwd                              ; 0x2719
    idiv cx                          ; 0x271a
    mov ax, dx                       ; 0x271c
    test ax, ax                      ; 0x271e
    je short @..api_idx_001c.l10     ; 0x2720
    mov ax, 0x15e                    ; 0x2722
    imul word [bp - 0x0006]          ; 0x2725
    mov cx, ax                       ; 0x2728
    mov ax, word [bp - 0x0008]       ; 0x272a
    mov bx, 2                        ; 0x272d
    cwd                              ; 0x2730
    idiv bx                          ; 0x2731
    mov ax, dx                       ; 0x2733
    add cx, ax                       ; 0x2735
    mov ax, cx                       ; 0x2737
    mov cx, word [bp - 0x000a]       ; 0x2739
    shl cx, 1                        ; 0x273c
    add ax, cx                       ; 0x273e
    mov bx, ax                       ; 0x2740
    mov al, byte [bx + 0x6a52]       ; 0x2742
    sub ah, ah                       ; 0x2746
    mov cx, ax                       ; 0x2748
    mov ax, 0xa0                     ; 0x274a
    sub ax, cx                       ; 0x274d
    shl ax, 1                        ; 0x274f
    imul word [bp + 0xa]             ; 0x2751
    mov cx, 0x64                     ; 0x2754
    cwd                              ; 0x2757
    idiv cx                          ; 0x2758
    sub word [bp - 0x000e], ax       ; 0x275a
@..api_idx_001c.l10:
    mov ax, word [bp + 0xe]          ; 0x275d
    dec ax                           ; 0x2760
    push ax                          ; 0x2761
    mov ax, 0                        ; 0x2762
    push ax                          ; 0x2765
    mov ax, word [bp - 0x000e]       ; 0x2766
    add ax, word [bp + 0x8]          ; 0x2769
    push ax                          ; 0x276c
    call ds_app_0a09                 ; 0x276d
    add sp, byte 6                   ; 0x2770
    mov word [bp - 0x000e], ax       ; 0x2773
    mov ax, 0x3d                     ; 0x2776
    sub ax, word [bp - 0x0010]       ; 0x2779
    imul word [bp + 0xa]             ; 0x277c
    mov cx, 0x64                     ; 0x277f
    cwd                              ; 0x2782
    idiv cx                          ; 0x2783
    add word [bp - 0x0010], ax       ; 0x2785
    lea ax, word [bp - 0x001c]       ; 0x2788
    push ax                          ; 0x278b
    push word [bp + 0xa]             ; 0x278c
    push word [bp - 0x0008]          ; 0x278f
    push word [bp + 0xe]             ; 0x2792
    push word [bp + 0xc]             ; 0x2795
    push word [bp - 0x0010]          ; 0x2798
    push word [bp - 0x000e]          ; 0x279b
    push word [bp - 0x0006]          ; 0x279e
    push word [bp - 0x000c]          ; 0x27a1
    call api_idx_0004_6              ; 0x27a4
    add sp, byte 0x12                ; 0x27a7
    ret                              ; 0x27aa
