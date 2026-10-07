api_idx_0084:
    mov ax, 0xff7c                   ; 0x25ab
    call ds_dispatch_f40b            ; 0x25ae
    mov word [bp - 0x0002], 0        ; 0x25b1
    jmp short @..api_idx_0084.l2     ; 0x25b6
@..api_idx_0084.l1:
    mov ax, 0x14                     ; 0x25b8
    imul word [bp - 0x0002]          ; 0x25bb
    add ax, 0xe38                    ; 0x25be
    push ax                          ; 0x25c1
    mov ax, word [bp - 0x0002]       ; 0x25c2
    shl ax, 1                        ; 0x25c5
    mov bx, ax                       ; 0x25c7
    mov ax, word [bx - 0x6cbe]       ; 0x25c9
    add ax, 0x14b4                   ; 0x25cd
    push ax                          ; 0x25d0
    call ds_dispatch_b53b            ; 0x25d1
    add sp, byte 4                   ; 0x25d4
    inc word [bp - 0x0002]           ; 0x25d7
@..api_idx_0084.l2:
    mov ax, word [bp - 0x0002]       ; 0x25da
    cmp ax, word [bp + 0xc]          ; 0x25dd
    jl short @..api_idx_0084.l1      ; 0x25e0
    mov word [data_911c], 0x8d       ; 0x25e2
    mov word [bp - 0x0078], 0        ; 0x25e8
    cmp word [data_9250], byte 0xff  ; 0x25ed
    je short @..api_idx_0084.l5      ; 0x25f2
    mov word [bp - 0x0004], 0        ; 0x25f4
@..api_idx_0084.l3:
    mov ax, 0xa                      ; 0x25f9
    imul word [data_9250]            ; 0x25fc
    add ax, word [bp - 0x0004]       ; 0x2600
    mov bx, ax                       ; 0x2603
    cmp byte [bx - 0x6dae], 0x2d     ; 0x2605
    je short @..api_idx_0084.l4      ; 0x260a
    inc word [bp - 0x0078]           ; 0x260c
@..api_idx_0084.l4:
    inc word [bp - 0x0004]           ; 0x260f
    mov ax, word [bp - 0x0004]       ; 0x2612
    cmp ax, strict word 8            ; 0x2615
    jl short @..api_idx_0084.l3      ; 0x2618
@..api_idx_0084.l5:
    mov word [data_904e], 0xffff     ; 0x261a
    mov word [bp - 0x0006], 0x37     ; 0x2620
    mov word [bp - 0x0008], 0x8f     ; 0x2625
    mov word [bp - 0x000a], 0x108    ; 0x262a
    mov word [bp - 0x000c], 0xc5     ; 0x262f
    mov word [bp - 0x0014], 0x16     ; 0x2634
    mov word [bp - 0x0024], 1        ; 0x2639
    mov ax, 0x90cd                   ; 0x263e
    push ax                          ; 0x2641
    mov ax, word [bp - 0x000c]       ; 0x2642
    inc ax                           ; 0x2645
    push ax                          ; 0x2646
    mov ax, word [bp - 0x000a]       ; 0x2647
    inc ax                           ; 0x264a
    push ax                          ; 0x264b
    mov ax, word [bp - 0x0008]       ; 0x264c
    dec ax                           ; 0x264f
    push ax                          ; 0x2650
    mov ax, word [bp - 0x0006]       ; 0x2651
    dec ax                           ; 0x2654
    push ax                          ; 0x2655
    call ds_dispatch_c283            ; 0x2656
    add sp, byte 0x0a                ; 0x2659
    mov word [bp - 0x0076], ax       ; 0x265c
    push word [bp - 0x000c]          ; 0x265f
    push word [bp - 0x000a]          ; 0x2662
    push word [bp - 0x0008]          ; 0x2665
    push word [bp - 0x0006]          ; 0x2668
    call ds_dispatch_bc9a            ; 0x266b
    add sp, byte 8                   ; 0x266e
    mov ax, 0xc2                     ; 0x2671
    push ax                          ; 0x2674
    mov ax, 1                        ; 0x2675
    push ax                          ; 0x2678
    call ds_dispatch_e823            ; 0x2679
    add sp, byte 4                   ; 0x267c
    mov ax, word [bp - 0x0008]       ; 0x267f
    add ax, strict word 6            ; 0x2682
    push ax                          ; 0x2685
    mov ax, 0x248                    ; 0x2686
    imul word [bp + 0x4]             ; 0x2689
    add ax, 0x5bf4                   ; 0x268c
    push ax                          ; 0x268f
    call ds_dispatch_fa90            ; 0x2690
    pop cx                           ; 0x2693
    mov cx, 6                        ; 0x2694
    imul cx                          ; 0x2697
    mov cx, data_0002                ; 0x2699
    cwd                              ; 0x269c
    idiv cx                          ; 0x269d
    mov cx, ax                       ; 0x269f
    mov ax, word [bp - 0x0006]       ; 0x26a1
    add ax, strict word 0x1b         ; 0x26a4
    sub ax, cx                       ; 0x26a7
    push ax                          ; 0x26a9
    call ds_dispatch_e809            ; 0x26aa
    add sp, byte 4                   ; 0x26ad
    mov ax, 0                        ; 0x26b0
    push ax                          ; 0x26b3
    mov ax, 0x248                    ; 0x26b4
    imul word [bp + 0x4]             ; 0x26b7
    add ax, 0x5bf4                   ; 0x26ba
    push ax                          ; 0x26bd
    call ds_dispatch_e84e            ; 0x26be
    add sp, byte 4                   ; 0x26c1
    mov ax, 0x90d3                   ; 0x26c4
    push ax                          ; 0x26c7
    lea ax, word [bp - 0x0074]       ; 0x26c8
    push ax                          ; 0x26cb
    call ds_dispatch_f364            ; 0x26cc
    add sp, byte 4                   ; 0x26cf
    lea ax, word [bp - 0x0073]       ; 0x26d2
    push ax                          ; 0x26d5
    mov ax, 0x248                    ; 0x26d6
    imul word [bp + 0x4]             ; 0x26d9
    mov bx, ax                       ; 0x26dc
    mov al, byte [bx + 0x5d7c]       ; 0x26de
    sub ah, ah                       ; 0x26e2
    push ax                          ; 0x26e4
    call ds_dispatch_b27d            ; 0x26e5
    add sp, byte 4                   ; 0x26e8
    mov ax, 0x90d5                   ; 0x26eb
    push ax                          ; 0x26ee
    lea ax, word [bp - 0x0074]       ; 0x26ef
    push ax                          ; 0x26f2
    call ds_dispatch_f32d            ; 0x26f3
    add sp, byte 4                   ; 0x26f6
    mov ax, word [bp - 0x0008]       ; 0x26f9
    add ax, strict word 0xc          ; 0x26fc
    push ax                          ; 0x26ff
    lea ax, word [bp - 0x0074]       ; 0x2700
    push ax                          ; 0x2703
    call ds_dispatch_fa90            ; 0x2704
    pop cx                           ; 0x2707
    mov cx, 6                        ; 0x2708
    imul cx                          ; 0x270b
    mov cx, data_0002                ; 0x270d
    cwd                              ; 0x2710
    idiv cx                          ; 0x2711
    mov cx, ax                       ; 0x2713
    mov ax, word [bp - 0x0006]       ; 0x2715
    add ax, strict word 0x1b         ; 0x2718
    sub ax, cx                       ; 0x271b
    push ax                          ; 0x271d
    call ds_dispatch_e809            ; 0x271e
    add sp, byte 4                   ; 0x2721
    mov ax, 0                        ; 0x2724
    push ax                          ; 0x2727
    lea ax, word [bp - 0x0074]       ; 0x2728
    push ax                          ; 0x272b
    call ds_dispatch_e84e            ; 0x272c
    add sp, byte 4                   ; 0x272f
    mov ax, word [bp - 0x0008]       ; 0x2732
    add ax, strict word 0x11         ; 0x2735
    push ax                          ; 0x2738
    mov ax, word [bp - 0x0006]       ; 0x2739
    add ax, strict word 0x50         ; 0x273c
    push ax                          ; 0x273f
    mov ax, word [bp - 0x0008]       ; 0x2740
    add ax, strict word 5            ; 0x2743
    push ax                          ; 0x2746
    mov ax, word [bp - 0x0006]       ; 0x2747
    add ax, strict word 0x36         ; 0x274a
    push ax                          ; 0x274d
    call ds_dispatch_bd98            ; 0x274e
    add sp, byte 8                   ; 0x2751
    mov ax, 0                        ; 0x2754
    push ax                          ; 0x2757
    mov ax, word [bp - 0x0008]       ; 0x2758
    add ax, strict word 6            ; 0x275b
    push ax                          ; 0x275e
    mov ax, word [bp - 0x0006]       ; 0x275f
    add ax, strict word 0x38         ; 0x2762
    push ax                          ; 0x2765
    mov ax, 0                        ; 0x2766
    push ax                          ; 0x2769
    call api_idx_0002_2              ; 0x276a
    add sp, byte 8                   ; 0x276d
    lea ax, word [bp - 0x004c]       ; 0x2770
    push ax                          ; 0x2773
    push word [bp + 0x6]             ; 0x2774
    call ds_dispatch_b53b            ; 0x2777
    add sp, byte 4                   ; 0x277a
    lea ax, word [bp - 0x004c]       ; 0x277d
    push ax                          ; 0x2780
    push word [bp + 0x8]             ; 0x2781
    mov ax, 1                        ; 0x2784
    push ax                          ; 0x2787
    mov ax, 0xc                      ; 0x2788
    push ax                          ; 0x278b
    mov ax, word [bp - 0x0008]       ; 0x278c
    add ax, strict word 0x18         ; 0x278f
    push ax                          ; 0x2792
    mov ax, word [bp - 0x0006]       ; 0x2793
    add ax, strict word 8            ; 0x2796
    push ax                          ; 0x2799
    call ds_dispatch_c0c1            ; 0x279a
    add sp, byte 0x0c                ; 0x279d
    lea ax, word [bp - 0x0074]       ; 0x27a0
    push ax                          ; 0x27a3
    mov ax, word [bp + 0x6]          ; 0x27a4
    inc ax                           ; 0x27a7
    push ax                          ; 0x27a8
