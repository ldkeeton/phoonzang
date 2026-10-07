math_loc_2731:
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
    je short @..math_loc_2731.l1     ; 0x2756
    mov ax, 1                        ; 0x2758
@..math_loc_2731.l1:
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
    mov ax, data_0002                ; 0x2785
    push ax                          ; 0x2788
    mov ax, word [bp + 0x8]          ; 0x2789
    inc ax                           ; 0x278c
    sub ah, ah                       ; 0x278d
    push ax                          ; 0x278f
    call ds_dispatch_e830            ; 0x2790
    add sp, byte 4                   ; 0x2793
    cmp word [bp + 0x8], byte 0      ; 0x2796
    jne short @..math_loc_2731.l2    ; 0x279a
    cmp word [bp + 0xa], byte 0      ; 0x279c
    jne short @..math_loc_2731.l2    ; 0x27a0
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
@..math_loc_2731.l2:
    ret                              ; 0x27bc
