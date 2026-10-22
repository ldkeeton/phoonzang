; auto-generated
api_idx_0008_LJTR:
    mov ax, 0xfff8                   ; 0x2f8e
    call aztec_csav                  ; 0x2f91
    cmp word [bp + 0xe], byte 0      ; 0x2f94
    jne short @..api_idx_0008_LJTR.l1 ; 0x2f98
    jmp near @..api_idx_0008_LJTR.l4 ; 0x2f9a
@..api_idx_0008_LJTR.l1:
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
    je short @..api_idx_0008_LJTR.l4 ; 0x2fc0
    mov ax, word [bss_91d4]          ; 0x2fc2
    jmp short @..api_idx_0008_LJTR.l3 ; 0x2fc5
jumptable_3000_case_0:
    mov ax, 2                        ; 0x2fc7
    ret                              ; 0x2fca
jumptable_3000_case_3:
    cmp word [bss_91a6], byte 0      ; 0x2fcb
    je short @..api_idx_0008_LJTR.l2 ; 0x2fd0
    mov ax, 0                        ; 0x2fd2
    ret                              ; 0x2fd5
jumptable_3000_case_1:
@..api_idx_0008_LJTR.l2:
    mov ax, 5                        ; 0x2fd6
    imul word [bss_91d6]             ; 0x2fd9
    add ax, word [bp + 0xe]          ; 0x2fdd
    mov bx, ax                       ; 0x2fe0
    mov byte [bx - 0x6e26], 1        ; 0x2fe2
    mov ax, 4                        ; 0x2fe7
    ret                              ; 0x2fea
jumptable_3000_case_5:
    mov ax, 5                        ; 0x2feb
    imul word [bss_91d6]             ; 0x2fee
    add ax, word [bp + 0xe]          ; 0x2ff2
    mov bx, ax                       ; 0x2ff5
    mov byte [bx - 0x6e26], 3        ; 0x2ff7
    mov ax, 0                        ; 0x2ffc
    ret                              ; 0x2fff
jumptable_3000:
    dw jumptable_3000_case_0 - IMAGE_BASE + __zres_end ; 0x3000
    dw jumptable_3000_case_1 - IMAGE_BASE + __zres_end ; 0x3002
    dw jumptable_3000_case_0 - IMAGE_BASE + __zres_end ; 0x3004
    dw jumptable_3000_case_3 - IMAGE_BASE + __zres_end ; 0x3006
    dw jumptable_3000_case_0 - IMAGE_BASE + __zres_end ; 0x3008
    dw jumptable_3000_case_5 - IMAGE_BASE + __zres_end ; 0x300a
@..api_idx_0008_LJTR.l3:
    cmp ax, strict word 6            ; 0x300c
    jae short @..api_idx_0008_LJTR.l4 ; 0x300f
    xchg bx, ax                      ; 0x3011
    shl bx, 1                        ; 0x3012
    jmp [cs:bx + jumptable_3000 - IMAGE_BASE + __zres_end] ; 0x3014
@..api_idx_0008_LJTR.l4:
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
    mov ax, word [maze_data]         ; 0x3033
    add ax, 0x9b0                    ; 0x3036
    push ax                          ; 0x3039
    call test_bit                    ; 0x303a
    add sp, byte 4                   ; 0x303d
    test ax, ax                      ; 0x3040
    je short @..api_idx_0008_LJTR.l6 ; 0x3042
    mov ax, word [bss_91d4]          ; 0x3044
    jmp short @..api_idx_0008_LJTR.l5 ; 0x3047
jumptable_3082_case_0:
    mov ax, 5                        ; 0x3049
    imul word [bss_91d6]             ; 0x304c
    add ax, word [bp + 0xe]          ; 0x3050
    mov bx, ax                       ; 0x3053
    mov byte [bx - 0x6e26], 3        ; 0x3055
    jmp short @..api_idx_0008_LJTR.l6 ; 0x305a
jumptable_3082_case_1:
    mov ax, 5                        ; 0x305c
    imul word [bss_91d6]             ; 0x305f
    add ax, word [bp + 0xe]          ; 0x3063
    mov bx, ax                       ; 0x3066
    mov byte [bx - 0x6e26], 1        ; 0x3068
    jmp short @..api_idx_0008_LJTR.l6 ; 0x306d
jumptable_3082_case_2:
    mov ax, 5                        ; 0x306f
    imul word [bss_91d6]             ; 0x3072
    add ax, word [bp + 0xe]          ; 0x3076
    mov bx, ax                       ; 0x3079
    mov byte [bx - 0x6e26], 2        ; 0x307b
    jmp short @..api_idx_0008_LJTR.l6 ; 0x3080
jumptable_3082:
    dw jumptable_3082_case_0 - IMAGE_BASE + __zres_end ; 0x3082
    dw jumptable_3082_case_1 - IMAGE_BASE + __zres_end ; 0x3084
    dw jumptable_3082_case_2 - IMAGE_BASE + __zres_end ; 0x3086
    dw jumptable_3082_case_1 - IMAGE_BASE + __zres_end ; 0x3088
    dw jumptable_3082_case_0 - IMAGE_BASE + __zres_end ; 0x308a
    dw jumptable_3082_case_1 - IMAGE_BASE + __zres_end ; 0x308c
@..api_idx_0008_LJTR.l5:
    cmp ax, strict word 6            ; 0x308e
    jae short @..api_idx_0008_LJTR.l6 ; 0x3091
    xchg bx, ax                      ; 0x3093
    shl bx, 1                        ; 0x3094
    jmp [cs:bx + jumptable_3082 - IMAGE_BASE + __zres_end] ; 0x3096
@..api_idx_0008_LJTR.l6:
    push word [bp - 0x0002]          ; 0x309b
    mov ax, word [maze_data]         ; 0x309e
    add ax, 0x8b0                    ; 0x30a1
    push ax                          ; 0x30a4
    call test_bit                    ; 0x30a5
    add sp, byte 4                   ; 0x30a8
    test ax, ax                      ; 0x30ab
    jne short @..api_idx_0008_LJTR.l7 ; 0x30ad
    jmp near @..api_idx_0008_LJTR.l10 ; 0x30af
@..api_idx_0008_LJTR.l7:
    mov ax, word [bss_91d4]          ; 0x30b2
    jmp short @..api_idx_0008_LJTR.l9 ; 0x30b5
jumptable_3111_case_1:
    mov ax, 5                        ; 0x30b7
    imul word [bss_91d6]             ; 0x30ba
    add ax, word [bp + 0xe]          ; 0x30be
    mov bx, ax                       ; 0x30c1
    mov byte [bx - 0x6e26], 2        ; 0x30c3
    jmp short @..api_idx_0008_LJTR.l10 ; 0x30c8
jumptable_3111_case_2:
    mov ax, 5                        ; 0x30ca
    imul word [bss_91d6]             ; 0x30cd
    add ax, word [bp + 0xe]          ; 0x30d1
    mov bx, ax                       ; 0x30d4
    mov byte [bx - 0x6e0d], 1        ; 0x30d6
    jmp short @..api_idx_0008_LJTR.l10 ; 0x30db
jumptable_3111_case_5:
    mov ax, 5                        ; 0x30dd
    imul word [bss_91d6]             ; 0x30e0
    add ax, word [bp + 0xe]          ; 0x30e4
    mov bx, ax                       ; 0x30e7
    mov byte [bx - 0x6e26], 3        ; 0x30e9
    jmp short @..api_idx_0008_LJTR.l10 ; 0x30ee
jumptable_3111_case_0:
    mov ax, 5                        ; 0x30f0
    imul word [bss_91d6]             ; 0x30f3
    add ax, word [bp + 0xe]          ; 0x30f7
    mov bx, ax                       ; 0x30fa
    mov byte [bx - 0x6df4], 1        ; 0x30fc
    cmp word [bss_91d6], byte 4      ; 0x3101
    jge short @..api_idx_0008_LJTR.l8 ; 0x3106
    mov byte [bx - 0x6def], 1        ; 0x3108
@..api_idx_0008_LJTR.l8:
    mov ax, 0                        ; 0x310d
    ret                              ; 0x3110
jumptable_3111:
    dw jumptable_3111_case_0 - IMAGE_BASE + __zres_end ; 0x3111
    dw jumptable_3111_case_1 - IMAGE_BASE + __zres_end ; 0x3113
    dw jumptable_3111_case_2 - IMAGE_BASE + __zres_end ; 0x3115
    dw jumptable_3111_case_0 - IMAGE_BASE + __zres_end ; 0x3117
    dw jumptable_3111_case_2 - IMAGE_BASE + __zres_end ; 0x3119
    dw jumptable_3111_case_5 - IMAGE_BASE + __zres_end ; 0x311b
@..api_idx_0008_LJTR.l9:
    cmp ax, strict word 6            ; 0x311d
    jae short @..api_idx_0008_LJTR.l10 ; 0x3120
    xchg bx, ax                      ; 0x3122
    shl bx, 1                        ; 0x3123
    jmp [cs:bx + jumptable_3111 - IMAGE_BASE + __zres_end] ; 0x3125
@..api_idx_0008_LJTR.l10:
    push word [bp - 0x0002]          ; 0x312a
    mov ax, word [maze_data]         ; 0x312d
    add ax, 0x930                    ; 0x3130
    push ax                          ; 0x3133
    call test_bit                    ; 0x3134
    add sp, byte 4                   ; 0x3137
    test ax, ax                      ; 0x313a
    je short @..api_idx_0008_LJTR.l15 ; 0x313c
    mov ax, word [game_state_arg]    ; 0x313e
    jmp short @..api_idx_0008_LJTR.l14 ; 0x3141
@..api_idx_0008_LJTR.l11:
    mov ax, 5                        ; 0x3143
    imul word [bss_91d6]             ; 0x3146
    add ax, word [bp + 0xe]          ; 0x314a
    mov bx, ax                       ; 0x314d
    mov byte [bx - 0x6e26], 3        ; 0x314f
    jmp short @..api_idx_0008_LJTR.l15 ; 0x3154
@..api_idx_0008_LJTR.l12:
    mov ax, 5                        ; 0x3156
    imul word [bss_91d6]             ; 0x3159
    add ax, word [bp + 0xe]          ; 0x315d
    mov bx, ax                       ; 0x3160
    mov byte [bx - 0x6df4], 2        ; 0x3162
    cmp word [bss_91d6], byte 4      ; 0x3167
    jge short @..api_idx_0008_LJTR.l13 ; 0x316c
    mov byte [bx - 0x6def], 2        ; 0x316e
@..api_idx_0008_LJTR.l13:
    jmp short @..api_idx_0008_LJTR.l15 ; 0x3173
@..api_idx_0008_LJTR.l14:
    cmp ax, strict word 0xa          ; 0x3175
    je short @..api_idx_0008_LJTR.l12 ; 0x3178
    cmp ax, strict word 0xe          ; 0x317a
    je short @..api_idx_0008_LJTR.l11 ; 0x317d
    cmp ax, strict word 0x13         ; 0x317f
    je short @..api_idx_0008_LJTR.l11 ; 0x3182
    cmp ax, strict word 0x19         ; 0x3184
    je short @..api_idx_0008_LJTR.l12 ; 0x3187
    cmp ax, strict word 0x1f         ; 0x3189
    je short @..api_idx_0008_LJTR.l11 ; 0x318c
@..api_idx_0008_LJTR.l15:
    mov ax, word [party_tag]         ; 0x318e
    jmp short @..api_idx_0008_LJTR.l20 ; 0x3191
@..api_idx_0008_LJTR.l16:
    mov ax, 4                        ; 0x3193
    push ax                          ; 0x3196
    push word [bp - 0x0002]          ; 0x3197
    mov ax, word [maze_data]         ; 0x319a
    add ax, 0x90                     ; 0x319d
    push ax                          ; 0x31a0
    call ds_leaf_loc_NPSL            ; 0x31a1
    add sp, byte 6                   ; 0x31a4
    mov word [bp - 0x0004], ax       ; 0x31a7
    jmp short @..api_idx_0008_LJTR.l21 ; 0x31aa
@..api_idx_0008_LJTR.l17:
    mov ax, 4                        ; 0x31ac
    push ax                          ; 0x31af
    push word [bp - 0x0002]          ; 0x31b0
    mov ax, word [maze_data]         ; 0x31b3
    add ax, 0x290                    ; 0x31b6
    push ax                          ; 0x31b9
    call ds_leaf_loc_NPSL            ; 0x31ba
    add sp, byte 6                   ; 0x31bd
    mov word [bp - 0x0004], ax       ; 0x31c0
    jmp short @..api_idx_0008_LJTR.l21 ; 0x31c3
@..api_idx_0008_LJTR.l18:
    push word [bp + 0xc]             ; 0x31c5
    push word [bp + 0xa]             ; 0x31c8
    push word [bp + 0x8]             ; 0x31cb
    push word [bp + 0x6]             ; 0x31ce
    push word [bp + 0x4]             ; 0x31d1
    call loc_GPIH                    ; 0x31d4
    add sp, byte 0x0a                ; 0x31d7
    mov word [bp - 0x0004], ax       ; 0x31da
    jmp short @..api_idx_0008_LJTR.l21 ; 0x31dd
@..api_idx_0008_LJTR.l19:
    push word [bp + 0xc]             ; 0x31df
    push word [bp + 0xa]             ; 0x31e2
    push word [bp + 0x8]             ; 0x31e5
    push word [bp + 0x6]             ; 0x31e8
    push word [bp + 0x4]             ; 0x31eb
    call loc_MMMO                    ; 0x31ee
    add sp, byte 0x0a                ; 0x31f1
    mov word [bp - 0x0004], ax       ; 0x31f4
    jmp short @..api_idx_0008_LJTR.l21 ; 0x31f7
@..api_idx_0008_LJTR.l20:
    cmp ax, strict word 0            ; 0x31f9
    je short @..api_idx_0008_LJTR.l16 ; 0x31fc
    cmp ax, strict word 1            ; 0x31fe
    je short @..api_idx_0008_LJTR.l17 ; 0x3201
    cmp ax, strict word 2            ; 0x3203
    je short @..api_idx_0008_LJTR.l18 ; 0x3206
    cmp ax, strict word 3            ; 0x3208
    je short @..api_idx_0008_LJTR.l19 ; 0x320b
@..api_idx_0008_LJTR.l21:
    lea ax, word [bp - 0x0008]       ; 0x320d
    push ax                          ; 0x3210
    lea ax, word [bp - 0x0006]       ; 0x3211
    push ax                          ; 0x3214
    push word [bp - 0x0002]          ; 0x3215
    call loc_RRJG                    ; 0x3218
    add sp, byte 6                   ; 0x321b
    mov ax, word [party_tag]         ; 0x321e
    cmp ax, word [bp - 0x0008]       ; 0x3221
    je short @..api_idx_0008_LJTR.l23 ; 0x3224
    mov ax, word [bp - 0x0006]       ; 0x3226
    cmp ax, strict word 7            ; 0x3229
    jl short @..api_idx_0008_LJTR.l22 ; 0x322c
    cmp ax, strict word 9            ; 0x322e
    jle short @..api_idx_0008_LJTR.l23 ; 0x3231
@..api_idx_0008_LJTR.l22:
    cmp ax, strict word 0xb          ; 0x3233
    jg short @..api_idx_0008_LJTR.l23 ; 0x3236
    jmp near @..api_idx_0008_LJTR.l28 ; 0x3238
@..api_idx_0008_LJTR.l23:
    mov ax, word [bp - 0x0006]       ; 0x323b
    jmp near @..api_idx_0008_LJTR.l27 ; 0x323e
jumptable_3356_case_1:
    mov word [bp - 0x0004], 8        ; 0x3241
    jmp near @..api_idx_0008_LJTR.l28 ; 0x3246
jumptable_3356_case_2:
    mov word [bp - 0x0004], 9        ; 0x3249
    jmp near @..api_idx_0008_LJTR.l28 ; 0x324e
jumptable_3356_case_3:
    mov word [bp - 0x0004], 0xa      ; 0x3251
    jmp near @..api_idx_0008_LJTR.l28 ; 0x3256
jumptable_3356_case_4:
    mov word [bp - 0x0004], 0xb      ; 0x3259
    jmp near @..api_idx_0008_LJTR.l28 ; 0x325e
jumptable_3356_case_5:
    cmp word [bss_91d6], byte 0      ; 0x3261
    jne short @..api_idx_0008_LJTR.l24 ; 0x3266
    mov word [bp - 0x0004], 0xc      ; 0x3268
@..api_idx_0008_LJTR.l24:
    jmp near @..api_idx_0008_LJTR.l28 ; 0x326d
jumptable_3356_case_6:
    cmp word [bss_91d6], byte 0      ; 0x3270
    jne short @..api_idx_0008_LJTR.l25 ; 0x3275
    mov word [bp - 0x0004], 0xd      ; 0x3277
@..api_idx_0008_LJTR.l25:
    jmp near @..api_idx_0008_LJTR.l28 ; 0x327c
jumptable_3356_case_7:
    mov ax, word [bp - 0x0008]       ; 0x327f
    inc ax                           ; 0x3282
    push ax                          ; 0x3283
    mov ax, 5                        ; 0x3284
    imul word [bss_91d6]             ; 0x3287
    mov cx, ax                       ; 0x328b
    add ax, word [bp + 0xe]          ; 0x328d
    mov bx, ax                       ; 0x3290
    pop ax                           ; 0x3292
    mov byte [bx - 0x6ddb], al       ; 0x3293
    jmp near @..api_idx_0008_LJTR.l28 ; 0x3297
jumptable_3356_case_8:
    mov ax, word [bp - 0x0008]       ; 0x329a
    inc ax                           ; 0x329d
    push ax                          ; 0x329e
    mov ax, 0xa                      ; 0x329f
    imul word [bss_91d6]             ; 0x32a2
    mov cx, ax                       ; 0x32a6
    mov dx, word [bp + 0xe]          ; 0x32a8
    shl dx, 1                        ; 0x32ab
    add ax, dx                       ; 0x32ad
    mov bx, ax                       ; 0x32af
    pop ax                           ; 0x32b1
    mov word [bx - 0x6dc0], ax       ; 0x32b2
    jmp near @..api_idx_0008_LJTR.l28 ; 0x32b6
jumptable_3356_case_9:
    mov ax, word [bp - 0x0008]       ; 0x32b9
    inc ax                           ; 0x32bc
    push ax                          ; 0x32bd
    mov ax, 0xa                      ; 0x32be
    imul word [bss_91d6]             ; 0x32c1
    mov cx, ax                       ; 0x32c5
    mov dx, word [bp + 0xe]          ; 0x32c7
    shl dx, 1                        ; 0x32ca
    add ax, dx                       ; 0x32cc
    mov bx, ax                       ; 0x32ce
    pop ax                           ; 0x32d0
    mov word [bx - 0x6d8e], ax       ; 0x32d1
    jmp near @..api_idx_0008_LJTR.l28 ; 0x32d5
jumptable_3356_case_10:
    mov word [bp - 0x0004], 0xe      ; 0x32d8
    jmp near @..api_idx_0008_LJTR.l28 ; 0x32dd
jumptable_3356_case_11:
    mov word [bp - 0x0004], 0xf      ; 0x32e0
    jmp near @..api_idx_0008_LJTR.l28 ; 0x32e5
jumptable_3356_case_12:
    mov ax, 5                        ; 0x32e8
    imul word [bss_91d6]             ; 0x32eb
    add ax, word [bp + 0xe]          ; 0x32ef
    mov bx, ax                       ; 0x32f2
    mov byte [bx - 0x6d5e], 1        ; 0x32f4
    jmp near @..api_idx_0008_LJTR.l28 ; 0x32f9
jumptable_3356_case_13:
    mov ax, 5                        ; 0x32fc
    imul word [bss_91d6]             ; 0x32ff
    add ax, word [bp + 0xe]          ; 0x3303
    mov bx, ax                       ; 0x3306
    mov byte [bx - 0x6e26], 3        ; 0x3308
    jmp short @..api_idx_0008_LJTR.l28 ; 0x330d
jumptable_3356_case_14:
    mov ax, 0xa                      ; 0x330f
    imul word [bss_91d6]             ; 0x3312
    mov cx, word [bp + 0xe]          ; 0x3316
    shl cx, 1                        ; 0x3319
    add ax, cx                       ; 0x331b
    mov bx, ax                       ; 0x331d
    mov word [bx - 0x6d42], 1        ; 0x331f
jumptable_3356_case_15:
    cmp word [bp - 0x0006], byte 0x0e ; 0x3325
    je short @..api_idx_0008_LJTR.l26 ; 0x3329
    mov ax, 0xa                      ; 0x332b
    imul word [bss_91d6]             ; 0x332e
    mov cx, word [bp + 0xe]          ; 0x3332
    shl cx, 1                        ; 0x3335
    add ax, cx                       ; 0x3337
    mov bx, ax                       ; 0x3339
    mov word [bx - 0x6d10], 1        ; 0x333b
@..api_idx_0008_LJTR.l26:
    jmp short @..api_idx_0008_LJTR.l28 ; 0x3341
jumptable_3356_case_16:
    mov ax, 5                        ; 0x3343
    imul word [bss_91d6]             ; 0x3346
    add ax, word [bp + 0xe]          ; 0x334a
    mov bx, ax                       ; 0x334d
    mov byte [bx - 0x6d5e], 2        ; 0x334f
    jmp short @..api_idx_0008_LJTR.l28 ; 0x3354
jumptable_3356:
    dw jumptable_3356_case_0 - IMAGE_BASE + __zres_end ; 0x3356
    dw jumptable_3356_case_1 - IMAGE_BASE + __zres_end ; 0x3358
    dw jumptable_3356_case_2 - IMAGE_BASE + __zres_end ; 0x335a
    dw jumptable_3356_case_3 - IMAGE_BASE + __zres_end ; 0x335c
    dw jumptable_3356_case_4 - IMAGE_BASE + __zres_end ; 0x335e
    dw jumptable_3356_case_5 - IMAGE_BASE + __zres_end ; 0x3360
    dw jumptable_3356_case_6 - IMAGE_BASE + __zres_end ; 0x3362
    dw jumptable_3356_case_7 - IMAGE_BASE + __zres_end ; 0x3364
    dw jumptable_3356_case_8 - IMAGE_BASE + __zres_end ; 0x3366
    dw jumptable_3356_case_9 - IMAGE_BASE + __zres_end ; 0x3368
    dw jumptable_3356_case_10 - IMAGE_BASE + __zres_end ; 0x336a
    dw jumptable_3356_case_11 - IMAGE_BASE + __zres_end ; 0x336c
    dw jumptable_3356_case_12 - IMAGE_BASE + __zres_end ; 0x336e
    dw jumptable_3356_case_13 - IMAGE_BASE + __zres_end ; 0x3370
    dw jumptable_3356_case_14 - IMAGE_BASE + __zres_end ; 0x3372
    dw jumptable_3356_case_15 - IMAGE_BASE + __zres_end ; 0x3374
    dw jumptable_3356_case_16 - IMAGE_BASE + __zres_end ; 0x3376
    dw jumptable_3356_case_14 - IMAGE_BASE + __zres_end ; 0x3378
@..api_idx_0008_LJTR.l27:
    cmp ax, strict word 0x12         ; 0x337a
    jae short @..api_idx_0008_LJTR.l28 ; 0x337d
    xchg bx, ax                      ; 0x337f
    shl bx, 1                        ; 0x3380
    jmp [cs:bx + jumptable_3356 - IMAGE_BASE + __zres_end] ; 0x3382
jumptable_3356_case_0:
@..api_idx_0008_LJTR.l28:
    mov ax, word [game_state_arg]    ; 0x3387
    cmp ax, word [saved_level]       ; 0x338a
    jne short @..api_idx_0008_LJTR.l29 ; 0x338e
    mov ax, word [bp + 0xc]          ; 0x3390
    cmp ax, word [saved_map_piece]   ; 0x3393
    jne short @..api_idx_0008_LJTR.l29 ; 0x3397
    mov ax, word [bp + 0x8]          ; 0x3399
    cmp ax, word [saved_cell_x]      ; 0x339c
    jne short @..api_idx_0008_LJTR.l29 ; 0x33a0
    mov ax, word [bp + 0xa]          ; 0x33a2
    cmp ax, word [saved_cell_y]      ; 0x33a5
    jne short @..api_idx_0008_LJTR.l29 ; 0x33a9
    mov ax, 5                        ; 0x33ab
    imul word [bss_91d6]             ; 0x33ae
    add ax, word [bp + 0xe]          ; 0x33b2
    mov bx, ax                       ; 0x33b5
    mov byte [bx - 0x6d5e], 3        ; 0x33b7
@..api_idx_0008_LJTR.l29:
    mov ax, word [bp - 0x0004]       ; 0x33bc
    ret                              ; 0x33bf
