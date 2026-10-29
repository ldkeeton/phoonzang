; auto-generated
api_idx_0022_ROTQ:
    mov ax, 0xffde                   ; 0x2242
    call aztec_csav                  ; 0x2245
    mov word [bss_91d6], 4           ; 0x2248
    mov ax, 0x2c                     ; 0x224e
    imul word [bp + 6]               ; 0x2251
    mov si, ax                       ; 0x2254
    mov ax, word [bp + 4]            ; 0x2256
    shl ax, 1                        ; 0x2259
    mov bx, ax                       ; 0x225b
    mov bx, word [bx + party_char]   ; 0x225d
    cmp byte [bx + si + member_rec.item_state], 3 ; 0x2261
    jae short .forward1              ; 0x2265
    push word [bp + 6]               ; 0x2267
    push word [bp + 4]               ; 0x226a
    call item_slot_usable            ; 0x226d
    add sp, byte 4                   ; 0x2270
    test ax, ax                      ; 0x2273
    je short .forward2               ; 0x2275
.forward1:
    mov ax, 0                        ; 0x2277
    ret                              ; 0x227a
.forward2:
    mov word [bp - 2], 0             ; 0x227b
    mov ax, word [bp + 0xc]          ; 0x2280
    mov word [bp - 6], ax            ; 0x2283
.back1:
    cmp word [bp - 6], byte 0        ; 0x2286
    jle short .forward4              ; 0x228a
    mov ax, word [bp + 8]            ; 0x228c
    mov word [bp - 8], ax            ; 0x228f
.back2:
    cmp word [bp - 8], byte 0        ; 0x2292
    jle short .forward3              ; 0x2296
    push word [bp + 0xa]             ; 0x2298
    call random_below                ; 0x229b
    pop cx                           ; 0x229e
    add ax, word [bp - 2]            ; 0x229f
    inc ax                           ; 0x22a2
    mov word [bp - 2], ax            ; 0x22a3
    dec word [bp - 8]                ; 0x22a6
    jmp short .back2                 ; 0x22a9
.forward3:
    dec word [bp - 6]                ; 0x22ab
    jmp short .back1                 ; 0x22ae
.forward4:
    cmp word [bp + 4], byte 0        ; 0x22b0
    jne short .forward5              ; 0x22b4
    mov ax, 0xe                      ; 0x22b6
    push ax                          ; 0x22b9
    mov ax, word [party_char_ext]    ; 0x22ba
    add ax, 0x9a                     ; 0x22bd
    push ax                          ; 0x22c0
    mov ax, 0x248                    ; 0x22c1
    imul word [bp + 6]               ; 0x22c4
    add ax, party_records + pc_rec.cur ; 0x22c7
    push ax                          ; 0x22ca
    call aztec_movmem                ; 0x22cb
    add sp, byte 6                   ; 0x22ce
.forward5:
    mov ax, 0x64                     ; 0x22d1
    push ax                          ; 0x22d4
    call random_below                ; 0x22d5
    pop cx                           ; 0x22d8
    push ax                          ; 0x22d9
    mov ax, word [bp + 4]            ; 0x22da
    shl ax, 1                        ; 0x22dd
    mov bx, ax                       ; 0x22df
    mov bx, word [bx + party_char_ext] ; 0x22e1
    mov si, word [bp + 0xe]          ; 0x22e5
    mov al, byte [bx + si + member_ext.f_009a] ; 0x22e8
    sub ah, ah                       ; 0x22ec
    mov cx, ax                       ; 0x22ee
    sub ax, word [bp + 0x10]         ; 0x22f0
    mov cx, ax                       ; 0x22f3
    pop ax                           ; 0x22f5
    cmp ax, cx                       ; 0x22f6
    jle short .forward6              ; 0x22f8
    push word [bp + 0x10]            ; 0x22fa
    push si                          ; 0x22fd
    push word [bp - 2]               ; 0x22fe
    push word [bp + 4]               ; 0x2301
    call api_idx_0002_NHHH           ; 0x2304
    add sp, byte 8                   ; 0x2307
    mov word [bp - 2], ax            ; 0x230a
    jmp short .forward7              ; 0x230d
.forward6:
    mov word [bp - 2], 0             ; 0x230f
.forward7:
    mov ax, 4                        ; 0x2314
    push ax                          ; 0x2317
    mov ax, 2                        ; 0x2318
    push ax                          ; 0x231b
    call api_idx_0004_OHJS           ; 0x231c
    add sp, byte 4                   ; 0x231f
    push word [bp + 6]               ; 0x2322
    push word [bp + 4]               ; 0x2325
    mov ax, bss_90e6                 ; 0x2328
    push ax                          ; 0x232b
    call loc_HJSG                    ; 0x232c
    add sp, byte 6                   ; 0x232f
    mov ax, 2                        ; 0x2332
    push ax                          ; 0x2335
    mov ax, 0x43                     ; 0x2336
    cmp word [bp + 4], byte 0        ; 0x2339
    jne short .forward8              ; 0x233d
    mov ax, 1                        ; 0x233f
.forward8:
    push ax                          ; 0x2342
    mov ax, bss_90e6                 ; 0x2343
    push ax                          ; 0x2346
    call api_idx_0002_TMNV           ; 0x2347
    add sp, byte 6                   ; 0x234a
    cmp word [bp - 2], byte 0        ; 0x234d
    jg short .forward9               ; 0x2351
    jmp near .forward14              ; 0x2353
.forward9:
    mov ax, 3                        ; 0x2356
    push ax                          ; 0x2359
    mov ax, 0x16                     ; 0x235a
    push ax                          ; 0x235d
    mov ax, MSG_HIT                  ; 0x235e
    push ax                          ; 0x2361
    call api_idx_0050_PLNP           ; 0x2362
    add sp, byte 6                   ; 0x2365
    mov ax, 4                        ; 0x2368
    push ax                          ; 0x236b
    call api_idx_0004_QUPL           ; 0x236c
    pop cx                           ; 0x236f
    mov ax, bss_90e6                 ; 0x2370
    push ax                          ; 0x2373
    push word [bp - 2]               ; 0x2374
    call format_int_decimal          ; 0x2377
    add sp, byte 4                   ; 0x237a
    mov ax, bss_9136                 ; 0x237d
    push ax                          ; 0x2380
    mov ax, MSG_DAMAGE_3309          ; 0x2381
    push ax                          ; 0x2384
    call load_message_string         ; 0x2385
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
    add sp, byte 0xe                 ; 0x23a9
    mov ax, word [bp - 2]            ; 0x23ac
    push ax                          ; 0x23af
    mov ax, 0x2c                     ; 0x23b0
    imul word [bp + 6]               ; 0x23b3
    mov si, ax                       ; 0x23b6
    mov ax, word [bp + 4]            ; 0x23b8
    shl ax, 1                        ; 0x23bb
    mov bx, ax                       ; 0x23bd
    mov bx, word [bx + party_char]   ; 0x23bf
    pop ax                           ; 0x23c3
    sub word [bx + si + member_rec.item_charges], ax ; 0x23c4
    mov ax, 0x2c                     ; 0x23c7
    imul word [bp + 6]               ; 0x23ca
    mov si, ax                       ; 0x23cd
    mov ax, word [bp + 4]            ; 0x23cf
    shl ax, 1                        ; 0x23d2
    mov bx, ax                       ; 0x23d4
    mov bx, word [bx + party_char]   ; 0x23d6
    mov byte [bx + si + member_rec.item_counter + 0x2], 0 ; 0x23da
    mov ax, 3                        ; 0x23de
    push ax                          ; 0x23e1
    call random_below                ; 0x23e2
    pop cx                           ; 0x23e5
    mov cx, ax                       ; 0x23e6
    inc ax                           ; 0x23e8
    inc ax                           ; 0x23e9
    mov cx, ax                       ; 0x23ea
    mov ax, 0x2c                     ; 0x23ec
    imul word [bp + 6]               ; 0x23ef
    mov si, ax                       ; 0x23f2
    mov ax, word [bp + 4]            ; 0x23f4
    shl ax, 1                        ; 0x23f7
    mov bx, ax                       ; 0x23f9
    mov bx, word [bx + party_char]   ; 0x23fb
    mov al, byte [bx + si + member_rec.item_counter + 0x3] ; 0x23ff
    sub ah, ah                       ; 0x2402
    sub ax, cx                       ; 0x2404
    mov word [bp - 0xe], ax          ; 0x2406
    cmp ax, strict word 0            ; 0x2409
    jge short .forward10             ; 0x240c
    mov word [bp - 0xe], 0           ; 0x240e
.forward10:
    mov al, byte [bp - 0xe]          ; 0x2413
    mov byte [bx + si + 0x11], al    ; 0x2416
    mov ax, 0x2c                     ; 0x2419
    imul word [bp + 6]               ; 0x241c
    mov si, ax                       ; 0x241f
    mov ax, word [bp + 4]            ; 0x2421
    shl ax, 1                        ; 0x2424
    mov bx, ax                       ; 0x2426
    mov bx, word [bx + party_char]   ; 0x2428
    cmp word [bx + si + member_rec.item_charges], byte 0 ; 0x242c
    jg short .forward11              ; 0x2430
    mov ax, word [startup_option]    ; 0x2432
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
    mov ax, MSG_DIES_3486            ; 0x2454
    push ax                          ; 0x2457
    push word [bp + 6]               ; 0x2458
    push word [bp + 4]               ; 0x245b
    call api_idx_0002_UTVG           ; 0x245e
    add sp, byte 0x10                ; 0x2461
    jmp short .forward13             ; 0x2464
.forward11:
    cmp word [bp + 4], byte 0        ; 0x2466
    jne short .forward12             ; 0x246a
    mov ax, 0x248                    ; 0x246c
    imul word [bp + 6]               ; 0x246f
    mov bx, ax                       ; 0x2472
    mov al, byte [bx + party_records + pc_rec.gender] ; 0x2474
    sub ah, ah                       ; 0x2478
    inc ax                           ; 0x247a
    inc ax                           ; 0x247b
    push ax                          ; 0x247c
    call play_sound_effect           ; 0x247d
    pop cx                           ; 0x2480
    mov ax, 1                        ; 0x2481
    push ax                          ; 0x2484
    push word [bp + 6]               ; 0x2485
    call api_idx_0004_MLLS           ; 0x2488
    add sp, byte 4                   ; 0x248b
.forward12:
    mov ax, word [startup_option]    ; 0x248e
    mov cx, 2                        ; 0x2491
    cwd                              ; 0x2494
    idiv cx                          ; 0x2495
    push ax                          ; 0x2497
    call api_idx_0004_QUPL           ; 0x2498
    pop cx                           ; 0x249b
.forward13:
    jmp short .forward15             ; 0x249c
.forward14:
    mov ax, 3                        ; 0x249e
    push ax                          ; 0x24a1
    mov ax, 0x41                     ; 0x24a2
    push ax                          ; 0x24a5
    mov ax, MSG_UNAFFECTED_3310      ; 0x24a6
    push ax                          ; 0x24a9
    call api_idx_0050_PLNP           ; 0x24aa
    add sp, byte 6                   ; 0x24ad
.forward15:
    mov ax, word [startup_option]    ; 0x24b0
    mov cx, 2                        ; 0x24b3
    cwd                              ; 0x24b6
    idiv cx                          ; 0x24b7
    push ax                          ; 0x24b9
    call api_idx_0004_QUPL           ; 0x24ba
    pop cx                           ; 0x24bd
    mov ax, word [bp - 2]            ; 0x24be
    ret                              ; 0x24c1
