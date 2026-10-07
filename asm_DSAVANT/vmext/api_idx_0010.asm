api_idx_0010:
    mov ax, 0xfff0                   ; 0x2291
    call ds_dispatch_f40b            ; 0x2294
    mov ax, 4                        ; 0x2297
    cmp word [data_91a8], byte 0     ; 0x229a
    jne short @..api_idx_0010.l1     ; 0x229f
    mov ax, 3                        ; 0x22a1
@..api_idx_0010.l1:
    mov word [bp - 0x000a], ax       ; 0x22a4
    mov word [bp - 0x0002], 0xffff   ; 0x22a7
    mov word [bp - 0x0004], 0xffff   ; 0x22ac
    cmp word [data_91a8], byte 0     ; 0x22b1
    jg short @..api_idx_0010.l2      ; 0x22b6
    jmp near @..api_idx_0010.l11     ; 0x22b8
@..api_idx_0010.l2:
    cmp word [bp + 0x4], byte 3      ; 0x22bb
    je short @..api_idx_0010.l3      ; 0x22bf
    jmp near @..api_idx_0010.l11     ; 0x22c1
@..api_idx_0010.l3:
    mov ax, word [data_91a8]         ; 0x22c4
    cmp ax, strict word 3            ; 0x22c7
    jl short @..api_idx_0010.l4      ; 0x22ca
    cmp ax, strict word 5            ; 0x22cc
    jne short @..api_idx_0010.l5     ; 0x22cf
@..api_idx_0010.l4:
    mov ax, 0x15                     ; 0x22d1
    jmp short @..api_idx_0010.l6     ; 0x22d4
@..api_idx_0010.l5:
    mov ax, 0x14                     ; 0x22d6
@..api_idx_0010.l6:
    mov word [bp - 0x000c], ax       ; 0x22d9
    cmp word [data_91a8], byte 3     ; 0x22dc
    jl short @..api_idx_0010.l7      ; 0x22e1
    cmp word [data_91a8], byte 5     ; 0x22e3
    jne short @..api_idx_0010.l8     ; 0x22e8
@..api_idx_0010.l7:
    mov ax, 0x16                     ; 0x22ea
    jmp short @..api_idx_0010.l9     ; 0x22ed
@..api_idx_0010.l8:
    mov ax, 0x15                     ; 0x22ef
@..api_idx_0010.l9:
    mov word [bp - 0x000e], ax       ; 0x22f2
    cmp word [bp + 0x8], byte 0      ; 0x22f5
    jne short @..api_idx_0010.l10    ; 0x22f9
    push ax                          ; 0x22fb
    push word [bp - 0x000c]          ; 0x22fc
    call loc_1927                    ; 0x22ff
    add sp, byte 4                   ; 0x2302
    mov word [bp - 0x0002], ax       ; 0x2305
    push word [bp - 0x000c]          ; 0x2308
    call loc_1913                    ; 0x230b
    pop cx                           ; 0x230e
    mov word [bp - 0x0004], ax       ; 0x230f
    jmp short @..api_idx_0010.l11    ; 0x2312
@..api_idx_0010.l10:
    cmp word [bp + 0x8], byte 4      ; 0x2314
    jne short @..api_idx_0010.l11    ; 0x2318
    push word [bp - 0x000c]          ; 0x231a
    push word [bp - 0x000e]          ; 0x231d
    call loc_1927                    ; 0x2320
    add sp, byte 4                   ; 0x2323
    mov word [bp - 0x0002], ax       ; 0x2326
    push word [bp - 0x000e]          ; 0x2329
    call loc_1913                    ; 0x232c
    pop cx                           ; 0x232f
    mov word [bp - 0x0004], ax       ; 0x2330
@..api_idx_0010.l11:
    mov ax, word [bp + 0x6]          ; 0x2333
    jmp near @..api_idx_0010.l12     ; 0x2336
    cmp word [bp - 0x0002], byte 0xff ; 0x2339
    je short loc_2373                ; 0x233d
    mov ax, 0                        ; 0x233f
    push ax                          ; 0x2342
    push ax                          ; 0x2343
    push ax                          ; 0x2344
    push word [bp + 0x10]            ; 0x2345
    push word [bp + 0x4]             ; 0x2348
    mov ax, 0xffff                   ; 0x234b
    push ax                          ; 0x234e
    push word [bp - 0x0004]          ; 0x234f
    mov ax, 0                        ; 0x2352
    push ax                          ; 0x2355
    push ax                          ; 0x2356
    push ax                          ; 0x2357
    cmp word [bp + 0x4], byte 1      ; 0x2358
    jne short loc_2361               ; 0x235c
    mov ax, 2                        ; 0x235e
    push ax                          ; 0x2361
    mov ax, 0xffff                   ; 0x2362
    push ax                          ; 0x2365
    push word [bp - 0x0002]          ; 0x2366
    mov ax, 0xff                     ; 0x2369
    push ax                          ; 0x236c
    call api_idx_0004_5              ; 0x236d
    add sp, byte 0x1c                ; 0x2370
    jmp near @..api_idx_0010.l13     ; 0x2373
    cmp word [bp - 0x0002], byte 0xff ; 0x2376
    je short loc_23aa                ; 0x237a
    mov ax, 0                        ; 0x237c
    push ax                          ; 0x237f
    push ax                          ; 0x2380
    push ax                          ; 0x2381
    push word [bp + 0x14]            ; 0x2382
    push word [bp + 0x4]             ; 0x2385
    mov ax, 0xffff                   ; 0x2388
    push ax                          ; 0x238b
    push word [bp - 0x0004]          ; 0x238c
    mov ax, 0                        ; 0x238f
    push ax                          ; 0x2392
    push ax                          ; 0x2393
    push ax                          ; 0x2394
    mov ax, 2                        ; 0x2395
    push ax                          ; 0x2398
    mov ax, 0xffff                   ; 0x2399
    push ax                          ; 0x239c
    push word [bp - 0x0002]          ; 0x239d
    mov ax, 0xff                     ; 0x23a0
    push ax                          ; 0x23a3
    call api_idx_0004_5              ; 0x23a4
    add sp, byte 0x1c                ; 0x23a7
    jmp near @..api_idx_0010.l13     ; 0x23aa
    cmp word [data_91a8], byte 0     ; 0x23ad
    jne short loc_240d               ; 0x23b2
    cmp word [bp + 0x4], byte 3      ; 0x23b4
    jge short loc_240a               ; 0x23b8
    mov ax, 0                        ; 0x23ba
    push ax                          ; 0x23bd
    push ax                          ; 0x23be
    push ax                          ; 0x23bf
    push word [bp + 0xa]             ; 0x23c0
    push word [bp + 0x4]             ; 0x23c3
    mov ax, 0xffff                   ; 0x23c6
    push ax                          ; 0x23c9
    mov ax, word [bp + 0x16]         ; 0x23ca
    add ax, word [bp + 0x4]          ; 0x23cd
    push ax                          ; 0x23d0
    call loc_1913                    ; 0x23d1
    pop cx                           ; 0x23d4
    push ax                          ; 0x23d5
    mov ax, 0                        ; 0x23d6
    push ax                          ; 0x23d9
    push ax                          ; 0x23da
    push ax                          ; 0x23db
    mov cx, word [bp + 0x4]          ; 0x23dc
    cmp cx, byte 1                   ; 0x23df
    jne short loc_23e7               ; 0x23e2
    mov ax, 2                        ; 0x23e4
    push ax                          ; 0x23e7
    mov ax, 0xffff                   ; 0x23e8
    push ax                          ; 0x23eb
    add cx, word [bp + 0x18]         ; 0x23ec
    db 0x8b, 0xc1 ; mov ax, cx
    push ax                          ; 0x23f1
    mov ax, word [bp + 0x16]         ; 0x23f2
    add ax, word [bp + 0x4]          ; 0x23f5
    push ax                          ; 0x23f8
    call loc_1927                    ; 0x23f9
    add sp, byte 4                   ; 0x23fc
    push ax                          ; 0x23ff
    mov ax, 0xff                     ; 0x2400
    push ax                          ; 0x2403
    call api_idx_0004_5              ; 0x2404
    add sp, byte 0x1c                ; 0x2407
    jmp near loc_24be                ; 0x240a
    cmp word [data_91a8], byte 3     ; 0x240d
    jl short loc_241b                ; 0x2412
    cmp word [data_91a8], byte 5     ; 0x2414
    jne short loc_246a               ; 0x2419
    cmp word [bp + 0x4], byte 4      ; 0x241b
    jge short loc_2468               ; 0x241f
    mov ax, 0                        ; 0x2421
    push ax                          ; 0x2424
    push ax                          ; 0x2425
    push ax                          ; 0x2426
    push word [bp + 0x10]            ; 0x2427
    push word [bp + 0x4]             ; 0x242a
    push word [bp - 0x0004]          ; 0x242d
    mov ax, word [bp + 0x32]         ; 0x2430
    add ax, word [bp + 0x4]          ; 0x2433
    push ax                          ; 0x2436
    call loc_1913                    ; 0x2437
    pop cx                           ; 0x243a
    push ax                          ; 0x243b
    mov ax, 0                        ; 0x243c
    push ax                          ; 0x243f
    push ax                          ; 0x2440
    mov ax, 2                        ; 0x2441
    push ax                          ; 0x2444
    push ax                          ; 0x2445
    push word [bp - 0x0002]          ; 0x2446
    mov ax, word [bp + 0x34]         ; 0x2449
    add ax, word [bp + 0x4]          ; 0x244c
    push ax                          ; 0x244f
    mov ax, word [bp + 0x32]         ; 0x2450
    add ax, word [bp + 0x4]          ; 0x2453
    push ax                          ; 0x2456
    call loc_1927                    ; 0x2457
    add sp, byte 4                   ; 0x245a
    push ax                          ; 0x245d
    mov ax, 0xff                     ; 0x245e
    push ax                          ; 0x2461
    call api_idx_0004_5              ; 0x2462
    add sp, byte 0x1c                ; 0x2465
    jmp short loc_24be               ; 0x2468
    cmp word [data_91a8], byte 5     ; 0x246a
    jge short loc_24be               ; 0x246f
    cmp word [bp + 0x4], byte 4      ; 0x2471
    db 0x7d, 0x47 ; jge short loc_24be
    mov ax, 0                        ; 0x2477
    push ax                          ; 0x247a
    push ax                          ; 0x247b
    push ax                          ; 0x247c
    push word [bp + 0x14]            ; 0x247d
    push word [bp + 0x4]             ; 0x2480
    push word [bp - 0x0004]          ; 0x2483
    mov ax, word [bp + 0x46]         ; 0x2486
    add ax, word [bp + 0x4]          ; 0x2489
    push ax                          ; 0x248c
    call loc_1913                    ; 0x248d
    pop cx                           ; 0x2490
