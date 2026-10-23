; auto-generated
api_idx_00e6_QNPR:
    mov ax, 0xff1a                   ; 0x73ae
    call aztec_csav                  ; 0x73b1
    mov bx, word [maze_tables]       ; 0x73b4
    mov si, word [party_region]      ; 0x73b8
    cmp byte [bx + si + spell_table + 0x430], 0 ; 0x73bc
    jbe short @..api_idx_00e6_QNPR.l1 ; 0x73c1
    mov ax, 0                        ; 0x73c3
    push ax                          ; 0x73c6
    shl si, 1                        ; 0x73c7
    mov ax, word [bx + si]           ; 0x73c9
    push ax                          ; 0x73cb
    mov si, word [party_region]      ; 0x73cc
    mov al, byte [bx + si + spell_table + 0x430] ; 0x73d0
    sub ah, ah                       ; 0x73d4
    mov cx, ax                       ; 0x73d6
    pop ax                           ; 0x73d8
    add ax, cx                       ; 0x73d9
    push ax                          ; 0x73db
    call loc_KIOQ                    ; 0x73dc
    add sp, byte 4                   ; 0x73df
@..api_idx_00e6_QNPR.l1:
    mov ax, word [party_region]      ; 0x73e2
    shl ax, 1                        ; 0x73e5
    mov si, ax                       ; 0x73e7
    mov bx, word [maze_tables]       ; 0x73e9
    mov ax, word [bx + si + 0x3c0]   ; 0x73ed
    mov word [bp - 0x0008], ax       ; 0x73f1
    mov ax, 4                        ; 0x73f4
    push ax                          ; 0x73f7
    mov ax, 0                        ; 0x73f8
    push ax                          ; 0x73fb
    push word [bp - 0x0008]          ; 0x73fc
    call get_bits                    ; 0x73ff
    add sp, byte 6                   ; 0x7402
    mov word [bp - 0x000e], ax       ; 0x7405
    mov ax, 4                        ; 0x7408
    push ax                          ; 0x740b
    push ax                          ; 0x740c
    push word [bp - 0x0008]          ; 0x740d
    call get_bits                    ; 0x7410
    add sp, byte 6                   ; 0x7413
    mov word [bp - 0x0010], ax       ; 0x7416
    mov ax, 1                        ; 0x7419
    push ax                          ; 0x741c
    mov ax, 8                        ; 0x741d
    push ax                          ; 0x7420
    push word [bp - 0x0008]          ; 0x7421
    call get_bits                    ; 0x7424
    add sp, byte 6                   ; 0x7427
    mov word [bp - 0x0014], ax       ; 0x742a
    mov ax, 1                        ; 0x742d
    push ax                          ; 0x7430
    mov ax, 9                        ; 0x7431
    push ax                          ; 0x7434
    push word [bp - 0x0008]          ; 0x7435
    call get_bits                    ; 0x7438
    add sp, byte 6                   ; 0x743b
    mov word [bp - 0x0016], ax       ; 0x743e
    mov ax, 1                        ; 0x7441
    push ax                          ; 0x7444
    mov ax, 0xc                      ; 0x7445
    push ax                          ; 0x7448
    push word [bp - 0x0008]          ; 0x7449
    call get_bits                    ; 0x744c
    add sp, byte 6                   ; 0x744f
    mov word [bp - 0x0018], ax       ; 0x7452
    mov ax, 1                        ; 0x7455
    push ax                          ; 0x7458
    mov ax, 0xd                      ; 0x7459
    push ax                          ; 0x745c
    push word [bp - 0x0008]          ; 0x745d
    call get_bits                    ; 0x7460
    add sp, byte 6                   ; 0x7463
    mov word [bp - 0x001a], ax       ; 0x7466
    mov ax, 1                        ; 0x7469
    push ax                          ; 0x746c
    mov ax, 0xe                      ; 0x746d
    push ax                          ; 0x7470
    push word [bp - 0x0008]          ; 0x7471
    call get_bits                    ; 0x7474
    add sp, byte 6                   ; 0x7477
    mov word [bp - 0x001c], ax       ; 0x747a
    mov ax, 1                        ; 0x747d
    push ax                          ; 0x7480
    mov ax, 0xf                      ; 0x7481
    push ax                          ; 0x7484
    push word [bp - 0x0008]          ; 0x7485
    call get_bits                    ; 0x7488
    add sp, byte 6                   ; 0x748b
    mov word [bp - 0x0022], ax       ; 0x748e
    mov ax, word [party_region]      ; 0x7491
    shl ax, 1                        ; 0x7494
    mov si, ax                       ; 0x7496
    mov bx, word [maze_tables]       ; 0x7498
    mov ax, word [bx + si]           ; 0x749c
    mov word [bp - 0x000a], ax       ; 0x749e
    cmp word [bp - 0x001a], byte 0   ; 0x74a1
    jne short @..api_idx_00e6_QNPR.l2 ; 0x74a5
    mov ax, treasure_caption         ; 0x74a7
    push ax                          ; 0x74aa
    push word [bp - 0x000a]          ; 0x74ab
    call load_message_string         ; 0x74ae
    add sp, byte 4                   ; 0x74b1
    inc word [bp - 0x000a]           ; 0x74b4
@..api_idx_00e6_QNPR.l2:
    lea ax, word [bp - 0x00c2]       ; 0x74b7
    push ax                          ; 0x74bb
    push word [bp - 0x000a]          ; 0x74bc
    call load_message_string         ; 0x74bf
    add sp, byte 4                   ; 0x74c2
    inc word [bp - 0x000a]           ; 0x74c5
    mov word [bp - 0x0002], 0        ; 0x74c8
    jmp short @..api_idx_00e6_QNPR.l4 ; 0x74cd
@..api_idx_00e6_QNPR.l3:
    mov ax, word [bp - 0x0002]       ; 0x74cf
    shl ax, 1                        ; 0x74d2
    mov bx, ax                       ; 0x74d4
    add bx, bp                       ; 0x74d6
    mov word [bx - 0x00e2], 1        ; 0x74d8
    inc word [bp - 0x0002]           ; 0x74de
@..api_idx_00e6_QNPR.l4:
    mov ax, word [bp - 0x0002]       ; 0x74e1
    cmp ax, word [bp - 0x000e]       ; 0x74e4
    jl short @..api_idx_00e6_QNPR.l3 ; 0x74e7
    mov ax, word [bp - 0x000e]       ; 0x74e9
    shl ax, 1                        ; 0x74ec
    mov bx, ax                       ; 0x74ee
    add bx, bp                       ; 0x74f0
    mov word [bx - 0x00e2], 0xffff   ; 0x74f2
    mov word [treasure_caption_on], 1 ; 0x74f8
    mov ax, 0                        ; 0x74fe
    push ax                          ; 0x7501
    call redraw_treasure_caption     ; 0x7502
    pop cx                           ; 0x7505
    cmp word [bp - 0x001a], byte 1   ; 0x7506
    je short @..api_idx_00e6_QNPR.l5 ; 0x750a
    jmp near @..api_idx_00e6_QNPR.l7 ; 0x750c
@..api_idx_00e6_QNPR.l5:
    lea ax, word [bp - 0x0072]       ; 0x750f
    push ax                          ; 0x7512
    push word [bp - 0x000a]          ; 0x7513
    call load_message_string         ; 0x7516
    add sp, byte 4                   ; 0x7519
    lea ax, word [bp - 0x0072]       ; 0x751c
    push ax                          ; 0x751f
    call aztec_strlen                ; 0x7520
    pop cx                           ; 0x7523
    mov word [bp - 0x000c], ax       ; 0x7524
    lea ax, word [bp - 0x00e2]       ; 0x7527
    push ax                          ; 0x752b
    mov ax, 0                        ; 0x752c
    push ax                          ; 0x752f
    mov ax, 0xffff                   ; 0x7530
    push ax                          ; 0x7533
    mov ax, 1                        ; 0x7534
    push ax                          ; 0x7537
    push word [bp - 0x000e]          ; 0x7538
    mov ax, 3                        ; 0x753b
    push ax                          ; 0x753e
    mov ax, 0xc                      ; 0x753f
    push ax                          ; 0x7542
    mov ax, 6                        ; 0x7543
    imul word [bp - 0x000c]          ; 0x7546
    add ax, strict word 4            ; 0x7549
    push ax                          ; 0x754c
    push word [bp - 0x000c]          ; 0x754d
    mov ax, 0x9c                     ; 0x7550
    push ax                          ; 0x7553
    mov ax, 6                        ; 0x7554
    imul word [bp - 0x000c]          ; 0x7557
    mov cx, 2                        ; 0x755a
    cwd                              ; 0x755d
    idiv cx                          ; 0x755e
    mov cx, ax                       ; 0x7560
    mov ax, 0xa1                     ; 0x7562
    sub ax, cx                       ; 0x7565
    push ax                          ; 0x7567
    mov ax, 0                        ; 0x7568
    push ax                          ; 0x756b
    push word [bp - 0x000a]          ; 0x756c
    call loc_IOMS                    ; 0x756f
    add sp, byte 0x1a                ; 0x7572
    mov word [bp - 0x0006], ax       ; 0x7575
    lea ax, word [bp - 0x0072]       ; 0x7578
    push ax                          ; 0x757b
    mov ax, word [bp - 0x000a]       ; 0x757c
    add ax, word [bp - 0x0006]       ; 0x757f
    push ax                          ; 0x7582
    call load_message_string         ; 0x7583
    add sp, byte 4                   ; 0x7586
    mov ax, 0x1a                     ; 0x7589
    push ax                          ; 0x758c
    mov ax, 3                        ; 0x758d
    push ax                          ; 0x7590
    mov ax, 0xc                      ; 0x7591
    push ax                          ; 0x7594
    mov ax, 6                        ; 0x7595
    imul word [bp - 0x000c]          ; 0x7598
    add ax, strict word 4            ; 0x759b
    push ax                          ; 0x759e
    push word [bp - 0x000c]          ; 0x759f
    mov ax, 0x9c                     ; 0x75a2
    push ax                          ; 0x75a5
    mov ax, 6                        ; 0x75a6
    imul word [bp - 0x000c]          ; 0x75a9
    mov cx, 2                        ; 0x75ac
    cwd                              ; 0x75af
    idiv cx                          ; 0x75b0
    mov cx, ax                       ; 0x75b2
    mov ax, 0xa1                     ; 0x75b4
    sub ax, cx                       ; 0x75b7
    push ax                          ; 0x75b9
    push word [bss_9052]             ; 0x75ba
    lea ax, word [bp - 0x0072]       ; 0x75be
    push ax                          ; 0x75c1
    call api_idx_0008_JJHR           ; 0x75c2
    add sp, byte 0x12                ; 0x75c5
    mov ax, word [message_delay]     ; 0x75c8
    mov cx, 2                        ; 0x75cb
    cwd                              ; 0x75ce
    idiv cx                          ; 0x75cf
    push ax                          ; 0x75d1
    call api_idx_0004_UQUT           ; 0x75d2
    pop cx                           ; 0x75d5
    mov ax, 0                        ; 0x75d6
    push ax                          ; 0x75d9
    call redraw_treasure_caption     ; 0x75da
    pop cx                           ; 0x75dd
    mov ax, word [bp - 0x0006]       ; 0x75de
    shl ax, 1                        ; 0x75e1
    mov bx, ax                       ; 0x75e3
    add bx, bp                       ; 0x75e5
    mov al, byte [bx - 0x00c2]       ; 0x75e7
    sub ah, ah                       ; 0x75eb
    mov cx, 0xa                      ; 0x75ed
    imul cx                          ; 0x75f0
    push ax                          ; 0x75f2
    mov al, byte [bx - 0x00c1]       ; 0x75f3
    sub ah, ah                       ; 0x75f7
    mov cx, ax                       ; 0x75f9
    pop ax                           ; 0x75fb
    add ax, cx                       ; 0x75fc
    add ax, 0xfdf0                   ; 0x75fe
    mov word [bp - 0x0012], ax       ; 0x7601
    cmp ax, strict word 0            ; 0x7604
    jle short @..api_idx_00e6_QNPR.l6 ; 0x7607
    cmp ax, 0x80                     ; 0x7609
    jge short @..api_idx_00e6_QNPR.l6 ; 0x760c
    mov ax, 0                        ; 0x760e
    push ax                          ; 0x7611
    push word [bp - 0x0012]          ; 0x7612
    mov ax, word [game_state_arg]    ; 0x7615
    mov cx, 4                        ; 0x7618
    shl ax, cl                       ; 0x761b
    add ax, party_region + 0x2       ; 0x761d
    push ax                          ; 0x7620
    call set_bitmap_bit              ; 0x7621
    add sp, byte 6                   ; 0x7624
@..api_idx_00e6_QNPR.l6:
    jmp near @..api_idx_00e6_QNPR.l19 ; 0x7627
@..api_idx_00e6_QNPR.l7:
    mov word [bp - 0x001e], 0        ; 0x762a
    mov word [bp - 0x0020], 0        ; 0x762f
    mov word [bp - 0x0002], 0        ; 0x7634
    jmp near @..api_idx_00e6_QNPR.l17 ; 0x7639
@..api_idx_00e6_QNPR.l8:
    lea ax, word [bp - 0x0072]       ; 0x763c
    push ax                          ; 0x763f
    push word [bp - 0x000a]          ; 0x7640
    call load_message_string         ; 0x7643
    add sp, byte 4                   ; 0x7646
    lea ax, word [bp - 0x0072]       ; 0x7649
    push ax                          ; 0x764c
    call aztec_strlen                ; 0x764d
    pop cx                           ; 0x7650
    mov word [bp - 0x000c], ax       ; 0x7651
    cmp word [bp - 0x000e], byte 6   ; 0x7654
    jle short @..api_idx_00e6_QNPR.l9 ; 0x7658
    mov cx, 6                        ; 0x765a
    imul cx                          ; 0x765d
    mov cx, 3                        ; 0x765f
    imul cx                          ; 0x7662
    add ax, strict word 0x3e         ; 0x7664
    mov cx, 2                        ; 0x7667
    cwd                              ; 0x766a
    idiv cx                          ; 0x766b
    mov cx, ax                       ; 0x766d
    mov ax, 0xa1                     ; 0x766f
    sub ax, cx                       ; 0x7672
    mov word [bp - 0x00e4], ax       ; 0x7674
    mov ax, word [bp - 0x000e]       ; 0x7678
    dec ax                           ; 0x767b
    mov cx, 3                        ; 0x767c
    cwd                              ; 0x767f
    idiv cx                          ; 0x7680
    inc ax                           ; 0x7682
    mov word [bp - 0x00e6], ax       ; 0x7683
    jmp short @..api_idx_00e6_QNPR.l10 ; 0x7687
@..api_idx_00e6_QNPR.l9:
    mov ax, 6                        ; 0x7689
    imul word [bp - 0x000c]          ; 0x768c
    shl ax, 1                        ; 0x768f
    add ax, strict word 0x28         ; 0x7691
    mov cx, 2                        ; 0x7694
    cwd                              ; 0x7697
    idiv cx                          ; 0x7698
    mov cx, ax                       ; 0x769a
    mov ax, 0xa1                     ; 0x769c
    sub ax, cx                       ; 0x769f
    mov word [bp - 0x00e4], ax       ; 0x76a1
    mov ax, word [bp - 0x000e]       ; 0x76a5
    dec ax                           ; 0x76a8
    mov cx, 2                        ; 0x76a9
    cwd                              ; 0x76ac
    idiv cx                          ; 0x76ad
    inc ax                           ; 0x76af
    mov word [bp - 0x00e6], ax       ; 0x76b0
@..api_idx_00e6_QNPR.l10:
    lea ax, word [bp - 0x00e2]       ; 0x76b4
    push ax                          ; 0x76b8
    mov ax, 0                        ; 0x76b9
    push ax                          ; 0x76bc
    mov ax, 0xffff                   ; 0x76bd
    push ax                          ; 0x76c0
    mov ax, 1                        ; 0x76c1
    push ax                          ; 0x76c4
    push word [bp - 0x000e]          ; 0x76c5
    push word [bp - 0x00e6]          ; 0x76c8
    mov ax, 0xc                      ; 0x76cc
    push ax                          ; 0x76cf
    mov ax, 6                        ; 0x76d0
    imul word [bp - 0x000c]          ; 0x76d3
    add ax, strict word 0x16         ; 0x76d6
    push ax                          ; 0x76d9
    mov ax, word [bp - 0x000c]       ; 0x76da
    inc ax                           ; 0x76dd
    inc ax                           ; 0x76de
    inc ax                           ; 0x76df
    push ax                          ; 0x76e0
    mov ax, 0x9c                     ; 0x76e1
    push ax                          ; 0x76e4
    push word [bp - 0x00e4]          ; 0x76e5
    mov ax, 0                        ; 0x76e9
    push ax                          ; 0x76ec
    push word [bp - 0x000a]          ; 0x76ed
    call loc_IOMS                    ; 0x76f0
    add sp, byte 0x1a                ; 0x76f3
    mov word [bp - 0x0006], ax       ; 0x76f6
    lea ax, word [bp - 0x0072]       ; 0x76f9
    push ax                          ; 0x76fc
    mov ax, word [bp - 0x000a]       ; 0x76fd
    add ax, word [bp - 0x0006]       ; 0x7700
    push ax                          ; 0x7703
    call load_message_string         ; 0x7704
    add sp, byte 4                   ; 0x7707
    mov ax, 0x1a                     ; 0x770a
    push ax                          ; 0x770d
    push word [bp - 0x00e6]          ; 0x770e
    mov ax, 0xc                      ; 0x7712
    push ax                          ; 0x7715
    mov ax, 6                        ; 0x7716
    imul word [bp - 0x000c]          ; 0x7719
    add ax, strict word 0x16         ; 0x771c
    push ax                          ; 0x771f
    mov ax, word [bp - 0x000c]       ; 0x7720
    inc ax                           ; 0x7723
    inc ax                           ; 0x7724
    inc ax                           ; 0x7725
    push ax                          ; 0x7726
    mov ax, 0x9c                     ; 0x7727
    push ax                          ; 0x772a
    push word [bp - 0x00e4]          ; 0x772b
    push word [bss_9052]             ; 0x772f
    lea ax, word [bp - 0x0072]       ; 0x7733
    push ax                          ; 0x7736
    call api_idx_0008_JJHR           ; 0x7737
    add sp, byte 0x12                ; 0x773a
    mov ax, 0                        ; 0x773d
    push ax                          ; 0x7740
    call redraw_treasure_caption     ; 0x7741
    pop cx                           ; 0x7744
    cmp word [bp - 0x001c], byte 1   ; 0x7745
    jne short @..api_idx_00e6_QNPR.l11 ; 0x7749
    mov ax, word [bp - 0x0006]       ; 0x774b
    shl ax, 1                        ; 0x774e
    mov bx, ax                       ; 0x7750
    add bx, bp                       ; 0x7752
    mov word [bx - 0x00e2], 0        ; 0x7754
@..api_idx_00e6_QNPR.l11:
    cmp word [bp - 0x0016], byte 0   ; 0x775a
    jne short @..api_idx_00e6_QNPR.l13 ; 0x775e
    mov ax, word [bp - 0x000e]       ; 0x7760
    dec ax                           ; 0x7763
    cmp ax, word [bp - 0x0006]       ; 0x7764
    jne short @..api_idx_00e6_QNPR.l13 ; 0x7767
    mov ax, word [bp - 0x0010]       ; 0x7769
    mov word [bp - 0x0002], ax       ; 0x776c
    cmp word [bp - 0x001e], byte 0   ; 0x776f
    jne short @..api_idx_00e6_QNPR.l12 ; 0x7773
    mov word [bp - 0x0020], 1        ; 0x7775
@..api_idx_00e6_QNPR.l12:
    jmp short @..api_idx_00e6_QNPR.l16 ; 0x777a
@..api_idx_00e6_QNPR.l13:
    cmp word [bp - 0x0014], byte 0   ; 0x777c
    je short @..api_idx_00e6_QNPR.l14 ; 0x7780
    mov ax, 4                        ; 0x7782
    push ax                          ; 0x7785
    call play_sound_effect           ; 0x7786
    pop cx                           ; 0x7789
@..api_idx_00e6_QNPR.l14:
    mov ax, word [bp - 0x0006]       ; 0x778a
    add ax, strict word 0x30         ; 0x778d
    sub ah, ah                       ; 0x7790
    push ax                          ; 0x7792
    lea ax, word [bp - 0x00c2]       ; 0x7793
    push ax                          ; 0x7797
    call strpos                      ; 0x7798
    add sp, byte 4                   ; 0x779b
    mov word [bp - 0x0004], ax       ; 0x779e
    cmp ax, strict word 0xffff       ; 0x77a1
    je short @..api_idx_00e6_QNPR.l15 ; 0x77a4
    cmp word [bp - 0x0018], byte 0   ; 0x77a6
    jne short @..api_idx_00e6_QNPR.l16 ; 0x77aa
    mov bx, word [bp - 0x0002]       ; 0x77ac
    add bx, bp                       ; 0x77af
    mov al, byte [bx - 0x00c2]       ; 0x77b1
    sub ah, ah                       ; 0x77b5
    add ax, strict word 0xffd0       ; 0x77b7
    cmp ax, word [bp - 0x0006]       ; 0x77ba
    je short @..api_idx_00e6_QNPR.l16 ; 0x77bd
@..api_idx_00e6_QNPR.l15:
    mov word [bp - 0x001e], 1        ; 0x77bf
    cmp word [bp - 0x0022], byte 1   ; 0x77c4
    jne short @..api_idx_00e6_QNPR.l16 ; 0x77c8
    mov ax, word [bp - 0x0010]       ; 0x77ca
    mov word [bp - 0x0002], ax       ; 0x77cd
@..api_idx_00e6_QNPR.l16:
    inc word [bp - 0x0002]           ; 0x77d0
@..api_idx_00e6_QNPR.l17:
    mov ax, word [bp - 0x0002]       ; 0x77d3
    cmp ax, word [bp - 0x0010]       ; 0x77d6
    jge short @..api_idx_00e6_QNPR.l18 ; 0x77d9
    jmp near @..api_idx_00e6_QNPR.l8 ; 0x77db
@..api_idx_00e6_QNPR.l18:
    cmp word [bp - 0x0020], byte 0   ; 0x77de
    jne short @..api_idx_00e6_QNPR.l19 ; 0x77e2
    mov ax, word [party_region]      ; 0x77e4
    shl ax, 1                        ; 0x77e7
    mov si, ax                       ; 0x77e9
    mov bx, word [maze_tables]       ; 0x77eb
    mov ax, word [bx + si + 0x1e0]   ; 0x77ef
    mov word [bp - 0x0008], ax       ; 0x77f3
    push word [bp - 0x001e]          ; 0x77f6
    mov ax, 8                        ; 0x77f9
    push ax                          ; 0x77fc
    push ax                          ; 0x77fd
    push word [bp - 0x0008]          ; 0x77fe
    call get_bits                    ; 0x7801
    add sp, byte 6                   ; 0x7804
    push ax                          ; 0x7807
    mov ax, 8                        ; 0x7808
    push ax                          ; 0x780b
    mov ax, 0                        ; 0x780c
    push ax                          ; 0x780f
    push word [bp - 0x0008]          ; 0x7810
    call get_bits                    ; 0x7813
    add sp, byte 6                   ; 0x7816
    push ax                          ; 0x7819
    call api_idx_0004_KGNP           ; 0x781a
    add sp, byte 6                   ; 0x781d
@..api_idx_00e6_QNPR.l19:
    mov word [treasure_caption_on], 0 ; 0x7820
    inc word [party_region]          ; 0x7826
    ret                              ; 0x782a
