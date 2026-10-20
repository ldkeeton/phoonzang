; auto-generated
api_idx_004c_UMGL:
    mov ax, 0xffb4                   ; 0x27e3
    call aztec_csav                  ; 0x27e6
    mov ax, 0                        ; 0x27e9
    push ax                          ; 0x27ec
    push ax                          ; 0x27ed
    push word [bss_9420]             ; 0x27ee
    push word [bss_941e]             ; 0x27f2
    call gfx_restore_screen          ; 0x27f6
    add sp, byte 8                   ; 0x27f9
    cmp word [bss_948e], byte 0      ; 0x27fc
    je short @..api_idx_004c_UMGL.l1 ; 0x2801
    mov ax, 0xac                     ; 0x2803
    push ax                          ; 0x2806
    mov ax, 0xa0                     ; 0x2807
    push ax                          ; 0x280a
    call gfx_entry_13                ; 0x280b
    add sp, byte 4                   ; 0x280e
    mov ax, 4                        ; 0x2811
    push ax                          ; 0x2814
    mov ax, 0x63                     ; 0x2815
    push ax                          ; 0x2818
    call ds_loc_TJTV                 ; 0x2819
    add sp, byte 4                   ; 0x281c
@..api_idx_004c_UMGL.l1:
    cmp word [bss_9490], byte 0      ; 0x281f
    jne short @..api_idx_004c_UMGL.l2 ; 0x2824
    cmp word [bss_948e], byte 0      ; 0x2826
    je short @..api_idx_004c_UMGL.l5 ; 0x282b
@..api_idx_004c_UMGL.l2:
    mov word [bp - 0x0002], 0        ; 0x282d
@..api_idx_004c_UMGL.l3:
    mov ax, 0x18                     ; 0x2832
    push ax                          ; 0x2835
    mov ax, 0xe                      ; 0x2836
    imul word [bp - 0x0002]          ; 0x2839
    add ax, strict word 0x70         ; 0x283c
    push ax                          ; 0x283f
    mov ax, 0x9f                     ; 0x2840
    push ax                          ; 0x2843
    mov ax, 0xe                      ; 0x2844
    imul word [bp - 0x0002]          ; 0x2847
    add ax, strict word 0x70         ; 0x284a
    push ax                          ; 0x284d
    mov ax, 1                        ; 0x284e
    push ax                          ; 0x2851
    call gfx_entry_18                ; 0x2852
    add sp, byte 0x0a                ; 0x2855
    inc word [bp - 0x0002]           ; 0x2858
    mov ax, word [bp - 0x0002]       ; 0x285b
    cmp ax, strict word 6            ; 0x285e
    jl short @..api_idx_004c_UMGL.l3 ; 0x2861
    mov word [bp - 0x0002], 0        ; 0x2863
@..api_idx_004c_UMGL.l4:
    mov ax, 0x18                     ; 0x2868
    push ax                          ; 0x286b
    mov ax, 0xb6                     ; 0x286c
    push ax                          ; 0x286f
    mov ax, 0x4f                     ; 0x2870
    imul word [bp - 0x0002]          ; 0x2873
    inc ax                           ; 0x2876
    push ax                          ; 0x2877
    mov ax, 0x70                     ; 0x2878
    push ax                          ; 0x287b
    mov ax, 0x4f                     ; 0x287c
    imul word [bp - 0x0002]          ; 0x287f
    inc ax                           ; 0x2882
    push ax                          ; 0x2883
    call gfx_entry_18                ; 0x2884
    add sp, byte 0x0a                ; 0x2887
    inc word [bp - 0x0002]           ; 0x288a
    mov ax, word [bp - 0x0002]       ; 0x288d
    cmp ax, strict word 3            ; 0x2890
    jl short @..api_idx_004c_UMGL.l4 ; 0x2893
@..api_idx_004c_UMGL.l5:
    mov word [bp - 0x0002], 0        ; 0x2895
@..api_idx_004c_UMGL.l6:
    mov ax, 0x248                    ; 0x289a
    imul word [bp + 0x4]             ; 0x289d
    push ax                          ; 0x28a0
    mov ax, 0x78                     ; 0x28a1
    imul word [bss_948e]             ; 0x28a4
    mov cx, ax                       ; 0x28a8
    pop ax                           ; 0x28aa
    add ax, cx                       ; 0x28ab
    push ax                          ; 0x28ad
    mov ax, 0xc                      ; 0x28ae
    imul word [bp - 0x0002]          ; 0x28b1
    mov cx, ax                       ; 0x28b4
    pop ax                           ; 0x28b6
    add ax, cx                       ; 0x28b7
    mov bx, ax                       ; 0x28b9
    cmp word [bx + 0x5c34], byte 0   ; 0x28bb
    jg short @..api_idx_004c_UMGL.l7 ; 0x28c0
    jmp near @..api_idx_004c_UMGL.l16 ; 0x28c2
@..api_idx_004c_UMGL.l7:
    cmp word [bss_9492], byte 0      ; 0x28c5
    je short @..api_idx_004c_UMGL.l8 ; 0x28ca
    jmp near @..api_idx_004c_UMGL.l11 ; 0x28cc
@..api_idx_004c_UMGL.l8:
    mov ax, 0                        ; 0x28cf
    push ax                          ; 0x28d2
    push word [bx + 0x5c34]          ; 0x28d3
    lea ax, word [bp - 0x004c]       ; 0x28d7
    push ax                          ; 0x28da
    mov ax, 1                        ; 0x28db
    push ax                          ; 0x28de
    call data_record_io              ; 0x28df
    add sp, byte 8                   ; 0x28e2
    mov ax, 0x248                    ; 0x28e5
    imul word [bp + 0x4]             ; 0x28e8
    push ax                          ; 0x28eb
    mov ax, 0x78                     ; 0x28ec
    imul word [bss_948e]             ; 0x28ef
    mov cx, ax                       ; 0x28f3
    pop ax                           ; 0x28f5
    add ax, cx                       ; 0x28f6
    push ax                          ; 0x28f8
    mov ax, 0xc                      ; 0x28f9
    imul word [bp - 0x0002]          ; 0x28fc
    mov cx, ax                       ; 0x28ff
    pop ax                           ; 0x2901
    add ax, cx                       ; 0x2902
    mov bx, ax                       ; 0x2904
    mov al, byte [bx + 0x5c3b]       ; 0x2906
    sub ah, ah                       ; 0x290a
    test ax, 0x80                    ; 0x290c
    je short @..api_idx_004c_UMGL.l9 ; 0x290f
    lea ax, word [bp - 0x004c]       ; 0x2911
    push ax                          ; 0x2914
    mov ax, 0x16                     ; 0x2915
    imul word [bp - 0x0002]          ; 0x2918
    add ax, 0x9494                   ; 0x291b
    push ax                          ; 0x291e
    call aztec_strcpy                ; 0x291f
    add sp, byte 4                   ; 0x2922
    jmp short @..api_idx_004c_UMGL.l10 ; 0x2925
@..api_idx_004c_UMGL.l9:
    mov ax, 0x16                     ; 0x2927
    imul word [bp - 0x0002]          ; 0x292a
    add ax, 0x9494                   ; 0x292d
    push ax                          ; 0x2930
    mov al, byte [bp - 0x0013]       ; 0x2931
    sub ah, ah                       ; 0x2934
    add ax, 0x1770                   ; 0x2936
    push ax                          ; 0x2939
    call ds_app_mem_TIMR             ; 0x293a
    add sp, byte 4                   ; 0x293d
@..api_idx_004c_UMGL.l10:
    mov al, byte [bp - 0x0012]       ; 0x2940
    sub ah, ah                       ; 0x2943
    mov cx, word [bp - 0x0002]       ; 0x2945
    shl cx, 1                        ; 0x2948
    mov bx, cx                       ; 0x294a
    mov word [bx - 0x6a90], ax       ; 0x294c
@..api_idx_004c_UMGL.l11:
    mov ax, word [bp - 0x0002]       ; 0x2950
    shl ax, 1                        ; 0x2953
    mov bx, ax                       ; 0x2955
    mov word [bx - 0x6a7c], 0x69     ; 0x2957
    cmp word [bss_948e], byte 0      ; 0x295d
    jne short @..api_idx_004c_UMGL.l14 ; 0x2962
    mov word [bp - 0x0004], 0        ; 0x2964
@..api_idx_004c_UMGL.l12:
    mov ax, 0x248                    ; 0x2969
    imul word [bp + 0x4]             ; 0x296c
    add ax, word [bp - 0x0004]       ; 0x296f
    mov bx, ax                       ; 0x2972
    mov al, byte [bx + 0x5d48]       ; 0x2974
    sub ah, ah                       ; 0x2978
    cmp ax, word [bp - 0x0002]       ; 0x297a
    jne short @..api_idx_004c_UMGL.l13 ; 0x297d
    mov ax, word [bp - 0x0004]       ; 0x297f
    shl ax, 1                        ; 0x2982
    mov bx, ax                       ; 0x2984
    mov ax, word [word bx + 0x1e]    ; 0x2986
    mov cx, word [bp - 0x0002]       ; 0x298a
    shl cx, 1                        ; 0x298d
    mov bx, cx                       ; 0x298f
    mov word [bx - 0x6a7c], ax       ; 0x2991
@..api_idx_004c_UMGL.l13:
    inc word [bp - 0x0004]           ; 0x2995
    mov ax, word [bp - 0x0004]       ; 0x2998
    cmp ax, strict word 8            ; 0x299b
    jl short @..api_idx_004c_UMGL.l12 ; 0x299e
@..api_idx_004c_UMGL.l14:
    mov ax, 0x248                    ; 0x29a0
    imul word [bp + 0x4]             ; 0x29a3
    push ax                          ; 0x29a6
    mov ax, 0x78                     ; 0x29a7
    imul word [bss_948e]             ; 0x29aa
    mov cx, ax                       ; 0x29ae
    pop ax                           ; 0x29b0
    add ax, cx                       ; 0x29b1
    push ax                          ; 0x29b3
    mov ax, 0xc                      ; 0x29b4
    imul word [bp - 0x0002]          ; 0x29b7
    mov cx, ax                       ; 0x29ba
    pop ax                           ; 0x29bc
    add ax, cx                       ; 0x29bd
    mov bx, ax                       ; 0x29bf
    mov al, byte [bx + 0x5c3b]       ; 0x29c1
    sub ah, ah                       ; 0x29c5
    test ax, 2                       ; 0x29c7
    je short @..api_idx_004c_UMGL.l15 ; 0x29ca
    mov ax, word [bp - 0x0002]       ; 0x29cc
    shl ax, 1                        ; 0x29cf
    mov bx, ax                       ; 0x29d1
    mov word [bx - 0x6a7c], 0x55     ; 0x29d3
@..api_idx_004c_UMGL.l15:
    mov ax, word [bp - 0x0002]       ; 0x29d9
    shl ax, 1                        ; 0x29dc
    mov bx, ax                       ; 0x29de
    push word [bx - 0x6a7c]          ; 0x29e0
    mov ax, 0x16                     ; 0x29e4
    imul word [bp - 0x0002]          ; 0x29e7
    add ax, 0x9494                   ; 0x29ea
    push ax                          ; 0x29ed
    mov ax, 0x248                    ; 0x29ee
    imul word [bp + 0x4]             ; 0x29f1
    push ax                          ; 0x29f4
    mov ax, 0x78                     ; 0x29f5
    imul word [bss_948e]             ; 0x29f8
    mov cx, ax                       ; 0x29fc
    pop ax                           ; 0x29fe
    add ax, cx                       ; 0x29ff
    push ax                          ; 0x2a01
    mov ax, 0xc                      ; 0x2a02
    imul word [bp - 0x0002]          ; 0x2a05
    mov cx, ax                       ; 0x2a08
    pop ax                           ; 0x2a0a
    add ax, cx                       ; 0x2a0b
    add ax, 0x5c34                   ; 0x2a0d
    push ax                          ; 0x2a10
    push word [bp - 0x0002]          ; 0x2a11
    push word [bp + 0x4]             ; 0x2a14
    call api_idx_0004_MKGU           ; 0x2a17
    add sp, byte 0x0a                ; 0x2a1a
@..api_idx_004c_UMGL.l16:
    inc word [bp - 0x0002]           ; 0x2a1d
    mov ax, word [bp - 0x0002]       ; 0x2a20
    cmp ax, strict word 0xa          ; 0x2a23
    jge short @..api_idx_004c_UMGL.l17 ; 0x2a26
    jmp near @..api_idx_004c_UMGL.l6 ; 0x2a28
@..api_idx_004c_UMGL.l17:
    mov word [bss_9492], 1           ; 0x2a2b
    ret                              ; 0x2a31
