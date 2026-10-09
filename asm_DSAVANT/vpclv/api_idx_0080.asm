api_idx_0080:
    mov ax, 0xff80                   ; 0x24f0
    call ds_dispatch_f40b            ; 0x24f3
    mov ax, 0                        ; 0x24f6
    push ax                          ; 0x24f9
    push ax                          ; 0x24fa
    push word [data_9424]            ; 0x24fb
    push word [data_9422]            ; 0x24ff
    call ds_dispatch_e942            ; 0x2503
    add sp, byte 8                   ; 0x2506
    mov ax, 0                        ; 0x2509
    push ax                          ; 0x250c
    push ax                          ; 0x250d
    push word [data_9428]            ; 0x250e
    push word [data_9426]            ; 0x2512
    call ds_dispatch_e942            ; 0x2516
    add sp, byte 8                   ; 0x2519
    push word [bp + 0x4]             ; 0x251c
    call api_idx_0012                ; 0x251f
    pop cx                           ; 0x2522
    mov si, ax                       ; 0x2523
    lea di, word [bp - 0x0018]       ; 0x2525
    mov cx, ds                       ; 0x2528
    mov es, cx                       ; 0x252a
    mov cx, 7                        ; 0x252c
    rep movsw                        ; 0x252f
    mov ax, 0x248                    ; 0x2531
    imul word [bp + 0x4]             ; 0x2534
    mov bx, ax                       ; 0x2537
    mov al, byte [bx + 0x5dab]       ; 0x2539
    cbw                              ; 0x253d
    add ax, word [bp - 0x0018]       ; 0x253e
    mov word [bp - 0x000a], ax       ; 0x2541
    mov al, byte [bx + 0x5dac]       ; 0x2544
    cbw                              ; 0x2548
    mov cx, ax                       ; 0x2549
    mov ax, word [bp - 0x000a]       ; 0x254b
    add cx, ax                       ; 0x254e
    mov word [bp - 0x0008], cx       ; 0x2550
    mov al, byte [bx + 0x5daa]       ; 0x2553
    cbw                              ; 0x2557
    add ax, cx                       ; 0x2558
    mov word [bp - 0x0006], ax       ; 0x255a
    lea ax, word [bp - 0x0068]       ; 0x255d
    push ax                          ; 0x2560
    mov ax, 0xd8                     ; 0x2561
    push ax                          ; 0x2564
    call ds_dispatch_b53b            ; 0x2565
    add sp, byte 4                   ; 0x2568
    lea ax, word [bp - 0x0068]       ; 0x256b
    push ax                          ; 0x256e
    call ds_dispatch_fa90            ; 0x256f
    pop cx                           ; 0x2572
    mov word [bp - 0x0004], ax       ; 0x2573
    mov bx, ax                       ; 0x2576
    inc word [bp - 0x0004]           ; 0x2578
    add bx, bp                       ; 0x257b
    mov byte [bx - 0x0068], 0x20     ; 0x257d
    cmp word [bp - 0x0006], byte 0   ; 0x2581
    jle short @..api_idx_0080.l1     ; 0x2585
    mov bx, word [bp - 0x0004]       ; 0x2587
    inc word [bp - 0x0004]           ; 0x258a
    add bx, bp                       ; 0x258d
    mov byte [bx - 0x0068], 0x2b     ; 0x258f
@..api_idx_0080.l1:
    mov ax, word [bp - 0x0004]       ; 0x2593
    lea cx, word [bp - 0x0068]       ; 0x2596
    add ax, cx                       ; 0x2599
    push ax                          ; 0x259b
    push word [bp - 0x0006]          ; 0x259c
    call ds_dispatch_b27d            ; 0x259f
    add sp, byte 4                   ; 0x25a2
    lea ax, word [bp - 0x0068]       ; 0x25a5
    push ax                          ; 0x25a8
    call ds_dispatch_fa90            ; 0x25a9
    pop cx                           ; 0x25ac
    mov word [bp - 0x0004], ax       ; 0x25ad
    mov bx, ax                       ; 0x25b0
    inc word [bp - 0x0004]           ; 0x25b2
    add bx, bp                       ; 0x25b5
    mov byte [bx - 0x0068], 0x20     ; 0x25b7
    mov bx, word [bp - 0x0004]       ; 0x25bb
    inc word [bp - 0x0004]           ; 0x25be
    add bx, bp                       ; 0x25c1
    mov byte [bx - 0x0068], 0x28     ; 0x25c3
    cmp word [bp - 0x0008], byte 0   ; 0x25c7
    jl short @..api_idx_0080.l2      ; 0x25cb
    mov bx, word [bp - 0x0004]       ; 0x25cd
    inc word [bp - 0x0004]           ; 0x25d0
    add bx, bp                       ; 0x25d3
    mov byte [bx - 0x0068], 0x2b     ; 0x25d5
@..api_idx_0080.l2:
    mov ax, word [bp - 0x0004]       ; 0x25d9
    lea cx, word [bp - 0x0068]       ; 0x25dc
    add ax, cx                       ; 0x25df
    push ax                          ; 0x25e1
    push word [bp - 0x0008]          ; 0x25e2
    call ds_dispatch_b27d            ; 0x25e5
    add sp, byte 4                   ; 0x25e8
    lea ax, word [bp - 0x0068]       ; 0x25eb
    push ax                          ; 0x25ee
    call ds_dispatch_fa90            ; 0x25ef
    pop cx                           ; 0x25f2
    mov word [bp - 0x0004], ax       ; 0x25f3
    mov bx, ax                       ; 0x25f6
    inc word [bp - 0x0004]           ; 0x25f8
    add bx, bp                       ; 0x25fb
    mov byte [bx - 0x0068], 0x29     ; 0x25fd
    mov bx, word [bp - 0x0004]       ; 0x2601
    add bx, bp                       ; 0x2604
    mov byte [bx - 0x0068], 0        ; 0x2606
    mov ax, 0                        ; 0x260a
    push ax                          ; 0x260d
    mov ax, 0xeb                     ; 0x260e
    push ax                          ; 0x2611
    call ds_dispatch_e823            ; 0x2612
    add sp, byte 4                   ; 0x2615
    mov ax, 0x1e                     ; 0x2618
    push ax                          ; 0x261b
    lea ax, word [bp - 0x0068]       ; 0x261c
    push ax                          ; 0x261f
    call ds_dispatch_fa90            ; 0x2620
    pop cx                           ; 0x2623
    mov cx, 6                        ; 0x2624
    imul cx                          ; 0x2627
    mov cx, data_0002                ; 0x2629
    cwd                              ; 0x262c
    idiv cx                          ; 0x262d
    mov cx, ax                       ; 0x262f
    mov ax, 0x10e                    ; 0x2631
    sub ax, cx                       ; 0x2634
    push ax                          ; 0x2636
    call ds_dispatch_e809            ; 0x2637
    add sp, byte 4                   ; 0x263a
    mov ax, 0                        ; 0x263d
    push ax                          ; 0x2640
    lea ax, word [bp - 0x0068]       ; 0x2641
    push ax                          ; 0x2644
    call ds_dispatch_e84e            ; 0x2645
    add sp, byte 4                   ; 0x2648
    mov word [bp - 0x0074], 0x114    ; 0x264b
    mov word [bp - 0x0080], 0x2e     ; 0x2650
    mov word [bp - 0x0072], 0x114    ; 0x2655
    mov word [bp - 0x007e], data_0044 ; 0x265a
    mov word [bp - 0x0070], 0x114    ; 0x265f
    mov word [bp - 0x007c], 0x5a     ; 0x2664
    mov word [bp - 0x006e], 0x126    ; 0x2669
    mov word [bp - 0x007a], 0x4f     ; 0x266e
    mov word [bp - 0x006c], 0x114    ; 0x2673
    mov word [bp - 0x0078], 0x70     ; 0x2678
    mov word [bp - 0x0002], 0        ; 0x267d
@..api_idx_0080.l3:
    mov ax, word [bp - 0x0002]       ; 0x2682
    shl ax, 1                        ; 0x2685
    mov bx, ax                       ; 0x2687
    add bx, bp                       ; 0x2689
    push word [bx - 0x0080]          ; 0x268b
    mov bx, ax                       ; 0x268e
    add bx, bp                       ; 0x2690
    push word [bx - 0x0074]          ; 0x2692
    call ds_dispatch_e809            ; 0x2695
    add sp, byte 4                   ; 0x2698
    mov ax, 0                        ; 0x269b
    push ax                          ; 0x269e
    mov ax, 0x248                    ; 0x269f
    imul word [bp + 0x4]             ; 0x26a2
    add ax, word [bp - 0x0002]       ; 0x26a5
    mov bx, ax                       ; 0x26a8
    mov al, byte [bx + 0x5d4b]       ; 0x26aa
    sub ah, ah                       ; 0x26ae
    cmp ax, 0xff                     ; 0x26b0
    je short @..api_idx_0080.l4      ; 0x26b3
    mov ax, 0x5f                     ; 0x26b5
    jmp short @..api_idx_0080.l5     ; 0x26b8
@..api_idx_0080.l4:
    mov ax, 0xeb                     ; 0x26ba
@..api_idx_0080.l5:
    push ax                          ; 0x26bd
    call ds_dispatch_e823            ; 0x26be
    add sp, byte 4                   ; 0x26c1
    mov ax, 0x248                    ; 0x26c4
    imul word [bp + 0x4]             ; 0x26c7
    add ax, word [bp - 0x0002]       ; 0x26ca
    mov bx, ax                       ; 0x26cd
    mov al, byte [bx + 0x5dad]       ; 0x26cf
    cbw                              ; 0x26d3
    add ax, word [bp - 0x0008]       ; 0x26d4
    mov word [bp - 0x0006], ax       ; 0x26d7
    cmp ax, strict word 0            ; 0x26da
    jl short @..api_idx_0080.l6      ; 0x26dd
    mov ax, 0                        ; 0x26df
    push ax                          ; 0x26e2
    mov ax, 0x2b                     ; 0x26e3
    push ax                          ; 0x26e6
    call ds_dispatch_e830            ; 0x26e7
    add sp, byte 4                   ; 0x26ea
@..api_idx_0080.l6:
    lea ax, word [bp - 0x0068]       ; 0x26ed
    push ax                          ; 0x26f0
    push word [bp - 0x0006]          ; 0x26f1
    call ds_dispatch_b27d            ; 0x26f4
    add sp, byte 4                   ; 0x26f7
    mov ax, 0                        ; 0x26fa
    push ax                          ; 0x26fd
    lea ax, word [bp - 0x0068]       ; 0x26fe
    push ax                          ; 0x2701
    call ds_dispatch_e84e            ; 0x2702
    add sp, byte 4                   ; 0x2705
    inc word [bp - 0x0002]           ; 0x2708
    mov ax, word [bp - 0x0002]       ; 0x270b
    cmp ax, strict word 5            ; 0x270e
    jge short @..api_idx_0080.l7     ; 0x2711
    jmp near @..api_idx_0080.l3      ; 0x2713
@..api_idx_0080.l7:
    ret                              ; 0x2716
