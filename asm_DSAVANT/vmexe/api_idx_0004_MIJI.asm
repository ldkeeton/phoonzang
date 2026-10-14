; auto-generated
api_idx_0004_MIJI:
    mov ax, 0xfffc                   ; 0x24f0
    call aztec_csav                  ; 0x24f3
    mov ax, word [bp + 0x4]          ; 0x24f6
    shl ax, 1                        ; 0x24f9
    mov bx, ax                       ; 0x24fb
    mov bx, word [bx - 0x7b7e]       ; 0x24fd
    mov si, word [bp + 0x6]          ; 0x2501
    mov al, byte [bx + si + 0x18c]   ; 0x2504
    sub ah, ah                       ; 0x2508
    mov word [bp - 0x0002], ax       ; 0x250a
    push word [bp + 0xa]             ; 0x250d
    call ds_app_GGUI                 ; 0x2510
    pop cx                           ; 0x2513
    mov cx, ax                       ; 0x2514
    mov ax, word [bp - 0x0002]       ; 0x2516
    cmp cx, ax                       ; 0x2519
    jge short @..api_idx_0004_MIJI.l2 ; 0x251b
    mov bx, word [bp + 0x8]          ; 0x251d
    imul bx                          ; 0x2520
    mov cx, 0x64                     ; 0x2522
    mov bx, 0                        ; 0x2525
    call aztec_ldv                   ; 0x2528
    mov word [bp - 0x0004], ax       ; 0x252b
@..api_idx_0004_MIJI.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x252e
    jle short @..api_idx_0004_MIJI.l2 ; 0x2532
    mov ax, 2                        ; 0x2534
    push ax                          ; 0x2537
    call ds_app_GGUI                 ; 0x2538
    pop cx                           ; 0x253b
    sub word [bp + 0x8], ax          ; 0x253c
    dec word [bp - 0x0004]           ; 0x253f
    jmp short @..api_idx_0004_MIJI.l1 ; 0x2542
@..api_idx_0004_MIJI.l2:
    cmp word [bp + 0x8], byte 1      ; 0x2544
    jge short @..api_idx_0004_MIJI.l3 ; 0x2548
    mov word [bp + 0x8], 1           ; 0x254a
@..api_idx_0004_MIJI.l3:
    mov ax, word [bp + 0x8]          ; 0x254f
    ret                              ; 0x2552
loc_2553:
    mov ax, 0                        ; 0x2553
    call aztec_csav                  ; 0x2556
    mov ax, word [bp + 0x6]          ; 0x2559
    jmp short @..loc_2553.l4         ; 0x255c
@..loc_2553.l1:
    mov ax, 0xa                      ; 0x255e
    push ax                          ; 0x2561
    push word [bp + 0x8]             ; 0x2562
    mov ax, 0                        ; 0x2565
    push ax                          ; 0x2568
    push word [bp + 0x4]             ; 0x2569
    call api_idx_0004_MIJI           ; 0x256c
    add sp, byte 8                   ; 0x256f
    mov word [bp + 0x8], ax          ; 0x2572
    jmp short @..loc_2553.l5         ; 0x2575
@..loc_2553.l2:
    mov ax, 0xa                      ; 0x2577
    push ax                          ; 0x257a
    push word [bp + 0x8]             ; 0x257b
    mov ax, 1                        ; 0x257e
    push ax                          ; 0x2581
    push word [bp + 0x4]             ; 0x2582
    call api_idx_0004_MIJI           ; 0x2585
    add sp, byte 8                   ; 0x2588
    mov word [bp + 0x8], ax          ; 0x258b
    jmp short @..loc_2553.l5         ; 0x258e
@..loc_2553.l3:
    mov ax, 0xa                      ; 0x2590
    push ax                          ; 0x2593
    push word [bp + 0x8]             ; 0x2594
    mov ax, 3                        ; 0x2597
    push ax                          ; 0x259a
    push word [bp + 0x4]             ; 0x259b
    call api_idx_0004_MIJI           ; 0x259e
    add sp, byte 8                   ; 0x25a1
    mov word [bp + 0x8], ax          ; 0x25a4
    jmp short @..loc_2553.l5         ; 0x25a7
@..loc_2553.l4:
    cmp ax, strict word 1            ; 0x25a9
    je short @..loc_2553.l1          ; 0x25ac
    cmp ax, strict word 3            ; 0x25ae
    je short @..loc_2553.l2          ; 0x25b1
    cmp ax, strict word 5            ; 0x25b3
    je short @..loc_2553.l3          ; 0x25b6
@..loc_2553.l5:
    mov ax, 0xa                      ; 0x25b8
    push ax                          ; 0x25bb
    push word [bp + 0x8]             ; 0x25bc
    mov ax, 4                        ; 0x25bf
    push ax                          ; 0x25c2
    push word [bp + 0x4]             ; 0x25c3
    call api_idx_0004_MIJI           ; 0x25c6
    add sp, byte 8                   ; 0x25c9
    mov word [bp + 0x8], ax          ; 0x25cc
    ret                              ; 0x25cf
