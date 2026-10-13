api_idx_0032:
    mov ax, 0xffce                   ; 0x26f1
    call aztec_csav                  ; 0x26f4
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
    call ds_loc_3b6f                 ; 0x271f
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
    call ds_loc_3a6a                 ; 0x2751
    add sp, byte 4                   ; 0x2754
    mov ax, 6                        ; 0x2757
    imul word [bp - 0x000a]          ; 0x275a
    add ax, strict word 0x72         ; 0x275d
    push ax                          ; 0x2760
    mov ax, 0x7f                     ; 0x2761
    push ax                          ; 0x2764
    call ds_loc_3a50                 ; 0x2765
    add sp, byte 4                   ; 0x2768
    mov ax, 0                        ; 0x276b
    push ax                          ; 0x276e
    mov ax, 5                        ; 0x276f
    push ax                          ; 0x2772
    call ds_loc_3a77                 ; 0x2773
    add sp, byte 4                   ; 0x2776
    mov ax, 6                        ; 0x2779
    imul word [bp - 0x000a]          ; 0x277c
    add ax, strict word 0x72         ; 0x277f
    push ax                          ; 0x2782
    mov ax, 0x97                     ; 0x2783
    push ax                          ; 0x2786
    call ds_loc_3a50                 ; 0x2787
    add sp, byte 4                   ; 0x278a
    mov ax, 0                        ; 0x278d
    push ax                          ; 0x2790
    mov ax, 6                        ; 0x2791
    push ax                          ; 0x2794
    call ds_loc_3a77                 ; 0x2795
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
    call ds_app_0ced                 ; 0x27d2
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
    call ds_app_0ced                 ; 0x27ff
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
    call ds_app_0ced                 ; 0x2841
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
    call ds_loc_3b96                 ; 0x285f
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
    call ds_app_0f2a                 ; 0x28de
    add sp, byte 0x0a                ; 0x28e1
    mov ax, 0xc0                     ; 0x28e4
    push ax                          ; 0x28e7
    mov ax, 1                        ; 0x28e8
    mov cx, word [bp - 0x0002]       ; 0x28eb
    cmp cx, word [bp + 0x6]          ; 0x28ee
    jne short @..api_idx_0032.l14    ; 0x28f1
    mov ax, 0x1a                     ; 0x28f3
@..api_idx_0032.l14:
    push ax                          ; 0x28f6
    call ds_loc_3a6a                 ; 0x28f7
    add sp, byte 4                   ; 0x28fa
    mov ax, 0xbe                     ; 0x28fd
    push ax                          ; 0x2900
    mov ax, 0x14                     ; 0x2901
    imul word [bp - 0x0002]          ; 0x2904
    add ax, 0x9610                   ; 0x2907
    push ax                          ; 0x290a
    call aztec_strlen                ; 0x290b
    pop cx                           ; 0x290e
    mov cx, ax                       ; 0x290f
    mov ax, 9                        ; 0x2911
    sub ax, cx                       ; 0x2914
    mov cx, 6                        ; 0x2916
    imul cx                          ; 0x2919
    mov cx, 2                        ; 0x291b
    cwd                              ; 0x291e
    idiv cx                          ; 0x291f
    add ax, word [bp - 0x0006]       ; 0x2921
    inc ax                           ; 0x2924
    push ax                          ; 0x2925
    call ds_loc_3a50                 ; 0x2926
    add sp, byte 4                   ; 0x2929
    mov ax, 0                        ; 0x292c
    push ax                          ; 0x292f
    mov ax, 0x14                     ; 0x2930
    imul word [bp - 0x0002]          ; 0x2933
    add ax, 0x9610                   ; 0x2936
    push ax                          ; 0x2939
    call ds_string_loc_3a95          ; 0x293a
    add sp, byte 4                   ; 0x293d
    mov ax, 0                        ; 0x2940
    push ax                          ; 0x2943
    push ax                          ; 0x2944
    mov ax, 0xc4                     ; 0x2945
    push ax                          ; 0x2948
    mov ax, word [bp - 0x0006]       ; 0x2949
    add ax, strict word 0x36         ; 0x294c
    push ax                          ; 0x294f
    mov ax, 0xbc                     ; 0x2950
    push ax                          ; 0x2953
    push word [bp - 0x0006]          ; 0x2954
    mov ax, word [bp + 0x8]          ; 0x2957
    add ax, word [bp - 0x000e]       ; 0x295a
    inc ax                           ; 0x295d
    push ax                          ; 0x295e
    call ds_app_0ced                 ; 0x295f
    add sp, byte 0x0e                ; 0x2962
    mov ax, word [bp - 0x0002]       ; 0x2965
    mov cx, word [bp - 0x000e]       ; 0x2968
    shl cx, 1                        ; 0x296b
    mov bx, cx                       ; 0x296d
    add bx, bp                       ; 0x296f
    mov word [bx - 0x0026], ax       ; 0x2971
    cmp ax, word [bp + 0x6]          ; 0x2974
    jne short @..api_idx_0032.l15    ; 0x2977
    mov ax, word [bp - 0x000e]       ; 0x2979
    mov word [bp - 0x0032], ax       ; 0x297c
    cmp word [bss_0e32], byte 0      ; 0x297f
    jne short @..api_idx_0032.l15    ; 0x2984
    mov ax, 0x16                     ; 0x2986
    push ax                          ; 0x2989
    mov ax, 0xc4                     ; 0x298a
    push ax                          ; 0x298d
    mov ax, word [bp - 0x0006]       ; 0x298e
    add ax, strict word 0x36         ; 0x2991
    push ax                          ; 0x2994
    mov ax, 0xbc                     ; 0x2995
    push ax                          ; 0x2998
    push word [bp - 0x0006]          ; 0x2999
    call loc_03ca                    ; 0x299c
    add sp, byte 0x0a                ; 0x299f
@..api_idx_0032.l15:
    inc word [bp - 0x000e]           ; 0x29a2
@..api_idx_0032.l16:
    inc word [bp - 0x0002]           ; 0x29a5
    mov ax, word [bp - 0x0002]       ; 0x29a8
    cmp ax, strict word 4            ; 0x29ab
    jg short @..api_idx_0032.l17     ; 0x29ae
    jmp near @..api_idx_0032.l12     ; 0x29b0
@..api_idx_0032.l17:
    mov ax, 0                        ; 0x29b3
    push ax                          ; 0x29b6
    push ax                          ; 0x29b7
    push ax                          ; 0x29b8
    push ax                          ; 0x29b9
    push ax                          ; 0x29ba
    mov ax, 0xffff                   ; 0x29bb
    push ax                          ; 0x29be
    mov ax, word [bp + 0x8]          ; 0x29bf
    add ax, word [bp - 0x000e]       ; 0x29c2
    inc ax                           ; 0x29c5
    push ax                          ; 0x29c6
    call ds_app_0ced                 ; 0x29c7
    add sp, byte 0x0e                ; 0x29ca
    mov ax, 0xc6                     ; 0x29cd
    push ax                          ; 0x29d0
    mov ax, 0x13c                    ; 0x29d1
    push ax                          ; 0x29d4
    mov ax, 0x70                     ; 0x29d5
    push ax                          ; 0x29d8
    mov ax, 1                        ; 0x29d9
    push ax                          ; 0x29dc
    call ds_loc_3b21                 ; 0x29dd
    add sp, byte 8                   ; 0x29e0
    cmp word [bss_0e32], byte 0      ; 0x29e3
    je short @..api_idx_0032.l19     ; 0x29e8
@..api_idx_0032.l18:
    mov ax, 0x59fe                   ; 0x29ea
    push ax                          ; 0x29ed
    call ds_app_io_0b54              ; 0x29ee
    pop cx                           ; 0x29f1
    dec ax                           ; 0x29f2
    mov word [bp - 0x0008], ax       ; 0x29f3
    cmp word [bss_5b3e], byte 0      ; 0x29f6
    je short @..api_idx_0032.l18     ; 0x29fb
    jmp near @..api_idx_0032.l31     ; 0x29fd
@..api_idx_0032.l19:
    mov word [bp - 0x0008], 0xffff   ; 0x2a00
    mov ax, word [bp - 0x0032]       ; 0x2a05
    mov word [bp - 0x0002], ax       ; 0x2a08
@..api_idx_0032.l20:
    mov ax, 0x3a                     ; 0x2a0b
    imul word [bp - 0x0002]          ; 0x2a0e
    add ax, strict word 4            ; 0x2a11
    mov word [bp - 0x0006], ax       ; 0x2a14
    mov ax, 0x16                     ; 0x2a17
    push ax                          ; 0x2a1a
    mov ax, 0xc4                     ; 0x2a1b
    push ax                          ; 0x2a1e
    mov ax, word [bp - 0x0006]       ; 0x2a1f
    add ax, strict word 0x36         ; 0x2a22
    push ax                          ; 0x2a25
    mov ax, 0xbc                     ; 0x2a26
    push ax                          ; 0x2a29
    push word [bp - 0x0006]          ; 0x2a2a
    call loc_03ca                    ; 0x2a2d
    add sp, byte 0x0a                ; 0x2a30
    mov ax, 0xc7                     ; 0x2a33
    push ax                          ; 0x2a36
    mov ax, 0x13d                    ; 0x2a37
    push ax                          ; 0x2a3a
    mov ax, 0xbb                     ; 0x2a3b
    push ax                          ; 0x2a3e
    mov ax, 3                        ; 0x2a3f
    push ax                          ; 0x2a42
    call ds_loc_3b21                 ; 0x2a43
    add sp, byte 8                   ; 0x2a46
    mov ax, 0                        ; 0x2a49
    push ax                          ; 0x2a4c
    mov ax, 0xc4                     ; 0x2a4d
    push ax                          ; 0x2a50
    mov ax, word [bp - 0x0006]       ; 0x2a51
    add ax, strict word 0x36         ; 0x2a54
    push ax                          ; 0x2a57
    mov ax, 0xbc                     ; 0x2a58
    push ax                          ; 0x2a5b
    push word [bp - 0x0006]          ; 0x2a5c
    call loc_03ca                    ; 0x2a5f
    add sp, byte 0x0a                ; 0x2a62
@..api_idx_0032.l21:
    mov ax, 1                        ; 0x2a65
    push ax                          ; 0x2a68
    call dos_con_in_noecho           ; 0x2a69
    pop cx                           ; 0x2a6c
    test ax, ax                      ; 0x2a6d
    jne short @..api_idx_0032.l22    ; 0x2a6f
    jmp short @..api_idx_0032.l21    ; 0x2a71
@..api_idx_0032.l22:
    mov ax, 1                        ; 0x2a73
    push ax                          ; 0x2a76
    call dos_con_in_noecho_2         ; 0x2a77
    pop cx                           ; 0x2a7a
    sub ah, ah                       ; 0x2a7b
    mov word [bp - 0x0030], ax       ; 0x2a7d
    jmp short @..api_idx_0032.l29    ; 0x2a80
@..api_idx_0032.l23:
    mov ax, word [bp - 0x0002]       ; 0x2a82
    add ax, word [bp - 0x000e]       ; 0x2a85
    dec ax                           ; 0x2a88
    cwd                              ; 0x2a89
    idiv word [bp - 0x000e]          ; 0x2a8a
    mov word [bp - 0x0002], dx       ; 0x2a8d
    jmp short @..api_idx_0032.l30    ; 0x2a90
@..api_idx_0032.l24:
    mov ax, word [bp - 0x0002]       ; 0x2a92
    inc ax                           ; 0x2a95
    cwd                              ; 0x2a96
    idiv word [bp - 0x000e]          ; 0x2a97
    mov word [bp - 0x0002], dx       ; 0x2a9a
    jmp short @..api_idx_0032.l30    ; 0x2a9d
@..api_idx_0032.l25:
    mov ax, word [bp + 0x8]          ; 0x2a9f
    add ax, word [bp - 0x0002]       ; 0x2aa2
    inc ax                           ; 0x2aa5
    mov word [bp - 0x0008], ax       ; 0x2aa6
    jmp short @..api_idx_0032.l30    ; 0x2aa9
@..api_idx_0032.l26:
    mov ax, word [bp - 0x000a]       ; 0x2aab
    mov word [bp - 0x0008], ax       ; 0x2aae
    jmp short @..api_idx_0032.l30    ; 0x2ab1
@..api_idx_0032.l27:
    mov ax, word [bp + 0x8]          ; 0x2ab3
    mov word [bp - 0x0008], ax       ; 0x2ab6
    jmp short @..api_idx_0032.l30    ; 0x2ab9
@..api_idx_0032.l28:
    mov ax, word [bp - 0x000a]       ; 0x2abb
    inc ax                           ; 0x2abe
    cwd                              ; 0x2abf
    idiv word [bp + 0x8]             ; 0x2ac0
    mov word [bp - 0x0008], dx       ; 0x2ac3
    jmp short @..api_idx_0032.l30    ; 0x2ac6
@..api_idx_0032.l29:
    cmp ax, strict word 8            ; 0x2ac8
    je short @..api_idx_0032.l23     ; 0x2acb
    cmp ax, strict word 0xa          ; 0x2acd
    je short @..api_idx_0032.l24     ; 0x2ad0
    cmp ax, strict word 0xd          ; 0x2ad2
    je short @..api_idx_0032.l25     ; 0x2ad5
    cmp ax, strict word 0x20         ; 0x2ad7
    je short @..api_idx_0032.l28     ; 0x2ada
    cmp ax, strict word 0x2b         ; 0x2adc
    je short @..api_idx_0032.l27     ; 0x2adf
    cmp ax, strict word 0x2d         ; 0x2ae1
    je short @..api_idx_0032.l26     ; 0x2ae4
    cmp ax, strict word 0x3d         ; 0x2ae6
    je short @..api_idx_0032.l27     ; 0x2ae9
@..api_idx_0032.l30:
    cmp word [bp - 0x0008], byte 0xff ; 0x2aeb
    jne short @..api_idx_0032.l31    ; 0x2aef
    jmp near @..api_idx_0032.l20     ; 0x2af1
@..api_idx_0032.l31:
    mov ax, word [bp - 0x0008]       ; 0x2af4
    cmp ax, word [bp + 0x8]          ; 0x2af7
    jge short @..api_idx_0032.l32    ; 0x2afa
    cmp ax, word [bp - 0x000a]       ; 0x2afc
    je short @..api_idx_0032.l32     ; 0x2aff
    mov word [bp - 0x000a], ax       ; 0x2b01
    jmp near @..api_idx_0032.l39     ; 0x2b04
@..api_idx_0032.l32:
    mov ax, word [bp - 0x0008]       ; 0x2b07
    cmp ax, word [bp - 0x000a]       ; 0x2b0a
    jne short @..api_idx_0032.l35    ; 0x2b0d
    mov ax, 0x248                    ; 0x2b0f
    imul word [bp + 0x4]             ; 0x2b12
    mov cx, word [bp - 0x000a]       ; 0x2b15
    shl cx, 1                        ; 0x2b18
    mov si, cx                       ; 0x2b1a
    mov bx, word [bp + 0xa]          ; 0x2b1c
    mov cx, word [bx + si]           ; 0x2b1f
    add ax, cx                       ; 0x2b21
    mov bx, ax                       ; 0x2b23
    mov al, byte [bx + 0x5d6c]       ; 0x2b25
    sub ah, ah                       ; 0x2b29
    shl cx, 1                        ; 0x2b2b
    mov bx, cx                       ; 0x2b2d
    mov cx, word [bx - 0x6928]       ; 0x2b2f
    cmp ax, cx                       ; 0x2b33
    jle short @..api_idx_0032.l33    ; 0x2b35
    mov ax, 0x248                    ; 0x2b37
    imul word [bp + 0x4]             ; 0x2b3a
    mov bx, word [bp + 0xa]          ; 0x2b3d
    mov cx, word [bx + si]           ; 0x2b40
    add ax, cx                       ; 0x2b42
    mov bx, ax                       ; 0x2b44
    dec byte [bx + 0x5d6c]           ; 0x2b46
    inc word [bp - 0x000c]           ; 0x2b4a
    jmp short @..api_idx_0032.l34    ; 0x2b4d
@..api_idx_0032.l33:
    mov ax, 0                        ; 0x2b4f
    push ax                          ; 0x2b52
    call ds_app_0a27                 ; 0x2b53
    pop cx                           ; 0x2b56
@..api_idx_0032.l34:
    jmp short @..api_idx_0032.l39    ; 0x2b57
@..api_idx_0032.l35:
    mov ax, word [bp - 0x0008]       ; 0x2b59
    cmp ax, word [bp + 0x8]          ; 0x2b5c
    jne short @..api_idx_0032.l38    ; 0x2b5f
    mov ax, 0x248                    ; 0x2b61
    imul word [bp + 0x4]             ; 0x2b64
    mov cx, word [bp - 0x000a]       ; 0x2b67
    shl cx, 1                        ; 0x2b6a
    mov si, cx                       ; 0x2b6c
    mov bx, word [bp + 0xa]          ; 0x2b6e
    mov cx, word [bx + si]           ; 0x2b71
    add ax, cx                       ; 0x2b73
    mov bx, ax                       ; 0x2b75
    cmp byte [bx + 0x5d6c], 0x64     ; 0x2b77
    jae short @..api_idx_0032.l36    ; 0x2b7c
    cmp word [bp - 0x000c], byte 0   ; 0x2b7e
    jle short @..api_idx_0032.l36    ; 0x2b82
    inc byte [bx + 0x5d6c]           ; 0x2b84
    dec word [bp - 0x000c]           ; 0x2b88
    jmp short @..api_idx_0032.l37    ; 0x2b8b
@..api_idx_0032.l36:
    mov ax, 0                        ; 0x2b8d
    push ax                          ; 0x2b90
    call ds_app_0a27                 ; 0x2b91
    pop cx                           ; 0x2b94
@..api_idx_0032.l37:
    jmp short @..api_idx_0032.l39    ; 0x2b95
@..api_idx_0032.l38:
    mov ax, word [bp - 0x0008]       ; 0x2b97
    sub ax, word [bp + 0x8]          ; 0x2b9a
    dec ax                           ; 0x2b9d
    mov word [bp - 0x0028], ax       ; 0x2b9e
    shl ax, 1                        ; 0x2ba1
    mov bx, ax                       ; 0x2ba3
    add bx, bp                       ; 0x2ba5
    mov ax, word [bx - 0x0026]       ; 0x2ba7
    mov word [bp - 0x002a], ax       ; 0x2baa
@..api_idx_0032.l39:
    cmp word [bp - 0x0028], byte 0xff ; 0x2bad
    jne short @..api_idx_0032.l40    ; 0x2bb1
    jmp near @..api_idx_0032.l1      ; 0x2bb3
@..api_idx_0032.l40:
    mov ax, word [bp - 0x000c]       ; 0x2bb6
    mov cx, word [bp + 0x6]          ; 0x2bb9
    shl cx, 1                        ; 0x2bbc
    mov bx, cx                       ; 0x2bbe
    mov word [bx - 0x69f8], ax       ; 0x2bc0
    mov ax, 1                        ; 0x2bc4
    push ax                          ; 0x2bc7
    push ax                          ; 0x2bc8
    mov ax, 9                        ; 0x2bc9
    push ax                          ; 0x2bcc
    mov ax, 0xbc                     ; 0x2bcd
    push ax                          ; 0x2bd0
    mov ax, 0x3a                     ; 0x2bd1
    imul word [bp - 0x0028]          ; 0x2bd4
    add ax, strict word 4            ; 0x2bd7
    push ax                          ; 0x2bda
    call ds_app_10a6                 ; 0x2bdb
    add sp, byte 0x0a                ; 0x2bde
    mov ax, 0                        ; 0x2be1
    push ax                          ; 0x2be4
    mov ax, 1                        ; 0x2be5
    push ax                          ; 0x2be8
    mov ax, 9                        ; 0x2be9
    push ax                          ; 0x2bec
    mov ax, 0xbc                     ; 0x2bed
    push ax                          ; 0x2bf0
    mov ax, 0x3a                     ; 0x2bf1
    imul word [bp - 0x0028]          ; 0x2bf4
    add ax, strict word 4            ; 0x2bf7
    push ax                          ; 0x2bfa
    call ds_app_10a6                 ; 0x2bfb
    add sp, byte 0x0a                ; 0x2bfe
    mov ax, 1                        ; 0x2c01
    push ax                          ; 0x2c04
    push word [bp - 0x002c]          ; 0x2c05
    push word [bp - 0x002e]          ; 0x2c08
    call ds_loc_3b96                 ; 0x2c0b
    add sp, byte 6                   ; 0x2c0e
    mov ax, word [bp - 0x002a]       ; 0x2c11
    ret                              ; 0x2c14
