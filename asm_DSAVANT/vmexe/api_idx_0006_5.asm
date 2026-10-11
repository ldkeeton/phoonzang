api_idx_0006_5:
    mov ax, 0xfffa                   ; 0x312e
    call ds_dispatch_f40b            ; 0x3131
    lea ax, word [bp - 0x0006]       ; 0x3134
    push ax                          ; 0x3137
    lea ax, word [bp - 0x0004]       ; 0x3138
    push ax                          ; 0x313b
    push word [bp + 0x6]             ; 0x313c
    push word [bp + 0x4]             ; 0x313f
    call api_idx_0006_3              ; 0x3142
    add sp, byte 8                   ; 0x3145
    mov ax, word [bp - 0x0004]       ; 0x3148
    mov word [bp - 0x0002], ax       ; 0x314b
    jmp near @..api_idx_0006_5.l9    ; 0x314e
@..api_idx_0006_5.l1:
    mov ax, 0x2c                     ; 0x3151
    imul word [bp - 0x0002]          ; 0x3154
    mov si, ax                       ; 0x3157
    mov ax, word [bp + 0x4]          ; 0x3159
    shl ax, 1                        ; 0x315c
    mov bx, ax                       ; 0x315e
    mov bx, word [bx - 0x7b7e]       ; 0x3160
    cmp byte [bx + si + 0x22], 3     ; 0x3164
    jb short @..api_idx_0006_5.l2    ; 0x3168
    jmp near @..api_idx_0006_5.l8    ; 0x316a
@..api_idx_0006_5.l2:
    mov ax, 0x64                     ; 0x316d
    push ax                          ; 0x3170
    call ds_dispatch_b7a9            ; 0x3171
    pop cx                           ; 0x3174
    push ax                          ; 0x3175
    mov ax, word [bp + 0x4]          ; 0x3176
    shl ax, 1                        ; 0x3179
    mov bx, ax                       ; 0x317b
    mov bx, word [bx - 0x7b70]       ; 0x317d
    mov al, byte [bx + 0x9c]         ; 0x3181
    sub ah, ah                       ; 0x3185
    mov cx, ax                       ; 0x3187
    sub ax, word [bp + 0xa]          ; 0x3189
    mov cx, ax                       ; 0x318c
    pop ax                           ; 0x318e
    cmp ax, cx                       ; 0x318f
    jg short @..api_idx_0006_5.l3    ; 0x3191
    jmp near @..api_idx_0006_5.l6    ; 0x3193
@..api_idx_0006_5.l3:
    mov ax, 0xa                      ; 0x3196
    push ax                          ; 0x3199
    call ds_dispatch_b7a9            ; 0x319a
    pop cx                           ; 0x319d
    jmp near @..api_idx_0006_5.l4    ; 0x319e
    push word [bp + 0xa]             ; 0x31a1
    mov ax, 0xc                      ; 0x31a4
    push ax                          ; 0x31a7
    push word [bp + 0x8]             ; 0x31a8
    mov ax, 7                        ; 0x31ab
    push ax                          ; 0x31ae
    mov ax, 4                        ; 0x31af
    push ax                          ; 0x31b2
    push word [bp - 0x0002]          ; 0x31b3
    push word [bp + 0x4]             ; 0x31b6
    call api_idx_0022                ; 0x31b9
    add sp, byte 0x0e                ; 0x31bc
    jmp near @..api_idx_0006_5.l5    ; 0x31bf
    push word [bp + 0x8]             ; 0x31c2
    mov ax, 4                        ; 0x31c5
    push ax                          ; 0x31c8
    mov ax, word [bp + 0x8]          ; 0x31c9
    shl ax, 1                        ; 0x31cc
    push ax                          ; 0x31ce
    mov ax, 0                        ; 0x31cf
    push ax                          ; 0x31d2
    push word [bp + 0xa]             ; 0x31d3
    mov ax, 4                        ; 0x31d6
    push ax                          ; 0x31d9
    mov ax, 2                        ; 0x31da
    push ax                          ; 0x31dd
    mov ax, 0xd94                    ; 0x31de
    push ax                          ; 0x31e1
    push word [bp - 0x0002]          ; 0x31e2
    push word [bp + 0x4]             ; 0x31e5
    call api_idx_000a_4              ; 0x31e8
    add sp, byte 0x14                ; 0x31eb
    jmp near @..api_idx_0006_5.l5    ; 0x31ee
    mov ax, 0                        ; 0x31f1
    push ax                          ; 0x31f4
    mov ax, 2                        ; 0x31f5
    push ax                          ; 0x31f8
    push word [bp + 0x8]             ; 0x31f9
    mov ax, 0                        ; 0x31fc
    push ax                          ; 0x31ff
    push word [bp + 0xa]             ; 0x3200
    mov ax, 2                        ; 0x3203
    push ax                          ; 0x3206
    mov ax, 9                        ; 0x3207
    push ax                          ; 0x320a
    mov ax, 0xd92                    ; 0x320b
    push ax                          ; 0x320e
    push word [bp - 0x0002]          ; 0x320f
    push word [bp + 0x4]             ; 0x3212
    call api_idx_000a_4              ; 0x3215
    add sp, byte 0x14                ; 0x3218
    jmp near @..api_idx_0006_5.l5    ; 0x321b
    push word [bp + 0x8]             ; 0x321e
    mov ax, 1                        ; 0x3221
    push ax                          ; 0x3224
    mov ax, word [bp + 0x8]          ; 0x3225
    shl ax, 1                        ; 0x3228
    push ax                          ; 0x322a
    mov ax, 0                        ; 0x322b
    push ax                          ; 0x322e
    push word [bp + 0xa]             ; 0x322f
    mov ax, 3                        ; 0x3232
    push ax                          ; 0x3235
    mov ax, 4                        ; 0x3236
    push ax                          ; 0x3239
    mov ax, 0xd93                    ; 0x323a
    push ax                          ; 0x323d
    push word [bp - 0x0002]          ; 0x323e
    push word [bp + 0x4]             ; 0x3241
    call api_idx_000a_4              ; 0x3244
    add sp, byte 0x14                ; 0x3247
    jmp near @..api_idx_0006_5.l5    ; 0x324a
    push word [bp + 0x8]             ; 0x324d
    mov ax, 4                        ; 0x3250
    push ax                          ; 0x3253
    push word [bp + 0x8]             ; 0x3254
    mov ax, 0                        ; 0x3257
    push ax                          ; 0x325a
    push word [bp + 0xa]             ; 0x325b
    mov ax, 8                        ; 0x325e
    push ax                          ; 0x3261
    mov ax, 5                        ; 0x3262
    push ax                          ; 0x3265
    mov ax, 0xd98                    ; 0x3266
    push ax                          ; 0x3269
    push word [bp - 0x0002]          ; 0x326a
    push word [bp + 0x4]             ; 0x326d
    call api_idx_000a_4              ; 0x3270
    add sp, byte 0x14                ; 0x3273
    jmp near @..api_idx_0006_5.l5    ; 0x3276
    mov ax, 0                        ; 0x3279
    push ax                          ; 0x327c
    push ax                          ; 0x327d
    push ax                          ; 0x327e
    mov ax, 1                        ; 0x327f
    push ax                          ; 0x3282
    mov ax, word [bp + 0xa]          ; 0x3283
    add ax, strict word 0xffe7       ; 0x3286
    push ax                          ; 0x3289
    mov ax, 3                        ; 0x328a
    push ax                          ; 0x328d
    mov ax, 0xb                      ; 0x328e
    push ax                          ; 0x3291
    mov ax, 0xda1                    ; 0x3292
    push ax                          ; 0x3295
    push word [bp - 0x0002]          ; 0x3296
    push word [bp + 0x4]             ; 0x3299
    call api_idx_000a_4              ; 0x329c
    add sp, byte 0x14                ; 0x329f
    jmp near @..api_idx_0006_5.l5    ; 0x32a2
    push word [bp + 0xa]             ; 0x32a5
    mov ax, 0                        ; 0x32a8
    push ax                          ; 0x32ab
    mov ax, word [bp + 0x8]          ; 0x32ac
    shl ax, 1                        ; 0x32af
    push ax                          ; 0x32b1
    mov ax, 4                        ; 0x32b2
    push ax                          ; 0x32b5
    mov ax, word [bp + 0x8]          ; 0x32b6
    shl ax, 1                        ; 0x32b9
    push ax                          ; 0x32bb
    push word [bp - 0x0002]          ; 0x32bc
    push word [bp + 0x4]             ; 0x32bf
    call api_idx_0022                ; 0x32c2
    add sp, byte 0x0e                ; 0x32c5
    jmp near @..api_idx_0006_5.l5    ; 0x32c8
    push word [bp + 0x8]             ; 0x32cb
    mov ax, 2                        ; 0x32ce
    push ax                          ; 0x32d1
    push word [bp + 0x8]             ; 0x32d2
    mov ax, 0                        ; 0x32d5
    push ax                          ; 0x32d8
    push word [bp + 0xa]             ; 0x32d9
    mov ax, 7                        ; 0x32dc
    push ax                          ; 0x32df
    mov ax, 0xa                      ; 0x32e0
    push ax                          ; 0x32e3
    mov ax, 0xd97                    ; 0x32e4
    push ax                          ; 0x32e7
    push word [bp - 0x0002]          ; 0x32e8
    push word [bp + 0x4]             ; 0x32eb
    call api_idx_000a_4              ; 0x32ee
    add sp, byte 0x14                ; 0x32f1
    jmp short @..api_idx_0006_5.l5   ; 0x32f4
    mov ax, 0                        ; 0x32f6
    push ax                          ; 0x32f9
    push ax                          ; 0x32fa
    push ax                          ; 0x32fb
    mov ax, 1                        ; 0x32fc
    push ax                          ; 0x32ff
    mov ax, word [bp + 0xa]          ; 0x3300
    add ax, strict word 0xffe7       ; 0x3303
    push ax                          ; 0x3306
    mov ax, 2                        ; 0x3307
    push ax                          ; 0x330a
    mov ax, 0xb                      ; 0x330b
    push ax                          ; 0x330e
    mov ax, 0xd9d                    ; 0x330f
    push ax                          ; 0x3312
    push word [bp - 0x0002]          ; 0x3313
    push word [bp + 0x4]             ; 0x3316
    call api_idx_000a_4              ; 0x3319
    add sp, byte 0x14                ; 0x331c
    jmp short @..api_idx_0006_5.l5   ; 0x331f
    push word [bp + 0xa]             ; 0x3321
    mov ax, 1                        ; 0x3324
    push ax                          ; 0x3327
    push word [bp + 0x8]             ; 0x3328
    mov ax, 7                        ; 0x332b

    db 0x50, 0xb8, 0x04, 0x00, 0x50, 0xff, 0x76, 0xfe, 0xff, 0x76, 0x04, 0xe8, 0x06, 0xef, 0x83, 0xc4
    db 0x0e, 0xeb, 0x21, 0xe8, 0x81, 0x09, 0x82, 0x38, 0x82, 0x65, 0x82, 0x94, 0x82, 0xc0, 0x82, 0xec
    db 0x82, 0x12, 0x83, 0x3d, 0x83, 0x68, 0x83

@..api_idx_0006_5.l4:
    cmp ax, strict word 0xa          ; 0x3355
    jae short @..api_idx_0006_5.l5   ; 0x3358
    xchg bx, ax                      ; 0x335a
    shl bx, 1                        ; 0x335b
    jmp [cs:bx - 0x7c78]             ; 0x335d
@..api_idx_0006_5.l5:
    jmp short @..api_idx_0006_5.l8   ; 0x3362
@..api_idx_0006_5.l6:
    mov ax, 0x2c                     ; 0x3364
    imul word [bp - 0x0002]          ; 0x3367
    mov si, ax                       ; 0x336a
    mov ax, word [bp + 0x4]          ; 0x336c
    shl ax, 1                        ; 0x336f
    mov bx, ax                       ; 0x3371
    mov bx, word [bx - 0x7b7e]       ; 0x3373
    cmp byte [bx + si + 0x2b], 0     ; 0x3377
    jne short @..api_idx_0006_5.l8   ; 0x337b
    mov ax, 4                        ; 0x337d
    push ax                          ; 0x3380
    mov ax, 2                        ; 0x3381
    push ax                          ; 0x3384
    call api_idx_0004_6              ; 0x3385
    add sp, byte 4                   ; 0x3388
    push word [bp - 0x0002]          ; 0x338b
    push word [bp + 0x4]             ; 0x338e
    mov ax, 0x90e6                   ; 0x3391
    push ax                          ; 0x3394
    call loc_15ab                    ; 0x3395
    add sp, byte 6                   ; 0x3398
    mov ax, 2                        ; 0x339b
    push ax                          ; 0x339e
    mov ax, 0x43                     ; 0x339f
    cmp word [bp + 0x4], byte 0      ; 0x33a2
    jne short @..api_idx_0006_5.l7   ; 0x33a6
    mov ax, 1                        ; 0x33a8
@..api_idx_0006_5.l7:
    push ax                          ; 0x33ab
    mov ax, 0x90e6                   ; 0x33ac
    push ax                          ; 0x33af
    call api_idx_0002_2              ; 0x33b0
    add sp, byte 6                   ; 0x33b3
    mov ax, 3                        ; 0x33b6
    push ax                          ; 0x33b9
    mov ax, 0x41                     ; 0x33ba
    push ax                          ; 0x33bd
    mov ax, 0xd8f                    ; 0x33be
    push ax                          ; 0x33c1
    call api_idx_0050                ; 0x33c2
    add sp, byte 6                   ; 0x33c5
    push word [bss_9058]             ; 0x33c8
    call api_idx_0004_5              ; 0x33cc
    pop cx                           ; 0x33cf
@..api_idx_0006_5.l8:
    inc word [bp - 0x0002]           ; 0x33d0
@..api_idx_0006_5.l9:
    mov ax, word [bp - 0x0004]       ; 0x33d3
    add ax, word [bp - 0x0006]       ; 0x33d6
    cmp ax, word [bp - 0x0002]       ; 0x33d9
    jle short @..api_idx_0006_5.l10  ; 0x33dc
    jmp near @..api_idx_0006_5.l1    ; 0x33de
@..api_idx_0006_5.l10:
    ret                              ; 0x33e1
