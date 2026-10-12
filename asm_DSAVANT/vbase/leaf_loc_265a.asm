leaf_loc_265a:
    mov word [bp - 0x001a], 0x20     ; 0x265a
    jmp short loc_269e               ; 0x265f
loc_2661:
    mov word [bp - 0x001a], 0x21     ; 0x2661
    jmp short loc_269e               ; 0x2666
jumptable_2668:
    dw leaf_loc_25da - IMAGE_BASE + 0x5055     ; 0x2668
    dw leaf_loc_25e2 - IMAGE_BASE + 0x5055     ; 0x266a
    dw leaf_loc_25ea - IMAGE_BASE + 0x5055     ; 0x266c
    dw leaf_loc_25f2 - IMAGE_BASE + 0x5055     ; 0x266e
    dw leaf_loc_25fa - IMAGE_BASE + 0x5055     ; 0x2670
    dw leaf_loc_2602 - IMAGE_BASE + 0x5055     ; 0x2672
    dw leaf_loc_260a - IMAGE_BASE + 0x5055     ; 0x2674
    dw leaf_loc_2612 - IMAGE_BASE + 0x5055     ; 0x2676
    dw leaf_loc_261a - IMAGE_BASE + 0x5055     ; 0x2678
    dw leaf_loc_2622 - IMAGE_BASE + 0x5055     ; 0x267a
    dw leaf_loc_2629 - IMAGE_BASE + 0x5055     ; 0x267c
    dw leaf_loc_2630 - IMAGE_BASE + 0x5055     ; 0x267e
    dw leaf_loc_2637 - IMAGE_BASE + 0x5055     ; 0x2680
    dw leaf_loc_263e - IMAGE_BASE + 0x5055     ; 0x2682
    dw leaf_loc_2645 - IMAGE_BASE + 0x5055     ; 0x2684
    dw leaf_loc_264c - IMAGE_BASE + 0x5055     ; 0x2686
    dw leaf_loc_2653 - IMAGE_BASE + 0x5055     ; 0x2688
    dw leaf_loc_265a - IMAGE_BASE + 0x5055     ; 0x268a
    dw loc_2661 - IMAGE_BASE + 0x5055          ; 0x268c
loc_268e:
    sub ax, strict word 0xb          ; 0x268e
    cmp ax, strict word 0x13         ; 0x2691
    jae short loc_269e               ; 0x2694
    xchg bx, ax                      ; 0x2696
    shl bx, 1                        ; 0x2697
    jmp [cs:bx + 0x76af]             ; 0x2699
loc_269e:
    cmp word [bp - 0x001a], byte 0   ; 0x269e
    jl short loc_270c                ; 0x26a2
    mov ax, word [bss_9426]          ; 0x26a4
    mov word [bp - 0x001c], ax       ; 0x26a7
    cmp ax, strict word 0x12         ; 0x26aa
    jle short loc_26b4               ; 0x26ad
    mov word [bp - 0x001c], 0x12     ; 0x26af
loc_26b4:
    cmp word [bp - 0x001c], byte 0   ; 0x26b4
    jle short loc_26f3               ; 0x26b8
    mov bx, word [bp - 0x0004]       ; 0x26ba
    mov cl, byte [bx - 0x6aca]       ; 0x26bd
    mov bx, word [bp - 0x0014]       ; 0x26c1
    mov si, word [bp - 0x001a]       ; 0x26c4
    mov al, byte [bx + si + 0x178]   ; 0x26c7
    cmp al, cl                       ; 0x26cb
    jae short loc_26f3               ; 0x26cd
    mov al, byte [bx + si + 0x178]   ; 0x26cf
    sub ah, ah                       ; 0x26d3
    mov cx, ax                       ; 0x26d5
    push cx                          ; 0x26d7
    mov ax, 3                        ; 0x26d8
    push ax                          ; 0x26db
    call ds_app_09f0                 ; 0x26dc
    pop cx                           ; 0x26df
    pop cx                           ; 0x26e0
    add ax, cx                       ; 0x26e1
    inc ax                           ; 0x26e3
    mov bx, word [bp - 0x0014]       ; 0x26e4
    mov si, word [bp - 0x001a]       ; 0x26e7
    mov byte [bx + si + 0x178], al   ; 0x26ea
    dec word [bp - 0x001c]           ; 0x26ee
    jmp short loc_26b4               ; 0x26f1
loc_26f3:
    mov bx, word [bp - 0x0004]       ; 0x26f3
    mov cl, byte [bx - 0x6aca]       ; 0x26f6
    mov bx, word [bp - 0x0014]       ; 0x26fa
    mov si, word [bp - 0x001a]       ; 0x26fd
    mov al, byte [bx + si + 0x178]   ; 0x2700
    cmp al, cl                       ; 0x2704
    jbe short loc_270c               ; 0x2706
    mov byte [bx + si + 0x178], cl   ; 0x2708
loc_270c:
    inc word [bp - 0x0004]           ; 0x270c
    mov ax, word [bp - 0x0004]       ; 0x270f
    cmp ax, strict word 0x1e         ; 0x2712
    jge short loc_271a               ; 0x2715
    jmp near loc_25d1                ; 0x2717
loc_271a:
    mov word [bp - 0x0004], 0        ; 0x271a
loc_271f:
    mov bx, word [bp - 0x0004]       ; 0x271f
    mov al, byte [bx - 0x6aac]       ; 0x2722
    sub ah, ah                       ; 0x2726
    cwd                              ; 0x2728
    idiv word [bss_9426]             ; 0x2729
    mov bx, word [bp - 0x0014]       ; 0x272d
    mov cx, word [bx + 0x24]         ; 0x2730
    imul cx                          ; 0x2733
    mov si, word [bp - 0x0004]       ; 0x2735
    mov byte [bx + si + 0x1a8], al   ; 0x2738
    mov bx, word [bp - 0x0014]       ; 0x273c
    mov si, word [bp - 0x0004]       ; 0x273f
    mov al, byte [bx + si + 0x1a8]   ; 0x2742
    mov byte [bx + si + 0x19a], al   ; 0x2746
    inc word [bp - 0x0004]           ; 0x274a
    mov ax, word [bp - 0x0004]       ; 0x274d
    cmp ax, strict word 0xe          ; 0x2750
    jl short loc_271f                ; 0x2753
    mov word [bp - 0x0004], 0        ; 0x2755
loc_275a:
    push word [bp - 0x0004]          ; 0x275a
    mov ax, 0x958a                   ; 0x275d
    push ax                          ; 0x2760
    call ds_leaf_loc_3ebb            ; 0x2761
    add sp, byte 4                   ; 0x2764
    test ax, ax                      ; 0x2767
    je short loc_27b7                ; 0x2769
    push word [bp - 0x0004]          ; 0x276b
    call loc_1a12                    ; 0x276e
    pop cx                           ; 0x2771
    mov word [bp - 0x0006], ax       ; 0x2772
    cmp ax, strict word 0            ; 0x2775
    jl short loc_27b7                ; 0x2778
    mov cx, 6                        ; 0x277a
    imul cx                          ; 0x277d
    mov bx, ax                       ; 0x277f
    cmp byte [bx + 0x621], 4         ; 0x2781
    jae short loc_27b7               ; 0x2786
    push cx                          ; 0x2788
    call ds_app_09f0                 ; 0x2789
    pop cx                           ; 0x278c
    push ax                          ; 0x278d
    mov ax, 6                        ; 0x278e
    imul word [bp - 0x0006]          ; 0x2791
    mov bx, ax                       ; 0x2794
    mov al, byte [bx + 0x621]        ; 0x2796
    sub ah, ah                       ; 0x279a
    mov cx, ax                       ; 0x279c
    pop ax                           ; 0x279e
    cmp ax, cx                       ; 0x279f
    jl short loc_27b7                ; 0x27a1
    mov ax, 1                        ; 0x27a3
    push ax                          ; 0x27a6
    push word [bp - 0x0006]          ; 0x27a7
    mov ax, word [bp - 0x0014]       ; 0x27aa
    add ax, 0x21e                    ; 0x27ad
    push ax                          ; 0x27b0
    call ds_leaf_loc_3e88            ; 0x27b1
    add sp, byte 6                   ; 0x27b4
loc_27b7:
    inc word [bp - 0x0004]           ; 0x27b7
    mov ax, word [bp - 0x0004]       ; 0x27ba
    cmp ax, strict word 0x4f         ; 0x27bd
    jl short loc_275a                ; 0x27c0
    mov word [bp - 0x0004], 0        ; 0x27c2
loc_27c7:
    mov bx, word [bp - 0x0004]       ; 0x27c7
    mov al, byte [bx - 0x6a6a]       ; 0x27ca
    mov si, bx                       ; 0x27ce
    mov bx, word [bp - 0x0014]       ; 0x27d0
    mov byte [bx + si + 0x22e], al   ; 0x27d3
    mov bx, word [bp - 0x0004]       ; 0x27d7
    mov al, byte [bx - 0x6a66]       ; 0x27da
    mov si, bx                       ; 0x27de
    mov bx, word [bp - 0x0014]       ; 0x27e0
    mov byte [bx + si + 0x232], al   ; 0x27e3
    inc word [bp - 0x0004]           ; 0x27e7
    mov ax, word [bp - 0x0004]       ; 0x27ea
    cmp ax, strict word 4            ; 0x27ed
    jl short loc_27c7                ; 0x27f0
    mov al, byte [bss_959f]          ; 0x27f2
    mov bx, word [bp - 0x0014]       ; 0x27f5
    mov byte [bx + 0x237], al        ; 0x27f8
    mov al, byte [bss_95a0]          ; 0x27fc
    mov bx, word [bp - 0x0014]       ; 0x27ff
    mov byte [bx + 0x238], al        ; 0x2802
    mov al, byte [bss_95a1]          ; 0x2806
    mov bx, word [bp - 0x0014]       ; 0x2809
    mov byte [bx + 0x239], al        ; 0x280c
    mov bx, word [bp - 0x0014]       ; 0x2810
    push word [bx + 0x24]            ; 0x2813
    mov al, byte [bx + 0x239]        ; 0x2816
    sub ah, ah                       ; 0x281a
    push ax                          ; 0x281c
    call api_idx_0040                ; 0x281d
    add sp, byte 4                   ; 0x2820
    mov bx, word [bp - 0x0014]       ; 0x2823
    mov word [bx + 0xe], dx          ; 0x2826
    mov word [bx + 0xc], ax          ; 0x2829
    mov bx, word [bp - 0x0014]       ; 0x282c
    mov al, byte [bx + 0x239]        ; 0x282f
    sub ah, ah                       ; 0x2833
    push ax                          ; 0x2835
    mov al, byte [bx + 0x238]        ; 0x2836
    sub ah, ah                       ; 0x283a
    push ax                          ; 0x283c
    mov al, byte [bx + 0x237]        ; 0x283d
    sub ah, ah                       ; 0x2841
    push ax                          ; 0x2843
    call loc_1820                    ; 0x2844
    add sp, byte 6                   ; 0x2847
    mov bx, word [bp - 0x0014]       ; 0x284a
    mov byte [bx + 0x236], al        ; 0x284d
    mov al, byte [bss_95a2]          ; 0x2851
    mov bx, word [bp - 0x0014]       ; 0x2854
    mov byte [bx + 0x23a], al        ; 0x2857
    mov bx, word [bp - 0x0014]       ; 0x285b
    mov byte [bx + 0x23b], 0         ; 0x285e
    mov bx, word [bp - 0x0014]       ; 0x2863
    mov byte [bx + 0x23f], 0         ; 0x2866
    mov bx, word [bp - 0x0014]       ; 0x286b
    mov byte [bx + 0x240], 1         ; 0x286e
    mov bx, word [bp - 0x0014]       ; 0x2873
    mov byte [bx + 0x241], 0xa       ; 0x2876
    mov bx, word [bp - 0x0014]       ; 0x287b
    mov byte [bx + 0x243], 1         ; 0x287e
    mov bx, word [bp - 0x0014]       ; 0x2883
    mov byte [bx + 0x244], 1         ; 0x2886
    mov bx, word [bp - 0x0014]       ; 0x288b
    mov al, byte [bx + 0x175]        ; 0x288e
    sub ah, ah                       ; 0x2892
    mov cx, word [bx + 0x24]         ; 0x2894
    add ax, cx                       ; 0x2897
    mov byte [bx + 0x245], al        ; 0x2899
    mov ax, 3                        ; 0x289d
    imul word [bss_9426]             ; 0x28a0
    push ax                          ; 0x28a4
    mov al, byte [bss_95b0]          ; 0x28a5
    cbw                              ; 0x28a8
    mov cx, ax                       ; 0x28a9
    pop ax                           ; 0x28ab
    add ax, cx                       ; 0x28ac
    push ax                          ; 0x28ae
    mov bx, word [bp - 0x0014]       ; 0x28af
    mov ax, word [bx + 0x24]         ; 0x28b2
    mov cx, 3                        ; 0x28b5
    imul cx                          ; 0x28b8
    mov cx, ax                       ; 0x28ba
    pop ax                           ; 0x28bc
    sub ax, cx                       ; 0x28bd
    mov word [bp - 0x0004], ax       ; 0x28bf
    mov cx, 0x64                     ; 0x28c2
    mov ax, word [bx + 0x24]         ; 0x28c5
    shl ax, 1                        ; 0x28c8
    shl ax, 1                        ; 0x28ca
    shl ax, 1                        ; 0x28cc
    sub cx, ax                       ; 0x28ce
    mov ax, word [bp - 0x0004]       ; 0x28d0
    cmp cx, ax                       ; 0x28d3
    jle short loc_28f5               ; 0x28d5
    mov ax, 5                        ; 0x28d7
    push ax                          ; 0x28da
    call ds_app_09f0                 ; 0x28db
    pop cx                           ; 0x28de
    mov cx, 0x64                     ; 0x28df
    mov bx, word [bp - 0x0014]       ; 0x28e2
    mov dx, word [bx + 0x24]         ; 0x28e5
    shl dx, 1                        ; 0x28e8
    shl dx, 1                        ; 0x28ea
    shl dx, 1                        ; 0x28ec
    sub cx, dx                       ; 0x28ee
    add ax, cx                       ; 0x28f0
    mov word [bp - 0x0004], ax       ; 0x28f2
loc_28f5:
    cmp word [bp - 0x0004], byte 0x64 ; 0x28f5
    jle short loc_2900               ; 0x28f9
    mov word [bp - 0x0004], 0x64     ; 0x28fb
loc_2900:
    mov al, byte [bp - 0x0004]       ; 0x2900
    mov bx, word [bp - 0x0014]       ; 0x2903
    mov byte [bx + 0x246], al        ; 0x2906
    mov word [bp - 0x0004], 0        ; 0x290a
loc_290f:
    push word [bp - 0x0004]          ; 0x290f
    push word [bss_69c8]             ; 0x2912
    call ds_app_mem_184f             ; 0x2916
    add sp, byte 4                   ; 0x2919
    inc word [bp - 0x0004]           ; 0x291c
    mov ax, word [bp - 0x0004]       ; 0x291f
    cmp ax, strict word 2            ; 0x2922
    jl short loc_290f                ; 0x2925
    mov bx, word [bp - 0x0014]       ; 0x2927
    mov byte [bx + 0x1b6], 0xa       ; 0x292a
    mov bx, word [bp - 0x0014]       ; 0x292f
    cmp byte [bx + 0x175], 0xf       ; 0x2932
    jbe short loc_293e               ; 0x2937
    mov cx, 1                        ; 0x2939
    jmp short loc_2941               ; 0x293c
loc_293e:
    mov cx, 0                        ; 0x293e
loc_2941:
    mov al, byte [bx + 0x1b6]        ; 0x2941
    cbw                              ; 0x2945
    sub ax, cx                       ; 0x2946
    mov byte [bx + 0x1b6], al        ; 0x2948
    cbw                              ; 0x294c
    mov cx, 0                        ; 0x294d
    cmp byte [bx + 0x175], 0x11      ; 0x2950
    jbe short loc_295a               ; 0x2955
    mov cx, 1                        ; 0x2957
loc_295a:
    sub ax, cx                       ; 0x295a
    mov byte [bx + 0x1b6], al        ; 0x295c
    mov al, byte [bx + 0x1b6]        ; 0x2960
    cbw                              ; 0x2964
    mov cx, 0                        ; 0x2965
    cmp byte [bx + 0x237], 5         ; 0x2968
    jne short loc_2972               ; 0x296d
    mov cx, 2                        ; 0x296f
loc_2972:
    sub ax, cx                       ; 0x2972
    mov byte [bx + 0x1b6], al        ; 0x2974
    cmp byte [bx + 0x239], 0xd       ; 0x2978
    je short loc_2986                ; 0x297d
    cmp byte [bx + 0x239], 0xc       ; 0x297f
    jne short loc_29a1               ; 0x2984
loc_2986:
    mov al, byte [bx + 0x1b6]        ; 0x2986
    cbw                              ; 0x298a
    push ax                          ; 0x298b
    mov al, byte [bx + 0x189]        ; 0x298c
    sub ah, ah                       ; 0x2990
    mov cx, 0xa                      ; 0x2992
    cwd                              ; 0x2995
    idiv cx                          ; 0x2996
    mov cx, ax                       ; 0x2998
    pop ax                           ; 0x299a
    sub ax, cx                       ; 0x299b
    mov byte [bx + 0x1b6], al        ; 0x299d
loc_29a1:
    mov byte [bx + 0x1b7], 0         ; 0x29a1
    mov bx, word [bp - 0x0014]       ; 0x29a6
    mov byte [bx + 0x1b8], 0         ; 0x29a9
    mov word [bp - 0x0004], 3        ; 0x29ae
loc_29b3:
    mov bx, word [bp - 0x0014]       ; 0x29b3
    mov al, byte [bx + 0x1b6]        ; 0x29b6
    mov si, word [bp - 0x0004]       ; 0x29ba
    mov byte [bx + si + 0x1b6], al   ; 0x29bd
    inc word [bp - 0x0004]           ; 0x29c1
    mov ax, word [bp - 0x0004]       ; 0x29c4
    cmp ax, strict word 8            ; 0x29c7
    jl short loc_29b3                ; 0x29ca
    mov word [bp - 0x0004], 0        ; 0x29cc
loc_29d1:
    mov bx, word [bp - 0x0014]       ; 0x29d1
    mov al, byte [bx + 0x177]        ; 0x29d4
    sub ah, ah                       ; 0x29d8
    add ax, strict word 0xfff7       ; 0x29da
    jge short loc_29e5               ; 0x29dd
    neg ax                           ; 0x29df
    mov cx, ax                       ; 0x29e1
    jmp short loc_29f2               ; 0x29e3
loc_29e5:
    mov al, byte [bx + 0x177]        ; 0x29e5
    sub ah, ah                       ; 0x29e9
    mov cx, ax                       ; 0x29eb
    add ax, strict word 0xfff7       ; 0x29ed
    mov cx, ax                       ; 0x29f0
loc_29f2:
    shl cx, 1                        ; 0x29f2
    shl cx, 1                        ; 0x29f4
    mov ax, 0x28                     ; 0x29f6
    sub ax, cx                       ; 0x29f9
    mov si, word [bp - 0x0004]       ; 0x29fb
    mov byte [bx + si + 0x1be], al   ; 0x29fe
    inc word [bp - 0x0004]           ; 0x2a02
    mov ax, word [bp - 0x0004]       ; 0x2a05
    cmp ax, strict word 0x60         ; 0x2a08
    jl short loc_29d1                ; 0x2a0b
    mov word [bp - 0x0004], 0        ; 0x2a0d
loc_2a12:
    mov bx, word [bp - 0x0014]       ; 0x2a12
    mov si, word [bp - 0x0004]       ; 0x2a15
    mov byte [bx + si + 0x154], 0xff ; 0x2a18
    inc word [bp - 0x0004]           ; 0x2a1d
    mov ax, word [bp - 0x0004]       ; 0x2a20
    cmp ax, strict word 8            ; 0x2a23
    jl short loc_2a12                ; 0x2a26
    push word [bss_69c8]             ; 0x2a28
    call api_idx_0004_2              ; 0x2a2c
    pop cx                           ; 0x2a2f
    mov word [bp - 0x0016], 0        ; 0x2a30
    mov word [bp - 0x0018], 0        ; 0x2a35
    cmp word [bss_69c8], byte 0      ; 0x2a3a
    jne short loc_2a73               ; 0x2a3f
    mov ax, 1                        ; 0x2a41
    push ax                          ; 0x2a44
    mov ax, 0xfffe                   ; 0x2a45
    push ax                          ; 0x2a48
    mov ax, 0x78                     ; 0x2a49
    imul word [bp - 0x0016]          ; 0x2a4c
    mov cx, ax                       ; 0x2a4f
    mov ax, 0xc                      ; 0x2a51
    imul word [bp - 0x0018]          ; 0x2a54
    add cx, ax                       ; 0x2a57
    mov ax, word [bp - 0x0014]       ; 0x2a59
    add ax, cx                       ; 0x2a5c
    add ax, strict word 0x40         ; 0x2a5e
    push ax                          ; 0x2a61
    mov ax, 0x19b                    ; 0x2a62
    push ax                          ; 0x2a65
    push word [bss_69c8]             ; 0x2a66
    call api_idx_004c                ; 0x2a6a
    add sp, byte 0x0a                ; 0x2a6d
    inc word [bp - 0x0018]           ; 0x2a70
loc_2a73:
    mov word [bp - 0x0004], 0        ; 0x2a73
    mov word [bp - 0x0006], 0        ; 0x2a78
    mov al, byte [bss_95a1]          ; 0x2a7d
    sub ah, ah                       ; 0x2a80
    jmp near loc_2b11                ; 0x2a82
