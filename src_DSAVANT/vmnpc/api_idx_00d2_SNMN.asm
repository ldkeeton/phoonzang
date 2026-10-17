; auto-generated
api_idx_00d2_SNMN:
    mov ax, 0xff2e                   ; 0x631e
    call aztec_csav                  ; 0x6321
    mov ax, 0x248                    ; 0x6324
    imul word [bp + 0x4]             ; 0x6327
    add ax, 0x5bf4                   ; 0x632a
    push ax                          ; 0x632d
    lea ax, word [bp - 0x00c4]       ; 0x632e
    push ax                          ; 0x6332
    call aztec_strcpy                ; 0x6333
    add sp, byte 4                   ; 0x6336
    lea ax, word [bp - 0x00ce]       ; 0x6339
    push ax                          ; 0x633d
    mov ax, 0x5e8                    ; 0x633e
    push ax                          ; 0x6341
    call ds_app_mem_TIMR             ; 0x6342
    add sp, byte 4                   ; 0x6345
    push word [bp + 0x4]             ; 0x6348
    call api_idx_004c_OGSK           ; 0x634b
    pop cx                           ; 0x634e
    mov word [bp - 0x0002], 0        ; 0x634f
    mov word [bp - 0x005c], 1        ; 0x6354
@..api_idx_00d2_SNMN.l1:
    mov word [bp - 0x0060], 0        ; 0x6359
@..api_idx_00d2_SNMN.l2:
    mov ax, word [bp - 0x0060]       ; 0x635e
    shl ax, 1                        ; 0x6361
    mov bx, ax                       ; 0x6363
    add bx, bp                       ; 0x6365
    mov word [bx - 0x0074], 1        ; 0x6367
    inc word [bp - 0x0060]           ; 0x636c
    mov ax, word [bp - 0x0060]       ; 0x636f
    cmp ax, strict word 5            ; 0x6372
    jle short @..api_idx_00d2_SNMN.l2 ; 0x6375
    mov word [bp - 0x0068], 0xffff   ; 0x6377
    mov ax, 0x248                    ; 0x637c
    imul word [bp + 0x4]             ; 0x637f
    mov bx, ax                       ; 0x6382
    cmp word [bx + 0x5c0a], byte 0   ; 0x6384
    jne short @..api_idx_00d2_SNMN.l3 ; 0x6389
    cmp word [bx + 0x5c08], byte 0   ; 0x638b
@..api_idx_00d2_SNMN.l3:
    jne short @..api_idx_00d2_SNMN.l4 ; 0x6390
    mov word [bp - 0x0072], 0        ; 0x6392
@..api_idx_00d2_SNMN.l4:
    cmp word [bss_9ca8], byte 0      ; 0x6397
    jne short @..api_idx_00d2_SNMN.l5 ; 0x639c
    mov word [bp - 0x006e], 0        ; 0x639e
@..api_idx_00d2_SNMN.l5:
    lea ax, word [bp - 0x0074]       ; 0x63a3
    push ax                          ; 0x63a6
    mov ax, 5                        ; 0x63a7
    push ax                          ; 0x63aa
    lea ax, word [bp - 0x00ce]       ; 0x63ab
    push ax                          ; 0x63af
    lea ax, word [bp - 0x00c4]       ; 0x63b0
    push ax                          ; 0x63b4
    mov ax, 0x5d2                    ; 0x63b5
    push ax                          ; 0x63b8
    push word [bp + 0x4]             ; 0x63b9
    call api_idx_0054_IHKM           ; 0x63bc
    add sp, byte 0x0c                ; 0x63bf
    mov word [bp - 0x0060], ax       ; 0x63c2
    jmp near @..api_idx_00d2_SNMN.l17 ; 0x63c5
loc_VING:
    mov ax, 0x248                    ; 0x63c8
    imul word [bp + 0x4]             ; 0x63cb
    mov bx, ax                       ; 0x63ce
    mov al, byte [bx + 0x5d6a]       ; 0x63d0
    sub ah, ah                       ; 0x63d4
    push ax                          ; 0x63d6
    mov al, byte [bx + 0x5d88]       ; 0x63d7
    sub ah, ah                       ; 0x63db
    mov cx, 2                        ; 0x63dd
    cwd                              ; 0x63e0
    idiv cx                          ; 0x63e1
    mov cx, ax                       ; 0x63e3
    pop ax                           ; 0x63e5
    add ax, cx                       ; 0x63e6
    push ax                          ; 0x63e8
    mov ax, word [bx + 0x5c18]       ; 0x63e9
    mov cx, 2                        ; 0x63ed
    cwd                              ; 0x63f0
    idiv cx                          ; 0x63f1
    mov cx, ax                       ; 0x63f3
    pop ax                           ; 0x63f5
    add ax, cx                       ; 0x63f6
    add word [bp - 0x0002], ax       ; 0x63f8
    cmp byte [bx + 0x5e2d], 0xa      ; 0x63fb
    je short @..api_idx_00d2_SNMN.l6 ; 0x6400
    cmp byte [bx + 0x5e2d], 9        ; 0x6402
    jne short @..api_idx_00d2_SNMN.l7 ; 0x6407
@..api_idx_00d2_SNMN.l6:
    mov al, byte [bx + 0x5d6a]       ; 0x6409
    sub ah, ah                       ; 0x640d
    add word [bp - 0x0002], ax       ; 0x640f
@..api_idx_00d2_SNMN.l7:
    mov word [bp - 0x005c], 0        ; 0x6412
    jmp near @..api_idx_00d2_SNMN.l18 ; 0x6417
loc_PKMU:
    mov word [bss_9d62], 1           ; 0x641a
    mov word [bp - 0x005e], 0        ; 0x6420
    jmp short @..api_idx_00d2_SNMN.l10 ; 0x6425
@..api_idx_00d2_SNMN.l8:
    push word [bp - 0x005e]          ; 0x6427
    call ds_app_KTPM                 ; 0x642a
    pop cx                           ; 0x642d
    test ax, ax                      ; 0x642e
    je short @..api_idx_00d2_SNMN.l9 ; 0x6430
    mov ax, 0x248                    ; 0x6432
    imul word [bp - 0x005e]          ; 0x6435
    mov bx, ax                       ; 0x6438
    mov ax, word [bx + 0x5c18]       ; 0x643a
    add word [bp - 0x0002], ax       ; 0x643e
@..api_idx_00d2_SNMN.l9:
    inc word [bp - 0x005e]           ; 0x6441
@..api_idx_00d2_SNMN.l10:
    mov ax, word [bp - 0x005e]       ; 0x6444
    cmp ax, word [bss_69c8]          ; 0x6447
    jl short @..api_idx_00d2_SNMN.l8 ; 0x644b
    mov al, byte [bss_91c5]          ; 0x644d
    sub ah, ah                       ; 0x6450
    mov cx, 5                        ; 0x6452
    imul cx                          ; 0x6455
    sub word [bp - 0x0002], ax       ; 0x6457
    mov word [bp - 0x005c], 0        ; 0x645a
    jmp near @..api_idx_00d2_SNMN.l18 ; 0x645f
loc_NULI:
    mov ax, 1                        ; 0x6462
    push ax                          ; 0x6465
    push ax                          ; 0x6466
    mov ax, 0x62f                    ; 0x6467
    push ax                          ; 0x646a
    push word [bp + 0x4]             ; 0x646b
    call api_idx_0006_GQUO           ; 0x646e
    add sp, byte 8                   ; 0x6471
    test ax, ax                      ; 0x6474
    je short @..api_idx_00d2_SNMN.l11 ; 0x6476
    mov word [bp - 0x0060], 5        ; 0x6478
    mov word [bp - 0x005c], 0        ; 0x647d
@..api_idx_00d2_SNMN.l11:
    jmp near @..api_idx_00d2_SNMN.l18 ; 0x6482
loc_GSUS:
    cmp word [bp - 0x0060], byte 4   ; 0x6485
    jne short @..api_idx_00d2_SNMN.l12 ; 0x6489
    push word [bp + 0x4]             ; 0x648b
    call api_idx_0006_TLLQ           ; 0x648e
    pop cx                           ; 0x6491
    jmp near @..api_idx_00d2_SNMN.l16 ; 0x6492
@..api_idx_00d2_SNMN.l12:
    mov word [bss_9d62], 2           ; 0x6495
    mov ax, 4                        ; 0x649b
    push ax                          ; 0x649e
    call ds_app_PUNN                 ; 0x649f
    pop cx                           ; 0x64a2
    mov cx, 0xa                      ; 0x64a3
    imul cx                          ; 0x64a6
    add ax, strict word 0x14         ; 0x64a8
    push ax                          ; 0x64ab
    mov al, byte [bss_91c5]          ; 0x64ac
    sub ah, ah                       ; 0x64af
    mov cx, ax                       ; 0x64b1
    pop ax                           ; 0x64b3
    imul cx                          ; 0x64b4
    cwd                              ; 0x64b6
    mov word [bp - 0x00d0], dx       ; 0x64b7
    mov word [bp - 0x00d2], ax       ; 0x64bb
    mov ax, 0x248                    ; 0x64bf
    imul word [bp + 0x4]             ; 0x64c2
    mov bx, ax                       ; 0x64c5
    mov cx, word [bx + 0x5c08]       ; 0x64c7
    mov bx, word [bx + 0x5c0a]       ; 0x64cb
    mov ax, word [bp - 0x00d2]       ; 0x64cf
    mov dx, word [bp - 0x00d0]       ; 0x64d3
    cmp bx, dx                       ; 0x64d7
    jg short @..api_idx_00d2_SNMN.l13 ; 0x64d9
    jne short @..api_idx_00d2_SNMN.l14 ; 0x64db
    cmp cx, ax                       ; 0x64dd
    jb short @..api_idx_00d2_SNMN.l14 ; 0x64df
@..api_idx_00d2_SNMN.l13:
    jmp short @..api_idx_00d2_SNMN.l15 ; 0x64e1
@..api_idx_00d2_SNMN.l14:
    mov word [bp - 0x00d0], bx       ; 0x64e3
    mov word [bp - 0x00d2], cx       ; 0x64e7
@..api_idx_00d2_SNMN.l15:
    mov ax, word [bp - 0x00d2]       ; 0x64eb
    mov dx, word [bp - 0x00d0]       ; 0x64ef
    push ax                          ; 0x64f3
    push dx                          ; 0x64f4
    mov ax, 0x248                    ; 0x64f5
    imul word [bp + 0x4]             ; 0x64f8
    mov bx, ax                       ; 0x64fb
    pop dx                           ; 0x64fd
    pop ax                           ; 0x64fe
    sub word [bx + 0x5c08], ax       ; 0x64ff
    sbb word [bx + 0x5c0a], dx       ; 0x6503
    mov cx, 0xa                      ; 0x6507
    mov bx, 0                        ; 0x650a
    call aztec_ldv                   ; 0x650d
    push ax                          ; 0x6510
    push dx                          ; 0x6511
    mov al, byte [bss_91c5]          ; 0x6512
    sub ah, ah                       ; 0x6515
    cwd                              ; 0x6517
    mov cx, ax                       ; 0x6518
    mov bx, dx                       ; 0x651a
    pop dx                           ; 0x651c
    pop ax                           ; 0x651d
    call aztec_ldv                   ; 0x651e
    add word [bp - 0x0002], ax       ; 0x6521
    mov ax, 0                        ; 0x6524
    push ax                          ; 0x6527
    mov ax, word [bp - 0x00d2]       ; 0x6528
    mov dx, word [bp - 0x00d0]       ; 0x652c
    mov cx, 0x100                    ; 0x6530
    mov bx, 0                        ; 0x6533
    call aztec_lrm                   ; 0x6536
    sub ah, ah                       ; 0x6539
    push ax                          ; 0x653b
    mov ax, word [bp - 0x00d2]       ; 0x653c
    mov dx, word [bp - 0x00d0]       ; 0x6540
    mov cx, 0x100                    ; 0x6544
    mov bx, 0                        ; 0x6547
    call aztec_ldv                   ; 0x654a
    push ax                          ; 0x654d
    mov ax, 2                        ; 0x654e
    push ax                          ; 0x6551
    push word [bp + 0x4]             ; 0x6552
    call api_idx_0006_SRQN           ; 0x6555
    add sp, byte 0x0a                ; 0x6558
    test ax, ax                      ; 0x655b
    je short @..api_idx_00d2_SNMN.l16 ; 0x655d
    mov word [bp - 0x0060], 5        ; 0x655f
    mov word [bp - 0x005c], 0        ; 0x6564
@..api_idx_00d2_SNMN.l16:
    mov ax, 2                        ; 0x6569
    push ax                          ; 0x656c
    call api_idx_0006_SHUK           ; 0x656d
    pop cx                           ; 0x6570
    mov ax, 1                        ; 0x6571
    push ax                          ; 0x6574
    mov ax, 0x93                     ; 0x6575
    push ax                          ; 0x6578
    mov ax, 0xa0                     ; 0x6579
    push ax                          ; 0x657c
    lea ax, word [bp - 0x00c4]       ; 0x657d
    push ax                          ; 0x6581
    call loc_VNIO                    ; 0x6582
    add sp, byte 8                   ; 0x6585
    mov ax, 2                        ; 0x6588
    push ax                          ; 0x658b
    call loc_HTQP                    ; 0x658c
    pop cx                           ; 0x658f
    jmp short @..api_idx_00d2_SNMN.l18 ; 0x6590
leaf_loc_6592:
    mov word [bp - 0x005c], 0        ; 0x6592
    jmp short @..api_idx_00d2_SNMN.l18 ; 0x6597
jumptable_6599:
    dw loc_VING - IMAGE_BASE + __zres_end      ; 0x6599
    dw loc_GSUS - IMAGE_BASE + __zres_end      ; 0x659b
    dw loc_PKMU - IMAGE_BASE + __zres_end      ; 0x659d
    dw loc_NULI - IMAGE_BASE + __zres_end      ; 0x659f
    dw loc_GSUS - IMAGE_BASE + __zres_end      ; 0x65a1
    dw leaf_loc_6592 - IMAGE_BASE + __zres_end ; 0x65a3
@..api_idx_00d2_SNMN.l17:
    cmp ax, strict word 6            ; 0x65a5
    jae short @..api_idx_00d2_SNMN.l18 ; 0x65a8
    xchg bx, ax                      ; 0x65aa
    shl bx, 1                        ; 0x65ab
    jmp [cs:bx + jumptable_6599 - IMAGE_BASE + __zres_end] ; 0x65ad
@..api_idx_00d2_SNMN.l18:
    cmp word [bp - 0x005c], byte 0   ; 0x65b2
    je short @..api_idx_00d2_SNMN.l19 ; 0x65b6
    jmp near @..api_idx_00d2_SNMN.l1 ; 0x65b8
@..api_idx_00d2_SNMN.l19:
    cmp word [bp - 0x0060], byte 5   ; 0x65bb
    jne short @..api_idx_00d2_SNMN.l20 ; 0x65bf
    mov ax, 0                        ; 0x65c1
    ret                              ; 0x65c4
@..api_idx_00d2_SNMN.l20:
    mov ax, 0x248                    ; 0x65c5
    imul word [bp + 0x4]             ; 0x65c8
    mov bx, ax                       ; 0x65cb
    mov al, byte [bx + 0x5d6b]       ; 0x65cd
    sub ah, ah                       ; 0x65d1
    push ax                          ; 0x65d3
    add bx, word [bss_9136]          ; 0x65d4
    mov al, byte [bx + 0x5db2]       ; 0x65d8
    cbw                              ; 0x65dc
    add ax, word [bss_964e]          ; 0x65dd
    mov cx, 3                        ; 0x65e1
    cwd                              ; 0x65e4
    idiv cx                          ; 0x65e5
    mov cx, ax                       ; 0x65e7
    pop ax                           ; 0x65e9
    add ax, cx                       ; 0x65ea
    add ax, word [bp - 0x0002]       ; 0x65ec
    add ax, strict word 0xfff6       ; 0x65ef
    mov word [bp - 0x0002], ax       ; 0x65f2
    mov ax, 0x5f                     ; 0x65f5
    push ax                          ; 0x65f8
    mov ax, 0                        ; 0x65f9
    push ax                          ; 0x65fc
    mov al, byte [bss_91c7]          ; 0x65fd
    sub ah, ah                       ; 0x6600
    mov bx, ax                       ; 0x6602
    mov al, byte [bx - 0x7622]       ; 0x6604
    cbw                              ; 0x6608
    add ax, word [bss_964e]          ; 0x6609
    mov cx, 3                        ; 0x660d
    cwd                              ; 0x6610
    idiv cx                          ; 0x6611
    add ax, word [bp - 0x0002]       ; 0x6613
    push ax                          ; 0x6616
    call clamp                       ; 0x6617
    add sp, byte 6                   ; 0x661a
    mov word [bp - 0x0002], ax       ; 0x661d
    mov ax, 0x64                     ; 0x6620
    push ax                          ; 0x6623
    call ds_app_PUNN                 ; 0x6624
    pop cx                           ; 0x6627
    add ax, word [bss_9d64]          ; 0x6628
    mov word [bp - 0x0004], ax       ; 0x662c
    mov ax, 5                        ; 0x662f
    push ax                          ; 0x6632
    call ds_app_PUNN                 ; 0x6633
    pop cx                           ; 0x6636
    add ax, word [bss_9d64]          ; 0x6637
    add ax, strict word 0xa          ; 0x663b
    mov word [bss_9d64], ax          ; 0x663e
    lea ax, word [bp - 0x005a]       ; 0x6641
    push ax                          ; 0x6644
    mov ax, 0x637                    ; 0x6645
    push ax                          ; 0x6648
    call ds_app_mem_TIMR             ; 0x6649
    add sp, byte 4                   ; 0x664c
    mov ax, 0x5e                     ; 0x664f
    push ax                          ; 0x6652
    mov ax, 0x248                    ; 0x6653
    imul word [bp + 0x4]             ; 0x6656
    add ax, 0x5bf4                   ; 0x6659
    push ax                          ; 0x665c
    lea ax, word [bp - 0x005a]       ; 0x665d
    push ax                          ; 0x6660
    call ds_app_string_HHIL          ; 0x6661
    add sp, byte 6                   ; 0x6664
    mov ax, 0x55                     ; 0x6667
    push ax                          ; 0x666a
    mov ax, 0                        ; 0x666b
    push ax                          ; 0x666e
    mov ax, 1                        ; 0x666f
    push ax                          ; 0x6672
    lea ax, word [bp - 0x005a]       ; 0x6673
    push ax                          ; 0x6676
    call loc_MLKO                    ; 0x6677
    add sp, byte 8                   ; 0x667a
    mov word [bp - 0x000a], 0        ; 0x667d
    mov ax, word [bp - 0x0004]       ; 0x6682
    cmp ax, word [bp - 0x0002]       ; 0x6685
    jge short @..api_idx_00d2_SNMN.l22 ; 0x6688
    cmp word [bss_9d62], byte 3      ; 0x668a
    jne short @..api_idx_00d2_SNMN.l21 ; 0x668f
    mov ax, 3                        ; 0x6691
    push ax                          ; 0x6694
    mov ax, 0x1c                     ; 0x6695
    push ax                          ; 0x6698
    push word [bp + 0x4]             ; 0x6699
    call loc_SIKN                    ; 0x669c
    add sp, byte 6                   ; 0x669f
@..api_idx_00d2_SNMN.l21:
    mov ax, 0x55                     ; 0x66a2
    push ax                          ; 0x66a5
    mov ax, 1                        ; 0x66a6
    push ax                          ; 0x66a9
    push ax                          ; 0x66aa
    mov ax, 0x638                    ; 0x66ab
    push ax                          ; 0x66ae
    call api_idx_0050_TJLH           ; 0x66af
    add sp, byte 8                   ; 0x66b2
    mov ax, 0xa                      ; 0x66b5
    push ax                          ; 0x66b8
    call ds_app_PUNN                 ; 0x66b9
    pop cx                           ; 0x66bc
    add ax, strict word 5            ; 0x66bd
    mov word [bp - 0x0006], ax       ; 0x66c0
    mov ax, 0xa                      ; 0x66c3
    push ax                          ; 0x66c6
    call ds_app_PUNN                 ; 0x66c7
    pop cx                           ; 0x66ca
    add ax, strict word 5            ; 0x66cb
    mov word [bp - 0x0008], ax       ; 0x66ce
    mov word [bp - 0x000a], 1        ; 0x66d1
    jmp near @..api_idx_00d2_SNMN.l25 ; 0x66d6
@..api_idx_00d2_SNMN.l22:
    mov ax, word [bp - 0x0002]       ; 0x66d9
    imul word [bss_9d62]             ; 0x66dc
    cmp ax, word [bp - 0x0004]       ; 0x66e0
    jl short @..api_idx_00d2_SNMN.l23 ; 0x66e3
    cmp word [bp - 0x0004], byte 0x5f ; 0x66e5
    jl short @..api_idx_00d2_SNMN.l24 ; 0x66e9
@..api_idx_00d2_SNMN.l23:
    mov ax, 0x16                     ; 0x66eb
    push ax                          ; 0x66ee
    mov ax, 1                        ; 0x66ef
    push ax                          ; 0x66f2
    push ax                          ; 0x66f3
    mov ax, 0x63a                    ; 0x66f4
    push ax                          ; 0x66f7
    call api_idx_0050_TJLH           ; 0x66f8
    add sp, byte 8                   ; 0x66fb
    mov ax, 0xa                      ; 0x66fe
    push ax                          ; 0x6701
    call ds_app_PUNN                 ; 0x6702
    pop cx                           ; 0x6705
    mov cx, ax                       ; 0x6706
    add ax, strict word 0xa          ; 0x6708
    mov cx, ax                       ; 0x670b
    mov ax, 0                        ; 0x670d
    sub ax, cx                       ; 0x6710
    mov word [bp - 0x0006], ax       ; 0x6712
    mov ax, 0xa                      ; 0x6715
    push ax                          ; 0x6718
    call ds_app_PUNN                 ; 0x6719
    pop cx                           ; 0x671c
    mov cx, ax                       ; 0x671d
    add ax, strict word 0xa          ; 0x671f
    mov cx, ax                       ; 0x6722
    mov ax, 0                        ; 0x6724
    sub ax, cx                       ; 0x6727
    mov word [bp - 0x0008], ax       ; 0x6729
    mov word [bp - 0x000a], 0xffff   ; 0x672c
    jmp short @..api_idx_00d2_SNMN.l25 ; 0x6731
@..api_idx_00d2_SNMN.l24:
    mov ax, 0x55                     ; 0x6733
    push ax                          ; 0x6736
    mov ax, 1                        ; 0x6737
    push ax                          ; 0x673a
    push ax                          ; 0x673b
    mov ax, 0x639                    ; 0x673c
    push ax                          ; 0x673f
    call api_idx_0050_TJLH           ; 0x6740
    add sp, byte 8                   ; 0x6743
    mov ax, 0xa                      ; 0x6746
    push ax                          ; 0x6749
    call ds_app_PUNN                 ; 0x674a
    pop cx                           ; 0x674d
    add ax, strict word 0xfffb       ; 0x674e
    mov word [bp - 0x0006], ax       ; 0x6751
    mov ax, 0xa                      ; 0x6754
    push ax                          ; 0x6757
    call ds_app_PUNN                 ; 0x6758
    pop cx                           ; 0x675b
    add ax, strict word 0xfffb       ; 0x675c
    mov word [bp - 0x0008], ax       ; 0x675f
    mov word [bp - 0x000a], 0        ; 0x6762
@..api_idx_00d2_SNMN.l25:
    push word [bp - 0x0008]          ; 0x6767
    push word [bp - 0x0006]          ; 0x676a
    push word [bp + 0x4]             ; 0x676d
    call loc_HOSN                    ; 0x6770
    add sp, byte 6                   ; 0x6773
    mov ax, word [bp - 0x000a]       ; 0x6776
    ret                              ; 0x6779
