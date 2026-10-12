api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x245b
    call ds_aztec_csav               ; 0x245e
    mov word [bp - 0x0002], 0        ; 0x2461
@..api_idx_0004_6.l1:
    mov ax, word [bp - 0x0002]       ; 0x2466
    cmp ax, word [bss_8468]          ; 0x2469
    jge short @..api_idx_0004_6.l2   ; 0x246d
    shl ax, 1                        ; 0x246f
    mov bx, ax                       ; 0x2471
    mov bx, word [bx - 0x7b96]       ; 0x2473
    mov al, byte [bx + 0x14]         ; 0x2477
    sub ah, ah                       ; 0x247a
    cmp ax, word [bp + 0x4]          ; 0x247c
    jg short @..api_idx_0004_6.l2    ; 0x247f
    inc word [bp - 0x0002]           ; 0x2481
    jmp short @..api_idx_0004_6.l1   ; 0x2484
@..api_idx_0004_6.l2:
    mov ax, word [bss_8468]          ; 0x2486
    mov word [bp - 0x0004], ax       ; 0x2489
    jmp short @..api_idx_0004_6.l4   ; 0x248c
@..api_idx_0004_6.l3:
    mov ax, word [bp - 0x0004]       ; 0x248e
    shl ax, 1                        ; 0x2491
    mov bx, ax                       ; 0x2493
    mov si, word [bx - 0x7b98]       ; 0x2495
    mov di, word [bx - 0x7b96]       ; 0x2499
    mov cx, ds                       ; 0x249d
    mov es, cx                       ; 0x249f
    mov cx, 0xc                      ; 0x24a1
    rep movsw                        ; 0x24a4
    dec word [bp - 0x0004]           ; 0x24a6
@..api_idx_0004_6.l4:
    mov ax, word [bp - 0x0004]       ; 0x24a9
    cmp ax, word [bp - 0x0002]       ; 0x24ac
    jg short @..api_idx_0004_6.l3    ; 0x24af
    cmp word [bp - 0x0002], byte 0x0c ; 0x24b1
    jl short @..api_idx_0004_6.l6    ; 0x24b5
@..api_idx_0004_6.l5:
    mov ax, 0                        ; 0x24b7
    push ax                          ; 0x24ba
    call ds_app_0a27                 ; 0x24bb
    pop cx                           ; 0x24be
    jmp short @..api_idx_0004_6.l5   ; 0x24bf
@..api_idx_0004_6.l6:
    mov al, byte [bp + 0x4]          ; 0x24c1
    mov cx, word [bp - 0x0002]       ; 0x24c4
    shl cx, 1                        ; 0x24c7
    mov bx, cx                       ; 0x24c9
    mov bx, word [bx - 0x7b96]       ; 0x24cb
    mov byte [bx + 0x14], al         ; 0x24cf
    mov al, byte [bp + 0x6]          ; 0x24d2
    mov cx, word [bp - 0x0002]       ; 0x24d5
    shl cx, 1                        ; 0x24d8
    mov bx, cx                       ; 0x24da
    mov bx, word [bx - 0x7b96]       ; 0x24dc
    mov byte [bx + 0x15], al         ; 0x24e0
    mov ax, word [bp + 0x8]          ; 0x24e3
    mov cx, word [bp - 0x0002]       ; 0x24e6
    shl cx, 1                        ; 0x24e9
    mov bx, cx                       ; 0x24eb
    mov bx, word [bx - 0x7b96]       ; 0x24ed
    mov word [bx], ax                ; 0x24f1
    mov ax, word [bp + 0xa]          ; 0x24f3
    mov cx, word [bp - 0x0002]       ; 0x24f6
    shl cx, 1                        ; 0x24f9
    mov bx, cx                       ; 0x24fb
    mov bx, word [bx - 0x7b96]       ; 0x24fd
    mov word [bx + 0x2], ax          ; 0x2501
    mov ax, word [bp + 0xc]          ; 0x2504
    mov cx, word [bp - 0x0002]       ; 0x2507
    shl cx, 1                        ; 0x250a
    mov bx, cx                       ; 0x250c
    mov bx, word [bx - 0x7b96]       ; 0x250e
    mov word [bx + 0x4], ax          ; 0x2512
    mov ax, word [bp + 0xe]          ; 0x2515
    mov cx, word [bp - 0x0002]       ; 0x2518
    shl cx, 1                        ; 0x251b
    mov bx, cx                       ; 0x251d
    mov bx, word [bx - 0x7b96]       ; 0x251f
    mov word [bx + 0x6], ax          ; 0x2523
    mov al, byte [bp + 0x10]         ; 0x2526
    mov cx, word [bp - 0x0002]       ; 0x2529
    shl cx, 1                        ; 0x252c
    mov bx, cx                       ; 0x252e
    mov bx, word [bx - 0x7b96]       ; 0x2530
    mov byte [bx + 0x16], al         ; 0x2534
    mov al, byte [bp + 0x12]         ; 0x2537
    mov cx, word [bp - 0x0002]       ; 0x253a
    shl cx, 1                        ; 0x253d
    mov bx, cx                       ; 0x253f
    mov bx, word [bx - 0x7b96]       ; 0x2541
    mov byte [bx + 0x17], al         ; 0x2545
    push word [bp + 0x14]            ; 0x2548
    mov ax, word [bp - 0x0002]       ; 0x254b
    shl ax, 1                        ; 0x254e
    mov bx, ax                       ; 0x2550
    mov ax, word [bx - 0x7b96]       ; 0x2552
    add ax, strict word 8            ; 0x2556
    push ax                          ; 0x2559
    call ds_aztec_strcpy             ; 0x255a
    add sp, byte 4                   ; 0x255d
    inc word [bss_8468]              ; 0x2560
    ret                              ; 0x2564
