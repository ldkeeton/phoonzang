; auto-generated
api_idx_0050:
    mov ax, 0xffb0                   ; 0x3069
    call aztec_csav                  ; 0x306c
    mov word [bp - 0x0002], 0        ; 0x306f
@..api_idx_0050.l1:
    mov ax, word [bp - 0x0002]       ; 0x3074
    shl ax, 1                        ; 0x3077
    mov bx, ax                       ; 0x3079
    mov ax, word [bx - 0x7cf2]       ; 0x307b
    add bx, bp                       ; 0x307f
    mov word [bx - 0x0050], ax       ; 0x3081
    mov ax, word [bp - 0x0002]       ; 0x3084
    shl ax, 1                        ; 0x3087
    mov bx, ax                       ; 0x3089
    mov word [bx - 0x7cf2], 0        ; 0x308b
    inc word [bp - 0x0002]           ; 0x3091
    mov ax, word [bp - 0x0002]       ; 0x3094
    cmp ax, strict word 6            ; 0x3097
    jl short @..api_idx_0050.l1      ; 0x309a
    mov word [bss_904e], 0xffff      ; 0x309c
    mov word [bp - 0x0004], 0x32     ; 0x30a2
    mov word [bp - 0x0006], 0x73     ; 0x30a7
    mov word [bp - 0x0008], 0x10d    ; 0x30ac
    mov word [bp - 0x000a], 0xc5     ; 0x30b1
    mov word [bp - 0x000c], 0x95     ; 0x30b6
    mov word [bp - 0x0014], 0x16     ; 0x30bb
    mov ax, 0x92d6                   ; 0x30c0
    push ax                          ; 0x30c3
    mov ax, word [bp - 0x000a]       ; 0x30c4
    inc ax                           ; 0x30c7
    push ax                          ; 0x30c8
    mov ax, word [bp - 0x0008]       ; 0x30c9
    inc ax                           ; 0x30cc
    push ax                          ; 0x30cd
    mov ax, word [bp - 0x0006]       ; 0x30ce
    dec ax                           ; 0x30d1
    push ax                          ; 0x30d2
    mov ax, word [bp - 0x0004]       ; 0x30d3
    dec ax                           ; 0x30d6
    push ax                          ; 0x30d7
    call ds_app_file_14ca            ; 0x30d8
    add sp, byte 0x0a                ; 0x30db
    mov word [bp - 0x003a], ax       ; 0x30de
    push word [bp - 0x000a]          ; 0x30e1
    push word [bp - 0x0008]          ; 0x30e4
    push word [bp - 0x0006]          ; 0x30e7
    push word [bp - 0x0004]          ; 0x30ea
    call ds_app_0ee1                 ; 0x30ed
    add sp, byte 8                   ; 0x30f0
    push word [bp - 0x000a]          ; 0x30f3
    push word [bp - 0x0008]          ; 0x30f6
    push word [bp - 0x0006]          ; 0x30f9
    mov ax, 0x95                     ; 0x30fc
    push ax                          ; 0x30ff
    call ds_app_0ee1                 ; 0x3100
    add sp, byte 8                   ; 0x3103
    call api_idx_000a_2              ; 0x3106
    push word [bp + 0x4]             ; 0x3109
    call api_idx_000c_2              ; 0x310c
    pop cx                           ; 0x310f
    mov ax, 1                        ; 0x3110
    push ax                          ; 0x3113
    mov ax, 0x73                     ; 0x3114
    push ax                          ; 0x3117
    mov ax, 0x32                     ; 0x3118
    push ax                          ; 0x311b
    call api_idx_000c                ; 0x311c
    add sp, byte 6                   ; 0x311f
    lea ax, word [bp - 0x0038]       ; 0x3122
    push ax                          ; 0x3125
    push word [bp + 0x6]             ; 0x3126
    call ds_app_mem_0782             ; 0x3129
    add sp, byte 4                   ; 0x312c
    lea ax, word [bp - 0x0038]       ; 0x312f
    push ax                          ; 0x3132
    push word [bp + 0x8]             ; 0x3133
    mov ax, 1                        ; 0x3136
    push ax                          ; 0x3139
    mov ax, 8                        ; 0x313a
    push ax                          ; 0x313d
    mov ax, word [bp - 0x0006]       ; 0x313e
    add ax, strict word 6            ; 0x3141
    push ax                          ; 0x3144
    mov ax, word [bp - 0x000c]       ; 0x3145
    add ax, strict word 6            ; 0x3148
    push ax                          ; 0x314b
    call ds_app_string_1308          ; 0x314c
    add sp, byte 0x0c                ; 0x314f
    lea ax, word [bp - 0x0038]       ; 0x3152
    push ax                          ; 0x3155
    mov ax, word [bp + 0x6]          ; 0x3156
    inc ax                           ; 0x3159
    push ax                          ; 0x315a
    call ds_app_mem_0782             ; 0x315b
    add sp, byte 4                   ; 0x315e
    lea ax, word [bp - 0x0038]       ; 0x3161
    push ax                          ; 0x3164
    mov ax, 1                        ; 0x3165
    push ax                          ; 0x3168
    push ax                          ; 0x3169
    mov ax, 8                        ; 0x316a
    push ax                          ; 0x316d
    mov ax, word [bp - 0x0006]       ; 0x316e
    add ax, strict word 6            ; 0x3171
    push ax                          ; 0x3174
    mov ax, word [bp - 0x000c]       ; 0x3175
    add ax, strict word 0x42         ; 0x3178
    push ax                          ; 0x317b
    call ds_app_string_1308          ; 0x317c
    add sp, byte 0x0c                ; 0x317f
    mov ax, word [bp - 0x0006]       ; 0x3182
    add ax, strict word 0x14         ; 0x3185
    push ax                          ; 0x3188
    mov ax, word [bp - 0x000c]       ; 0x3189
    add ax, strict word 0x48         ; 0x318c
    push ax                          ; 0x318f
    call thunk                       ; 0x3190
    add sp, byte 4                   ; 0x3193
    mov ax, 0                        ; 0x3196
    push ax                          ; 0x3199
    mov ax, 0xcd                     ; 0x319a
    push ax                          ; 0x319d
    call thunk_3                     ; 0x319e
    add sp, byte 4                   ; 0x31a1
    mov ax, 2                        ; 0x31a4
    push ax                          ; 0x31a7
    mov ax, 0xa                      ; 0x31a8
    push ax                          ; 0x31ab
    call ds_loc_3a77                 ; 0x31ac
    add sp, byte 4                   ; 0x31af
    mov word [bp - 0x003c], 0xffff   ; 0x31b2
    mov word [bp - 0x003e], 0        ; 0x31b7
    mov word [bp - 0x0040], 0        ; 0x31bc
    mov word [bp - 0x0002], 0        ; 0x31c1
@..api_idx_0050.l2:
    mov ax, 0                        ; 0x31c6
    mov cx, word [bp - 0x0002]       ; 0x31c9
    cmp cx, word [bp - 0x003e]       ; 0x31cc
    jne short @..api_idx_0050.l3     ; 0x31cf
    mov ax, 1                        ; 0x31d1
@..api_idx_0050.l3:
    push ax                          ; 0x31d4
    push cx                          ; 0x31d5
    mov ax, word [bp - 0x0006]       ; 0x31d6
    add ax, strict word 0x14         ; 0x31d9
    push ax                          ; 0x31dc
    mov ax, word [bp - 0x000c]       ; 0x31dd
    add ax, strict word 0xc          ; 0x31e0
    push ax                          ; 0x31e3
    call loc_2e12                    ; 0x31e4
    add sp, byte 8                   ; 0x31e7
    inc word [bp - 0x0002]           ; 0x31ea
    mov ax, word [bp - 0x0002]       ; 0x31ed
    cmp ax, strict word 7            ; 0x31f0
    jl short @..api_idx_0050.l2      ; 0x31f3
    mov word [bp - 0x0042], 0        ; 0x31f5
    mov ax, 0                        ; 0x31fa
    push ax                          ; 0x31fd
    push ax                          ; 0x31fe
    push word [bp - 0x0042]          ; 0x31ff
    mov ax, word [bp - 0x0006]       ; 0x3202
    add ax, strict word 0x15         ; 0x3205
    push ax                          ; 0x3208
    mov ax, word [bp - 0x000c]       ; 0x3209
    add ax, strict word 0x5e         ; 0x320c
    push ax                          ; 0x320f
    call loc_2e9e                    ; 0x3210
    add sp, byte 0x0a                ; 0x3213
    push word [bp - 0x0042]          ; 0x3216
    push word [bp + 0x4]             ; 0x3219
    call api_idx_0004_5              ; 0x321c
    add sp, byte 4                   ; 0x321f
    mov word [bp - 0x0044], ax       ; 0x3222
    mov ax, 7                        ; 0x3225
    cmp word [bp - 0x0044], byte 7   ; 0x3228
    jge short @..api_idx_0050.l4     ; 0x322c
    mov ax, word [bp - 0x0044]       ; 0x322e
@..api_idx_0050.l4:
    mov word [bp - 0x0024], ax       ; 0x3231
    mov word [bp - 0x0018], 0        ; 0x3234
    mov word [bp - 0x0022], 0xffff   ; 0x3239
    push ax                          ; 0x323e
    push word [bp - 0x0022]          ; 0x323f
    push word [bp - 0x0018]          ; 0x3242
    mov ax, 7                        ; 0x3245
    push ax                          ; 0x3248
    mov ax, 0xf                      ; 0x3249
    push ax                          ; 0x324c
    mov ax, word [bp - 0x0006]       ; 0x324d
    add ax, strict word 0x22         ; 0x3250
    push ax                          ; 0x3253
    mov ax, word [bp - 0x000c]       ; 0x3254
    add ax, strict word 6            ; 0x3257
    push ax                          ; 0x325a
    call ds_app_11de                 ; 0x325b
    add sp, byte 0x0e                ; 0x325e
    mov word [bp - 0x0012], 0        ; 0x3261
    push word [bp - 0x0012]          ; 0x3266
    mov ax, 7                        ; 0x3269
    push ax                          ; 0x326c
    mov ax, 8                        ; 0x326d
    push ax                          ; 0x3270
    mov ax, word [bp - 0x0006]       ; 0x3271
    add ax, strict word 0x22         ; 0x3274
    push ax                          ; 0x3277
    mov ax, word [bp - 0x000c]       ; 0x3278
    add ax, strict word 0x6a         ; 0x327b
    push ax                          ; 0x327e
    call ds_app_121f                 ; 0x327f
    add sp, byte 0x0a                ; 0x3282
    mov ax, 0                        ; 0x3285
    push ax                          ; 0x3288
    push ax                          ; 0x3289
    mov ax, word [bp - 0x0006]       ; 0x328a
    add ax, word [bp - 0x0012]       ; 0x328d
    add ax, strict word 0x2e         ; 0x3290
    push ax                          ; 0x3293
    mov ax, word [bp - 0x000c]       ; 0x3294
    add ax, strict word 0x72         ; 0x3297
    push ax                          ; 0x329a
    mov ax, word [bp - 0x0006]       ; 0x329b
    add ax, word [bp - 0x0012]       ; 0x329e
    add ax, strict word 0x2a         ; 0x32a1
    push ax                          ; 0x32a4
    mov ax, word [bp - 0x000c]       ; 0x32a5
    add ax, strict word 0x6a         ; 0x32a8
    push ax                          ; 0x32ab
    mov ax, 0                        ; 0x32ac
    push ax                          ; 0x32af
    call ds_app_0ced                 ; 0x32b0
    add sp, byte 0x0e                ; 0x32b3
    mov ax, 0                        ; 0x32b6
    push ax                          ; 0x32b9
    mov ax, 9                        ; 0x32ba
    push ax                          ; 0x32bd
    mov ax, word [bp - 0x0006]       ; 0x32be
    add ax, strict word 0x28         ; 0x32c1
    push ax                          ; 0x32c4
    mov ax, word [bp - 0x000c]       ; 0x32c5
    add ax, strict word 0x72         ; 0x32c8
    push ax                          ; 0x32cb
    mov ax, word [bp - 0x0006]       ; 0x32cc
    add ax, strict word 0x22         ; 0x32cf
    push ax                          ; 0x32d2
    mov ax, word [bp - 0x000c]       ; 0x32d3
    add ax, strict word 0x6a         ; 0x32d6
    push ax                          ; 0x32d9
    mov ax, 1                        ; 0x32da
    push ax                          ; 0x32dd
    call ds_app_0ced                 ; 0x32de
    add sp, byte 0x0e                ; 0x32e1
    mov ax, 0                        ; 0x32e4
    push ax                          ; 0x32e7
    mov ax, 0xb                      ; 0x32e8
    push ax                          ; 0x32eb
    mov ax, word [bp - 0x0006]       ; 0x32ec
    add ax, strict word 0x4c         ; 0x32ef
    push ax                          ; 0x32f2
    mov ax, word [bp - 0x000c]       ; 0x32f3
    add ax, strict word 0x72         ; 0x32f6
    push ax                          ; 0x32f9
    mov ax, word [bp - 0x0006]       ; 0x32fa
    add ax, strict word 0x46         ; 0x32fd
    push ax                          ; 0x3300
    mov ax, word [bp - 0x000c]       ; 0x3301
    add ax, strict word 0x6a         ; 0x3304
    push ax                          ; 0x3307
    mov ax, 2                        ; 0x3308
    push ax                          ; 0x330b
    call ds_app_0ced                 ; 0x330c
    add sp, byte 0x0e                ; 0x330f
    mov ax, 0                        ; 0x3312
    push ax                          ; 0x3315
    mov ax, 0xd                      ; 0x3316
    push ax                          ; 0x3319
    mov ax, word [bp - 0x0006]       ; 0x331a
    add ax, strict word 0xe          ; 0x331d
    push ax                          ; 0x3320
    mov ax, word [bp - 0x000c]       ; 0x3321
    add ax, strict word 0x36         ; 0x3324
    push ax                          ; 0x3327
    mov ax, word [bp - 0x0006]       ; 0x3328
    add ax, strict word 6            ; 0x332b
    push ax                          ; 0x332e
    mov ax, word [bp - 0x000c]       ; 0x332f
    add ax, strict word 6            ; 0x3332
    push ax                          ; 0x3335
    mov ax, 3                        ; 0x3336
    push ax                          ; 0x3339
    call ds_app_0ced                 ; 0x333a
    add sp, byte 0x0e                ; 0x333d
    mov ax, 0                        ; 0x3340
    push ax                          ; 0x3343
    mov ax, 0x1b                     ; 0x3344
    push ax                          ; 0x3347
    mov ax, word [bp - 0x0006]       ; 0x3348
    add ax, strict word 0xe          ; 0x334b
    push ax                          ; 0x334e
    mov ax, word [bp - 0x000c]       ; 0x334f
    add ax, strict word 0x72         ; 0x3352
    push ax                          ; 0x3355
    mov ax, word [bp - 0x0006]       ; 0x3356
    add ax, strict word 6            ; 0x3359
    push ax                          ; 0x335c
    mov ax, word [bp - 0x000c]       ; 0x335d
    add ax, strict word 0x42         ; 0x3360
    push ax                          ; 0x3363
    mov ax, 4                        ; 0x3364
    push ax                          ; 0x3367
    call ds_app_0ced                 ; 0x3368
    add sp, byte 0x0e                ; 0x336b
    mov word [bp - 0x0002], 0        ; 0x336e
@..api_idx_0050.l5:
    mov ax, 0                        ; 0x3373
    push ax                          ; 0x3376
    mov ax, word [bp - 0x0002]       ; 0x3377
    add ax, strict word 0x31         ; 0x337a
    cbw                              ; 0x337d
    push ax                          ; 0x337e
    mov ax, word [bp - 0x0006]       ; 0x337f
    add ax, strict word 0x1b         ; 0x3382
    push ax                          ; 0x3385
    mov ax, 0xa                      ; 0x3386
    imul word [bp - 0x0002]          ; 0x3389
    add ax, word [bp - 0x000c]       ; 0x338c
    add ax, strict word 0x13         ; 0x338f
    push ax                          ; 0x3392
    mov ax, word [bp - 0x0006]       ; 0x3393
    add ax, strict word 0x14         ; 0x3396
    push ax                          ; 0x3399
    mov ax, 0xa                      ; 0x339a
    imul word [bp - 0x0002]          ; 0x339d
    add ax, word [bp - 0x000c]       ; 0x33a0
    add ax, strict word 0xc          ; 0x33a3
    push ax                          ; 0x33a6
    mov ax, word [bp - 0x0002]       ; 0x33a7
    add ax, strict word 5            ; 0x33aa
    push ax                          ; 0x33ad
    call ds_app_0ced                 ; 0x33ae
    add sp, byte 0x0e                ; 0x33b1
    inc word [bp - 0x0002]           ; 0x33b4
    mov ax, word [bp - 0x0002]       ; 0x33b7
    cmp ax, strict word 7            ; 0x33ba
    jl short @..api_idx_0050.l5      ; 0x33bd
    mov ax, 0                        ; 0x33bf
    push ax                          ; 0x33c2
    mov ax, 0x46                     ; 0x33c3
    push ax                          ; 0x33c6
    mov ax, 0x87                     ; 0x33c7
    push ax                          ; 0x33ca
    mov ax, 0x52                     ; 0x33cb
    push ax                          ; 0x33ce
    mov ax, 0x74                     ; 0x33cf
    push ax                          ; 0x33d2
    mov ax, 0x46                     ; 0x33d3
    push ax                          ; 0x33d6
    mov ax, 0xc                      ; 0x33d7
    push ax                          ; 0x33da
    call ds_app_0ced                 ; 0x33db
    add sp, byte 0x0e                ; 0x33de
    mov ax, 0                        ; 0x33e1
    push ax                          ; 0x33e4
    mov ax, 0x57                     ; 0x33e5
    push ax                          ; 0x33e8
    mov ax, 0x9d                     ; 0x33e9
    push ax                          ; 0x33ec
    mov ax, 0x4b                     ; 0x33ed
    push ax                          ; 0x33f0
    mov ax, 0x90                     ; 0x33f1
    push ax                          ; 0x33f4
    mov ax, 0x32                     ; 0x33f5
    push ax                          ; 0x33f8
    mov ax, 0xd                      ; 0x33f9
    push ax                          ; 0x33fc
    call ds_app_0ced                 ; 0x33fd
    add sp, byte 0x0e                ; 0x3400
    mov ax, 0                        ; 0x3403
    push ax                          ; 0x3406
    mov ax, 0x41                     ; 0x3407
    push ax                          ; 0x340a
    mov ax, 0xbb                     ; 0x340b
    push ax                          ; 0x340e
    mov ax, 0x5f                     ; 0x340f
    push ax                          ; 0x3412
    mov ax, 0xa5                     ; 0x3413
    push ax                          ; 0x3416
    mov ax, 0x43                     ; 0x3417
    push ax                          ; 0x341a
    mov ax, 0xe                      ; 0x341b
    push ax                          ; 0x341e
    call ds_app_0ced                 ; 0x341f
    add sp, byte 0x0e                ; 0x3422
    mov ax, 0                        ; 0x3425
    push ax                          ; 0x3428
    mov ax, 0x45                     ; 0x3429
    push ax                          ; 0x342c
    mov ax, 0x89                     ; 0x342d
    push ax                          ; 0x3430
    mov ax, 0x87                     ; 0x3431
    push ax                          ; 0x3434
    mov ax, 0x77                     ; 0x3435
    push ax                          ; 0x3438
    mov ax, 0x6c                     ; 0x3439
    push ax                          ; 0x343c
    mov ax, 0xf                      ; 0x343d
    push ax                          ; 0x3440
    call ds_app_0ced                 ; 0x3441
    add sp, byte 0x0e                ; 0x3444
    mov ax, 0                        ; 0x3447
    push ax                          ; 0x344a
    mov ax, 0x4d                     ; 0x344b
    push ax                          ; 0x344e
    mov ax, 0x9c                     ; 0x344f
    push ax                          ; 0x3452
    mov ax, 0x8e                     ; 0x3453
    push ax                          ; 0x3456
    mov ax, 0x91                     ; 0x3457
    push ax                          ; 0x345a
    mov ax, 0x7f                     ; 0x345b
    push ax                          ; 0x345e
    mov ax, 0x10                     ; 0x345f
    push ax                          ; 0x3462
    call ds_app_0ced                 ; 0x3463
    add sp, byte 0x0e                ; 0x3466
    mov ax, 0                        ; 0x3469
    push ax                          ; 0x346c
    mov ax, 0x44                     ; 0x346d
    push ax                          ; 0x3470
    mov ax, 0xb9                     ; 0x3471
    push ax                          ; 0x3474
    mov ax, 0x81                     ; 0x3475
    push ax                          ; 0x3478
    mov ax, 0xa6                     ; 0x3479
    push ax                          ; 0x347c
    mov ax, 0x71                     ; 0x347d
    push ax                          ; 0x3480
    mov ax, 0x11                     ; 0x3481
    push ax                          ; 0x3484
    call ds_app_0ced                 ; 0x3485
    add sp, byte 0x0e                ; 0x3488
    mov ax, 7                        ; 0x348b
    cmp word [bp - 0x0044], byte 7   ; 0x348e
    jge short @..api_idx_0050.l6     ; 0x3492
    mov ax, word [bp - 0x0044]       ; 0x3494
@..api_idx_0050.l6:
    mov word [bp - 0x0020], ax       ; 0x3497
    mov word [bp - 0x0002], 0        ; 0x349a
@..api_idx_0050.l7:
    mov ax, 0                        ; 0x349f
    push ax                          ; 0x34a2
    push ax                          ; 0x34a3
    mov ax, 6                        ; 0x34a4
    imul word [bp - 0x0002]          ; 0x34a7
    add ax, word [bp - 0x0006]       ; 0x34aa
    add ax, strict word 0x28         ; 0x34ad
    push ax                          ; 0x34b0
    mov ax, word [bp - 0x000c]       ; 0x34b1
    add ax, strict word 0x62         ; 0x34b4
    push ax                          ; 0x34b7
    mov ax, 6                        ; 0x34b8
    imul word [bp - 0x0002]          ; 0x34bb
    add ax, word [bp - 0x0006]       ; 0x34be
    add ax, strict word 0x22         ; 0x34c1
    push ax                          ; 0x34c4
    mov ax, word [bp - 0x000c]       ; 0x34c5
    add ax, strict word 6            ; 0x34c8
    push ax                          ; 0x34cb
    mov ax, word [bp - 0x0002]       ; 0x34cc
    add ax, strict word 0x12         ; 0x34cf
    push ax                          ; 0x34d2
    call ds_app_0ced                 ; 0x34d3
    add sp, byte 0x0e                ; 0x34d6
    inc word [bp - 0x0002]           ; 0x34d9
    mov ax, word [bp - 0x0002]       ; 0x34dc
    cmp ax, strict word 7            ; 0x34df
    jl short @..api_idx_0050.l7      ; 0x34e2
    mov ax, 0                        ; 0x34e4
    push ax                          ; 0x34e7
    push ax                          ; 0x34e8
    push ax                          ; 0x34e9
    push ax                          ; 0x34ea
    push ax                          ; 0x34eb
    mov ax, 0xffff                   ; 0x34ec
    push ax                          ; 0x34ef
    mov ax, 0x19                     ; 0x34f0
    push ax                          ; 0x34f3
    call ds_app_0ced                 ; 0x34f4
    add sp, byte 0x0e                ; 0x34f7
    mov ax, word [bp - 0x000a]       ; 0x34fa
    inc ax                           ; 0x34fd
    push ax                          ; 0x34fe
    mov ax, word [bp - 0x0008]       ; 0x34ff
    inc ax                           ; 0x3502
    push ax                          ; 0x3503
    mov ax, word [bp - 0x0006]       ; 0x3504
    dec ax                           ; 0x3507
    push ax                          ; 0x3508
    mov ax, word [bp - 0x0004]       ; 0x3509
    dec ax                           ; 0x350c
    push ax                          ; 0x350d
    call thunk_4                     ; 0x350e
    add sp, byte 8                   ; 0x3511
    mov word [bss_976c], 7           ; 0x3514
    les bx, word [dseg_0002]         ; 0x351a
    mov ax, word [es:bx]             ; 0x351e
    mov dx, word [es:bx + 0x2]       ; 0x3521
    mov word [bss_908c], dx          ; 0x3525
    mov word [bss_908a], ax          ; 0x3529
    mov word [bp - 0x001c], 1        ; 0x352c
@..api_idx_0050.l8:
    push word [bp - 0x0042]          ; 0x3531
    push word [bp + 0x4]             ; 0x3534
    call loc_2fd8                    ; 0x3537
    add sp, byte 4                   ; 0x353a
    mov ax, 0x59fe                   ; 0x353d
    push ax                          ; 0x3540
    call ds_app_io_0b54              ; 0x3541
    pop cx                           ; 0x3544
    dec ax                           ; 0x3545
    mov word [bp - 0x001a], ax       ; 0x3546
    cmp word [bss_59fc], byte 0      ; 0x3549
    je short @..api_idx_0050.l12     ; 0x354e
    mov ax, word [bp - 0x0022]       ; 0x3550
    cmp ax, word [bp - 0x0018]       ; 0x3553
    jl short @..api_idx_0050.l9      ; 0x3556
    inc word [bp - 0x0022]           ; 0x3558
@..api_idx_0050.l9:
    mov ax, word [bp - 0x0022]       ; 0x355b
    cmp ax, strict word 0xffff       ; 0x355e
    je short @..api_idx_0050.l10     ; 0x3561
    cmp ax, word [bp - 0x0018]       ; 0x3563
    jl short @..api_idx_0050.l10     ; 0x3566
    mov ax, word [bp - 0x0018]       ; 0x3568
    add ax, word [bp - 0x0020]       ; 0x356b
    mov cx, ax                       ; 0x356e
    dec ax                           ; 0x3570
    mov cx, ax                       ; 0x3571
    mov ax, word [bp - 0x0022]       ; 0x3573
    cmp cx, ax                       ; 0x3576
    jge short @..api_idx_0050.l11    ; 0x3578
@..api_idx_0050.l10:
    mov ax, word [bp - 0x0018]       ; 0x357a
    mov word [bp - 0x0022], ax       ; 0x357d
@..api_idx_0050.l11:
    mov word [bss_5b3e], 1           ; 0x3580
    mov ax, word [bp - 0x0022]       ; 0x3586
    sub ax, word [bp - 0x0018]       ; 0x3589
    add ax, strict word 0x12         ; 0x358c
    mov word [bp - 0x001a], ax       ; 0x358f
@..api_idx_0050.l12:
    cmp word [bss_5b3e], byte 1      ; 0x3592
    je short @..api_idx_0050.l13     ; 0x3597
    jmp near @..api_idx_0050.l50     ; 0x3599
@..api_idx_0050.l13:
    mov ax, word [bp - 0x001a]       ; 0x359c
    jmp near @..api_idx_0050.l48     ; 0x359f
jumptable_3cc2_case_0:
    lea ax, word [bp - 0x0010]       ; 0x35a2
    push ax                          ; 0x35a5
    lea ax, word [bp - 0x000e]       ; 0x35a6
    push ax                          ; 0x35a9
    call thunk_38                    ; 0x35aa
    add sp, byte 4                   ; 0x35ad
    mov ax, 4                        ; 0x35b0
    push ax                          ; 0x35b3
    mov ax, 0                        ; 0x35b4
    push ax                          ; 0x35b7
    mov ax, word [bp - 0x0010]       ; 0x35b8
    mov cx, word [bp - 0x0006]       ; 0x35bb
    add cx, word [bp - 0x0012]       ; 0x35be
    add cx, byte 0x2a                ; 0x35c1
    sub ax, cx                       ; 0x35c4
    push ax                          ; 0x35c6
    call ds_app_0a09                 ; 0x35c7
    add sp, byte 6                   ; 0x35ca
    mov word [bp - 0x0016], ax       ; 0x35cd
@..api_idx_0050.l14:
    lea ax, word [bp - 0x0010]       ; 0x35d0
    push ax                          ; 0x35d3
    lea ax, word [bp - 0x000e]       ; 0x35d4
    push ax                          ; 0x35d7
    call thunk_38                    ; 0x35d8
    add sp, byte 4                   ; 0x35db
    mov word [bp - 0x001e], ax       ; 0x35de
    push word [bp - 0x0014]          ; 0x35e1
    mov ax, 0                        ; 0x35e4
    push ax                          ; 0x35e7
    mov ax, word [bp - 0x0010]       ; 0x35e8
    mov cx, word [bp - 0x0006]       ; 0x35eb
    add cx, byte 0x2a                ; 0x35ee
    sub ax, cx                       ; 0x35f1
    sub ax, word [bp - 0x0016]       ; 0x35f3
    push ax                          ; 0x35f6
    call ds_app_0a09                 ; 0x35f7
    add sp, byte 6                   ; 0x35fa
    mov word [bp - 0x0012], ax       ; 0x35fd
    cmp word [bp - 0x0044], byte 7   ; 0x3600
    jle short @..api_idx_0050.l15    ; 0x3604
    mov cx, 0x64                     ; 0x3606
    imul cx                          ; 0x3609
    push ax                          ; 0x360b
    mov ax, word [bp - 0x0014]       ; 0x360c
    imul cx                          ; 0x360f
    add ax, strict word 0x64         ; 0x3611
    mov cx, word [bp - 0x0044]       ; 0x3614
    add cx, byte 0xfa                ; 0x3617
    cwd                              ; 0x361a
    idiv cx                          ; 0x361b
    mov cx, ax                       ; 0x361d
    pop ax                           ; 0x361f
    cwd                              ; 0x3620
    idiv cx                          ; 0x3621
    mov word [bp - 0x0018], ax       ; 0x3623
@..api_idx_0050.l15:
    push word [bp - 0x0024]          ; 0x3626
    push word [bp - 0x0022]          ; 0x3629
    push word [bp - 0x0018]          ; 0x362c
    mov ax, 7                        ; 0x362f
    push ax                          ; 0x3632
    mov ax, 0xf                      ; 0x3633
    push ax                          ; 0x3636
    mov ax, word [bp - 0x0006]       ; 0x3637
    add ax, strict word 0x22         ; 0x363a
    push ax                          ; 0x363d
    mov ax, word [bp - 0x000c]       ; 0x363e
    add ax, strict word 6            ; 0x3641
    push ax                          ; 0x3644
    call ds_app_11de                 ; 0x3645
    add sp, byte 0x0e                ; 0x3648
    push word [bp - 0x0012]          ; 0x364b
    mov ax, 7                        ; 0x364e
    push ax                          ; 0x3651
    mov ax, 8                        ; 0x3652
    push ax                          ; 0x3655
    mov ax, word [bp - 0x0006]       ; 0x3656
    add ax, strict word 0x22         ; 0x3659
    push ax                          ; 0x365c
    mov ax, word [bp - 0x000c]       ; 0x365d
    add ax, strict word 0x6a         ; 0x3660
    push ax                          ; 0x3663
    call ds_app_121f                 ; 0x3664
    add sp, byte 0x0a                ; 0x3667
    mov ax, 0                        ; 0x366a
    push ax                          ; 0x366d
    push ax                          ; 0x366e
    mov ax, word [bp - 0x0006]       ; 0x366f
    add ax, word [bp - 0x0012]       ; 0x3672
    add ax, strict word 0x2e         ; 0x3675
    push ax                          ; 0x3678
    mov ax, word [bp - 0x000c]       ; 0x3679
    add ax, strict word 0x72         ; 0x367c
    push ax                          ; 0x367f
    mov ax, word [bp - 0x0006]       ; 0x3680
    add ax, word [bp - 0x0012]       ; 0x3683
    add ax, strict word 0x2a         ; 0x3686
    push ax                          ; 0x3689
    mov ax, word [bp - 0x000c]       ; 0x368a
    add ax, strict word 0x6a         ; 0x368d
    push ax                          ; 0x3690
    mov ax, 0                        ; 0x3691
    push ax                          ; 0x3694
    call ds_app_0ced                 ; 0x3695
    add sp, byte 0x0e                ; 0x3698
    mov ax, word [bp - 0x0006]       ; 0x369b
    add ax, strict word 0x4c         ; 0x369e
    push ax                          ; 0x36a1
    mov ax, word [bp - 0x000c]       ; 0x36a2
    add ax, strict word 0x72         ; 0x36a5
    push ax                          ; 0x36a8
    mov ax, word [bp - 0x0006]       ; 0x36a9
    add ax, strict word 0x22         ; 0x36ac
    push ax                          ; 0x36af
    mov ax, word [bp - 0x000c]       ; 0x36b0
    add ax, strict word 6            ; 0x36b3
    push ax                          ; 0x36b6
    call thunk_4                     ; 0x36b7
    add sp, byte 8                   ; 0x36ba
    cmp word [bp - 0x001e], byte 0   ; 0x36bd
    je short @..api_idx_0050.l16     ; 0x36c1
    jmp near @..api_idx_0050.l14     ; 0x36c3
@..api_idx_0050.l16:
    jmp near @..api_idx_0050.l50     ; 0x36c6
jumptable_3cc2_case_1:
    cmp word [bp - 0x001a], byte 1   ; 0x36c9
    jne short @..api_idx_0050.l18    ; 0x36cd
    mov ax, 1                        ; 0x36cf
    push ax                          ; 0x36d2
    mov ax, word [bp - 0x0006]       ; 0x36d3
    add ax, strict word 0x28         ; 0x36d6
    push ax                          ; 0x36d9
    mov ax, word [bp - 0x000c]       ; 0x36da
    add ax, strict word 0x72         ; 0x36dd
    push ax                          ; 0x36e0
    mov ax, word [bp - 0x0006]       ; 0x36e1
    add ax, strict word 0x22         ; 0x36e4
    push ax                          ; 0x36e7
    mov ax, word [bp - 0x000c]       ; 0x36e8
    add ax, strict word 0x6a         ; 0x36eb
    push ax                          ; 0x36ee
    call ds_app_10ff                 ; 0x36ef
    add sp, byte 0x0a                ; 0x36f2
    cmp word [bp - 0x0018], byte 0   ; 0x36f5
    jle short @..api_idx_0050.l17    ; 0x36f9
    dec word [bp - 0x0018]           ; 0x36fb
@..api_idx_0050.l17:
    jmp short @..api_idx_0050.l19    ; 0x36fe
@..api_idx_0050.l18:
    mov ax, 1                        ; 0x3700
    push ax                          ; 0x3703
    mov ax, word [bp - 0x0006]       ; 0x3704
    add ax, strict word 0x4c         ; 0x3707
    push ax                          ; 0x370a
    mov ax, word [bp - 0x000c]       ; 0x370b
    add ax, strict word 0x72         ; 0x370e
    push ax                          ; 0x3711
    mov ax, word [bp - 0x0006]       ; 0x3712
    add ax, strict word 0x46         ; 0x3715
    push ax                          ; 0x3718
    mov ax, word [bp - 0x000c]       ; 0x3719
    add ax, strict word 0x6a         ; 0x371c
    push ax                          ; 0x371f
    call ds_app_10ff                 ; 0x3720
    add sp, byte 0x0a                ; 0x3723
    mov ax, word [bp - 0x0044]       ; 0x3726
    add ax, strict word 0xfff9       ; 0x3729
    cmp ax, word [bp - 0x0018]       ; 0x372c
    jle short @..api_idx_0050.l19    ; 0x372f
    inc word [bp - 0x0018]           ; 0x3731
@..api_idx_0050.l19:
    cmp word [bp - 0x0044], byte 7   ; 0x3734
    jle short @..api_idx_0050.l20    ; 0x3738
    push word [bp - 0x0014]          ; 0x373a
    mov ax, 0                        ; 0x373d
    push ax                          ; 0x3740
    mov ax, 0x64                     ; 0x3741
    imul word [bp - 0x0014]          ; 0x3744
    add ax, strict word 0x64         ; 0x3747
    mov cx, word [bp - 0x0044]       ; 0x374a
    add cx, byte 0xf9                ; 0x374d
    cwd                              ; 0x3750
    idiv cx                          ; 0x3751
    imul word [bp - 0x0018]          ; 0x3753
    mov cx, 0x64                     ; 0x3756
    cwd                              ; 0x3759
    idiv cx                          ; 0x375a
    push ax                          ; 0x375c
    call ds_app_0a09                 ; 0x375d
    add sp, byte 6                   ; 0x3760
    mov word [bp - 0x0012], ax       ; 0x3763
@..api_idx_0050.l20:
    push word [bp - 0x0024]          ; 0x3766
    push word [bp - 0x0022]          ; 0x3769
    push word [bp - 0x0018]          ; 0x376c
    mov ax, 7                        ; 0x376f
    push ax                          ; 0x3772
    mov ax, 0xf                      ; 0x3773
    push ax                          ; 0x3776
    mov ax, word [bp - 0x0006]       ; 0x3777
    add ax, strict word 0x22         ; 0x377a
    push ax                          ; 0x377d
    mov ax, word [bp - 0x000c]       ; 0x377e
    add ax, strict word 6            ; 0x3781
    push ax                          ; 0x3784
    call ds_app_11de                 ; 0x3785
    add sp, byte 0x0e                ; 0x3788
    push word [bp - 0x0012]          ; 0x378b
    mov ax, 7                        ; 0x378e
    push ax                          ; 0x3791
    mov ax, 8                        ; 0x3792
    push ax                          ; 0x3795
    mov ax, word [bp - 0x0006]       ; 0x3796
    add ax, strict word 0x22         ; 0x3799
    push ax                          ; 0x379c
    mov ax, word [bp - 0x000c]       ; 0x379d
    add ax, strict word 0x6a         ; 0x37a0
    push ax                          ; 0x37a3
    call ds_app_121f                 ; 0x37a4
    add sp, byte 0x0a                ; 0x37a7
    mov ax, 0                        ; 0x37aa
    push ax                          ; 0x37ad
    push ax                          ; 0x37ae
    mov ax, word [bp - 0x0006]       ; 0x37af
    add ax, word [bp - 0x0012]       ; 0x37b2
    add ax, strict word 0x2e         ; 0x37b5
    push ax                          ; 0x37b8
    mov ax, word [bp - 0x000c]       ; 0x37b9
    add ax, strict word 0x72         ; 0x37bc
    push ax                          ; 0x37bf
    mov ax, word [bp - 0x0006]       ; 0x37c0
    add ax, word [bp - 0x0012]       ; 0x37c3
    add ax, strict word 0x2a         ; 0x37c6
    push ax                          ; 0x37c9
    mov ax, word [bp - 0x000c]       ; 0x37ca
    add ax, strict word 0x6a         ; 0x37cd
    push ax                          ; 0x37d0
    mov ax, 0                        ; 0x37d1
    push ax                          ; 0x37d4
    call ds_app_0ced                 ; 0x37d5
    add sp, byte 0x0e                ; 0x37d8
    mov ax, word [bp - 0x0006]       ; 0x37db
    add ax, strict word 0x4c         ; 0x37de
    push ax                          ; 0x37e1
    mov ax, word [bp - 0x000c]       ; 0x37e2
    add ax, strict word 0x72         ; 0x37e5
    push ax                          ; 0x37e8
    mov ax, word [bp - 0x0006]       ; 0x37e9
    add ax, strict word 0x22         ; 0x37ec
    push ax                          ; 0x37ef
    mov ax, word [bp - 0x000c]       ; 0x37f0
    add ax, strict word 6            ; 0x37f3
    push ax                          ; 0x37f6
    call thunk_4                     ; 0x37f7
    add sp, byte 8                   ; 0x37fa
    jmp near @..api_idx_0050.l50     ; 0x37fd
jumptable_3cc2_case_3:
    cmp word [bp + 0x8], byte 0      ; 0x3800
    jne short @..api_idx_0050.l21    ; 0x3804
    jmp near @..api_idx_0050.l26     ; 0x3806
@..api_idx_0050.l21:
    cmp word [bp - 0x003c], byte 0   ; 0x3809
    jge short @..api_idx_0050.l22    ; 0x380d
    jmp near @..api_idx_0050.l25     ; 0x380f
@..api_idx_0050.l22:
    cmp word [bp + 0xa], byte 0      ; 0x3812
    je short @..api_idx_0050.l24     ; 0x3816
    mov ax, word [bp - 0x003e]       ; 0x3818
    cmp ax, word [bp - 0x0040]       ; 0x381b
    jle short @..api_idx_0050.l23    ; 0x381e
    jmp near @..api_idx_0050.l25     ; 0x3820
@..api_idx_0050.l23:
    mov ax, 6                        ; 0x3823
    imul word [bp - 0x003c]          ; 0x3826
    mov bx, ax                       ; 0x3829
    mov al, byte [bx + 0x622]        ; 0x382b
    sub ah, ah                       ; 0x382f
    mov cx, word [bp - 0x003e]       ; 0x3831
    inc cx                           ; 0x3834
    imul cx                          ; 0x3835
    push ax                          ; 0x3837
    mov ax, 0x248                    ; 0x3838
    imul word [bp + 0x4]             ; 0x383b
    mov cx, ax                       ; 0x383e
    mov dx, word [bp - 0x0042]       ; 0x3840
    shl dx, 1                        ; 0x3843
    shl dx, 1                        ; 0x3845
    add ax, dx                       ; 0x3847
    mov bx, ax                       ; 0x3849
    mov cx, word [bx + 0x5c1c]       ; 0x384b
    pop ax                           ; 0x384f
    cmp ax, cx                       ; 0x3850
    jg short @..api_idx_0050.l25     ; 0x3852
@..api_idx_0050.l24:
    mov ax, 1                        ; 0x3854
    push ax                          ; 0x3857
    push ax                          ; 0x3858
    mov ax, 8                        ; 0x3859
    push ax                          ; 0x385c
    mov ax, word [bp - 0x0006]       ; 0x385d
    add ax, strict word 6            ; 0x3860
    push ax                          ; 0x3863
    mov ax, word [bp - 0x000c]       ; 0x3864
    add ax, strict word 6            ; 0x3867
    push ax                          ; 0x386a
    call ds_app_10a6                 ; 0x386b
    add sp, byte 0x0a                ; 0x386e
    mov ax, 0                        ; 0x3871
    push ax                          ; 0x3874
    mov ax, 1                        ; 0x3875
    push ax                          ; 0x3878
    mov ax, 8                        ; 0x3879
    push ax                          ; 0x387c
    mov ax, word [bp - 0x0006]       ; 0x387d
    add ax, strict word 6            ; 0x3880
    push ax                          ; 0x3883
    mov ax, word [bp - 0x000c]       ; 0x3884
    add ax, strict word 6            ; 0x3887
    push ax                          ; 0x388a
    call ds_app_10a6                 ; 0x388b
    add sp, byte 0x0a                ; 0x388e
    mov word [bss_9050], 0           ; 0x3891
    mov word [bp - 0x001c], 0        ; 0x3897
@..api_idx_0050.l25:
    cmp word [bp - 0x001c], byte 0   ; 0x389c
    je short @..api_idx_0050.l26     ; 0x38a0
    mov ax, 0                        ; 0x38a2
    push ax                          ; 0x38a5
    call ds_app_0a27                 ; 0x38a6
    pop cx                           ; 0x38a9
@..api_idx_0050.l26:
    jmp near @..api_idx_0050.l50     ; 0x38aa
jumptable_3cc2_case_4:
    mov ax, 1                        ; 0x38ad
    push ax                          ; 0x38b0
    push ax                          ; 0x38b1
    mov ax, 8                        ; 0x38b2
    push ax                          ; 0x38b5
    mov ax, word [bp - 0x0006]       ; 0x38b6
    add ax, strict word 6            ; 0x38b9
    push ax                          ; 0x38bc
    mov ax, word [bp - 0x000c]       ; 0x38bd
    add ax, strict word 0x42         ; 0x38c0
    push ax                          ; 0x38c3
    call ds_app_10a6                 ; 0x38c4
    add sp, byte 0x0a                ; 0x38c7
    mov ax, 0                        ; 0x38ca
    push ax                          ; 0x38cd
    mov ax, 1                        ; 0x38ce
    push ax                          ; 0x38d1
    mov ax, 8                        ; 0x38d2
    push ax                          ; 0x38d5
    mov ax, word [bp - 0x0006]       ; 0x38d6
    add ax, strict word 6            ; 0x38d9
    push ax                          ; 0x38dc
    mov ax, word [bp - 0x000c]       ; 0x38dd
    add ax, strict word 0x42         ; 0x38e0
    push ax                          ; 0x38e3
    call ds_app_10a6                 ; 0x38e4
    add sp, byte 0x0a                ; 0x38e7
    mov word [bss_9050], 1           ; 0x38ea
    mov word [bp - 0x001c], 0        ; 0x38f0
    jmp near @..api_idx_0050.l50     ; 0x38f5
@..api_idx_0050.l27:
    cmp word [bp - 0x001a], byte 5   ; 0x38f8
    jge short @..api_idx_0050.l28    ; 0x38fc
    jmp near @..api_idx_0050.l36     ; 0x38fe
@..api_idx_0050.l28:
    cmp word [bp - 0x001a], byte 0x0b ; 0x3901
    jle short @..api_idx_0050.l29    ; 0x3905
    jmp near @..api_idx_0050.l36     ; 0x3907
@..api_idx_0050.l29:
    mov ax, 0                        ; 0x390a
    push ax                          ; 0x390d
    push word [bp - 0x003e]          ; 0x390e
    mov ax, word [bp - 0x0006]       ; 0x3911
    add ax, strict word 0x14         ; 0x3914
    push ax                          ; 0x3917
    mov ax, word [bp - 0x000c]       ; 0x3918
    add ax, strict word 0xc          ; 0x391b
    push ax                          ; 0x391e
    call loc_2e12                    ; 0x391f
    add sp, byte 8                   ; 0x3922
    mov ax, word [bp - 0x001a]       ; 0x3925
    add ax, strict word 0xfffb       ; 0x3928
    mov word [bp - 0x003e], ax       ; 0x392b
    mov ax, 1                        ; 0x392e
    push ax                          ; 0x3931
    push word [bp - 0x003e]          ; 0x3932
    mov ax, word [bp - 0x0006]       ; 0x3935
    add ax, strict word 0x14         ; 0x3938
    push ax                          ; 0x393b
    mov ax, word [bp - 0x000c]       ; 0x393c
    add ax, strict word 0xc          ; 0x393f
    push ax                          ; 0x3942
    call loc_2e12                    ; 0x3943
    add sp, byte 8                   ; 0x3946
    cmp word [bp - 0x003c], byte 0   ; 0x3949
    jge short @..api_idx_0050.l30    ; 0x394d
    jmp near @..api_idx_0050.l34     ; 0x394f
@..api_idx_0050.l30:
    mov ax, 6                        ; 0x3952
    push ax                          ; 0x3955
    mov ax, 0                        ; 0x3956
    push ax                          ; 0x3959
    mov ax, 0x248                    ; 0x395a
    imul word [bp + 0x4]             ; 0x395d
    mov bx, ax                       ; 0x3960
    mov ax, word [bx + 0x5c18]       ; 0x3962
    push ax                          ; 0x3966
    mov ax, 6                        ; 0x3967
    imul word [bp - 0x003c]          ; 0x396a
    mov bx, ax                       ; 0x396d
    mov al, byte [bx + 0x621]        ; 0x396f
    sub ah, ah                       ; 0x3973
    mov cx, ax                       ; 0x3975
    pop ax                           ; 0x3977
    sub ax, cx                       ; 0x3978
    push ax                          ; 0x397a
    call ds_app_0a09                 ; 0x397b
    add sp, byte 6                   ; 0x397e
    mov word [bp - 0x0040], ax       ; 0x3981
    mov ax, 6                        ; 0x3984
    imul word [bp - 0x003c]          ; 0x3987
    mov bx, ax                       ; 0x398a
    mov al, byte [bx + 0x622]        ; 0x398c
    sub ah, ah                       ; 0x3990
    mov cx, word [bp - 0x0040]       ; 0x3992
    inc cx                           ; 0x3995
    imul cx                          ; 0x3996
    mov word [bp - 0x0002], ax       ; 0x3998
    cmp word [bp + 0xa], byte 0      ; 0x399b
    jne short @..api_idx_0050.l31    ; 0x399f
    mov ax, 0x3e7                    ; 0x39a1
    jmp short @..api_idx_0050.l33    ; 0x39a4
@..api_idx_0050.l31:
    mov ax, 0x248                    ; 0x39a6
    imul word [bp + 0x4]             ; 0x39a9
    mov cx, word [bp - 0x0042]       ; 0x39ac
    shl cx, 1                        ; 0x39af
    shl cx, 1                        ; 0x39b1
    add ax, cx                       ; 0x39b3
    mov bx, ax                       ; 0x39b5
    mov ax, word [bx + 0x5c1c]       ; 0x39b7
    cmp ax, word [bp - 0x0002]       ; 0x39bb
    jge short @..api_idx_0050.l32    ; 0x39be
    jmp short @..api_idx_0050.l33    ; 0x39c0
@..api_idx_0050.l32:
    mov ax, word [bp - 0x0002]       ; 0x39c2
@..api_idx_0050.l33:
    push ax                          ; 0x39c5
    mov ax, 6                        ; 0x39c6
    imul word [bp - 0x003c]          ; 0x39c9
    mov bx, ax                       ; 0x39cc
    mov al, byte [bx + 0x622]        ; 0x39ce
    sub ah, ah                       ; 0x39d2
    mov cx, word [bp - 0x003e]       ; 0x39d4
    inc cx                           ; 0x39d7
    imul cx                          ; 0x39d8
    push ax                          ; 0x39da
    push word [bp - 0x0042]          ; 0x39db
    mov ax, word [bp - 0x0006]       ; 0x39de
    add ax, strict word 0x15         ; 0x39e1
    push ax                          ; 0x39e4
    mov ax, word [bp - 0x000c]       ; 0x39e5
    add ax, strict word 0x5e         ; 0x39e8
    push ax                          ; 0x39eb
    call loc_2e9e                    ; 0x39ec
    add sp, byte 0x0a                ; 0x39ef
    jmp short @..api_idx_0050.l35    ; 0x39f2
@..api_idx_0050.l34:
    mov ax, 0                        ; 0x39f4
    push ax                          ; 0x39f7
    push ax                          ; 0x39f8
    push word [bp - 0x0042]          ; 0x39f9
    mov ax, word [bp - 0x0006]       ; 0x39fc
    add ax, strict word 0x15         ; 0x39ff
    push ax                          ; 0x3a02
    mov ax, word [bp - 0x000c]       ; 0x3a03
    add ax, strict word 0x5e         ; 0x3a06
    push ax                          ; 0x3a09
    call loc_2e9e                    ; 0x3a0a
    add sp, byte 0x0a                ; 0x3a0d
@..api_idx_0050.l35:
    mov ax, word [bp - 0x0006]       ; 0x3a10
    add ax, strict word 0x1c         ; 0x3a13
    push ax                          ; 0x3a16
    mov ax, word [bp - 0x000c]       ; 0x3a17
    add ax, strict word 0x56         ; 0x3a1a
    push ax                          ; 0x3a1d
    mov ax, word [bp - 0x0006]       ; 0x3a1e
    add ax, strict word 0x14         ; 0x3a21
    push ax                          ; 0x3a24
    mov ax, word [bp - 0x000c]       ; 0x3a25
    add ax, strict word 0xb          ; 0x3a28
    push ax                          ; 0x3a2b
    call thunk_4                     ; 0x3a2c
    add sp, byte 8                   ; 0x3a2f
    mov ax, word [bp - 0x0006]       ; 0x3a32
    add ax, strict word 0x1b         ; 0x3a35
    push ax                          ; 0x3a38
    mov ax, word [bp - 0x000c]       ; 0x3a39
    add ax, strict word 0x72         ; 0x3a3c
    push ax                          ; 0x3a3f
    mov ax, word [bp - 0x0006]       ; 0x3a40
    add ax, strict word 0x15         ; 0x3a43
    push ax                          ; 0x3a46
    mov ax, word [bp - 0x000c]       ; 0x3a47
    add ax, strict word 0x5e         ; 0x3a4a
    push ax                          ; 0x3a4d
    call thunk_4                     ; 0x3a4e
    add sp, byte 8                   ; 0x3a51
    jmp near @..api_idx_0050.l47     ; 0x3a54
@..api_idx_0050.l36:
    cmp word [bp - 0x001a], byte 0x0c ; 0x3a57
    jge short @..api_idx_0050.l37    ; 0x3a5b
    jmp near @..api_idx_0050.l41     ; 0x3a5d
@..api_idx_0050.l37:
    cmp word [bp - 0x001a], byte 0x11 ; 0x3a60
    jle short @..api_idx_0050.l38    ; 0x3a64
    jmp near @..api_idx_0050.l41     ; 0x3a66
@..api_idx_0050.l38:
    mov ax, word [bp - 0x001a]       ; 0x3a69
    add ax, strict word 0xfff4       ; 0x3a6c
    mov word [bp - 0x0042], ax       ; 0x3a6f
    mov word [bp - 0x003c], 0xffff   ; 0x3a72
    push ax                          ; 0x3a77
    push word [bp + 0x4]             ; 0x3a78
    call api_idx_0004_5              ; 0x3a7b
    add sp, byte 4                   ; 0x3a7e
    mov word [bp - 0x0044], ax       ; 0x3a81
    mov ax, 7                        ; 0x3a84
    cmp word [bp - 0x0044], byte 7   ; 0x3a87
    jge short @..api_idx_0050.l39    ; 0x3a8b
    mov ax, word [bp - 0x0044]       ; 0x3a8d
@..api_idx_0050.l39:
    mov word [bp - 0x0024], ax       ; 0x3a90
    mov ax, 7                        ; 0x3a93
    cmp word [bp - 0x0044], byte 7   ; 0x3a96
    jge short @..api_idx_0050.l40    ; 0x3a9a
    mov ax, word [bp - 0x0044]       ; 0x3a9c
@..api_idx_0050.l40:
    mov word [bp - 0x0020], ax       ; 0x3a9f
    mov word [bp - 0x0018], 0        ; 0x3aa2
    mov word [bp - 0x0022], 0xffff   ; 0x3aa7
    push word [bp - 0x0024]          ; 0x3aac
    push word [bp - 0x0022]          ; 0x3aaf
    push word [bp - 0x0018]          ; 0x3ab2
    mov ax, 7                        ; 0x3ab5
    push ax                          ; 0x3ab8
    mov ax, 0xf                      ; 0x3ab9
    push ax                          ; 0x3abc
    mov ax, word [bp - 0x0006]       ; 0x3abd
    add ax, strict word 0x22         ; 0x3ac0
    push ax                          ; 0x3ac3
    mov ax, word [bp - 0x000c]       ; 0x3ac4
    add ax, strict word 6            ; 0x3ac7
    push ax                          ; 0x3aca
    call ds_app_11de                 ; 0x3acb
    add sp, byte 0x0e                ; 0x3ace
    mov word [bp - 0x0012], 0        ; 0x3ad1
    push word [bp - 0x0012]          ; 0x3ad6
    mov ax, 7                        ; 0x3ad9
    push ax                          ; 0x3adc
    mov ax, 8                        ; 0x3add
    push ax                          ; 0x3ae0
    mov ax, word [bp - 0x0006]       ; 0x3ae1
    add ax, strict word 0x22         ; 0x3ae4
    push ax                          ; 0x3ae7
    mov ax, word [bp - 0x000c]       ; 0x3ae8
    add ax, strict word 0x6a         ; 0x3aeb
    push ax                          ; 0x3aee
    call ds_app_121f                 ; 0x3aef
    add sp, byte 0x0a                ; 0x3af2
    mov ax, 0                        ; 0x3af5
    push ax                          ; 0x3af8
    push ax                          ; 0x3af9
    mov ax, word [bp - 0x0006]       ; 0x3afa
    add ax, word [bp - 0x0012]       ; 0x3afd
    add ax, strict word 0x2e         ; 0x3b00
    push ax                          ; 0x3b03
    mov ax, word [bp - 0x000c]       ; 0x3b04
    add ax, strict word 0x72         ; 0x3b07
    push ax                          ; 0x3b0a
    mov ax, word [bp - 0x0006]       ; 0x3b0b
    add ax, word [bp - 0x0012]       ; 0x3b0e
    add ax, strict word 0x2a         ; 0x3b11
    push ax                          ; 0x3b14
    mov ax, word [bp - 0x000c]       ; 0x3b15
    add ax, strict word 0x6a         ; 0x3b18
    push ax                          ; 0x3b1b
    mov ax, 0                        ; 0x3b1c
    push ax                          ; 0x3b1f
    call ds_app_0ced                 ; 0x3b20
    add sp, byte 0x0e                ; 0x3b23
    mov ax, 0                        ; 0x3b26
    push ax                          ; 0x3b29
    push ax                          ; 0x3b2a
    push word [bp - 0x0042]          ; 0x3b2b
    mov ax, word [bp - 0x0006]       ; 0x3b2e
    add ax, strict word 0x15         ; 0x3b31
    push ax                          ; 0x3b34
    mov ax, word [bp - 0x000c]       ; 0x3b35
    add ax, strict word 0x5e         ; 0x3b38
    push ax                          ; 0x3b3b
    call loc_2e9e                    ; 0x3b3c
    add sp, byte 0x0a                ; 0x3b3f
    mov ax, word [bp - 0x0006]       ; 0x3b42
    add ax, strict word 0x4c         ; 0x3b45
    push ax                          ; 0x3b48
    mov ax, word [bp - 0x000c]       ; 0x3b49
    add ax, strict word 0x72         ; 0x3b4c
    push ax                          ; 0x3b4f
    mov ax, word [bp - 0x0006]       ; 0x3b50
    add ax, strict word 0x22         ; 0x3b53
    push ax                          ; 0x3b56
    mov ax, word [bp - 0x000c]       ; 0x3b57
    add ax, strict word 6            ; 0x3b5a
    push ax                          ; 0x3b5d
    call thunk_4                     ; 0x3b5e
    add sp, byte 8                   ; 0x3b61
    mov ax, word [bp - 0x0006]       ; 0x3b64
    add ax, strict word 0x1b         ; 0x3b67
    push ax                          ; 0x3b6a
    mov ax, word [bp - 0x000c]       ; 0x3b6b
    add ax, strict word 0x72         ; 0x3b6e
    push ax                          ; 0x3b71
    mov ax, word [bp - 0x0006]       ; 0x3b72
    add ax, strict word 0x15         ; 0x3b75
    push ax                          ; 0x3b78
    mov ax, word [bp - 0x000c]       ; 0x3b79
    add ax, strict word 0x5e         ; 0x3b7c
    push ax                          ; 0x3b7f
    call thunk_4                     ; 0x3b80
    add sp, byte 8                   ; 0x3b83
    jmp near @..api_idx_0050.l47     ; 0x3b86
@..api_idx_0050.l41:
    cmp word [bp - 0x001a], byte 0x12 ; 0x3b89
    jge short @..api_idx_0050.l42    ; 0x3b8d
    jmp near @..api_idx_0050.l47     ; 0x3b8f
@..api_idx_0050.l42:
    mov ax, word [bp - 0x0020]       ; 0x3b92
    add ax, strict word 0x12         ; 0x3b95
    cmp ax, word [bp - 0x001a]       ; 0x3b98
    jg short @..api_idx_0050.l43     ; 0x3b9b
    jmp near @..api_idx_0050.l47     ; 0x3b9d
@..api_idx_0050.l43:
    mov ax, word [bp - 0x0018]       ; 0x3ba0
    add ax, word [bp - 0x001a]       ; 0x3ba3
    add ax, strict word 0xffee       ; 0x3ba6
    mov word [bp - 0x0022], ax       ; 0x3ba9
    shl ax, 1                        ; 0x3bac
    mov bx, ax                       ; 0x3bae
    mov ax, word [bx - 0x68e4]       ; 0x3bb0
    mov word [bp - 0x003c], ax       ; 0x3bb4
    push word [bp - 0x0024]          ; 0x3bb7
    push word [bp - 0x0022]          ; 0x3bba
    push word [bp - 0x0018]          ; 0x3bbd
    mov ax, 7                        ; 0x3bc0
    push ax                          ; 0x3bc3
    mov ax, 0xf                      ; 0x3bc4
    push ax                          ; 0x3bc7
    mov ax, word [bp - 0x0006]       ; 0x3bc8
    add ax, strict word 0x22         ; 0x3bcb
    push ax                          ; 0x3bce
    mov ax, word [bp - 0x000c]       ; 0x3bcf
    add ax, strict word 6            ; 0x3bd2
    push ax                          ; 0x3bd5
    call ds_app_11de                 ; 0x3bd6
    add sp, byte 0x0e                ; 0x3bd9
    mov ax, 6                        ; 0x3bdc
    push ax                          ; 0x3bdf
    mov ax, 0                        ; 0x3be0
    push ax                          ; 0x3be3
    mov ax, 0x248                    ; 0x3be4
    imul word [bp + 0x4]             ; 0x3be7
    mov bx, ax                       ; 0x3bea
    mov ax, word [bx + 0x5c18]       ; 0x3bec
    push ax                          ; 0x3bf0
    mov ax, 6                        ; 0x3bf1
    imul word [bp - 0x003c]          ; 0x3bf4
    mov bx, ax                       ; 0x3bf7
    mov al, byte [bx + 0x621]        ; 0x3bf9
    sub ah, ah                       ; 0x3bfd
    mov cx, ax                       ; 0x3bff
    pop ax                           ; 0x3c01
    sub ax, cx                       ; 0x3c02
    push ax                          ; 0x3c04
    call ds_app_0a09                 ; 0x3c05
    add sp, byte 6                   ; 0x3c08
    mov word [bp - 0x0040], ax       ; 0x3c0b
    mov ax, 6                        ; 0x3c0e
    imul word [bp - 0x003c]          ; 0x3c11
    mov bx, ax                       ; 0x3c14
    mov al, byte [bx + 0x622]        ; 0x3c16
    sub ah, ah                       ; 0x3c1a
    mov cx, word [bp - 0x0040]       ; 0x3c1c
    inc cx                           ; 0x3c1f
    imul cx                          ; 0x3c20
    mov word [bp - 0x0002], ax       ; 0x3c22
    cmp word [bp + 0xa], byte 0      ; 0x3c25
    jne short @..api_idx_0050.l44    ; 0x3c29
    mov ax, 0x3e7                    ; 0x3c2b
    jmp short @..api_idx_0050.l46    ; 0x3c2e
@..api_idx_0050.l44:
    mov ax, 0x248                    ; 0x3c30
    imul word [bp + 0x4]             ; 0x3c33
    mov cx, word [bp - 0x0042]       ; 0x3c36
    shl cx, 1                        ; 0x3c39
    shl cx, 1                        ; 0x3c3b
    add ax, cx                       ; 0x3c3d
    mov bx, ax                       ; 0x3c3f
    mov ax, word [bx + 0x5c1c]       ; 0x3c41
    cmp ax, word [bp - 0x0002]       ; 0x3c45
    jge short @..api_idx_0050.l45    ; 0x3c48
    jmp short @..api_idx_0050.l46    ; 0x3c4a
@..api_idx_0050.l45:
    mov ax, word [bp - 0x0002]       ; 0x3c4c
@..api_idx_0050.l46:
    push ax                          ; 0x3c4f
    mov ax, 6                        ; 0x3c50
    imul word [bp - 0x003c]          ; 0x3c53
    mov bx, ax                       ; 0x3c56
    mov al, byte [bx + 0x622]        ; 0x3c58
    sub ah, ah                       ; 0x3c5c
    mov cx, word [bp - 0x003e]       ; 0x3c5e
    inc cx                           ; 0x3c61
    imul cx                          ; 0x3c62
    push ax                          ; 0x3c64
    push word [bp - 0x0042]          ; 0x3c65
    mov ax, word [bp - 0x0006]       ; 0x3c68
    add ax, strict word 0x15         ; 0x3c6b
    push ax                          ; 0x3c6e
    mov ax, word [bp - 0x000c]       ; 0x3c6f
    add ax, strict word 0x5e         ; 0x3c72
    push ax                          ; 0x3c75
    call loc_2e9e                    ; 0x3c76
    add sp, byte 0x0a                ; 0x3c79
    mov ax, word [bp - 0x0006]       ; 0x3c7c
    add ax, strict word 0x4c         ; 0x3c7f
    push ax                          ; 0x3c82
    mov ax, word [bp - 0x000c]       ; 0x3c83
    add ax, strict word 0x72         ; 0x3c86
    push ax                          ; 0x3c89
    mov ax, word [bp - 0x0006]       ; 0x3c8a
    add ax, strict word 0x22         ; 0x3c8d
    push ax                          ; 0x3c90
    mov ax, word [bp - 0x000c]       ; 0x3c91
    add ax, strict word 6            ; 0x3c94
    push ax                          ; 0x3c97
    call thunk_4                     ; 0x3c98
    add sp, byte 8                   ; 0x3c9b
    mov ax, word [bp - 0x0006]       ; 0x3c9e
    add ax, strict word 0x1b         ; 0x3ca1
    push ax                          ; 0x3ca4
    mov ax, word [bp - 0x000c]       ; 0x3ca5
    add ax, strict word 0x72         ; 0x3ca8
    push ax                          ; 0x3cab
    mov ax, word [bp - 0x0006]       ; 0x3cac
    add ax, strict word 0x15         ; 0x3caf
    push ax                          ; 0x3cb2
    mov ax, word [bp - 0x000c]       ; 0x3cb3
    add ax, strict word 0x5e         ; 0x3cb6
    push ax                          ; 0x3cb9
    call thunk_4                     ; 0x3cba
    add sp, byte 8                   ; 0x3cbd
@..api_idx_0050.l47:
    jmp short @..api_idx_0050.l50    ; 0x3cc0
jumptable_3cc2:
    dw jumptable_3cc2_case_0 - IMAGE_BASE + 0x5055 ; 0x3cc2
    dw jumptable_3cc2_case_1 - IMAGE_BASE + 0x5055 ; 0x3cc4
    dw jumptable_3cc2_case_1 - IMAGE_BASE + 0x5055 ; 0x3cc6
    dw jumptable_3cc2_case_3 - IMAGE_BASE + 0x5055 ; 0x3cc8
    dw jumptable_3cc2_case_4 - IMAGE_BASE + 0x5055 ; 0x3cca
@..api_idx_0050.l48:
    cmp ax, strict word 5            ; 0x3ccc
    jae short @..api_idx_0050.l49    ; 0x3ccf
    xchg bx, ax                      ; 0x3cd1
    shl bx, 1                        ; 0x3cd2
    jmp [cs:bx - 0x72f7]             ; 0x3cd4
@..api_idx_0050.l49:
    jmp near @..api_idx_0050.l27     ; 0x3cd9
@..api_idx_0050.l50:
    cmp word [bp - 0x001c], byte 0   ; 0x3cdc
    je short @..api_idx_0050.l51     ; 0x3ce0
    jmp near @..api_idx_0050.l8      ; 0x3ce2
@..api_idx_0050.l51:
    mov ax, 1                        ; 0x3ce5
    push ax                          ; 0x3ce8
    push word [bp - 0x003a]          ; 0x3ce9
    call ds_app_file_16a0            ; 0x3cec
    add sp, byte 4                   ; 0x3cef
    mov ax, word [bp - 0x000a]       ; 0x3cf2
    inc ax                           ; 0x3cf5
    push ax                          ; 0x3cf6
    mov ax, word [bp - 0x0008]       ; 0x3cf7
    inc ax                           ; 0x3cfa
    push ax                          ; 0x3cfb
    mov ax, word [bp - 0x0006]       ; 0x3cfc
    dec ax                           ; 0x3cff
    push ax                          ; 0x3d00
    mov ax, word [bp - 0x0004]       ; 0x3d01
    dec ax                           ; 0x3d04
    push ax                          ; 0x3d05
    call thunk_4                     ; 0x3d06
    add sp, byte 8                   ; 0x3d09
    mov word [bp - 0x0002], 0        ; 0x3d0c
@..api_idx_0050.l52:
    mov ax, word [bp - 0x0002]       ; 0x3d11
    shl ax, 1                        ; 0x3d14
    mov bx, ax                       ; 0x3d16
    add bx, bp                       ; 0x3d18
    mov ax, word [bx - 0x0050]       ; 0x3d1a
    mov cx, word [bp - 0x0002]       ; 0x3d1d
    shl cx, 1                        ; 0x3d20
    mov bx, cx                       ; 0x3d22
    mov word [bx - 0x7cf2], ax       ; 0x3d24
    inc word [bp - 0x0002]           ; 0x3d28
    mov ax, word [bp - 0x0002]       ; 0x3d2b
    cmp ax, strict word 6            ; 0x3d2e
    jl short @..api_idx_0050.l52     ; 0x3d31
    les bx, word [dseg_0002]         ; 0x3d33
    mov ax, word [es:bx]             ; 0x3d37
    mov dx, word [es:bx + 0x2]       ; 0x3d3a
    mov word [bss_908c], dx          ; 0x3d3e
    mov word [bss_908a], ax          ; 0x3d42
    mov ax, word [bp - 0x003e]       ; 0x3d45
    xchg al, ah                      ; 0x3d48
    sub al, al                       ; 0x3d4a
    add ax, word [bp - 0x003c]       ; 0x3d4c
    add ax, 0x100                    ; 0x3d4f
    mov word [bss_904e], ax          ; 0x3d52
    mov ax, word [bss_9050]          ; 0x3d55
    ret                              ; 0x3d58
