api_idx_0032:
    mov ax, 0xffce                   ; 0x26f1
    call ds_dispatch_f40b            ; 0x26f4
    mov ax, word [bp + 0x6]          ; 0x26f7
    shl ax, 1                        ; 0x26fa
    mov bx, ax                       ; 0x26fc
    mov ax, word [bx - 0x69f8]       ; 0x26fe
    mov word [bp - 0x000c], ax       ; 0x2702
    mov word [bp - 0x000a], 0        ; 0x2705
    mov word [bp - 0x0028], 0xffff   ; 0x270a
    mov ax, 0xc6                     ; 0x270f
    push ax                          ; 0x2712
    mov ax, 0x13c                    ; 0x2713
    push ax                          ; 0x2716
    mov ax, 0xbb                     ; 0x2717
    push ax                          ; 0x271a
    mov ax, 3                        ; 0x271b
    push ax                          ; 0x271e
    call ds_dispatch_e928            ; 0x271f
    add sp, byte 8                   ; 0x2722
    mov word [bp - 0x002c], dx       ; 0x2725
    mov word [bp - 0x002e], ax       ; 0x2728
@..api_idx_0032.l1:
    push word [bp + 0xa]             ; 0x272b
    push word [bp + 0x8]             ; 0x272e
    push word [bp + 0x6]             ; 0x2731
    push word [bp + 0x4]             ; 0x2734
    call api_idx_0002_6              ; 0x2737
    add sp, byte 8                   ; 0x273a
    push word [bp - 0x000c]          ; 0x273d
    push word [bp + 0x6]             ; 0x2740
    call api_idx_002e                ; 0x2743
    add sp, byte 4                   ; 0x2746
    mov ax, 0                        ; 0x2749
    push ax                          ; 0x274c
    mov ax, 1                        ; 0x274d
    push ax                          ; 0x2750
    call ds_dispatch_e823            ; 0x2751
    add sp, byte 4                   ; 0x2754
    mov ax, 6                        ; 0x2757
    imul word [bp - 0x000a]          ; 0x275a
    add ax, strict word 0x72         ; 0x275d
    push ax                          ; 0x2760
    mov ax, 0x7f                     ; 0x2761
    push ax                          ; 0x2764
    call ds_dispatch_e809            ; 0x2765
    add sp, byte 4                   ; 0x2768
    mov ax, 0                        ; 0x276b
    push ax                          ; 0x276e
    mov ax, 5                        ; 0x276f
    push ax                          ; 0x2772
    call ds_dispatch_e830            ; 0x2773
    add sp, byte 4                   ; 0x2776
    mov ax, 6                        ; 0x2779
    imul word [bp - 0x000a]          ; 0x277c
    add ax, strict word 0x72         ; 0x277f
    push ax                          ; 0x2782
    mov ax, 0x97                     ; 0x2783
    push ax                          ; 0x2786
    call ds_dispatch_e809            ; 0x2787
    add sp, byte 4                   ; 0x278a
    mov ax, 0                        ; 0x278d
    push ax                          ; 0x2790
    mov ax, 6                        ; 0x2791
    push ax                          ; 0x2794
    call ds_dispatch_e830            ; 0x2795
    add sp, byte 4                   ; 0x2798
    mov word [bp - 0x0002], 0        ; 0x279b
    jmp near @..api_idx_0032.l7      ; 0x27a0
@..api_idx_0032.l2:
    mov ax, word [bp - 0x0002]       ; 0x27a3
    cmp ax, word [bp - 0x000a]       ; 0x27a6
    jne short @..api_idx_0032.l3     ; 0x27a9
    mov ax, 0                        ; 0x27ab
    push ax                          ; 0x27ae
    mov ax, 0x2d                     ; 0x27af
    push ax                          ; 0x27b2
    mov ax, 6                        ; 0x27b3
    imul word [bp - 0x000a]          ; 0x27b6
    add ax, strict word 0x76         ; 0x27b9
    push ax                          ; 0x27bc
    mov ax, 0x84                     ; 0x27bd
    push ax                          ; 0x27c0
    mov ax, 6                        ; 0x27c1
    imul word [bp - 0x000a]          ; 0x27c4
    add ax, strict word 0x71         ; 0x27c7
    push ax                          ; 0x27ca
    mov ax, 0x7f                     ; 0x27cb
    push ax                          ; 0x27ce
    push word [bp - 0x0002]          ; 0x27cf
    call ds_dispatch_baa6            ; 0x27d2
    add sp, byte 0x0e                ; 0x27d5
    mov ax, 0x3d                     ; 0x27d8
    push ax                          ; 0x27db
    mov ax, 0x2b                     ; 0x27dc
    push ax                          ; 0x27df
    mov ax, 6                        ; 0x27e0
    imul word [bp - 0x000a]          ; 0x27e3
    add ax, strict word 0x76         ; 0x27e6
    push ax                          ; 0x27e9
    mov ax, 0x9c                     ; 0x27ea
    push ax                          ; 0x27ed
    mov ax, 6                        ; 0x27ee
    imul word [bp - 0x000a]          ; 0x27f1
    add ax, strict word 0x71         ; 0x27f4
    push ax                          ; 0x27f7
    mov ax, 0x97                     ; 0x27f8
    push ax                          ; 0x27fb
    push word [bp + 0x8]             ; 0x27fc
    call ds_dispatch_baa6            ; 0x27ff
    add sp, byte 0x0e                ; 0x2802
    jmp short @..api_idx_0032.l6     ; 0x2805
@..api_idx_0032.l3:
    mov ax, 0                        ; 0x2807
    push ax                          ; 0x280a
    mov ax, word [bp - 0x000a]       ; 0x280b
    inc ax                           ; 0x280e
    cwd                              ; 0x280f
    idiv word [bp + 0x8]             ; 0x2810
    mov ax, dx                       ; 0x2813
    cmp ax, word [bp - 0x0002]       ; 0x2815
    jne short @..api_idx_0032.l4     ; 0x2818
    mov al, 0x20                     ; 0x281a
    jmp short @..api_idx_0032.l5     ; 0x281c
@..api_idx_0032.l4:
    mov al, 0                        ; 0x281e
@..api_idx_0032.l5:
    cbw                              ; 0x2820
    push ax                          ; 0x2821
    mov ax, 6                        ; 0x2822
    imul word [bp - 0x0002]          ; 0x2825
    add ax, strict word 0x76         ; 0x2828
    push ax                          ; 0x282b
    mov ax, 0x9c                     ; 0x282c
    push ax                          ; 0x282f
    mov ax, 6                        ; 0x2830
    imul word [bp - 0x0002]          ; 0x2833
    add ax, strict word 0x71         ; 0x2836
    push ax                          ; 0x2839
    mov ax, 6                        ; 0x283a
    push ax                          ; 0x283d
    push word [bp - 0x0002]          ; 0x283e
    call ds_dispatch_baa6            ; 0x2841
    add sp, byte 0x0e                ; 0x2844
@..api_idx_0032.l6:
    inc word [bp - 0x0002]           ; 0x2847
@..api_idx_0032.l7:
    mov ax, word [bp - 0x0002]       ; 0x284a
    cmp ax, word [bp + 0x8]          ; 0x284d
    jge short @..api_idx_0032.l8     ; 0x2850
    jmp near @..api_idx_0032.l2      ; 0x2852
@..api_idx_0032.l8:
    mov ax, 0                        ; 0x2855
    push ax                          ; 0x2858
    push word [bp - 0x002c]          ; 0x2859
    push word [bp - 0x002e]          ; 0x285c
    call ds_dispatch_e94f            ; 0x285f
    add sp, byte 6                   ; 0x2862
    mov ax, word [bp - 0x000c]       ; 0x2865
    mov word [bp - 0x0004], ax       ; 0x2868
    mov word [bp - 0x0002], 0        ; 0x286b
@..api_idx_0032.l9:
    mov ax, word [bp - 0x0002]       ; 0x2870
    cmp ax, word [bp + 0x6]          ; 0x2873
    je short @..api_idx_0032.l10     ; 0x2876
    shl ax, 1                        ; 0x2878
    mov bx, ax                       ; 0x287a
    mov ax, word [bx - 0x69f8]       ; 0x287c
    add word [bp - 0x0004], ax       ; 0x2880
@..api_idx_0032.l10:
    inc word [bp - 0x0002]           ; 0x2883
    mov ax, word [bp - 0x0002]       ; 0x2886
    cmp ax, strict word 4            ; 0x2889
    jl short @..api_idx_0032.l9      ; 0x288c
    mov ax, 1                        ; 0x288e
    cmp word [bp - 0x0004], byte 0   ; 0x2891
    jle short @..api_idx_0032.l11    ; 0x2895
    mov ax, 0                        ; 0x2897
@..api_idx_0032.l11:
    mov bx, word [bp + 0xc]          ; 0x289a
    mov word [bx + 0x8], ax          ; 0x289d
    mov word [bp - 0x000e], 0        ; 0x28a0
    mov word [bp - 0x0002], 0        ; 0x28a5
@..api_idx_0032.l12:
    mov ax, word [bp - 0x0002]       ; 0x28aa
    shl ax, 1                        ; 0x28ad
    mov si, ax                       ; 0x28af
    mov bx, word [bp + 0xc]          ; 0x28b1
    cmp word [bx + si], byte 0       ; 0x28b4
    jne short @..api_idx_0032.l13    ; 0x28b7
    jmp near @..api_idx_0032.l16     ; 0x28b9
@..api_idx_0032.l13:
    mov ax, 0x3a                     ; 0x28bc
    imul word [bp - 0x000e]          ; 0x28bf
    add ax, strict word 4            ; 0x28c2
    mov word [bp - 0x0006], ax       ; 0x28c5
    mov ax, 0                        ; 0x28c8
    push ax                          ; 0x28cb
    mov ax, 0xc4                     ; 0x28cc
    push ax                          ; 0x28cf
    mov ax, word [bp - 0x0006]       ; 0x28d0
    add ax, strict word 0x36         ; 0x28d3
    push ax                          ; 0x28d6
    mov ax, 0xbc                     ; 0x28d7
    push ax                          ; 0x28da
    push word [bp - 0x0006]          ; 0x28db
    call ds_dispatch_bce3            ; 0x28de
    add sp, byte 0x0a                ; 0x28e1
    mov ax, 0xc0                     ; 0x28e4
    push ax                          ; 0x28e7
    mov ax, 1                        ; 0x28e8
    mov cx, word [bp - 0x0002]       ; 0x28eb
    cmp cx, word [bp + 0x6]          ; 0x28ee
