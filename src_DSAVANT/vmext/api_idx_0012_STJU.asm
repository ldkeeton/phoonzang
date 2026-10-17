; auto-generated
api_idx_0012_STJU:
    mov ax, 0xffee                   ; 0x30f4
    call aztec_csav                  ; 0x30f7
    cmp word [bp + 0x4], byte 4      ; 0x30fa
    jge short @..api_idx_0012_STJU.l1 ; 0x30fe
    cmp word [bp + 0x6], byte 0      ; 0x3100
    jle short @..api_idx_0012_STJU.l1 ; 0x3104
    cmp word [bp + 0x6], byte 4      ; 0x3106
    jge short @..api_idx_0012_STJU.l1 ; 0x310a
    mov ax, 1                        ; 0x310c
    jmp short @..api_idx_0012_STJU.l2 ; 0x310f
@..api_idx_0012_STJU.l1:
    mov ax, 0                        ; 0x3111
@..api_idx_0012_STJU.l2:
    mov word [bp - 0x0012], ax       ; 0x3114
    cmp word [bp - 0x0012], byte 0   ; 0x3117
    jne short @..api_idx_0012_STJU.l3 ; 0x311b
    jmp near @..api_idx_0012_STJU.l20 ; 0x311d
@..api_idx_0012_STJU.l3:
    mov ax, 0xa                      ; 0x3120
    imul word [bp + 0x4]             ; 0x3123
    mov cx, word [bp + 0x6]          ; 0x3126
    shl cx, 1                        ; 0x3129
    add ax, cx                       ; 0x312b
    mov bx, ax                       ; 0x312d
    cmp word [bx - 0x6dbe], byte 0   ; 0x312f
    jne short @..api_idx_0012_STJU.l4 ; 0x3134
    cmp word [bx - 0x6d40], byte 0   ; 0x3136
    jne short @..api_idx_0012_STJU.l4 ; 0x313b
    jmp near @..api_idx_0012_STJU.l20 ; 0x313d
@..api_idx_0012_STJU.l4:
    cmp word [bp + 0x6], byte 2      ; 0x3140
    jne short @..api_idx_0012_STJU.l5 ; 0x3144
    mov ax, 0                        ; 0x3146
    push ax                          ; 0x3149
    push ax                          ; 0x314a
    push ax                          ; 0x314b
    mov ax, 3                        ; 0x314c
    push ax                          ; 0x314f
    push word [bp + 0x4]             ; 0x3150
    mov ax, 0xffff                   ; 0x3153
    push ax                          ; 0x3156
    mov ax, word [bp + 0x20]         ; 0x3157
    add ax, word [bp + 0x4]          ; 0x315a
    push ax                          ; 0x315d
    call loc_UMHI_193b               ; 0x315e
    pop cx                           ; 0x3161
    push ax                          ; 0x3162
    mov ax, 0                        ; 0x3163
    push ax                          ; 0x3166
    push ax                          ; 0x3167
    push ax                          ; 0x3168
    mov ax, 2                        ; 0x3169
    push ax                          ; 0x316c
    mov ax, 0xffff                   ; 0x316d
    push ax                          ; 0x3170
    mov ax, word [bp + 0x22]         ; 0x3171
    add ax, word [bp + 0x4]          ; 0x3174
    push ax                          ; 0x3177
    mov ax, word [bp + 0x20]         ; 0x3178
    add ax, word [bp + 0x4]          ; 0x317b
    push ax                          ; 0x317e
    call loc_LPLI_194f               ; 0x317f
    add sp, byte 4                   ; 0x3182
    push ax                          ; 0x3185
    mov ax, 0xff                     ; 0x3186
    push ax                          ; 0x3189
    call api_idx_0004_RTNM           ; 0x318a
    add sp, byte 0x1c                ; 0x318d
    jmp short @..api_idx_0012_STJU.l9 ; 0x3190
@..api_idx_0012_STJU.l5:
    cmp word [bp + 0x4], byte 0      ; 0x3192
    jle short @..api_idx_0012_STJU.l9 ; 0x3196
    mov ax, 0                        ; 0x3198
    push ax                          ; 0x319b
    push ax                          ; 0x319c
    push ax                          ; 0x319d
    mov ax, 3                        ; 0x319e
    push ax                          ; 0x31a1
    push word [bp + 0x4]             ; 0x31a2
    mov ax, 0xffff                   ; 0x31a5
    push ax                          ; 0x31a8
    cmp word [bp + 0x6], byte 3      ; 0x31a9
    jne short @..api_idx_0012_STJU.l6 ; 0x31ad
    mov ax, word [bp + 0x2a]         ; 0x31af
    add ax, word [bp + 0x4]          ; 0x31b2
@..api_idx_0012_STJU.l6:
    push ax                          ; 0x31b5
    mov ax, 0                        ; 0x31b6
    push ax                          ; 0x31b9
    push ax                          ; 0x31ba
    push ax                          ; 0x31bb
    mov ax, 2                        ; 0x31bc
    push ax                          ; 0x31bf
    mov ax, 0xffff                   ; 0x31c0
    push ax                          ; 0x31c3
    cmp word [bp + 0x6], byte 3      ; 0x31c4
    jne short @..api_idx_0012_STJU.l7 ; 0x31c8
    mov ax, word [bp + 0x2a]         ; 0x31ca
    add ax, word [bp + 0x4]          ; 0x31cd
    jmp short @..api_idx_0012_STJU.l8 ; 0x31d0
@..api_idx_0012_STJU.l7:
    mov ax, word [bp + 0x28]         ; 0x31d2
    add ax, word [bp + 0x4]          ; 0x31d5
@..api_idx_0012_STJU.l8:
    push ax                          ; 0x31d8
    mov ax, 0xff                     ; 0x31d9
    push ax                          ; 0x31dc
    call api_idx_0004_RTNM           ; 0x31dd
    add sp, byte 0x1c                ; 0x31e0
@..api_idx_0012_STJU.l9:
    mov ax, 0xa                      ; 0x31e3
    imul word [bp + 0x4]             ; 0x31e6
    mov cx, word [bp + 0x6]          ; 0x31e9
    shl cx, 1                        ; 0x31ec
    add ax, cx                       ; 0x31ee
    mov bx, ax                       ; 0x31f0
    cmp word [bx - 0x6dbe], byte 0   ; 0x31f2
    jne short @..api_idx_0012_STJU.l10 ; 0x31f7
    jmp near @..api_idx_0012_STJU.l20 ; 0x31f9
@..api_idx_0012_STJU.l10:
    mov cx, word [bx - 0x6dbe]       ; 0x31fc
    dec cx                           ; 0x3200
    mov ax, word [bss_82ee]          ; 0x3201
    sub ax, cx                       ; 0x3204
    add ax, strict word 6            ; 0x3206
    mov cx, 4                        ; 0x3209
    cwd                              ; 0x320c
    idiv cx                          ; 0x320d
    mov word [bp - 0x0002], dx       ; 0x320f
    mov word [bp - 0x0004], 0        ; 0x3212
    mov ax, dx                       ; 0x3217
    mov cx, 2                        ; 0x3219
    cwd                              ; 0x321c
    idiv cx                          ; 0x321d
    mov ax, dx                       ; 0x321f
    test ax, ax                      ; 0x3221
    jne short @..api_idx_0012_STJU.l11 ; 0x3223
    cmp word [bp + 0x4], byte 0      ; 0x3225
    jg short @..api_idx_0012_STJU.l12 ; 0x3229
@..api_idx_0012_STJU.l11:
    cmp word [bp + 0x6], byte 2      ; 0x322b
    jne short @..api_idx_0012_STJU.l15 ; 0x322f
@..api_idx_0012_STJU.l12:
    test ax, ax                      ; 0x3231
    je short @..api_idx_0012_STJU.l13 ; 0x3233
    mov ax, 3                        ; 0x3235
    jmp short @..api_idx_0012_STJU.l14 ; 0x3238
@..api_idx_0012_STJU.l13:
    mov ax, 0                        ; 0x323a
@..api_idx_0012_STJU.l14:
    mov cx, word [bp + 0x4]          ; 0x323d
    shl cx, 1                        ; 0x3240
    shl cx, 1                        ; 0x3242
    shl cx, 1                        ; 0x3244
    add ax, cx                       ; 0x3246
    inc ax                           ; 0x3248
    inc ax                           ; 0x3249
    inc ax                           ; 0x324a
    mov word [bp - 0x0004], ax       ; 0x324b
    mov ax, word [bss_91a4]          ; 0x324e
    mov word [bp - 0x0006], ax       ; 0x3251
    mov ax, word [bx + 0x260]        ; 0x3254
    mov word [bp - 0x0008], ax       ; 0x3258
    jmp short @..api_idx_0012_STJU.l17 ; 0x325b
@..api_idx_0012_STJU.l15:
    cmp word [bp + 0x4], byte 0      ; 0x325d
    jle short @..api_idx_0012_STJU.l17 ; 0x3261
    mov ax, word [bp + 0x4]          ; 0x3263
    add ax, strict word 0x20         ; 0x3266
    mov word [bp - 0x0004], ax       ; 0x3269
    mov ax, 0                        ; 0x326c
    cmp word [bp + 0x6], byte 3      ; 0x326f
    jne short @..api_idx_0012_STJU.l16 ; 0x3273
    mov ax, 1                        ; 0x3275
@..api_idx_0012_STJU.l16:
    mov word [bp - 0x0006], ax       ; 0x3278
    mov word [bp - 0x0008], 0        ; 0x327b
@..api_idx_0012_STJU.l17:
    cmp word [bp - 0x0004], byte 0   ; 0x3280
    je short @..api_idx_0012_STJU.l20 ; 0x3284
    mov ax, 0                        ; 0x3286
    push ax                          ; 0x3289
    push ax                          ; 0x328a
    push word [bp - 0x0006]          ; 0x328b
    push ax                          ; 0x328e
    push word [bp + 0x4]             ; 0x328f
    mov ax, 0xf8                     ; 0x3292
    push ax                          ; 0x3295
    mov ax, 0x48                     ; 0x3296
    push ax                          ; 0x3299
    push word [bp + 0x6]             ; 0x329a
    mov ax, word [bp + 0x6]          ; 0x329d
    cmp ax, strict word 2            ; 0x32a0
    je short @..api_idx_0012_STJU.l18 ; 0x32a3
    cmp dx, byte 1                   ; 0x32a5
    jne short @..api_idx_0012_STJU.l18 ; 0x32a8
    mov ax, 1                        ; 0x32aa
    jmp short @..api_idx_0012_STJU.l19 ; 0x32ad
@..api_idx_0012_STJU.l18:
    mov ax, 0                        ; 0x32af
@..api_idx_0012_STJU.l19:
    push ax                          ; 0x32b2
    mov ax, 1                        ; 0x32b3
    push ax                          ; 0x32b6
    push word [bp - 0x0004]          ; 0x32b7
    mov ax, 0                        ; 0x32ba
    push ax                          ; 0x32bd
    push word [bp - 0x0008]          ; 0x32be
    mov ax, 4                        ; 0x32c1
    push ax                          ; 0x32c4
    call api_idx_0004_RTNM           ; 0x32c5
    add sp, byte 0x1c                ; 0x32c8
@..api_idx_0012_STJU.l20:
    mov ax, 5                        ; 0x32cb
    imul word [bp + 0x4]             ; 0x32ce
    add ax, word [bp + 0x6]          ; 0x32d1
    mov bx, ax                       ; 0x32d4
    mov al, byte [bx - 0x6e3b]       ; 0x32d6
    sub ah, ah                       ; 0x32da
    jmp near @..api_idx_0012_STJU.l36 ; 0x32dc
@..api_idx_0012_STJU.l21:
    cmp word [bss_91a8], byte 2      ; 0x32df
    je short @..api_idx_0012_STJU.l22 ; 0x32e4
    jmp near @..api_idx_0012_STJU.l32 ; 0x32e6
@..api_idx_0012_STJU.l22:
    cmp word [bp + 0x4], byte 5      ; 0x32e9
    jl short @..api_idx_0012_STJU.l23 ; 0x32ed
    jmp near @..api_idx_0012_STJU.l31 ; 0x32ef
@..api_idx_0012_STJU.l23:
    mov ax, 0                        ; 0x32f2
    push ax                          ; 0x32f5
    push ax                          ; 0x32f6
    push ax                          ; 0x32f7
    push word [bp + 0xc]             ; 0x32f8
    push word [bp + 0x4]             ; 0x32fb
    mov ax, 0xffff                   ; 0x32fe
    push ax                          ; 0x3301
    mov ax, word [bp + 0x18]         ; 0x3302
    add ax, word [bp + 0x4]          ; 0x3305
    push ax                          ; 0x3308
    call loc_UMHI_193b               ; 0x3309
    pop cx                           ; 0x330c
    push ax                          ; 0x330d
    mov ax, 0                        ; 0x330e
    push ax                          ; 0x3311
    push ax                          ; 0x3312
    push ax                          ; 0x3313
    mov ax, 2                        ; 0x3314
    push ax                          ; 0x3317
    mov ax, 0xffff                   ; 0x3318
    push ax                          ; 0x331b
    mov ax, word [bp + 0x1a]         ; 0x331c
    add ax, word [bp + 0x4]          ; 0x331f
    push ax                          ; 0x3322
    mov ax, word [bp + 0x18]         ; 0x3323
    add ax, word [bp + 0x4]          ; 0x3326
    push ax                          ; 0x3329
    call loc_LPLI_194f               ; 0x332a
    add sp, byte 4                   ; 0x332d
    push ax                          ; 0x3330
    mov ax, 0xff                     ; 0x3331
    push ax                          ; 0x3334
    call api_idx_0004_RTNM           ; 0x3335
    add sp, byte 0x1c                ; 0x3338
    mov word [bp - 0x000e], 0xffff   ; 0x333b
    mov word [bp - 0x000a], 0xffff   ; 0x3340
    mov word [bp - 0x0010], 0xffff   ; 0x3345
    mov word [bp - 0x000c], 0xffff   ; 0x334a
    cmp word [bp + 0x40], byte 0xff  ; 0x334f
    je short @..api_idx_0012_STJU.l24 ; 0x3353
    mov ax, word [bp + 0x42]         ; 0x3355
    add ax, word [bp + 0x4]          ; 0x3358
    push ax                          ; 0x335b
    mov ax, word [bp + 0x40]         ; 0x335c
    add ax, word [bp + 0x4]          ; 0x335f
    push ax                          ; 0x3362
    call loc_LPLI_194f               ; 0x3363
    add sp, byte 4                   ; 0x3366
    mov word [bp - 0x000e], ax       ; 0x3369
    mov ax, word [bp + 0x40]         ; 0x336c
    add ax, word [bp + 0x4]          ; 0x336f
    push ax                          ; 0x3372
    call loc_UMHI_193b               ; 0x3373
    pop cx                           ; 0x3376
    mov word [bp - 0x0010], ax       ; 0x3377
@..api_idx_0012_STJU.l24:
    cmp word [bp + 0x4], byte 0      ; 0x337a
    jle short @..api_idx_0012_STJU.l25 ; 0x337e
    mov ax, word [bp + 0x3e]         ; 0x3380
    add ax, word [bp + 0x4]          ; 0x3383
    dec ax                           ; 0x3386
    push ax                          ; 0x3387
    mov ax, word [bp + 0x3c]         ; 0x3388
    add ax, word [bp + 0x4]          ; 0x338b
    dec ax                           ; 0x338e
    push ax                          ; 0x338f
    call loc_LPLI_1927               ; 0x3390
    add sp, byte 4                   ; 0x3393
    mov word [bp - 0x000a], ax       ; 0x3396
    mov ax, word [bp + 0x3c]         ; 0x3399
    add ax, word [bp + 0x4]          ; 0x339c
    dec ax                           ; 0x339f
    push ax                          ; 0x33a0
    call loc_UMHI_1913               ; 0x33a1
    pop cx                           ; 0x33a4
    mov word [bp - 0x000c], ax       ; 0x33a5
@..api_idx_0012_STJU.l25:
    cmp word [bp - 0x000a], byte 0xff ; 0x33a8
    jne short @..api_idx_0012_STJU.l26 ; 0x33ac
    cmp word [bp - 0x000e], byte 0xff ; 0x33ae
    jne short @..api_idx_0012_STJU.l26 ; 0x33b2
    jmp near @..api_idx_0012_STJU.l31 ; 0x33b4
@..api_idx_0012_STJU.l26:
    mov ax, 0                        ; 0x33b7
    push ax                          ; 0x33ba
    push ax                          ; 0x33bb
    push ax                          ; 0x33bc
    push word [bp + 0xc]             ; 0x33bd
    push word [bp + 0x4]             ; 0x33c0
    push word [bp - 0x000c]          ; 0x33c3
    push word [bp - 0x0010]          ; 0x33c6
    push ax                          ; 0x33c9
    push ax                          ; 0x33ca
    mov ax, 2                        ; 0x33cb
    push ax                          ; 0x33ce
    push ax                          ; 0x33cf
    push word [bp - 0x000a]          ; 0x33d0
    push word [bp - 0x000e]          ; 0x33d3
    mov ax, 0xff                     ; 0x33d6
    push ax                          ; 0x33d9
    call api_idx_0004_RTNM           ; 0x33da
    add sp, byte 0x1c                ; 0x33dd
    cmp word [bp - 0x000a], byte 0xff ; 0x33e0
    jne short @..api_idx_0012_STJU.l27 ; 0x33e4
    jmp near @..api_idx_0012_STJU.l31 ; 0x33e6
@..api_idx_0012_STJU.l27:
    cmp word [bss_91a8], byte 0      ; 0x33e9
    jne short @..api_idx_0012_STJU.l28 ; 0x33ee
    jmp near @..api_idx_0012_STJU.l31 ; 0x33f0
@..api_idx_0012_STJU.l28:
    mov ax, word [bp + 0x4]          ; 0x33f3
    cmp ax, strict word 4            ; 0x33f6
    je short @..api_idx_0012_STJU.l29 ; 0x33f9
    jmp near @..api_idx_0012_STJU.l31 ; 0x33fb
@..api_idx_0012_STJU.l29:
    cmp word [bp + 0x6], byte 0      ; 0x33fe
    jne short @..api_idx_0012_STJU.l30 ; 0x3402
    mov ax, 0                        ; 0x3404
    push ax                          ; 0x3407
    push ax                          ; 0x3408
    push ax                          ; 0x3409
    push word [bp + 0xc]             ; 0x340a
    push word [bp + 0x4]             ; 0x340d
    mov ax, 0xffff                   ; 0x3410
    push ax                          ; 0x3413
    mov ax, 0xc2                     ; 0x3414
    push ax                          ; 0x3417
    call loc_UMHI_1913               ; 0x3418
    pop cx                           ; 0x341b
    push ax                          ; 0x341c
    mov ax, 0                        ; 0x341d
    push ax                          ; 0x3420
    push ax                          ; 0x3421
    push ax                          ; 0x3422
    mov ax, 2                        ; 0x3423
    push ax                          ; 0x3426
    mov ax, 0xffff                   ; 0x3427
    push ax                          ; 0x342a
    mov ax, 0xc3                     ; 0x342b
    push ax                          ; 0x342e
    mov ax, 0xc2                     ; 0x342f
    push ax                          ; 0x3432
    call loc_LPLI_1927               ; 0x3433
    add sp, byte 4                   ; 0x3436
    push ax                          ; 0x3439
    mov ax, 0xff                     ; 0x343a
    push ax                          ; 0x343d
    call api_idx_0004_RTNM           ; 0x343e
    add sp, byte 0x1c                ; 0x3441
    jmp short @..api_idx_0012_STJU.l31 ; 0x3444
@..api_idx_0012_STJU.l30:
    cmp word [bp + 0x6], byte 4      ; 0x3446
    jne short @..api_idx_0012_STJU.l31 ; 0x344a
    mov ax, 0                        ; 0x344c
    push ax                          ; 0x344f
    push ax                          ; 0x3450
    push ax                          ; 0x3451
    push word [bp + 0xc]             ; 0x3452
    push word [bp + 0x4]             ; 0x3455
    mov ax, 0xffff                   ; 0x3458
    push ax                          ; 0x345b
    mov ax, 0xc3                     ; 0x345c
    push ax                          ; 0x345f
    call loc_UMHI_1913               ; 0x3460
    pop cx                           ; 0x3463
    push ax                          ; 0x3464
    mov ax, 0                        ; 0x3465
    push ax                          ; 0x3468
    push ax                          ; 0x3469
    push ax                          ; 0x346a
    mov ax, 2                        ; 0x346b
    push ax                          ; 0x346e
    mov ax, 0xffff                   ; 0x346f
    push ax                          ; 0x3472
    mov ax, 0xc2                     ; 0x3473
    push ax                          ; 0x3476
    mov ax, 0xc3                     ; 0x3477
    push ax                          ; 0x347a
    call loc_LPLI_1927               ; 0x347b
    add sp, byte 4                   ; 0x347e
    push ax                          ; 0x3481
    mov ax, 0xff                     ; 0x3482
    push ax                          ; 0x3485
    call api_idx_0004_RTNM           ; 0x3486
    add sp, byte 0x1c                ; 0x3489
@..api_idx_0012_STJU.l31:
    jmp near @..api_idx_0012_STJU.l35 ; 0x348c
@..api_idx_0012_STJU.l32:
    cmp word [bss_91a8], byte 4      ; 0x348f
    je short @..api_idx_0012_STJU.l33 ; 0x3494
    jmp near @..api_idx_0012_STJU.l35 ; 0x3496
@..api_idx_0012_STJU.l33:
    cmp word [bp + 0x4], byte 4      ; 0x3499
    jl short @..api_idx_0012_STJU.l34 ; 0x349d
    jmp near @..api_idx_0012_STJU.l35 ; 0x349f
@..api_idx_0012_STJU.l34:
    mov ax, word [bp + 0x38]         ; 0x34a2
    add ax, word [bp + 0x4]          ; 0x34a5
    push ax                          ; 0x34a8
    call loc_UMHI_193b               ; 0x34a9
    pop cx                           ; 0x34ac
    push ax                          ; 0x34ad
    mov ax, 2                        ; 0x34ae
    push ax                          ; 0x34b1
    mov ax, word [bp + 0x3a]         ; 0x34b2
    add ax, word [bp + 0x4]          ; 0x34b5
    push ax                          ; 0x34b8
    mov ax, word [bp + 0x38]         ; 0x34b9
    add ax, word [bp + 0x4]          ; 0x34bc
    push ax                          ; 0x34bf
    call loc_LPLI_194f               ; 0x34c0
    add sp, byte 4                   ; 0x34c3
    push ax                          ; 0x34c6
    push word [bp + 0x10]            ; 0x34c7
    call thunk_34                    ; 0x34ca
    add sp, byte 8                   ; 0x34cd
    mov ax, word [bp + 0x4]          ; 0x34d0
    cmp ax, strict word 2            ; 0x34d3
    jge short @..api_idx_0012_STJU.l35 ; 0x34d6
    cmp word [bp + 0x6], byte 2      ; 0x34d8
    jne short @..api_idx_0012_STJU.l35 ; 0x34dc
    mov ax, 0                        ; 0x34de
    push ax                          ; 0x34e1
    mov ax, 1                        ; 0x34e2
    push ax                          ; 0x34e5
    mov ax, 0                        ; 0x34e6
    push ax                          ; 0x34e9
    push word [bp + 0x10]            ; 0x34ea
    push word [bp + 0x4]             ; 0x34ed
    mov ax, 0xffff                   ; 0x34f0
    push ax                          ; 0x34f3
    mov ax, word [bp + 0x4]          ; 0x34f4
    add ax, strict word 0x19         ; 0x34f7
    push ax                          ; 0x34fa
    call loc_UMHI_193b               ; 0x34fb
    pop cx                           ; 0x34fe
    push ax                          ; 0x34ff
    mov ax, 0                        ; 0x3500
    push ax                          ; 0x3503
    push ax                          ; 0x3504
    push ax                          ; 0x3505
    mov ax, 2                        ; 0x3506
    push ax                          ; 0x3509
    mov ax, 0xffff                   ; 0x350a
    push ax                          ; 0x350d
    mov ax, word [bp + 0x4]          ; 0x350e
    add ax, strict word 0x19         ; 0x3511
    push ax                          ; 0x3514
    push ax                          ; 0x3515
    call loc_LPLI_194f               ; 0x3516
    add sp, byte 4                   ; 0x3519
    push ax                          ; 0x351c
    mov ax, 0xfe                     ; 0x351d
    push ax                          ; 0x3520
    call api_idx_0004_RTNM           ; 0x3521
    add sp, byte 0x1c                ; 0x3524
@..api_idx_0012_STJU.l35:
    jmp short @..api_idx_0012_STJU.l37 ; 0x3527
@..api_idx_0012_STJU.l36:
    cmp ax, strict word 1            ; 0x3529
    jne short @..api_idx_0012_STJU.l37 ; 0x352c
    jmp near @..api_idx_0012_STJU.l21 ; 0x352e
@..api_idx_0012_STJU.l37:
    mov ax, 5                        ; 0x3531
    imul word [bp + 0x4]             ; 0x3534
    add ax, word [bp + 0x6]          ; 0x3537
    mov bx, ax                       ; 0x353a
    mov al, byte [bx - 0x6e54]       ; 0x353c
    sub ah, ah                       ; 0x3540
    jmp near @..api_idx_0012_STJU.l45 ; 0x3542
loc_GMQM:
    cmp word [bp + 0x4], byte 5      ; 0x3545
    jge short @..api_idx_0012_STJU.l38 ; 0x3549
    mov ax, word [bp + 0x1c]         ; 0x354b
    add ax, word [bp + 0x4]          ; 0x354e
    push ax                          ; 0x3551
    call loc_UMHI_193b               ; 0x3552
    pop cx                           ; 0x3555
    push ax                          ; 0x3556
    mov ax, 2                        ; 0x3557
    push ax                          ; 0x355a
    mov ax, word [bp + 0x1e]         ; 0x355b
    add ax, word [bp + 0x4]          ; 0x355e
    push ax                          ; 0x3561
    mov ax, word [bp + 0x1c]         ; 0x3562
    add ax, word [bp + 0x4]          ; 0x3565
    push ax                          ; 0x3568
    call loc_LPLI_194f               ; 0x3569
    add sp, byte 4                   ; 0x356c
    push ax                          ; 0x356f
    push word [bp + 0xa]             ; 0x3570
    call thunk_34                    ; 0x3573
    add sp, byte 8                   ; 0x3576
@..api_idx_0012_STJU.l38:
    jmp near @..api_idx_0012_STJU.l46 ; 0x3579
loc_NQIP:
    cmp word [bp + 0x4], byte 5      ; 0x357c
    jge short @..api_idx_0012_STJU.l39 ; 0x3580
    mov ax, word [bp + 0x30]         ; 0x3582
    add ax, word [bp + 0x4]          ; 0x3585
    push ax                          ; 0x3588
    call loc_UMHI_193b               ; 0x3589
    pop cx                           ; 0x358c
    push ax                          ; 0x358d
    mov ax, 2                        ; 0x358e
    push ax                          ; 0x3591
    mov ax, word [bp + 0x32]         ; 0x3592
    add ax, word [bp + 0x4]          ; 0x3595
    push ax                          ; 0x3598
    mov ax, word [bp + 0x30]         ; 0x3599
    add ax, word [bp + 0x4]          ; 0x359c
    push ax                          ; 0x359f
    call loc_LPLI_194f               ; 0x35a0
    add sp, byte 4                   ; 0x35a3
    push ax                          ; 0x35a6
    push word [bp + 0x16]            ; 0x35a7
    call thunk_34                    ; 0x35aa
    add sp, byte 8                   ; 0x35ad
@..api_idx_0012_STJU.l39:
    jmp short @..api_idx_0012_STJU.l46 ; 0x35b0
loc_NVUT:
    cmp word [bp + 0x4], byte 5      ; 0x35b2
    jge short @..api_idx_0012_STJU.l44 ; 0x35b6
    mov ax, word [bss_91a6]          ; 0x35b8
    add ax, word [bss_82e8]          ; 0x35bb
    mov cx, 2                        ; 0x35bf
    cwd                              ; 0x35c2
    idiv cx                          ; 0x35c3
    mov ax, dx                       ; 0x35c5
    test ax, ax                      ; 0x35c7
    je short @..api_idx_0012_STJU.l40 ; 0x35c9
    mov ax, word [bp + 0x34]         ; 0x35cb
    add ax, word [bp + 0x4]          ; 0x35ce
    jmp short @..api_idx_0012_STJU.l41 ; 0x35d1
@..api_idx_0012_STJU.l40:
    mov ax, 0xffff                   ; 0x35d3
@..api_idx_0012_STJU.l41:
    push ax                          ; 0x35d6
    push cx                          ; 0x35d7
    test dx, dx                      ; 0x35d8
    je short @..api_idx_0012_STJU.l42 ; 0x35da
    mov ax, word [bp + 0x36]         ; 0x35dc
    add ax, word [bp + 0x4]          ; 0x35df
    jmp short @..api_idx_0012_STJU.l43 ; 0x35e2
@..api_idx_0012_STJU.l42:
    mov ax, word [bp + 0x34]         ; 0x35e4
    add ax, word [bp + 0x4]          ; 0x35e7
@..api_idx_0012_STJU.l43:
    push ax                          ; 0x35ea
    push word [bp + 0x14]            ; 0x35eb
    call thunk_34                    ; 0x35ee
    add sp, byte 8                   ; 0x35f1
@..api_idx_0012_STJU.l44:
    jmp short @..api_idx_0012_STJU.l46 ; 0x35f4
loc_MNIM:
    jmp short @..api_idx_0012_STJU.l46 ; 0x35f6
loc_TORJ:
    jmp short @..api_idx_0012_STJU.l46 ; 0x35f8
jumptable_35fa:
    dw loc_TORJ - IMAGE_BASE + __zres_end      ; 0x35fa
    dw loc_GMQM - IMAGE_BASE + __zres_end      ; 0x35fc
    dw loc_NQIP - IMAGE_BASE + __zres_end      ; 0x35fe
    dw loc_NVUT - IMAGE_BASE + __zres_end      ; 0x3600
    dw loc_MNIM - IMAGE_BASE + __zres_end      ; 0x3602
@..api_idx_0012_STJU.l45:
    cmp ax, strict word 5            ; 0x3604
    jae short @..api_idx_0012_STJU.l46 ; 0x3607
    xchg bx, ax                      ; 0x3609
    shl bx, 1                        ; 0x360a
    jmp [cs:bx + jumptable_35fa - IMAGE_BASE + __zres_end] ; 0x360c
@..api_idx_0012_STJU.l46:
    cmp word [bp - 0x0012], byte 0   ; 0x3611
    jne short @..api_idx_0012_STJU.l47 ; 0x3615
    jmp near @..api_idx_0012_STJU.l60 ; 0x3617
@..api_idx_0012_STJU.l47:
    mov ax, 0xa                      ; 0x361a
    imul word [bp + 0x4]             ; 0x361d
    mov cx, word [bp + 0x6]          ; 0x3620
    shl cx, 1                        ; 0x3623
    add ax, cx                       ; 0x3625
    mov bx, ax                       ; 0x3627
    cmp word [bx - 0x6df0], byte 0   ; 0x3629
    jne short @..api_idx_0012_STJU.l48 ; 0x362e
    cmp word [bx - 0x6d72], byte 0   ; 0x3630
    jne short @..api_idx_0012_STJU.l48 ; 0x3635
    jmp near @..api_idx_0012_STJU.l60 ; 0x3637
@..api_idx_0012_STJU.l48:
    cmp word [bp + 0x6], byte 2      ; 0x363a
    jne short @..api_idx_0012_STJU.l49 ; 0x363e
    mov ax, word [bp + 0x24]         ; 0x3640
    add ax, word [bp + 0x4]          ; 0x3643
    push ax                          ; 0x3646
    call loc_UMHI_193b               ; 0x3647
    pop cx                           ; 0x364a
    push ax                          ; 0x364b
    mov ax, 2                        ; 0x364c
    push ax                          ; 0x364f
    mov ax, word [bp + 0x26]         ; 0x3650
    add ax, word [bp + 0x4]          ; 0x3653
    push ax                          ; 0x3656
    mov ax, word [bp + 0x24]         ; 0x3657
    add ax, word [bp + 0x4]          ; 0x365a
    push ax                          ; 0x365d
    call loc_LPLI_194f               ; 0x365e
    add sp, byte 4                   ; 0x3661
    push ax                          ; 0x3664
    mov ax, 3                        ; 0x3665
    push ax                          ; 0x3668
    call thunk_34                    ; 0x3669
    add sp, byte 8                   ; 0x366c
    jmp short @..api_idx_0012_STJU.l53 ; 0x366f
@..api_idx_0012_STJU.l49:
    cmp word [bp + 0x4], byte 0      ; 0x3671
    jle short @..api_idx_0012_STJU.l53 ; 0x3675
    mov ax, 0xffff                   ; 0x3677
    cmp word [bp + 0x6], byte 3      ; 0x367a
    jne short @..api_idx_0012_STJU.l50 ; 0x367e
    mov ax, word [bp + 0x2e]         ; 0x3680
    add ax, word [bp + 0x4]          ; 0x3683
@..api_idx_0012_STJU.l50:
    push ax                          ; 0x3686
    mov ax, 2                        ; 0x3687
    push ax                          ; 0x368a
    cmp word [bp + 0x6], byte 3      ; 0x368b
    jne short @..api_idx_0012_STJU.l51 ; 0x368f
    mov ax, word [bp + 0x2e]         ; 0x3691
    add ax, word [bp + 0x4]          ; 0x3694
    jmp short @..api_idx_0012_STJU.l52 ; 0x3697
@..api_idx_0012_STJU.l51:
    mov ax, word [bp + 0x2c]         ; 0x3699
    add ax, word [bp + 0x4]          ; 0x369c
@..api_idx_0012_STJU.l52:
    push ax                          ; 0x369f
    mov ax, 3                        ; 0x36a0
    push ax                          ; 0x36a3
    call thunk_34                    ; 0x36a4
    add sp, byte 8                   ; 0x36a7
@..api_idx_0012_STJU.l53:
    mov ax, 0xa                      ; 0x36aa
    imul word [bp + 0x4]             ; 0x36ad
    mov cx, word [bp + 0x6]          ; 0x36b0
    shl cx, 1                        ; 0x36b3
    add ax, cx                       ; 0x36b5
    mov bx, ax                       ; 0x36b7
    cmp word [bx - 0x6df0], byte 0   ; 0x36b9
    jne short @..api_idx_0012_STJU.l54 ; 0x36be
    jmp near @..api_idx_0012_STJU.l60 ; 0x36c0
@..api_idx_0012_STJU.l54:
    mov cx, word [bx - 0x6df0]       ; 0x36c3
    dec cx                           ; 0x36c7
    mov ax, word [bss_82ee]          ; 0x36c8
    sub ax, cx                       ; 0x36cb
    add ax, strict word 6            ; 0x36cd
    mov cx, 4                        ; 0x36d0
    cwd                              ; 0x36d3
    idiv cx                          ; 0x36d4
    mov word [bp - 0x0002], dx       ; 0x36d6
    mov word [bp - 0x0004], 0        ; 0x36d9
    mov ax, dx                       ; 0x36de
    mov cx, 2                        ; 0x36e0
    cwd                              ; 0x36e3
    idiv cx                          ; 0x36e4
    mov ax, dx                       ; 0x36e6
    test ax, ax                      ; 0x36e8
    jne short @..api_idx_0012_STJU.l55 ; 0x36ea
    cmp word [bp + 0x4], byte 0      ; 0x36ec
    jg short @..api_idx_0012_STJU.l56 ; 0x36f0
@..api_idx_0012_STJU.l55:
    cmp word [bp + 0x6], byte 2      ; 0x36f2
    jne short @..api_idx_0012_STJU.l57 ; 0x36f6
@..api_idx_0012_STJU.l56:
    mov cx, word [bp + 0x4]          ; 0x36f8
    shl cx, 1                        ; 0x36fb
    shl cx, 1                        ; 0x36fd
    shl cx, 1                        ; 0x36ff
    add ax, cx                       ; 0x3701
    inc ax                           ; 0x3703
    mov word [bp - 0x0004], ax       ; 0x3704
    mov ax, word [bss_91a4]          ; 0x3707
    mov word [bp - 0x0006], ax       ; 0x370a
    mov ax, word [bx + 0x260]        ; 0x370d
    mov word [bp - 0x0008], ax       ; 0x3711
    jmp short @..api_idx_0012_STJU.l59 ; 0x3714
@..api_idx_0012_STJU.l57:
    cmp word [bp + 0x4], byte 0      ; 0x3716
    jle short @..api_idx_0012_STJU.l59 ; 0x371a
    mov ax, word [bp + 0x4]          ; 0x371c
    add ax, strict word 0x20         ; 0x371f
    mov word [bp - 0x0004], ax       ; 0x3722
    mov ax, 0                        ; 0x3725
    cmp word [bp + 0x6], byte 3      ; 0x3728
    jne short @..api_idx_0012_STJU.l58 ; 0x372c
    mov ax, 1                        ; 0x372e
@..api_idx_0012_STJU.l58:
    mov word [bp - 0x0006], ax       ; 0x3731
    mov word [bp - 0x0008], 0        ; 0x3734
@..api_idx_0012_STJU.l59:
    cmp word [bp - 0x0004], byte 0   ; 0x3739
    je short @..api_idx_0012_STJU.l60 ; 0x373d
    mov ax, 0                        ; 0x373f
    push ax                          ; 0x3742
    push ax                          ; 0x3743
    push word [bp - 0x0006]          ; 0x3744
    push ax                          ; 0x3747
    push word [bp + 0x4]             ; 0x3748
    mov ax, 0xf8                     ; 0x374b
    push ax                          ; 0x374e
    mov ax, 0x48                     ; 0x374f
    push ax                          ; 0x3752
    mov ax, 0                        ; 0x3753
    push ax                          ; 0x3756
    push ax                          ; 0x3757
    push ax                          ; 0x3758
    push word [bp - 0x0004]          ; 0x3759
    push ax                          ; 0x375c
    push word [bp - 0x0008]          ; 0x375d
    mov ax, 4                        ; 0x3760
    push ax                          ; 0x3763
    call api_idx_0004_RTNM           ; 0x3764
    add sp, byte 0x1c                ; 0x3767
@..api_idx_0012_STJU.l60:
    cmp word [bp + 0x4], byte 4      ; 0x376a
    jl short @..api_idx_0012_STJU.l61 ; 0x376e
    jmp near @..api_idx_0012_STJU.l82 ; 0x3770
@..api_idx_0012_STJU.l61:
    mov ax, 5                        ; 0x3773
    imul word [bp + 0x4]             ; 0x3776
    add ax, word [bp + 0x6]          ; 0x3779
    mov bx, ax                       ; 0x377c
    cmp byte [bx - 0x6d8c], 3        ; 0x377e
    je short @..api_idx_0012_STJU.l62 ; 0x3783
    jmp near @..api_idx_0012_STJU.l68 ; 0x3785
@..api_idx_0012_STJU.l62:
    mov ax, word [bp + 0x4]          ; 0x3788
    cmp ax, strict word 0            ; 0x378b
    jg short @..api_idx_0012_STJU.l63 ; 0x378e
    mov ax, word [bp + 0x6]          ; 0x3790
    cmp ax, strict word 2            ; 0x3793
    je short @..api_idx_0012_STJU.l63 ; 0x3796
    jmp near @..api_idx_0012_STJU.l68 ; 0x3798
@..api_idx_0012_STJU.l63:
    cmp word [bp + 0x4], byte 0      ; 0x379b
    jne short @..api_idx_0012_STJU.l64 ; 0x379f
    mov ax, word [bp + 0x6]          ; 0x37a1
    cmp ax, strict word 2            ; 0x37a4
    jne short @..api_idx_0012_STJU.l64 ; 0x37a7
    cmp word [bss_8f22], byte 0      ; 0x37a9
    je short @..api_idx_0012_STJU.l64 ; 0x37ae
    mov word [bss_8f20], 0xffff      ; 0x37b0
@..api_idx_0012_STJU.l64:
    cmp word [bp + 0x4], byte 0      ; 0x37b6
    jne short @..api_idx_0012_STJU.l65 ; 0x37ba
    mov ax, word [bp + 0x6]          ; 0x37bc
    cmp ax, strict word 2            ; 0x37bf
    jne short @..api_idx_0012_STJU.l65 ; 0x37c2
    mov ax, 2                        ; 0x37c4
    jmp short @..api_idx_0012_STJU.l66 ; 0x37c7
@..api_idx_0012_STJU.l65:
    mov ax, 1                        ; 0x37c9
@..api_idx_0012_STJU.l66:
    mov word [bp - 0x0004], ax       ; 0x37cc
    mov ax, word [bp + 0x4]          ; 0x37cf
    cmp word [bp - 0x0004], byte 2   ; 0x37d2
    je short @..api_idx_0012_STJU.l67 ; 0x37d6
    dec ax                           ; 0x37d8
@..api_idx_0012_STJU.l67:
    mov word [bp - 0x0008], ax       ; 0x37d9
    mov ax, 1                        ; 0x37dc
    push ax                          ; 0x37df
    push ax                          ; 0x37e0
    mov ax, 0                        ; 0x37e1
    push ax                          ; 0x37e4
    mov ax, word [bp - 0x0008]       ; 0x37e5
    shl ax, 1                        ; 0x37e8
    mov bx, ax                       ; 0x37ea
    push word [bx + 0x576]           ; 0x37ec
    push word [bp + 0x4]             ; 0x37f0
    mov ax, 0xf8                     ; 0x37f3
    push ax                          ; 0x37f6
    mov ax, 0x48                     ; 0x37f7
    push ax                          ; 0x37fa
    mov ax, 0                        ; 0x37fb
    push ax                          ; 0x37fe
    push ax                          ; 0x37ff
    push ax                          ; 0x3800
    push word [bp - 0x0004]          ; 0x3801
    push word [bx + 0x3dc]           ; 0x3804
    mov ax, 0xa                      ; 0x3808
    imul word [bp + 0x4]             ; 0x380b
    mov cx, word [bp + 0x6]          ; 0x380e
    shl cx, 1                        ; 0x3811
    add ax, cx                       ; 0x3813
    mov bx, ax                       ; 0x3815
    push word [bx + 0x3aa]           ; 0x3817
    mov ax, 0xc                      ; 0x381b
    push ax                          ; 0x381e
    call api_idx_0004_RTNM           ; 0x381f
    add sp, byte 0x1c                ; 0x3822
@..api_idx_0012_STJU.l68:
    mov ax, 5                        ; 0x3825
    imul word [bp + 0x4]             ; 0x3828
    add ax, word [bp + 0x6]          ; 0x382b
    mov bx, ax                       ; 0x382e
    cmp byte [bx - 0x6d8c], 1        ; 0x3830
    je short @..api_idx_0012_STJU.l69 ; 0x3835
    cmp byte [bx - 0x6d8c], 2        ; 0x3837
    jne short @..api_idx_0012_STJU.l71 ; 0x383c
@..api_idx_0012_STJU.l69:
    mov ax, word [bp + 0x4]          ; 0x383e
    cmp ax, strict word 0            ; 0x3841
    jg short @..api_idx_0012_STJU.l70 ; 0x3844
    mov ax, word [bp + 0x6]          ; 0x3846
    cmp ax, strict word 2            ; 0x3849
    jne short @..api_idx_0012_STJU.l71 ; 0x384c
@..api_idx_0012_STJU.l70:
    mov ax, 1                        ; 0x384e
    push ax                          ; 0x3851
    push ax                          ; 0x3852
    mov ax, 0                        ; 0x3853
    push ax                          ; 0x3856
    mov ax, word [bp + 0x4]          ; 0x3857
    shl ax, 1                        ; 0x385a
    mov bx, ax                       ; 0x385c
    push word [bx + 0x576]           ; 0x385e
    push word [bp + 0x4]             ; 0x3862
    mov ax, 0xf8                     ; 0x3865
    push ax                          ; 0x3868
    mov ax, 0x48                     ; 0x3869
    push ax                          ; 0x386c
    mov ax, 0                        ; 0x386d
    push ax                          ; 0x3870
    push ax                          ; 0x3871
    push ax                          ; 0x3872
    mov ax, 5                        ; 0x3873
    imul word [bp + 0x4]             ; 0x3876
    add ax, word [bp + 0x6]          ; 0x3879
    mov bx, ax                       ; 0x387c
    mov al, byte [bx - 0x6d8c]       ; 0x387e
    sub ah, ah                       ; 0x3882
    push ax                          ; 0x3884
    mov ax, word [bp + 0x4]          ; 0x3885
    shl ax, 1                        ; 0x3888
    mov bx, ax                       ; 0x388a
    push word [bx + 0x3dc]           ; 0x388c
    mov ax, 0xa                      ; 0x3890
    imul word [bp + 0x4]             ; 0x3893
    mov cx, word [bp + 0x6]          ; 0x3896
    shl cx, 1                        ; 0x3899
    add ax, cx                       ; 0x389b
    mov bx, ax                       ; 0x389d
    push word [bx + 0x3aa]           ; 0x389f
    mov ax, 0xb                      ; 0x38a3
    push ax                          ; 0x38a6
    call api_idx_0004_RTNM           ; 0x38a7
    add sp, byte 0x1c                ; 0x38aa
@..api_idx_0012_STJU.l71:
    mov ax, 5                        ; 0x38ad
    imul word [bp + 0x4]             ; 0x38b0
    add ax, word [bp + 0x6]          ; 0x38b3
    mov bx, ax                       ; 0x38b6
    cmp byte [bx - 0x6e09], 0        ; 0x38b8
    jne short @..api_idx_0012_STJU.l72 ; 0x38bd
    jmp near @..api_idx_0012_STJU.l82 ; 0x38bf
@..api_idx_0012_STJU.l72:
    cmp word [bp + 0x4], byte 0      ; 0x38c2
    jne short @..api_idx_0012_STJU.l73 ; 0x38c6
    mov ax, word [bp + 0x6]          ; 0x38c8
    cmp ax, strict word 2            ; 0x38cb
    jne short @..api_idx_0012_STJU.l73 ; 0x38ce
    cmp word [bss_8f22], byte 0      ; 0x38d0
    je short @..api_idx_0012_STJU.l73 ; 0x38d5
    mov al, byte [bx - 0x6e09]       ; 0x38d7
    sub ah, ah                       ; 0x38db
    mov word [bss_8f20], ax          ; 0x38dd
    jmp near @..api_idx_0012_STJU.l82 ; 0x38e0
@..api_idx_0012_STJU.l73:
    mov ax, word [bp + 0x4]          ; 0x38e3
    cmp ax, strict word 0            ; 0x38e6
    jg short @..api_idx_0012_STJU.l74 ; 0x38e9
    mov ax, word [bp + 0x6]          ; 0x38eb
    cmp ax, strict word 2            ; 0x38ee
    je short @..api_idx_0012_STJU.l74 ; 0x38f1
    jmp near @..api_idx_0012_STJU.l82 ; 0x38f3
@..api_idx_0012_STJU.l74:
    mov al, byte [bx - 0x6e09]       ; 0x38f6
    sub ah, ah                       ; 0x38fa
    mov cx, ax                       ; 0x38fc
    dec ax                           ; 0x38fe
    mov cx, ax                       ; 0x38ff
    mov ax, word [bss_82ee]          ; 0x3901
    sub ax, cx                       ; 0x3904
    add ax, strict word 6            ; 0x3906
    mov cx, 4                        ; 0x3909
    cwd                              ; 0x390c
    idiv cx                          ; 0x390d
    mov word [bp - 0x0002], dx       ; 0x390f
    mov ax, dx                       ; 0x3912
    jmp near @..api_idx_0012_STJU.l79 ; 0x3914
@..api_idx_0012_STJU.l75:
    mov ax, 1                        ; 0x3917
    push ax                          ; 0x391a
    push ax                          ; 0x391b
    mov ax, 0                        ; 0x391c
    push ax                          ; 0x391f
    mov ax, word [bp + 0x4]          ; 0x3920
    shl ax, 1                        ; 0x3923
    mov bx, ax                       ; 0x3925
    push word [bx + 0x576]           ; 0x3927
    push word [bp + 0x4]             ; 0x392b
    mov ax, 0xf8                     ; 0x392e
    push ax                          ; 0x3931
    mov ax, 0x48                     ; 0x3932
    push ax                          ; 0x3935
    mov ax, 0                        ; 0x3936
    push ax                          ; 0x3939
    mov ax, 5                        ; 0x393a
    cmp word [bp - 0x0002], byte 0   ; 0x393d
    jne short @..api_idx_0012_STJU.l76 ; 0x3941
    mov ax, 4                        ; 0x3943
@..api_idx_0012_STJU.l76:
    push ax                          ; 0x3946
    mov ax, 2                        ; 0x3947
    push ax                          ; 0x394a
    mov ax, 1                        ; 0x394b
    push ax                          ; 0x394e
    push word [bx + 0x3dc]           ; 0x394f
    mov ax, 0xa                      ; 0x3953
    imul word [bp + 0x4]             ; 0x3956
    mov cx, word [bp + 0x6]          ; 0x3959
    shl cx, 1                        ; 0x395c
    add ax, cx                       ; 0x395e
    mov bx, ax                       ; 0x3960
    push word [bx + 0x3aa]           ; 0x3962
    mov ax, 3                        ; 0x3966
    push ax                          ; 0x3969
    call api_idx_0004_RTNM           ; 0x396a
    add sp, byte 0x1c                ; 0x396d
    jmp short @..api_idx_0012_STJU.l82 ; 0x3970
@..api_idx_0012_STJU.l77:
    mov ax, 1                        ; 0x3972
    push ax                          ; 0x3975
    push ax                          ; 0x3976
    mov ax, 0                        ; 0x3977
    cmp word [bp - 0x0002], byte 3   ; 0x397a
    jne short @..api_idx_0012_STJU.l78 ; 0x397e
    mov ax, 1                        ; 0x3980
@..api_idx_0012_STJU.l78:
    push ax                          ; 0x3983
    mov ax, word [bp + 0x4]          ; 0x3984
    shl ax, 1                        ; 0x3987
    mov bx, ax                       ; 0x3989
    push word [bx + 0x576]           ; 0x398b
    push word [bp + 0x4]             ; 0x398f
    mov ax, 0xf8                     ; 0x3992
    push ax                          ; 0x3995
    mov ax, 0x48                     ; 0x3996
    push ax                          ; 0x3999
    mov ax, 0                        ; 0x399a
    push ax                          ; 0x399d
    push ax                          ; 0x399e
    push ax                          ; 0x399f
    mov ax, 3                        ; 0x39a0
    push ax                          ; 0x39a3
    push word [bx + 0x3dc]           ; 0x39a4
    mov ax, 0xa                      ; 0x39a8
    imul word [bp + 0x4]             ; 0x39ab
    mov cx, word [bp + 0x6]          ; 0x39ae
    shl cx, 1                        ; 0x39b1
    add ax, cx                       ; 0x39b3
    mov bx, ax                       ; 0x39b5
    push word [bx + 0x3aa]           ; 0x39b7
    mov ax, 3                        ; 0x39bb
    push ax                          ; 0x39be
    call api_idx_0004_RTNM           ; 0x39bf
    add sp, byte 0x1c                ; 0x39c2
    jmp short @..api_idx_0012_STJU.l82 ; 0x39c5
@..api_idx_0012_STJU.l79:
    cmp ax, strict word 0            ; 0x39c7
    jne short @..api_idx_0012_STJU.l80 ; 0x39ca
    jmp near @..api_idx_0012_STJU.l75 ; 0x39cc
@..api_idx_0012_STJU.l80:
    cmp ax, strict word 1            ; 0x39cf
    je short @..api_idx_0012_STJU.l77 ; 0x39d2
    cmp ax, strict word 2            ; 0x39d4
    jne short @..api_idx_0012_STJU.l81 ; 0x39d7
    jmp near @..api_idx_0012_STJU.l75 ; 0x39d9
@..api_idx_0012_STJU.l81:
    cmp ax, strict word 3            ; 0x39dc
    je short @..api_idx_0012_STJU.l77 ; 0x39df
@..api_idx_0012_STJU.l82:
    ret                              ; 0x39e1
