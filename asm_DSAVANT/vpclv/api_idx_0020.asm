api_idx_0020:
    mov ax, 0xffe0                   ; 0x333c
    call ds_aztec_csav               ; 0x333f
    cmp word [bp + 0x4], byte 0      ; 0x3342
    je short @..api_idx_0020.l1      ; 0x3346
    jmp near @..api_idx_0020.l2      ; 0x3348
@..api_idx_0020.l1:
    lea ax, word [bp - 0x000c]       ; 0x334b
    push ax                          ; 0x334e
    push word [bp + 0xe]             ; 0x334f
    call ds_app_mem_0782             ; 0x3352
    add sp, byte 4                   ; 0x3355
    lea ax, word [bp - 0x0016]       ; 0x3358
    push ax                          ; 0x335b
    push word [bp + 0xa]             ; 0x335c
    call ds_app_04c4                 ; 0x335f
    add sp, byte 4                   ; 0x3362
    lea ax, word [bp - 0x0020]       ; 0x3365
    push ax                          ; 0x3368
    push word [bp + 0xc]             ; 0x3369
    call ds_app_04c4                 ; 0x336c
    add sp, byte 4                   ; 0x336f
    lea ax, word [bp - 0x000c]       ; 0x3372
    push ax                          ; 0x3375
    call ds_aztec_strlen             ; 0x3376
    pop cx                           ; 0x3379
    push ax                          ; 0x337a
    lea ax, word [bp - 0x0016]       ; 0x337b
    push ax                          ; 0x337e
    call ds_aztec_strlen             ; 0x337f
    pop cx                           ; 0x3382
    mov cx, ax                       ; 0x3383
    pop ax                           ; 0x3385
    add ax, cx                       ; 0x3386
    push ax                          ; 0x3388
    push word [bp + 0x10]            ; 0x3389
    call ds_aztec_strlen             ; 0x338c
    pop cx                           ; 0x338f
    mov cx, ax                       ; 0x3390
    pop ax                           ; 0x3392
    add ax, cx                       ; 0x3393
    push ax                          ; 0x3395
    lea ax, word [bp - 0x0020]       ; 0x3396
    push ax                          ; 0x3399
    call ds_aztec_strlen             ; 0x339a
    pop cx                           ; 0x339d
    mov cx, ax                       ; 0x339e
    pop ax                           ; 0x33a0
    add ax, cx                       ; 0x33a1
    push ax                          ; 0x33a3
    push word [bp + 0x12]            ; 0x33a4
    call ds_aztec_strlen             ; 0x33a7
    pop cx                           ; 0x33aa
    mov cx, ax                       ; 0x33ab
    pop ax                           ; 0x33ad
    add ax, cx                       ; 0x33ae
    inc ax                           ; 0x33b0
    mov word [bp - 0x0002], ax       ; 0x33b1
    push word [bp + 0x14]            ; 0x33b4
    mov ax, word [bp + 0x8]          ; 0x33b7
    add ax, strict word 4            ; 0x33ba
    push ax                          ; 0x33bd
    mov ax, 6                        ; 0x33be
    imul word [bp - 0x0002]          ; 0x33c1
    add ax, word [bp + 0x6]          ; 0x33c4
    dec ax                           ; 0x33c7
    dec ax                           ; 0x33c8
    push ax                          ; 0x33c9
    push word [bp + 0x8]             ; 0x33ca
    push word [bp + 0x6]             ; 0x33cd
    call ds_loc_3b48                 ; 0x33d0
    add sp, byte 0x0a                ; 0x33d3
    push word [bp + 0x8]             ; 0x33d6
    push word [bp + 0x6]             ; 0x33d9
    call ds_loc_3a50                 ; 0x33dc
    add sp, byte 4                   ; 0x33df
    push word [bp + 0x14]            ; 0x33e2
    push word [bp + 0x16]            ; 0x33e5
    call ds_loc_3a6a                 ; 0x33e8
    add sp, byte 4                   ; 0x33eb
    mov ax, 0                        ; 0x33ee
    push ax                          ; 0x33f1
    lea ax, word [bp - 0x000c]       ; 0x33f2
    push ax                          ; 0x33f5
    call ds_string_loc_3a95          ; 0x33f6
    add sp, byte 4                   ; 0x33f9
    mov ax, 0                        ; 0x33fc
    push ax                          ; 0x33ff
    mov ax, 0x20                     ; 0x3400
    push ax                          ; 0x3403
    call ds_loc_3a77                 ; 0x3404
    add sp, byte 4                   ; 0x3407
    mov ax, 0                        ; 0x340a
    push ax                          ; 0x340d
    lea ax, word [bp - 0x0016]       ; 0x340e
    push ax                          ; 0x3411
    call ds_string_loc_3a95          ; 0x3412
    add sp, byte 4                   ; 0x3415
    mov ax, 0                        ; 0x3418
    push ax                          ; 0x341b
    push word [bp + 0x10]            ; 0x341c
    call ds_string_loc_3a95          ; 0x341f
    add sp, byte 4                   ; 0x3422
    mov ax, 0                        ; 0x3425
    push ax                          ; 0x3428
    lea ax, word [bp - 0x0020]       ; 0x3429
    push ax                          ; 0x342c
    call ds_string_loc_3a95          ; 0x342d
    add sp, byte 4                   ; 0x3430
    mov ax, 0                        ; 0x3433
    push ax                          ; 0x3436
    push word [bp + 0x12]            ; 0x3437
    call ds_string_loc_3a95          ; 0x343a
    add sp, byte 4                   ; 0x343d
    jmp short @..api_idx_0020.l3     ; 0x3440
@..api_idx_0020.l2:
    lea ax, word [bp - 0x000c]       ; 0x3442
    push ax                          ; 0x3445
    push word [bp + 0xe]             ; 0x3446
    call ds_app_mem_0782             ; 0x3449
    add sp, byte 4                   ; 0x344c
    mov word [bp - 0x0002], 6        ; 0x344f
    push word [bp + 0x14]            ; 0x3454
    mov ax, word [bp + 0x8]          ; 0x3457
    add ax, strict word 4            ; 0x345a
    push ax                          ; 0x345d
    mov ax, 6                        ; 0x345e
    imul word [bp - 0x0002]          ; 0x3461
    add ax, word [bp + 0x6]          ; 0x3464
    dec ax                           ; 0x3467
    dec ax                           ; 0x3468
    push ax                          ; 0x3469
    push word [bp + 0x8]             ; 0x346a
    push word [bp + 0x6]             ; 0x346d
    call ds_loc_3b48                 ; 0x3470
    add sp, byte 0x0a                ; 0x3473
    push word [bp + 0x8]             ; 0x3476
    push word [bp + 0x6]             ; 0x3479
    call ds_loc_3a50                 ; 0x347c
    add sp, byte 4                   ; 0x347f
    push word [bp + 0x14]            ; 0x3482
    push word [bp + 0x16]            ; 0x3485
    call ds_loc_3a6a                 ; 0x3488
    add sp, byte 4                   ; 0x348b
    mov ax, 0                        ; 0x348e
    push ax                          ; 0x3491
    lea ax, word [bp - 0x000c]       ; 0x3492
    push ax                          ; 0x3495
    call ds_string_loc_3a95          ; 0x3496
    add sp, byte 4                   ; 0x3499
    mov ax, 0                        ; 0x349c
    push ax                          ; 0x349f
    mov ax, 3                        ; 0x34a0
    push ax                          ; 0x34a3
    push word [bp + 0xa]             ; 0x34a4
    call ds_app_052e                 ; 0x34a7
    add sp, byte 6                   ; 0x34aa
@..api_idx_0020.l3:
    mov ax, word [bp + 0x8]          ; 0x34ad
    add ax, strict word 4            ; 0x34b0
    push ax                          ; 0x34b3
    mov ax, 6                        ; 0x34b4
    imul word [bp - 0x0002]          ; 0x34b7
    add ax, word [bp + 0x6]          ; 0x34ba
    dec ax                           ; 0x34bd
    dec ax                           ; 0x34be
    push ax                          ; 0x34bf
    push word [bp + 0x8]             ; 0x34c0
    push word [bp + 0x6]             ; 0x34c3
    call ds_loc_3b21                 ; 0x34c6
    add sp, byte 8                   ; 0x34c9
    ret                              ; 0x34cc
