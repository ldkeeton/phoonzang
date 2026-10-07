api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x2273
    call ds_dispatch_f40b            ; 0x2276
    mov ax, 0x248                    ; 0x2279
    imul word [bp + 0x4]             ; 0x227c
    mov bx, ax                       ; 0x227f
    mov al, byte [bx + 0x5e2d]       ; 0x2281
    sub ah, ah                       ; 0x2285
    jmp near @..api_idx_0004_4.l1    ; 0x2287
    mov ax, 0x90d9                   ; 0x228a
    push ax                          ; 0x228d
    mov ax, 0x90d2                   ; 0x228e
    push ax                          ; 0x2291
    mov ax, 0x90c9                   ; 0x2292
    push ax                          ; 0x2295
    mov ax, 0x90be                   ; 0x2296
    push ax                          ; 0x2299
    push word [bp + 0x4]             ; 0x229a
    call api_idx_0004_3              ; 0x229d
    add sp, byte 0x0a                ; 0x22a0
    jmp near @..api_idx_0004_4.l2    ; 0x22a3
    mov ax, 0x90ff                   ; 0x22a6
    push ax                          ; 0x22a9
    mov ax, 0x90f8                   ; 0x22aa
    push ax                          ; 0x22ad
    mov ax, 0x90ef                   ; 0x22ae
    push ax                          ; 0x22b1
    mov ax, 0x90e4                   ; 0x22b2
    push ax                          ; 0x22b5
    push word [bp + 0x4]             ; 0x22b6
    call api_idx_0004_3              ; 0x22b9
    add sp, byte 0x0a                ; 0x22bc
    jmp near @..api_idx_0004_4.l2    ; 0x22bf
    mov ax, 0x9125                   ; 0x22c2
    push ax                          ; 0x22c5
    mov ax, 0x911e                   ; 0x22c6
    push ax                          ; 0x22c9
    mov ax, 0x9115                   ; 0x22ca
    push ax                          ; 0x22cd
    mov ax, 0x910a                   ; 0x22ce
    push ax                          ; 0x22d1
    push word [bp + 0x4]             ; 0x22d2
    call api_idx_0004_3              ; 0x22d5
    add sp, byte 0x0a                ; 0x22d8
    jmp near @..api_idx_0004_4.l2    ; 0x22db
    mov ax, 0x914b                   ; 0x22de
    push ax                          ; 0x22e1
    mov ax, 0x9144                   ; 0x22e2
    push ax                          ; 0x22e5
    mov ax, 0x913b                   ; 0x22e6
    push ax                          ; 0x22e9
    mov ax, 0x9130                   ; 0x22ea
    push ax                          ; 0x22ed
    push word [bp + 0x4]             ; 0x22ee
    call api_idx_0004_3              ; 0x22f1
    add sp, byte 0x0a                ; 0x22f4
    jmp near @..api_idx_0004_4.l2    ; 0x22f7
    mov ax, 0x9171                   ; 0x22fa
    push ax                          ; 0x22fd
    mov ax, 0x916a                   ; 0x22fe
    push ax                          ; 0x2301
    mov ax, 0x9161                   ; 0x2302
    push ax                          ; 0x2305
    mov ax, 0x9156                   ; 0x2306
    push ax                          ; 0x2309
    push word [bp + 0x4]             ; 0x230a
    call api_idx_0004_3              ; 0x230d
    add sp, byte 0x0a                ; 0x2310
    jmp near @..api_idx_0004_4.l2    ; 0x2313
    mov ax, 0x9197                   ; 0x2316
    push ax                          ; 0x2319
    mov ax, 0x9190                   ; 0x231a
    push ax                          ; 0x231d
    mov ax, 0x9187                   ; 0x231e
    push ax                          ; 0x2321
    mov ax, 0x917c                   ; 0x2322
    push ax                          ; 0x2325
    push word [bp + 0x4]             ; 0x2326
    call api_idx_0004_3              ; 0x2329
    add sp, byte 0x0a                ; 0x232c
    jmp near @..api_idx_0004_4.l2    ; 0x232f
    mov ax, 0x91bd                   ; 0x2332
    push ax                          ; 0x2335
    mov ax, 0x91b6                   ; 0x2336
    push ax                          ; 0x2339
    mov ax, 0x91ad                   ; 0x233a
    push ax                          ; 0x233d
    mov ax, 0x91a2                   ; 0x233e
    push ax                          ; 0x2341
    push word [bp + 0x4]             ; 0x2342
    call api_idx_0004_3              ; 0x2345
    add sp, byte 0x0a                ; 0x2348
    jmp near @..api_idx_0004_4.l2    ; 0x234b
    mov ax, 0x91e3                   ; 0x234e
    push ax                          ; 0x2351
    mov ax, 0x91dc                   ; 0x2352
    push ax                          ; 0x2355
    mov ax, 0x91d3                   ; 0x2356
    push ax                          ; 0x2359
    mov ax, 0x91c8                   ; 0x235a
    push ax                          ; 0x235d
    push word [bp + 0x4]             ; 0x235e
    call api_idx_0004_3              ; 0x2361
    add sp, byte 0x0a                ; 0x2364
    jmp near @..api_idx_0004_4.l2    ; 0x2367
    mov ax, 0x9209                   ; 0x236a
    push ax                          ; 0x236d
    mov ax, 0x9202                   ; 0x236e
    push ax                          ; 0x2371
    mov ax, 0x91f9                   ; 0x2372
    push ax                          ; 0x2375
    mov ax, 0x91ee                   ; 0x2376
    push ax                          ; 0x2379
    push word [bp + 0x4]             ; 0x237a
    call api_idx_0004_3              ; 0x237d
    add sp, byte 0x0a                ; 0x2380
    jmp near @..api_idx_0004_4.l2    ; 0x2383
    mov ax, 0x922f                   ; 0x2386
    push ax                          ; 0x2389
    mov ax, 0x9228                   ; 0x238a
    push ax                          ; 0x238d
    mov ax, 0x921f                   ; 0x238e
    push ax                          ; 0x2391
    mov ax, 0x9214                   ; 0x2392
    push ax                          ; 0x2395
    push word [bp + 0x4]             ; 0x2396
    call api_idx_0004_3              ; 0x2399
    add sp, byte 0x0a                ; 0x239c
    jmp near @..api_idx_0004_4.l2    ; 0x239f
    mov ax, 0x9255                   ; 0x23a2
    push ax                          ; 0x23a5
    mov ax, 0x924e                   ; 0x23a6
    push ax                          ; 0x23a9
    mov ax, 0x9245                   ; 0x23aa
    push ax                          ; 0x23ad
    mov ax, 0x923a                   ; 0x23ae
    push ax                          ; 0x23b1
    push word [bp + 0x4]             ; 0x23b2
    call api_idx_0004_3              ; 0x23b5
    add sp, byte 0x0a                ; 0x23b8
    jmp short @..api_idx_0004_4.l2   ; 0x23bb
    mov ax, 0x927b                   ; 0x23bd
    push ax                          ; 0x23c0
    mov ax, 0x9274                   ; 0x23c1
    push ax                          ; 0x23c4
    mov ax, 0x926b                   ; 0x23c5
    push ax                          ; 0x23c8
    mov ax, 0x9260                   ; 0x23c9
    push ax                          ; 0x23cc
    push word [bp + 0x4]             ; 0x23cd
    call api_idx_0004_3              ; 0x23d0
    add sp, byte 0x0a                ; 0x23d3
    jmp short @..api_idx_0004_4.l2   ; 0x23d6
    mov ax, 0x92a1                   ; 0x23d8
    push ax                          ; 0x23db
    mov ax, 0x929a                   ; 0x23dc
    push ax                          ; 0x23df
    mov ax, 0x9291                   ; 0x23e0
    push ax                          ; 0x23e3
    mov ax, 0x9286                   ; 0x23e4
    push ax                          ; 0x23e7
    push word [bp + 0x4]             ; 0x23e8
    call api_idx_0004_3              ; 0x23eb
    add sp, byte 0x0a                ; 0x23ee
    jmp short @..api_idx_0004_4.l2   ; 0x23f1
    mov ax, 0x92c7                   ; 0x23f3
    push ax                          ; 0x23f6
    mov ax, 0x92c0                   ; 0x23f7
    push ax                          ; 0x23fa
    mov ax, 0x92b7                   ; 0x23fb
    push ax                          ; 0x23fe
    mov ax, 0x92ac                   ; 0x23ff
    push ax                          ; 0x2402
    push word [bp + 0x4]             ; 0x2403
    call api_idx_0004_3              ; 0x2406
    add sp, byte 0x0a                ; 0x2409
    jmp short @..api_idx_0004_4.l2   ; 0x240c
    db 0xd1, 0x72, 0xed ; sal word [bp + si - 0x0013], 1
    jb short loc_241c                ; 0x2411
    jae short loc_243a               ; 0x2413
    jae short loc_2458               ; 0x2415
    jae short loc_2476               ; 0x2417
    jae short loc_2494               ; 0x2419
    jae short loc_23b2               ; 0x241b
    jae short loc_23d0               ; 0x241d
    jae short loc_23ee               ; 0x241f
    jae short loc_240c               ; 0x2421
    jae short loc_2429               ; 0x2423
    je short loc_2446                ; 0x2425
    je short loc_2463                ; 0x2427
    db 0x74
@..api_idx_0004_4.l1:
    cmp ax, strict word 0xe          ; 0x242a
    jae short @..api_idx_0004_4.l2   ; 0x242d
    xchg bx, ax                      ; 0x242f
    shl bx, 1                        ; 0x2430
    jmp [cs:bx + 0x7455]             ; 0x2432
@..api_idx_0004_4.l2:
    mov ax, 0x248                    ; 0x2437
    imul word [bp + 0x4]             ; 0x243a
    mov bx, ax                       ; 0x243d
    cmp byte [bx + 0x5d65], 0xd      ; 0x243f
    jbe short @..api_idx_0004_4.l3   ; 0x2444
    cmp byte [bx + 0x5d6a], 0xd      ; 0x2446
    jbe short @..api_idx_0004_4.l3   ; 0x244b
    mov word [data_95e8], 1          ; 0x244d
@..api_idx_0004_4.l3:
    mov word [bp - 0x0004], 0        ; 0x2453
    mov ax, word [bp + 0x6]          ; 0x2458
    shl ax, 1                        ; 0x245b
    shl ax, 1                        ; 0x245d
    mov bx, ax                       ; 0x245f
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x2465
    jmp short @..api_idx_0004_4.l6   ; 0x2468
@..api_idx_0004_4.l4:
    mov ax, word [bp - 0x0002]       ; 0x246a
    shl ax, 1                        ; 0x246d
    mov bx, ax                       ; 0x246f
