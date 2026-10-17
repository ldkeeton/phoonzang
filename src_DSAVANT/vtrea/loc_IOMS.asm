; auto-generated
loc_IOMS:
    mov ax, 0xfe56                   ; 0x8441
    call aztec_csav                  ; 0x8444
    mov ax, word [bp + 0x14]         ; 0x8447
    dec ax                           ; 0x844a
    cwd                              ; 0x844b
    idiv word [bp + 0x12]            ; 0x844c
    inc ax                           ; 0x844f
    imul word [bp + 0xe]             ; 0x8450
    add ax, word [bp + 0x8]          ; 0x8453
    push ax                          ; 0x8456
    mov ax, 6                        ; 0x8457
    imul word [bp + 0xc]             ; 0x845a
    mov dx, ax                       ; 0x845d
    mov cx, word [bp + 0xe]          ; 0x845f
    sub cx, ax                       ; 0x8462
    pop ax                           ; 0x8464
    sub ax, cx                       ; 0x8465
    mov word [bp - 0x0006], ax       ; 0x8467
    mov ax, word [bp + 0x10]         ; 0x846a
    imul word [bp + 0x12]            ; 0x846d
    add ax, word [bp + 0xa]          ; 0x8470
    mov cx, word [bp + 0x10]         ; 0x8473
    add cx, byte 0xf7                ; 0x8476
    sub ax, cx                       ; 0x8479
    mov word [bp - 0x0008], ax       ; 0x847b
    cmp word [bp + 0x6], byte 0      ; 0x847e
    jne short @..loc_IOMS.l1         ; 0x8482
    jmp near @..loc_IOMS.l2          ; 0x8484
@..loc_IOMS.l1:
    mov ax, 0x90f4                   ; 0x8487
    push ax                          ; 0x848a
    mov ax, word [bp - 0x0008]       ; 0x848b
    add ax, strict word 6            ; 0x848e
    push ax                          ; 0x8491
    mov ax, word [bp - 0x0006]       ; 0x8492
    add ax, strict word 6            ; 0x8495
    push ax                          ; 0x8498
    mov ax, word [bp + 0xa]          ; 0x8499
    add ax, strict word 0xffeb       ; 0x849c
    push ax                          ; 0x849f
    mov ax, word [bp + 0x8]          ; 0x84a0
    add ax, strict word 0xfffa       ; 0x84a3
    push ax                          ; 0x84a6
    call ds_app_file_LMRK            ; 0x84a7
    add sp, byte 0x0a                ; 0x84aa
    mov word [bp - 0x01a8], ax       ; 0x84ad
    mov ax, word [bp - 0x0008]       ; 0x84b1
    add ax, strict word 5            ; 0x84b4
    push ax                          ; 0x84b7
    mov ax, word [bp - 0x0006]       ; 0x84b8
    add ax, strict word 5            ; 0x84bb
    push ax                          ; 0x84be
    mov ax, word [bp + 0xa]          ; 0x84bf
    add ax, strict word 0xffec       ; 0x84c2
    push ax                          ; 0x84c5
    mov ax, word [bp + 0x8]          ; 0x84c6
    add ax, strict word 0xfffb       ; 0x84c9
    push ax                          ; 0x84cc
    call ds_app_KNSQ                 ; 0x84cd
    add sp, byte 8                   ; 0x84d0
    lea ax, word [bp - 0x01a6]       ; 0x84d3
    push ax                          ; 0x84d7
    push word [bp + 0x6]             ; 0x84d8
    call ds_app_mem_TIMR             ; 0x84db
    add sp, byte 4                   ; 0x84de
    mov ax, 0xc2                     ; 0x84e1
    push ax                          ; 0x84e4
    mov ax, 1                        ; 0x84e5
    push ax                          ; 0x84e8
    call thunk_3                     ; 0x84e9
    add sp, byte 4                   ; 0x84ec
    mov ax, word [bp + 0xa]          ; 0x84ef
    add ax, strict word 0xfff3       ; 0x84f2
    push ax                          ; 0x84f5
    lea ax, word [bp - 0x01a6]       ; 0x84f6
    push ax                          ; 0x84fa
    call aztec_strlen                ; 0x84fb
    pop cx                           ; 0x84fe
    mov cx, 6                        ; 0x84ff
    imul cx                          ; 0x8502
    mov cx, 2                        ; 0x8504
    cwd                              ; 0x8507
    idiv cx                          ; 0x8508
    mov cx, ax                       ; 0x850a
    mov ax, 0xa0                     ; 0x850c
    sub ax, cx                       ; 0x850f
    push ax                          ; 0x8511
    call thunk                       ; 0x8512
    add sp, byte 4                   ; 0x8515
    mov ax, 0                        ; 0x8518
    push ax                          ; 0x851b
    lea ax, word [bp - 0x01a6]       ; 0x851c
    push ax                          ; 0x8520
    call ds_string_loc_QRJV          ; 0x8521
    add sp, byte 4                   ; 0x8524
    jmp short @..loc_IOMS.l3         ; 0x8527
@..loc_IOMS.l2:
    mov ax, 0x90fa                   ; 0x8529
    push ax                          ; 0x852c
    mov ax, word [bp - 0x0008]       ; 0x852d
    inc ax                           ; 0x8530
    push ax                          ; 0x8531
    mov ax, word [bp - 0x0006]       ; 0x8532
    inc ax                           ; 0x8535
    push ax                          ; 0x8536
    mov ax, word [bp + 0xa]          ; 0x8537
    dec ax                           ; 0x853a
    push ax                          ; 0x853b
    mov ax, word [bp + 0x8]          ; 0x853c
    dec ax                           ; 0x853f
    push ax                          ; 0x8540
    call ds_app_file_LMRK            ; 0x8541
    add sp, byte 0x0a                ; 0x8544
    mov word [bp - 0x01a8], ax       ; 0x8547
@..loc_IOMS.l3:
    mov word [bp - 0x0002], 0        ; 0x854b
    mov word [bp - 0x0004], 0        ; 0x8550
@..loc_IOMS.l4:
    mov ax, word [bp - 0x0004]       ; 0x8555
    shl ax, 1                        ; 0x8558
    mov si, ax                       ; 0x855a
    mov bx, word [bp + 0x1c]         ; 0x855c
    cmp word [bx + si], byte 0xff    ; 0x855f
    jne short @..loc_IOMS.l5         ; 0x8562
    jmp near @..loc_IOMS.l9          ; 0x8564
@..loc_IOMS.l5:
    cmp word [bx + si], byte 1       ; 0x8567
    je short @..loc_IOMS.l6          ; 0x856a
    jmp near @..loc_IOMS.l8          ; 0x856c
@..loc_IOMS.l6:
    mov ax, 0x14                     ; 0x856f
    imul word [bp - 0x0002]          ; 0x8572
    lea cx, word [bp - 0x0156]       ; 0x8575
    add ax, cx                       ; 0x8579
    push ax                          ; 0x857b
    mov ax, word [bp + 0x4]          ; 0x857c
    add ax, word [bp - 0x0004]       ; 0x857f
    push ax                          ; 0x8582
    call ds_app_mem_TIMR             ; 0x8583
    add sp, byte 4                   ; 0x8586
    mov ax, word [bp - 0x0002]       ; 0x8589
    cwd                              ; 0x858c
    idiv word [bp + 0x12]            ; 0x858d
    imul word [bp + 0xe]             ; 0x8590
    mov word [bp - 0x000a], ax       ; 0x8593
    mov ax, word [bp - 0x0002]       ; 0x8596
    cwd                              ; 0x8599
    idiv word [bp + 0x12]            ; 0x859a
    mov ax, dx                       ; 0x859d
    imul word [bp + 0x10]            ; 0x859f
    mov word [bp - 0x000c], ax       ; 0x85a2
    mov ax, 0                        ; 0x85a5
    push ax                          ; 0x85a8
    mov ax, word [bp + 0xa]          ; 0x85a9
    add ax, word [bp - 0x000c]       ; 0x85ac
    add ax, strict word 8            ; 0x85af
    push ax                          ; 0x85b2
    mov ax, 6                        ; 0x85b3
    imul word [bp + 0xc]             ; 0x85b6
    add ax, word [bp + 0x8]          ; 0x85b9
    add ax, word [bp - 0x000a]       ; 0x85bc
    push ax                          ; 0x85bf
    mov ax, word [bp + 0xa]          ; 0x85c0
    add ax, word [bp - 0x000c]       ; 0x85c3
    push ax                          ; 0x85c6
    mov ax, word [bp + 0x8]          ; 0x85c7
    add ax, word [bp - 0x000a]       ; 0x85ca
    push ax                          ; 0x85cd
    call ds_app_PQGJ                 ; 0x85ce
    add sp, byte 0x0a                ; 0x85d1
    mov ax, 0xc0                     ; 0x85d4
    push ax                          ; 0x85d7
    mov ax, word [bp + 0x16]         ; 0x85d8
    mov cx, word [bp - 0x0004]       ; 0x85db
    cmp cx, word [bp + 0x18]         ; 0x85de
    jne short @..loc_IOMS.l7         ; 0x85e1
    mov ax, 0x1a                     ; 0x85e3
@..loc_IOMS.l7:
    push ax                          ; 0x85e6
    call thunk_3                     ; 0x85e7
    add sp, byte 4                   ; 0x85ea
    mov ax, word [bp + 0xa]          ; 0x85ed
    add ax, word [bp - 0x000c]       ; 0x85f0
    inc ax                           ; 0x85f3
    inc ax                           ; 0x85f4
    push ax                          ; 0x85f5
    mov ax, 0x14                     ; 0x85f6
    imul word [bp - 0x0002]          ; 0x85f9
    lea cx, word [bp - 0x0156]       ; 0x85fc
    add ax, cx                       ; 0x8600
    push ax                          ; 0x8602
    call aztec_strlen                ; 0x8603
    pop cx                           ; 0x8606
    mov cx, ax                       ; 0x8607
    mov ax, word [bp + 0xc]          ; 0x8609
    sub ax, cx                       ; 0x860c
    mov cx, 6                        ; 0x860e
    imul cx                          ; 0x8611
    mov cx, 2                        ; 0x8613
    cwd                              ; 0x8616
    idiv cx                          ; 0x8617
    add ax, word [bp + 0x8]          ; 0x8619
    add ax, word [bp - 0x000a]       ; 0x861c
    inc ax                           ; 0x861f
    push ax                          ; 0x8620
    call thunk                       ; 0x8621
    add sp, byte 4                   ; 0x8624
    mov ax, 0                        ; 0x8627
    push ax                          ; 0x862a
    mov ax, 0x14                     ; 0x862b
    imul word [bp - 0x0002]          ; 0x862e
    lea cx, word [bp - 0x0156]       ; 0x8631
    add ax, cx                       ; 0x8635
    push ax                          ; 0x8637
    call ds_string_loc_QRJV          ; 0x8638
    add sp, byte 4                   ; 0x863b
    mov ax, 0                        ; 0x863e
    push ax                          ; 0x8641
    push ax                          ; 0x8642
    mov ax, word [bp + 0xa]          ; 0x8643
    add ax, word [bp - 0x000c]       ; 0x8646
    add ax, strict word 8            ; 0x8649
    push ax                          ; 0x864c
    mov ax, 6                        ; 0x864d
    imul word [bp + 0xc]             ; 0x8650
    add ax, word [bp + 0x8]          ; 0x8653
    add ax, word [bp - 0x000a]       ; 0x8656
    push ax                          ; 0x8659
    mov ax, word [bp + 0xa]          ; 0x865a
    add ax, word [bp - 0x000c]       ; 0x865d
    push ax                          ; 0x8660
    mov ax, word [bp + 0x8]          ; 0x8661
    add ax, word [bp - 0x000a]       ; 0x8664
    push ax                          ; 0x8667
    push word [bp - 0x0002]          ; 0x8668
    call ds_app_NGUR                 ; 0x866b
    add sp, byte 0x0e                ; 0x866e
    mov ax, word [bp - 0x0004]       ; 0x8671
    mov cx, word [bp - 0x0002]       ; 0x8674
    shl cx, 1                        ; 0x8677
    mov bx, cx                       ; 0x8679
    add bx, bp                       ; 0x867b
    mov word [bx - 0x002a], ax       ; 0x867d
    inc word [bp - 0x0002]           ; 0x8680
@..loc_IOMS.l8:
    inc word [bp - 0x0004]           ; 0x8683
    jmp near @..loc_IOMS.l4          ; 0x8686
@..loc_IOMS.l9:
    mov ax, 0                        ; 0x8689
    push ax                          ; 0x868c
    push ax                          ; 0x868d
    push ax                          ; 0x868e
    push ax                          ; 0x868f
    push ax                          ; 0x8690
    mov ax, 0xffff                   ; 0x8691
    push ax                          ; 0x8694
    push word [bp - 0x0002]          ; 0x8695
    call ds_app_NGUR                 ; 0x8698
    add sp, byte 0x0e                ; 0x869b
    mov ax, 0xc7                     ; 0x869e
    push ax                          ; 0x86a1
    mov ax, 0x13f                    ; 0x86a2
    push ax                          ; 0x86a5
    mov ax, 0                        ; 0x86a6
    push ax                          ; 0x86a9
    push ax                          ; 0x86aa
    call thunk_4                     ; 0x86ab
    add sp, byte 8                   ; 0x86ae
    cmp word [bss_0e32], byte 0      ; 0x86b1
    je short @..loc_IOMS.l12         ; 0x86b6
@..loc_IOMS.l10:
    mov ax, 0x59fe                   ; 0x86b8
    push ax                          ; 0x86bb
    call ds_app_io_UHMG              ; 0x86bc
    pop cx                           ; 0x86bf
    mov word [bp - 0x0004], ax       ; 0x86c0
    cmp word [bss_5b3e], byte 0      ; 0x86c3
    jne short @..loc_IOMS.l11        ; 0x86c8
    call loc_IKLI                    ; 0x86ca
@..loc_IOMS.l11:
    cmp word [bss_5b3e], byte 0      ; 0x86cd
    je short @..loc_IOMS.l10         ; 0x86d2
    jmp near @..loc_IOMS.l26         ; 0x86d4
@..loc_IOMS.l12:
    mov word [bp - 0x0004], 0        ; 0x86d7
@..loc_IOMS.l13:
    mov ax, word [bp - 0x0004]       ; 0x86dc
    cwd                              ; 0x86df
    idiv word [bp + 0x12]            ; 0x86e0
    imul word [bp + 0xe]             ; 0x86e3
    mov word [bp - 0x000a], ax       ; 0x86e6
    mov ax, word [bp - 0x0004]       ; 0x86e9
    cwd                              ; 0x86ec
    idiv word [bp + 0x12]            ; 0x86ed
    mov ax, dx                       ; 0x86f0
    imul word [bp + 0x10]            ; 0x86f2
    mov word [bp - 0x000c], ax       ; 0x86f5
    mov ax, 0x16                     ; 0x86f8
    push ax                          ; 0x86fb
    mov ax, word [bp + 0xa]          ; 0x86fc
    add ax, word [bp - 0x000c]       ; 0x86ff
    add ax, strict word 8            ; 0x8702
    push ax                          ; 0x8705
    mov ax, 6                        ; 0x8706
    imul word [bp + 0xc]             ; 0x8709
    add ax, word [bp + 0x8]          ; 0x870c
    add ax, word [bp - 0x000a]       ; 0x870f
    push ax                          ; 0x8712
    mov ax, word [bp + 0xa]          ; 0x8713
    add ax, word [bp - 0x000c]       ; 0x8716
    push ax                          ; 0x8719
    mov ax, word [bp + 0x8]          ; 0x871a
    add ax, word [bp - 0x000a]       ; 0x871d
    push ax                          ; 0x8720
    call loc_MNNG                    ; 0x8721
    add sp, byte 0x0a                ; 0x8724
    mov ax, word [bp - 0x0008]       ; 0x8727
    inc ax                           ; 0x872a
    push ax                          ; 0x872b
    mov ax, word [bp - 0x0006]       ; 0x872c
    inc ax                           ; 0x872f
    push ax                          ; 0x8730
    mov ax, word [bp + 0xa]          ; 0x8731
    dec ax                           ; 0x8734
    push ax                          ; 0x8735
    mov ax, word [bp + 0x8]          ; 0x8736
    dec ax                           ; 0x8739
    push ax                          ; 0x873a
    call thunk_4                     ; 0x873b
    add sp, byte 8                   ; 0x873e
    mov ax, 0                        ; 0x8741
    push ax                          ; 0x8744
    mov ax, word [bp + 0xa]          ; 0x8745
    add ax, word [bp - 0x000c]       ; 0x8748
    add ax, strict word 8            ; 0x874b
    push ax                          ; 0x874e
    mov ax, 6                        ; 0x874f
    imul word [bp + 0xc]             ; 0x8752
    add ax, word [bp + 0x8]          ; 0x8755
    add ax, word [bp - 0x000a]       ; 0x8758
    push ax                          ; 0x875b
    mov ax, word [bp + 0xa]          ; 0x875c
    add ax, word [bp - 0x000c]       ; 0x875f
    push ax                          ; 0x8762
    mov ax, word [bp + 0x8]          ; 0x8763
    add ax, word [bp - 0x000a]       ; 0x8766
    push ax                          ; 0x8769
    call loc_MNNG                    ; 0x876a
    add sp, byte 0x0a                ; 0x876d
@..loc_IOMS.l14:
    mov ax, 1                        ; 0x8770
    push ax                          ; 0x8773
    call dos_con_in_noecho           ; 0x8774
    pop cx                           ; 0x8777
    test ax, ax                      ; 0x8778
    jne short @..loc_IOMS.l15        ; 0x877a
    call loc_IKLI                    ; 0x877c
    jmp short @..loc_IOMS.l14        ; 0x877f
@..loc_IOMS.l15:
    mov ax, 1                        ; 0x8781
    push ax                          ; 0x8784
    call dos_con_in_noecho_2         ; 0x8785
    pop cx                           ; 0x8788
    sub ah, ah                       ; 0x8789
    mov word [bp - 0x01aa], ax       ; 0x878b
    mov ax, word [bp - 0x0004]       ; 0x878f
    cwd                              ; 0x8792
    idiv word [bp + 0x12]            ; 0x8793
    mov word [bp - 0x000a], ax       ; 0x8796
    mov ax, word [bp - 0x0002]       ; 0x8799
    dec ax                           ; 0x879c
    cwd                              ; 0x879d
    idiv word [bp + 0x12]            ; 0x879e
    inc ax                           ; 0x87a1
    mov word [bp - 0x000c], ax       ; 0x87a2
@..loc_IOMS.l16:
    mov ax, word [bp - 0x01aa]       ; 0x87a5
    jmp near @..loc_IOMS.l21         ; 0x87a9
@..loc_IOMS.l17:
    mov ax, word [bp - 0x0004]       ; 0x87ac
    add ax, word [bp + 0x12]         ; 0x87af
    dec ax                           ; 0x87b2
    cwd                              ; 0x87b3
    idiv word [bp + 0x12]            ; 0x87b4
    mov ax, dx                       ; 0x87b7
    push ax                          ; 0x87b9
    mov ax, word [bp - 0x000a]       ; 0x87ba
    imul word [bp + 0x12]            ; 0x87bd
    mov cx, ax                       ; 0x87c0
    pop ax                           ; 0x87c2
    add ax, cx                       ; 0x87c3
    mov word [bp - 0x0004], ax       ; 0x87c5
    jmp near @..loc_IOMS.l23         ; 0x87c8
@..loc_IOMS.l18:
    mov ax, word [bp - 0x0004]       ; 0x87cb
    inc ax                           ; 0x87ce
    cwd                              ; 0x87cf
    idiv word [bp + 0x12]            ; 0x87d0
    mov ax, dx                       ; 0x87d3
    push ax                          ; 0x87d5
    mov ax, word [bp - 0x000a]       ; 0x87d6
    imul word [bp + 0x12]            ; 0x87d9
    mov cx, ax                       ; 0x87dc
    pop ax                           ; 0x87de
    add ax, cx                       ; 0x87df
    mov word [bp - 0x0004], ax       ; 0x87e1
    jmp short @..loc_IOMS.l23        ; 0x87e4
@..loc_IOMS.l19:
    mov ax, word [bp - 0x000a]       ; 0x87e6
    add ax, word [bp - 0x000c]       ; 0x87e9
    dec ax                           ; 0x87ec
    cwd                              ; 0x87ed
    idiv word [bp - 0x000c]          ; 0x87ee
    mov word [bp - 0x000a], dx       ; 0x87f1
    mov ax, word [bp - 0x0004]       ; 0x87f4
    cwd                              ; 0x87f7
    idiv word [bp + 0x12]            ; 0x87f8
    mov ax, dx                       ; 0x87fb
    push ax                          ; 0x87fd
    mov ax, word [bp - 0x000a]       ; 0x87fe
    imul word [bp + 0x12]            ; 0x8801
    mov cx, ax                       ; 0x8804
    pop ax                           ; 0x8806
    add ax, cx                       ; 0x8807
    mov word [bp - 0x0004], ax       ; 0x8809
    jmp short @..loc_IOMS.l23        ; 0x880c
@..loc_IOMS.l20:
    mov ax, word [bp - 0x000a]       ; 0x880e
    inc ax                           ; 0x8811
    cwd                              ; 0x8812
    idiv word [bp - 0x000c]          ; 0x8813
    mov word [bp - 0x000a], dx       ; 0x8816
    mov ax, word [bp - 0x0004]       ; 0x8819
    cwd                              ; 0x881c
    idiv word [bp + 0x12]            ; 0x881d
    mov ax, dx                       ; 0x8820
    push ax                          ; 0x8822
    mov ax, word [bp - 0x000a]       ; 0x8823
    imul word [bp + 0x12]            ; 0x8826
    mov cx, ax                       ; 0x8829
    pop ax                           ; 0x882b
    add ax, cx                       ; 0x882c
    mov word [bp - 0x0004], ax       ; 0x882e
    jmp short @..loc_IOMS.l23        ; 0x8831
@..loc_IOMS.l21:
    cmp ax, strict word 8            ; 0x8833
    je short @..loc_IOMS.l19         ; 0x8836
    cmp ax, strict word 9            ; 0x8838
    jne short @..loc_IOMS.l22        ; 0x883b
    jmp near @..loc_IOMS.l17         ; 0x883d
@..loc_IOMS.l22:
    cmp ax, strict word 0xa          ; 0x8840
    je short @..loc_IOMS.l20         ; 0x8843
    cmp ax, strict word 0xb          ; 0x8845
    je short @..loc_IOMS.l18         ; 0x8848
@..loc_IOMS.l23:
    mov ax, word [bp - 0x0004]       ; 0x884a
    cmp ax, word [bp - 0x0002]       ; 0x884d
    jl short @..loc_IOMS.l24         ; 0x8850
    jmp near @..loc_IOMS.l16         ; 0x8852
@..loc_IOMS.l24:
    cmp word [bp - 0x01aa], byte 0x0d ; 0x8855
    je short @..loc_IOMS.l25         ; 0x885a
    jmp near @..loc_IOMS.l13         ; 0x885c
@..loc_IOMS.l25:
    inc word [bp - 0x0004]           ; 0x885f
    mov ax, word [bp - 0x0008]       ; 0x8862
    inc ax                           ; 0x8865
    push ax                          ; 0x8866
    mov ax, word [bp - 0x0006]       ; 0x8867
    inc ax                           ; 0x886a
    push ax                          ; 0x886b
    mov ax, word [bp + 0xa]          ; 0x886c
    dec ax                           ; 0x886f
    push ax                          ; 0x8870
    mov ax, word [bp + 0x8]          ; 0x8871
    dec ax                           ; 0x8874
    push ax                          ; 0x8875
    call thunk_4                     ; 0x8876
    add sp, byte 8                   ; 0x8879
@..loc_IOMS.l26:
    dec word [bp - 0x0004]           ; 0x887c
    mov ax, word [bp - 0x0004]       ; 0x887f
    cwd                              ; 0x8882
    idiv word [bp + 0x12]            ; 0x8883
    imul word [bp + 0xe]             ; 0x8886
    mov word [bp - 0x000a], ax       ; 0x8889
    mov ax, word [bp - 0x0004]       ; 0x888c
    cwd                              ; 0x888f
    idiv word [bp + 0x12]            ; 0x8890
    mov ax, dx                       ; 0x8893
    imul word [bp + 0x10]            ; 0x8895
    mov word [bp - 0x000c], ax       ; 0x8898
    mov ax, 1                        ; 0x889b
    push ax                          ; 0x889e
    push ax                          ; 0x889f
    push word [bp + 0xc]             ; 0x88a0
    mov ax, word [bp + 0xa]          ; 0x88a3
    add ax, word [bp - 0x000c]       ; 0x88a6
    push ax                          ; 0x88a9
    mov ax, word [bp + 0x8]          ; 0x88aa
    add ax, word [bp - 0x000a]       ; 0x88ad
    push ax                          ; 0x88b0
    call ds_app_VIGG                 ; 0x88b1
    add sp, byte 0x0a                ; 0x88b4
    mov ax, 0                        ; 0x88b7
    push ax                          ; 0x88ba
    mov ax, 1                        ; 0x88bb
    push ax                          ; 0x88be
    push word [bp + 0xc]             ; 0x88bf
    mov ax, word [bp + 0xa]          ; 0x88c2
    add ax, word [bp - 0x000c]       ; 0x88c5
    push ax                          ; 0x88c8
    mov ax, word [bp + 0x8]          ; 0x88c9
    add ax, word [bp - 0x000a]       ; 0x88cc
    push ax                          ; 0x88cf
    call ds_app_VIGG                 ; 0x88d0
    add sp, byte 0x0a                ; 0x88d3
    mov ax, 1                        ; 0x88d6
    push ax                          ; 0x88d9
    push word [bp - 0x01a8]          ; 0x88da
    call ds_app_file_HMNO            ; 0x88de
    add sp, byte 4                   ; 0x88e1
    cmp word [bp + 0x1a], byte 0     ; 0x88e4
    je short @..loc_IOMS.l28         ; 0x88e8
    cmp word [bp + 0x6], byte 0      ; 0x88ea
    je short @..loc_IOMS.l27         ; 0x88ee
    mov ax, word [bp - 0x0008]       ; 0x88f0
    add ax, strict word 6            ; 0x88f3
    push ax                          ; 0x88f6
    mov ax, word [bp - 0x0006]       ; 0x88f7
    add ax, strict word 6            ; 0x88fa
    push ax                          ; 0x88fd
    mov ax, word [bp + 0xa]          ; 0x88fe
    add ax, strict word 0xffeb       ; 0x8901
    push ax                          ; 0x8904
    mov ax, word [bp + 0x8]          ; 0x8905
    add ax, strict word 0xfffa       ; 0x8908
    push ax                          ; 0x890b
    call thunk_4                     ; 0x890c
    add sp, byte 8                   ; 0x890f
    jmp short @..loc_IOMS.l28        ; 0x8912
@..loc_IOMS.l27:
    mov ax, word [bp - 0x0008]       ; 0x8914
    inc ax                           ; 0x8917
    push ax                          ; 0x8918
    mov ax, word [bp - 0x0006]       ; 0x8919
    inc ax                           ; 0x891c
    push ax                          ; 0x891d
    mov ax, word [bp + 0xa]          ; 0x891e
    dec ax                           ; 0x8921
    push ax                          ; 0x8922
    mov ax, word [bp + 0x8]          ; 0x8923
    dec ax                           ; 0x8926
    push ax                          ; 0x8927
    call thunk_4                     ; 0x8928
    add sp, byte 8                   ; 0x892b
@..loc_IOMS.l28:
    mov ax, word [bp - 0x0004]       ; 0x892e
    mov word [bss_9052], ax          ; 0x8931
    shl ax, 1                        ; 0x8934
    mov bx, ax                       ; 0x8936
    add bx, bp                       ; 0x8938
    mov ax, word [bx - 0x002a]       ; 0x893a
    ret                              ; 0x893d
