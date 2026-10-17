; auto-generated
api_idx_0002_OUKN:
    mov ax, 0xfffe                   ; 0x2768
    call aztec_csav                  ; 0x276b
    mov ax, 0x9576                   ; 0x276e
    push ax                          ; 0x2771
    mov ax, word [bp + 0x4]          ; 0x2772
    add ax, 0x708                    ; 0x2775
    push ax                          ; 0x2778
    call ds_app_mem_TIMR             ; 0x2779
    add sp, byte 4                   ; 0x277c
    mov ax, 6                        ; 0x277f
    imul word [bp + 0x4]             ; 0x2782
    mov bx, ax                       ; 0x2785
    cmp byte [bx - 0x7b59], 0        ; 0x2787
    je short @..api_idx_0002_OUKN.l1 ; 0x278c
    jmp near @..api_idx_0002_OUKN.l9 ; 0x278e
@..api_idx_0002_OUKN.l1:
    mov al, byte [bx - 0x7b5a]       ; 0x2791
    sub ah, ah                       ; 0x2795
    mov cx, 0x26                     ; 0x2797
    imul cx                          ; 0x279a
    mov bx, ax                       ; 0x279c
    mov al, byte [bx - 0x7b18]       ; 0x279e
    cmp al, byte [bss_91c7]          ; 0x27a2
    jne short @..api_idx_0002_OUKN.l2 ; 0x27a6
    mov ax, 0                        ; 0x27a8
    jmp short @..api_idx_0002_OUKN.l3 ; 0x27ab
@..api_idx_0002_OUKN.l2:
    mov ax, 1                        ; 0x27ad
@..api_idx_0002_OUKN.l3:
    mov word [bp - 0x0002], ax       ; 0x27b0
    mov ax, 0x93f0                   ; 0x27b3
    push ax                          ; 0x27b6
    mov ax, 6                        ; 0x27b7
    imul word [bp + 0x4]             ; 0x27ba
    mov bx, ax                       ; 0x27bd
    mov al, byte [bx - 0x7b5a]       ; 0x27bf
    sub ah, ah                       ; 0x27c3
    push ax                          ; 0x27c5
    mov al, byte [bss_91c6]          ; 0x27c6
    cbw                              ; 0x27c9
    mov cx, ax                       ; 0x27ca
    pop ax                           ; 0x27cc
    cmp ax, cx                       ; 0x27cd
    jne short @..api_idx_0002_OUKN.l4 ; 0x27cf
    mov ax, 0x758                    ; 0x27d1
    jmp short @..api_idx_0002_OUKN.l5 ; 0x27d4
@..api_idx_0002_OUKN.l4:
    mov ax, 0x759                    ; 0x27d6
    cmp word [bp - 0x0002], byte 0   ; 0x27d9
    je short @..api_idx_0002_OUKN.l5 ; 0x27dd
    mov ax, 0x75a                    ; 0x27df
@..api_idx_0002_OUKN.l5:
    push ax                          ; 0x27e2
    call ds_app_mem_TIMR             ; 0x27e3
    add sp, byte 4                   ; 0x27e6
    mov ax, 0x958e                   ; 0x27e9
    push ax                          ; 0x27ec
    mov ax, 6                        ; 0x27ed
    imul word [bp + 0x4]             ; 0x27f0
    mov bx, ax                       ; 0x27f3
    mov al, byte [bx - 0x7b5a]       ; 0x27f5
    sub ah, ah                       ; 0x27f9
    push ax                          ; 0x27fb
    mov al, byte [bss_91c6]          ; 0x27fc
    cbw                              ; 0x27ff
    mov cx, ax                       ; 0x2800
    pop ax                           ; 0x2802
    cmp ax, cx                       ; 0x2803
    jne short @..api_idx_0002_OUKN.l6 ; 0x2805
    mov ax, 0x66a                    ; 0x2807
    jmp short @..api_idx_0002_OUKN.l8 ; 0x280a
@..api_idx_0002_OUKN.l6:
    cmp word [bp - 0x0002], byte 0   ; 0x280c
    je short @..api_idx_0002_OUKN.l7 ; 0x2810
    mov al, byte [bx - 0x7b5a]       ; 0x2812
    sub ah, ah                       ; 0x2816
    mov cx, 0x26                     ; 0x2818
    imul cx                          ; 0x281b
    mov bx, ax                       ; 0x281d
    mov al, byte [bx - 0x7b18]       ; 0x281f
    sub ah, ah                       ; 0x2823
    add ax, 0x6d6                    ; 0x2825
    jmp short @..api_idx_0002_OUKN.l8 ; 0x2828
@..api_idx_0002_OUKN.l7:
    mov ax, 6                        ; 0x282a
    imul word [bp + 0x4]             ; 0x282d
    mov bx, ax                       ; 0x2830
    mov al, byte [bx - 0x7b5a]       ; 0x2832
    sub ah, ah                       ; 0x2836
    add ax, 0x6a4                    ; 0x2838
@..api_idx_0002_OUKN.l8:
    push ax                          ; 0x283b
    call ds_app_mem_TIMR             ; 0x283c
    add sp, byte 4                   ; 0x283f
    jmp short @..api_idx_0002_OUKN.l10 ; 0x2842
@..api_idx_0002_OUKN.l9:
    mov ax, 0x93f0                   ; 0x2844
    push ax                          ; 0x2847
    mov ax, 0x75b                    ; 0x2848
    push ax                          ; 0x284b
    call ds_app_mem_TIMR             ; 0x284c
    add sp, byte 4                   ; 0x284f
    mov ax, 0x958e                   ; 0x2852
    push ax                          ; 0x2855
    mov ax, 6                        ; 0x2856
    imul word [bp + 0x4]             ; 0x2859
    mov bx, ax                       ; 0x285c
    mov al, byte [bx - 0x7b5a]       ; 0x285e
    sub ah, ah                       ; 0x2862
    add ax, 0x6ea                    ; 0x2864
    push ax                          ; 0x2867
    call ds_app_mem_TIMR             ; 0x2868
    add sp, byte 4                   ; 0x286b
@..api_idx_0002_OUKN.l10:
    mov ax, 0x23                     ; 0x286e
    push ax                          ; 0x2871
    mov ax, 0x9576                   ; 0x2872
    push ax                          ; 0x2875
    mov ax, 0x93f0                   ; 0x2876
    push ax                          ; 0x2879
    call ds_app_string_HHIL          ; 0x287a
    add sp, byte 6                   ; 0x287d
    mov ax, 0x24                     ; 0x2880
    push ax                          ; 0x2883
    mov ax, 0x958e                   ; 0x2884
    push ax                          ; 0x2887
    mov ax, 0x93f0                   ; 0x2888
    push ax                          ; 0x288b
    call ds_app_string_HHIL          ; 0x288c
    add sp, byte 6                   ; 0x288f
    mov ax, 1                        ; 0x2892
    push ax                          ; 0x2895
    mov ax, 0x93f0                   ; 0x2896
    push ax                          ; 0x2899
    call loc_LRGG                    ; 0x289a
    add sp, byte 4                   ; 0x289d
    ret                              ; 0x28a0
