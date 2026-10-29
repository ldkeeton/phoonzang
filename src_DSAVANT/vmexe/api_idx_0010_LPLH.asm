; auto-generated
api_idx_0010_LPLH:
    mov ax, 0xfff0                   ; 0x265f
    call aztec_csav                  ; 0x2662
    cmp word [bp + 8], byte 0        ; 0x2665
    jle short .forward1              ; 0x2669
    push word [bp + 8]               ; 0x266b
    push word [bp + 0xe]             ; 0x266e
    push word [bp + 4]               ; 0x2671
    call loc_QUJT                    ; 0x2674
    add sp, byte 6                   ; 0x2677
    mov word [bp - 8], ax            ; 0x267a
    jmp short .forward2              ; 0x267d
.forward1:
    mov ax, word [bp + 8]            ; 0x267f
    mov word [bp - 8], ax            ; 0x2682
.forward2:
    cmp word [bp + 0xa], byte 0      ; 0x2685
    jle short .forward3              ; 0x2689
    push word [bp + 0xa]             ; 0x268b
    push word [bp + 0xe]             ; 0x268e
    push word [bp + 4]               ; 0x2691
    call loc_QUJT                    ; 0x2694
    add sp, byte 6                   ; 0x2697
    mov word [bp - 0xa], ax          ; 0x269a
    jmp short .forward4              ; 0x269d
.forward3:
    mov ax, word [bp + 0xa]          ; 0x269f
    mov word [bp - 0xa], ax          ; 0x26a2
.forward4:
    mov ax, word [bp - 8]            ; 0x26a5
    cmp ax, word [bp + 8]            ; 0x26a8
    jne short .forward5              ; 0x26ab
    mov ax, word [bp - 0xa]          ; 0x26ad
    cmp ax, word [bp + 0xa]          ; 0x26b0
    je short .forward6               ; 0x26b3
.forward5:
    mov ax, MSG_SPELL_REDUCED        ; 0x26b5
    push ax                          ; 0x26b8
    call loc_PKMT                    ; 0x26b9
    pop cx                           ; 0x26bc
.forward6:
    lea ax, word [bp - 4]            ; 0x26bd
    push ax                          ; 0x26c0
    lea ax, word [bp - 6]            ; 0x26c1
    push ax                          ; 0x26c4
    push word [bp + 6]               ; 0x26c5
    push word [bp + 4]               ; 0x26c8
    call api_idx_0006_OMUL           ; 0x26cb
    add sp, byte 8                   ; 0x26ce
    mov word [bss_91d6], 4           ; 0x26d1
    mov ax, word [bp - 6]            ; 0x26d7
    mov word [bp - 2], ax            ; 0x26da
    jmp near .forward20              ; 0x26dd
.back1:
    cmp word [bp + 4], byte 0        ; 0x26e0
    jne short .forward7              ; 0x26e4
    mov ax, 0xe                      ; 0x26e6
    push ax                          ; 0x26e9
    mov ax, word [party_char_ext]    ; 0x26ea
    add ax, 0x9a                     ; 0x26ed
    push ax                          ; 0x26f0
    mov ax, 0x248                    ; 0x26f1
    imul word [bp - 2]               ; 0x26f4
    add ax, party_records + pc_rec.cur ; 0x26f7
    push ax                          ; 0x26fa
    call aztec_movmem                ; 0x26fb
    add sp, byte 6                   ; 0x26fe
.forward7:
    mov ax, 0x2c                     ; 0x2701
    imul word [bp - 2]               ; 0x2704
    mov si, ax                       ; 0x2707
    mov ax, word [bp + 4]            ; 0x2709
    shl ax, 1                        ; 0x270c
    mov bx, ax                       ; 0x270e
    mov bx, word [bx + party_char]   ; 0x2710
    cmp byte [bx + si + member_rec.item_state], 3 ; 0x2714
    jb short .forward8               ; 0x2718
    jmp near .forward19              ; 0x271a
.forward8:
    push word [bp - 2]               ; 0x271d
    push word [bp + 4]               ; 0x2720
    call item_slot_usable            ; 0x2723
    add sp, byte 4                   ; 0x2726
    test ax, ax                      ; 0x2729
    je short .forward9               ; 0x272b
    jmp near .forward19              ; 0x272d
.forward9:
    mov word [bp - 0xc], 0           ; 0x2730
    mov ax, word [bp + 0xc]          ; 0x2735
    mov word [bp - 0x10], ax         ; 0x2738
.back2:
    cmp word [bp - 0x10], byte 0     ; 0x273b
    jle short .forward11             ; 0x273f
    mov ax, word [bp - 8]            ; 0x2741
    mov word [bp - 0xe], ax          ; 0x2744
.back3:
    cmp word [bp - 0xe], byte 0      ; 0x2747
    jle short .forward10             ; 0x274b
    push word [bp - 0xa]             ; 0x274d
    call random_below                ; 0x2750
    pop cx                           ; 0x2753
    add ax, word [bp - 0xc]          ; 0x2754
    inc ax                           ; 0x2757
    mov word [bp - 0xc], ax          ; 0x2758
    dec word [bp - 0xe]              ; 0x275b
    jmp short .back3                 ; 0x275e
.forward10:
    dec word [bp - 0x10]             ; 0x2760
    jmp short .back2                 ; 0x2763
.forward11:
    mov ax, 0x64                     ; 0x2765
    push ax                          ; 0x2768
    call random_below                ; 0x2769
    pop cx                           ; 0x276c
    push ax                          ; 0x276d
    mov ax, word [bp + 4]            ; 0x276e
    shl ax, 1                        ; 0x2771
    mov bx, ax                       ; 0x2773
    mov bx, word [bx + party_char_ext] ; 0x2775
    mov si, word [bp + 0xe]          ; 0x2779
    mov al, byte [bx + si + member_ext.f_009a] ; 0x277c
    sub ah, ah                       ; 0x2780
    mov cx, ax                       ; 0x2782
    sub ax, word [bp + 0x10]         ; 0x2784
    mov cx, ax                       ; 0x2787
    pop ax                           ; 0x2789
    cmp ax, cx                       ; 0x278a
    jle short .forward12             ; 0x278c
    push word [bp + 0x10]            ; 0x278e
    push si                          ; 0x2791
    push word [bp - 0xc]             ; 0x2792
    push word [bp + 4]               ; 0x2795
    call api_idx_0002_NHHH           ; 0x2798
    add sp, byte 8                   ; 0x279b
    mov word [bp - 0xc], ax          ; 0x279e
    jmp short .forward13             ; 0x27a1
.forward12:
    mov word [bp - 0xc], 0           ; 0x27a3
.forward13:
    mov ax, 4                        ; 0x27a8
    push ax                          ; 0x27ab
    mov ax, 2                        ; 0x27ac
    push ax                          ; 0x27af
    call api_idx_0004_OHJS           ; 0x27b0
    add sp, byte 4                   ; 0x27b3
    push word [bp - 2]               ; 0x27b6
    push word [bp + 4]               ; 0x27b9
    mov ax, bss_90e6                 ; 0x27bc
    push ax                          ; 0x27bf
    call loc_HJSG                    ; 0x27c0
    add sp, byte 6                   ; 0x27c3
    mov ax, 2                        ; 0x27c6
    push ax                          ; 0x27c9
    mov ax, 0x43                     ; 0x27ca
    cmp word [bp + 4], byte 0        ; 0x27cd
    jne short .forward14             ; 0x27d1
    mov ax, 1                        ; 0x27d3
.forward14:
    push ax                          ; 0x27d6
    mov ax, bss_90e6                 ; 0x27d7
    push ax                          ; 0x27da
    call api_idx_0002_TMNV           ; 0x27db
    add sp, byte 6                   ; 0x27de
    cmp word [bp - 0xc], byte 0      ; 0x27e1
    jg short .forward15              ; 0x27e5
    jmp near .forward17              ; 0x27e7
.forward15:
    mov ax, 3                        ; 0x27ea
    push ax                          ; 0x27ed
    mov ax, 0x41                     ; 0x27ee
    push ax                          ; 0x27f1
    mov ax, MSG_DRAINED              ; 0x27f2
    push ax                          ; 0x27f5
    call api_idx_0050_PLNP           ; 0x27f6
    add sp, byte 6                   ; 0x27f9
    mov ax, 4                        ; 0x27fc
    push ax                          ; 0x27ff
    call api_idx_0004_QUPL           ; 0x2800
    pop cx                           ; 0x2803
    mov ax, bss_9136                 ; 0x2804
    push ax                          ; 0x2807
    push word [bp - 0xc]             ; 0x2808
    call format_int_decimal          ; 0x280b
    add sp, byte 4                   ; 0x280e
    mov ax, bss_90e6                 ; 0x2811
    push ax                          ; 0x2814
    mov ax, MSG_STAMINA_3751         ; 0x2815
    push ax                          ; 0x2818
    call load_message_string         ; 0x2819
    add sp, byte 4                   ; 0x281c
    mov ax, 0x24                     ; 0x281f
    push ax                          ; 0x2822
    mov ax, 0x9136                   ; 0x2823
    push ax                          ; 0x2826
    mov ax, bss_90e6                 ; 0x2827
    push ax                          ; 0x282a
    call str_subst_char              ; 0x282b
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
    add sp, byte 0xe                 ; 0x2854
    push word [bp - 0xc]             ; 0x2857
    mov ax, 0x2c                     ; 0x285a
    imul word [bp - 2]               ; 0x285d
    mov cx, ax                       ; 0x2860
    mov ax, word [bp + 4]            ; 0x2862
    shl ax, 1                        ; 0x2865
    mov bx, ax                       ; 0x2867
    mov ax, word [bx + party_char]   ; 0x2869
    add ax, cx                       ; 0x286d
    push ax                          ; 0x286f
    call loc_TGJH                    ; 0x2870
    add sp, byte 4                   ; 0x2873
    cmp word [bp + 4], byte 0        ; 0x2876
    jne short .forward16             ; 0x287a
    mov ax, 0x248                    ; 0x287c
    imul word [bp - 2]               ; 0x287f
    mov bx, ax                       ; 0x2882
    mov al, byte [bx + party_records + pc_rec.gender] ; 0x2884
    sub ah, ah                       ; 0x2888
    add ax, strict word 8            ; 0x288a
    push ax                          ; 0x288d
    call play_sound_effect           ; 0x288e
    pop cx                           ; 0x2891
    mov ax, 1                        ; 0x2892
    push ax                          ; 0x2895
    push word [bp - 2]               ; 0x2896
    call api_idx_0004_MLLS           ; 0x2899
    add sp, byte 4                   ; 0x289c
.forward16:
    mov ax, word [startup_option]    ; 0x289f
    mov cx, 2                        ; 0x28a2
    cwd                              ; 0x28a5
    idiv cx                          ; 0x28a6
    push ax                          ; 0x28a8
    call api_idx_0004_QUPL           ; 0x28a9
    pop cx                           ; 0x28ac
    jmp short .forward18             ; 0x28ad
.forward17:
    mov ax, 3                        ; 0x28af
    push ax                          ; 0x28b2
    mov ax, 0x41                     ; 0x28b3
    push ax                          ; 0x28b6
    mov ax, MSG_UNAFFECTED_3310      ; 0x28b7
    push ax                          ; 0x28ba
    call api_idx_0050_PLNP           ; 0x28bb
    add sp, byte 6                   ; 0x28be
.forward18:
    mov ax, word [startup_option]    ; 0x28c1
    mov cx, 2                        ; 0x28c4
    cwd                              ; 0x28c7
    idiv cx                          ; 0x28c8
    push ax                          ; 0x28ca
    call api_idx_0004_QUPL           ; 0x28cb
    pop cx                           ; 0x28ce
.forward19:
    inc word [bp - 2]                ; 0x28cf
.forward20:
    mov ax, word [bp - 6]            ; 0x28d2
    add ax, word [bp - 4]            ; 0x28d5
    cmp ax, word [bp - 2]            ; 0x28d8
    jle short .return1               ; 0x28db
    jmp near .back1                  ; 0x28dd
.return1:
    ret                              ; 0x28e0
