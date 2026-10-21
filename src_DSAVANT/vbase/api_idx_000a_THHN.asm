; auto-generated
api_idx_000a_THHN:
    mov ax, 0xfff6                   ; 0x7415
    call aztec_csav                  ; 0x7418
    mov ax, word [bss_a4a4]          ; 0x741b
    jmp near @..api_idx_000a_THHN.l111 ; 0x741e
jumptable_85d0_case_1:
    mov ax, 0                        ; 0x7421
    push ax                          ; 0x7424
    push ax                          ; 0x7425
    push word [bss_a5b4]             ; 0x7426
    push word [bss_a5b2]             ; 0x742a
    call gfx_restore_screen          ; 0x742e
    add sp, byte 8                   ; 0x7431
    mov ax, word [bss_a5bc]          ; 0x7434
    cmp ax, word [bss_a5aa]          ; 0x7437
    jge short @..api_idx_000a_THHN.l1 ; 0x743b
    mov ax, 0x4f                     ; 0x743d
    push ax                          ; 0x7440
    mov ax, 0xbd                     ; 0x7441
    push ax                          ; 0x7444
    mov ax, 6                        ; 0x7445
    push ax                          ; 0x7448
    mov ax, 0x11                     ; 0x7449
    push ax                          ; 0x744c
    call api_idx_000a_JPLR           ; 0x744d
    add sp, byte 8                   ; 0x7450
@..api_idx_000a_THHN.l1:
    mov ax, 0x2b                     ; 0x7453
    push ax                          ; 0x7456
    mov ax, 0x74                     ; 0x7457
    push ax                          ; 0x745a
    mov ax, word [bss_a5b0]          ; 0x745b
    mov cx, 3                        ; 0x745e
    cwd                              ; 0x7461
    idiv cx                          ; 0x7462
    mov ax, dx                       ; 0x7464
    inc ax                           ; 0x7466
    push ax                          ; 0x7467
    mov ax, 0x11                     ; 0x7468
    push ax                          ; 0x746b
    call api_idx_000a_JPLR           ; 0x746c
    add sp, byte 8                   ; 0x746f
    mov ax, 0x3f                     ; 0x7472
    push ax                          ; 0x7475
    mov ax, 0xa4                     ; 0x7476
    push ax                          ; 0x7479
    mov ax, word [bss_a5b0]          ; 0x747a
    mov cx, 2                        ; 0x747d
    cwd                              ; 0x7480
    idiv cx                          ; 0x7481
    mov ax, dx                       ; 0x7483
    add ax, strict word 4            ; 0x7485
    push ax                          ; 0x7488
    mov ax, 0x11                     ; 0x7489
    push ax                          ; 0x748c
    call api_idx_000a_JPLR           ; 0x748d
    add sp, byte 8                   ; 0x7490
    mov ax, word [bss_a5b0]          ; 0x7493
    mov cx, 6                        ; 0x7496
    cwd                              ; 0x7499
    idiv cx                          ; 0x749a
    mov bx, dx                       ; 0x749c
    mov al, byte [bx + bss_a5c6]     ; 0x749e
    sub ah, ah                       ; 0x74a2
    add ax, strict word 0xffcf       ; 0x74a4
    mov word [bp - 0x0006], ax       ; 0x74a7
    push cx                          ; 0x74aa
    mov ax, 0xa1                     ; 0x74ab
    push ax                          ; 0x74ae
    mov ax, word [bp - 0x0006]       ; 0x74af
    add ax, strict word 7            ; 0x74b2
    push ax                          ; 0x74b5
    mov ax, 0x11                     ; 0x74b6
    push ax                          ; 0x74b9
    call api_idx_000a_JPLR           ; 0x74ba
    add sp, byte 8                   ; 0x74bd
    mov ax, word [bss_a5b0]          ; 0x74c0
    inc ax                           ; 0x74c3
    mov cx, 6                        ; 0x74c4
    cwd                              ; 0x74c7
    idiv cx                          ; 0x74c8
    mov bx, dx                       ; 0x74ca
    mov al, byte [bx + bss_a5c6]     ; 0x74cc
    sub ah, ah                       ; 0x74d0
    add ax, strict word 0xffcf       ; 0x74d2
    mov word [bp - 0x0006], ax       ; 0x74d5
    mov ax, 0x1e                     ; 0x74d8
    push ax                          ; 0x74db
    mov ax, 0xbf                     ; 0x74dc
    push ax                          ; 0x74df
    mov ax, word [bp - 0x0006]       ; 0x74e0
    add ax, strict word 0xb          ; 0x74e3
    push ax                          ; 0x74e6
    mov ax, 0x11                     ; 0x74e7
    push ax                          ; 0x74ea
    call api_idx_000a_JPLR           ; 0x74eb
    add sp, byte 8                   ; 0x74ee
    mov ax, word [bss_a5b0]          ; 0x74f1
    inc ax                           ; 0x74f4
    inc ax                           ; 0x74f5
    mov cx, 6                        ; 0x74f6
    cwd                              ; 0x74f9
    idiv cx                          ; 0x74fa
    mov bx, dx                       ; 0x74fc
    mov al, byte [bx + bss_a5c6]     ; 0x74fe
    sub ah, ah                       ; 0x7502
    add ax, strict word 0xffcf       ; 0x7504
    mov word [bp - 0x0006], ax       ; 0x7507
    mov ax, 0x35                     ; 0x750a
    push ax                          ; 0x750d
    mov ax, 0xd0                     ; 0x750e
    push ax                          ; 0x7511
    mov ax, word [bp - 0x0006]       ; 0x7512
    add ax, strict word 0xf          ; 0x7515
    push ax                          ; 0x7518
    mov ax, 0x11                     ; 0x7519
    push ax                          ; 0x751c
    call api_idx_000a_JPLR           ; 0x751d
    add sp, byte 8                   ; 0x7520
    mov ax, word [bss_a5b6]          ; 0x7523
    cmp ax, word [bss_a5aa]          ; 0x7526
    jl short @..api_idx_000a_THHN.l2 ; 0x752a
    jmp near @..api_idx_000a_THHN.l6 ; 0x752c
@..api_idx_000a_THHN.l2:
    mov ax, 0x67                     ; 0x752f
    push ax                          ; 0x7532
    mov ax, 0x85                     ; 0x7533
    push ax                          ; 0x7536
    mov ax, 1                        ; 0x7537
    push ax                          ; 0x753a
    mov ax, 0x10                     ; 0x753b
    push ax                          ; 0x753e
    call api_idx_000a_JPLR           ; 0x753f
    add sp, byte 8                   ; 0x7542
    mov ax, word [bss_a5b0]          ; 0x7545
    push ax                          ; 0x7548
    cmp ax, strict word 6            ; 0x7549
    pop ax                           ; 0x754c
    jl short @..api_idx_000a_THHN.l3 ; 0x754d
    mov cx, 6                        ; 0x754f
    cwd                              ; 0x7552
    idiv cx                          ; 0x7553
    mov cx, dx                       ; 0x7555
    mov ax, 6                        ; 0x7557
    sub ax, cx                       ; 0x755a
@..api_idx_000a_THHN.l3:
    mov word [bp - 0x0008], ax       ; 0x755c
    mov ax, word [bss_a5b0]          ; 0x755f
    inc ax                           ; 0x7562
    inc ax                           ; 0x7563
    inc ax                           ; 0x7564
    mov cx, 0xc                      ; 0x7565
    cwd                              ; 0x7568
    idiv cx                          ; 0x7569
    mov word [bp - 0x0006], dx       ; 0x756b
    cmp dx, byte 6                   ; 0x756e
    jge short @..api_idx_000a_THHN.l4 ; 0x7571
    mov ax, 6                        ; 0x7573
    sub ax, dx                       ; 0x7576
    jmp short @..api_idx_000a_THHN.l5 ; 0x7578
@..api_idx_000a_THHN.l4:
    mov ax, dx                       ; 0x757a
    mov cx, 6                        ; 0x757c
    cwd                              ; 0x757f
    idiv cx                          ; 0x7580
    mov ax, dx                       ; 0x7582
@..api_idx_000a_THHN.l5:
    mov word [bp - 0x000a], ax       ; 0x7584
    add ax, strict word 0x4c         ; 0x7587
    push ax                          ; 0x758a
    mov ax, word [bp - 0x0008]       ; 0x758b
    add ax, 0x9f                     ; 0x758e
    push ax                          ; 0x7591
    mov ax, word [bss_a5b0]          ; 0x7592
    mov cx, 2                        ; 0x7595
    cwd                              ; 0x7598
    idiv cx                          ; 0x7599
    mov ax, dx                       ; 0x759b
    inc ax                           ; 0x759d
    inc ax                           ; 0x759e
    push ax                          ; 0x759f
    mov ax, 0x10                     ; 0x75a0
    push ax                          ; 0x75a3
    call api_idx_000a_JPLR           ; 0x75a4
    add sp, byte 8                   ; 0x75a7
@..api_idx_000a_THHN.l6:
    mov ax, word [bss_a5b8]          ; 0x75aa
    cmp ax, word [bss_a5aa]          ; 0x75ad
    jl short @..api_idx_000a_THHN.l7 ; 0x75b1
    jmp near @..api_idx_000a_THHN.l15 ; 0x75b3
@..api_idx_000a_THHN.l7:
    cmp word [bss_a5ce], byte 0x10   ; 0x75b6
    jge short @..api_idx_000a_THHN.l8 ; 0x75bb
    mov ax, 0x2f                     ; 0x75bd
    push ax                          ; 0x75c0
    mov ax, 0xbe                     ; 0x75c1
    push ax                          ; 0x75c4
    mov ax, word [bss_a5ce]          ; 0x75c5
    add ax, strict word 4            ; 0x75c8
    push ax                          ; 0x75cb
    mov ax, 0x10                     ; 0x75cc
    push ax                          ; 0x75cf
    call api_idx_000a_JPLR           ; 0x75d0
    add sp, byte 8                   ; 0x75d3
    inc word [bss_a5ce]              ; 0x75d6
    jmp near @..api_idx_000a_THHN.l15 ; 0x75da
@..api_idx_000a_THHN.l8:
    cmp word [bss_a5ce], byte 0x14   ; 0x75dd
    jge short @..api_idx_000a_THHN.l9 ; 0x75e2
    mov ax, 0x2f                     ; 0x75e4
    push ax                          ; 0x75e7
    mov ax, 0xbe                     ; 0x75e8
    push ax                          ; 0x75eb
    mov ax, 0x14                     ; 0x75ec
    push ax                          ; 0x75ef
    mov ax, 0x10                     ; 0x75f0
    push ax                          ; 0x75f3
    call api_idx_000a_JPLR           ; 0x75f4
    add sp, byte 8                   ; 0x75f7
    mov ax, 0x2f                     ; 0x75fa
    push ax                          ; 0x75fd
    mov ax, 0xbe                     ; 0x75fe
    push ax                          ; 0x7601
    mov ax, word [bss_a5ce]          ; 0x7602
    add ax, strict word 5            ; 0x7605
    push ax                          ; 0x7608
    mov ax, 0x10                     ; 0x7609
    push ax                          ; 0x760c
    call api_idx_000a_JPLR           ; 0x760d
    add sp, byte 8                   ; 0x7610
    inc word [bss_a5ce]              ; 0x7613
    jmp near @..api_idx_000a_THHN.l15 ; 0x7617
@..api_idx_000a_THHN.l9:
    mov word [bss_a5ac], 0           ; 0x761a
    mov ax, 0x2f                     ; 0x7620
    push ax                          ; 0x7623
    mov ax, 0xbe                     ; 0x7624
    push ax                          ; 0x7627
    mov ax, 0x14                     ; 0x7628
    push ax                          ; 0x762b
    mov ax, 0x10                     ; 0x762c
    push ax                          ; 0x762f
    call api_idx_000a_JPLR           ; 0x7630
    add sp, byte 8                   ; 0x7633
    mov ax, 0x2f                     ; 0x7636
    push ax                          ; 0x7639
    mov ax, 0xbe                     ; 0x763a
    push ax                          ; 0x763d
    mov ax, 0x18                     ; 0x763e
    push ax                          ; 0x7641
    mov ax, 0x10                     ; 0x7642
    push ax                          ; 0x7645
    call api_idx_000a_JPLR           ; 0x7646
    add sp, byte 8                   ; 0x7649
    mov ax, 0x2f                     ; 0x764c
    push ax                          ; 0x764f
    mov ax, 0xbe                     ; 0x7650
    push ax                          ; 0x7653
    mov ax, word [bss_a5b0]          ; 0x7654
    mov cx, 6                        ; 0x7657
    cwd                              ; 0x765a
    idiv cx                          ; 0x765b
    mov ax, dx                       ; 0x765d
    add ax, strict word 0x19         ; 0x765f
    push ax                          ; 0x7662
    mov ax, 0x10                     ; 0x7663
    push ax                          ; 0x7666
    call api_idx_000a_JPLR           ; 0x7667
    add sp, byte 8                   ; 0x766a
    mov ax, word [bss_a5b0]          ; 0x766d
    cmp ax, strict word 9            ; 0x7670
    jge short @..api_idx_000a_THHN.l12 ; 0x7673
    mov ax, 7                        ; 0x7675
    push ax                          ; 0x7678
    call random_below                ; 0x7679
    pop cx                           ; 0x767c
    test ax, ax                      ; 0x767d
    je short @..api_idx_000a_THHN.l10 ; 0x767f
    mov ax, 0                        ; 0x7681
    jmp short @..api_idx_000a_THHN.l11 ; 0x7684
@..api_idx_000a_THHN.l10:
    mov ax, 1                        ; 0x7686
@..api_idx_000a_THHN.l11:
    jmp short @..api_idx_000a_THHN.l13 ; 0x7689
@..api_idx_000a_THHN.l12:
    mov ax, word [bss_a5b0]          ; 0x768b
    mov cx, 3                        ; 0x768e
    cwd                              ; 0x7691
    idiv cx                          ; 0x7692
    mov ax, dx                       ; 0x7694
    inc ax                           ; 0x7696
@..api_idx_000a_THHN.l13:
    mov word [bp - 0x0006], ax       ; 0x7697
    cmp ax, strict word 3            ; 0x769a
    jne short @..api_idx_000a_THHN.l14 ; 0x769d
    mov word [bp - 0x0006], 1        ; 0x769f
@..api_idx_000a_THHN.l14:
    mov ax, 0x2f                     ; 0x76a4
    push ax                          ; 0x76a7
    mov ax, 0xbe                     ; 0x76a8
    push ax                          ; 0x76ab
    mov ax, word [bp - 0x0006]       ; 0x76ac
    add ax, strict word 0x1f         ; 0x76af
    push ax                          ; 0x76b2
    mov ax, 0x10                     ; 0x76b3
    push ax                          ; 0x76b6
    call api_idx_000a_JPLR           ; 0x76b7
    add sp, byte 8                   ; 0x76ba
    mov ax, 0x2f                     ; 0x76bd
    push ax                          ; 0x76c0
    mov ax, 0xbe                     ; 0x76c1
    push ax                          ; 0x76c4
    mov ax, 4                        ; 0x76c5
    push ax                          ; 0x76c8
    call random_below                ; 0x76c9
    pop cx                           ; 0x76cc
    add ax, strict word 0x22         ; 0x76cd
    push ax                          ; 0x76d0
    mov ax, 0x10                     ; 0x76d1
    push ax                          ; 0x76d4
    call api_idx_000a_JPLR           ; 0x76d5
    add sp, byte 8                   ; 0x76d8
@..api_idx_000a_THHN.l15:
    mov ax, word [bss_a5ba]          ; 0x76db
    cmp ax, word [bss_a5aa]          ; 0x76de
    jge short @..api_idx_000a_THHN.l19 ; 0x76e2
    mov ax, 0x15                     ; 0x76e4
    push ax                          ; 0x76e7
    mov ax, 0x28                     ; 0x76e8
    push ax                          ; 0x76eb
    mov ax, 1                        ; 0x76ec
    push ax                          ; 0x76ef
    mov ax, 0xf                      ; 0x76f0
    push ax                          ; 0x76f3
    call api_idx_000a_JPLR           ; 0x76f4
    add sp, byte 8                   ; 0x76f7
    mov ax, 0x15                     ; 0x76fa
    push ax                          ; 0x76fd
    mov ax, 0x85                     ; 0x76fe
    push ax                          ; 0x7701
    mov ax, 2                        ; 0x7702
    push ax                          ; 0x7705
    mov ax, 0xf                      ; 0x7706
    push ax                          ; 0x7709
    call api_idx_000a_JPLR           ; 0x770a
    add sp, byte 8                   ; 0x770d
    mov ax, word [bss_a5b0]          ; 0x7710
    cmp ax, strict word 4            ; 0x7713
    jl short @..api_idx_000a_THHN.l16 ; 0x7716
    cmp ax, strict word 6            ; 0x7718
    jle short @..api_idx_000a_THHN.l17 ; 0x771b
@..api_idx_000a_THHN.l16:
    mov ax, 3                        ; 0x771d
    jmp short @..api_idx_000a_THHN.l18 ; 0x7720
@..api_idx_000a_THHN.l17:
    mov ax, word [bss_a5b0]          ; 0x7722
@..api_idx_000a_THHN.l18:
    mov word [bp - 0x0006], ax       ; 0x7725
    mov ax, 0x15                     ; 0x7728
    push ax                          ; 0x772b
    mov ax, 0x28                     ; 0x772c
    push ax                          ; 0x772f
    push word [bp - 0x0006]          ; 0x7730
    mov ax, 0xf                      ; 0x7733
    push ax                          ; 0x7736
    call api_idx_000a_JPLR           ; 0x7737
    add sp, byte 8                   ; 0x773a
@..api_idx_000a_THHN.l19:
    jmp near @..api_idx_000a_THHN.l112 ; 0x773d
jumptable_85d0_case_2:
    mov ax, 6                        ; 0x7740
    push ax                          ; 0x7743
    push word [bss_a5d0]             ; 0x7744
    mov ax, 1                        ; 0x7748
    push ax                          ; 0x774b
    mov ax, 0x10                     ; 0x774c
    push ax                          ; 0x774f
    call api_idx_000a_JPLR           ; 0x7750
    add sp, byte 8                   ; 0x7753
    mov ax, 6                        ; 0x7756
    push ax                          ; 0x7759
    push word [bss_a5d2]             ; 0x775a
    mov ax, 2                        ; 0x775e
    push ax                          ; 0x7761
    mov ax, 0x10                     ; 0x7762
    push ax                          ; 0x7765
    call api_idx_000a_JPLR           ; 0x7766
    add sp, byte 8                   ; 0x7769
    mov ax, 6                        ; 0x776c
    push ax                          ; 0x776f
    push word [bss_a5d4]             ; 0x7770
    mov ax, 3                        ; 0x7774
    push ax                          ; 0x7777
    mov ax, 0x10                     ; 0x7778
    push ax                          ; 0x777b
    call api_idx_000a_JPLR           ; 0x777c
    add sp, byte 8                   ; 0x777f
    mov ax, 6                        ; 0x7782
    push ax                          ; 0x7785
    push word [bss_a5d6]             ; 0x7786
    mov ax, 4                        ; 0x778a
    push ax                          ; 0x778d
    mov ax, 0x10                     ; 0x778e
    push ax                          ; 0x7791
    call api_idx_000a_JPLR           ; 0x7792
    add sp, byte 8                   ; 0x7795
    mov ax, 6                        ; 0x7798
    push ax                          ; 0x779b
    push word [bss_a5d8]             ; 0x779c
    mov ax, 5                        ; 0x77a0
    push ax                          ; 0x77a3
    mov ax, 0x10                     ; 0x77a4
    push ax                          ; 0x77a7
    call api_idx_000a_JPLR           ; 0x77a8
    add sp, byte 8                   ; 0x77ab
    mov word [bp - 0x0002], 0        ; 0x77ae
@..api_idx_000a_THHN.l20:
    mov ax, word [bp - 0x0002]       ; 0x77b3
    shl ax, 1                        ; 0x77b6
    mov bx, ax                       ; 0x77b8
    add word [bx + bss_a5d0], byte 0xf6 ; 0x77ba
    cmp word [bx + bss_a5d0], byte 0xb0 ; 0x77bf
    jg short @..api_idx_000a_THHN.l21 ; 0x77c4
    mov word [bx + bss_a5d0], 0x140  ; 0x77c6
@..api_idx_000a_THHN.l21:
    inc word [bp - 0x0002]           ; 0x77cc
    mov ax, word [bp - 0x0002]       ; 0x77cf
    cmp ax, strict word 5            ; 0x77d2
    jl short @..api_idx_000a_THHN.l20 ; 0x77d5
    mov word [bp - 0x0002], 0        ; 0x77d7
@..api_idx_000a_THHN.l22:
    mov ax, word [bp - 0x0002]       ; 0x77dc
    inc ax                           ; 0x77df
    mov word [bp - 0x0004], ax       ; 0x77e0
    shl ax, 1                        ; 0x77e3
    mov bx, ax                       ; 0x77e5
    cmp word [bx + bss_a5da], strict word 0x140 ; 0x77e7
    jge short @..api_idx_000a_THHN.l26 ; 0x77ed
    push word [bx - 0x5a16]          ; 0x77ef
    push word [bx + bss_a5da]        ; 0x77f3
    mov ax, word [bp - 0x0002]       ; 0x77f7
    add ax, strict word 6            ; 0x77fa
    push ax                          ; 0x77fd
    mov ax, 0xf                      ; 0x77fe
    push ax                          ; 0x7801
    call api_idx_000a_JPLR           ; 0x7802
    add sp, byte 8                   ; 0x7805
    cmp word [bp - 0x0002], byte 2   ; 0x7808
    jne short @..api_idx_000a_THHN.l23 ; 0x780c
    mov ax, word [bp - 0x0004]       ; 0x780e
    shl ax, 1                        ; 0x7811
    mov bx, ax                       ; 0x7813
    add word [bx + bss_a5da], byte 0xf6 ; 0x7815
    jmp short @..api_idx_000a_THHN.l24 ; 0x781a
@..api_idx_000a_THHN.l23:
    mov ax, word [bp - 0x0004]       ; 0x781c
    shl ax, 1                        ; 0x781f
    mov bx, ax                       ; 0x7821
    add word [bx + bss_a5da], byte 0xec ; 0x7823
@..api_idx_000a_THHN.l24:
    mov ax, word [bp - 0x0004]       ; 0x7828
    shl ax, 1                        ; 0x782b
    mov bx, ax                       ; 0x782d
    cmp word [bx + bss_a5da], byte 0xf0 ; 0x782f
    jge short @..api_idx_000a_THHN.l25 ; 0x7834
    mov word [bx + bss_a5da], 0x140  ; 0x7836
@..api_idx_000a_THHN.l25:
    jmp short @..api_idx_000a_THHN.l27 ; 0x783c
@..api_idx_000a_THHN.l26:
    mov ax, 0x28                     ; 0x783e
    push ax                          ; 0x7841
    call random_below                ; 0x7842
    pop cx                           ; 0x7845
    cmp ax, word [bp - 0x0004]       ; 0x7846
    jne short @..api_idx_000a_THHN.l27 ; 0x7849
    mov ax, word [bp - 0x0004]       ; 0x784b
    shl ax, 1                        ; 0x784e
    mov bx, ax                       ; 0x7850
    mov word [bx + bss_a5da], 0x13e  ; 0x7852
    mov ax, 0x3c                     ; 0x7858
    push ax                          ; 0x785b
    call random_below                ; 0x785c
    pop cx                           ; 0x785f
    add ax, strict word 0x28         ; 0x7860
    mov cx, word [bp - 0x0004]       ; 0x7863
    shl cx, 1                        ; 0x7866
    mov bx, cx                       ; 0x7868
    mov word [bx - 0x5a16], ax       ; 0x786a
@..api_idx_000a_THHN.l27:
    inc word [bp - 0x0002]           ; 0x786e
    mov ax, word [bp - 0x0002]       ; 0x7871
    cmp ax, strict word 3            ; 0x7874
    jge short @..api_idx_000a_THHN.l28 ; 0x7877
    jmp near @..api_idx_000a_THHN.l22 ; 0x7879
@..api_idx_000a_THHN.l28:
    mov ax, word [bss_a5b6]          ; 0x787c
    cmp ax, word [bss_a5aa]          ; 0x787f
    jge short @..api_idx_000a_THHN.l30 ; 0x7883
    cmp word [bss_a5da], strict word 0x104 ; 0x7885
    jge short @..api_idx_000a_THHN.l29 ; 0x788b
    cmp word [bss_a5fa], byte 5      ; 0x788d
    jge short @..api_idx_000a_THHN.l29 ; 0x7892
    inc word [bss_a5fa]              ; 0x7894
@..api_idx_000a_THHN.l29:
    mov ax, 0x4b                     ; 0x7898
    push ax                          ; 0x789b
    push word [bss_a5da]             ; 0x789c
    push word [bss_a5fa]             ; 0x78a0
    mov ax, 0xf                      ; 0x78a4
    push ax                          ; 0x78a7
    call api_idx_000a_JPLR           ; 0x78a8
    add sp, byte 8                   ; 0x78ab
    cmp word [bss_a5da], strict word 0xc8 ; 0x78ae
    jle short @..api_idx_000a_THHN.l30 ; 0x78b4
    add word [bss_a5da], byte 0xfc   ; 0x78b6
@..api_idx_000a_THHN.l30:
    mov ax, word [bss_a5b8]          ; 0x78bb
    cmp ax, word [bss_a5aa]          ; 0x78be
    jge short @..api_idx_000a_THHN.l31 ; 0x78c2
    push word [bss_a5f2]             ; 0x78c4
    push word [bss_a5e2]             ; 0x78c8
    mov ax, 1                        ; 0x78cc
    push ax                          ; 0x78cf
    mov ax, 0x11                     ; 0x78d0
    push ax                          ; 0x78d3
    call api_idx_000a_JPLR           ; 0x78d4
    add sp, byte 8                   ; 0x78d7
    push word [bss_a5f2]             ; 0x78da
    push word [bss_a5e2]             ; 0x78de
    mov ax, 4                        ; 0x78e2
    push ax                          ; 0x78e5
    call random_below                ; 0x78e6
    pop cx                           ; 0x78e9
    inc ax                           ; 0x78ea
    inc ax                           ; 0x78eb
    push ax                          ; 0x78ec
    mov ax, 0x11                     ; 0x78ed
    push ax                          ; 0x78f0
    call api_idx_000a_JPLR           ; 0x78f1
    add sp, byte 8                   ; 0x78f4
    cmp word [bss_a5e2], byte 0x50   ; 0x78f7
    jge short @..api_idx_000a_THHN.l31 ; 0x78fc
    add word [bss_a5e2], byte 6      ; 0x78fe
@..api_idx_000a_THHN.l31:
    jmp near @..api_idx_000a_THHN.l112 ; 0x7903
jumptable_85d0_case_3:
    mov ax, 0                        ; 0x7906
    push ax                          ; 0x7909
    push ax                          ; 0x790a
    push word [bss_a5b4]             ; 0x790b
    push word [bss_a5b2]             ; 0x790f
    call gfx_restore_screen          ; 0x7913
    add sp, byte 8                   ; 0x7916
    mov word [bp - 0x0002], 0        ; 0x7919
@..api_idx_000a_THHN.l32:
    mov ax, word [bp - 0x0002]       ; 0x791e
    inc ax                           ; 0x7921
    mov word [bp - 0x0004], ax       ; 0x7922
    shl ax, 1                        ; 0x7925
    mov bx, ax                       ; 0x7927
    cmp word [bx + bss_a5da], strict word 0x140 ; 0x7929
    jge short @..api_idx_000a_THHN.l34 ; 0x792f
    push word [bx - 0x5a16]          ; 0x7931
    push word [bx + bss_a5da]        ; 0x7935
    mov ax, word [bp - 0x0002]       ; 0x7939
    add ax, strict word 6            ; 0x793c
    push ax                          ; 0x793f
    mov ax, 0xf                      ; 0x7940
    push ax                          ; 0x7943
    call api_idx_000a_JPLR           ; 0x7944
    add sp, byte 8                   ; 0x7947
    mov ax, word [bp - 0x0004]       ; 0x794a
    shl ax, 1                        ; 0x794d
    mov bx, ax                       ; 0x794f
    add word [bx + bss_a5da], byte 0xec ; 0x7951
    cmp word [bx + bss_a5da], byte 0xf0 ; 0x7956
    jge short @..api_idx_000a_THHN.l33 ; 0x795b
    mov word [bx + bss_a5da], 0x140  ; 0x795d
@..api_idx_000a_THHN.l33:
    jmp short @..api_idx_000a_THHN.l35 ; 0x7963
@..api_idx_000a_THHN.l34:
    mov ax, 0x28                     ; 0x7965
    push ax                          ; 0x7968
    call random_below                ; 0x7969
    pop cx                           ; 0x796c
    cmp ax, word [bp - 0x0004]       ; 0x796d
    jne short @..api_idx_000a_THHN.l35 ; 0x7970
    mov ax, word [bp - 0x0004]       ; 0x7972
    shl ax, 1                        ; 0x7975
    mov bx, ax                       ; 0x7977
    mov word [bx + bss_a5da], 0x13e  ; 0x7979
    mov ax, 0x3c                     ; 0x797f
    push ax                          ; 0x7982
    call random_below                ; 0x7983
    pop cx                           ; 0x7986
    add ax, strict word 0x28         ; 0x7987
    mov cx, word [bp - 0x0004]       ; 0x798a
    shl cx, 1                        ; 0x798d
    mov bx, cx                       ; 0x798f
    mov word [bx - 0x5a16], ax       ; 0x7991
@..api_idx_000a_THHN.l35:
    inc word [bp - 0x0002]           ; 0x7995
    mov ax, word [bp - 0x0002]       ; 0x7998
    cmp ax, strict word 2            ; 0x799b
    jge short @..api_idx_000a_THHN.l36 ; 0x799e
    jmp near @..api_idx_000a_THHN.l32 ; 0x79a0
@..api_idx_000a_THHN.l36:
    mov ax, word [bss_a5b8]          ; 0x79a3
    cmp ax, word [bss_a5aa]          ; 0x79a6
    jl short @..api_idx_000a_THHN.l37 ; 0x79aa
    jmp near @..api_idx_000a_THHN.l45 ; 0x79ac
@..api_idx_000a_THHN.l37:
    push word [bss_a5f2]             ; 0x79af
    push word [bss_a5e2]             ; 0x79b3
    mov ax, 1                        ; 0x79b7
    push ax                          ; 0x79ba
    mov ax, 0x11                     ; 0x79bb
    push ax                          ; 0x79be
    call api_idx_000a_JPLR           ; 0x79bf
    add sp, byte 8                   ; 0x79c2
    mov ax, word [bss_a5f2]          ; 0x79c5
    add ax, strict word 0xffd9       ; 0x79c8
    push ax                          ; 0x79cb
    mov ax, word [bss_a5e2]          ; 0x79cc
    add ax, strict word 0x44         ; 0x79cf
    push ax                          ; 0x79d2
    mov ax, 2                        ; 0x79d3
    push ax                          ; 0x79d6
    mov ax, 0x11                     ; 0x79d7
    push ax                          ; 0x79da
    call api_idx_000a_JPLR           ; 0x79db
    add sp, byte 8                   ; 0x79de
    mov ax, word [bss_a5f2]          ; 0x79e1
    add ax, strict word 0xffd5       ; 0x79e4
    push ax                          ; 0x79e7
    mov ax, word [bss_a5e2]          ; 0x79e8
    add ax, 0x88                     ; 0x79eb
    push ax                          ; 0x79ee
    mov ax, 3                        ; 0x79ef
    push ax                          ; 0x79f2
    mov ax, 0x11                     ; 0x79f3
    push ax                          ; 0x79f6
    call api_idx_000a_JPLR           ; 0x79f7
    add sp, byte 8                   ; 0x79fa
    mov ax, word [bss_a5f2]          ; 0x79fd
    add ax, strict word 0xffc5       ; 0x7a00
    push ax                          ; 0x7a03
    mov ax, word [bss_a5e2]          ; 0x7a04
    add ax, 0xcc                     ; 0x7a07
    push ax                          ; 0x7a0a
    mov ax, 4                        ; 0x7a0b
    push ax                          ; 0x7a0e
    mov ax, 0x11                     ; 0x7a0f
    push ax                          ; 0x7a12
    call api_idx_000a_JPLR           ; 0x7a13
    add sp, byte 8                   ; 0x7a16
    mov ax, word [bss_a5bc]          ; 0x7a19
    cmp ax, word [bss_a5aa]          ; 0x7a1c
    jge short @..api_idx_000a_THHN.l38 ; 0x7a20
    cmp word [bss_a5fc], byte 6      ; 0x7a22
    jge short @..api_idx_000a_THHN.l38 ; 0x7a27
    inc word [bss_a5fc]              ; 0x7a29
@..api_idx_000a_THHN.l38:
    mov ax, word [bss_a5f2]          ; 0x7a2d
    inc ax                           ; 0x7a30
    inc ax                           ; 0x7a31
    push ax                          ; 0x7a32
    push word [bss_a5e2]             ; 0x7a33
    mov ax, word [bss_a5fc]          ; 0x7a37
    add ax, strict word 5            ; 0x7a3a
    push ax                          ; 0x7a3d
    mov ax, 0x11                     ; 0x7a3e
    push ax                          ; 0x7a41
    call api_idx_000a_JPLR           ; 0x7a42
    add sp, byte 8                   ; 0x7a45
    mov ax, word [bss_a5be]          ; 0x7a48
    cmp ax, word [bss_a5aa]          ; 0x7a4b
    jl short @..api_idx_000a_THHN.l39 ; 0x7a4f
    jmp near @..api_idx_000a_THHN.l42 ; 0x7a51
@..api_idx_000a_THHN.l39:
    mov ax, word [bss_a5e2]          ; 0x7a54
    add ax, strict word 0xfffb       ; 0x7a57
    cmp ax, word [bss_a5e4]          ; 0x7a5a
    jle short @..api_idx_000a_THHN.l40 ; 0x7a5e
    mov ax, word [bss_a5f2]          ; 0x7a60
    add ax, strict word 0x18         ; 0x7a63
    push ax                          ; 0x7a66
    push word [bss_a5e4]             ; 0x7a67
    mov ax, 2                        ; 0x7a6b
    push ax                          ; 0x7a6e
    call random_below                ; 0x7a6f
    pop cx                           ; 0x7a72
    add ax, strict word 0x10         ; 0x7a73
    push ax                          ; 0x7a76
    mov ax, 0x11                     ; 0x7a77
    push ax                          ; 0x7a7a
    call api_idx_000a_JPLR           ; 0x7a7b
    add sp, byte 8                   ; 0x7a7e
    inc word [bss_a5e4]              ; 0x7a81
    inc word [bss_a5e4]              ; 0x7a85
    jmp short @..api_idx_000a_THHN.l42 ; 0x7a89
@..api_idx_000a_THHN.l40:
    mov ax, word [bss_a5f2]          ; 0x7a8b
    add ax, strict word 0x18         ; 0x7a8e
    push ax                          ; 0x7a91
    mov ax, word [bss_a5e2]          ; 0x7a92
    add ax, strict word 0xfffb       ; 0x7a95
    push ax                          ; 0x7a98
    mov ax, word [bss_a5fe]          ; 0x7a99
    add ax, strict word 0x12         ; 0x7a9c
    push ax                          ; 0x7a9f
    mov ax, 0x11                     ; 0x7aa0
    push ax                          ; 0x7aa3
    call api_idx_000a_JPLR           ; 0x7aa4
    add sp, byte 8                   ; 0x7aa7
    cmp word [bss_a5fe], byte 7      ; 0x7aaa
    jge short @..api_idx_000a_THHN.l41 ; 0x7aaf
    inc word [bss_a5fe]              ; 0x7ab1
    jmp short @..api_idx_000a_THHN.l42 ; 0x7ab5
@..api_idx_000a_THHN.l41:
    mov word [bss_a5ac], 0           ; 0x7ab7
    mov word [bss_a5bc], 0x63        ; 0x7abd
    mov word [bss_a5be], 0x63        ; 0x7ac3
    mov word [bss_a5fc], 0           ; 0x7ac9
    mov word [bss_a5fe], 0           ; 0x7acf
@..api_idx_000a_THHN.l42:
    mov ax, word [bss_a5f2]          ; 0x7ad5
    add ax, strict word 0xffe4       ; 0x7ad8
    push ax                          ; 0x7adb
    mov ax, word [bss_a5e2]          ; 0x7adc
    add ax, 0xd9                     ; 0x7adf
    push ax                          ; 0x7ae2
    mov ax, 4                        ; 0x7ae3
    push ax                          ; 0x7ae6
    call random_below                ; 0x7ae7
    pop cx                           ; 0x7aea
    add ax, strict word 0xc          ; 0x7aeb
    push ax                          ; 0x7aee
    mov ax, 0x11                     ; 0x7aef
    push ax                          ; 0x7af2
    call api_idx_000a_JPLR           ; 0x7af3
    add sp, byte 8                   ; 0x7af6
    mov ax, word [bss_a5f2]          ; 0x7af9
    add ax, strict word 9            ; 0x7afc
    push ax                          ; 0x7aff
    mov ax, word [bss_a5e2]          ; 0x7b00
    add ax, 0xcc                     ; 0x7b03
    push ax                          ; 0x7b06
    mov ax, word [bss_a5b0]          ; 0x7b07
    mov cx, 6                        ; 0x7b0a
    cwd                              ; 0x7b0d
    idiv cx                          ; 0x7b0e
    mov ax, dx                       ; 0x7b10
    add ax, strict word 0x1a         ; 0x7b12
    push ax                          ; 0x7b15
    mov ax, 0x11                     ; 0x7b16
    push ax                          ; 0x7b19
    call api_idx_000a_JPLR           ; 0x7b1a
    add sp, byte 8                   ; 0x7b1d
    mov ax, word [bss_a5f2]          ; 0x7b20
    add ax, strict word 0x12         ; 0x7b23
    push ax                          ; 0x7b26
    mov ax, word [bss_a5e2]          ; 0x7b27
    add ax, 0x80                     ; 0x7b2a
    push ax                          ; 0x7b2d
    mov ax, word [bss_a5b0]          ; 0x7b2e
    inc ax                           ; 0x7b31
    inc ax                           ; 0x7b32
    inc ax                           ; 0x7b33
    mov cx, 6                        ; 0x7b34
    cwd                              ; 0x7b37
    idiv cx                          ; 0x7b38
    mov ax, dx                       ; 0x7b3a
    add ax, strict word 0x20         ; 0x7b3c
    push ax                          ; 0x7b3f
    mov ax, 0x11                     ; 0x7b40
    push ax                          ; 0x7b43
    call api_idx_000a_JPLR           ; 0x7b44
    add sp, byte 8                   ; 0x7b47
    mov ax, word [bss_a5f2]          ; 0x7b4a
    add ax, strict word 0xffe2       ; 0x7b4d
    push ax                          ; 0x7b50
    mov ax, word [bss_a5e2]          ; 0x7b51
    add ax, 0x97                     ; 0x7b54
    push ax                          ; 0x7b57
    mov ax, word [bss_a5b0]          ; 0x7b58
    mov cx, 3                        ; 0x7b5b
    cwd                              ; 0x7b5e
    idiv cx                          ; 0x7b5f
    add ax, strict word 0x26         ; 0x7b61
    push ax                          ; 0x7b64
    mov ax, 0x11                     ; 0x7b65
    push ax                          ; 0x7b68
    call api_idx_000a_JPLR           ; 0x7b69
    add sp, byte 8                   ; 0x7b6c
    mov ax, word [bss_a5f2]          ; 0x7b6f
    add ax, strict word 0xfff2       ; 0x7b72
    push ax                          ; 0x7b75
    mov ax, word [bss_a5e2]          ; 0x7b76
    add ax, 0xa8                     ; 0x7b79
    push ax                          ; 0x7b7c
    mov ax, word [bss_a5b0]          ; 0x7b7d
    add ax, strict word 5            ; 0x7b80
    mov cx, 0xc                      ; 0x7b83
    cwd                              ; 0x7b86
    idiv cx                          ; 0x7b87
    mov ax, dx                       ; 0x7b89
    mov cx, 3                        ; 0x7b8b
    cwd                              ; 0x7b8e
    idiv cx                          ; 0x7b8f
    add ax, strict word 0x2a         ; 0x7b91
    push ax                          ; 0x7b94
    mov ax, 0x11                     ; 0x7b95
    push ax                          ; 0x7b98
    call api_idx_000a_JPLR           ; 0x7b99
    add sp, byte 8                   ; 0x7b9c
    mov ax, word [bss_a5f2]          ; 0x7b9f
    add ax, strict word 0x19         ; 0x7ba2
    push ax                          ; 0x7ba5
    mov ax, word [bss_a5e2]          ; 0x7ba6
    add ax, 0xae                     ; 0x7ba9
    push ax                          ; 0x7bac
    mov ax, word [bss_a5b0]          ; 0x7bad
    mov cx, 4                        ; 0x7bb0
    cwd                              ; 0x7bb3
    idiv cx                          ; 0x7bb4
    mov ax, dx                       ; 0x7bb6
    add ax, strict word 0x2e         ; 0x7bb8
    push ax                          ; 0x7bbb
    mov ax, 0x11                     ; 0x7bbc
    push ax                          ; 0x7bbf
    call api_idx_000a_JPLR           ; 0x7bc0
    add sp, byte 8                   ; 0x7bc3
    mov ax, word [bss_a5f2]          ; 0x7bc6
    add ax, strict word 0xffc2       ; 0x7bc9
    push ax                          ; 0x7bcc
    mov ax, word [bss_a5e2]          ; 0x7bcd
    add ax, 0xd4                     ; 0x7bd0
    push ax                          ; 0x7bd3
    mov ax, word [bss_a5b0]          ; 0x7bd4
    mov cx, 2                        ; 0x7bd7
    cwd                              ; 0x7bda
    idiv cx                          ; 0x7bdb
    mov cx, 4                        ; 0x7bdd
    cwd                              ; 0x7be0
    idiv cx                          ; 0x7be1
    mov ax, dx                       ; 0x7be3
    add ax, strict word 0x32         ; 0x7be5
    push ax                          ; 0x7be8
    mov ax, 0x11                     ; 0x7be9
    push ax                          ; 0x7bec
    call api_idx_000a_JPLR           ; 0x7bed
    add sp, byte 8                   ; 0x7bf0
    mov ax, word [bss_a5f2]          ; 0x7bf3
    add ax, strict word 0xffd7       ; 0x7bf6
    push ax                          ; 0x7bf9
    mov ax, word [bss_a5e2]          ; 0x7bfa
    add ax, 0x82                     ; 0x7bfd
    push ax                          ; 0x7c00
    mov ax, 0x36                     ; 0x7c01
    mov cx, word [bss_a5b0]          ; 0x7c04
    cmp cx, byte 4                   ; 0x7c08
    jge short @..api_idx_000a_THHN.l43 ; 0x7c0b
    add cx, byte 0x36                ; 0x7c0d
    mov ax, cx                       ; 0x7c10
@..api_idx_000a_THHN.l43:
    push ax                          ; 0x7c12
    mov ax, 0x11                     ; 0x7c13
    push ax                          ; 0x7c16
    call api_idx_000a_JPLR           ; 0x7c17
    add sp, byte 8                   ; 0x7c1a
    mov ax, word [bss_a5f2]          ; 0x7c1d
    add ax, strict word 0x22         ; 0x7c20
    push ax                          ; 0x7c23
    mov ax, word [bss_a5e2]          ; 0x7c24
    add ax, strict word 0x6d         ; 0x7c27
    push ax                          ; 0x7c2a
    mov ax, word [bss_a5b0]          ; 0x7c2b
    mov cx, 4                        ; 0x7c2e
    cwd                              ; 0x7c31
    idiv cx                          ; 0x7c32
    mov ax, dx                       ; 0x7c34
    add ax, strict word 0x3a         ; 0x7c36
    push ax                          ; 0x7c39
    mov ax, 0x11                     ; 0x7c3a
    push ax                          ; 0x7c3d
    call api_idx_000a_JPLR           ; 0x7c3e
    add sp, byte 8                   ; 0x7c41
    mov ax, word [bss_a5f2]          ; 0x7c44
    add ax, strict word 0xffe9       ; 0x7c47
    push ax                          ; 0x7c4a
    mov ax, word [bss_a5e2]          ; 0x7c4b
    add ax, strict word 0x7a         ; 0x7c4e
    push ax                          ; 0x7c51
    mov ax, word [bss_a5b0]          ; 0x7c52
    mov cx, 6                        ; 0x7c55
    cwd                              ; 0x7c58
    idiv cx                          ; 0x7c59
    mov ax, dx                       ; 0x7c5b
    inc ax                           ; 0x7c5d
    push ax                          ; 0x7c5e
    mov ax, 0x10                     ; 0x7c5f
    push ax                          ; 0x7c62
    call api_idx_000a_JPLR           ; 0x7c63
    add sp, byte 8                   ; 0x7c66
    cmp word [bss_a5e2], byte 0x3c   ; 0x7c69
    jle short @..api_idx_000a_THHN.l44 ; 0x7c6e
    add word [bss_a5e2], byte 0xfd   ; 0x7c70
@..api_idx_000a_THHN.l44:
    mov ax, word [bss_a5e2]          ; 0x7c75
    add ax, strict word 0xfffb       ; 0x7c78
    cmp ax, word [bss_a5e4]          ; 0x7c7b
    jge short @..api_idx_000a_THHN.l45 ; 0x7c7f
    mov word [bss_a5e4], ax          ; 0x7c81
@..api_idx_000a_THHN.l45:
    jmp near @..api_idx_000a_THHN.l112 ; 0x7c84
jumptable_85d0_case_4:
    mov ax, 0                        ; 0x7c87
    push ax                          ; 0x7c8a
    push ax                          ; 0x7c8b
    push word [bss_a5b4]             ; 0x7c8c
    push word [bss_a5b2]             ; 0x7c90
    call gfx_restore_screen          ; 0x7c94
    add sp, byte 8                   ; 0x7c97
    mov ax, 0x12                     ; 0x7c9a
    push ax                          ; 0x7c9d
    mov ax, 0x70                     ; 0x7c9e
    push ax                          ; 0x7ca1
    push word [bss_a5ce]             ; 0x7ca2
    mov ax, 0xf                      ; 0x7ca6
    push ax                          ; 0x7ca9
    call api_idx_000a_JPLR           ; 0x7caa
    add sp, byte 8                   ; 0x7cad
    mov ax, word [bss_a5b8]          ; 0x7cb0
    cmp ax, word [bss_a5aa]          ; 0x7cb3
    jl short @..api_idx_000a_THHN.l46 ; 0x7cb7
    jmp near @..api_idx_000a_THHN.l50 ; 0x7cb9
@..api_idx_000a_THHN.l46:
    cmp word [bss_a600], byte 0x64   ; 0x7cbc
    jl short @..api_idx_000a_THHN.l47 ; 0x7cc1
    jmp near @..api_idx_000a_THHN.l50 ; 0x7cc3
@..api_idx_000a_THHN.l47:
    push word [bss_a600]             ; 0x7cc6
    push word [bss_a5f2]             ; 0x7cca
    push word [bss_a5e2]             ; 0x7cce
    mov ax, 6                        ; 0x7cd2
    push ax                          ; 0x7cd5
    mov ax, 0x11                     ; 0x7cd6
    push ax                          ; 0x7cd9
    call api_idx_000a_IGIN           ; 0x7cda
    add sp, byte 0x0a                ; 0x7cdd
    push word [bss_a600]             ; 0x7ce0
    push word [bss_a5f2]             ; 0x7ce4
    push word [bss_a5e2]             ; 0x7ce8
    mov ax, 2                        ; 0x7cec
    push ax                          ; 0x7cef
    call random_below                ; 0x7cf0
    pop cx                           ; 0x7cf3
    add ax, strict word 7            ; 0x7cf4
    push ax                          ; 0x7cf7
    mov ax, 0x11                     ; 0x7cf8
    push ax                          ; 0x7cfb
    call api_idx_000a_IGIN           ; 0x7cfc
    add sp, byte 0x0a                ; 0x7cff
    cmp word [bss_a5e2], byte 0x14   ; 0x7d02
    jle short @..api_idx_000a_THHN.l48 ; 0x7d07
    inc word [bss_a600]              ; 0x7d09
    inc word [bss_a600]              ; 0x7d0d
    cmp word [bss_a5ce], byte 8      ; 0x7d11
    jge short @..api_idx_000a_THHN.l48 ; 0x7d16
    inc word [bss_a5ce]              ; 0x7d18
@..api_idx_000a_THHN.l48:
    cmp word [bss_a5e2], strict word 0xa0 ; 0x7d1c
    jge short @..api_idx_000a_THHN.l49 ; 0x7d22
    mov ax, word [bss_a600]          ; 0x7d24
    mov cx, 0xa                      ; 0x7d27
    cwd                              ; 0x7d2a
    idiv cx                          ; 0x7d2b
    add ax, word [bss_a5e2]          ; 0x7d2d
    add ax, strict word 5            ; 0x7d31
    mov word [bss_a5e2], ax          ; 0x7d34
@..api_idx_000a_THHN.l49:
    cmp word [bss_a5f2], byte 0x32   ; 0x7d37
    jle short @..api_idx_000a_THHN.l50 ; 0x7d3c
    mov ax, word [bss_a5f2]          ; 0x7d3e
    mov word [bss_a5f2], ax          ; 0x7d41
    dec word [bss_a5f2]              ; 0x7d44
@..api_idx_000a_THHN.l50:
    jmp near @..api_idx_000a_THHN.l112 ; 0x7d48
jumptable_85d0_case_5:
    mov ax, 0                        ; 0x7d4b
    push ax                          ; 0x7d4e
    push ax                          ; 0x7d4f
    push word [bss_a5b4]             ; 0x7d50
    push word [bss_a5b2]             ; 0x7d54
    call gfx_restore_screen          ; 0x7d58
    add sp, byte 8                   ; 0x7d5b
    mov ax, 0                        ; 0x7d5e
    push ax                          ; 0x7d61
    push word [bss_a5d0]             ; 0x7d62
    mov ax, 3                        ; 0x7d66
    push ax                          ; 0x7d69
    mov ax, 0xf                      ; 0x7d6a
    push ax                          ; 0x7d6d
    call api_idx_000a_JPLR           ; 0x7d6e
    add sp, byte 8                   ; 0x7d71
    mov ax, 0                        ; 0x7d74
    push ax                          ; 0x7d77
    push word [bss_a5d2]             ; 0x7d78
    mov ax, 4                        ; 0x7d7c
    push ax                          ; 0x7d7f
    mov ax, 0xf                      ; 0x7d80
    push ax                          ; 0x7d83
    call api_idx_000a_JPLR           ; 0x7d84
    add sp, byte 8                   ; 0x7d87
    mov ax, 0                        ; 0x7d8a
    push ax                          ; 0x7d8d
    push word [bss_a5d4]             ; 0x7d8e
    mov ax, 3                        ; 0x7d92
    push ax                          ; 0x7d95
    mov ax, 0xf                      ; 0x7d96
    push ax                          ; 0x7d99
    call api_idx_000a_JPLR           ; 0x7d9a
    add sp, byte 8                   ; 0x7d9d
    mov ax, 0                        ; 0x7da0
    push ax                          ; 0x7da3
    push word [bss_a5d6]             ; 0x7da4
    mov ax, 4                        ; 0x7da8
    push ax                          ; 0x7dab
    mov ax, 0xf                      ; 0x7dac
    push ax                          ; 0x7daf
    call api_idx_000a_JPLR           ; 0x7db0
    add sp, byte 8                   ; 0x7db3
    mov word [bp - 0x0002], 0        ; 0x7db6
@..api_idx_000a_THHN.l51:
    mov ax, word [bp - 0x0002]       ; 0x7dbb
    shl ax, 1                        ; 0x7dbe
    mov bx, ax                       ; 0x7dc0
    dec word [bx + bss_a5d0]         ; 0x7dc2
    cmp word [bx + bss_a5d0], strict word 0xff60 ; 0x7dc6
    jg short @..api_idx_000a_THHN.l52 ; 0x7dcc
    mov word [bx + bss_a5d0], 0x1e0  ; 0x7dce
@..api_idx_000a_THHN.l52:
    inc word [bp - 0x0002]           ; 0x7dd4
    mov ax, word [bp - 0x0002]       ; 0x7dd7
    cmp ax, strict word 4            ; 0x7dda
    jl short @..api_idx_000a_THHN.l51 ; 0x7ddd
    mov word [bp - 0x0002], 0        ; 0x7ddf
@..api_idx_000a_THHN.l53:
    mov ax, word [bp - 0x0002]       ; 0x7de4
    inc ax                           ; 0x7de7
    mov word [bp - 0x0004], ax       ; 0x7de8
    shl ax, 1                        ; 0x7deb
    mov bx, ax                       ; 0x7ded
    cmp word [bx + bss_a5da], strict word 0x140 ; 0x7def
    jge short @..api_idx_000a_THHN.l55 ; 0x7df5
    push word [bx - 0x5a16]          ; 0x7df7
    push word [bx + bss_a5da]        ; 0x7dfb
    mov ax, word [bp - 0x0002]       ; 0x7dff
    add ax, strict word 5            ; 0x7e02
    push ax                          ; 0x7e05
    mov ax, 0xf                      ; 0x7e06
    push ax                          ; 0x7e09
    call api_idx_000a_JPLR           ; 0x7e0a
    add sp, byte 8                   ; 0x7e0d
    mov ax, 3                        ; 0x7e10
    sub ax, word [bp - 0x0002]       ; 0x7e13
    mov cx, word [bp - 0x0004]       ; 0x7e16
    shl cx, 1                        ; 0x7e19
    mov bx, cx                       ; 0x7e1b
    sub word [bx + bss_a5da], ax     ; 0x7e1d
    cmp word [bx + bss_a5da], byte 0xb0 ; 0x7e21
    jge short @..api_idx_000a_THHN.l54 ; 0x7e26
    mov word [bx + bss_a5da], 0x140  ; 0x7e28
@..api_idx_000a_THHN.l54:
    jmp short @..api_idx_000a_THHN.l57 ; 0x7e2e
@..api_idx_000a_THHN.l55:
    mov ax, 0x1e                     ; 0x7e30
    push ax                          ; 0x7e33
    call random_below                ; 0x7e34
    pop cx                           ; 0x7e37
    cmp ax, word [bp - 0x0004]       ; 0x7e38
    jne short @..api_idx_000a_THHN.l57 ; 0x7e3b
    mov ax, word [bp - 0x0002]       ; 0x7e3d
    inc ax                           ; 0x7e40
    mov cx, 2                        ; 0x7e41
    cwd                              ; 0x7e44
    idiv cx                          ; 0x7e45
    mov ax, dx                       ; 0x7e47
    shl ax, 1                        ; 0x7e49
    mov bx, ax                       ; 0x7e4b
    cmp word [bx - 0x5a24], strict word 0x140 ; 0x7e4d
    je short @..api_idx_000a_THHN.l56 ; 0x7e53
    cmp word [bx - 0x5a24], strict word 0xf0 ; 0x7e55
    jge short @..api_idx_000a_THHN.l57 ; 0x7e5b
@..api_idx_000a_THHN.l56:
    mov ax, word [bp - 0x0004]       ; 0x7e5d
    shl ax, 1                        ; 0x7e60
    mov bx, ax                       ; 0x7e62
    mov word [bx + bss_a5da], 0x13e  ; 0x7e64
    mov ax, 0x10                     ; 0x7e6a
    push ax                          ; 0x7e6d
    call random_below                ; 0x7e6e
    pop cx                           ; 0x7e71
    add ax, strict word 4            ; 0x7e72
    mov cx, word [bp - 0x0004]       ; 0x7e75
    shl cx, 1                        ; 0x7e78
    mov bx, cx                       ; 0x7e7a
    mov word [bx - 0x5a16], ax       ; 0x7e7c
@..api_idx_000a_THHN.l57:
    inc word [bp - 0x0002]           ; 0x7e80
    mov ax, word [bp - 0x0002]       ; 0x7e83
    cmp ax, strict word 2            ; 0x7e86
    jge short @..api_idx_000a_THHN.l58 ; 0x7e89
    jmp near @..api_idx_000a_THHN.l53 ; 0x7e8b
@..api_idx_000a_THHN.l58:
    mov ax, 0                        ; 0x7e8e
    push ax                          ; 0x7e91
    push ax                          ; 0x7e92
    mov ax, 1                        ; 0x7e93
    push ax                          ; 0x7e96
    mov ax, 0xf                      ; 0x7e97
    push ax                          ; 0x7e9a
    call api_idx_000a_JPLR           ; 0x7e9b
    add sp, byte 8                   ; 0x7e9e
    mov ax, 0                        ; 0x7ea1
    push ax                          ; 0x7ea4
    mov ax, 0xa0                     ; 0x7ea5
    push ax                          ; 0x7ea8
    mov ax, 2                        ; 0x7ea9
    push ax                          ; 0x7eac
    mov ax, 0xf                      ; 0x7ead
    push ax                          ; 0x7eb0
    call api_idx_000a_JPLR           ; 0x7eb1
    add sp, byte 8                   ; 0x7eb4
    mov ax, word [bss_a5b8]          ; 0x7eb7
    cmp ax, word [bss_a5aa]          ; 0x7eba
    jl short @..api_idx_000a_THHN.l59 ; 0x7ebe
    jmp near @..api_idx_000a_THHN.l63 ; 0x7ec0
@..api_idx_000a_THHN.l59:
    cmp word [bss_a600], byte 0x64   ; 0x7ec3
    jl short @..api_idx_000a_THHN.l60 ; 0x7ec8
    jmp near @..api_idx_000a_THHN.l63 ; 0x7eca
@..api_idx_000a_THHN.l60:
    push word [bss_a600]             ; 0x7ecd
    push word [bss_a5f2]             ; 0x7ed1
    push word [bss_a5e2]             ; 0x7ed5
    mov ax, 6                        ; 0x7ed9
    push ax                          ; 0x7edc
    mov ax, 0x11                     ; 0x7edd
    push ax                          ; 0x7ee0
    call api_idx_000a_IGIN           ; 0x7ee1
    add sp, byte 0x0a                ; 0x7ee4
    push word [bss_a600]             ; 0x7ee7
    push word [bss_a5f2]             ; 0x7eeb
    push word [bss_a5e2]             ; 0x7eef
    mov ax, 2                        ; 0x7ef3
    push ax                          ; 0x7ef6
    call random_below                ; 0x7ef7
    pop cx                           ; 0x7efa
    add ax, strict word 7            ; 0x7efb
    push ax                          ; 0x7efe
    mov ax, 0x11                     ; 0x7eff
    push ax                          ; 0x7f02
    call api_idx_000a_IGIN           ; 0x7f03
    add sp, byte 0x0a                ; 0x7f06
    cmp word [bss_a5e2], byte 0x0a   ; 0x7f09
    jle short @..api_idx_000a_THHN.l61 ; 0x7f0e
    inc word [bss_a600]              ; 0x7f10
    inc word [bss_a600]              ; 0x7f14
@..api_idx_000a_THHN.l61:
    cmp word [bss_a5e2], strict word 0xa0 ; 0x7f18
    jge short @..api_idx_000a_THHN.l62 ; 0x7f1e
    mov ax, word [bss_a600]          ; 0x7f20
    mov cx, 0xa                      ; 0x7f23
    cwd                              ; 0x7f26
    idiv cx                          ; 0x7f27
    add ax, word [bss_a5e2]          ; 0x7f29
    add ax, strict word 5            ; 0x7f2d
    mov word [bss_a5e2], ax          ; 0x7f30
@..api_idx_000a_THHN.l62:
    cmp word [bss_a5f2], byte 0x28   ; 0x7f33
    jle short @..api_idx_000a_THHN.l63 ; 0x7f38
    mov ax, word [bss_a5f2]          ; 0x7f3a
    mov word [bss_a5f2], ax          ; 0x7f3d
    dec word [bss_a5f2]              ; 0x7f40
@..api_idx_000a_THHN.l63:
    jmp near @..api_idx_000a_THHN.l112 ; 0x7f44
jumptable_85d0_case_6:
    mov ax, 0                        ; 0x7f47
    push ax                          ; 0x7f4a
    push ax                          ; 0x7f4b
    push word [bss_a5b4]             ; 0x7f4c
    push word [bss_a5b2]             ; 0x7f50
    call gfx_restore_screen          ; 0x7f54
    add sp, byte 8                   ; 0x7f57
    mov ax, word [bss_a5b6]          ; 0x7f5a
    cmp ax, word [bss_a5aa]          ; 0x7f5d
    jl short @..api_idx_000a_THHN.l64 ; 0x7f61
    jmp near @..api_idx_000a_THHN.l73 ; 0x7f63
@..api_idx_000a_THHN.l64:
    mov ax, 1                        ; 0x7f66
    push ax                          ; 0x7f69
    mov ax, 0x4b                     ; 0x7f6a
    push ax                          ; 0x7f6d
    mov ax, 1                        ; 0x7f6e
    push ax                          ; 0x7f71
    mov ax, 0xf                      ; 0x7f72
    push ax                          ; 0x7f75
    call api_idx_000a_JPLR           ; 0x7f76
    add sp, byte 8                   ; 0x7f79
    mov ax, 0x42                     ; 0x7f7c
    push ax                          ; 0x7f7f
    mov ax, 0x93                     ; 0x7f80
    push ax                          ; 0x7f83
    mov ax, 2                        ; 0x7f84
    push ax                          ; 0x7f87
    mov ax, 0xf                      ; 0x7f88
    push ax                          ; 0x7f8b
    call api_idx_000a_JPLR           ; 0x7f8c
    add sp, byte 8                   ; 0x7f8f
    mov ax, 0x51                     ; 0x7f92
    push ax                          ; 0x7f95
    mov ax, 0x3d                     ; 0x7f96
    push ax                          ; 0x7f99
    mov ax, 3                        ; 0x7f9a
    push ax                          ; 0x7f9d
    mov ax, 0xf                      ; 0x7f9e
    push ax                          ; 0x7fa1
    call api_idx_000a_JPLR           ; 0x7fa2
    add sp, byte 8                   ; 0x7fa5
    mov ax, 0x51                     ; 0x7fa8
    push ax                          ; 0x7fab
    mov ax, 0x85                     ; 0x7fac
    push ax                          ; 0x7faf
    mov ax, 4                        ; 0x7fb0
    push ax                          ; 0x7fb3
    mov ax, 0xf                      ; 0x7fb4
    push ax                          ; 0x7fb7
    call api_idx_000a_JPLR           ; 0x7fb8
    add sp, byte 8                   ; 0x7fbb
    mov ax, 0x5a                     ; 0x7fbe
    push ax                          ; 0x7fc1
    mov ax, 0xcd                     ; 0x7fc2
    push ax                          ; 0x7fc5
    mov ax, 5                        ; 0x7fc6
    push ax                          ; 0x7fc9
    mov ax, 0xf                      ; 0x7fca
    push ax                          ; 0x7fcd
    call api_idx_000a_JPLR           ; 0x7fce
    add sp, byte 8                   ; 0x7fd1
    cmp word [bss_a5ce], byte 0      ; 0x7fd4
    jg short @..api_idx_000a_THHN.l65 ; 0x7fd9
    cmp word [bss_a5fa], byte 0      ; 0x7fdb
    jne short @..api_idx_000a_THHN.l67 ; 0x7fe0
    mov ax, 3                        ; 0x7fe2
    push ax                          ; 0x7fe5
    call random_below                ; 0x7fe6
    pop cx                           ; 0x7fe9
    test ax, ax                      ; 0x7fea
    jne short @..api_idx_000a_THHN.l67 ; 0x7fec
@..api_idx_000a_THHN.l65:
    mov ax, 0x1d                     ; 0x7fee
    push ax                          ; 0x7ff1
    mov ax, 0xab                     ; 0x7ff2
    push ax                          ; 0x7ff5
    mov ax, word [bss_a5ce]          ; 0x7ff6
    add ax, strict word 6            ; 0x7ff9
    push ax                          ; 0x7ffc
    mov ax, 0xf                      ; 0x7ffd
    push ax                          ; 0x8000
    call api_idx_000a_JPLR           ; 0x8001
    add sp, byte 8                   ; 0x8004
    inc word [bss_a5ce]              ; 0x8007
    mov ax, word [bss_a5ce]          ; 0x800b
    cmp ax, strict word 9            ; 0x800e
    jne short @..api_idx_000a_THHN.l66 ; 0x8011
    mov word [bss_a5ce], 0           ; 0x8013
@..api_idx_000a_THHN.l66:
    jmp near @..api_idx_000a_THHN.l73 ; 0x8019
@..api_idx_000a_THHN.l67:
    cmp word [bss_a5fa], byte 0      ; 0x801c
    jg short @..api_idx_000a_THHN.l68 ; 0x8021
    cmp word [bss_a5ce], byte 0      ; 0x8023
    jne short @..api_idx_000a_THHN.l72 ; 0x8028
    mov ax, 5                        ; 0x802a
    push ax                          ; 0x802d
    call random_below                ; 0x802e
    pop cx                           ; 0x8031
    test ax, ax                      ; 0x8032
    jne short @..api_idx_000a_THHN.l72 ; 0x8034
@..api_idx_000a_THHN.l68:
    mov ax, word [bss_a5fa]          ; 0x8036
    mov cx, 6                        ; 0x8039
    cwd                              ; 0x803c
    idiv cx                          ; 0x803d
    mov bx, dx                       ; 0x803f
    mov al, byte [bx + bss_a5c6]     ; 0x8041
    sub ah, ah                       ; 0x8045
    add ax, strict word 0xffcf       ; 0x8047
    mov word [bp - 0x0006], ax       ; 0x804a
    mov ax, 0x1d                     ; 0x804d
    push ax                          ; 0x8050
    mov ax, 0xab                     ; 0x8051
    push ax                          ; 0x8054
    mov ax, word [bp - 0x0006]       ; 0x8055
    add ax, strict word 0xe          ; 0x8058
    push ax                          ; 0x805b
    mov ax, 0xf                      ; 0x805c
    push ax                          ; 0x805f
    call api_idx_000a_JPLR           ; 0x8060
    add sp, byte 8                   ; 0x8063
    mov ax, word [bss_a5b0]          ; 0x8066
    mov cx, 2                        ; 0x8069
    cwd                              ; 0x806c
    idiv cx                          ; 0x806d
    mov ax, dx                       ; 0x806f
    test ax, ax                      ; 0x8071
    jne short @..api_idx_000a_THHN.l69 ; 0x8073
    cmp word [bss_a5fa], byte 0      ; 0x8075
    jne short @..api_idx_000a_THHN.l70 ; 0x807a
@..api_idx_000a_THHN.l69:
    inc word [bss_a5fa]              ; 0x807c
@..api_idx_000a_THHN.l70:
    cmp word [bss_a5fa], byte 6      ; 0x8080
    jne short @..api_idx_000a_THHN.l71 ; 0x8085
    mov word [bss_a5fa], 0           ; 0x8087
@..api_idx_000a_THHN.l71:
    jmp short @..api_idx_000a_THHN.l73 ; 0x808d
@..api_idx_000a_THHN.l72:
    mov ax, 0x1d                     ; 0x808f
    push ax                          ; 0x8092
    mov ax, 0xab                     ; 0x8093
    push ax                          ; 0x8096
    mov ax, 0xe                      ; 0x8097
    push ax                          ; 0x809a
    mov ax, 0xf                      ; 0x809b
    push ax                          ; 0x809e
    call api_idx_000a_JPLR           ; 0x809f
    add sp, byte 8                   ; 0x80a2
@..api_idx_000a_THHN.l73:
    jmp near @..api_idx_000a_THHN.l112 ; 0x80a5
jumptable_85d0_case_7:
    mov ax, 0                        ; 0x80a8
    push ax                          ; 0x80ab
    push ax                          ; 0x80ac
    push word [bss_a5b4]             ; 0x80ad
    push word [bss_a5b2]             ; 0x80b1
    call gfx_restore_screen          ; 0x80b5
    add sp, byte 8                   ; 0x80b8
    mov ax, 3                        ; 0x80bb
    push ax                          ; 0x80be
    mov ax, 7                        ; 0x80bf
    push ax                          ; 0x80c2
    mov ax, word [bss_a5fc]          ; 0x80c3
    inc ax                           ; 0x80c6
    push ax                          ; 0x80c7
    mov ax, 0xf                      ; 0x80c8
    push ax                          ; 0x80cb
    call api_idx_000a_JPLR           ; 0x80cc
    add sp, byte 8                   ; 0x80cf
    mov ax, 3                        ; 0x80d2
    push ax                          ; 0x80d5
    mov ax, 0x127                    ; 0x80d6
    push ax                          ; 0x80d9
    mov ax, word [bss_a5fc]          ; 0x80da
    inc ax                           ; 0x80dd
    inc ax                           ; 0x80de
    inc ax                           ; 0x80df
    mov cx, 7                        ; 0x80e0
    cwd                              ; 0x80e3
    idiv cx                          ; 0x80e4
    mov ax, dx                       ; 0x80e6
    add ax, strict word 8            ; 0x80e8
    push ax                          ; 0x80eb
    mov ax, 0xf                      ; 0x80ec
    push ax                          ; 0x80ef
    call api_idx_000a_JPLR           ; 0x80f0
    add sp, byte 8                   ; 0x80f3
    mov ax, word [bss_a5fc]          ; 0x80f6
    inc ax                           ; 0x80f9
    mov cx, 7                        ; 0x80fa
    cwd                              ; 0x80fd
    idiv cx                          ; 0x80fe
    mov word [bss_a5fc], dx          ; 0x8100
    mov ax, 0                        ; 0x8104
    mov cx, word [bss_a5b0]          ; 0x8107
    cmp cx, byte 6                   ; 0x810b
    jge short @..api_idx_000a_THHN.l74 ; 0x810e
    mov ax, 4                        ; 0x8110
    push ax                          ; 0x8113
    call random_below                ; 0x8114
    pop cx                           ; 0x8117
@..api_idx_000a_THHN.l74:
    mov word [bp - 0x0002], ax       ; 0x8118
    mov ax, 0x26                     ; 0x811b
    push ax                          ; 0x811e
    mov ax, 0                        ; 0x811f
    push ax                          ; 0x8122
    mov ax, word [bp - 0x0002]       ; 0x8123
    add ax, strict word 0xf          ; 0x8126
    push ax                          ; 0x8129
    mov ax, 0xf                      ; 0x812a
    push ax                          ; 0x812d
    call api_idx_000a_JPLR           ; 0x812e
    add sp, byte 8                   ; 0x8131
    mov ax, 0                        ; 0x8134
    mov cx, word [bss_a5b0]          ; 0x8137
    cmp cx, byte 5                   ; 0x813b
    jle short @..api_idx_000a_THHN.l75 ; 0x813e
    mov ax, 4                        ; 0x8140
    push ax                          ; 0x8143
    call random_below                ; 0x8144
    pop cx                           ; 0x8147
@..api_idx_000a_THHN.l75:
    mov word [bp - 0x0002], ax       ; 0x8148
    mov ax, 0x27                     ; 0x814b
    push ax                          ; 0x814e
    mov ax, 0x11e                    ; 0x814f
    push ax                          ; 0x8152
    mov ax, word [bp - 0x0002]       ; 0x8153
    add ax, strict word 0x13         ; 0x8156
    push ax                          ; 0x8159
    mov ax, 0xf                      ; 0x815a
    push ax                          ; 0x815d
    call api_idx_000a_JPLR           ; 0x815e
    add sp, byte 8                   ; 0x8161
    mov ax, 4                        ; 0x8164
    push ax                          ; 0x8167
    call random_below                ; 0x8168
    pop cx                           ; 0x816b
    test ax, ax                      ; 0x816c
    je short @..api_idx_000a_THHN.l76 ; 0x816e
    mov ax, word [bss_a5b0]          ; 0x8170
    mov cx, 4                        ; 0x8173
    cwd                              ; 0x8176
    idiv cx                          ; 0x8177
    jmp short @..api_idx_000a_THHN.l77 ; 0x8179
@..api_idx_000a_THHN.l76:
    mov ax, 0                        ; 0x817b
@..api_idx_000a_THHN.l77:
    mov word [bp - 0x0006], ax       ; 0x817e
    mov ax, 0x49                     ; 0x8181
    push ax                          ; 0x8184
    mov ax, 0xbb                     ; 0x8185
    push ax                          ; 0x8188
    mov ax, word [bp - 0x0006]       ; 0x8189
    add ax, strict word 0x17         ; 0x818c
    push ax                          ; 0x818f
    mov ax, 0xf                      ; 0x8190
    push ax                          ; 0x8193
    call api_idx_000a_JPLR           ; 0x8194
    add sp, byte 8                   ; 0x8197
    mov ax, 0x4f                     ; 0x819a
    push ax                          ; 0x819d
    mov ax, 0x95                     ; 0x819e
    push ax                          ; 0x81a1
    mov ax, word [bss_a5b0]          ; 0x81a2
    mov cx, 4                        ; 0x81a5
    cwd                              ; 0x81a8
    idiv cx                          ; 0x81a9
    add ax, strict word 0x1a         ; 0x81ab
    push ax                          ; 0x81ae
    mov ax, 0xf                      ; 0x81af
    push ax                          ; 0x81b2
    call api_idx_000a_JPLR           ; 0x81b3
    add sp, byte 8                   ; 0x81b6
    cmp word [bss_a5ce], byte 0      ; 0x81b9
    jg short @..api_idx_000a_THHN.l78 ; 0x81be
    cmp word [bss_a5fa], byte 0      ; 0x81c0
    jne short @..api_idx_000a_THHN.l82 ; 0x81c5
    mov ax, 0xf                      ; 0x81c7
    push ax                          ; 0x81ca
    call random_below                ; 0x81cb
    pop cx                           ; 0x81ce
    test ax, ax                      ; 0x81cf
    jne short @..api_idx_000a_THHN.l82 ; 0x81d1
@..api_idx_000a_THHN.l78:
    mov ax, word [bss_a5ce]          ; 0x81d3
    mov cx, 6                        ; 0x81d6
    cwd                              ; 0x81d9
    idiv cx                          ; 0x81da
    mov bx, dx                       ; 0x81dc
    mov al, byte [bx + bss_a5c6]     ; 0x81de
    sub ah, ah                       ; 0x81e2
    add ax, strict word 0xffcf       ; 0x81e4
    mov word [bp - 0x0006], ax       ; 0x81e7
    push cx                          ; 0x81ea
    mov ax, 0x8a                     ; 0x81eb
    push ax                          ; 0x81ee
    mov ax, word [bp - 0x0006]       ; 0x81ef
    add ax, strict word 0x1d         ; 0x81f2
    push ax                          ; 0x81f5
    mov ax, 0xf                      ; 0x81f6
    push ax                          ; 0x81f9
    call api_idx_000a_JPLR           ; 0x81fa
    add sp, byte 8                   ; 0x81fd
    mov ax, word [bss_a5b0]          ; 0x8200
    mov cx, 2                        ; 0x8203
    cwd                              ; 0x8206
    idiv cx                          ; 0x8207
    mov ax, dx                       ; 0x8209
    test ax, ax                      ; 0x820b
    jne short @..api_idx_000a_THHN.l79 ; 0x820d
    cmp word [bss_a5ce], byte 0      ; 0x820f
    jne short @..api_idx_000a_THHN.l80 ; 0x8214
@..api_idx_000a_THHN.l79:
    inc word [bss_a5ce]              ; 0x8216
@..api_idx_000a_THHN.l80:
    cmp word [bss_a5ce], byte 6      ; 0x821a
    jne short @..api_idx_000a_THHN.l81 ; 0x821f
    mov word [bss_a5ce], 0           ; 0x8221
@..api_idx_000a_THHN.l81:
    jmp near @..api_idx_000a_THHN.l89 ; 0x8227
@..api_idx_000a_THHN.l82:
    cmp word [bss_a5fa], byte 0      ; 0x822a
    jg short @..api_idx_000a_THHN.l84 ; 0x822f
    cmp word [bss_a5ce], byte 0      ; 0x8231
    je short @..api_idx_000a_THHN.l83 ; 0x8236
    jmp near @..api_idx_000a_THHN.l88 ; 0x8238
@..api_idx_000a_THHN.l83:
    mov ax, 0xf                      ; 0x823b
    push ax                          ; 0x823e
    call random_below                ; 0x823f
    pop cx                           ; 0x8242
    test ax, ax                      ; 0x8243
    jne short @..api_idx_000a_THHN.l88 ; 0x8245
@..api_idx_000a_THHN.l84:
    mov ax, word [bss_a5fa]          ; 0x8247
    mov cx, 6                        ; 0x824a
    cwd                              ; 0x824d
    idiv cx                          ; 0x824e
    mov bx, dx                       ; 0x8250
    mov al, byte [bx + bss_a5c6]     ; 0x8252
    sub ah, ah                       ; 0x8256
    add ax, strict word 0xffcf       ; 0x8258
    mov word [bp - 0x0006], ax       ; 0x825b
    push cx                          ; 0x825e
    mov ax, 0x8a                     ; 0x825f
    push ax                          ; 0x8262
    mov ax, 0x1d                     ; 0x8263
    push ax                          ; 0x8266
    mov ax, 0xf                      ; 0x8267
    push ax                          ; 0x826a
    call api_idx_000a_JPLR           ; 0x826b
    add sp, byte 8                   ; 0x826e
    mov ax, 0x18                     ; 0x8271
    push ax                          ; 0x8274
    mov ax, 0x8d                     ; 0x8275
    push ax                          ; 0x8278
    mov ax, word [bp - 0x0006]       ; 0x8279
    add ax, strict word 0x21         ; 0x827c
    push ax                          ; 0x827f
    mov ax, 0xf                      ; 0x8280
    push ax                          ; 0x8283
    call api_idx_000a_JPLR           ; 0x8284
    add sp, byte 8                   ; 0x8287
    mov ax, word [bss_a5b0]          ; 0x828a
    mov cx, 2                        ; 0x828d
    cwd                              ; 0x8290
    idiv cx                          ; 0x8291
    mov ax, dx                       ; 0x8293
    test ax, ax                      ; 0x8295
    jne short @..api_idx_000a_THHN.l85 ; 0x8297
    cmp word [bss_a5fa], byte 0      ; 0x8299
    jne short @..api_idx_000a_THHN.l86 ; 0x829e
@..api_idx_000a_THHN.l85:
    inc word [bss_a5fa]              ; 0x82a0
@..api_idx_000a_THHN.l86:
    cmp word [bss_a5fa], byte 6      ; 0x82a4
    jne short @..api_idx_000a_THHN.l87 ; 0x82a9
    mov word [bss_a5fa], 0           ; 0x82ab
@..api_idx_000a_THHN.l87:
    jmp short @..api_idx_000a_THHN.l89 ; 0x82b1
@..api_idx_000a_THHN.l88:
    mov ax, 6                        ; 0x82b3
    push ax                          ; 0x82b6
    mov ax, 0x8a                     ; 0x82b7
    push ax                          ; 0x82ba
    mov ax, 0x1d                     ; 0x82bb
    push ax                          ; 0x82be
    mov ax, 0xf                      ; 0x82bf
    push ax                          ; 0x82c2
    call api_idx_000a_JPLR           ; 0x82c3
    add sp, byte 8                   ; 0x82c6
@..api_idx_000a_THHN.l89:
    mov ax, 0x66                     ; 0x82c9
    push ax                          ; 0x82cc
    mov ax, 0xdb                     ; 0x82cd
    push ax                          ; 0x82d0
    mov ax, word [bss_a5b0]          ; 0x82d1
    mov cx, 2                        ; 0x82d4
    cwd                              ; 0x82d7
    idiv cx                          ; 0x82d8
    cwd                              ; 0x82da
    idiv cx                          ; 0x82db
    mov ax, dx                       ; 0x82dd
    add ax, strict word 0x26         ; 0x82df
    push ax                          ; 0x82e2
    mov ax, 0xf                      ; 0x82e3
    push ax                          ; 0x82e6
    call api_idx_000a_JPLR           ; 0x82e7
    add sp, byte 8                   ; 0x82ea
    mov ax, 0x66                     ; 0x82ed
    push ax                          ; 0x82f0
    mov ax, 0x54                     ; 0x82f1
    push ax                          ; 0x82f4
    mov ax, word [bss_a5b0]          ; 0x82f5
    mov cx, 2                        ; 0x82f8
    cwd                              ; 0x82fb
    idiv cx                          ; 0x82fc
    cwd                              ; 0x82fe
    idiv cx                          ; 0x82ff
    mov ax, dx                       ; 0x8301
    add ax, strict word 0x28         ; 0x8303
    push ax                          ; 0x8306
    mov ax, 0xf                      ; 0x8307
    push ax                          ; 0x830a
    call api_idx_000a_JPLR           ; 0x830b
    add sp, byte 8                   ; 0x830e
    mov ax, word [bss_a5fe]          ; 0x8311
    mov cx, 6                        ; 0x8314
    cwd                              ; 0x8317
    idiv cx                          ; 0x8318
    mov bx, dx                       ; 0x831a
    mov al, byte [bx + bss_a5c6]     ; 0x831c
    sub ah, ah                       ; 0x8320
    add ax, strict word 0xffcf       ; 0x8322
    mov word [bp - 0x0006], ax       ; 0x8325
    mov ax, 0x41                     ; 0x8328
    push ax                          ; 0x832b
    mov ax, 0x6f                     ; 0x832c
    push ax                          ; 0x832f
    mov ax, word [bp - 0x0006]       ; 0x8330
    add ax, strict word 0x2a         ; 0x8333
    push ax                          ; 0x8336
    mov ax, 0xf                      ; 0x8337
    push ax                          ; 0x833a
    call api_idx_000a_JPLR           ; 0x833b
    add sp, byte 8                   ; 0x833e
    cmp word [bss_a5fe], byte 0      ; 0x8341
    jg short @..api_idx_000a_THHN.l90 ; 0x8346
    mov ax, 0xa                      ; 0x8348
    push ax                          ; 0x834b
    call random_below                ; 0x834c
    pop cx                           ; 0x834f
    test ax, ax                      ; 0x8350
    jne short @..api_idx_000a_THHN.l93 ; 0x8352
@..api_idx_000a_THHN.l90:
    mov ax, 3                        ; 0x8354
    push ax                          ; 0x8357
    call random_below                ; 0x8358
    pop cx                           ; 0x835b
    test ax, ax                      ; 0x835c
    jne short @..api_idx_000a_THHN.l91 ; 0x835e
    inc word [bss_a5fe]              ; 0x8360
@..api_idx_000a_THHN.l91:
    cmp word [bss_a5fe], byte 6      ; 0x8364
    jne short @..api_idx_000a_THHN.l92 ; 0x8369
    mov word [bss_a5fe], 0           ; 0x836b
@..api_idx_000a_THHN.l92:
    cmp word [bss_a5fe], byte 4      ; 0x8371
    jne short @..api_idx_000a_THHN.l93 ; 0x8376
    mov ax, 2                        ; 0x8378
    push ax                          ; 0x837b
    call random_below                ; 0x837c
    pop cx                           ; 0x837f
    test ax, ax                      ; 0x8380
    je short @..api_idx_000a_THHN.l93 ; 0x8382
    mov word [bss_a5fe], 0           ; 0x8384
@..api_idx_000a_THHN.l93:
    jmp near @..api_idx_000a_THHN.l112 ; 0x838a
jumptable_85d0_case_8:
    mov ax, 0                        ; 0x838d
    push ax                          ; 0x8390
    push ax                          ; 0x8391
    push word [bss_a5b4]             ; 0x8392
    push word [bss_a5b2]             ; 0x8396
    call gfx_restore_screen          ; 0x839a
    add sp, byte 8                   ; 0x839d
    mov ax, word [bss_a5b8]          ; 0x83a0
    cmp ax, word [bss_a5aa]          ; 0x83a3
    jl short @..api_idx_000a_THHN.l94 ; 0x83a7
    jmp near @..api_idx_000a_THHN.l98 ; 0x83a9
@..api_idx_000a_THHN.l94:
    mov ax, 0x17                     ; 0x83ac
    push ax                          ; 0x83af
    mov ax, 0x38                     ; 0x83b0
    push ax                          ; 0x83b3
    mov ax, 1                        ; 0x83b4
    push ax                          ; 0x83b7
    mov ax, 0xf                      ; 0x83b8
    push ax                          ; 0x83bb
    call api_idx_000a_JPLR           ; 0x83bc
    add sp, byte 8                   ; 0x83bf
    mov ax, 0x27                     ; 0x83c2
    push ax                          ; 0x83c5
    mov ax, 0x93                     ; 0x83c6
    push ax                          ; 0x83c9
    mov ax, 2                        ; 0x83ca
    push ax                          ; 0x83cd
    mov ax, 0xf                      ; 0x83ce
    push ax                          ; 0x83d1
    call api_idx_000a_JPLR           ; 0x83d2
    add sp, byte 8                   ; 0x83d5
    mov ax, 0x55                     ; 0x83d8
    push ax                          ; 0x83db
    mov ax, 0x23                     ; 0x83dc
    push ax                          ; 0x83df
    mov ax, 3                        ; 0x83e0
    push ax                          ; 0x83e3
    mov ax, 0xf                      ; 0x83e4
    push ax                          ; 0x83e7
    call api_idx_000a_JPLR           ; 0x83e8
    add sp, byte 8                   ; 0x83eb
    mov ax, 0x55                     ; 0x83ee
    push ax                          ; 0x83f1
    mov ax, 0x93                     ; 0x83f2
    push ax                          ; 0x83f5
    mov ax, 4                        ; 0x83f6
    push ax                          ; 0x83f9
    mov ax, 0xf                      ; 0x83fa
    push ax                          ; 0x83fd
    call api_idx_000a_JPLR           ; 0x83fe
    add sp, byte 8                   ; 0x8401
    cmp word [bss_a5fc], byte 0      ; 0x8404
    jg short @..api_idx_000a_THHN.l95 ; 0x8409
    mov ax, 3                        ; 0x840b
    push ax                          ; 0x840e
    call random_below                ; 0x840f
    pop cx                           ; 0x8412
    test ax, ax                      ; 0x8413
    jne short @..api_idx_000a_THHN.l96 ; 0x8415
@..api_idx_000a_THHN.l95:
    mov ax, 2                        ; 0x8417
    push ax                          ; 0x841a
    call random_below                ; 0x841b
    pop cx                           ; 0x841e
    test ax, ax                      ; 0x841f
    je short @..api_idx_000a_THHN.l96 ; 0x8421
    mov ax, 3                        ; 0x8423
    push ax                          ; 0x8426
    call random_below                ; 0x8427
    pop cx                           ; 0x842a
    inc ax                           ; 0x842b
    mov word [bss_a5fc], ax          ; 0x842c
@..api_idx_000a_THHN.l96:
    mov ax, 8                        ; 0x842f
    push ax                          ; 0x8432
    call random_below                ; 0x8433
    pop cx                           ; 0x8436
    test ax, ax                      ; 0x8437
    jne short @..api_idx_000a_THHN.l97 ; 0x8439
    mov word [bss_a5fc], 0           ; 0x843b
@..api_idx_000a_THHN.l97:
    mov ax, 0x37                     ; 0x8441
    push ax                          ; 0x8444
    mov ax, 0x4f                     ; 0x8445
    push ax                          ; 0x8448
    mov ax, word [bss_a5fc]          ; 0x8449
    add ax, strict word 5            ; 0x844c
    push ax                          ; 0x844f
    mov ax, 0xf                      ; 0x8450
    push ax                          ; 0x8453
    call api_idx_000a_JPLR           ; 0x8454
    add sp, byte 8                   ; 0x8457
    mov ax, 0x2a                     ; 0x845a
    push ax                          ; 0x845d
    mov ax, 0x57                     ; 0x845e
    push ax                          ; 0x8461
    mov ax, word [bss_a5fe]          ; 0x8462
    add ax, strict word 9            ; 0x8465
    push ax                          ; 0x8468
    mov ax, 0xf                      ; 0x8469
    push ax                          ; 0x846c
    call api_idx_000a_JPLR           ; 0x846d
    add sp, byte 8                   ; 0x8470
    mov ax, 2                        ; 0x8473
    push ax                          ; 0x8476
    call random_below                ; 0x8477
    pop cx                           ; 0x847a
    test ax, ax                      ; 0x847b
    je short @..api_idx_000a_THHN.l98 ; 0x847d
    mov ax, 6                        ; 0x847f
    push ax                          ; 0x8482
    call random_below                ; 0x8483
    pop cx                           ; 0x8486
    mov word [bss_a5fe], ax          ; 0x8487
@..api_idx_000a_THHN.l98:
    mov ax, word [bss_a5ba]          ; 0x848a
    cmp ax, word [bss_a5aa]          ; 0x848d
    jl short @..api_idx_000a_THHN.l99 ; 0x8491
    jmp near @..api_idx_000a_THHN.l110 ; 0x8493
@..api_idx_000a_THHN.l99:
    mov ax, 0                        ; 0x8496
    push ax                          ; 0x8499
    mov ax, 0x22                     ; 0x849a
    push ax                          ; 0x849d
    mov ax, 1                        ; 0x849e
    push ax                          ; 0x84a1
    mov ax, 0x10                     ; 0x84a2
    push ax                          ; 0x84a5
    call api_idx_000a_JPLR           ; 0x84a6
    add sp, byte 8                   ; 0x84a9
    mov ax, 0x2a                     ; 0x84ac
    push ax                          ; 0x84af
    mov ax, 0x72                     ; 0x84b0
    push ax                          ; 0x84b3
    mov ax, 2                        ; 0x84b4
    push ax                          ; 0x84b7
    mov ax, 0x10                     ; 0x84b8
    push ax                          ; 0x84bb
    call api_idx_000a_JPLR           ; 0x84bc
    add sp, byte 8                   ; 0x84bf
    mov ax, 0x58                     ; 0x84c2
    push ax                          ; 0x84c5
    mov ax, 0x37                     ; 0x84c6
    push ax                          ; 0x84c9
    mov ax, 3                        ; 0x84ca
    push ax                          ; 0x84cd
    mov ax, 0x10                     ; 0x84ce
    push ax                          ; 0x84d1
    call api_idx_000a_JPLR           ; 0x84d2
    add sp, byte 8                   ; 0x84d5
    mov ax, 0x55                     ; 0x84d8
    push ax                          ; 0x84db
    mov ax, 0x87                     ; 0x84dc
    push ax                          ; 0x84df
    mov ax, 4                        ; 0x84e0
    push ax                          ; 0x84e3
    mov ax, 0x10                     ; 0x84e4
    push ax                          ; 0x84e7
    call api_idx_000a_JPLR           ; 0x84e8
    add sp, byte 8                   ; 0x84eb
    mov ax, 0x49                     ; 0x84ee
    push ax                          ; 0x84f1
    mov ax, 0xb2                     ; 0x84f2
    push ax                          ; 0x84f5
    mov ax, word [bss_a5ce]          ; 0x84f6
    add ax, strict word 5            ; 0x84f9
    push ax                          ; 0x84fc
    mov ax, 0x10                     ; 0x84fd
    push ax                          ; 0x8500
    call api_idx_000a_JPLR           ; 0x8501
    add sp, byte 8                   ; 0x8504
    cmp word [bss_a5fa], byte 0      ; 0x8507
    jg short @..api_idx_000a_THHN.l100 ; 0x850c
    jmp near @..api_idx_000a_THHN.l107 ; 0x850e
@..api_idx_000a_THHN.l100:
    mov ax, word [bss_a5fa]          ; 0x8511
    jmp short @..api_idx_000a_THHN.l105 ; 0x8514
@..api_idx_000a_THHN.l101:
    mov ax, 0x57                     ; 0x8516
    push ax                          ; 0x8519
    mov ax, 0xd0                     ; 0x851a
    push ax                          ; 0x851d
    mov ax, 9                        ; 0x851e
    push ax                          ; 0x8521
    mov ax, 0x10                     ; 0x8522
    push ax                          ; 0x8525
    call api_idx_000a_JPLR           ; 0x8526
    add sp, byte 8                   ; 0x8529
    jmp short @..api_idx_000a_THHN.l106 ; 0x852c
@..api_idx_000a_THHN.l102:
    mov ax, 0x4d                     ; 0x852e
    push ax                          ; 0x8531
    mov ax, 0xe4                     ; 0x8532
    push ax                          ; 0x8535
    mov ax, 0xa                      ; 0x8536
    push ax                          ; 0x8539
    mov ax, 0x10                     ; 0x853a
    push ax                          ; 0x853d
    call api_idx_000a_JPLR           ; 0x853e
    add sp, byte 8                   ; 0x8541
    jmp short @..api_idx_000a_THHN.l106 ; 0x8544
@..api_idx_000a_THHN.l103:
    mov ax, 0x42                     ; 0x8546
    push ax                          ; 0x8549
    mov ax, 0xfa                     ; 0x854a
    push ax                          ; 0x854d
    mov ax, 0xb                      ; 0x854e
    push ax                          ; 0x8551
    mov ax, 0x10                     ; 0x8552
    push ax                          ; 0x8555
    call api_idx_000a_JPLR           ; 0x8556
    add sp, byte 8                   ; 0x8559
    jmp short @..api_idx_000a_THHN.l106 ; 0x855c
@..api_idx_000a_THHN.l104:
    mov ax, 0x33                     ; 0x855e
    push ax                          ; 0x8561
    mov ax, 0x118                    ; 0x8562
    push ax                          ; 0x8565
    mov ax, 0xc                      ; 0x8566
    push ax                          ; 0x8569
    mov ax, 0x10                     ; 0x856a
    push ax                          ; 0x856d
    call api_idx_000a_JPLR           ; 0x856e
    add sp, byte 8                   ; 0x8571
    jmp short @..api_idx_000a_THHN.l106 ; 0x8574
@..api_idx_000a_THHN.l105:
    cmp ax, strict word 1            ; 0x8576
    je short @..api_idx_000a_THHN.l101 ; 0x8579
    cmp ax, strict word 2            ; 0x857b
    je short @..api_idx_000a_THHN.l102 ; 0x857e
    cmp ax, strict word 3            ; 0x8580
    je short @..api_idx_000a_THHN.l103 ; 0x8583
    cmp ax, strict word 4            ; 0x8585
    je short @..api_idx_000a_THHN.l104 ; 0x8588
@..api_idx_000a_THHN.l106:
    inc word [bss_a5fa]              ; 0x858a
    mov ax, word [bss_a5fa]          ; 0x858e
    cmp ax, strict word 4            ; 0x8591
    jle short @..api_idx_000a_THHN.l107 ; 0x8594
    mov word [bss_a5fa], 0           ; 0x8596
@..api_idx_000a_THHN.l107:
    cmp word [bss_a5ce], byte 0      ; 0x859c
    jg short @..api_idx_000a_THHN.l108 ; 0x85a1
    mov ax, 0xa                      ; 0x85a3
    push ax                          ; 0x85a6
    call random_below                ; 0x85a7
    pop cx                           ; 0x85aa
    test ax, ax                      ; 0x85ab
    jne short @..api_idx_000a_THHN.l110 ; 0x85ad
@..api_idx_000a_THHN.l108:
    inc word [bss_a5ce]              ; 0x85af
    mov ax, word [bss_a5ce]          ; 0x85b3
    cmp ax, strict word 2            ; 0x85b6
    jne short @..api_idx_000a_THHN.l109 ; 0x85b9
    mov word [bss_a5fa], 1           ; 0x85bb
@..api_idx_000a_THHN.l109:
    cmp word [bss_a5ce], byte 3      ; 0x85c1
    jle short @..api_idx_000a_THHN.l110 ; 0x85c6
    mov word [bss_a5ce], 0           ; 0x85c8
@..api_idx_000a_THHN.l110:
    jmp short @..api_idx_000a_THHN.l112 ; 0x85ce
jumptable_85d0:
    dw jumptable_85d0_case_0 - IMAGE_BASE + __zres_end ; 0x85d0
    dw jumptable_85d0_case_1 - IMAGE_BASE + __zres_end ; 0x85d2
    dw jumptable_85d0_case_2 - IMAGE_BASE + __zres_end ; 0x85d4
    dw jumptable_85d0_case_3 - IMAGE_BASE + __zres_end ; 0x85d6
    dw jumptable_85d0_case_4 - IMAGE_BASE + __zres_end ; 0x85d8
    dw jumptable_85d0_case_5 - IMAGE_BASE + __zres_end ; 0x85da
    dw jumptable_85d0_case_6 - IMAGE_BASE + __zres_end ; 0x85dc
    dw jumptable_85d0_case_7 - IMAGE_BASE + __zres_end ; 0x85de
    dw jumptable_85d0_case_8 - IMAGE_BASE + __zres_end ; 0x85e0
@..api_idx_000a_THHN.l111:
    cmp ax, strict word 9            ; 0x85e2
    jae short @..api_idx_000a_THHN.l112 ; 0x85e5
    xchg bx, ax                      ; 0x85e7
    shl bx, 1                        ; 0x85e8
    jmp [cs:bx + jumptable_85d0 - IMAGE_BASE + __zres_end] ; 0x85ea
jumptable_85d0_case_0:
@..api_idx_000a_THHN.l112:
    ret                              ; 0x85ef
loc_QSVI:
    mov ax, 0                        ; 0x85f0
    call aztec_csav                  ; 0x85f3
    mov word [bss_a5aa], 1           ; 0x85f6
    mov ax, 0                        ; 0x85fc
    push ax                          ; 0x85ff
    push ax                          ; 0x8600
    push ax                          ; 0x8601
    push ax                          ; 0x8602
    call gfx_fade_out                ; 0x8603
    add sp, byte 8                   ; 0x8606
    mov ax, 0                        ; 0x8609
    push ax                          ; 0x860c
    mov ax, 0xc7                     ; 0x860d
    push ax                          ; 0x8610
    mov ax, 0x13f                    ; 0x8611
    push ax                          ; 0x8614
    mov ax, 0                        ; 0x8615
    push ax                          ; 0x8618
    push ax                          ; 0x8619
    call gfx_fill_area               ; 0x861a
    add sp, byte 0x0a                ; 0x861d
    mov ax, 0xc7                     ; 0x8620
    push ax                          ; 0x8623
    mov ax, 0x13f                    ; 0x8624
    push ax                          ; 0x8627
    mov ax, 0                        ; 0x8628
    push ax                          ; 0x862b
    push ax                          ; 0x862c
    call gfx_show_area               ; 0x862d
    add sp, byte 8                   ; 0x8630
    ret                              ; 0x8633
