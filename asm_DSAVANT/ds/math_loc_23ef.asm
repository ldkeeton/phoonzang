math_loc_23ef:
    mov ax, 0xff46                   ; 0x23ef
    call aztec_csav                  ; 0x23f2
    mov word [bp - 0x00b0], 0x37     ; 0x23f5
    mov word [bp - 0x00b2], 0x8f     ; 0x23fb
    mov word [bp - 0x00b4], 0x108    ; 0x2401
    mov word [bp - 0x00b6], 0xc5     ; 0x2407
    mov ax, word [bp - 0x00b6]       ; 0x240d
    inc ax                           ; 0x2411
    push ax                          ; 0x2412
    mov ax, word [bp - 0x00b4]       ; 0x2413
    inc ax                           ; 0x2417
    push ax                          ; 0x2418
    mov ax, word [bp - 0x00b2]       ; 0x2419
    dec ax                           ; 0x241d
    push ax                          ; 0x241e
    mov ax, word [bp - 0x00b0]       ; 0x241f
    dec ax                           ; 0x2423
    push ax                          ; 0x2424
    call loc_3b6f                    ; 0x2425
    add sp, byte 8                   ; 0x2428
    mov word [bp - 0x00b8], dx       ; 0x242b
    mov word [bp - 0x00ba], ax       ; 0x242f
    mov ax, 0                        ; 0x2433
    push ax                          ; 0x2436
    call loc_415b                    ; 0x2437
    pop cx                           ; 0x243a
    mov ax, word [bp + 0x6]          ; 0x243b
    mov word [bp - 0x00ae], ax       ; 0x243e
    push word [bp + 0x4]             ; 0x2442
    lea ax, word [bp - 0x0078]       ; 0x2445
    push ax                          ; 0x2448
    call aztec_strcpy                ; 0x2449
    add sp, byte 4                   ; 0x244c
    cmp word [bp + 0x8], byte 0      ; 0x244f
    je short @..math_loc_23ef.l1     ; 0x2453
    push word [data_0e24]            ; 0x2455
    call aztec_close                 ; 0x2459
    pop cx                           ; 0x245c
    push word [data_0e22]            ; 0x245d
    call aztec_close                 ; 0x2461
    pop cx                           ; 0x2464
@..math_loc_23ef.l1:
    mov word [bp - 0x00aa], 0xfffe   ; 0x2465
@..math_loc_23ef.l2:
    mov word [bp - 0x00a8], 0        ; 0x246b
@..math_loc_23ef.l3:
    cmp word [bp + 0x6], byte 0      ; 0x2471
    jge short @..math_loc_23ef.l4    ; 0x2475
    mov ax, 0xb74                    ; 0x2477
    push ax                          ; 0x247a
    lea ax, word [bp - 0x0050]       ; 0x247b
    push ax                          ; 0x247e
    call aztec_strcpy                ; 0x247f
    add sp, byte 4                   ; 0x2482
    jmp short @..math_loc_23ef.l5    ; 0x2485
@..math_loc_23ef.l4:
    mov ax, word [bp + 0x6]          ; 0x2487
    add ax, strict word 0x41         ; 0x248a
    mov byte [bp - 0x00a0], al       ; 0x248d
    mov byte [bp - 0x009f], 0        ; 0x2491
    mov ax, 0xb89                    ; 0x2496
    push ax                          ; 0x2499
    lea ax, word [bp - 0x0050]       ; 0x249a
    push ax                          ; 0x249d
    call aztec_strcpy                ; 0x249e
    add sp, byte 4                   ; 0x24a1
    mov ax, 0x5e                     ; 0x24a4
    push ax                          ; 0x24a7
    lea ax, word [bp - 0x00a0]       ; 0x24a8
    push ax                          ; 0x24ac
    lea ax, word [bp - 0x0050]       ; 0x24ad
    push ax                          ; 0x24b0
    call loc_0547                    ; 0x24b1
    add sp, byte 6                   ; 0x24b4
@..math_loc_23ef.l5:
    push word [bp - 0x00b6]          ; 0x24b7
    push word [bp - 0x00b4]          ; 0x24bb
    push word [bp - 0x00b2]          ; 0x24bf
    push word [bp - 0x00b0]          ; 0x24c3
    call loc_0ee1                    ; 0x24c7
    add sp, byte 8                   ; 0x24ca
    mov ax, 0xc2                     ; 0x24cd
    push ax                          ; 0x24d0
    mov ax, 1                        ; 0x24d1
    push ax                          ; 0x24d4
    call loc_3a6a                    ; 0x24d5
    add sp, byte 4                   ; 0x24d8
    mov ax, word [bp - 0x00b2]       ; 0x24db
    add ax, strict word 0xc          ; 0x24df
    push ax                          ; 0x24e2
    lea ax, word [bp - 0x0050]       ; 0x24e3
    push ax                          ; 0x24e6
    call aztec_strlen                ; 0x24e7
    pop cx                           ; 0x24ea
    mov cx, 6                        ; 0x24eb
    imul cx                          ; 0x24ee
    mov cx, ax                       ; 0x24f0
    mov ax, word [bp - 0x00b4]       ; 0x24f2
    sub ax, word [bp - 0x00b0]       ; 0x24f6
    inc ax                           ; 0x24fa
    sub ax, cx                       ; 0x24fb
    mov cx, data_0002                ; 0x24fd
    cwd                              ; 0x2500
    idiv cx                          ; 0x2501
    add ax, word [bp - 0x00b0]       ; 0x2503
    push ax                          ; 0x2507
    call loc_3a50                    ; 0x2508
    add sp, byte 4                   ; 0x250b
    mov ax, 0                        ; 0x250e
    push ax                          ; 0x2511
    lea ax, word [bp - 0x0050]       ; 0x2512
    push ax                          ; 0x2515
    call string_loc_3a95             ; 0x2516
    add sp, byte 4                   ; 0x2519
    mov ax, 0xb99                    ; 0x251c
    push ax                          ; 0x251f
    lea ax, word [bp - 0x0050]       ; 0x2520
    push ax                          ; 0x2523
    call aztec_strcpy                ; 0x2524
    add sp, byte 4                   ; 0x2527
    mov ax, 0x5e                     ; 0x252a
    push ax                          ; 0x252d
    lea ax, word [bp - 0x0078]       ; 0x252e
    push ax                          ; 0x2531
    lea ax, word [bp - 0x0050]       ; 0x2532
    push ax                          ; 0x2535
    call loc_0547                    ; 0x2536
    add sp, byte 6                   ; 0x2539
    mov ax, word [bp - 0x00b2]       ; 0x253c
    add ax, strict word 0x12         ; 0x2540
    push ax                          ; 0x2543
    lea ax, word [bp - 0x0050]       ; 0x2544
    push ax                          ; 0x2547
    call aztec_strlen                ; 0x2548
    pop cx                           ; 0x254b
    mov cx, 6                        ; 0x254c
    imul cx                          ; 0x254f
    mov cx, ax                       ; 0x2551
    mov ax, word [bp - 0x00b4]       ; 0x2553
    sub ax, word [bp - 0x00b0]       ; 0x2557
    inc ax                           ; 0x255b
    sub ax, cx                       ; 0x255c
    mov cx, data_0002                ; 0x255e
    cwd                              ; 0x2561
    idiv cx                          ; 0x2562
    add ax, word [bp - 0x00b0]       ; 0x2564
    push ax                          ; 0x2568
    call loc_3a50                    ; 0x2569
    add sp, byte 4                   ; 0x256c
    mov ax, 0                        ; 0x256f
    push ax                          ; 0x2572
    lea ax, word [bp - 0x0050]       ; 0x2573
    push ax                          ; 0x2576
    call string_loc_3a95             ; 0x2577
    add sp, byte 4                   ; 0x257a
    mov ax, 0xba6                    ; 0x257d
    push ax                          ; 0x2580
    mov ax, 1                        ; 0x2581
    push ax                          ; 0x2584
    push ax                          ; 0x2585
    mov ax, 0xc                      ; 0x2586
    push ax                          ; 0x2589
    mov ax, word [bp - 0x00b2]       ; 0x258a
    add ax, strict word 0x27         ; 0x258e
    push ax                          ; 0x2591
    mov ax, word [bp - 0x00b0]       ; 0x2592
    add ax, strict word 0x44         ; 0x2596
    push ax                          ; 0x2599
    call math_loc_1308               ; 0x259a
    add sp, byte 0x0c                ; 0x259d
    mov ax, 0                        ; 0x25a0
    push ax                          ; 0x25a3
    mov ax, 0xd                      ; 0x25a4
    push ax                          ; 0x25a7
    mov ax, word [bp - 0x00b2]       ; 0x25a8
    add ax, strict word 0x2f         ; 0x25ac
    push ax                          ; 0x25af
    mov ax, word [bp - 0x00b0]       ; 0x25b0
    add ax, 0x8c                     ; 0x25b4
    push ax                          ; 0x25b7
    mov ax, word [bp - 0x00b2]       ; 0x25b8
    add ax, strict word 0x27         ; 0x25bc
    push ax                          ; 0x25bf
    mov ax, word [bp - 0x00b0]       ; 0x25c0
    add ax, strict word 0x44         ; 0x25c4
    push ax                          ; 0x25c7
    mov ax, 0                        ; 0x25c8
    push ax                          ; 0x25cb
    call loc_0ced                    ; 0x25cc
    add sp, byte 0x0e                ; 0x25cf
    mov ax, 0                        ; 0x25d2
    push ax                          ; 0x25d5
    push ax                          ; 0x25d6
    push ax                          ; 0x25d7
    push ax                          ; 0x25d8
    push ax                          ; 0x25d9
    mov ax, 0xffff                   ; 0x25da
    push ax                          ; 0x25dd
    mov ax, 1                        ; 0x25de
    push ax                          ; 0x25e1
    call loc_0ced                    ; 0x25e2
    add sp, byte 0x0e                ; 0x25e5
    mov ax, word [bp - 0x00b6]       ; 0x25e8
    inc ax                           ; 0x25ec
    push ax                          ; 0x25ed
