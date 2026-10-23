; auto-generated
api_idx_0084_IMVQ:
    mov ax, 0xff7c                   ; 0x25ab
    call aztec_csav                  ; 0x25ae
    mov word [bp - 0x0002], 0        ; 0x25b1
    jmp short @..api_idx_0084_IMVQ.l2 ; 0x25b6
@..api_idx_0084_IMVQ.l1:
    mov ax, 0x14                     ; 0x25b8
    imul word [bp - 0x0002]          ; 0x25bb
    add ax, known_spell_names        ; 0x25be
    push ax                          ; 0x25c1
    mov ax, word [bp - 0x0002]       ; 0x25c2
    shl ax, 1                        ; 0x25c5
    mov bx, ax                       ; 0x25c7
    mov ax, word [bx + bss_9342]     ; 0x25c9
    add ax, 0x14b4                   ; 0x25cd
    push ax                          ; 0x25d0
    call load_message_string         ; 0x25d1
    add sp, byte 4                   ; 0x25d4
    inc word [bp - 0x0002]           ; 0x25d7
@..api_idx_0084_IMVQ.l2:
    mov ax, word [bp - 0x0002]       ; 0x25da
    cmp ax, word [bp + 0xc]          ; 0x25dd
    jl short @..api_idx_0084_IMVQ.l1 ; 0x25e0
    mov word [show_area_bottom], 0x8d ; 0x25e2
    mov word [bp - 0x0078], 0        ; 0x25e8
    cmp word [bss_9250], byte 0xff   ; 0x25ed
    je short @..api_idx_0084_IMVQ.l5 ; 0x25f2
    mov word [bp - 0x0004], 0        ; 0x25f4
@..api_idx_0084_IMVQ.l3:
    mov ax, 0xa                      ; 0x25f9
    imul word [bss_9250]             ; 0x25fc
    add ax, word [bp - 0x0004]       ; 0x2600
    mov bx, ax                       ; 0x2603
    cmp byte [bx + bss_9252], 0x2d   ; 0x2605
    je short @..api_idx_0084_IMVQ.l4 ; 0x260a
    inc word [bp - 0x0078]           ; 0x260c
@..api_idx_0084_IMVQ.l4:
    inc word [bp - 0x0004]           ; 0x260f
    mov ax, word [bp - 0x0004]       ; 0x2612
    cmp ax, strict word 8            ; 0x2615
    jl short @..api_idx_0084_IMVQ.l3 ; 0x2618
@..api_idx_0084_IMVQ.l5:
    mov word [spell_dialog_result], 0xffff ; 0x261a
    mov word [bp - 0x0006], 0x37     ; 0x2620
    mov word [bp - 0x0008], 0x8f     ; 0x2625
    mov word [bp - 0x000a], 0x108    ; 0x262a
    mov word [bp - 0x000c], 0xc5     ; 0x262f
    mov word [bp - 0x0014], 0x16     ; 0x2634
    mov word [bp - 0x0024], 1        ; 0x2639
    mov ax, dseg_90cd                ; 0x263e
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
    call save_screen_area            ; 0x2656
    add sp, byte 0x0a                ; 0x2659
    mov word [bp - 0x0076], ax       ; 0x265c
    push word [bp - 0x000c]          ; 0x265f
    push word [bp - 0x000a]          ; 0x2662
    push word [bp - 0x0008]          ; 0x2665
    push word [bp - 0x0006]          ; 0x2668
    call draw_dialog_box             ; 0x266b
    add sp, byte 8                   ; 0x266e
    mov ax, 0xc2                     ; 0x2671
    push ax                          ; 0x2674
    mov ax, 1                        ; 0x2675
    push ax                          ; 0x2678
    call gfx_set_text_color          ; 0x2679
    add sp, byte 4                   ; 0x267c
    mov ax, word [bp - 0x0008]       ; 0x267f
    add ax, strict word 6            ; 0x2682
    push ax                          ; 0x2685
    mov ax, 0x248                    ; 0x2686
    imul word [bp + 0x4]             ; 0x2689
    add ax, bss_5bf4                 ; 0x268c
    push ax                          ; 0x268f
    call aztec_strlen                ; 0x2690
    pop cx                           ; 0x2693
    mov cx, 6                        ; 0x2694
    imul cx                          ; 0x2697
    mov cx, 2                        ; 0x2699
    cwd                              ; 0x269c
    idiv cx                          ; 0x269d
    mov cx, ax                       ; 0x269f
    mov ax, word [bp - 0x0006]       ; 0x26a1
    add ax, strict word 0x1b         ; 0x26a4
    sub ax, cx                       ; 0x26a7
    push ax                          ; 0x26a9
    call gfx_set_text_pos            ; 0x26aa
    add sp, byte 4                   ; 0x26ad
    mov ax, 0                        ; 0x26b0
    push ax                          ; 0x26b3
    mov ax, 0x248                    ; 0x26b4
    imul word [bp + 0x4]             ; 0x26b7
    add ax, bss_5bf4                 ; 0x26ba
    push ax                          ; 0x26bd
    call draw_text_glyphs            ; 0x26be
    add sp, byte 4                   ; 0x26c1
    mov ax, dseg_90d3                ; 0x26c4
    push ax                          ; 0x26c7
    lea ax, word [bp - 0x0074]       ; 0x26c8
    push ax                          ; 0x26cb
    call aztec_strcpy                ; 0x26cc
    add sp, byte 4                   ; 0x26cf
    lea ax, word [bp - 0x0073]       ; 0x26d2
    push ax                          ; 0x26d5
    mov ax, 0x248                    ; 0x26d6
    imul word [bp + 0x4]             ; 0x26d9
    mov bx, ax                       ; 0x26dc
    mov al, byte [bx + 0x5d7c]       ; 0x26de
    sub ah, ah                       ; 0x26e2
    push ax                          ; 0x26e4
    call ds_app_OLKR                 ; 0x26e5
    add sp, byte 4                   ; 0x26e8
    mov ax, dseg_90d5                ; 0x26eb
    push ax                          ; 0x26ee
    lea ax, word [bp - 0x0074]       ; 0x26ef
    push ax                          ; 0x26f2
    call aztec_strcat                ; 0x26f3
    add sp, byte 4                   ; 0x26f6
    mov ax, word [bp - 0x0008]       ; 0x26f9
    add ax, strict word 0xc          ; 0x26fc
    push ax                          ; 0x26ff
    lea ax, word [bp - 0x0074]       ; 0x2700
    push ax                          ; 0x2703
    call aztec_strlen                ; 0x2704
    pop cx                           ; 0x2707
    mov cx, 6                        ; 0x2708
    imul cx                          ; 0x270b
    mov cx, 2                        ; 0x270d
    cwd                              ; 0x2710
    idiv cx                          ; 0x2711
    mov cx, ax                       ; 0x2713
    mov ax, word [bp - 0x0006]       ; 0x2715
    add ax, strict word 0x1b         ; 0x2718
    sub ax, cx                       ; 0x271b
    push ax                          ; 0x271d
    call gfx_set_text_pos            ; 0x271e
    add sp, byte 4                   ; 0x2721
    mov ax, 0                        ; 0x2724
    push ax                          ; 0x2727
    lea ax, word [bp - 0x0074]       ; 0x2728
    push ax                          ; 0x272b
    call draw_text_glyphs            ; 0x272c
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
    call draw_inset_panel            ; 0x274e
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
    call api_idx_0002_PMUV           ; 0x276a
    add sp, byte 8                   ; 0x276d
    lea ax, word [bp - 0x004c]       ; 0x2770
    push ax                          ; 0x2773
    push word [bp + 0x6]             ; 0x2774
    call load_message_string         ; 0x2777
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
    call draw_button                 ; 0x279a
    add sp, byte 0x0c                ; 0x279d
    lea ax, word [bp - 0x0074]       ; 0x27a0
    push ax                          ; 0x27a3
    mov ax, word [bp + 0x6]          ; 0x27a4
    inc ax                           ; 0x27a7
    push ax                          ; 0x27a8
    call load_message_string         ; 0x27a9
    add sp, byte 4                   ; 0x27ac
    lea ax, word [bp - 0x0074]       ; 0x27af
    push ax                          ; 0x27b2
    push word [bp + 0xa]             ; 0x27b3
    mov ax, 1                        ; 0x27b6
    push ax                          ; 0x27b9
    mov ax, 0xc                      ; 0x27ba
    push ax                          ; 0x27bd
    mov ax, word [bp - 0x0008]       ; 0x27be
    add ax, strict word 0x28         ; 0x27c1
    push ax                          ; 0x27c4
    mov ax, word [bp - 0x0006]       ; 0x27c5
    add ax, strict word 8            ; 0x27c8
    push ax                          ; 0x27cb
    call draw_button                 ; 0x27cc
    add sp, byte 0x0c                ; 0x27cf
    mov ax, 0xc0                     ; 0x27d2
    push ax                          ; 0x27d5
    mov ax, 0                        ; 0x27d6
    push ax                          ; 0x27d9
    call gfx_set_text_color          ; 0x27da
    add sp, byte 4                   ; 0x27dd
    mov word [bp - 0x0002], 0        ; 0x27e0
@..api_idx_0084_IMVQ.l6:
    mov ax, word [bp - 0x0002]       ; 0x27e5
    shl ax, 1                        ; 0x27e8
    mov bx, ax                       ; 0x27ea
    push word [bx + bss_9230]        ; 0x27ec
    mov ax, word [bp - 0x0002]       ; 0x27f0
    mov cx, 4                        ; 0x27f3
    cwd                              ; 0x27f6
    idiv cx                          ; 0x27f7
    mov cx, 5                        ; 0x27f9
    shl ax, cl                       ; 0x27fc
    add ax, word [bp - 0x0008]       ; 0x27fe
    add ax, strict word 0x11         ; 0x2801
    push ax                          ; 0x2804
    mov ax, word [bp - 0x0002]       ; 0x2805
    mov cx, 4                        ; 0x2808
    cwd                              ; 0x280b
    idiv cx                          ; 0x280c
    mov ax, dx                       ; 0x280e
    mov cx, 0x1a                     ; 0x2810
    imul cx                          ; 0x2813
    add ax, word [bp - 0x0006]       ; 0x2815
    add ax, strict word 0x6b         ; 0x2818
    push ax                          ; 0x281b
    mov ax, word [bp - 0x0002]       ; 0x281c
    mov cx, 4                        ; 0x281f
    cwd                              ; 0x2822
    idiv cx                          ; 0x2823
    mov cx, 5                        ; 0x2825
    shl ax, cl                       ; 0x2828
    add ax, word [bp - 0x0008]       ; 0x282a
    add ax, strict word 5            ; 0x282d
    push ax                          ; 0x2830
    mov ax, word [bp - 0x0002]       ; 0x2831
    mov cx, 4                        ; 0x2834
    cwd                              ; 0x2837
    idiv cx                          ; 0x2838
    mov ax, dx                       ; 0x283a
    mov cx, 0x1a                     ; 0x283c
    imul cx                          ; 0x283f
    add ax, word [bp - 0x0006]       ; 0x2841
    add ax, strict word 0x5d         ; 0x2844
    push ax                          ; 0x2847
    call loc_OVQV                    ; 0x2848
    add sp, byte 0x0a                ; 0x284b
    mov ax, word [bp - 0x0002]       ; 0x284e
    mov cx, 4                        ; 0x2851
    cwd                              ; 0x2854
    idiv cx                          ; 0x2855
    mov cx, 5                        ; 0x2857
    shl ax, cl                       ; 0x285a
    add ax, word [bp - 0x0008]       ; 0x285c
    add ax, strict word 7            ; 0x285f
    push ax                          ; 0x2862
    mov ax, word [bp - 0x0002]       ; 0x2863
    mov cx, 4                        ; 0x2866
    cwd                              ; 0x2869
    idiv cx                          ; 0x286a
    mov ax, dx                       ; 0x286c
    mov cx, 0x1a                     ; 0x286e
    imul cx                          ; 0x2871
    add ax, word [bp - 0x0006]       ; 0x2873
    add ax, strict word 0x5f         ; 0x2876
    push ax                          ; 0x2879
    call gfx_set_text_pos            ; 0x287a
    add sp, byte 4                   ; 0x287d
    mov ax, 1                        ; 0x2880
    push ax                          ; 0x2883
    mov ax, word [bp - 0x0002]       ; 0x2884
    shl ax, 1                        ; 0x2887
    mov bx, ax                       ; 0x2889
    mov al, byte [bx + bss_9240]     ; 0x288b
    sub ah, ah                       ; 0x288f
    push ax                          ; 0x2891
    call draw_font_glyph             ; 0x2892
    add sp, byte 4                   ; 0x2895
    inc word [bp - 0x0002]           ; 0x2898
    mov ax, word [bp - 0x0002]       ; 0x289b
    cmp ax, strict word 8            ; 0x289e
    jge short @..api_idx_0084_IMVQ.l7 ; 0x28a1
    jmp near @..api_idx_0084_IMVQ.l6 ; 0x28a3
@..api_idx_0084_IMVQ.l7:
    mov ax, word [bp - 0x0008]       ; 0x28a6
    add ax, strict word 0x1e         ; 0x28a9
    push ax                          ; 0x28ac
    mov ax, word [bp - 0x0006]       ; 0x28ad
    add ax, strict word 0x61         ; 0x28b0
    push ax                          ; 0x28b3
    mov ax, word [bp - 0x0008]       ; 0x28b4
    add ax, strict word 0x18         ; 0x28b7
    push ax                          ; 0x28ba
    mov ax, word [bp - 0x0006]       ; 0x28bb
    add ax, strict word 0x5d         ; 0x28be
    push ax                          ; 0x28c1
    call draw_inset_panel            ; 0x28c2
    add sp, byte 8                   ; 0x28c5
    mov word [bp - 0x0018], 0        ; 0x28c8
    mov word [bp - 0x0022], 0xffff   ; 0x28cd
    push word [bp - 0x0024]          ; 0x28d2
    push word [bp - 0x0022]          ; 0x28d5
    push word [bp - 0x0018]          ; 0x28d8
    mov ax, 1                        ; 0x28db
    push ax                          ; 0x28de
    mov ax, 0xd                      ; 0x28df
    push ax                          ; 0x28e2
    mov ax, word [bp - 0x0008]       ; 0x28e3
    add ax, strict word 0x18         ; 0x28e6
    push ax                          ; 0x28e9
    mov ax, word [bp - 0x0006]       ; 0x28ea
    add ax, strict word 0x69         ; 0x28ed
    push ax                          ; 0x28f0
    call draw_text_list              ; 0x28f1
    add sp, byte 0x0e                ; 0x28f4
    mov word [bp - 0x0012], 0        ; 0x28f7
    push word [bp - 0x0012]          ; 0x28fc
    mov ax, 7                        ; 0x28ff
    push ax                          ; 0x2902
    mov ax, 8                        ; 0x2903
    push ax                          ; 0x2906
    mov ax, word [bp - 0x0008]       ; 0x2907
    add ax, strict word 6            ; 0x290a
    push ax                          ; 0x290d
    mov ax, word [bp - 0x0006]       ; 0x290e
    add ax, 0xc1                     ; 0x2911
    push ax                          ; 0x2914
    call draw_scrollbar              ; 0x2915
    add sp, byte 0x0a                ; 0x2918
    mov ax, 0                        ; 0x291b
    push ax                          ; 0x291e
    push ax                          ; 0x291f
    mov ax, word [bp - 0x0008]       ; 0x2920
    add ax, word [bp - 0x0012]       ; 0x2923
    add ax, strict word 0x12         ; 0x2926
    push ax                          ; 0x2929
    mov ax, word [bp - 0x0006]       ; 0x292a
    add ax, 0xc9                     ; 0x292d
    push ax                          ; 0x2930
    mov ax, word [bp - 0x0008]       ; 0x2931
    add ax, word [bp - 0x0012]       ; 0x2934
    add ax, strict word 0xe          ; 0x2937
    push ax                          ; 0x293a
    mov ax, word [bp - 0x0006]       ; 0x293b
    add ax, 0xc1                     ; 0x293e
    push ax                          ; 0x2941
    mov ax, 0                        ; 0x2942
    push ax                          ; 0x2945
    call set_hotspot                 ; 0x2946
    add sp, byte 0x0e                ; 0x2949
    mov ax, 0                        ; 0x294c
    push ax                          ; 0x294f
    mov ax, 9                        ; 0x2950
    push ax                          ; 0x2953
    mov ax, word [bp - 0x0008]       ; 0x2954
    add ax, strict word 0xc          ; 0x2957
    push ax                          ; 0x295a
    mov ax, word [bp - 0x0006]       ; 0x295b
    add ax, 0xc9                     ; 0x295e
    push ax                          ; 0x2961
    mov ax, word [bp - 0x0008]       ; 0x2962
    add ax, strict word 6            ; 0x2965
    push ax                          ; 0x2968
    mov ax, word [bp - 0x0006]       ; 0x2969
    add ax, 0xc1                     ; 0x296c
    push ax                          ; 0x296f
    mov ax, 1                        ; 0x2970
    push ax                          ; 0x2973
    call set_hotspot                 ; 0x2974
    add sp, byte 0x0e                ; 0x2977
    mov ax, 0                        ; 0x297a
    push ax                          ; 0x297d
    mov ax, 0xb                      ; 0x297e
    push ax                          ; 0x2981
    mov ax, word [bp - 0x0008]       ; 0x2982
    add ax, strict word 0x30         ; 0x2985
    push ax                          ; 0x2988
    mov ax, word [bp - 0x0006]       ; 0x2989
    add ax, 0xc9                     ; 0x298c
    push ax                          ; 0x298f
    mov ax, word [bp - 0x0008]       ; 0x2990
    add ax, strict word 0x2a         ; 0x2993
    push ax                          ; 0x2996
    mov ax, word [bp - 0x0006]       ; 0x2997
    add ax, 0xc1                     ; 0x299a
    push ax                          ; 0x299d
    mov ax, 2                        ; 0x299e
    push ax                          ; 0x29a1
    call set_hotspot                 ; 0x29a2
    add sp, byte 0x0e                ; 0x29a5
    mov ax, 0xd                      ; 0x29a8
    push ax                          ; 0x29ab
    mov ax, 0x49                     ; 0x29ac
    push ax                          ; 0x29af
    mov ax, word [bp - 0x0008]       ; 0x29b0
    add ax, strict word 0x20         ; 0x29b3
    push ax                          ; 0x29b6
    mov ax, word [bp - 0x0006]       ; 0x29b7
    add ax, strict word 0x50         ; 0x29ba
    push ax                          ; 0x29bd
    mov ax, word [bp - 0x0008]       ; 0x29be
    add ax, strict word 0x18         ; 0x29c1
    push ax                          ; 0x29c4
    mov ax, word [bp - 0x0006]       ; 0x29c5
    add ax, strict word 8            ; 0x29c8
    push ax                          ; 0x29cb
    mov ax, 3                        ; 0x29cc
    push ax                          ; 0x29cf
    call set_hotspot                 ; 0x29d0
    add sp, byte 0x0e                ; 0x29d3
    mov ax, 0                        ; 0x29d6
    push ax                          ; 0x29d9
    mov ax, 0x1b                     ; 0x29da
    push ax                          ; 0x29dd
    mov ax, word [bp - 0x0008]       ; 0x29de
    add ax, strict word 0x30         ; 0x29e1
    push ax                          ; 0x29e4
    mov ax, word [bp - 0x0006]       ; 0x29e5
    add ax, strict word 0x50         ; 0x29e8
    push ax                          ; 0x29eb
    mov ax, word [bp - 0x0008]       ; 0x29ec
    add ax, strict word 0x28         ; 0x29ef
    push ax                          ; 0x29f2
    mov ax, word [bp - 0x0006]       ; 0x29f3
    add ax, strict word 8            ; 0x29f6
    push ax                          ; 0x29f9
    mov ax, 4                        ; 0x29fa
    push ax                          ; 0x29fd
    call set_hotspot                 ; 0x29fe
    add sp, byte 0x0e                ; 0x2a01
    mov word [bp - 0x0002], 0        ; 0x2a04
@..api_idx_0084_IMVQ.l8:
    mov ax, 0                        ; 0x2a09
    push ax                          ; 0x2a0c
    mov ax, word [bp - 0x0002]       ; 0x2a0d
    add ax, strict word 0x31         ; 0x2a10
    cbw                              ; 0x2a13
    push ax                          ; 0x2a14
    mov ax, word [bp - 0x0002]       ; 0x2a15
    mov cx, 4                        ; 0x2a18
    cwd                              ; 0x2a1b
    idiv cx                          ; 0x2a1c
    mov cx, 5                        ; 0x2a1e
    shl ax, cl                       ; 0x2a21
    add ax, word [bp - 0x0008]       ; 0x2a23
    add ax, strict word 0x11         ; 0x2a26
    push ax                          ; 0x2a29
    mov ax, word [bp - 0x0002]       ; 0x2a2a
    mov cx, 4                        ; 0x2a2d
    cwd                              ; 0x2a30
    idiv cx                          ; 0x2a31
    mov ax, dx                       ; 0x2a33
    mov cx, 0x1a                     ; 0x2a35
    imul cx                          ; 0x2a38
    add ax, word [bp - 0x0006]       ; 0x2a3a
    add ax, strict word 0x6b         ; 0x2a3d
    push ax                          ; 0x2a40
    mov ax, word [bp - 0x0002]       ; 0x2a41
    mov cx, 4                        ; 0x2a44
    cwd                              ; 0x2a47
    idiv cx                          ; 0x2a48
    mov cx, 5                        ; 0x2a4a
    shl ax, cl                       ; 0x2a4d
    add ax, word [bp - 0x0008]       ; 0x2a4f
    add ax, strict word 5            ; 0x2a52
    push ax                          ; 0x2a55
    mov ax, word [bp - 0x0002]       ; 0x2a56
    mov cx, 4                        ; 0x2a59
    cwd                              ; 0x2a5c
    idiv cx                          ; 0x2a5d
    mov ax, dx                       ; 0x2a5f
    mov cx, 0x1a                     ; 0x2a61
    imul cx                          ; 0x2a64
    add ax, word [bp - 0x0006]       ; 0x2a66
    add ax, strict word 0x5d         ; 0x2a69
    push ax                          ; 0x2a6c
    mov ax, word [bp - 0x0002]       ; 0x2a6d
    add ax, strict word 5            ; 0x2a70
    push ax                          ; 0x2a73
    call set_hotspot                 ; 0x2a74
    add sp, byte 0x0e                ; 0x2a77
    inc word [bp - 0x0002]           ; 0x2a7a
    mov ax, word [bp - 0x0002]       ; 0x2a7d
    cmp ax, strict word 8            ; 0x2a80
    jl short @..api_idx_0084_IMVQ.l8 ; 0x2a83
    mov ax, 0                        ; 0x2a85
    push ax                          ; 0x2a88
    push ax                          ; 0x2a89
    push ax                          ; 0x2a8a
    push ax                          ; 0x2a8b
    push ax                          ; 0x2a8c
    mov ax, 0xffff                   ; 0x2a8d
    push ax                          ; 0x2a90
    mov ax, 0xd                      ; 0x2a91
    push ax                          ; 0x2a94
    call set_hotspot                 ; 0x2a95
    add sp, byte 0x0e                ; 0x2a98
    mov ax, word [bp - 0x000c]       ; 0x2a9b
    inc ax                           ; 0x2a9e
    push ax                          ; 0x2a9f
    mov ax, word [bp - 0x000a]       ; 0x2aa0
    inc ax                           ; 0x2aa3
    push ax                          ; 0x2aa4
    mov ax, word [bp - 0x0008]       ; 0x2aa5
    dec ax                           ; 0x2aa8
    push ax                          ; 0x2aa9
    mov ax, word [bp - 0x0006]       ; 0x2aaa
    dec ax                           ; 0x2aad
    push ax                          ; 0x2aae
    call gfx_show_area               ; 0x2aaf
    add sp, byte 8                   ; 0x2ab2
    mov word [bp - 0x001c], 1        ; 0x2ab5
    mov ax, 0x248                    ; 0x2aba
    imul word [bp + 0x4]             ; 0x2abd
    mov bx, ax                       ; 0x2ac0
    mov al, byte [bx + 0x5d7c]       ; 0x2ac2
    sub ah, ah                       ; 0x2ac6
    push ax                          ; 0x2ac8
    mov ax, 5                        ; 0x2ac9
    imul word [bp + 0xe]             ; 0x2acc
    mov cx, ax                       ; 0x2acf
    pop ax                           ; 0x2ad1
    sub ax, cx                       ; 0x2ad2
    push ax                          ; 0x2ad4
    mov al, byte [bx + 0x5d68]       ; 0x2ad5
    sub ah, ah                       ; 0x2ad9
    mov cx, 2                        ; 0x2adb
    cwd                              ; 0x2ade
    idiv cx                          ; 0x2adf
    mov cx, ax                       ; 0x2ae1
    pop ax                           ; 0x2ae3
    add ax, cx                       ; 0x2ae4
    push ax                          ; 0x2ae6
    mov ax, word [bx + pc_spell_power_cap] ; 0x2ae7
    mov cx, 2                        ; 0x2aeb
    cwd                              ; 0x2aee
    idiv cx                          ; 0x2aef
    mov cx, ax                       ; 0x2af1
    pop ax                           ; 0x2af3
    add ax, cx                       ; 0x2af4
    mov word [bp - 0x007c], ax       ; 0x2af6
    mov word [bp - 0x007e], 0        ; 0x2af9
    cmp byte [bx + 0x5e2d], 3        ; 0x2afe
    jne short @..api_idx_0084_IMVQ.l9 ; 0x2b03
    mov al, byte [bx + 0x5d68]       ; 0x2b05
    sub ah, ah                       ; 0x2b09
    mov cx, 3                        ; 0x2b0b
    imul cx                          ; 0x2b0e
    add word [bp - 0x007c], ax       ; 0x2b10
    mov word [bp - 0x007e], 3        ; 0x2b13
    jmp short @..api_idx_0084_IMVQ.l11 ; 0x2b18
@..api_idx_0084_IMVQ.l9:
    mov al, byte [bx + 0x5e2d]       ; 0x2b1a
    cmp al, 0xd                      ; 0x2b1e
    je short @..api_idx_0084_IMVQ.l10 ; 0x2b20
    cmp al, 4                        ; 0x2b22
    je short @..api_idx_0084_IMVQ.l10 ; 0x2b24
    cmp al, 6                        ; 0x2b26
    jne short @..api_idx_0084_IMVQ.l11 ; 0x2b28
@..api_idx_0084_IMVQ.l10:
    mov al, byte [bx + 0x5d68]       ; 0x2b2a
    sub ah, ah                       ; 0x2b2e
    shl ax, 1                        ; 0x2b30
    add word [bp - 0x007c], ax       ; 0x2b32
    mov word [bp - 0x007e], 2        ; 0x2b35
@..api_idx_0084_IMVQ.l11:
    mov ax, 0x5a                     ; 0x2b3a
    push ax                          ; 0x2b3d
    mov ax, 5                        ; 0x2b3e
    push ax                          ; 0x2b41
    push word [bp - 0x007c]          ; 0x2b42
    call clamp_between               ; 0x2b45
    add sp, byte 6                   ; 0x2b48
    mov word [bp - 0x007c], ax       ; 0x2b4b
@..api_idx_0084_IMVQ.l12:
    mov ax, 0x64                     ; 0x2b4e
    push ax                          ; 0x2b51
    call random_below                ; 0x2b52
    pop cx                           ; 0x2b55
    mov word [bp - 0x0084], ax       ; 0x2b56
    mov ax, 0x64                     ; 0x2b5a
    sub ax, word [bp - 0x007c]       ; 0x2b5d
    mov cx, 3                        ; 0x2b60
    cwd                              ; 0x2b63
    idiv cx                          ; 0x2b64
    mov cx, 0x64                     ; 0x2b66
    sub cx, ax                       ; 0x2b69
    mov ax, word [bp - 0x0084]       ; 0x2b6b
    cmp cx, ax                       ; 0x2b6f
    jge short @..api_idx_0084_IMVQ.l13 ; 0x2b71
    mov ax, 0                        ; 0x2b73
    jmp short @..api_idx_0084_IMVQ.l14 ; 0x2b76
@..api_idx_0084_IMVQ.l13:
    mov ax, 1                        ; 0x2b78
@..api_idx_0084_IMVQ.l14:
    mov word [bp - 0x0080], ax       ; 0x2b7b
    mov ax, 0                        ; 0x2b7e
    mov cx, word [bp - 0x0084]       ; 0x2b81
    cmp cx, word [bp - 0x007c]       ; 0x2b85
    jge short @..api_idx_0084_IMVQ.l15 ; 0x2b88
    mov ax, 1                        ; 0x2b8a
@..api_idx_0084_IMVQ.l15:
    mov word [bp - 0x0082], ax       ; 0x2b8d
    cmp word [bp - 0x0080], byte 0   ; 0x2b91
    jne short @..api_idx_0084_IMVQ.l16 ; 0x2b95
    mov ax, 0x1a                     ; 0x2b97
    jmp short @..api_idx_0084_IMVQ.l17 ; 0x2b9a
@..api_idx_0084_IMVQ.l16:
    mov ax, 0x56                     ; 0x2b9c
    cmp word [bp - 0x0082], byte 0   ; 0x2b9f
    je short @..api_idx_0084_IMVQ.l17 ; 0x2ba4
    mov ax, 0x37                     ; 0x2ba6
@..api_idx_0084_IMVQ.l17:
    push ax                          ; 0x2ba9
    mov ax, word [bp - 0x0008]       ; 0x2baa
    add ax, strict word 0x1e         ; 0x2bad
    push ax                          ; 0x2bb0
    mov ax, word [bp - 0x0006]       ; 0x2bb1
    add ax, strict word 0x61         ; 0x2bb4
    push ax                          ; 0x2bb7
    mov ax, word [bp - 0x0008]       ; 0x2bb8
    add ax, strict word 0x18         ; 0x2bbb
    push ax                          ; 0x2bbe
    mov ax, word [bp - 0x0006]       ; 0x2bbf
    add ax, strict word 0x5d         ; 0x2bc2
    push ax                          ; 0x2bc5
    call gfx_fill_area               ; 0x2bc6
    add sp, byte 0x0a                ; 0x2bc9
    mov ax, word [bp - 0x0008]       ; 0x2bcc
    add ax, strict word 0x1e         ; 0x2bcf
    push ax                          ; 0x2bd2
    mov ax, word [bp - 0x0006]       ; 0x2bd3
    add ax, strict word 0x61         ; 0x2bd6
    push ax                          ; 0x2bd9
    mov ax, word [bp - 0x0008]       ; 0x2bda
    add ax, strict word 0x18         ; 0x2bdd
    push ax                          ; 0x2be0
    mov ax, word [bp - 0x0006]       ; 0x2be1
    add ax, strict word 0x5d         ; 0x2be4
    push ax                          ; 0x2be7
    call gfx_show_area               ; 0x2be8
    add sp, byte 8                   ; 0x2beb
    call loc_IKLI                    ; 0x2bee
    test ax, ax                      ; 0x2bf1
    jne short @..api_idx_0084_IMVQ.l18 ; 0x2bf3
    mov ax, 0x19                     ; 0x2bf5
    push ax                          ; 0x2bf8
    call delay_ms                    ; 0x2bf9
    pop cx                           ; 0x2bfc
@..api_idx_0084_IMVQ.l18:
    mov ax, 0x59fe                   ; 0x2bfd
    push ax                          ; 0x2c00
    call poll_hotspots               ; 0x2c01
    pop cx                           ; 0x2c04
    dec ax                           ; 0x2c05
    mov word [bp - 0x001a], ax       ; 0x2c06
    cmp word [hotspot_hit], byte 1   ; 0x2c09
    je short @..api_idx_0084_IMVQ.l19 ; 0x2c0e
    jmp near @..api_idx_0084_IMVQ.l46 ; 0x2c10
@..api_idx_0084_IMVQ.l19:
    jmp near @..api_idx_0084_IMVQ.l45 ; 0x2c13
jumptable_34f1_case_0:
    lea ax, word [bp - 0x0010]       ; 0x2c16
    push ax                          ; 0x2c19
    lea ax, word [bp - 0x000e]       ; 0x2c1a
    push ax                          ; 0x2c1d
    call gfx_get_mouse               ; 0x2c1e
    add sp, byte 4                   ; 0x2c21
    mov ax, 4                        ; 0x2c24
    push ax                          ; 0x2c27
    mov ax, 0                        ; 0x2c28
    push ax                          ; 0x2c2b
    mov ax, word [bp - 0x0010]       ; 0x2c2c
    mov cx, word [bp - 0x0008]       ; 0x2c2f
    add cx, word [bp - 0x0012]       ; 0x2c32
    add cx, byte 0x0e                ; 0x2c35
    sub ax, cx                       ; 0x2c38
    push ax                          ; 0x2c3a
    call clamp_between               ; 0x2c3b
    add sp, byte 6                   ; 0x2c3e
    mov word [bp - 0x0016], ax       ; 0x2c41
@..api_idx_0084_IMVQ.l20:
    lea ax, word [bp - 0x0010]       ; 0x2c44
    push ax                          ; 0x2c47
    lea ax, word [bp - 0x000e]       ; 0x2c48
    push ax                          ; 0x2c4b
    call gfx_get_mouse               ; 0x2c4c
    add sp, byte 4                   ; 0x2c4f
    mov word [bp - 0x001e], ax       ; 0x2c52
    push word [bp - 0x0014]          ; 0x2c55
    mov ax, 0                        ; 0x2c58
    push ax                          ; 0x2c5b
    mov ax, word [bp - 0x0010]       ; 0x2c5c
    mov cx, word [bp - 0x0008]       ; 0x2c5f
    add cx, byte 0x0e                ; 0x2c62
    sub ax, cx                       ; 0x2c65
    sub ax, word [bp - 0x0016]       ; 0x2c67
    push ax                          ; 0x2c6a
    call clamp_between               ; 0x2c6b
    add sp, byte 6                   ; 0x2c6e
    mov word [bp - 0x0012], ax       ; 0x2c71
    cmp word [bp + 0xc], byte 1      ; 0x2c74
    jle short @..api_idx_0084_IMVQ.l21 ; 0x2c78
    mov cx, 0x64                     ; 0x2c7a
    imul cx                          ; 0x2c7d
    push ax                          ; 0x2c7f
    mov ax, word [bp - 0x0014]       ; 0x2c80
    imul cx                          ; 0x2c83
    add ax, strict word 0x64         ; 0x2c85
    cwd                              ; 0x2c88
    idiv word [bp + 0xc]             ; 0x2c89
    mov cx, ax                       ; 0x2c8c
    pop ax                           ; 0x2c8e
    cwd                              ; 0x2c8f
    idiv cx                          ; 0x2c90
    mov word [bp - 0x0018], ax       ; 0x2c92
@..api_idx_0084_IMVQ.l21:
    push word [bp - 0x0024]          ; 0x2c95
    push word [bp - 0x0022]          ; 0x2c98
    push word [bp - 0x0018]          ; 0x2c9b
    mov ax, 1                        ; 0x2c9e
    push ax                          ; 0x2ca1
    mov ax, 0xd                      ; 0x2ca2
    push ax                          ; 0x2ca5
    mov ax, word [bp - 0x0008]       ; 0x2ca6
    add ax, strict word 0x18         ; 0x2ca9
    push ax                          ; 0x2cac
    mov ax, word [bp - 0x0006]       ; 0x2cad
    add ax, strict word 0x69         ; 0x2cb0
    push ax                          ; 0x2cb3
    call draw_text_list              ; 0x2cb4
    add sp, byte 0x0e                ; 0x2cb7
    mov ax, word [bp - 0x0008]       ; 0x2cba
    add ax, strict word 0x11         ; 0x2cbd
    push ax                          ; 0x2cc0
    mov ax, word [bp - 0x0006]       ; 0x2cc1
    add ax, strict word 0x50         ; 0x2cc4
    push ax                          ; 0x2cc7
    mov ax, word [bp - 0x0008]       ; 0x2cc8
    add ax, strict word 5            ; 0x2ccb
    push ax                          ; 0x2cce
    mov ax, word [bp - 0x0006]       ; 0x2ccf
    add ax, strict word 0x36         ; 0x2cd2
    push ax                          ; 0x2cd5
    call draw_inset_panel            ; 0x2cd6
    add sp, byte 8                   ; 0x2cd9
    mov ax, 0                        ; 0x2cdc
    push ax                          ; 0x2cdf
    mov ax, word [bp - 0x0008]       ; 0x2ce0
    add ax, strict word 6            ; 0x2ce3
    push ax                          ; 0x2ce6
    mov ax, word [bp - 0x0006]       ; 0x2ce7
    add ax, strict word 0x38         ; 0x2cea
    push ax                          ; 0x2ced
    push word [bp - 0x0018]          ; 0x2cee
    call api_idx_0002_PMUV           ; 0x2cf1
    add sp, byte 8                   ; 0x2cf4
    push word [bp - 0x0012]          ; 0x2cf7
    mov ax, 7                        ; 0x2cfa
    push ax                          ; 0x2cfd
    mov ax, 8                        ; 0x2cfe
    push ax                          ; 0x2d01
    mov ax, word [bp - 0x0008]       ; 0x2d02
    add ax, strict word 6            ; 0x2d05
    push ax                          ; 0x2d08
    mov ax, word [bp - 0x0006]       ; 0x2d09
    add ax, 0xc1                     ; 0x2d0c
    push ax                          ; 0x2d0f
    call draw_scrollbar              ; 0x2d10
    add sp, byte 0x0a                ; 0x2d13
    mov ax, 0                        ; 0x2d16
    push ax                          ; 0x2d19
    push ax                          ; 0x2d1a
    mov ax, word [bp - 0x0008]       ; 0x2d1b
    add ax, word [bp - 0x0012]       ; 0x2d1e
    add ax, strict word 0x12         ; 0x2d21
    push ax                          ; 0x2d24
    mov ax, word [bp - 0x0006]       ; 0x2d25
    add ax, 0xc9                     ; 0x2d28
    push ax                          ; 0x2d2b
    mov ax, word [bp - 0x0008]       ; 0x2d2c
    add ax, word [bp - 0x0012]       ; 0x2d2f
    add ax, strict word 0xe          ; 0x2d32
    push ax                          ; 0x2d35
    mov ax, word [bp - 0x0006]       ; 0x2d36
    add ax, 0xc1                     ; 0x2d39
    push ax                          ; 0x2d3c
    mov ax, 0                        ; 0x2d3d
    push ax                          ; 0x2d40
    call set_hotspot                 ; 0x2d41
    add sp, byte 0x0e                ; 0x2d44
    mov ax, word [bp - 0x0008]       ; 0x2d47
    add ax, strict word 0x30         ; 0x2d4a
    push ax                          ; 0x2d4d
    mov ax, word [bp - 0x0006]       ; 0x2d4e
    add ax, 0xc9                     ; 0x2d51
    push ax                          ; 0x2d54
    mov ax, word [bp - 0x0008]       ; 0x2d55
    add ax, strict word 6            ; 0x2d58
    push ax                          ; 0x2d5b
    mov ax, word [bp - 0x0006]       ; 0x2d5c
    add ax, strict word 0x5d         ; 0x2d5f
    push ax                          ; 0x2d62
    call gfx_show_area               ; 0x2d63
    add sp, byte 8                   ; 0x2d66
    mov ax, word [bp - 0x0008]       ; 0x2d69
    add ax, strict word 0x12         ; 0x2d6c
    push ax                          ; 0x2d6f
    mov ax, word [bp - 0x0006]       ; 0x2d70
    add ax, strict word 0x50         ; 0x2d73
    push ax                          ; 0x2d76
    mov ax, word [bp - 0x0008]       ; 0x2d77
    add ax, strict word 5            ; 0x2d7a
    push ax                          ; 0x2d7d
    mov ax, word [bp - 0x0006]       ; 0x2d7e
    add ax, strict word 0x36         ; 0x2d81
    push ax                          ; 0x2d84
    call gfx_show_area               ; 0x2d85
    add sp, byte 8                   ; 0x2d88
    cmp word [bp - 0x001e], byte 0   ; 0x2d8b
    je short @..api_idx_0084_IMVQ.l22 ; 0x2d8f
    jmp near @..api_idx_0084_IMVQ.l20 ; 0x2d91
@..api_idx_0084_IMVQ.l22:
    jmp near @..api_idx_0084_IMVQ.l46 ; 0x2d94
jumptable_34f1_case_1:
    cmp word [bp - 0x001a], byte 1   ; 0x2d97
    jne short @..api_idx_0084_IMVQ.l24 ; 0x2d9b
    mov ax, 1                        ; 0x2d9d
    push ax                          ; 0x2da0
    mov ax, word [bp - 0x0008]       ; 0x2da1
    add ax, strict word 0xc          ; 0x2da4
    push ax                          ; 0x2da7
    mov ax, word [bp - 0x0006]       ; 0x2da8
    add ax, 0xc9                     ; 0x2dab
    push ax                          ; 0x2dae
    mov ax, word [bp - 0x0008]       ; 0x2daf
    add ax, strict word 6            ; 0x2db2
    push ax                          ; 0x2db5
    mov ax, word [bp - 0x0006]       ; 0x2db6
    add ax, 0xc1                     ; 0x2db9
    push ax                          ; 0x2dbc
    call flash_area                  ; 0x2dbd
    add sp, byte 0x0a                ; 0x2dc0
    cmp word [bp - 0x0018], byte 0   ; 0x2dc3
    jle short @..api_idx_0084_IMVQ.l23 ; 0x2dc7
    dec word [bp - 0x0018]           ; 0x2dc9
@..api_idx_0084_IMVQ.l23:
    jmp short @..api_idx_0084_IMVQ.l25 ; 0x2dcc
@..api_idx_0084_IMVQ.l24:
    mov ax, 1                        ; 0x2dce
    push ax                          ; 0x2dd1
    mov ax, word [bp - 0x0008]       ; 0x2dd2
    add ax, strict word 0x30         ; 0x2dd5
    push ax                          ; 0x2dd8
    mov ax, word [bp - 0x0006]       ; 0x2dd9
    add ax, 0xc9                     ; 0x2ddc
    push ax                          ; 0x2ddf
    mov ax, word [bp - 0x0008]       ; 0x2de0
    add ax, strict word 0x2a         ; 0x2de3
    push ax                          ; 0x2de6
    mov ax, word [bp - 0x0006]       ; 0x2de7
    add ax, 0xc1                     ; 0x2dea
    push ax                          ; 0x2ded
    call flash_area                  ; 0x2dee
    add sp, byte 0x0a                ; 0x2df1
    mov ax, word [bp + 0xc]          ; 0x2df4
    dec ax                           ; 0x2df7
    cmp ax, word [bp - 0x0018]       ; 0x2df8
    jle short @..api_idx_0084_IMVQ.l25 ; 0x2dfb
    inc word [bp - 0x0018]           ; 0x2dfd
@..api_idx_0084_IMVQ.l25:
    mov ax, word [bp + 0xc]          ; 0x2e00
    cmp ax, strict word 1            ; 0x2e03
    jle short @..api_idx_0084_IMVQ.l26 ; 0x2e06
    push word [bp - 0x0014]          ; 0x2e08
    mov ax, 0                        ; 0x2e0b
    push ax                          ; 0x2e0e
    mov ax, 0x64                     ; 0x2e0f
    imul word [bp - 0x0014]          ; 0x2e12
    add ax, strict word 0x64         ; 0x2e15
    mov cx, word [bp + 0xc]          ; 0x2e18
    dec cx                           ; 0x2e1b
    cwd                              ; 0x2e1c
    idiv cx                          ; 0x2e1d
    imul word [bp - 0x0018]          ; 0x2e1f
    mov cx, 0x64                     ; 0x2e22
    cwd                              ; 0x2e25
    idiv cx                          ; 0x2e26
    push ax                          ; 0x2e28
    call clamp_between               ; 0x2e29
    add sp, byte 6                   ; 0x2e2c
    mov word [bp - 0x0012], ax       ; 0x2e2f
@..api_idx_0084_IMVQ.l26:
    push word [bp - 0x0024]          ; 0x2e32
    push word [bp - 0x0022]          ; 0x2e35
    push word [bp - 0x0018]          ; 0x2e38
    mov ax, 1                        ; 0x2e3b
    push ax                          ; 0x2e3e
    mov ax, 0xd                      ; 0x2e3f
    push ax                          ; 0x2e42
    mov ax, word [bp - 0x0008]       ; 0x2e43
    add ax, strict word 0x18         ; 0x2e46
    push ax                          ; 0x2e49
    mov ax, word [bp - 0x0006]       ; 0x2e4a
    add ax, strict word 0x69         ; 0x2e4d
    push ax                          ; 0x2e50
    call draw_text_list              ; 0x2e51
    add sp, byte 0x0e                ; 0x2e54
    mov ax, word [bp - 0x0008]       ; 0x2e57
    add ax, strict word 0x11         ; 0x2e5a
    push ax                          ; 0x2e5d
    mov ax, word [bp - 0x0006]       ; 0x2e5e
    add ax, strict word 0x50         ; 0x2e61
    push ax                          ; 0x2e64
    mov ax, word [bp - 0x0008]       ; 0x2e65
    add ax, strict word 5            ; 0x2e68
    push ax                          ; 0x2e6b
    mov ax, word [bp - 0x0006]       ; 0x2e6c
    add ax, strict word 0x36         ; 0x2e6f
    push ax                          ; 0x2e72
    call draw_inset_panel            ; 0x2e73
    add sp, byte 8                   ; 0x2e76
    mov ax, 0                        ; 0x2e79
    push ax                          ; 0x2e7c
    mov ax, word [bp - 0x0008]       ; 0x2e7d
    add ax, strict word 6            ; 0x2e80
    push ax                          ; 0x2e83
    mov ax, word [bp - 0x0006]       ; 0x2e84
    add ax, strict word 0x38         ; 0x2e87
    push ax                          ; 0x2e8a
    push word [bp - 0x0018]          ; 0x2e8b
    call api_idx_0002_PMUV           ; 0x2e8e
    add sp, byte 8                   ; 0x2e91
    push word [bp - 0x0012]          ; 0x2e94
    mov ax, 7                        ; 0x2e97
    push ax                          ; 0x2e9a
    mov ax, 8                        ; 0x2e9b
    push ax                          ; 0x2e9e
    mov ax, word [bp - 0x0008]       ; 0x2e9f
    add ax, strict word 6            ; 0x2ea2
    push ax                          ; 0x2ea5
    mov ax, word [bp - 0x0006]       ; 0x2ea6
    add ax, 0xc1                     ; 0x2ea9
    push ax                          ; 0x2eac
    call draw_scrollbar              ; 0x2ead
    add sp, byte 0x0a                ; 0x2eb0
    mov ax, 0                        ; 0x2eb3
    push ax                          ; 0x2eb6
    push ax                          ; 0x2eb7
    mov ax, word [bp - 0x0008]       ; 0x2eb8
    add ax, word [bp - 0x0012]       ; 0x2ebb
    add ax, strict word 0x12         ; 0x2ebe
    push ax                          ; 0x2ec1
    mov ax, word [bp - 0x0006]       ; 0x2ec2
    add ax, 0xc9                     ; 0x2ec5
    push ax                          ; 0x2ec8
    mov ax, word [bp - 0x0008]       ; 0x2ec9
    add ax, word [bp - 0x0012]       ; 0x2ecc
    add ax, strict word 0xe          ; 0x2ecf
    push ax                          ; 0x2ed2
    mov ax, word [bp - 0x0006]       ; 0x2ed3
    add ax, 0xc1                     ; 0x2ed6
    push ax                          ; 0x2ed9
    mov ax, 0                        ; 0x2eda
    push ax                          ; 0x2edd
    call set_hotspot                 ; 0x2ede
    add sp, byte 0x0e                ; 0x2ee1
    mov ax, word [bp - 0x0008]       ; 0x2ee4
    add ax, strict word 0x30         ; 0x2ee7
    push ax                          ; 0x2eea
    mov ax, word [bp - 0x0006]       ; 0x2eeb
    add ax, 0xc9                     ; 0x2eee
    push ax                          ; 0x2ef1
    mov ax, word [bp - 0x0008]       ; 0x2ef2
    add ax, strict word 6            ; 0x2ef5
    push ax                          ; 0x2ef8
    mov ax, word [bp - 0x0006]       ; 0x2ef9
    add ax, strict word 0x5d         ; 0x2efc
    push ax                          ; 0x2eff
    call gfx_show_area               ; 0x2f00
    add sp, byte 8                   ; 0x2f03
    mov ax, word [bp - 0x0008]       ; 0x2f06
    add ax, strict word 0x12         ; 0x2f09
    push ax                          ; 0x2f0c
    mov ax, word [bp - 0x0006]       ; 0x2f0d
    add ax, strict word 0x50         ; 0x2f10
    push ax                          ; 0x2f13
    mov ax, word [bp - 0x0008]       ; 0x2f14
    add ax, strict word 5            ; 0x2f17
    push ax                          ; 0x2f1a
    mov ax, word [bp - 0x0006]       ; 0x2f1b
    add ax, strict word 0x36         ; 0x2f1e
    push ax                          ; 0x2f21
    call gfx_show_area               ; 0x2f22
    add sp, byte 8                   ; 0x2f25
    jmp near @..api_idx_0084_IMVQ.l46 ; 0x2f28
jumptable_34f1_case_3:
    cmp word [bp + 0x8], byte 0      ; 0x2f2b
    jne short @..api_idx_0084_IMVQ.l27 ; 0x2f2f
    jmp near @..api_idx_0084_IMVQ.l33 ; 0x2f31
@..api_idx_0084_IMVQ.l27:
    cmp word [bp - 0x0080], byte 0   ; 0x2f34
    jne short @..api_idx_0084_IMVQ.l28 ; 0x2f38
    mov ax, 4                        ; 0x2f3a
    push ax                          ; 0x2f3d
    call play_sound_effect           ; 0x2f3e
    pop cx                           ; 0x2f41
    mov word [spell_dialog_button], 1 ; 0x2f42
    mov word [bp - 0x001c], 0        ; 0x2f48
    jmp near @..api_idx_0084_IMVQ.l33 ; 0x2f4d
@..api_idx_0084_IMVQ.l28:
    mov ax, 1                        ; 0x2f50
    push ax                          ; 0x2f53
    mov ax, word [bp - 0x0008]       ; 0x2f54
    add ax, strict word 0x20         ; 0x2f57
    push ax                          ; 0x2f5a
    mov ax, word [bp - 0x0006]       ; 0x2f5b
    add ax, strict word 0x50         ; 0x2f5e
    push ax                          ; 0x2f61
    mov ax, word [bp - 0x0008]       ; 0x2f62
    add ax, strict word 0x18         ; 0x2f65
    push ax                          ; 0x2f68
    mov ax, word [bp - 0x0006]       ; 0x2f69
    add ax, strict word 8            ; 0x2f6c
    push ax                          ; 0x2f6f
    call loc_OVQV                    ; 0x2f70
    add sp, byte 0x0a                ; 0x2f73
    mov ax, 0xc0                     ; 0x2f76
    push ax                          ; 0x2f79
    mov ax, 0x1a                     ; 0x2f7a
    push ax                          ; 0x2f7d
    call gfx_set_text_color          ; 0x2f7e
    add sp, byte 4                   ; 0x2f81
    mov ax, dseg_90d8                ; 0x2f84
    push ax                          ; 0x2f87
    lea ax, word [bp - 0x0074]       ; 0x2f88
    push ax                          ; 0x2f8b
    call aztec_strcpy                ; 0x2f8c
    add sp, byte 4                   ; 0x2f8f
    lea ax, word [bp - 0x004c]       ; 0x2f92
    push ax                          ; 0x2f95
    lea ax, word [bp - 0x0074]       ; 0x2f96
    push ax                          ; 0x2f99
    call aztec_strcat                ; 0x2f9a
    add sp, byte 4                   ; 0x2f9d
    mov ax, dseg_90da                ; 0x2fa0
    push ax                          ; 0x2fa3
    lea ax, word [bp - 0x0074]       ; 0x2fa4
    push ax                          ; 0x2fa7
    call aztec_strcat                ; 0x2fa8
    add sp, byte 4                   ; 0x2fab
    mov ax, word [bp - 0x0008]       ; 0x2fae
    add ax, strict word 0x1a         ; 0x2fb1
    push ax                          ; 0x2fb4
    lea ax, word [bp - 0x0074]       ; 0x2fb5
    push ax                          ; 0x2fb8
    call aztec_strlen                ; 0x2fb9
    pop cx                           ; 0x2fbc
    mov cx, ax                       ; 0x2fbd
    mov ax, 0xc                      ; 0x2fbf
    sub ax, cx                       ; 0x2fc2
    mov cx, 6                        ; 0x2fc4
    imul cx                          ; 0x2fc7
    mov cx, 2                        ; 0x2fc9
    cwd                              ; 0x2fcc
    idiv cx                          ; 0x2fcd
    add ax, word [bp - 0x0006]       ; 0x2fcf
    add ax, strict word 9            ; 0x2fd2
    push ax                          ; 0x2fd5
    call gfx_set_text_pos            ; 0x2fd6
    add sp, byte 4                   ; 0x2fd9
    mov ax, 0                        ; 0x2fdc
    push ax                          ; 0x2fdf
    lea ax, word [bp - 0x0074]       ; 0x2fe0
    push ax                          ; 0x2fe3
    call draw_text_glyphs            ; 0x2fe4
    add sp, byte 4                   ; 0x2fe7
    mov ax, word [bp - 0x0008]       ; 0x2fea
    add ax, strict word 0x20         ; 0x2fed
    push ax                          ; 0x2ff0
    mov ax, word [bp - 0x0006]       ; 0x2ff1
    add ax, strict word 0x50         ; 0x2ff4
    push ax                          ; 0x2ff7
    mov ax, word [bp - 0x0008]       ; 0x2ff8
    add ax, strict word 0x18         ; 0x2ffb
    push ax                          ; 0x2ffe
    mov ax, word [bp - 0x0006]       ; 0x2fff
    add ax, strict word 8            ; 0x3002
    push ax                          ; 0x3005
    call gfx_show_area               ; 0x3006
    add sp, byte 8                   ; 0x3009
    mov ax, word [bp - 0x0008]       ; 0x300c
    add ax, strict word 0x11         ; 0x300f
    push ax                          ; 0x3012
    mov ax, word [bp - 0x0006]       ; 0x3013
    add ax, strict word 0x50         ; 0x3016
    push ax                          ; 0x3019
    mov ax, word [bp - 0x0008]       ; 0x301a
    add ax, strict word 5            ; 0x301d
    push ax                          ; 0x3020
    mov ax, word [bp - 0x0006]       ; 0x3021
    add ax, strict word 0x36         ; 0x3024
    push ax                          ; 0x3027
    call draw_inset_panel            ; 0x3028
    add sp, byte 8                   ; 0x302b
    mov ax, 1                        ; 0x302e
    push ax                          ; 0x3031
    mov ax, word [bp - 0x0008]       ; 0x3032
    add ax, strict word 6            ; 0x3035
    push ax                          ; 0x3038
    mov ax, word [bp - 0x0006]       ; 0x3039
    add ax, strict word 0x38         ; 0x303c
    push ax                          ; 0x303f
    push word [bp + 0x4]             ; 0x3040
    call api_idx_0002_PMUV           ; 0x3043
    add sp, byte 8                   ; 0x3046
    mov ax, word [bp - 0x0008]       ; 0x3049
    add ax, strict word 0x12         ; 0x304c
    push ax                          ; 0x304f
    mov ax, word [bp - 0x0006]       ; 0x3050
    add ax, strict word 0x50         ; 0x3053
    push ax                          ; 0x3056
    mov ax, word [bp - 0x0008]       ; 0x3057
    add ax, strict word 5            ; 0x305a
    push ax                          ; 0x305d
    mov ax, word [bp - 0x0006]       ; 0x305e
    add ax, strict word 0x36         ; 0x3061
    push ax                          ; 0x3064
    call gfx_show_area               ; 0x3065
    add sp, byte 8                   ; 0x3068
    cmp word [mouse_active], byte 0  ; 0x306b
    je short @..api_idx_0084_IMVQ.l31 ; 0x3070
@..api_idx_0084_IMVQ.l29:
    lea ax, word [bp - 0x0010]       ; 0x3072
    push ax                          ; 0x3075
    lea ax, word [bp - 0x000e]       ; 0x3076
    push ax                          ; 0x3079
    call gfx_get_mouse               ; 0x307a
    add sp, byte 4                   ; 0x307d
    test ax, ax                      ; 0x3080
    je short @..api_idx_0084_IMVQ.l30 ; 0x3082
    jmp short @..api_idx_0084_IMVQ.l29 ; 0x3084
@..api_idx_0084_IMVQ.l30:
    jmp short @..api_idx_0084_IMVQ.l32 ; 0x3086
@..api_idx_0084_IMVQ.l31:
    mov ax, 1                        ; 0x3088
    push ax                          ; 0x308b
    call get_filtered_key            ; 0x308c
    pop cx                           ; 0x308f
@..api_idx_0084_IMVQ.l32:
    mov ax, word [bp - 0x0008]       ; 0x3090
    add ax, strict word 0x11         ; 0x3093
    push ax                          ; 0x3096
    mov ax, word [bp - 0x0006]       ; 0x3097
    add ax, strict word 0x50         ; 0x309a
    push ax                          ; 0x309d
    mov ax, word [bp - 0x0008]       ; 0x309e
    add ax, strict word 5            ; 0x30a1
    push ax                          ; 0x30a4
    mov ax, word [bp - 0x0006]       ; 0x30a5
    add ax, strict word 0x36         ; 0x30a8
    push ax                          ; 0x30ab
    call draw_inset_panel            ; 0x30ac
    add sp, byte 8                   ; 0x30af
    mov ax, 0                        ; 0x30b2
    push ax                          ; 0x30b5
    mov ax, word [bp - 0x0008]       ; 0x30b6
    add ax, strict word 6            ; 0x30b9
    push ax                          ; 0x30bc
    mov ax, word [bp - 0x0006]       ; 0x30bd
    add ax, strict word 0x38         ; 0x30c0
    push ax                          ; 0x30c3
    push word [bp - 0x0018]          ; 0x30c4
    call api_idx_0002_PMUV           ; 0x30c7
    add sp, byte 8                   ; 0x30ca
    mov ax, word [bp - 0x0008]       ; 0x30cd
    add ax, strict word 0x12         ; 0x30d0
    push ax                          ; 0x30d3
    mov ax, word [bp - 0x0006]       ; 0x30d4
    add ax, strict word 0x50         ; 0x30d7
    push ax                          ; 0x30da
    mov ax, word [bp - 0x0008]       ; 0x30db
    add ax, strict word 5            ; 0x30de
    push ax                          ; 0x30e1
    mov ax, word [bp - 0x0006]       ; 0x30e2
    add ax, strict word 0x36         ; 0x30e5
    push ax                          ; 0x30e8
    call gfx_show_area               ; 0x30e9
    add sp, byte 8                   ; 0x30ec
    mov ax, 0                        ; 0x30ef
    push ax                          ; 0x30f2
    mov ax, word [bp - 0x0008]       ; 0x30f3
    add ax, strict word 0x20         ; 0x30f6
    push ax                          ; 0x30f9
    mov ax, word [bp - 0x0006]       ; 0x30fa
    add ax, strict word 0x50         ; 0x30fd
    push ax                          ; 0x3100
    mov ax, word [bp - 0x0008]       ; 0x3101
    add ax, strict word 0x18         ; 0x3104
    push ax                          ; 0x3107
    mov ax, word [bp - 0x0006]       ; 0x3108
    add ax, strict word 8            ; 0x310b
    push ax                          ; 0x310e
    call loc_OVQV                    ; 0x310f
    add sp, byte 0x0a                ; 0x3112
    mov ax, 0xc0                     ; 0x3115
    push ax                          ; 0x3118
    mov ax, 0x55                     ; 0x3119
    push ax                          ; 0x311c
    call gfx_set_text_color          ; 0x311d
    add sp, byte 4                   ; 0x3120
    mov ax, word [bp - 0x0008]       ; 0x3123
    add ax, strict word 0x1a         ; 0x3126
    push ax                          ; 0x3129
    lea ax, word [bp - 0x004c]       ; 0x312a
    push ax                          ; 0x312d
    call aztec_strlen                ; 0x312e
    pop cx                           ; 0x3131
    mov cx, ax                       ; 0x3132
    mov ax, 0xc                      ; 0x3134
    sub ax, cx                       ; 0x3137
    mov cx, 6                        ; 0x3139
    imul cx                          ; 0x313c
    mov cx, 2                        ; 0x313e
    cwd                              ; 0x3141
    idiv cx                          ; 0x3142
    add ax, word [bp - 0x0006]       ; 0x3144
    add ax, strict word 9            ; 0x3147
    push ax                          ; 0x314a
    call gfx_set_text_pos            ; 0x314b
    add sp, byte 4                   ; 0x314e
    mov ax, 0                        ; 0x3151
    push ax                          ; 0x3154
    lea ax, word [bp - 0x004c]       ; 0x3155
    push ax                          ; 0x3158
    call draw_text_glyphs            ; 0x3159
    add sp, byte 4                   ; 0x315c
    mov ax, word [bp - 0x0008]       ; 0x315f
    add ax, strict word 0x20         ; 0x3162
    push ax                          ; 0x3165
    mov ax, word [bp - 0x0006]       ; 0x3166
    add ax, strict word 0x50         ; 0x3169
    push ax                          ; 0x316c
    mov ax, word [bp - 0x0008]       ; 0x316d
    add ax, strict word 0x18         ; 0x3170
    push ax                          ; 0x3173
    mov ax, word [bp - 0x0006]       ; 0x3174
    add ax, strict word 8            ; 0x3177
    push ax                          ; 0x317a
    call gfx_show_area               ; 0x317b
    add sp, byte 8                   ; 0x317e
@..api_idx_0084_IMVQ.l33:
    jmp near @..api_idx_0084_IMVQ.l46 ; 0x3181
jumptable_34f1_case_4:
    cmp word [bp + 0xa], byte 0      ; 0x3184
    je short @..api_idx_0084_IMVQ.l34 ; 0x3188
    mov ax, 1                        ; 0x318a
    push ax                          ; 0x318d
    push ax                          ; 0x318e
    mov ax, 0xc                      ; 0x318f
    push ax                          ; 0x3192
    mov ax, word [bp - 0x0008]       ; 0x3193
    add ax, strict word 0x27         ; 0x3196
    push ax                          ; 0x3199
    mov ax, word [bp - 0x0006]       ; 0x319a
    add ax, strict word 8            ; 0x319d
    push ax                          ; 0x31a0
    call flash_button                ; 0x31a1
    add sp, byte 0x0a                ; 0x31a4
    mov ax, 0                        ; 0x31a7
    push ax                          ; 0x31aa
    mov ax, 1                        ; 0x31ab
    push ax                          ; 0x31ae
    mov ax, 0xc                      ; 0x31af
    push ax                          ; 0x31b2
    mov ax, word [bp - 0x0008]       ; 0x31b3
    add ax, strict word 0x27         ; 0x31b6
    push ax                          ; 0x31b9
    mov ax, word [bp - 0x0006]       ; 0x31ba
    add ax, strict word 8            ; 0x31bd
    push ax                          ; 0x31c0
    call flash_button                ; 0x31c1
    add sp, byte 0x0a                ; 0x31c4
    mov word [spell_dialog_button], 2 ; 0x31c7
    mov word [bp - 0x001c], 0        ; 0x31cd
@..api_idx_0084_IMVQ.l34:
    jmp near @..api_idx_0084_IMVQ.l46 ; 0x31d2
jumptable_34f1_case_5:
    mov ax, word [bp - 0x001a]       ; 0x31d5
    add ax, strict word 0xfffb       ; 0x31d8
    mov word [bp - 0x0002], ax       ; 0x31db
    shl ax, 1                        ; 0x31de
    mov bx, ax                       ; 0x31e0
    cmp word [bx + bss_9230], byte 0 ; 0x31e2
    je short @..api_idx_0084_IMVQ.l35 ; 0x31e7
    jmp near @..api_idx_0084_IMVQ.l44 ; 0x31e9
@..api_idx_0084_IMVQ.l35:
    mov word [bp - 0x007a], 0        ; 0x31ec
    mov word [bp - 0x0004], 0        ; 0x31f1
@..api_idx_0084_IMVQ.l36:
    mov ax, word [bp - 0x0004]       ; 0x31f6
    shl ax, 1                        ; 0x31f9
    mov bx, ax                       ; 0x31fb
    cmp word [bx + bss_9230], byte 0 ; 0x31fd
    je short @..api_idx_0084_IMVQ.l37 ; 0x3202
    inc word [bp - 0x007a]           ; 0x3204
@..api_idx_0084_IMVQ.l37:
    inc word [bp - 0x0004]           ; 0x3207
    mov ax, word [bp - 0x0004]       ; 0x320a
    cmp ax, strict word 8            ; 0x320d
    jl short @..api_idx_0084_IMVQ.l36 ; 0x3210
    mov ax, word [bp - 0x0002]       ; 0x3212
    shl ax, 1                        ; 0x3215
    mov bx, ax                       ; 0x3217
    mov word [bx + bss_9230], 1      ; 0x3219
    push word [bx + bss_9230]        ; 0x321f
    mov ax, word [bp - 0x0002]       ; 0x3223
    mov cx, 4                        ; 0x3226
    cwd                              ; 0x3229
    idiv cx                          ; 0x322a
    mov cx, 5                        ; 0x322c
    shl ax, cl                       ; 0x322f
    add ax, word [bp - 0x0008]       ; 0x3231
    add ax, strict word 0x11         ; 0x3234
    push ax                          ; 0x3237
    mov ax, word [bp - 0x0002]       ; 0x3238
    mov cx, 4                        ; 0x323b
    cwd                              ; 0x323e
    idiv cx                          ; 0x323f
    mov ax, dx                       ; 0x3241
    mov cx, 0x1a                     ; 0x3243
    imul cx                          ; 0x3246
    add ax, word [bp - 0x0006]       ; 0x3248
    add ax, strict word 0x6b         ; 0x324b
    push ax                          ; 0x324e
    mov ax, word [bp - 0x0002]       ; 0x324f
    mov cx, 4                        ; 0x3252
    cwd                              ; 0x3255
    idiv cx                          ; 0x3256
    mov cx, 5                        ; 0x3258
    shl ax, cl                       ; 0x325b
    add ax, word [bp - 0x0008]       ; 0x325d
    add ax, strict word 5            ; 0x3260
    push ax                          ; 0x3263
    mov ax, word [bp - 0x0002]       ; 0x3264
    mov cx, 4                        ; 0x3267
    cwd                              ; 0x326a
    idiv cx                          ; 0x326b
    mov ax, dx                       ; 0x326d
    mov cx, 0x1a                     ; 0x326f
    imul cx                          ; 0x3272
    add ax, word [bp - 0x0006]       ; 0x3274
    add ax, strict word 0x5d         ; 0x3277
    push ax                          ; 0x327a
    call loc_OVQV                    ; 0x327b
    add sp, byte 0x0a                ; 0x327e
    mov ax, 0xc2                     ; 0x3281
    push ax                          ; 0x3284
    mov ax, 1                        ; 0x3285
    push ax                          ; 0x3288
    call gfx_set_text_color          ; 0x3289
    add sp, byte 4                   ; 0x328c
    mov ax, word [bp - 0x0002]       ; 0x328f
    mov cx, 4                        ; 0x3292
    cwd                              ; 0x3295
    idiv cx                          ; 0x3296
    mov cx, 5                        ; 0x3298
    shl ax, cl                       ; 0x329b
    add ax, word [bp - 0x0008]       ; 0x329d
    add ax, strict word 7            ; 0x32a0
    push ax                          ; 0x32a3
    mov ax, word [bp - 0x0002]       ; 0x32a4
    mov cx, 4                        ; 0x32a7
    cwd                              ; 0x32aa
    idiv cx                          ; 0x32ab
    mov ax, dx                       ; 0x32ad
    mov cx, 0x1a                     ; 0x32af
    imul cx                          ; 0x32b2
    add ax, word [bp - 0x0006]       ; 0x32b4
    add ax, strict word 0x5f         ; 0x32b7
    push ax                          ; 0x32ba
    call gfx_set_text_pos            ; 0x32bb
    add sp, byte 4                   ; 0x32be
    mov ax, 1                        ; 0x32c1
    push ax                          ; 0x32c4
    mov ax, word [bp - 0x0002]       ; 0x32c5
    shl ax, 1                        ; 0x32c8
    mov bx, ax                       ; 0x32ca
    mov al, byte [bx + bss_9240]     ; 0x32cc
    sub ah, ah                       ; 0x32d0
    push ax                          ; 0x32d2
    call draw_font_glyph             ; 0x32d3
    add sp, byte 4                   ; 0x32d6
    mov ax, word [bp - 0x0002]       ; 0x32d9
    mov cx, 4                        ; 0x32dc
    cwd                              ; 0x32df
    idiv cx                          ; 0x32e0
    mov cx, 5                        ; 0x32e2
    shl ax, cl                       ; 0x32e5
    add ax, word [bp - 0x0008]       ; 0x32e7
    add ax, strict word 0x11         ; 0x32ea
    push ax                          ; 0x32ed
    mov ax, word [bp - 0x0002]       ; 0x32ee
    mov cx, 4                        ; 0x32f1
    cwd                              ; 0x32f4
    idiv cx                          ; 0x32f5
    mov ax, dx                       ; 0x32f7
    mov cx, 0x1a                     ; 0x32f9
    imul cx                          ; 0x32fc
    add ax, word [bp - 0x0006]       ; 0x32fe
    add ax, strict word 0x6b         ; 0x3301
    push ax                          ; 0x3304
    mov ax, word [bp - 0x0002]       ; 0x3305
    mov cx, 4                        ; 0x3308
    cwd                              ; 0x330b
    idiv cx                          ; 0x330c
    mov cx, 5                        ; 0x330e
    shl ax, cl                       ; 0x3311
    add ax, word [bp - 0x0008]       ; 0x3313
    add ax, strict word 5            ; 0x3316
    push ax                          ; 0x3319
    mov ax, word [bp - 0x0002]       ; 0x331a
    mov cx, 4                        ; 0x331d
    cwd                              ; 0x3320
    idiv cx                          ; 0x3321
    mov ax, dx                       ; 0x3323
    mov cx, 0x1a                     ; 0x3325
    imul cx                          ; 0x3328
    add ax, word [bp - 0x0006]       ; 0x332a
    add ax, strict word 0x5d         ; 0x332d
    push ax                          ; 0x3330
    call gfx_show_area               ; 0x3331
    add sp, byte 8                   ; 0x3334
    mov ax, 4                        ; 0x3337
    push ax                          ; 0x333a
    call play_sound_effect           ; 0x333b
    pop cx                           ; 0x333e
    cmp word [bss_9250], byte 0xff   ; 0x333f
    jne short @..api_idx_0084_IMVQ.l38 ; 0x3344
    mov word [spell_dialog_button], 1 ; 0x3346
    mov word [bp - 0x001c], 0        ; 0x334c
    jmp near @..api_idx_0084_IMVQ.l44 ; 0x3351
@..api_idx_0084_IMVQ.l38:
    cmp word [bp - 0x0080], byte 0   ; 0x3354
    je short @..api_idx_0084_IMVQ.l39 ; 0x3358
    mov ax, 0xa                      ; 0x335a
    imul word [bss_9250]             ; 0x335d
    add ax, word [bp - 0x0002]       ; 0x3361
    mov bx, ax                       ; 0x3364
    mov al, byte [bx + bss_9252]     ; 0x3366
    sub ah, ah                       ; 0x336a
    mov cx, word [bp - 0x007a]       ; 0x336c
    add cx, byte 0x31                ; 0x336f
    cmp ax, cx                       ; 0x3372
    je short @..api_idx_0084_IMVQ.l40 ; 0x3374
@..api_idx_0084_IMVQ.l39:
    mov word [spell_dialog_button], 1 ; 0x3376
    mov word [bp - 0x001c], 0        ; 0x337c
    jmp near @..api_idx_0084_IMVQ.l44 ; 0x3381
@..api_idx_0084_IMVQ.l40:
    cmp word [bp - 0x0082], byte 0   ; 0x3384
    je short @..api_idx_0084_IMVQ.l41 ; 0x3389
    jmp near @..api_idx_0084_IMVQ.l42 ; 0x338b
@..api_idx_0084_IMVQ.l41:
    mov ax, 0xc8                     ; 0x338e
    push ax                          ; 0x3391
    call delay_ms                    ; 0x3392
    pop cx                           ; 0x3395
    mov ax, word [bp - 0x0002]       ; 0x3396
    shl ax, 1                        ; 0x3399
    mov bx, ax                       ; 0x339b
    mov word [bx + bss_9230], 0      ; 0x339d
    push word [bx + bss_9230]        ; 0x33a3
    mov ax, word [bp - 0x0002]       ; 0x33a7
    mov cx, 4                        ; 0x33aa
    cwd                              ; 0x33ad
    idiv cx                          ; 0x33ae
    mov cx, 5                        ; 0x33b0
    shl ax, cl                       ; 0x33b3
    add ax, word [bp - 0x0008]       ; 0x33b5
    add ax, strict word 0x11         ; 0x33b8
    push ax                          ; 0x33bb
    mov ax, word [bp - 0x0002]       ; 0x33bc
    mov cx, 4                        ; 0x33bf
    cwd                              ; 0x33c2
    idiv cx                          ; 0x33c3
    mov ax, dx                       ; 0x33c5
    mov cx, 0x1a                     ; 0x33c7
    imul cx                          ; 0x33ca
    add ax, word [bp - 0x0006]       ; 0x33cc
    add ax, strict word 0x6b         ; 0x33cf
    push ax                          ; 0x33d2
    mov ax, word [bp - 0x0002]       ; 0x33d3
    mov cx, 4                        ; 0x33d6
    cwd                              ; 0x33d9
    idiv cx                          ; 0x33da
    mov cx, 5                        ; 0x33dc
    shl ax, cl                       ; 0x33df
    add ax, word [bp - 0x0008]       ; 0x33e1
    add ax, strict word 5            ; 0x33e4
    push ax                          ; 0x33e7
    mov ax, word [bp - 0x0002]       ; 0x33e8
    mov cx, 4                        ; 0x33eb
    cwd                              ; 0x33ee
    idiv cx                          ; 0x33ef
    mov ax, dx                       ; 0x33f1
    mov cx, 0x1a                     ; 0x33f3
    imul cx                          ; 0x33f6
    add ax, word [bp - 0x0006]       ; 0x33f8
    add ax, strict word 0x5d         ; 0x33fb
    push ax                          ; 0x33fe
    call loc_OVQV                    ; 0x33ff
    add sp, byte 0x0a                ; 0x3402
    mov ax, 0xc2                     ; 0x3405
    push ax                          ; 0x3408
    mov ax, 0x1a                     ; 0x3409
    push ax                          ; 0x340c
    call gfx_set_text_color          ; 0x340d
    add sp, byte 4                   ; 0x3410
    mov ax, word [bp - 0x0002]       ; 0x3413
    mov cx, 4                        ; 0x3416
    cwd                              ; 0x3419
    idiv cx                          ; 0x341a
    mov cx, 5                        ; 0x341c
    shl ax, cl                       ; 0x341f
    add ax, word [bp - 0x0008]       ; 0x3421
    add ax, strict word 7            ; 0x3424
    push ax                          ; 0x3427
    mov ax, word [bp - 0x0002]       ; 0x3428
    mov cx, 4                        ; 0x342b
    cwd                              ; 0x342e
    idiv cx                          ; 0x342f
    mov ax, dx                       ; 0x3431
    mov cx, 0x1a                     ; 0x3433
    imul cx                          ; 0x3436
    add ax, word [bp - 0x0006]       ; 0x3438
    add ax, strict word 0x5f         ; 0x343b
    push ax                          ; 0x343e
    call gfx_set_text_pos            ; 0x343f
    add sp, byte 4                   ; 0x3442
    mov ax, 1                        ; 0x3445
    push ax                          ; 0x3448
    mov ax, word [bp - 0x0002]       ; 0x3449
    shl ax, 1                        ; 0x344c
    mov bx, ax                       ; 0x344e
    mov al, byte [bx + bss_9240]     ; 0x3450
    sub ah, ah                       ; 0x3454
    push ax                          ; 0x3456
    call draw_font_glyph             ; 0x3457
    add sp, byte 4                   ; 0x345a
    mov ax, word [bp - 0x0002]       ; 0x345d
    mov cx, 4                        ; 0x3460
    cwd                              ; 0x3463
    idiv cx                          ; 0x3464
    mov cx, 5                        ; 0x3466
    shl ax, cl                       ; 0x3469
    add ax, word [bp - 0x0008]       ; 0x346b
    add ax, strict word 0x11         ; 0x346e
    push ax                          ; 0x3471
    mov ax, word [bp - 0x0002]       ; 0x3472
    mov cx, 4                        ; 0x3475
    cwd                              ; 0x3478
    idiv cx                          ; 0x3479
    mov ax, dx                       ; 0x347b
    mov cx, 0x1a                     ; 0x347d
    imul cx                          ; 0x3480
    add ax, word [bp - 0x0006]       ; 0x3482
    add ax, strict word 0x6b         ; 0x3485
    push ax                          ; 0x3488
    mov ax, word [bp - 0x0002]       ; 0x3489
    mov cx, 4                        ; 0x348c
    cwd                              ; 0x348f
    idiv cx                          ; 0x3490
    mov cx, 5                        ; 0x3492
    shl ax, cl                       ; 0x3495
    add ax, word [bp - 0x0008]       ; 0x3497
    add ax, strict word 5            ; 0x349a
    push ax                          ; 0x349d
    mov ax, word [bp - 0x0002]       ; 0x349e
    mov cx, 4                        ; 0x34a1
    cwd                              ; 0x34a4
    idiv cx                          ; 0x34a5
    mov ax, dx                       ; 0x34a7
    mov cx, 0x1a                     ; 0x34a9
    imul cx                          ; 0x34ac
    add ax, word [bp - 0x0006]       ; 0x34ae
    add ax, strict word 0x5d         ; 0x34b1
    push ax                          ; 0x34b4
    call gfx_show_area               ; 0x34b5
    add sp, byte 8                   ; 0x34b8
    mov ax, 4                        ; 0x34bb
    push ax                          ; 0x34be
    call play_sound_effect           ; 0x34bf
    pop cx                           ; 0x34c2
    jmp short @..api_idx_0084_IMVQ.l44 ; 0x34c3
@..api_idx_0084_IMVQ.l42:
    mov ax, word [bp - 0x0078]       ; 0x34c5
    dec ax                           ; 0x34c8
    cmp ax, word [bp - 0x007a]       ; 0x34c9
    jne short @..api_idx_0084_IMVQ.l44 ; 0x34cc
    cmp word [bp - 0x007e], byte 0   ; 0x34ce
    je short @..api_idx_0084_IMVQ.l43 ; 0x34d2
    push word [bp - 0x007e]          ; 0x34d4
    mov ax, 0x10                     ; 0x34d7
    push ax                          ; 0x34da
    push word [bp + 0x4]             ; 0x34db
    call loc_SIKN                    ; 0x34de
    add sp, byte 6                   ; 0x34e1
@..api_idx_0084_IMVQ.l43:
    mov word [spell_dialog_button], 0 ; 0x34e4
    mov word [bp - 0x001c], 0        ; 0x34ea
@..api_idx_0084_IMVQ.l44:
    jmp short @..api_idx_0084_IMVQ.l46 ; 0x34ef
jumptable_34f1:
    dw jumptable_34f1_case_0 - IMAGE_BASE + __zres_end ; 0x34f1
    dw jumptable_34f1_case_1 - IMAGE_BASE + __zres_end ; 0x34f3
    dw jumptable_34f1_case_1 - IMAGE_BASE + __zres_end ; 0x34f5
    dw jumptable_34f1_case_3 - IMAGE_BASE + __zres_end ; 0x34f7
    dw jumptable_34f1_case_4 - IMAGE_BASE + __zres_end ; 0x34f9
    dw jumptable_34f1_case_5 - IMAGE_BASE + __zres_end ; 0x34fb
    dw jumptable_34f1_case_5 - IMAGE_BASE + __zres_end ; 0x34fd
    dw jumptable_34f1_case_5 - IMAGE_BASE + __zres_end ; 0x34ff
    dw jumptable_34f1_case_5 - IMAGE_BASE + __zres_end ; 0x3501
    dw jumptable_34f1_case_5 - IMAGE_BASE + __zres_end ; 0x3503
    dw jumptable_34f1_case_5 - IMAGE_BASE + __zres_end ; 0x3505
    dw jumptable_34f1_case_5 - IMAGE_BASE + __zres_end ; 0x3507
    dw jumptable_34f1_case_5 - IMAGE_BASE + __zres_end ; 0x3509
@..api_idx_0084_IMVQ.l45:
    cmp ax, strict word 0xd          ; 0x350b
    jae short @..api_idx_0084_IMVQ.l46 ; 0x350e
    xchg bx, ax                      ; 0x3510
    shl bx, 1                        ; 0x3511
    jmp [cs:bx + jumptable_34f1 - IMAGE_BASE + __zres_end] ; 0x3513
@..api_idx_0084_IMVQ.l46:
    cmp word [bp - 0x001c], byte 0   ; 0x3518
    je short @..api_idx_0084_IMVQ.l47 ; 0x351c
    jmp near @..api_idx_0084_IMVQ.l12 ; 0x351e
@..api_idx_0084_IMVQ.l47:
    mov ax, 1                        ; 0x3521
    push ax                          ; 0x3524
    push word [bp - 0x0076]          ; 0x3525
    call restore_saved_screen        ; 0x3528
    add sp, byte 4                   ; 0x352b
    mov word [show_area_bottom], 0x8f ; 0x352e
    mov ax, word [bp - 0x000c]       ; 0x3534
    inc ax                           ; 0x3537
    push ax                          ; 0x3538
    mov ax, word [bp - 0x000a]       ; 0x3539
    inc ax                           ; 0x353c
    push ax                          ; 0x353d
    mov ax, word [bp - 0x0008]       ; 0x353e
    dec ax                           ; 0x3541
    push ax                          ; 0x3542
    mov ax, word [bp - 0x0006]       ; 0x3543
    dec ax                           ; 0x3546
    push ax                          ; 0x3547
    call gfx_show_area               ; 0x3548
    add sp, byte 8                   ; 0x354b
    mov ax, word [spell_dialog_button] ; 0x354e
    ret                              ; 0x3551
