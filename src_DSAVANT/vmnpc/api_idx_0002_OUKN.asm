; auto-generated
api_idx_0002_OUKN:
    mov ax, 0xfffe                   ; 0x2768
    call aztec_csav                  ; 0x276b
    mov ax, bss_9576                 ; 0x276e
    push ax                          ; 0x2771
    mov ax, word [bp + 4]            ; 0x2772
    add ax, MSG_TEMPLE_1800          ; 0x2775
    push ax                          ; 0x2778
    call load_message_string         ; 0x2779
    add sp, byte 4                   ; 0x277c
    mov ax, 6                        ; 0x277f
    imul word [bp + 4]               ; 0x2782
    mov bx, ax                       ; 0x2785
    cmp byte [bx + slot_bit_states + slot_bit_state.status], 0 ; 0x2787
    je short .forward1               ; 0x278c
    jmp near .forward9               ; 0x278e
.forward1:
    mov al, byte [bx + slot_bit_states] ; 0x2791
    sub ah, ah                       ; 0x2795
    mov cx, 0x26                     ; 0x2797
    imul cx                          ; 0x279a
    mov bx, ax                       ; 0x279c
    mov al, byte [bx + slot_records] ; 0x279e
    cmp al, byte [bss_91c7]          ; 0x27a2
    jne short .forward2              ; 0x27a6
    mov ax, 0                        ; 0x27a8
    jmp short .forward3              ; 0x27ab
.forward2:
    mov ax, 1                        ; 0x27ad
.forward3:
    mov word [bp - 2], ax            ; 0x27b0
    mov ax, 0x93f0                   ; 0x27b3
    push ax                          ; 0x27b6
    mov ax, 6                        ; 0x27b7
    imul word [bp + 4]               ; 0x27ba
    mov bx, ax                       ; 0x27bd
    mov al, byte [bx + slot_bit_states] ; 0x27bf
    sub ah, ah                       ; 0x27c3
    push ax                          ; 0x27c5
    mov al, byte [bss_91c6]          ; 0x27c6
    cbw                              ; 0x27c9
    mov cx, ax                       ; 0x27ca
    pop ax                           ; 0x27cc
    cmp ax, cx                       ; 0x27cd
    jne short .forward4              ; 0x27cf
    mov ax, MSG_HAS_POSSESSION_OF_THE_MAP ; 0x27d1
    jmp short .forward5              ; 0x27d4
.forward4:
    mov ax, MSG_IT_IS_RUMORED_THAT_POS_1881 ; 0x27d6
    cmp word [bp - 2], byte 0        ; 0x27d9
    je short .forward5               ; 0x27dd
    mov ax, MSG_IT_IS_RUMORED_THAT_POS_1882 ; 0x27df
.forward5:
    push ax                          ; 0x27e2
    call load_message_string         ; 0x27e3
    add sp, byte 4                   ; 0x27e6
    mov ax, 0x958e                   ; 0x27e9
    push ax                          ; 0x27ec
    mov ax, 6                        ; 0x27ed
    imul word [bp + 4]               ; 0x27f0
    mov bx, ax                       ; 0x27f3
    mov al, byte [bx + slot_bit_states] ; 0x27f5
    sub ah, ah                       ; 0x27f9
    push ax                          ; 0x27fb
    mov al, byte [bss_91c6]          ; 0x27fc
    cbw                              ; 0x27ff
    mov cx, ax                       ; 0x2800
    pop ax                           ; 0x2802
    cmp ax, cx                       ; 0x2803
    jne short .forward6              ; 0x2805
    mov ax, MSG_OUR_PARTY            ; 0x2807
    jmp short .forward8              ; 0x280a
.forward6:
    cmp word [bp - 2], byte 0        ; 0x280c
    je short .forward7               ; 0x2810
    mov al, byte [bx + slot_bit_states] ; 0x2812
    sub ah, ah                       ; 0x2816
    mov cx, 0x26                     ; 0x2818
    imul cx                          ; 0x281b
    mov bx, ax                       ; 0x281d
    mov al, byte [bx + slot_records] ; 0x281f
    sub ah, ah                       ; 0x2823
    add ax, MSG_YOU_1750             ; 0x2825
    jmp short .forward8              ; 0x2828
.forward7:
    mov ax, 6                        ; 0x282a
    imul word [bp + 4]               ; 0x282d
    mov bx, ax                       ; 0x2830
    mov al, byte [bx + slot_bit_states] ; 0x2832
    sub ah, ah                       ; 0x2836
    add ax, MSG_SLOT_NAME_BASE       ; 0x2838
.forward8:
    push ax                          ; 0x283b
    call load_message_string         ; 0x283c
    add sp, byte 4                   ; 0x283f
    jmp short .forward10             ; 0x2842
.forward9:
    mov ax, bss_93f0                 ; 0x2844
    push ax                          ; 0x2847
    mov ax, MSG_THE_MAP_IS_RUMORED_TO_1883 ; 0x2848
    push ax                          ; 0x284b
    call load_message_string         ; 0x284c
    add sp, byte 4                   ; 0x284f
    mov ax, bss_958e                 ; 0x2852
    push ax                          ; 0x2855
    mov ax, 6                        ; 0x2856
    imul word [bp + 4]               ; 0x2859
    mov bx, ax                       ; 0x285c
    mov al, byte [bx + slot_bit_states] ; 0x285e
    sub ah, ah                       ; 0x2862
    add ax, MSG_LOCATION_NAME_BASE   ; 0x2864
    push ax                          ; 0x2867
    call load_message_string         ; 0x2868
    add sp, byte 4                   ; 0x286b
.forward10:
    mov ax, 0x23                     ; 0x286e
    push ax                          ; 0x2871
    mov ax, 0x9576                   ; 0x2872
    push ax                          ; 0x2875
    mov ax, bss_93f0                 ; 0x2876
    push ax                          ; 0x2879
    call str_subst_char              ; 0x287a
    add sp, byte 6                   ; 0x287d
    mov ax, 0x24                     ; 0x2880
    push ax                          ; 0x2883
    mov ax, 0x958e                   ; 0x2884
    push ax                          ; 0x2887
    mov ax, bss_93f0                 ; 0x2888
    push ax                          ; 0x288b
    call str_subst_char              ; 0x288c
    add sp, byte 6                   ; 0x288f
    mov ax, 1                        ; 0x2892
    push ax                          ; 0x2895
    mov ax, bss_93f0                 ; 0x2896
    push ax                          ; 0x2899
    call loc_LRGG                    ; 0x289a
    add sp, byte 4                   ; 0x289d
    ret                              ; 0x28a0
