api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x26f3
    call ds_dispatch_f40b            ; 0x26f6
    mov byte [bp - 0x000a], 1        ; 0x26f9
    mov byte [bp - 0x0009], 0        ; 0x26fd
    mov ax, 0                        ; 0x2701
    push ax                          ; 0x2704
    push ax                          ; 0x2705
    lea ax, word [bp - 0x000a]       ; 0x2706
    push ax                          ; 0x2709
    mov ax, 0                        ; 0x270a
    push ax                          ; 0x270d
    mov ax, 0xc7                     ; 0x270e
    push ax                          ; 0x2711
    mov ax, 0                        ; 0x2712
    push ax                          ; 0x2715
    mov ax, 0x13f                    ; 0x2716
    push ax                          ; 0x2719
    mov ax, 0                        ; 0x271a
    push ax                          ; 0x271d
    mov ax, 0x73                     ; 0x271e
    push ax                          ; 0x2721
    mov ax, 0x32                     ; 0x2722
    push ax                          ; 0x2725
    mov ax, 1                        ; 0x2726
    push ax                          ; 0x2729
    call ds_dispatch_efd1            ; 0x272a
    add sp, byte 0x16                ; 0x272d
    ret                              ; 0x2730
loc_2731:
    mov ax, 0                        ; 0x2731
    call ds_dispatch_f40b            ; 0x2734
    push word [bp + 0x6]             ; 0x2737
    mov ax, 0xa                      ; 0x273a
    imul word [bp + 0x8]             ; 0x273d
    add ax, word [bp + 0x4]          ; 0x2740
    dec ax                           ; 0x2743
    push ax                          ; 0x2744
    call ds_dispatch_e809            ; 0x2745
    add sp, byte 4                   ; 0x2748
    mov ax, 7                        ; 0x274b
    push ax                          ; 0x274e
    mov ax, 0                        ; 0x274f
    cmp word [bp + 0xa], byte 0      ; 0x2752
    je short @..local.l41            ; 0x2756
    mov ax, 1                        ; 0x2758
@..local.l41:
    add ax, strict word 0x10         ; 0x275b
    sub ah, ah                       ; 0x275e
    push ax                          ; 0x2760
    call ds_dispatch_e830            ; 0x2761
    add sp, byte 4                   ; 0x2764
    push word [bp + 0x6]             ; 0x2767
    mov ax, 0xa                      ; 0x276a
    imul word [bp + 0x8]             ; 0x276d
    add ax, word [bp + 0x4]          ; 0x2770
    push ax                          ; 0x2773
    call ds_dispatch_e809            ; 0x2774
    add sp, byte 4                   ; 0x2777
    mov ax, 0                        ; 0x277a
    push ax                          ; 0x277d
    push ax                          ; 0x277e
    call ds_dispatch_e823            ; 0x277f
    add sp, byte 4                   ; 0x2782
    mov ax, 2                        ; 0x2785
    push ax                          ; 0x2788
    mov ax, word [bp + 0x8]          ; 0x2789
    inc ax                           ; 0x278c
    sub ah, ah                       ; 0x278d
    push ax                          ; 0x278f
    call ds_dispatch_e830            ; 0x2790
    add sp, byte 4                   ; 0x2793
    cmp word [bp + 0x8], byte 0      ; 0x2796
    jne short @..local.l42           ; 0x279a
    cmp word [bp + 0xa], byte 0      ; 0x279c
    jne short @..local.l42           ; 0x27a0
    mov ax, 0xc2                     ; 0x27a2
    push ax                          ; 0x27a5
    mov ax, word [bp + 0x6]          ; 0x27a6
    add ax, strict word 8            ; 0x27a9
    push ax                          ; 0x27ac
    mov ax, word [bp + 0x4]          ; 0x27ad
    dec ax                           ; 0x27b0
    push ax                          ; 0x27b1
    push word [bp + 0x6]             ; 0x27b2
    push ax                          ; 0x27b5
    call ds_dispatch_e901            ; 0x27b6
    add sp, byte 0x0a                ; 0x27b9
@..local.l42:
    ret                              ; 0x27bc
loc_27bd:
    mov ax, 0                        ; 0x27bd
    call ds_dispatch_f40b            ; 0x27c0
    mov ax, word [bp + 0x6]          ; 0x27c3
    add ax, strict word 6            ; 0x27c6
    push ax                          ; 0x27c9
    mov ax, word [bp + 0x4]          ; 0x27ca
    add ax, strict word 0x14         ; 0x27cd
    push ax                          ; 0x27d0
    push word [bp + 0x6]             ; 0x27d1
    push word [bp + 0x4]             ; 0x27d4
    call ds_dispatch_bd98            ; 0x27d7
    add sp, byte 8                   ; 0x27da
    mov ax, word [bp + 0x8]          ; 0x27dd
    shl ax, 1                        ; 0x27e0
    shl ax, 1                        ; 0x27e2
    mov bx, ax                       ; 0x27e4
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x27ea
    add ax, strict word 6            ; 0x27ed
    push ax                          ; 0x27f0
    mov ax, word [bp + 0x4]          ; 0x27f1
    add ax, strict word 0x14         ; 0x27f4
    push ax                          ; 0x27f7
    push word [bp + 0x6]             ; 0x27f8
    push word [bp + 0x4]             ; 0x27fb
    call ds_dispatch_e901            ; 0x27fe
    add sp, byte 0x0a                ; 0x2801
    mov ax, word [bp + 0x6]          ; 0x2804
    inc ax                           ; 0x2807
    push ax                          ; 0x2808
    mov ax, word [bp + 0x4]          ; 0x2809
    inc ax                           ; 0x280c
    inc ax                           ; 0x280d
    push ax                          ; 0x280e
    call ds_dispatch_e809            ; 0x280f
    add sp, byte 4                   ; 0x2812
    cmp word [bp + 0xa], byte 0      ; 0x2815
    jle short @..local.l43           ; 0x2819
    mov ax, word [bp + 0xa]          ; 0x281b
    cmp ax, word [bp + 0xc]          ; 0x281e
    jg short @..local.l43            ; 0x2821
    mov ax, 0                        ; 0x2823
    push ax                          ; 0x2826
    mov ax, 1                        ; 0x2827
    push ax                          ; 0x282a
    call ds_dispatch_e823            ; 0x282b
    add sp, byte 4                   ; 0x282e
    mov ax, 0                        ; 0x2831
    push ax                          ; 0x2834
    mov ax, 3                        ; 0x2835
    push ax                          ; 0x2838
    push word [bp + 0xa]             ; 0x2839
    call ds_dispatch_b2e7            ; 0x283c
    add sp, byte 6                   ; 0x283f
    jmp short @..local.l44           ; 0x2842
@..local.l43:
    mov ax, 0                        ; 0x2844
    push ax                          ; 0x2847
    push ax                          ; 0x2848
    call ds_dispatch_e823            ; 0x2849
    add sp, byte 4                   ; 0x284c
    mov ax, 0                        ; 0x284f
    push ax                          ; 0x2852
    mov ax, 0x909a                   ; 0x2853
    push ax                          ; 0x2856
    call ds_dispatch_e84e            ; 0x2857
    add sp, byte 4                   ; 0x285a
@..local.l44:
    ret                              ; 0x285d
