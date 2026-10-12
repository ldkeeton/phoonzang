api_idx_000a_5:
    mov ax, 0xfff6                   ; 0x7434
    call ds_aztec_csav               ; 0x7437
    mov word [bss_91d6], 4           ; 0x743a
    mov ax, 0x2c                     ; 0x7440
    imul word [bp + 0xa]             ; 0x7443
    mov si, ax                       ; 0x7446
    mov ax, word [bp + 0x8]          ; 0x7448
    shl ax, 1                        ; 0x744b
    mov bx, ax                       ; 0x744d
    mov bx, word [bx - 0x7b7e]       ; 0x744f
    mov cx, word [bx + si]           ; 0x7453
    mov bx, word [bp + 0x4]          ; 0x7455
    mov ax, word [bx]                ; 0x7458
    sub ax, cx                       ; 0x745a
    mov cx, 3                        ; 0x745c
    imul cx                          ; 0x745f
    mov word [bp - 0x0004], ax       ; 0x7461
    mov word [bp - 0x0002], 0        ; 0x7464
@..api_idx_000a_5.l1:
    mov ax, 0x64                     ; 0x7469
    push ax                          ; 0x746c
    call ds_app_09f0                 ; 0x746d
    pop cx                           ; 0x7470
    push ax                          ; 0x7471
    mov bx, word [bp + 0x6]          ; 0x7472
    mov si, word [bp - 0x0002]       ; 0x7475
    mov al, byte [bx + si + 0x4]     ; 0x7478
    sub ah, ah                       ; 0x747b
    mov cx, ax                       ; 0x747d
    pop ax                           ; 0x747f
    cmp ax, cx                       ; 0x7480
    jl short @..api_idx_000a_5.l2    ; 0x7482
    jmp near @..api_idx_000a_5.l22   ; 0x7484
@..api_idx_000a_5.l2:
    mov bx, word [bp + 0x4]          ; 0x7487
    mov ax, word [bx]                ; 0x748a
    mov cx, 3                        ; 0x748c
    cwd                              ; 0x748f
    idiv cx                          ; 0x7490
    inc ax                           ; 0x7492
    mov word [bp - 0x0006], ax       ; 0x7493
    mov ax, si                       ; 0x7496
    jmp near @..api_idx_000a_5.l21   ; 0x7498
jumptable_78e5_case_0:
    mov ax, 0                        ; 0x749b
    push ax                          ; 0x749e
    mov ax, 0xd50                    ; 0x749f
    push ax                          ; 0x74a2
    push word [bp - 0x0006]          ; 0x74a3
    mov ax, 2                        ; 0x74a6
    push ax                          ; 0x74a9
    push word [bp - 0x0006]          ; 0x74aa
    push word [bp - 0x0004]          ; 0x74ad
    push ax                          ; 0x74b0
    mov ax, 9                        ; 0x74b1
    push ax                          ; 0x74b4
    mov ax, 0xd92                    ; 0x74b5
    push ax                          ; 0x74b8
    push word [bp + 0xa]             ; 0x74b9
    push word [bp + 0x8]             ; 0x74bc
    call api_idx_0006_2              ; 0x74bf
    add sp, byte 0x16                ; 0x74c2
    jmp near @..api_idx_000a_5.l22   ; 0x74c5
jumptable_78e5_case_1:
    mov ax, 0                        ; 0x74c8
    push ax                          ; 0x74cb
    mov ax, 0xd50                    ; 0x74cc
    push ax                          ; 0x74cf
    push word [bp - 0x0006]          ; 0x74d0
    mov ax, 3                        ; 0x74d3
    push ax                          ; 0x74d6
    mov ax, word [bp - 0x0006]       ; 0x74d7
    imul ax                          ; 0x74da
    push ax                          ; 0x74dc
    push word [bp - 0x0004]          ; 0x74dd
    mov ax, 3                        ; 0x74e0
    push ax                          ; 0x74e3
    mov ax, 4                        ; 0x74e4
    push ax                          ; 0x74e7
    mov ax, 0xd93                    ; 0x74e8
    push ax                          ; 0x74eb
    push word [bp + 0xa]             ; 0x74ec
    push word [bp + 0x8]             ; 0x74ef
    call api_idx_0006_2              ; 0x74f2
    add sp, byte 0x16                ; 0x74f5
    jmp near @..api_idx_000a_5.l22   ; 0x74f8
jumptable_78e5_case_2:
    mov ax, 0                        ; 0x74fb
    push ax                          ; 0x74fe
    mov ax, 0xd50                    ; 0x74ff
    push ax                          ; 0x7502
    mov bx, word [bp + 0x6]          ; 0x7503
    mov al, byte [bx + 0xc]          ; 0x7506
    sub ah, ah                       ; 0x7509
    push ax                          ; 0x750b
    mov ax, 2                        ; 0x750c
    push ax                          ; 0x750f
    mov ax, 0xa                      ; 0x7510
    imul word [bp - 0x0006]          ; 0x7513
    push ax                          ; 0x7516
    push word [bp - 0x0004]          ; 0x7517
    mov ax, 5                        ; 0x751a
    push ax                          ; 0x751d
    mov ax, 6                        ; 0x751e
    push ax                          ; 0x7521
    mov ax, 0xd95                    ; 0x7522
    push ax                          ; 0x7525
    push word [bp + 0xa]             ; 0x7526
    push word [bp + 0x8]             ; 0x7529
    call api_idx_0006_2              ; 0x752c
    add sp, byte 0x16                ; 0x752f
    jmp near @..api_idx_000a_5.l22   ; 0x7532
jumptable_78e5_case_3:
    mov ax, 0                        ; 0x7535
    push ax                          ; 0x7538
    mov ax, 0xd50                    ; 0x7539
    push ax                          ; 0x753c
    push word [bp - 0x0004]          ; 0x753d
    mov ax, 2                        ; 0x7540
    push ax                          ; 0x7543
    mov ax, 0xb                      ; 0x7544
    push ax                          ; 0x7547
    mov ax, 0xd9d                    ; 0x7548
    push ax                          ; 0x754b
    push word [bp + 0xa]             ; 0x754c
    push word [bp + 0x8]             ; 0x754f
    call api_idx_0002_4              ; 0x7552
    add sp, byte 0x10                ; 0x7555
    jmp near @..api_idx_000a_5.l22   ; 0x7558
jumptable_78e5_case_4:
    mov ax, 0                        ; 0x755b
    push ax                          ; 0x755e
    mov ax, 0xd50                    ; 0x755f
    push ax                          ; 0x7562
    mov ax, 0xff                     ; 0x7563
    push ax                          ; 0x7566
    mov ax, 1                        ; 0x7567
    push ax                          ; 0x756a
    push ax                          ; 0x756b
    push word [bp - 0x0004]          ; 0x756c
    mov ax, 6                        ; 0x756f
    push ax                          ; 0x7572
    mov ax, 7                        ; 0x7573
    push ax                          ; 0x7576
    mov ax, 0xdaa                    ; 0x7577
    push ax                          ; 0x757a
    push word [bp + 0xa]             ; 0x757b
    push word [bp + 0x8]             ; 0x757e
    call api_idx_0006_2              ; 0x7581
    add sp, byte 0x16                ; 0x7584
    jmp near @..api_idx_000a_5.l22   ; 0x7587
jumptable_78e5_case_5:
    cmp word [bss_8464], byte 0      ; 0x758a
    jne short @..api_idx_000a_5.l3   ; 0x758f
    mov ax, word [bss_8464]          ; 0x7591
    shl ax, 1                        ; 0x7594
    mov bx, ax                       ; 0x7596
    mov bx, word [bx - 0x7b70]       ; 0x7598
    mov byte [bx + 0xdf], 3          ; 0x759c
@..api_idx_000a_5.l3:
    mov word [bp - 0x0008], 0        ; 0x75a1
    mov ax, word [bss_8464]          ; 0x75a6
    shl ax, 1                        ; 0x75a9
    mov bx, ax                       ; 0x75ab
    mov bx, word [bx - 0x7b70]       ; 0x75ad
    mov al, byte [bx + 0xdf]         ; 0x75b1
    sub ah, ah                       ; 0x75b5
    jmp near @..api_idx_000a_5.l11   ; 0x75b7
@..api_idx_000a_5.l4:
    mov ax, 0x64                     ; 0x75ba
    push ax                          ; 0x75bd
    call ds_app_09f0                 ; 0x75be
    pop cx                           ; 0x75c1
    push ax                          ; 0x75c2
    mov ax, word [bp + 0x8]          ; 0x75c3
    shl ax, 1                        ; 0x75c6
    mov bx, ax                       ; 0x75c8
    mov bx, word [bx - 0x7b70]       ; 0x75ca
    mov al, byte [bx + 0xa5]         ; 0x75ce
    sub ah, ah                       ; 0x75d2
    mov cx, ax                       ; 0x75d4
    pop ax                           ; 0x75d6
    cmp ax, cx                       ; 0x75d7
    jle short @..api_idx_000a_5.l5   ; 0x75d9
    mov ax, 3                        ; 0x75db
    imul word [bp - 0x0006]          ; 0x75de
    push ax                          ; 0x75e1
    mov ax, 5                        ; 0x75e2
    push ax                          ; 0x75e5
    mov ax, word [bp - 0x0006]       ; 0x75e6
    shl ax, 1                        ; 0x75e9
    push ax                          ; 0x75eb
    call ds_app_2331                 ; 0x75ec
    add sp, byte 6                   ; 0x75ef
    mov cx, ax                       ; 0x75f2
    sub sp, byte 4                   ; 0x75f4
    mov ax, sp                       ; 0x75f7
    mov dx, ss                       ; 0x75f9
    mov es, dx                       ; 0x75fb
    mov si, cx                       ; 0x75fd
    mov di, ax                       ; 0x75ff
    movsw                            ; 0x7601
    movsw                            ; 0x7602
    call ds_app_2305                 ; 0x7603
    add sp, byte 4                   ; 0x7606
    mov word [bp - 0x0008], ax       ; 0x7609
    push ax                          ; 0x760c
    mov ax, 0x2c                     ; 0x760d
    imul word [bp + 0xa]             ; 0x7610
    mov cx, ax                       ; 0x7613
    mov ax, word [bp + 0x8]          ; 0x7615
    shl ax, 1                        ; 0x7618
    mov bx, ax                       ; 0x761a
    mov ax, word [bx - 0x7b7e]       ; 0x761c
    add ax, cx                       ; 0x7620
    push ax                          ; 0x7622
    call loc_182b                    ; 0x7623
    add sp, byte 4                   ; 0x7626
    mov word [bp - 0x000a], 0xea7    ; 0x7629
@..api_idx_000a_5.l5:
    jmp near @..api_idx_000a_5.l13   ; 0x762e
@..api_idx_000a_5.l6:
    mov ax, 0x64                     ; 0x7631
    push ax                          ; 0x7634
    call ds_app_09f0                 ; 0x7635
    pop cx                           ; 0x7638
    push ax                          ; 0x7639
    mov ax, word [bp + 0x8]          ; 0x763a
    shl ax, 1                        ; 0x763d
    mov bx, ax                       ; 0x763f
    mov bx, word [bx - 0x7b70]       ; 0x7641
    mov al, byte [bx + 0xa5]         ; 0x7645
    sub ah, ah                       ; 0x7649
    mov cx, ax                       ; 0x764b
    pop ax                           ; 0x764d
    cmp ax, cx                       ; 0x764e
    jg short @..api_idx_000a_5.l7    ; 0x7650
    jmp near @..api_idx_000a_5.l10   ; 0x7652
@..api_idx_000a_5.l7:
    mov ax, 0                        ; 0x7655
    push ax                          ; 0x7658
    mov ax, 4                        ; 0x7659
    push ax                          ; 0x765c
    mov ax, 1                        ; 0x765d
    push ax                          ; 0x7660
    call ds_app_2331                 ; 0x7661
    add sp, byte 6                   ; 0x7664
    mov cx, ax                       ; 0x7667
    sub sp, byte 4                   ; 0x7669
    mov ax, sp                       ; 0x766c
    mov dx, ss                       ; 0x766e
    mov es, dx                       ; 0x7670
    mov si, cx                       ; 0x7672
    mov di, ax                       ; 0x7674
    movsw                            ; 0x7676
    movsw                            ; 0x7677
    call ds_app_2305                 ; 0x7678
    add sp, byte 4                   ; 0x767b
    mov word [bp - 0x0008], ax       ; 0x767e
    mov ax, word [bp - 0x0008]       ; 0x7681
    push ax                          ; 0x7684
    mov ax, 0x2c                     ; 0x7685
    imul word [bp + 0xa]             ; 0x7688
    mov si, ax                       ; 0x768b
    mov ax, word [bp + 0x8]          ; 0x768d
    shl ax, 1                        ; 0x7690
    mov bx, ax                       ; 0x7692
    mov bx, word [bx - 0x7b7e]       ; 0x7694
    pop ax                           ; 0x7698
    sub word [bx + si + 0x4], ax     ; 0x7699
    mov ax, word [bp - 0x0008]       ; 0x769c
    push ax                          ; 0x769f
    mov ax, 0x2c                     ; 0x76a0
    imul word [bp + 0xa]             ; 0x76a3
    mov si, ax                       ; 0x76a6
    mov ax, word [bp + 0x8]          ; 0x76a8
    shl ax, 1                        ; 0x76ab
    mov bx, ax                       ; 0x76ad
    mov bx, word [bx - 0x7b7e]       ; 0x76af
    pop ax                           ; 0x76b3
    sub word [bx + si + 0x2], ax     ; 0x76b4
    mov ax, 0x2c                     ; 0x76b7
    imul word [bp + 0xa]             ; 0x76ba
    mov si, ax                       ; 0x76bd
    mov ax, word [bp + 0x8]          ; 0x76bf
    shl ax, 1                        ; 0x76c2
    mov bx, ax                       ; 0x76c4
    mov bx, word [bx - 0x7b7e]       ; 0x76c6
    cmp word [bx + si + 0x4], byte 1 ; 0x76ca
    jge short @..api_idx_000a_5.l8   ; 0x76ce
    mov word [bx + si + 0x4], 1      ; 0x76d0
@..api_idx_000a_5.l8:
    cmp word [bp + 0x8], byte 0      ; 0x76d5
    jne short @..api_idx_000a_5.l9   ; 0x76d9
    mov ax, 0x2c                     ; 0x76db
    imul word [bp + 0xa]             ; 0x76de
    mov si, ax                       ; 0x76e1
    mov ax, word [bp + 0x8]          ; 0x76e3
    shl ax, 1                        ; 0x76e6
    mov bx, ax                       ; 0x76e8
    mov bx, word [bx - 0x7b7e]       ; 0x76ea
    mov ax, word [bx + si + 0x2]     ; 0x76ee
    push ax                          ; 0x76f1
    mov ax, 0x248                    ; 0x76f2
    imul word [bp + 0xa]             ; 0x76f5
    mov bx, ax                       ; 0x76f8
    pop ax                           ; 0x76fa
    mov word [bx + 0x5c0c], ax       ; 0x76fb
    mov ax, word [bp + 0x8]          ; 0x76ff
    shl ax, 1                        ; 0x7702
    mov bx, ax                       ; 0x7704
    mov bx, word [bx - 0x7b7e]       ; 0x7706
    mov ax, word [bx + si + 0x4]     ; 0x770a
    push ax                          ; 0x770d
    mov ax, 0x248                    ; 0x770e
    imul word [bp + 0xa]             ; 0x7711
    mov bx, ax                       ; 0x7714
    pop ax                           ; 0x7716
    mov word [bx + 0x5c0e], ax       ; 0x7717
@..api_idx_000a_5.l9:
    mov word [bp - 0x000a], 0xea8    ; 0x771b
@..api_idx_000a_5.l10:
    jmp short @..api_idx_000a_5.l13  ; 0x7720
@..api_idx_000a_5.l11:
    cmp ax, strict word 3            ; 0x7722
    jne short @..api_idx_000a_5.l12  ; 0x7725
    jmp near @..api_idx_000a_5.l4    ; 0x7727
@..api_idx_000a_5.l12:
    cmp ax, strict word 0xb          ; 0x772a
    jne short @..api_idx_000a_5.l13  ; 0x772d
    jmp near @..api_idx_000a_5.l6    ; 0x772f
@..api_idx_000a_5.l13:
    cmp word [bp - 0x0008], byte 0   ; 0x7732
    jg short @..api_idx_000a_5.l14   ; 0x7736
    jmp near @..api_idx_000a_5.l18   ; 0x7738
@..api_idx_000a_5.l14:
    push word [bp + 0xa]             ; 0x773b
    push word [bp + 0x8]             ; 0x773e
    mov ax, 0x90e6                   ; 0x7741
    push ax                          ; 0x7744
    call loc_15ab                    ; 0x7745
    add sp, byte 6                   ; 0x7748
    mov ax, 0x9186                   ; 0x774b
    push ax                          ; 0x774e
    push word [bp - 0x000a]          ; 0x774f
    call ds_app_mem_0782             ; 0x7752
    add sp, byte 4                   ; 0x7755
    cmp word [bp - 0x0008], byte 0   ; 0x7758
    jle short @..api_idx_000a_5.l15  ; 0x775c
    mov ax, 0x9136                   ; 0x775e
    push ax                          ; 0x7761
    push word [bp - 0x0008]          ; 0x7762
    call ds_app_04c4                 ; 0x7765
    add sp, byte 4                   ; 0x7768
    mov ax, 0x24                     ; 0x776b
    push ax                          ; 0x776e
    mov ax, 0x9136                   ; 0x776f
    push ax                          ; 0x7772
    mov ax, 0x9186                   ; 0x7773
    push ax                          ; 0x7776
    call ds_app_string_0547          ; 0x7777
    add sp, byte 6                   ; 0x777a
@..api_idx_000a_5.l15:
    mov ax, 0x9136                   ; 0x777d
    push ax                          ; 0x7780
    mov ax, 0xea6                    ; 0x7781
    push ax                          ; 0x7784
    call ds_app_mem_0782             ; 0x7785
    add sp, byte 4                   ; 0x7788
    mov ax, 4                        ; 0x778b
    push ax                          ; 0x778e
    push ax                          ; 0x778f
    call api_idx_0004_6              ; 0x7790
    add sp, byte 4                   ; 0x7793
    mov ax, 0x41                     ; 0x7796
    push ax                          ; 0x7799
    push ax                          ; 0x779a
    cmp word [bp + 0x8], byte 0      ; 0x779b
    jne short @..api_idx_000a_5.l16  ; 0x779f
    mov ax, 1                        ; 0x77a1
@..api_idx_000a_5.l16:
    push ax                          ; 0x77a4
    mov ax, 0x9186                   ; 0x77a5
    push ax                          ; 0x77a8
    mov ax, 0x9136                   ; 0x77a9
    push ax                          ; 0x77ac
    mov ax, 0x90e6                   ; 0x77ad
    push ax                          ; 0x77b0
    mov ax, 4                        ; 0x77b1
    push ax                          ; 0x77b4
    call api_idx_0004_4              ; 0x77b5
    add sp, byte 0x0e                ; 0x77b8
    cmp word [bp + 0x8], byte 0      ; 0x77bb
    jne short @..api_idx_000a_5.l17  ; 0x77bf
    mov ax, 0x248                    ; 0x77c1
    imul word [bp + 0xa]             ; 0x77c4
    mov bx, ax                       ; 0x77c7
    mov al, byte [bx + 0x5e2c]       ; 0x77c9
    sub ah, ah                       ; 0x77cd
    add ax, strict word 8            ; 0x77cf
    push ax                          ; 0x77d2
    call ds_app_0a27                 ; 0x77d3
    pop cx                           ; 0x77d6
    mov ax, 1                        ; 0x77d7
    push ax                          ; 0x77da
    push word [bp + 0xa]             ; 0x77db
    call api_idx_0004_2              ; 0x77de
    add sp, byte 4                   ; 0x77e1
@..api_idx_000a_5.l17:
    push word [bss_9058]             ; 0x77e4
    call api_idx_0004_5              ; 0x77e8
    pop cx                           ; 0x77eb
    mov ax, 0x2c                     ; 0x77ec
    imul word [bp + 0xa]             ; 0x77ef
    mov si, ax                       ; 0x77f2
    mov ax, word [bp + 0x8]          ; 0x77f4
    shl ax, 1                        ; 0x77f7
    mov bx, ax                       ; 0x77f9
    mov bx, word [bx - 0x7b7e]       ; 0x77fb
    cmp word [bx + si + 0x2], byte 0 ; 0x77ff
    jg short @..api_idx_000a_5.l18   ; 0x7803
    mov ax, 0                        ; 0x7805
    push ax                          ; 0x7808
    mov ax, 0xd50                    ; 0x7809
    push ax                          ; 0x780c
    push word [bp - 0x0004]          ; 0x780d
    mov ax, 3                        ; 0x7810
    push ax                          ; 0x7813
    mov ax, 0                        ; 0x7814
    push ax                          ; 0x7817
    mov ax, 0xd9e                    ; 0x7818
    push ax                          ; 0x781b
    push word [bp + 0xa]             ; 0x781c
    push word [bp + 0x8]             ; 0x781f
    call api_idx_0002_4              ; 0x7822
    add sp, byte 0x10                ; 0x7825
@..api_idx_000a_5.l18:
    jmp near @..api_idx_000a_5.l22   ; 0x7828
jumptable_78e5_case_6:
    mov ax, 0xd                      ; 0x782b
    cmp word [bp + 0x8], byte 0      ; 0x782e
    jne short @..api_idx_000a_5.l19  ; 0x7832
    mov ax, 0xb                      ; 0x7834
@..api_idx_000a_5.l19:
    mov word [bp - 0x000a], ax       ; 0x7837
    mov ax, 0x64                     ; 0x783a
    push ax                          ; 0x783d
    call ds_app_09f0                 ; 0x783e
    pop cx                           ; 0x7841
    push ax                          ; 0x7842
    mov ax, word [bp + 0x8]          ; 0x7843
    shl ax, 1                        ; 0x7846
    mov bx, ax                       ; 0x7848
    mov bx, word [bx - 0x7b70]       ; 0x784a
    mov si, word [bp - 0x000a]       ; 0x784e
    mov al, byte [bx + si + 0x9a]    ; 0x7851
    sub ah, ah                       ; 0x7855
    mov cx, ax                       ; 0x7857
    sub ax, word [bp - 0x0004]       ; 0x7859
    mov cx, ax                       ; 0x785c
    pop ax                           ; 0x785e
    cmp ax, cx                       ; 0x785f
    jle short @..api_idx_000a_5.l20  ; 0x7861
    mov ax, 4                        ; 0x7863
    push ax                          ; 0x7866
    push ax                          ; 0x7867
    call api_idx_0004_6              ; 0x7868
    add sp, byte 4                   ; 0x786b
    mov ax, 4                        ; 0x786e
    push ax                          ; 0x7871
    mov ax, 0x55                     ; 0x7872
    push ax                          ; 0x7875
    mov ax, 0xda7                    ; 0x7876
    push ax                          ; 0x7879
    call api_idx_0050                ; 0x787a
    add sp, byte 6                   ; 0x787d
    mov ax, word [bss_9058]          ; 0x7880
    mov cx, 2                        ; 0x7883
    cwd                              ; 0x7886
    idiv cx                          ; 0x7887
    push ax                          ; 0x7889
    call api_idx_0004_5              ; 0x788a
    pop cx                           ; 0x788d
    mov ax, 0                        ; 0x788e
    push ax                          ; 0x7891
    mov ax, 0xd50                    ; 0x7892
    push ax                          ; 0x7895
    push word [bp - 0x0004]          ; 0x7896
    mov ax, 3                        ; 0x7899
    push ax                          ; 0x789c
    mov ax, 0                        ; 0x789d
    push ax                          ; 0x78a0
    mov ax, 0xd9e                    ; 0x78a1
    push ax                          ; 0x78a4
    push word [bp + 0xa]             ; 0x78a5
    push word [bp + 0x8]             ; 0x78a8
    call api_idx_0002_4              ; 0x78ab
    add sp, byte 0x10                ; 0x78ae
@..api_idx_000a_5.l20:
    jmp short @..api_idx_000a_5.l22  ; 0x78b1
jumptable_78e5_case_7:
    mov ax, 0                        ; 0x78b3
    push ax                          ; 0x78b6
    mov ax, 0xd50                    ; 0x78b7
    push ax                          ; 0x78ba
    push word [bp - 0x0006]          ; 0x78bb
    mov ax, 3                        ; 0x78be
    push ax                          ; 0x78c1
    mov ax, word [bp - 0x0006]       ; 0x78c2
    shl ax, 1                        ; 0x78c5
    push ax                          ; 0x78c7
    push word [bp - 0x0004]          ; 0x78c8
    mov ax, 2                        ; 0x78cb
    push ax                          ; 0x78ce
    mov ax, 9                        ; 0x78cf
    push ax                          ; 0x78d2
    mov ax, 0xd9c                    ; 0x78d3
    push ax                          ; 0x78d6
    push word [bp + 0xa]             ; 0x78d7
    push word [bp + 0x8]             ; 0x78da
    call api_idx_0006_2              ; 0x78dd
    add sp, byte 0x16                ; 0x78e0
    jmp short @..api_idx_000a_5.l22  ; 0x78e3
jumptable_78e5:
    dw jumptable_78e5_case_0 - IMAGE_BASE + 0x5055 ; 0x78e5
    dw jumptable_78e5_case_1 - IMAGE_BASE + 0x5055 ; 0x78e7
    dw jumptable_78e5_case_2 - IMAGE_BASE + 0x5055 ; 0x78e9
    dw jumptable_78e5_case_3 - IMAGE_BASE + 0x5055 ; 0x78eb
    dw jumptable_78e5_case_4 - IMAGE_BASE + 0x5055 ; 0x78ed
    dw jumptable_78e5_case_5 - IMAGE_BASE + 0x5055 ; 0x78ef
    dw jumptable_78e5_case_6 - IMAGE_BASE + 0x5055 ; 0x78f1
    dw jumptable_78e5_case_7 - IMAGE_BASE + 0x5055 ; 0x78f3
@..api_idx_000a_5.l21:
    cmp ax, strict word 8            ; 0x78f5
    jae short @..api_idx_000a_5.l22  ; 0x78f8
    xchg bx, ax                      ; 0x78fa
    shl bx, 1                        ; 0x78fb
    jmp [cs:bx - 0x36d4]             ; 0x78fd
@..api_idx_000a_5.l22:
    inc word [bp - 0x0002]           ; 0x7902
    mov ax, word [bp - 0x0002]       ; 0x7905
    cmp ax, strict word 8            ; 0x7908
    jge short @..api_idx_000a_5.l23  ; 0x790b
    jmp near @..api_idx_000a_5.l1    ; 0x790d
@..api_idx_000a_5.l23:
    ret                              ; 0x7910
