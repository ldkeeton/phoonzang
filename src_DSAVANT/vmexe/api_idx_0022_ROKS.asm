; auto-generated
api_idx_0022_ROKS:
    mov ax, 0xffde                   ; 0x2242
    call aztec_csav                  ; 0x2245
    mov word [bss_91d6], 4           ; 0x2248
    mov ax, 0x2c                     ; 0x224e
    imul word [bp + 0x6]             ; 0x2251
    mov si, ax                       ; 0x2254
    mov ax, word [bp + 0x4]          ; 0x2256
    shl ax, 1                        ; 0x2259
    mov bx, ax                       ; 0x225b
    mov bx, word [bx + bss_8482]     ; 0x225d
    cmp byte [bx + si + 0x22], 3     ; 0x2261
    jae short @..api_idx_0022_ROKS.l1 ; 0x2265
    push word [bp + 0x6]             ; 0x2267
    push word [bp + 0x4]             ; 0x226a
    call loc_MHUK                    ; 0x226d
    add sp, byte 4                   ; 0x2270
    test ax, ax                      ; 0x2273
    je short @..api_idx_0022_ROKS.l2 ; 0x2275
@..api_idx_0022_ROKS.l1:
    mov ax, 0                        ; 0x2277
    ret                              ; 0x227a
@..api_idx_0022_ROKS.l2:
    mov word [bp - 0x0002], 0        ; 0x227b
    mov ax, word [bp + 0xc]          ; 0x2280
    mov word [bp - 0x0006], ax       ; 0x2283
@..api_idx_0022_ROKS.l3:
    cmp word [bp - 0x0006], byte 0   ; 0x2286
    jle short @..api_idx_0022_ROKS.l6 ; 0x228a
    mov ax, word [bp + 0x8]          ; 0x228c
    mov word [bp - 0x0008], ax       ; 0x228f
@..api_idx_0022_ROKS.l4:
    cmp word [bp - 0x0008], byte 0   ; 0x2292
    jle short @..api_idx_0022_ROKS.l5 ; 0x2296
    push word [bp + 0xa]             ; 0x2298
    call ds_app_PUNN                 ; 0x229b
    pop cx                           ; 0x229e
    add ax, word [bp - 0x0002]       ; 0x229f
    inc ax                           ; 0x22a2
    mov word [bp - 0x0002], ax       ; 0x22a3
    dec word [bp - 0x0008]           ; 0x22a6
    jmp short @..api_idx_0022_ROKS.l4 ; 0x22a9
@..api_idx_0022_ROKS.l5:
    dec word [bp - 0x0006]           ; 0x22ab
    jmp short @..api_idx_0022_ROKS.l3 ; 0x22ae
@..api_idx_0022_ROKS.l6:
    cmp word [bp + 0x4], byte 0      ; 0x22b0
    jne short @..api_idx_0022_ROKS.l7 ; 0x22b4
    mov ax, 0xe                      ; 0x22b6
    push ax                          ; 0x22b9
    mov ax, word [bss_8490]          ; 0x22ba
    add ax, 0x9a                     ; 0x22bd
    push ax                          ; 0x22c0
    mov ax, 0x248                    ; 0x22c1
    imul word [bp + 0x6]             ; 0x22c4
    add ax, 0x5d9c                   ; 0x22c7
    push ax                          ; 0x22ca
    call aztec_movmem                ; 0x22cb
    add sp, byte 6                   ; 0x22ce
@..api_idx_0022_ROKS.l7:
    mov ax, 0x64                     ; 0x22d1
    push ax                          ; 0x22d4
    call ds_app_PUNN                 ; 0x22d5
    pop cx                           ; 0x22d8
    push ax                          ; 0x22d9
    mov ax, word [bp + 0x4]          ; 0x22da
    shl ax, 1                        ; 0x22dd
    mov bx, ax                       ; 0x22df
    mov bx, word [bx + bss_8490]     ; 0x22e1
    mov si, word [bp + 0xe]          ; 0x22e5
    mov al, byte [bx + si + 0x9a]    ; 0x22e8
    sub ah, ah                       ; 0x22ec
    mov cx, ax                       ; 0x22ee
    sub ax, word [bp + 0x10]         ; 0x22f0
    mov cx, ax                       ; 0x22f3
    pop ax                           ; 0x22f5
    cmp ax, cx                       ; 0x22f6
    jle short @..api_idx_0022_ROKS.l8 ; 0x22f8
    push word [bp + 0x10]            ; 0x22fa
    push si                          ; 0x22fd
    push word [bp - 0x0002]          ; 0x22fe
    push word [bp + 0x4]             ; 0x2301
    call api_idx_0002_LKMM           ; 0x2304
    add sp, byte 8                   ; 0x2307
    mov word [bp - 0x0002], ax       ; 0x230a
    jmp short @..api_idx_0022_ROKS.l9 ; 0x230d
@..api_idx_0022_ROKS.l8:
    mov word [bp - 0x0002], 0        ; 0x230f
@..api_idx_0022_ROKS.l9:
    mov ax, 4                        ; 0x2314
    push ax                          ; 0x2317
    mov ax, 2                        ; 0x2318
    push ax                          ; 0x231b
    call api_idx_0004_UONH           ; 0x231c
    add sp, byte 4                   ; 0x231f
    push word [bp + 0x6]             ; 0x2322
    push word [bp + 0x4]             ; 0x2325
    mov ax, bss_90e6                 ; 0x2328
    push ax                          ; 0x232b
    call loc_HJSG                    ; 0x232c
    add sp, byte 6                   ; 0x232f
    mov ax, 2                        ; 0x2332
    push ax                          ; 0x2335
    mov ax, 0x43                     ; 0x2336
    cmp word [bp + 0x4], byte 0      ; 0x2339
    jne short @..api_idx_0022_ROKS.l10 ; 0x233d
    mov ax, 1                        ; 0x233f
@..api_idx_0022_ROKS.l10:
    push ax                          ; 0x2342
    mov ax, bss_90e6                 ; 0x2343
    push ax                          ; 0x2346
    call api_idx_0002_TMNV           ; 0x2347
    add sp, byte 6                   ; 0x234a
    cmp word [bp - 0x0002], byte 0   ; 0x234d
    jg short @..api_idx_0022_ROKS.l11 ; 0x2351
    jmp near @..api_idx_0022_ROKS.l16 ; 0x2353
@..api_idx_0022_ROKS.l11:
    mov ax, 3                        ; 0x2356
    push ax                          ; 0x2359
    mov ax, 0x16                     ; 0x235a
    push ax                          ; 0x235d
    mov ax, 0xce6                    ; 0x235e
    push ax                          ; 0x2361
    call api_idx_0050_PLNP           ; 0x2362
    add sp, byte 6                   ; 0x2365
    mov ax, 4                        ; 0x2368
    push ax                          ; 0x236b
    call api_idx_0004_QUPL           ; 0x236c
    pop cx                           ; 0x236f
    mov ax, 0x90e6                   ; 0x2370
    push ax                          ; 0x2373
    push word [bp - 0x0002]          ; 0x2374
    call ds_app_OLKR                 ; 0x2377
    add sp, byte 4                   ; 0x237a
    mov ax, bss_9136                 ; 0x237d
    push ax                          ; 0x2380
    mov ax, 0xced                    ; 0x2381
    push ax                          ; 0x2384
    call ds_app_mem_TIMR             ; 0x2385
    add sp, byte 4                   ; 0x2388
    mov byte [bss_9186], 0           ; 0x238b
    mov ax, 0x41                     ; 0x2390
    push ax                          ; 0x2393
    push ax                          ; 0x2394
    push ax                          ; 0x2395
    mov ax, bss_9186                 ; 0x2396
    push ax                          ; 0x2399
    mov ax, bss_9136                 ; 0x239a
    push ax                          ; 0x239d
    mov ax, bss_90e6                 ; 0x239e
    push ax                          ; 0x23a1
    mov ax, 4                        ; 0x23a2
    push ax                          ; 0x23a5
    call api_idx_0004_QSNR           ; 0x23a6
    add sp, byte 0x0e                ; 0x23a9
    mov ax, word [bp - 0x0002]       ; 0x23ac
    push ax                          ; 0x23af
    mov ax, 0x2c                     ; 0x23b0
    imul word [bp + 0x6]             ; 0x23b3
    mov si, ax                       ; 0x23b6
    mov ax, word [bp + 0x4]          ; 0x23b8
    shl ax, 1                        ; 0x23bb
    mov bx, ax                       ; 0x23bd
    mov bx, word [bx + bss_8482]     ; 0x23bf
    pop ax                           ; 0x23c3
    sub word [bx + si + 0x2], ax     ; 0x23c4
    mov ax, 0x2c                     ; 0x23c7
    imul word [bp + 0x6]             ; 0x23ca
    mov si, ax                       ; 0x23cd
    mov ax, word [bp + 0x4]          ; 0x23cf
    shl ax, 1                        ; 0x23d2
    mov bx, ax                       ; 0x23d4
    mov bx, word [bx + bss_8482]     ; 0x23d6
    mov byte [bx + si + 0x10], 0     ; 0x23da
    mov ax, 3                        ; 0x23de
    push ax                          ; 0x23e1
    call ds_app_PUNN                 ; 0x23e2
    pop cx                           ; 0x23e5
    mov cx, ax                       ; 0x23e6
    inc ax                           ; 0x23e8
    inc ax                           ; 0x23e9
    mov cx, ax                       ; 0x23ea
    mov ax, 0x2c                     ; 0x23ec
    imul word [bp + 0x6]             ; 0x23ef
    mov si, ax                       ; 0x23f2
    mov ax, word [bp + 0x4]          ; 0x23f4
    shl ax, 1                        ; 0x23f7
    mov bx, ax                       ; 0x23f9
    mov bx, word [bx + bss_8482]     ; 0x23fb
    mov al, byte [bx + si + 0x11]    ; 0x23ff
    sub ah, ah                       ; 0x2402
    sub ax, cx                       ; 0x2404
    mov word [bp - 0x000e], ax       ; 0x2406
    cmp ax, strict word 0            ; 0x2409
    jge short @..api_idx_0022_ROKS.l12 ; 0x240c
    mov word [bp - 0x000e], 0        ; 0x240e
@..api_idx_0022_ROKS.l12:
    mov al, byte [bp - 0x000e]       ; 0x2413
    mov byte [bx + si + 0x11], al    ; 0x2416
    mov ax, 0x2c                     ; 0x2419
    imul word [bp + 0x6]             ; 0x241c
    mov si, ax                       ; 0x241f
    mov ax, word [bp + 0x4]          ; 0x2421
    shl ax, 1                        ; 0x2424
    mov bx, ax                       ; 0x2426
    mov bx, word [bx + bss_8482]     ; 0x2428
    cmp word [bx + si + 0x2], byte 0 ; 0x242c
    jg short @..api_idx_0022_ROKS.l13 ; 0x2430
    mov ax, word [bss_9058]          ; 0x2432
    mov cx, 2                        ; 0x2435
    cwd                              ; 0x2438
    idiv cx                          ; 0x2439
    push ax                          ; 0x243b
    call api_idx_0004_QUPL           ; 0x243c
    pop cx                           ; 0x243f
    mov ax, 0                        ; 0x2440
    push ax                          ; 0x2443
    mov ax, 0xd50                    ; 0x2444
    push ax                          ; 0x2447
    mov ax, 0                        ; 0x2448
    push ax                          ; 0x244b
    mov ax, 3                        ; 0x244c
    push ax                          ; 0x244f
    mov ax, 0                        ; 0x2450
    push ax                          ; 0x2453
    mov ax, 0xd9e                    ; 0x2454
    push ax                          ; 0x2457
    push word [bp + 0x6]             ; 0x2458
    push word [bp + 0x4]             ; 0x245b
    call api_idx_0002_UTVG           ; 0x245e
    add sp, byte 0x10                ; 0x2461
    jmp short @..api_idx_0022_ROKS.l15 ; 0x2464
@..api_idx_0022_ROKS.l13:
    cmp word [bp + 0x4], byte 0      ; 0x2466
    jne short @..api_idx_0022_ROKS.l14 ; 0x246a
    mov ax, 0x248                    ; 0x246c
    imul word [bp + 0x6]             ; 0x246f
    mov bx, ax                       ; 0x2472
    mov al, byte [bx + 0x5e2c]       ; 0x2474
    sub ah, ah                       ; 0x2478
    inc ax                           ; 0x247a
    inc ax                           ; 0x247b
    push ax                          ; 0x247c
    call ds_app_HKIJ                 ; 0x247d
    pop cx                           ; 0x2480
    mov ax, 1                        ; 0x2481
    push ax                          ; 0x2484
    push word [bp + 0x6]             ; 0x2485
    call api_idx_0004_MLLS           ; 0x2488
    add sp, byte 4                   ; 0x248b
@..api_idx_0022_ROKS.l14:
    mov ax, word [bss_9058]          ; 0x248e
    mov cx, 2                        ; 0x2491
    cwd                              ; 0x2494
    idiv cx                          ; 0x2495
    push ax                          ; 0x2497
    call api_idx_0004_QUPL           ; 0x2498
    pop cx                           ; 0x249b
@..api_idx_0022_ROKS.l15:
    jmp short @..api_idx_0022_ROKS.l17 ; 0x249c
@..api_idx_0022_ROKS.l16:
    mov ax, 3                        ; 0x249e
    push ax                          ; 0x24a1
    mov ax, 0x41                     ; 0x24a2
    push ax                          ; 0x24a5
    mov ax, 0xcee                    ; 0x24a6
    push ax                          ; 0x24a9
    call api_idx_0050_PLNP           ; 0x24aa
    add sp, byte 6                   ; 0x24ad
@..api_idx_0022_ROKS.l17:
    mov ax, word [bss_9058]          ; 0x24b0
    mov cx, 2                        ; 0x24b3
    cwd                              ; 0x24b6
    idiv cx                          ; 0x24b7
    push ax                          ; 0x24b9
    call api_idx_0004_QUPL           ; 0x24ba
    pop cx                           ; 0x24bd
    mov ax, word [bp - 0x0002]       ; 0x24be
    ret                              ; 0x24c1
