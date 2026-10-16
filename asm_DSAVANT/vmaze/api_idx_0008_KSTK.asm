; auto-generated
api_idx_0008_KSTK:
    mov ax, 0xfff8                   ; 0x2f8e
    call aztec_csav                  ; 0x2f91
    cmp word [bp + 0xe], byte 0      ; 0x2f94
    jne short @..api_idx_0008_KSTK.l1 ; 0x2f98
    jmp near @..api_idx_0008_KSTK.l4 ; 0x2f9a
@..api_idx_0008_KSTK.l1:
    mov ax, 0                        ; 0x2f9d
    push ax                          ; 0x2fa0
    push word [bp + 0xe]             ; 0x2fa1
    lea ax, word [bp + 0xc]          ; 0x2fa4
    push ax                          ; 0x2fa7
    lea ax, word [bp + 0xa]          ; 0x2fa8
    push ax                          ; 0x2fab
    lea ax, word [bp + 0x8]          ; 0x2fac
    push ax                          ; 0x2faf
    lea ax, word [bp + 0x6]          ; 0x2fb0
    push ax                          ; 0x2fb3
    lea ax, word [bp + 0x4]          ; 0x2fb4
    push ax                          ; 0x2fb7
    call loc_VOSO                    ; 0x2fb8
    add sp, byte 0x0e                ; 0x2fbb
    test ax, ax                      ; 0x2fbe
    je short @..api_idx_0008_KSTK.l4 ; 0x2fc0
    mov ax, word [bss_91d4]          ; 0x2fc2
    jmp short @..api_idx_0008_KSTK.l3 ; 0x2fc5
loc_QMOG_2fc7:
    mov ax, 2                        ; 0x2fc7
    ret                              ; 0x2fca
loc_RORN:
    cmp word [bss_91a6], byte 0      ; 0x2fcb
    je short @..api_idx_0008_KSTK.l2 ; 0x2fd0
    mov ax, 0                        ; 0x2fd2
    ret                              ; 0x2fd5
jumptable_3000_case_1:
@..api_idx_0008_KSTK.l2:
    mov ax, 5                        ; 0x2fd6
    imul word [bss_91d6]             ; 0x2fd9
    add ax, word [bp + 0xe]          ; 0x2fdd
    mov bx, ax                       ; 0x2fe0
    mov byte [bx - 0x6e26], 1        ; 0x2fe2
    mov ax, 4                        ; 0x2fe7
    ret                              ; 0x2fea
loc_UISH:
    mov ax, 5                        ; 0x2feb
    imul word [bss_91d6]             ; 0x2fee
    add ax, word [bp + 0xe]          ; 0x2ff2
    mov bx, ax                       ; 0x2ff5
    mov byte [bx - 0x6e26], 3        ; 0x2ff7
    mov ax, 0                        ; 0x2ffc
    ret                              ; 0x2fff
jumptable_3000:
    dw loc_QMOG_2fc7 - IMAGE_BASE + 0x5055     ; 0x3000
    dw jumptable_3000_case_1 - IMAGE_BASE + 0x5055 ; 0x3002
    dw loc_QMOG_2fc7 - IMAGE_BASE + 0x5055     ; 0x3004
    dw loc_RORN - IMAGE_BASE + 0x5055          ; 0x3006
    dw loc_QMOG_2fc7 - IMAGE_BASE + 0x5055     ; 0x3008
    dw loc_UISH - IMAGE_BASE + 0x5055          ; 0x300a
@..api_idx_0008_KSTK.l3:
    cmp ax, strict word 6            ; 0x300c
    jae short @..api_idx_0008_KSTK.l4 ; 0x300f
    xchg bx, ax                      ; 0x3011
    shl bx, 1                        ; 0x3012
    jmp [cs:bx - 0x7fb9]             ; 0x3014
@..api_idx_0008_KSTK.l4:
    mov ax, word [bp + 0xc]          ; 0x3019
    mov cx, 6                        ; 0x301c
    shl ax, cl                       ; 0x301f
    mov cx, word [bp + 0xa]          ; 0x3021
    shl cx, 1                        ; 0x3024
    shl cx, 1                        ; 0x3026
    shl cx, 1                        ; 0x3028
    add ax, cx                       ; 0x302a
    add ax, word [bp + 0x8]          ; 0x302c
    mov word [bp - 0x0002], ax       ; 0x302f
    push ax                          ; 0x3032
    mov ax, word [bss_0e14]          ; 0x3033
    add ax, 0x9b0                    ; 0x3036
    push ax                          ; 0x3039
    call ds_leaf_loc_PRVP            ; 0x303a
    add sp, byte 4                   ; 0x303d
    test ax, ax                      ; 0x3040
    je short @..api_idx_0008_KSTK.l6 ; 0x3042
    mov ax, word [bss_91d4]          ; 0x3044
    jmp short @..api_idx_0008_KSTK.l5 ; 0x3047
loc_QUHK_3049:
    mov ax, 5                        ; 0x3049
    imul word [bss_91d6]             ; 0x304c
    add ax, word [bp + 0xe]          ; 0x3050
    mov bx, ax                       ; 0x3053
    mov byte [bx - 0x6e26], 3        ; 0x3055
    jmp short @..api_idx_0008_KSTK.l6 ; 0x305a
loc_RMNP:
    mov ax, 5                        ; 0x305c
    imul word [bss_91d6]             ; 0x305f
    add ax, word [bp + 0xe]          ; 0x3063
    mov bx, ax                       ; 0x3066
    mov byte [bx - 0x6e26], 1        ; 0x3068
    jmp short @..api_idx_0008_KSTK.l6 ; 0x306d
loc_JIIG:
    mov ax, 5                        ; 0x306f
    imul word [bss_91d6]             ; 0x3072
    add ax, word [bp + 0xe]          ; 0x3076
    mov bx, ax                       ; 0x3079
    mov byte [bx - 0x6e26], 2        ; 0x307b
    jmp short @..api_idx_0008_KSTK.l6 ; 0x3080
jumptable_3082:
    dw loc_QUHK_3049 - IMAGE_BASE + 0x5055     ; 0x3082
    dw loc_RMNP - IMAGE_BASE + 0x5055          ; 0x3084
    dw loc_JIIG - IMAGE_BASE + 0x5055          ; 0x3086
    dw loc_RMNP - IMAGE_BASE + 0x5055          ; 0x3088
    dw loc_QUHK_3049 - IMAGE_BASE + 0x5055     ; 0x308a
    dw loc_RMNP - IMAGE_BASE + 0x5055          ; 0x308c
@..api_idx_0008_KSTK.l5:
    cmp ax, strict word 6            ; 0x308e
    jae short @..api_idx_0008_KSTK.l6 ; 0x3091
    xchg bx, ax                      ; 0x3093
    shl bx, 1                        ; 0x3094
    jmp [cs:bx - 0x7f37]             ; 0x3096
@..api_idx_0008_KSTK.l6:
    push word [bp - 0x0002]          ; 0x309b
    mov ax, word [bss_0e14]          ; 0x309e
    add ax, 0x8b0                    ; 0x30a1
    push ax                          ; 0x30a4
    call ds_leaf_loc_PRVP            ; 0x30a5
    add sp, byte 4                   ; 0x30a8
    test ax, ax                      ; 0x30ab
    jne short @..api_idx_0008_KSTK.l7 ; 0x30ad
    jmp near @..api_idx_0008_KSTK.l10 ; 0x30af
@..api_idx_0008_KSTK.l7:
    mov ax, word [bss_91d4]          ; 0x30b2
    jmp short @..api_idx_0008_KSTK.l9 ; 0x30b5
loc_RMUP:
    mov ax, 5                        ; 0x30b7
    imul word [bss_91d6]             ; 0x30ba
    add ax, word [bp + 0xe]          ; 0x30be
    mov bx, ax                       ; 0x30c1
    mov byte [bx - 0x6e26], 2        ; 0x30c3
    jmp short @..api_idx_0008_KSTK.l10 ; 0x30c8
loc_UGOK:
    mov ax, 5                        ; 0x30ca
    imul word [bss_91d6]             ; 0x30cd
    add ax, word [bp + 0xe]          ; 0x30d1
    mov bx, ax                       ; 0x30d4
    mov byte [bx - 0x6e0d], 1        ; 0x30d6
    jmp short @..api_idx_0008_KSTK.l10 ; 0x30db
loc_QUHK_30dd:
    mov ax, 5                        ; 0x30dd
    imul word [bss_91d6]             ; 0x30e0
    add ax, word [bp + 0xe]          ; 0x30e4
    mov bx, ax                       ; 0x30e7
    mov byte [bx - 0x6e26], 3        ; 0x30e9
    jmp short @..api_idx_0008_KSTK.l10 ; 0x30ee
loc_VVRS:
    mov ax, 5                        ; 0x30f0
    imul word [bss_91d6]             ; 0x30f3
    add ax, word [bp + 0xe]          ; 0x30f7
    mov bx, ax                       ; 0x30fa
    mov byte [bx - 0x6df4], 1        ; 0x30fc
    cmp word [bss_91d6], byte 4      ; 0x3101
    jge short @..api_idx_0008_KSTK.l8 ; 0x3106
    mov byte [bx - 0x6def], 1        ; 0x3108
@..api_idx_0008_KSTK.l8:
    mov ax, 0                        ; 0x310d
    ret                              ; 0x3110
jumptable_3111:
    dw loc_VVRS - IMAGE_BASE + 0x5055          ; 0x3111
    dw loc_RMUP - IMAGE_BASE + 0x5055          ; 0x3113
    dw loc_UGOK - IMAGE_BASE + 0x5055          ; 0x3115
    dw loc_VVRS - IMAGE_BASE + 0x5055          ; 0x3117
    dw loc_UGOK - IMAGE_BASE + 0x5055          ; 0x3119
    dw loc_QUHK_30dd - IMAGE_BASE + 0x5055     ; 0x311b
@..api_idx_0008_KSTK.l9:
    cmp ax, strict word 6            ; 0x311d
    jae short @..api_idx_0008_KSTK.l10 ; 0x3120
    xchg bx, ax                      ; 0x3122
    shl bx, 1                        ; 0x3123
    jmp [cs:bx - 0x7ea8]             ; 0x3125
@..api_idx_0008_KSTK.l10:
    push word [bp - 0x0002]          ; 0x312a
    mov ax, word [bss_0e14]          ; 0x312d
    add ax, 0x930                    ; 0x3130
    push ax                          ; 0x3133
    call ds_leaf_loc_PRVP            ; 0x3134
    add sp, byte 4                   ; 0x3137
    test ax, ax                      ; 0x313a
    je short @..api_idx_0008_KSTK.l15 ; 0x313c
    mov ax, word [bss_830c]          ; 0x313e
    jmp short @..api_idx_0008_KSTK.l14 ; 0x3141
@..api_idx_0008_KSTK.l11:
    mov ax, 5                        ; 0x3143
    imul word [bss_91d6]             ; 0x3146
    add ax, word [bp + 0xe]          ; 0x314a
    mov bx, ax                       ; 0x314d
    mov byte [bx - 0x6e26], 3        ; 0x314f
    jmp short @..api_idx_0008_KSTK.l15 ; 0x3154
@..api_idx_0008_KSTK.l12:
    mov ax, 5                        ; 0x3156
    imul word [bss_91d6]             ; 0x3159
    add ax, word [bp + 0xe]          ; 0x315d
    mov bx, ax                       ; 0x3160
    mov byte [bx - 0x6df4], 2        ; 0x3162
    cmp word [bss_91d6], byte 4      ; 0x3167
    jge short @..api_idx_0008_KSTK.l13 ; 0x316c
    mov byte [bx - 0x6def], 2        ; 0x316e
@..api_idx_0008_KSTK.l13:
    jmp short @..api_idx_0008_KSTK.l15 ; 0x3173
@..api_idx_0008_KSTK.l14:
    cmp ax, strict word 0xa          ; 0x3175
    je short @..api_idx_0008_KSTK.l12 ; 0x3178
    cmp ax, strict word 0xe          ; 0x317a
    je short @..api_idx_0008_KSTK.l11 ; 0x317d
    cmp ax, strict word 0x13         ; 0x317f
    je short @..api_idx_0008_KSTK.l11 ; 0x3182
    cmp ax, strict word 0x19         ; 0x3184
    je short @..api_idx_0008_KSTK.l12 ; 0x3187
    cmp ax, strict word 0x1f         ; 0x3189
    je short @..api_idx_0008_KSTK.l11 ; 0x318c
@..api_idx_0008_KSTK.l15:
    mov ax, word [bss_82ee]          ; 0x318e
    jmp short @..api_idx_0008_KSTK.l20 ; 0x3191
@..api_idx_0008_KSTK.l16:
    mov ax, 4                        ; 0x3193
    push ax                          ; 0x3196
    push word [bp - 0x0002]          ; 0x3197
    mov ax, word [bss_0e14]          ; 0x319a
    add ax, 0x90                     ; 0x319d
    push ax                          ; 0x31a0
    call ds_leaf_loc_NPSL            ; 0x31a1
    add sp, byte 6                   ; 0x31a4
    mov word [bp - 0x0004], ax       ; 0x31a7
    jmp short @..api_idx_0008_KSTK.l21 ; 0x31aa
@..api_idx_0008_KSTK.l17:
    mov ax, 4                        ; 0x31ac
    push ax                          ; 0x31af
    push word [bp - 0x0002]          ; 0x31b0
    mov ax, word [bss_0e14]          ; 0x31b3
    add ax, 0x290                    ; 0x31b6
    push ax                          ; 0x31b9
    call ds_leaf_loc_NPSL            ; 0x31ba
    add sp, byte 6                   ; 0x31bd
    mov word [bp - 0x0004], ax       ; 0x31c0
    jmp short @..api_idx_0008_KSTK.l21 ; 0x31c3
@..api_idx_0008_KSTK.l18:
    push word [bp + 0xc]             ; 0x31c5
    push word [bp + 0xa]             ; 0x31c8
    push word [bp + 0x8]             ; 0x31cb
    push word [bp + 0x6]             ; 0x31ce
    push word [bp + 0x4]             ; 0x31d1
    call loc_GPIH                    ; 0x31d4
    add sp, byte 0x0a                ; 0x31d7
    mov word [bp - 0x0004], ax       ; 0x31da
    jmp short @..api_idx_0008_KSTK.l21 ; 0x31dd
@..api_idx_0008_KSTK.l19:
    push word [bp + 0xc]             ; 0x31df
    push word [bp + 0xa]             ; 0x31e2
    push word [bp + 0x8]             ; 0x31e5
    push word [bp + 0x6]             ; 0x31e8
    push word [bp + 0x4]             ; 0x31eb
    call loc_MMMO                    ; 0x31ee
    add sp, byte 0x0a                ; 0x31f1
    mov word [bp - 0x0004], ax       ; 0x31f4
    jmp short @..api_idx_0008_KSTK.l21 ; 0x31f7
@..api_idx_0008_KSTK.l20:
    cmp ax, strict word 0            ; 0x31f9
    je short @..api_idx_0008_KSTK.l16 ; 0x31fc
    cmp ax, strict word 1            ; 0x31fe
    je short @..api_idx_0008_KSTK.l17 ; 0x3201
    cmp ax, strict word 2            ; 0x3203
    je short @..api_idx_0008_KSTK.l18 ; 0x3206
    cmp ax, strict word 3            ; 0x3208
    je short @..api_idx_0008_KSTK.l19 ; 0x320b
@..api_idx_0008_KSTK.l21:
    lea ax, word [bp - 0x0008]       ; 0x320d
    push ax                          ; 0x3210
    lea ax, word [bp - 0x0006]       ; 0x3211
    push ax                          ; 0x3214
    push word [bp - 0x0002]          ; 0x3215
    call loc_RRJG                    ; 0x3218
    add sp, byte 6                   ; 0x321b
    mov ax, word [bss_82ee]          ; 0x321e
    cmp ax, word [bp - 0x0008]       ; 0x3221
    je short @..api_idx_0008_KSTK.l23 ; 0x3224
    mov ax, word [bp - 0x0006]       ; 0x3226
    cmp ax, strict word 7            ; 0x3229
    jl short @..api_idx_0008_KSTK.l22 ; 0x322c
    cmp ax, strict word 9            ; 0x322e
    jle short @..api_idx_0008_KSTK.l23 ; 0x3231
@..api_idx_0008_KSTK.l22:
    cmp ax, strict word 0xb          ; 0x3233
    jg short @..api_idx_0008_KSTK.l23 ; 0x3236
    jmp near loc_KNRN                ; 0x3238
@..api_idx_0008_KSTK.l23:
    mov ax, word [bp - 0x0006]       ; 0x323b
    jmp near @..api_idx_0008_KSTK.l24 ; 0x323e
