; auto-generated
api_idx_0010_LPLH:
    mov ax, 0xfff0                   ; 0x265f
    call aztec_csav                  ; 0x2662
    cmp word [bp + 0x8], byte 0      ; 0x2665
    jle short @..api_idx_0010_LPLH.l1 ; 0x2669
    push word [bp + 0x8]             ; 0x266b
    push word [bp + 0xe]             ; 0x266e
    push word [bp + 0x4]             ; 0x2671
    call loc_QUJT                    ; 0x2674
    add sp, byte 6                   ; 0x2677
    mov word [bp - 0x0008], ax       ; 0x267a
    jmp short @..api_idx_0010_LPLH.l2 ; 0x267d
@..api_idx_0010_LPLH.l1:
    mov ax, word [bp + 0x8]          ; 0x267f
    mov word [bp - 0x0008], ax       ; 0x2682
@..api_idx_0010_LPLH.l2:
    cmp word [bp + 0xa], byte 0      ; 0x2685
    jle short @..api_idx_0010_LPLH.l3 ; 0x2689
    push word [bp + 0xa]             ; 0x268b
    push word [bp + 0xe]             ; 0x268e
    push word [bp + 0x4]             ; 0x2691
    call loc_QUJT                    ; 0x2694
    add sp, byte 6                   ; 0x2697
    mov word [bp - 0x000a], ax       ; 0x269a
    jmp short @..api_idx_0010_LPLH.l4 ; 0x269d
@..api_idx_0010_LPLH.l3:
    mov ax, word [bp + 0xa]          ; 0x269f
    mov word [bp - 0x000a], ax       ; 0x26a2
@..api_idx_0010_LPLH.l4:
    mov ax, word [bp - 0x0008]       ; 0x26a5
    cmp ax, word [bp + 0x8]          ; 0x26a8
    jne short @..api_idx_0010_LPLH.l5 ; 0x26ab
    mov ax, word [bp - 0x000a]       ; 0x26ad
    cmp ax, word [bp + 0xa]          ; 0x26b0
    je short @..api_idx_0010_LPLH.l6 ; 0x26b3
@..api_idx_0010_LPLH.l5:
    mov ax, 0xc8d                    ; 0x26b5
    push ax                          ; 0x26b8
    call loc_PKMT                    ; 0x26b9
    pop cx                           ; 0x26bc
@..api_idx_0010_LPLH.l6:
    lea ax, word [bp - 0x0004]       ; 0x26bd
    push ax                          ; 0x26c0
    lea ax, word [bp - 0x0006]       ; 0x26c1
    push ax                          ; 0x26c4
    push word [bp + 0x6]             ; 0x26c5
    push word [bp + 0x4]             ; 0x26c8
    call api_idx_0006_OMUL           ; 0x26cb
    add sp, byte 8                   ; 0x26ce
    mov word [bss_91d6], 4           ; 0x26d1
    mov ax, word [bp - 0x0006]       ; 0x26d7
    mov word [bp - 0x0002], ax       ; 0x26da
    jmp near @..api_idx_0010_LPLH.l23 ; 0x26dd
@..api_idx_0010_LPLH.l7:
    cmp word [bp + 0x4], byte 0      ; 0x26e0
    jne short @..api_idx_0010_LPLH.l8 ; 0x26e4
    mov ax, 0xe                      ; 0x26e6
    push ax                          ; 0x26e9
    mov ax, word [party_char_ext]    ; 0x26ea
    add ax, 0x9a                     ; 0x26ed
    push ax                          ; 0x26f0
    mov ax, 0x248                    ; 0x26f1
    imul word [bp - 0x0002]          ; 0x26f4
    add ax, 0x5d9c                   ; 0x26f7
    push ax                          ; 0x26fa
    call aztec_movmem                ; 0x26fb
    add sp, byte 6                   ; 0x26fe
@..api_idx_0010_LPLH.l8:
    mov ax, 0x2c                     ; 0x2701
    imul word [bp - 0x0002]          ; 0x2704
    mov si, ax                       ; 0x2707
    mov ax, word [bp + 0x4]          ; 0x2709
    shl ax, 1                        ; 0x270c
    mov bx, ax                       ; 0x270e
    mov bx, word [bx + party_char]   ; 0x2710
    cmp byte [bx + si + 0x22], 3     ; 0x2714
    jb short @..api_idx_0010_LPLH.l9 ; 0x2718
    jmp near @..api_idx_0010_LPLH.l22 ; 0x271a
@..api_idx_0010_LPLH.l9:
    push word [bp - 0x0002]          ; 0x271d
    push word [bp + 0x4]             ; 0x2720
    call loc_MHUK                    ; 0x2723
    add sp, byte 4                   ; 0x2726
    test ax, ax                      ; 0x2729
    je short @..api_idx_0010_LPLH.l10 ; 0x272b
    jmp near @..api_idx_0010_LPLH.l22 ; 0x272d
@..api_idx_0010_LPLH.l10:
    mov word [bp - 0x000c], 0        ; 0x2730
    mov ax, word [bp + 0xc]          ; 0x2735
    mov word [bp - 0x0010], ax       ; 0x2738
@..api_idx_0010_LPLH.l11:
    cmp word [bp - 0x0010], byte 0   ; 0x273b
    jle short @..api_idx_0010_LPLH.l14 ; 0x273f
    mov ax, word [bp - 0x0008]       ; 0x2741
    mov word [bp - 0x000e], ax       ; 0x2744
@..api_idx_0010_LPLH.l12:
    cmp word [bp - 0x000e], byte 0   ; 0x2747
    jle short @..api_idx_0010_LPLH.l13 ; 0x274b
    push word [bp - 0x000a]          ; 0x274d
    call ds_app_PUNN                 ; 0x2750
    pop cx                           ; 0x2753
    add ax, word [bp - 0x000c]       ; 0x2754
    inc ax                           ; 0x2757
    mov word [bp - 0x000c], ax       ; 0x2758
    dec word [bp - 0x000e]           ; 0x275b
    jmp short @..api_idx_0010_LPLH.l12 ; 0x275e
@..api_idx_0010_LPLH.l13:
    dec word [bp - 0x0010]           ; 0x2760
    jmp short @..api_idx_0010_LPLH.l11 ; 0x2763
@..api_idx_0010_LPLH.l14:
    mov ax, 0x64                     ; 0x2765
    push ax                          ; 0x2768
    call ds_app_PUNN                 ; 0x2769
    pop cx                           ; 0x276c
    push ax                          ; 0x276d
    mov ax, word [bp + 0x4]          ; 0x276e
    shl ax, 1                        ; 0x2771
    mov bx, ax                       ; 0x2773
    mov bx, word [bx + party_char_ext] ; 0x2775
    mov si, word [bp + 0xe]          ; 0x2779
    mov al, byte [bx + si + 0x9a]    ; 0x277c
    sub ah, ah                       ; 0x2780
    mov cx, ax                       ; 0x2782
    sub ax, word [bp + 0x10]         ; 0x2784
    mov cx, ax                       ; 0x2787
    pop ax                           ; 0x2789
    cmp ax, cx                       ; 0x278a
    jle short @..api_idx_0010_LPLH.l15 ; 0x278c
    push word [bp + 0x10]            ; 0x278e
    push si                          ; 0x2791
    push word [bp - 0x000c]          ; 0x2792
    push word [bp + 0x4]             ; 0x2795
    call api_idx_0002_LKMM           ; 0x2798
    add sp, byte 8                   ; 0x279b
    mov word [bp - 0x000c], ax       ; 0x279e
    jmp short @..api_idx_0010_LPLH.l16 ; 0x27a1
@..api_idx_0010_LPLH.l15:
    mov word [bp - 0x000c], 0        ; 0x27a3
@..api_idx_0010_LPLH.l16:
    mov ax, 4                        ; 0x27a8
    push ax                          ; 0x27ab
    mov ax, 2                        ; 0x27ac
    push ax                          ; 0x27af
    call api_idx_0004_UONH           ; 0x27b0
    add sp, byte 4                   ; 0x27b3
    push word [bp - 0x0002]          ; 0x27b6
    push word [bp + 0x4]             ; 0x27b9
    mov ax, bss_90e6                 ; 0x27bc
    push ax                          ; 0x27bf
    call loc_HJSG                    ; 0x27c0
    add sp, byte 6                   ; 0x27c3
    mov ax, 2                        ; 0x27c6
    push ax                          ; 0x27c9
    mov ax, 0x43                     ; 0x27ca
    cmp word [bp + 0x4], byte 0      ; 0x27cd
    jne short @..api_idx_0010_LPLH.l17 ; 0x27d1
    mov ax, 1                        ; 0x27d3
@..api_idx_0010_LPLH.l17:
    push ax                          ; 0x27d6
    mov ax, bss_90e6                 ; 0x27d7
    push ax                          ; 0x27da
    call api_idx_0002_TMNV           ; 0x27db
    add sp, byte 6                   ; 0x27de
    cmp word [bp - 0x000c], byte 0   ; 0x27e1
    jg short @..api_idx_0010_LPLH.l18 ; 0x27e5
    jmp near @..api_idx_0010_LPLH.l20 ; 0x27e7
@..api_idx_0010_LPLH.l18:
    mov ax, 3                        ; 0x27ea
    push ax                          ; 0x27ed
    mov ax, 0x41                     ; 0x27ee
    push ax                          ; 0x27f1
    mov ax, 0xea6                    ; 0x27f2
    push ax                          ; 0x27f5
    call api_idx_0050_PLNP           ; 0x27f6
    add sp, byte 6                   ; 0x27f9
    mov ax, 4                        ; 0x27fc
    push ax                          ; 0x27ff
    call api_idx_0004_QUPL           ; 0x2800
    pop cx                           ; 0x2803
    mov ax, bss_9136                 ; 0x2804
    push ax                          ; 0x2807
    push word [bp - 0x000c]          ; 0x2808
    call ds_app_OLKR                 ; 0x280b
    add sp, byte 4                   ; 0x280e
    mov ax, bss_90e6                 ; 0x2811
    push ax                          ; 0x2814
    mov ax, 0xea7                    ; 0x2815
    push ax                          ; 0x2818
    call ds_app_mem_TIMR             ; 0x2819
    add sp, byte 4                   ; 0x281c
    mov ax, 0x24                     ; 0x281f
    push ax                          ; 0x2822
    mov ax, 0x9136                   ; 0x2823
    push ax                          ; 0x2826
    mov ax, bss_90e6                 ; 0x2827
    push ax                          ; 0x282a
    call ds_app_string_HHIL          ; 0x282b
    add sp, byte 6                   ; 0x282e
    mov byte [bss_9136], 0           ; 0x2831
    mov byte [bss_9186], 0           ; 0x2836
    mov ax, 0x41                     ; 0x283b
    push ax                          ; 0x283e
    push ax                          ; 0x283f
    push ax                          ; 0x2840
    mov ax, bss_9186                 ; 0x2841
    push ax                          ; 0x2844
    mov ax, bss_9136                 ; 0x2845
    push ax                          ; 0x2848
    mov ax, bss_90e6                 ; 0x2849
    push ax                          ; 0x284c
    mov ax, 4                        ; 0x284d
    push ax                          ; 0x2850
    call api_idx_0004_QSNR           ; 0x2851
    add sp, byte 0x0e                ; 0x2854
    push word [bp - 0x000c]          ; 0x2857
    mov ax, 0x2c                     ; 0x285a
    imul word [bp - 0x0002]          ; 0x285d
    mov cx, ax                       ; 0x2860
    mov ax, word [bp + 0x4]          ; 0x2862
    shl ax, 1                        ; 0x2865
    mov bx, ax                       ; 0x2867
    mov ax, word [bx + party_char]   ; 0x2869
    add ax, cx                       ; 0x286d
    push ax                          ; 0x286f
    call loc_TGJH                    ; 0x2870
    add sp, byte 4                   ; 0x2873
    cmp word [bp + 0x4], byte 0      ; 0x2876
    jne short @..api_idx_0010_LPLH.l19 ; 0x287a
    mov ax, 0x248                    ; 0x287c
    imul word [bp - 0x0002]          ; 0x287f
    mov bx, ax                       ; 0x2882
    mov al, byte [bx + 0x5e2c]       ; 0x2884
    sub ah, ah                       ; 0x2888
    add ax, strict word 8            ; 0x288a
    push ax                          ; 0x288d
    call ds_app_HKIJ                 ; 0x288e
    pop cx                           ; 0x2891
    mov ax, 1                        ; 0x2892
    push ax                          ; 0x2895
    push word [bp - 0x0002]          ; 0x2896
    call api_idx_0004_MLLS           ; 0x2899
    add sp, byte 4                   ; 0x289c
@..api_idx_0010_LPLH.l19:
    mov ax, word [bss_9058]          ; 0x289f
    mov cx, 2                        ; 0x28a2
    cwd                              ; 0x28a5
    idiv cx                          ; 0x28a6
    push ax                          ; 0x28a8
    call api_idx_0004_QUPL           ; 0x28a9
    pop cx                           ; 0x28ac
    jmp short @..api_idx_0010_LPLH.l21 ; 0x28ad
@..api_idx_0010_LPLH.l20:
    mov ax, 3                        ; 0x28af
    push ax                          ; 0x28b2
    mov ax, 0x41                     ; 0x28b3
    push ax                          ; 0x28b6
    mov ax, 0xcee                    ; 0x28b7
    push ax                          ; 0x28ba
    call api_idx_0050_PLNP           ; 0x28bb
    add sp, byte 6                   ; 0x28be
@..api_idx_0010_LPLH.l21:
    mov ax, word [bss_9058]          ; 0x28c1
    mov cx, 2                        ; 0x28c4
    cwd                              ; 0x28c7
    idiv cx                          ; 0x28c8
    push ax                          ; 0x28ca
    call api_idx_0004_QUPL           ; 0x28cb
    pop cx                           ; 0x28ce
@..api_idx_0010_LPLH.l22:
    inc word [bp - 0x0002]           ; 0x28cf
@..api_idx_0010_LPLH.l23:
    mov ax, word [bp - 0x0006]       ; 0x28d2
    add ax, word [bp - 0x0004]       ; 0x28d5
    cmp ax, word [bp - 0x0002]       ; 0x28d8
    jle short @..api_idx_0010_LPLH.l24 ; 0x28db
    jmp near @..api_idx_0010_LPLH.l7 ; 0x28dd
@..api_idx_0010_LPLH.l24:
    ret                              ; 0x28e0
