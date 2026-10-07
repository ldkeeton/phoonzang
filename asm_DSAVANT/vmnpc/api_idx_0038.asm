api_idx_0038:
    mov ax, 0xffc8                   ; 0x24ae
    db 0xe8, 0x57, 0xcf ; call 0xf40b
    mov ax, 0                        ; 0x24b4
    push ax                          ; 0x24b7
    mov ax, 0x2c                     ; 0x24b8
    push ax                          ; 0x24bb
    lea ax, word [bp - 0x0038]       ; 0x24bc
    push ax                          ; 0x24bf
    call 0xf306                      ; 0x24c0
    add sp, byte 6                   ; 0x24c3
    mov word [bp - 0x0004], 0        ; 0x24c6
    mov word [bp - 0x0002], 0        ; 0x24cb
@..api_idx_0038.l1:
    mov ax, 0x26                     ; 0x24d0
    imul word [bp - 0x0002]          ; 0x24d3
    mov bx, ax                       ; 0x24d6
    cmp byte [bx - 0x7b00], 0        ; 0x24d8
    jle short @..api_idx_0038.l3     ; 0x24dd
    mov al, byte [bx - 0x7b18]       ; 0x24df
    sub ah, ah                       ; 0x24e3
    cmp ax, word [bp + 0x4]          ; 0x24e5
    je short @..api_idx_0038.l2      ; 0x24e8
    cmp word [bp + 0x4], byte 0xff   ; 0x24ea
    jne short @..api_idx_0038.l3     ; 0x24ee
    mov al, byte [bx - 0x7b14]       ; 0x24f0
    sub ah, ah                       ; 0x24f4
    shl ax, 1                        ; 0x24f6
    shl ax, 1                        ; 0x24f8
    mov bx, ax                       ; 0x24fa
    mov al, byte [bx - 0x7687]       ; 0x24fc
    cbw                              ; 0x2500
    cmp ax, word [data_830c]         ; 0x2501
    je short @..api_idx_0038.l2      ; 0x2505
    mov ax, 0x26                     ; 0x2507
    imul word [bp - 0x0002]          ; 0x250a
    mov bx, ax                       ; 0x250d
    mov al, byte [bx - 0x7b18]       ; 0x250f
    cmp al, byte [data_91c7]         ; 0x2513
    jne short @..api_idx_0038.l3     ; 0x2517
@..api_idx_0038.l2:
    mov ax, word [bp - 0x0002]       ; 0x2519
    shl ax, 1                        ; 0x251c
    mov bx, ax                       ; 0x251e
    add bx, bp                       ; 0x2520
    mov word [bx - 0x0038], 1        ; 0x2522
    inc word [bp - 0x0004]           ; 0x2527
@..api_idx_0038.l3:
    inc word [bp - 0x0002]           ; 0x252a
    mov ax, word [bp - 0x0002]       ; 0x252d
    cmp ax, strict word 0x15         ; 0x2530
    jl short @..api_idx_0038.l1      ; 0x2533
    mov byte [data_93f0], 0          ; 0x2535
@..api_idx_0038.l4:
    cmp word [bp - 0x0004], byte 0   ; 0x253a
    jg short @..api_idx_0038.l5      ; 0x253e
    jmp near @..api_idx_0038.l17     ; 0x2540
@..api_idx_0038.l5:
    cmp byte [data_93f0], 0          ; 0x2543
    je short @..api_idx_0038.l6      ; 0x2548
    jmp near @..api_idx_0038.l17     ; 0x254a
@..api_idx_0038.l6:
    mov ax, 0x16                     ; 0x254d
    push ax                          ; 0x2550
    db 0xe8, 0x55, 0x92 ; call 0xb7a9
    pop cx                           ; 0x2554
    mov word [bp - 0x0002], ax       ; 0x2555
    mov ax, word [bp - 0x0002]       ; 0x2558
    shl ax, 1                        ; 0x255b
    mov bx, ax                       ; 0x255d
    add bx, bp                       ; 0x255f
    cmp word [bx - 0x0038], byte 0   ; 0x2561
    je short @..api_idx_0038.l6      ; 0x2565
    mov ax, word [bp - 0x0002]       ; 0x2567
    shl ax, 1                        ; 0x256a
    mov bx, ax                       ; 0x256c
    add bx, bp                       ; 0x256e
    mov word [bx - 0x0038], 0        ; 0x2570
    dec word [bp - 0x0004]           ; 0x2575
    mov ax, 5                        ; 0x2578
    push ax                          ; 0x257b
    db 0xe8, 0x2a, 0x92 ; call 0xb7a9
    pop cx                           ; 0x257f
    mov word [bp - 0x0006], ax       ; 0x2580
    mov word [bp - 0x0008], 0        ; 0x2583
@..api_idx_0038.l7:
    mov ax, 5                        ; 0x2588
    imul word [bp - 0x0002]          ; 0x258b
    add ax, word [bp - 0x0006]       ; 0x258e
    mov bx, ax                       ; 0x2591
    cmp byte [bx - 0x6b10], 0        ; 0x2593
    jne short @..api_idx_0038.l8     ; 0x2598
    mov ax, 0xf                      ; 0x259a
    imul word [bp - 0x0002]          ; 0x259d
    push ax                          ; 0x25a0
    mov ax, 3                        ; 0x25a1
    imul word [bp - 0x0006]          ; 0x25a4
    mov cx, ax                       ; 0x25a7
    pop ax                           ; 0x25a9
    add ax, cx                       ; 0x25aa
    mov bx, ax                       ; 0x25ac
    cmp byte [bx - 0x77d4], 0xff     ; 0x25ae
    jne short @..api_idx_0038.l9     ; 0x25b3
@..api_idx_0038.l8:
    cmp word [bp - 0x0008], byte 5   ; 0x25b5
    jge short @..api_idx_0038.l9     ; 0x25b9
    mov ax, word [bp - 0x0006]       ; 0x25bb
    inc ax                           ; 0x25be
    mov cx, 5                        ; 0x25bf
    cwd                              ; 0x25c2
    idiv cx                          ; 0x25c3
    mov word [bp - 0x0006], dx       ; 0x25c5
    inc word [bp - 0x0008]           ; 0x25c8
    jmp short @..api_idx_0038.l7     ; 0x25cb
@..api_idx_0038.l9:
    mov ax, 0xf                      ; 0x25cd
    imul word [bp - 0x0002]          ; 0x25d0
    push ax                          ; 0x25d3
    mov ax, 3                        ; 0x25d4
    imul word [bp - 0x0006]          ; 0x25d7
    mov cx, ax                       ; 0x25da
    pop ax                           ; 0x25dc
    add ax, cx                       ; 0x25dd
    mov bx, ax                       ; 0x25df
    cmp byte [bx - 0x77d4], 0xff     ; 0x25e1
    jne short @..api_idx_0038.l10    ; 0x25e6
    jmp near @..api_idx_0038.l16     ; 0x25e8
@..api_idx_0038.l10:
    mov ax, 5                        ; 0x25eb
    imul word [bp - 0x0002]          ; 0x25ee
    add ax, word [bp - 0x0006]       ; 0x25f1
    mov bx, ax                       ; 0x25f4
    cmp byte [bx - 0x6b10], 0        ; 0x25f6
    je short @..api_idx_0038.l11     ; 0x25fb
    jmp near @..api_idx_0038.l16     ; 0x25fd
@..api_idx_0038.l11:
    mov byte [bx - 0x6b10], 1        ; 0x2600
    mov ax, data_93f0                ; 0x2605
    push ax                          ; 0x2608
    mov ax, 0xf                      ; 0x2609
    imul word [bp - 0x0002]          ; 0x260c
    add ax, cx                       ; 0x260f
    mov bx, ax                       ; 0x2611
    mov al, byte [bx - 0x77d3]       ; 0x2613
    cbw                              ; 0x2617
    add ax, 0x73a                    ; 0x2618
    push ax                          ; 0x261b
    db 0xe8, 0x1c, 0x8f ; call 0xb53b
    add sp, byte 4                   ; 0x261f
    mov ax, 0x955e                   ; 0x2622
    push ax                          ; 0x2625
    mov al, byte [data_91c6]         ; 0x2626
    cbw                              ; 0x2629
    cmp ax, word [bp - 0x0002]       ; 0x262a
    jne short @..api_idx_0038.l12    ; 0x262d
    mov ax, 0x66a                    ; 0x262f
    jmp short @..api_idx_0038.l13    ; 0x2632
@..api_idx_0038.l12:
    mov ax, word [bp - 0x0002]       ; 0x2634
    add ax, 0x6a4                    ; 0x2637
@..api_idx_0038.l13:
    push ax                          ; 0x263a
    db 0xe8, 0xfd, 0x8e ; call 0xb53b
    add sp, byte 4                   ; 0x263e
    mov ax, 0xf                      ; 0x2641
    imul word [bp - 0x0002]          ; 0x2644
    push ax                          ; 0x2647
    mov ax, 3                        ; 0x2648
    imul word [bp - 0x0006]          ; 0x264b
    mov cx, ax                       ; 0x264e
    pop ax                           ; 0x2650
    add ax, cx                       ; 0x2651
    mov bx, ax                       ; 0x2653
    mov al, byte [bx - 0x77d3]       ; 0x2655
    cbw                              ; 0x2659
    jmp short @..api_idx_0038.l14    ; 0x265a
    mov word [bp - 0x000a], 0x6a4    ; 0x265c
    mov word [bp - 0x000c], 0x6ea    ; 0x2661
    jmp short @..api_idx_0038.l15    ; 0x2666
    mov word [bp - 0x000a], 0x708    ; 0x2668
    mov word [bp - 0x000c], 0x6a4    ; 0x266d
    jmp short @..api_idx_0038.l15    ; 0x2672
    mov word [bp - 0x000a], 0x708    ; 0x2674
    mov word [bp - 0x000c], 0x6ea    ; 0x2679
    jmp short @..api_idx_0038.l15    ; 0x267e
    mov word [bp - 0x000a], 0x6d6    ; 0x2680
    mov word [bp - 0x000c], 0x6ea    ; 0x2685
    jmp short @..api_idx_0038.l15    ; 0x268a
    mov word [data_a376], ax         ; 0x268c
    jbe short @..api_idx_0038.l12    ; 0x268f
    jbe short loc_2642               ; 0x2691
    jbe short loc_2650               ; 0x2693
    jbe short @..api_idx_0038.l13    ; 0x2695
    jbe short loc_263c               ; 0x2697
    jbe short loc_2656               ; 0x2699
    jbe short loc_2664               ; 0x269b
    jbe short loc_2666               ; 0x269d
    db 0x76, 0xaf ; jbe short loc_2650
    jbe short loc_266a               ; 0x26a1
    db 0x76
@..api_idx_0038.l14:
    cmp ax, strict word 0xc          ; 0x26a4
    jae short @..api_idx_0038.l15    ; 0x26a7
    xchg bx, ax                      ; 0x26a9
    shl bx, 1                        ; 0x26aa
