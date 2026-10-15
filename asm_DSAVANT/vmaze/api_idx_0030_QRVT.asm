; auto-generated
api_idx_0030_QRVT:
    mov ax, 0xffd0                   ; 0x53fd
    call aztec_csav                  ; 0x5400
    mov word [bp - 0x0024], 0        ; 0x5403
    mov word [bp - 0x0022], 4        ; 0x5408
    mov word [bp - 0x0020], 1        ; 0x540d
    mov word [bp - 0x001e], 3        ; 0x5412
    mov word [bp - 0x001c], 2        ; 0x5417
    mov word [bss_8f20], 0           ; 0x541c
    mov ax, word [bss_8f46]          ; 0x5422
    mov word [bp - 0x000a], ax       ; 0x5425
    mov ax, word [bss_8f44]          ; 0x5428
    mov word [bp - 0x000c], ax       ; 0x542b
    mov ax, word [bss_8f42]          ; 0x542e
    mov word [bp - 0x000e], ax       ; 0x5431
    mov ax, word [bss_8f40]          ; 0x5434
    mov word [bp - 0x0010], ax       ; 0x5437
    mov ax, word [bss_8f3e]          ; 0x543a
    mov word [bp - 0x0012], ax       ; 0x543d
    mov word [bss_8f48], 0           ; 0x5440
    mov word [bss_8456], 0           ; 0x5446
    mov ax, 0                        ; 0x544c
    push ax                          ; 0x544f
    mov ax, 0x8f                     ; 0x5450
    push ax                          ; 0x5453
    mov ax, 0xf7                     ; 0x5454
    push ax                          ; 0x5457
    mov ax, 0x20                     ; 0x5458
    push ax                          ; 0x545b
    mov ax, 0x48                     ; 0x545c
    push ax                          ; 0x545f
    call thunk_7                     ; 0x5460
    add sp, byte 0x0a                ; 0x5463
    mov ax, word [bp - 0x0012]       ; 0x5466
    mov cx, 6                        ; 0x5469
    shl ax, cl                       ; 0x546c
    mov cx, word [bp - 0x0010]       ; 0x546e
    shl cx, 1                        ; 0x5471
    shl cx, 1                        ; 0x5473
    shl cx, 1                        ; 0x5475
    add ax, cx                       ; 0x5477
    add ax, word [bp - 0x000e]       ; 0x5479
    mov word [bp - 0x0008], ax       ; 0x547c
    cmp word [bss_830c], byte 0x0a   ; 0x547f
    je short @..api_idx_0030_QRVT.l1 ; 0x5484
    cmp word [bss_830c], byte 0x19   ; 0x5486
    je short @..api_idx_0030_QRVT.l1 ; 0x548b
    jmp near @..api_idx_0030_QRVT.l5 ; 0x548d
@..api_idx_0030_QRVT.l1:
    push ax                          ; 0x5490
    mov ax, word [bss_0e14]          ; 0x5491
    add ax, 0x930                    ; 0x5494
    push ax                          ; 0x5497
    call ds_leaf_loc_KIMU            ; 0x5498
    add sp, byte 4                   ; 0x549b
    test ax, ax                      ; 0x549e
    jne short @..api_idx_0030_QRVT.l2 ; 0x54a0
    jmp near @..api_idx_0030_QRVT.l5 ; 0x54a2
@..api_idx_0030_QRVT.l2:
    mov ax, 0x63                     ; 0x54a5
    push ax                          ; 0x54a8
    mov ax, 0x8e                     ; 0x54a9
    push ax                          ; 0x54ac
    mov ax, 0xf7                     ; 0x54ad
    push ax                          ; 0x54b0
    mov ax, 0x21                     ; 0x54b1
    push ax                          ; 0x54b4
    mov ax, 0x48                     ; 0x54b5
    push ax                          ; 0x54b8
    call thunk_7                     ; 0x54b9
    add sp, byte 0x0a                ; 0x54bc
    mov ax, word [bss_830c]          ; 0x54bf
    cmp ax, word [bss_8f28]          ; 0x54c2
    jne short @..api_idx_0030_QRVT.l4 ; 0x54c6
    mov ax, word [bp - 0x0012]       ; 0x54c8
    cmp ax, word [bss_8f2a]          ; 0x54cb
    jne short @..api_idx_0030_QRVT.l4 ; 0x54cf
    mov ax, word [bp - 0x000e]       ; 0x54d1
    cmp ax, word [bss_8f2e]          ; 0x54d4
    jne short @..api_idx_0030_QRVT.l4 ; 0x54d8
    mov ax, word [bp - 0x0010]       ; 0x54da
    cmp ax, word [bss_8f2c]          ; 0x54dd
    jne short @..api_idx_0030_QRVT.l4 ; 0x54e1
    cmp word [bss_8f22], byte 0      ; 0x54e3
    je short @..api_idx_0030_QRVT.l3 ; 0x54e8
    mov word [bss_8f20], 0xffff      ; 0x54ea
@..api_idx_0030_QRVT.l3:
    mov byte [bp - 0x0030], 2        ; 0x54f0
    mov byte [bp - 0x002f], 0        ; 0x54f4
    mov ax, 0                        ; 0x54f8
    push ax                          ; 0x54fb
    push ax                          ; 0x54fc
    lea ax, word [bp - 0x0030]       ; 0x54fd
    push ax                          ; 0x5500
    mov ax, 0                        ; 0x5501
    push ax                          ; 0x5504
    mov ax, 0x90                     ; 0x5505
    push ax                          ; 0x5508
    mov ax, 0x20                     ; 0x5509
    push ax                          ; 0x550c
    mov ax, 0xf8                     ; 0x550d
    push ax                          ; 0x5510
    mov ax, 0x48                     ; 0x5511
    push ax                          ; 0x5514
    mov al, byte [bss_7b05]          ; 0x5515
    sub ah, ah                       ; 0x5518
    inc ax                           ; 0x551a
    push ax                          ; 0x551b
    mov al, byte [bss_7abe]          ; 0x551c
    sub ah, ah                       ; 0x551f
    inc ax                           ; 0x5521
    push ax                          ; 0x5522
    mov ax, 0xc                      ; 0x5523
    push ax                          ; 0x5526
    call thunk_28                    ; 0x5527
    add sp, byte 0x16                ; 0x552a
@..api_idx_0030_QRVT.l4:
    call ds_app_NLKG                 ; 0x552d
    ret                              ; 0x5530
@..api_idx_0030_QRVT.l5:
    cmp word [bss_5b6e], byte 1      ; 0x5531
    je short @..api_idx_0030_QRVT.l6 ; 0x5536
    cmp word [bss_91a6], byte 0      ; 0x5538
    je short @..api_idx_0030_QRVT.l8 ; 0x553d
@..api_idx_0030_QRVT.l6:
    push word [bp - 0x0008]          ; 0x553f
    mov ax, word [bss_0e14]          ; 0x5542
    add ax, 0x8b0                    ; 0x5545
    push ax                          ; 0x5548
    call ds_leaf_loc_KIMU            ; 0x5549
    add sp, byte 4                   ; 0x554c
    test ax, ax                      ; 0x554f
    je short @..api_idx_0030_QRVT.l8 ; 0x5551
    cmp word [bss_91a6], byte 0      ; 0x5553
    je short @..api_idx_0030_QRVT.l7 ; 0x5558
    mov ax, 0xff                     ; 0x555a
    push ax                          ; 0x555d
    mov ax, 0x8e                     ; 0x555e
    push ax                          ; 0x5561
    mov ax, 0xf7                     ; 0x5562
    push ax                          ; 0x5565
    mov ax, 0x21                     ; 0x5566
    push ax                          ; 0x5569
    mov ax, 0x48                     ; 0x556a
    push ax                          ; 0x556d
    call thunk_7                     ; 0x556e
    add sp, byte 0x0a                ; 0x5571
    call api_idx_001e_PMST           ; 0x5574
    call api_idx_0024_SLHO           ; 0x5577
@..api_idx_0030_QRVT.l7:
    call ds_app_NLKG                 ; 0x557a
    ret                              ; 0x557d
@..api_idx_0030_QRVT.l8:
    mov ax, 0                        ; 0x557e
    push ax                          ; 0x5581
    mov ax, 0x19                     ; 0x5582
    push ax                          ; 0x5585
    mov ax, 0x920a                   ; 0x5586
    push ax                          ; 0x5589
    call aztec_setmem                ; 0x558a
    add sp, byte 6                   ; 0x558d
    mov ax, 0                        ; 0x5590
    push ax                          ; 0x5593
    mov ax, 0x19                     ; 0x5594
    push ax                          ; 0x5597
    mov ax, 0x91f1                   ; 0x5598
    push ax                          ; 0x559b
    call aztec_setmem                ; 0x559c
    add sp, byte 6                   ; 0x559f
    mov ax, 0                        ; 0x55a2
    push ax                          ; 0x55a5
    mov ax, 0x19                     ; 0x55a6
    push ax                          ; 0x55a9
    mov ax, 0x91d8                   ; 0x55aa
    push ax                          ; 0x55ad
    call aztec_setmem                ; 0x55ae
    add sp, byte 6                   ; 0x55b1
    mov ax, 0                        ; 0x55b4
    push ax                          ; 0x55b7
    mov ax, 0x19                     ; 0x55b8
    push ax                          ; 0x55bb
    mov ax, 0x9b1a                   ; 0x55bc
    push ax                          ; 0x55bf
    call aztec_setmem                ; 0x55c0
    add sp, byte 6                   ; 0x55c3
    mov ax, 0                        ; 0x55c6
    push ax                          ; 0x55c9
    mov ax, 0x19                     ; 0x55ca
    push ax                          ; 0x55cd
    mov ax, 0x9223                   ; 0x55ce
    push ax                          ; 0x55d1
    call aztec_setmem                ; 0x55d2
    add sp, byte 6                   ; 0x55d5
    mov ax, 0                        ; 0x55d8
    push ax                          ; 0x55db
    mov ax, 0x32                     ; 0x55dc
    push ax                          ; 0x55df
    mov ax, 0x92ba                   ; 0x55e0
    push ax                          ; 0x55e3
    call aztec_setmem                ; 0x55e4
    add sp, byte 6                   ; 0x55e7
    mov ax, 0                        ; 0x55ea
    push ax                          ; 0x55ed
    mov ax, 0x19                     ; 0x55ee
    push ax                          ; 0x55f1
    mov ax, 0x92a0                   ; 0x55f2
    push ax                          ; 0x55f5
    call aztec_setmem                ; 0x55f6
    add sp, byte 6                   ; 0x55f9
    mov ax, 0                        ; 0x55fc
    push ax                          ; 0x55ff
    mov ax, 0x32                     ; 0x5600
    push ax                          ; 0x5603
    mov ax, 0x923c                   ; 0x5604
    push ax                          ; 0x5607
    call aztec_setmem                ; 0x5608
    add sp, byte 6                   ; 0x560b
    mov ax, 0                        ; 0x560e
    push ax                          ; 0x5611
    mov ax, 0x32                     ; 0x5612
    push ax                          ; 0x5615
    mov ax, 0x92ec                   ; 0x5616
    push ax                          ; 0x5619
    call aztec_setmem                ; 0x561a
    add sp, byte 6                   ; 0x561d
    mov ax, 0                        ; 0x5620
    push ax                          ; 0x5623
    mov ax, 0x32                     ; 0x5624
    push ax                          ; 0x5627
    mov ax, 0x926e                   ; 0x5628
    push ax                          ; 0x562b
    call aztec_setmem                ; 0x562c
    add sp, byte 6                   ; 0x562f
    mov ax, 0                        ; 0x5632
    push ax                          ; 0x5635
    mov ax, 0x7f8                    ; 0x5636
    push ax                          ; 0x5639
    mov ax, 0x9320                   ; 0x563a
    push ax                          ; 0x563d
    call aztec_setmem                ; 0x563e
    add sp, byte 6                   ; 0x5641
    mov word [bss_931e], 0           ; 0x5644
    mov ax, word [bp - 0x0012]       ; 0x564a
    mov word [bp - 0x0014], ax       ; 0x564d
    mov ax, 0xffff                   ; 0x5650
    push ax                          ; 0x5653
    mov ax, 0                        ; 0x5654
    push ax                          ; 0x5657
    lea ax, word [bp - 0x0014]       ; 0x5658
    push ax                          ; 0x565b
    lea ax, word [bp - 0x0010]       ; 0x565c
    push ax                          ; 0x565f
    lea ax, word [bp - 0x000e]       ; 0x5660
    push ax                          ; 0x5663
    lea ax, word [bp - 0x000c]       ; 0x5664
    push ax                          ; 0x5667
    lea ax, word [bp - 0x000a]       ; 0x5668
    push ax                          ; 0x566b
    call loc_UKLN                    ; 0x566c
    add sp, byte 0x0e                ; 0x566f
    mov word [bss_9b34], 5           ; 0x5672
    mov ax, word [bss_8f46]          ; 0x5678
    add ax, word [bss_8f44]          ; 0x567b
    add ax, word [bss_82ee]          ; 0x567f
    mov cx, 2                        ; 0x5683
    cwd                              ; 0x5686
    idiv cx                          ; 0x5687
    mov word [bss_91d2], dx          ; 0x5689
    mov word [bss_91d4], 0           ; 0x568d
    mov ax, word [bss_5b6e]          ; 0x5693
    jmp near @..api_idx_0030_QRVT.l24 ; 0x5696
jumptable_59e2_case_1:
    mov word [bss_91d4], 0           ; 0x5699
    cmp word [bss_830c], byte 0x1e   ; 0x569f
    jne short @..api_idx_0030_QRVT.l9 ; 0x56a4
    cmp word [bss_8f3e], byte 8      ; 0x56a6
    jne short @..api_idx_0030_QRVT.l9 ; 0x56ab
    jmp short @..api_idx_0030_QRVT.l10 ; 0x56ad
@..api_idx_0030_QRVT.l9:
    mov ax, 0x1f                     ; 0x56af
    push ax                          ; 0x56b2
    call loc_UMJN                    ; 0x56b3
    pop cx                           ; 0x56b6
    push ax                          ; 0x56b7
    mov ax, 0                        ; 0x56b8
    push ax                          ; 0x56bb
    mov ax, 0x1f                     ; 0x56bc
    push ax                          ; 0x56bf
    push ax                          ; 0x56c0
    call loc_LITI                    ; 0x56c1
    add sp, byte 4                   ; 0x56c4
    push ax                          ; 0x56c7
    mov ax, 0                        ; 0x56c8
    push ax                          ; 0x56cb
    call thunk_34                    ; 0x56cc
    add sp, byte 8                   ; 0x56cf
@..api_idx_0030_QRVT.l10:
    mov ax, 0x20                     ; 0x56d2
    push ax                          ; 0x56d5
    call loc_UMJN                    ; 0x56d6
    pop cx                           ; 0x56d9
    push ax                          ; 0x56da
    mov ax, 0                        ; 0x56db
    push ax                          ; 0x56de
    mov ax, 0x20                     ; 0x56df
    push ax                          ; 0x56e2
    push ax                          ; 0x56e3
    call loc_LITI                    ; 0x56e4
    add sp, byte 4                   ; 0x56e7
    push ax                          ; 0x56ea
    mov ax, 0                        ; 0x56eb
    push ax                          ; 0x56ee
    call thunk_34                    ; 0x56ef
    add sp, byte 8                   ; 0x56f2
    jmp near @..api_idx_0030_QRVT.l25 ; 0x56f5
jumptable_59e2_case_2:
    mov word [bss_91d4], 1           ; 0x56f8
    mov ax, 0xff                     ; 0x56fe
    push ax                          ; 0x5701
    mov ax, 0x48                     ; 0x5702
    push ax                          ; 0x5705
    mov ax, 0xf7                     ; 0x5706
    push ax                          ; 0x5709
    mov ax, 0x21                     ; 0x570a
    push ax                          ; 0x570d
    mov ax, 0x48                     ; 0x570e
    push ax                          ; 0x5711
    call thunk_7                     ; 0x5712
    add sp, byte 0x0a                ; 0x5715
    call api_idx_001e_PMST           ; 0x5718
    call api_idx_0024_SLHO           ; 0x571b
    mov ax, 4                        ; 0x571e
    push ax                          ; 0x5721
    call loc_UMJN                    ; 0x5722
    pop cx                           ; 0x5725
    push ax                          ; 0x5726
    mov ax, 2                        ; 0x5727
    push ax                          ; 0x572a
    mov ax, 4                        ; 0x572b
    push ax                          ; 0x572e
    push ax                          ; 0x572f
    call loc_LITI                    ; 0x5730
    add sp, byte 4                   ; 0x5733
    push ax                          ; 0x5736
    mov ax, 1                        ; 0x5737
    push ax                          ; 0x573a
    call thunk_34                    ; 0x573b
    add sp, byte 8                   ; 0x573e
    mov ax, 0x3e                     ; 0x5741
    push ax                          ; 0x5744
    call loc_UMJN                    ; 0x5745
    pop cx                           ; 0x5748
    push ax                          ; 0x5749
    mov ax, 0                        ; 0x574a
    push ax                          ; 0x574d
    mov ax, 0x3e                     ; 0x574e
    push ax                          ; 0x5751
    push ax                          ; 0x5752
    call loc_LITI                    ; 0x5753
    add sp, byte 4                   ; 0x5756
    push ax                          ; 0x5759
    mov ax, 1                        ; 0x575a
    push ax                          ; 0x575d
    call thunk_34                    ; 0x575e
    add sp, byte 8                   ; 0x5761
    jmp near @..api_idx_0030_QRVT.l25 ; 0x5764
jumptable_59e2_case_3:
    mov word [bss_91d4], 2           ; 0x5767
    mov ax, 0xff                     ; 0x576d
    push ax                          ; 0x5770
    mov ax, 0x48                     ; 0x5771
    push ax                          ; 0x5774
    mov ax, 0xf7                     ; 0x5775
    push ax                          ; 0x5778
    mov ax, 0x21                     ; 0x5779
    push ax                          ; 0x577c
    mov ax, 0x48                     ; 0x577d
    push ax                          ; 0x5780
    call thunk_7                     ; 0x5781
    add sp, byte 0x0a                ; 0x5784
    call api_idx_001e_PMST           ; 0x5787
    call api_idx_0024_SLHO           ; 0x578a
    cmp word [bss_830c], byte 0x0e   ; 0x578d
    jne short @..api_idx_0030_QRVT.l12 ; 0x5792
    cmp word [bss_8f3e], byte 9      ; 0x5794
    jle short @..api_idx_0030_QRVT.l12 ; 0x5799
    cmp word [bss_8f3e], byte 0x0a   ; 0x579b
    jg short @..api_idx_0030_QRVT.l11 ; 0x57a0
    mov ax, word [bss_82ee]          ; 0x57a2
    cmp ax, strict word 2            ; 0x57a5
    je short @..api_idx_0030_QRVT.l11 ; 0x57a8
    cmp word [bss_82ee], byte 0      ; 0x57aa
    je short @..api_idx_0030_QRVT.l12 ; 0x57af
    cmp word [bss_8f40], byte 5      ; 0x57b1
    jge short @..api_idx_0030_QRVT.l12 ; 0x57b6
@..api_idx_0030_QRVT.l11:
    mov ax, 0                        ; 0x57b8
    push ax                          ; 0x57bb
    mov ax, 0x50                     ; 0x57bc
    push ax                          ; 0x57bf
    mov ax, 0xf7                     ; 0x57c0
    push ax                          ; 0x57c3
    mov ax, 0x48                     ; 0x57c4
    push ax                          ; 0x57c7
    push ax                          ; 0x57c8
    call thunk_7                     ; 0x57c9
    add sp, byte 0x0a                ; 0x57cc
    jmp short @..api_idx_0030_QRVT.l13 ; 0x57cf
@..api_idx_0030_QRVT.l12:
    mov ax, 4                        ; 0x57d1
    push ax                          ; 0x57d4
    call loc_UMJN                    ; 0x57d5
    pop cx                           ; 0x57d8
    push ax                          ; 0x57d9
    mov ax, 0                        ; 0x57da
    push ax                          ; 0x57dd
    mov ax, 4                        ; 0x57de
    push ax                          ; 0x57e1
    push ax                          ; 0x57e2
    call loc_LITI                    ; 0x57e3
    add sp, byte 4                   ; 0x57e6
    push ax                          ; 0x57e9
    mov ax, 4                        ; 0x57ea
    push ax                          ; 0x57ed
    call thunk_34                    ; 0x57ee
    add sp, byte 8                   ; 0x57f1
    mov ax, 0xad                     ; 0x57f4
    push ax                          ; 0x57f7
    call loc_UMJN                    ; 0x57f8
    pop cx                           ; 0x57fb
    push ax                          ; 0x57fc
    mov ax, 0                        ; 0x57fd
    push ax                          ; 0x5800
    mov ax, 0xad                     ; 0x5801
    push ax                          ; 0x5804
    push ax                          ; 0x5805
    call loc_LITI                    ; 0x5806
    add sp, byte 4                   ; 0x5809
    push ax                          ; 0x580c
    mov ax, 2                        ; 0x580d
    push ax                          ; 0x5810
    call thunk_34                    ; 0x5811
    add sp, byte 8                   ; 0x5814
@..api_idx_0030_QRVT.l13:
    jmp near @..api_idx_0030_QRVT.l25 ; 0x5817
jumptable_59e2_case_4:
    mov word [bss_91d4], 3           ; 0x581a
    mov ax, 0xff                     ; 0x5820
    push ax                          ; 0x5823
    mov ax, 0x48                     ; 0x5824
    cmp word [bss_91a6], byte 0      ; 0x5827
    je short @..api_idx_0030_QRVT.l14 ; 0x582c
    mov ax, 0x8e                     ; 0x582e
@..api_idx_0030_QRVT.l14:
    push ax                          ; 0x5831
    mov ax, 0xf7                     ; 0x5832
    push ax                          ; 0x5835
    mov ax, 0x21                     ; 0x5836
    push ax                          ; 0x5839
    mov ax, 0x48                     ; 0x583a
    push ax                          ; 0x583d
    call thunk_7                     ; 0x583e
    add sp, byte 0x0a                ; 0x5841
    call api_idx_001e_PMST           ; 0x5844
    call api_idx_0024_SLHO           ; 0x5847
    mov ax, 4                        ; 0x584a
    push ax                          ; 0x584d
    call loc_UMJN                    ; 0x584e
    pop cx                           ; 0x5851
    push ax                          ; 0x5852
    mov ax, 2                        ; 0x5853
    push ax                          ; 0x5856
    mov ax, 4                        ; 0x5857
    push ax                          ; 0x585a
    push ax                          ; 0x585b
    call loc_LITI                    ; 0x585c
    add sp, byte 4                   ; 0x585f
    push ax                          ; 0x5862
    mov ax, 1                        ; 0x5863
    push ax                          ; 0x5866
    call thunk_34                    ; 0x5867
    add sp, byte 8                   ; 0x586a
    cmp word [bss_91a6], byte 0      ; 0x586d
    jne short @..api_idx_0030_QRVT.l15 ; 0x5872
    mov ax, 0x2a                     ; 0x5874
    push ax                          ; 0x5877
    call loc_UMJN                    ; 0x5878
    pop cx                           ; 0x587b
    push ax                          ; 0x587c
    mov ax, 0                        ; 0x587d
    push ax                          ; 0x5880
    mov ax, 0x2a                     ; 0x5881
    push ax                          ; 0x5884
    push ax                          ; 0x5885
    call loc_LITI                    ; 0x5886
    add sp, byte 4                   ; 0x5889
    push ax                          ; 0x588c
    mov ax, 4                        ; 0x588d
    push ax                          ; 0x5890
    call thunk_34                    ; 0x5891
    add sp, byte 8                   ; 0x5894
@..api_idx_0030_QRVT.l15:
    jmp near @..api_idx_0030_QRVT.l25 ; 0x5897
jumptable_59e2_case_5:
    mov word [bss_91d4], 4           ; 0x589a
    mov ax, 0xff                     ; 0x58a0
    push ax                          ; 0x58a3
    mov ax, 0x38                     ; 0x58a4
    push ax                          ; 0x58a7
    mov ax, 0xf7                     ; 0x58a8
    push ax                          ; 0x58ab
    mov ax, 0x21                     ; 0x58ac
    push ax                          ; 0x58af
    mov ax, 0x48                     ; 0x58b0
    push ax                          ; 0x58b3
    call thunk_7                     ; 0x58b4
    add sp, byte 0x0a                ; 0x58b7
    call api_idx_001e_PMST           ; 0x58ba
    call api_idx_0024_SLHO           ; 0x58bd
    mov ax, 0                        ; 0x58c0
    push ax                          ; 0x58c3
    mov ax, 0x50                     ; 0x58c4
    push ax                          ; 0x58c7
    mov ax, 0xf7                     ; 0x58c8
    push ax                          ; 0x58cb
    mov ax, 0x39                     ; 0x58cc
    push ax                          ; 0x58cf
    mov ax, 0x48                     ; 0x58d0
    push ax                          ; 0x58d3
    call thunk_7                     ; 0x58d4
    add sp, byte 0x0a                ; 0x58d7
    mov ax, 0x2a                     ; 0x58da
    push ax                          ; 0x58dd
    call loc_UMJN                    ; 0x58de
    pop cx                           ; 0x58e1
    push ax                          ; 0x58e2
    mov ax, 0                        ; 0x58e3
    push ax                          ; 0x58e6
    mov ax, 0x2a                     ; 0x58e7
    push ax                          ; 0x58ea
    push ax                          ; 0x58eb
    call loc_LITI                    ; 0x58ec
    add sp, byte 4                   ; 0x58ef
    push ax                          ; 0x58f2
    mov ax, 4                        ; 0x58f3
    push ax                          ; 0x58f6
    call thunk_34                    ; 0x58f7
    add sp, byte 8                   ; 0x58fa
    jmp near @..api_idx_0030_QRVT.l25 ; 0x58fd
jumptable_59e2_case_6:
    mov word [bss_91d4], 5           ; 0x5900
    mov ax, 0xff                     ; 0x5906
    push ax                          ; 0x5909
    mov ax, 0x48                     ; 0x590a
    push ax                          ; 0x590d
    mov ax, 0xf7                     ; 0x590e
    push ax                          ; 0x5911
    mov ax, 0x21                     ; 0x5912
    push ax                          ; 0x5915
    mov ax, 0x48                     ; 0x5916
    push ax                          ; 0x5919
    call thunk_7                     ; 0x591a
    add sp, byte 0x0a                ; 0x591d
    call api_idx_001e_PMST           ; 0x5920
    call api_idx_0024_SLHO           ; 0x5923
    mov ax, 0x3e                     ; 0x5926
    push ax                          ; 0x5929
    call loc_UMJN                    ; 0x592a
    pop cx                           ; 0x592d
    push ax                          ; 0x592e
    mov ax, 0                        ; 0x592f
    push ax                          ; 0x5932
    mov ax, 0x3e                     ; 0x5933
    push ax                          ; 0x5936
    push ax                          ; 0x5937
    call loc_LITI                    ; 0x5938
    add sp, byte 4                   ; 0x593b
    push ax                          ; 0x593e
    mov ax, 1                        ; 0x593f
    push ax                          ; 0x5942
    call thunk_34                    ; 0x5943
    add sp, byte 8                   ; 0x5946
    cmp word [bss_830c], byte 8      ; 0x5949
    jne short @..api_idx_0030_QRVT.l20 ; 0x594e
    cmp word [bss_8f3e], byte 6      ; 0x5950
    jne short @..api_idx_0030_QRVT.l20 ; 0x5955
    cmp word [bss_8f40], byte 4      ; 0x5957
    jne short @..api_idx_0030_QRVT.l20 ; 0x595c
    mov ax, word [bss_8f42]          ; 0x595e
    cmp ax, strict word 2            ; 0x5961
    je short @..api_idx_0030_QRVT.l16 ; 0x5964
    cmp ax, strict word 1            ; 0x5966
    jne short @..api_idx_0030_QRVT.l17 ; 0x5969
@..api_idx_0030_QRVT.l16:
    mov ax, word [bss_82ee]          ; 0x596b
    cmp ax, strict word 1            ; 0x596e
    je short @..api_idx_0030_QRVT.l19 ; 0x5971
@..api_idx_0030_QRVT.l17:
    mov ax, word [bss_8f42]          ; 0x5973
    cmp ax, strict word 5            ; 0x5976
    je short @..api_idx_0030_QRVT.l18 ; 0x5979
    cmp ax, strict word 6            ; 0x597b
    jne short @..api_idx_0030_QRVT.l20 ; 0x597e
@..api_idx_0030_QRVT.l18:
    mov ax, word [bss_82ee]          ; 0x5980
    cmp ax, strict word 3            ; 0x5983
    jne short @..api_idx_0030_QRVT.l20 ; 0x5986
@..api_idx_0030_QRVT.l19:
    jmp short @..api_idx_0030_QRVT.l21 ; 0x5988
@..api_idx_0030_QRVT.l20:
    mov ax, 0                        ; 0x598a
    push ax                          ; 0x598d
    mov ax, 0x50                     ; 0x598e
    push ax                          ; 0x5991
    mov ax, 0xf7                     ; 0x5992
    push ax                          ; 0x5995
    mov ax, 0x48                     ; 0x5996
    push ax                          ; 0x5999
    push ax                          ; 0x599a
    call thunk_7                     ; 0x599b
    add sp, byte 0x0a                ; 0x599e
@..api_idx_0030_QRVT.l21:
    cmp word [bss_830c], byte 8      ; 0x59a1
    je short @..api_idx_0030_QRVT.l22 ; 0x59a6
    cmp word [bss_830c], byte 0x0b   ; 0x59a8
    jne short @..api_idx_0030_QRVT.l23 ; 0x59ad
    cmp word [bss_8f3e], byte 6      ; 0x59af
    jne short @..api_idx_0030_QRVT.l23 ; 0x59b4
    cmp word [bss_8f40], byte 3      ; 0x59b6
    jle short @..api_idx_0030_QRVT.l23 ; 0x59bb
@..api_idx_0030_QRVT.l22:
    mov ax, 4                        ; 0x59bd
    push ax                          ; 0x59c0
    call loc_UMJN                    ; 0x59c1
    pop cx                           ; 0x59c4
    push ax                          ; 0x59c5
    mov ax, 2                        ; 0x59c6
    push ax                          ; 0x59c9
    mov ax, 4                        ; 0x59ca
    push ax                          ; 0x59cd
    push ax                          ; 0x59ce
    call loc_LITI                    ; 0x59cf
    add sp, byte 4                   ; 0x59d2
    push ax                          ; 0x59d5
    mov ax, 1                        ; 0x59d6
    push ax                          ; 0x59d9
    call thunk_34                    ; 0x59da
    add sp, byte 8                   ; 0x59dd
@..api_idx_0030_QRVT.l23:
    jmp short @..api_idx_0030_QRVT.l25 ; 0x59e0
jumptable_59e2:
    dw jumptable_59e2_case_0 - IMAGE_BASE + 0x5055 ; 0x59e2
    dw jumptable_59e2_case_1 - IMAGE_BASE + 0x5055 ; 0x59e4
    dw jumptable_59e2_case_2 - IMAGE_BASE + 0x5055 ; 0x59e6
    dw jumptable_59e2_case_3 - IMAGE_BASE + 0x5055 ; 0x59e8
    dw jumptable_59e2_case_4 - IMAGE_BASE + 0x5055 ; 0x59ea
    dw jumptable_59e2_case_5 - IMAGE_BASE + 0x5055 ; 0x59ec
    dw jumptable_59e2_case_6 - IMAGE_BASE + 0x5055 ; 0x59ee
@..api_idx_0030_QRVT.l24:
    cmp ax, strict word 7            ; 0x59f0
    jae short @..api_idx_0030_QRVT.l25 ; 0x59f3
    xchg bx, ax                      ; 0x59f5
    shl bx, 1                        ; 0x59f6
    jmp [cs:bx - 0x55d7]             ; 0x59f8
jumptable_59e2_case_0:
@..api_idx_0030_QRVT.l25:
    mov word [bss_91d6], 0           ; 0x59fd
@..api_idx_0030_QRVT.l26:
    mov ax, word [bss_91d6]          ; 0x5a03
    cmp ax, word [bss_9b34]          ; 0x5a06
    jl short @..api_idx_0030_QRVT.l27 ; 0x5a0a
    jmp near @..api_idx_0030_QRVT.l39 ; 0x5a0c
@..api_idx_0030_QRVT.l27:
    mov ax, word [bss_8f46]          ; 0x5a0f
    add ax, word [bss_8f44]          ; 0x5a12
    add ax, word [bss_82ee]          ; 0x5a16
    mov cx, ax                       ; 0x5a1a
    mov ax, word [bss_91d6]          ; 0x5a1c
    add cx, ax                       ; 0x5a1f
    mov ax, cx                       ; 0x5a21
    mov cx, 2                        ; 0x5a23
    cwd                              ; 0x5a26
    idiv cx                          ; 0x5a27
    mov word [bss_91d0], dx          ; 0x5a29
    mov ax, 1                        ; 0x5a2d
    push ax                          ; 0x5a30
    mov ax, 0                        ; 0x5a31
    push ax                          ; 0x5a34
    lea ax, word [bp - 0x0012]       ; 0x5a35
    push ax                          ; 0x5a38
    lea ax, word [bp - 0x0010]       ; 0x5a39
    push ax                          ; 0x5a3c
    lea ax, word [bp - 0x000e]       ; 0x5a3d
    push ax                          ; 0x5a40
    lea ax, word [bp - 0x000c]       ; 0x5a41
    push ax                          ; 0x5a44
    lea ax, word [bp - 0x000a]       ; 0x5a45
    push ax                          ; 0x5a48
    call loc_UKLN                    ; 0x5a49
    add sp, byte 0x0e                ; 0x5a4c
    test ax, ax                      ; 0x5a4f
    je short @..api_idx_0030_QRVT.l34 ; 0x5a51
    mov ax, word [bss_91d4]          ; 0x5a53
    mov cx, 2                        ; 0x5a56
    cwd                              ; 0x5a59
    idiv cx                          ; 0x5a5a
    mov ax, dx                       ; 0x5a5c
    cmp ax, strict word 1            ; 0x5a5e
    jne short @..api_idx_0030_QRVT.l32 ; 0x5a61
    mov ax, word [bss_91d4]          ; 0x5a63
    cmp ax, strict word 5            ; 0x5a66
    je short @..api_idx_0030_QRVT.l30 ; 0x5a69
    cmp word [bss_91a6], byte 0      ; 0x5a6b
    je short @..api_idx_0030_QRVT.l28 ; 0x5a70
    mov word [bss_9b36], 0           ; 0x5a72
    jmp short @..api_idx_0030_QRVT.l29 ; 0x5a78
@..api_idx_0030_QRVT.l28:
    mov ax, 5                        ; 0x5a7a
    imul word [bss_91d6]             ; 0x5a7d
    mov bx, ax                       ; 0x5a81
    mov byte [bx - 0x6e26], 1        ; 0x5a83
    mov word [bss_9b36], 4           ; 0x5a88
@..api_idx_0030_QRVT.l29:
    jmp short @..api_idx_0030_QRVT.l31 ; 0x5a8e
@..api_idx_0030_QRVT.l30:
    mov ax, 5                        ; 0x5a90
    imul word [bss_91d6]             ; 0x5a93
    mov bx, ax                       ; 0x5a97
    mov byte [bx - 0x6e26], 3        ; 0x5a99
    mov word [bss_9b36], 0           ; 0x5a9e
@..api_idx_0030_QRVT.l31:
    jmp short @..api_idx_0030_QRVT.l33 ; 0x5aa4
@..api_idx_0030_QRVT.l32:
    mov word [bss_9b36], 2           ; 0x5aa6
@..api_idx_0030_QRVT.l33:
    mov ax, word [bss_9b36]          ; 0x5aac
    mov word [bss_9b38], ax          ; 0x5aaf
    mov word [bss_9b3a], ax          ; 0x5ab2
    jmp short @..api_idx_0030_QRVT.l35 ; 0x5ab5
@..api_idx_0030_QRVT.l34:
    mov ax, 0                        ; 0x5ab7
    push ax                          ; 0x5aba
    push word [bp - 0x0012]          ; 0x5abb
    push word [bp - 0x0010]          ; 0x5abe
    push word [bp - 0x000e]          ; 0x5ac1
    push word [bp - 0x000c]          ; 0x5ac4
    push word [bp - 0x000a]          ; 0x5ac7
    call api_idx_0008_VLON           ; 0x5aca
    add sp, byte 0x0c                ; 0x5acd
    mov word [bss_9b36], ax          ; 0x5ad0
    mov ax, 0                        ; 0x5ad3
    push ax                          ; 0x5ad6
    push word [bp - 0x0012]          ; 0x5ad7
    push word [bp - 0x0010]          ; 0x5ada
    push word [bp - 0x000e]          ; 0x5add
    push word [bp - 0x000c]          ; 0x5ae0
    push word [bp - 0x000a]          ; 0x5ae3
    push ax                          ; 0x5ae6
    call api_idx_0008_OIKV           ; 0x5ae7
    add sp, byte 0x0e                ; 0x5aea
    mov word [bss_9b38], ax          ; 0x5aed
    mov ax, 0                        ; 0x5af0
    push ax                          ; 0x5af3
    push word [bp - 0x0012]          ; 0x5af4
    push word [bp - 0x0010]          ; 0x5af7
    push word [bp - 0x000e]          ; 0x5afa
    push word [bp - 0x000c]          ; 0x5afd
    push word [bp - 0x000a]          ; 0x5b00
    mov ax, 2                        ; 0x5b03
    push ax                          ; 0x5b06
    call api_idx_0008_OIKV           ; 0x5b07
    add sp, byte 0x0e                ; 0x5b0a
    mov word [bss_9b3a], ax          ; 0x5b0d
@..api_idx_0030_QRVT.l35:
    mov ax, 0xffff                   ; 0x5b10
    push ax                          ; 0x5b13
    push word [bp - 0x0012]          ; 0x5b14
    push word [bp - 0x0010]          ; 0x5b17
    push word [bp - 0x000e]          ; 0x5b1a
    push word [bp - 0x000c]          ; 0x5b1d
    push word [bp - 0x000a]          ; 0x5b20
    call api_idx_0008_VLON           ; 0x5b23
    add sp, byte 0x0c                ; 0x5b26
    mov word [bss_9b3c], ax          ; 0x5b29
    mov ax, 1                        ; 0x5b2c
    push ax                          ; 0x5b2f
    push word [bp - 0x0012]          ; 0x5b30
    push word [bp - 0x0010]          ; 0x5b33
    push word [bp - 0x000e]          ; 0x5b36
    push word [bp - 0x000c]          ; 0x5b39
    push word [bp - 0x000a]          ; 0x5b3c
    call api_idx_0008_VLON           ; 0x5b3f
    add sp, byte 0x0c                ; 0x5b42
    mov word [bss_9b3e], ax          ; 0x5b45
    cmp word [bss_91d6], byte 1      ; 0x5b48
    jle short @..api_idx_0030_QRVT.l36 ; 0x5b4d
    mov ax, 0xfffe                   ; 0x5b4f
    push ax                          ; 0x5b52
    push word [bp - 0x0012]          ; 0x5b53
    push word [bp - 0x0010]          ; 0x5b56
    push word [bp - 0x000e]          ; 0x5b59
    push word [bp - 0x000c]          ; 0x5b5c
    push word [bp - 0x000a]          ; 0x5b5f
    call api_idx_0008_VLON           ; 0x5b62
    add sp, byte 0x0c                ; 0x5b65
    mov word [bss_9b40], ax          ; 0x5b68
    mov ax, 2                        ; 0x5b6b
    push ax                          ; 0x5b6e
    push word [bp - 0x0012]          ; 0x5b6f
    push word [bp - 0x0010]          ; 0x5b72
    push word [bp - 0x000e]          ; 0x5b75
    push word [bp - 0x000c]          ; 0x5b78
    push word [bp - 0x000a]          ; 0x5b7b
    call api_idx_0008_VLON           ; 0x5b7e
    add sp, byte 0x0c                ; 0x5b81
    mov word [bss_9b42], ax          ; 0x5b84
    mov ax, 0xffff                   ; 0x5b87
    push ax                          ; 0x5b8a
    push word [bp - 0x0012]          ; 0x5b8b
    push word [bp - 0x0010]          ; 0x5b8e
    push word [bp - 0x000e]          ; 0x5b91
    push word [bp - 0x000c]          ; 0x5b94
    push word [bp - 0x000a]          ; 0x5b97
    mov ax, 0                        ; 0x5b9a
    push ax                          ; 0x5b9d
    call api_idx_0008_OIKV           ; 0x5b9e
    add sp, byte 0x0e                ; 0x5ba1
    mov word [bss_9b44], ax          ; 0x5ba4
    mov ax, 1                        ; 0x5ba7
    push ax                          ; 0x5baa
    push word [bp - 0x0012]          ; 0x5bab
    push word [bp - 0x0010]          ; 0x5bae
    push word [bp - 0x000e]          ; 0x5bb1
    push word [bp - 0x000c]          ; 0x5bb4
    push word [bp - 0x000a]          ; 0x5bb7
    mov ax, 2                        ; 0x5bba
    push ax                          ; 0x5bbd
    call api_idx_0008_OIKV           ; 0x5bbe
    add sp, byte 0x0e                ; 0x5bc1
    mov word [bss_9b46], ax          ; 0x5bc4
    jmp short @..api_idx_0030_QRVT.l37 ; 0x5bc7
@..api_idx_0030_QRVT.l36:
    mov word [bss_9b40], 0           ; 0x5bc9
    mov word [bss_9b42], 0           ; 0x5bcf
    mov word [bss_9b44], 0           ; 0x5bd5
    mov word [bss_9b46], 0           ; 0x5bdb
@..api_idx_0030_QRVT.l37:
    cmp word [bss_9b36], byte 0      ; 0x5be1
    jne short @..api_idx_0030_QRVT.l38 ; 0x5be6
    mov ax, word [bss_8456]          ; 0x5be8
    cmp ax, word [bss_91d6]          ; 0x5beb
    jne short @..api_idx_0030_QRVT.l38 ; 0x5bef
    inc word [bss_8456]              ; 0x5bf1
@..api_idx_0030_QRVT.l38:
    mov ax, word [bss_91d0]          ; 0x5bf5
    mov word [bss_9b18], ax          ; 0x5bf8
    mov ax, 0x1e                     ; 0x5bfb
    push ax                          ; 0x5bfe
    push ax                          ; 0x5bff
    mov ax, 0                        ; 0x5c00
    push ax                          ; 0x5c03
    push ax                          ; 0x5c04
    mov ax, 0x85                     ; 0x5c05
    push ax                          ; 0x5c08
    push ax                          ; 0x5c09
    mov ax, 0x1d                     ; 0x5c0a
    push ax                          ; 0x5c0d
    mov ax, 0x21                     ; 0x5c0e
    push ax                          ; 0x5c11
    push ax                          ; 0x5c12
    mov ax, 0x1d                     ; 0x5c13
    push ax                          ; 0x5c16
    mov ax, 0x19                     ; 0x5c17
    push ax                          ; 0x5c1a
    push ax                          ; 0x5c1b
    mov ax, 0                        ; 0x5c1c
    push ax                          ; 0x5c1f
    push ax                          ; 0x5c20
    mov ax, 0x8c                     ; 0x5c21
    push ax                          ; 0x5c24
    push ax                          ; 0x5c25
    mov ax, 0x6e                     ; 0x5c26
    push ax                          ; 0x5c29
    push ax                          ; 0x5c2a
    mov ax, 0x24                     ; 0x5c2b
    push ax                          ; 0x5c2e
    mov ax, 0x27                     ; 0x5c2f
    push ax                          ; 0x5c32
    push ax                          ; 0x5c33
    mov ax, 0x24                     ; 0x5c34
    push ax                          ; 0x5c37
    mov ax, 0x21                     ; 0x5c38
    push ax                          ; 0x5c3b
    push ax                          ; 0x5c3c
    mov ax, 0x3f                     ; 0x5c3d
    push ax                          ; 0x5c40
    mov ax, 0                        ; 0x5c41
    push ax                          ; 0x5c44
    push ax                          ; 0x5c45
    push ax                          ; 0x5c46
    mov ax, 4                        ; 0x5c47
    push ax                          ; 0x5c4a
    mov ax, 2                        ; 0x5c4b
    push ax                          ; 0x5c4e
    mov ax, 4                        ; 0x5c4f
    push ax                          ; 0x5c52
    mov ax, 2                        ; 0x5c53
    push ax                          ; 0x5c56
    mov ax, 1                        ; 0x5c57
    push ax                          ; 0x5c5a
    mov ax, 0                        ; 0x5c5b
    push ax                          ; 0x5c5e
    mov ax, 2                        ; 0x5c5f
    push ax                          ; 0x5c62
    push word [bss_9b36]             ; 0x5c63
    push word [bss_91d6]             ; 0x5c67
    call api_idx_0010_HMOH           ; 0x5c6b
    add sp, byte 0x4a                ; 0x5c6e
    mov ax, 0xffff                   ; 0x5c71
    push ax                          ; 0x5c74
    push ax                          ; 0x5c75
    mov ax, 0xae                     ; 0x5c76
    push ax                          ; 0x5c79
    push ax                          ; 0x5c7a
    mov ax, 0                        ; 0x5c7b
    push ax                          ; 0x5c7e
    push ax                          ; 0x5c7f
    push ax                          ; 0x5c80
    push ax                          ; 0x5c81
    push ax                          ; 0x5c82
    push ax                          ; 0x5c83
    mov ax, 0xc                      ; 0x5c84
    push ax                          ; 0x5c87
    mov ax, 8                        ; 0x5c88
    push ax                          ; 0x5c8b
    mov ax, 0x14                     ; 0x5c8c
    push ax                          ; 0x5c8f
    mov ax, 0x10                     ; 0x5c90
    push ax                          ; 0x5c93
    mov ax, 0                        ; 0x5c94
    push ax                          ; 0x5c97
    push ax                          ; 0x5c98
    mov ax, 4                        ; 0x5c99
    push ax                          ; 0x5c9c
    push ax                          ; 0x5c9d
    mov ax, 0x25                     ; 0x5c9e
    push ax                          ; 0x5ca1
    push ax                          ; 0x5ca2
    mov ax, 0                        ; 0x5ca3
    push ax                          ; 0x5ca6
    push ax                          ; 0x5ca7
    mov ax, 6                        ; 0x5ca8
    push ax                          ; 0x5cab
    mov ax, 5                        ; 0x5cac
    push ax                          ; 0x5caf
    mov ax, 4                        ; 0x5cb0
    push ax                          ; 0x5cb3
    mov ax, 2                        ; 0x5cb4
    push ax                          ; 0x5cb7
    mov ax, 4                        ; 0x5cb8
    push ax                          ; 0x5cbb
    mov ax, 2                        ; 0x5cbc
    push ax                          ; 0x5cbf
    mov ax, 1                        ; 0x5cc0
    push ax                          ; 0x5cc3
    mov ax, 0                        ; 0x5cc4
    push ax                          ; 0x5cc7
    mov ax, 2                        ; 0x5cc8
    push ax                          ; 0x5ccb
    push word [bss_91d6]             ; 0x5ccc
    call api_idx_0012_GOIS           ; 0x5cd0
    add sp, byte 0x40                ; 0x5cd3
    mov ax, 0x39                     ; 0x5cd6
    push ax                          ; 0x5cd9
    mov ax, 0x34                     ; 0x5cda
    push ax                          ; 0x5cdd
    mov ax, 0x1b                     ; 0x5cde
    push ax                          ; 0x5ce1
    mov ax, 0x16                     ; 0x5ce2
    push ax                          ; 0x5ce5
    mov ax, 0x9e                     ; 0x5ce6
    push ax                          ; 0x5ce9
    mov ax, 0x99                     ; 0x5cea
    push ax                          ; 0x5ced
    mov ax, 0x80                     ; 0x5cee
    push ax                          ; 0x5cf1
    mov ax, 0x7b                     ; 0x5cf2
    push ax                          ; 0x5cf5
    mov ax, 0x6d                     ; 0x5cf6
    push ax                          ; 0x5cf9
    mov ax, 0x69                     ; 0x5cfa
    push ax                          ; 0x5cfd
    mov ax, 0x5a                     ; 0x5cfe
    push ax                          ; 0x5d01
    mov ax, 0x55                     ; 0x5d02
    push ax                          ; 0x5d05
    mov ax, 0x1c                     ; 0x5d06
    push ax                          ; 0x5d09
    mov ax, 0x17                     ; 0x5d0a
    push ax                          ; 0x5d0d
    mov ax, 0xaa                     ; 0x5d0e
    push ax                          ; 0x5d11
    mov ax, 0x62                     ; 0x5d12
    push ax                          ; 0x5d15
    mov ax, 0x5e                     ; 0x5d16
    push ax                          ; 0x5d19
    mov ax, 0x52                     ; 0x5d1a
    push ax                          ; 0x5d1d
    mov ax, 0x4e                     ; 0x5d1e
    push ax                          ; 0x5d21
    mov ax, 0x19                     ; 0x5d22
    push ax                          ; 0x5d25
    mov ax, 0x15                     ; 0x5d26
    push ax                          ; 0x5d29
    mov ax, 0x13                     ; 0x5d2a
    push ax                          ; 0x5d2d
    mov ax, 0xf                      ; 0x5d2e
    push ax                          ; 0x5d31
    mov ax, 4                        ; 0x5d32
    push ax                          ; 0x5d35
    mov ax, 2                        ; 0x5d36
    push ax                          ; 0x5d39
    mov ax, 4                        ; 0x5d3a
    push ax                          ; 0x5d3d
    mov ax, 2                        ; 0x5d3e
    push ax                          ; 0x5d41
    mov ax, 1                        ; 0x5d42
    push ax                          ; 0x5d45
    mov ax, 0                        ; 0x5d46
    push ax                          ; 0x5d49
    mov ax, 1                        ; 0x5d4a
    push ax                          ; 0x5d4d
    push word [bss_9b38]             ; 0x5d4e
    push word [bss_91d6]             ; 0x5d52
    call api_idx_0012_QGRP           ; 0x5d56
    add sp, byte 0x40                ; 0x5d59
    mov ax, 0x34                     ; 0x5d5c
    push ax                          ; 0x5d5f
    mov ax, 0x39                     ; 0x5d60
    push ax                          ; 0x5d63
    mov ax, 0x16                     ; 0x5d64
    push ax                          ; 0x5d67
    mov ax, 0x1b                     ; 0x5d68
    push ax                          ; 0x5d6b
    mov ax, 0x99                     ; 0x5d6c
    push ax                          ; 0x5d6f
    mov ax, 0x9e                     ; 0x5d70
    push ax                          ; 0x5d73
    mov ax, 0xffff                   ; 0x5d74
    push ax                          ; 0x5d77
    push ax                          ; 0x5d78
    mov ax, 0x69                     ; 0x5d79
    push ax                          ; 0x5d7c
    mov ax, 0x6d                     ; 0x5d7d
    push ax                          ; 0x5d80
    mov ax, 0x55                     ; 0x5d81
    push ax                          ; 0x5d84
    mov ax, 0x5a                     ; 0x5d85
    push ax                          ; 0x5d88
    mov ax, 0x17                     ; 0x5d89
    push ax                          ; 0x5d8c
    mov ax, 0x1c                     ; 0x5d8d
    push ax                          ; 0x5d90
    mov ax, 0xaf                     ; 0x5d91
    push ax                          ; 0x5d94
    mov ax, 0x5e                     ; 0x5d95
    push ax                          ; 0x5d98
    mov ax, 0x62                     ; 0x5d99
    push ax                          ; 0x5d9c
    mov ax, 0x4e                     ; 0x5d9d
    push ax                          ; 0x5da0
    mov ax, 0x52                     ; 0x5da1
    push ax                          ; 0x5da4
    mov ax, 0x15                     ; 0x5da5
    push ax                          ; 0x5da8
    mov ax, 0x19                     ; 0x5da9
    push ax                          ; 0x5dac
    mov ax, 0xf                      ; 0x5dad
    push ax                          ; 0x5db0
    mov ax, 0x13                     ; 0x5db1
    push ax                          ; 0x5db4
    mov ax, 4                        ; 0x5db5
    push ax                          ; 0x5db8
    mov ax, 2                        ; 0x5db9
    push ax                          ; 0x5dbc
    mov ax, 4                        ; 0x5dbd
    push ax                          ; 0x5dc0
    mov ax, 2                        ; 0x5dc1
    push ax                          ; 0x5dc4
    mov ax, 1                        ; 0x5dc5
    push ax                          ; 0x5dc8
    mov ax, 0                        ; 0x5dc9
    push ax                          ; 0x5dcc
    mov ax, 3                        ; 0x5dcd
    push ax                          ; 0x5dd0
    push word [bss_9b3a]             ; 0x5dd1
    push word [bss_91d6]             ; 0x5dd5
    call api_idx_0012_QGRP           ; 0x5dd9
    add sp, byte 0x40                ; 0x5ddc
    mov ax, 0x43                     ; 0x5ddf
    push ax                          ; 0x5de2
    mov ax, 0x3e                     ; 0x5de3
    push ax                          ; 0x5de6
    mov ax, 0x25                     ; 0x5de7
    push ax                          ; 0x5dea
    mov ax, 0x20                     ; 0x5deb
    push ax                          ; 0x5dee
    mov ax, 0xa8                     ; 0x5def
    push ax                          ; 0x5df2
    mov ax, 0xa3                     ; 0x5df3
    push ax                          ; 0x5df6
    mov ax, 0xffff                   ; 0x5df7
    push ax                          ; 0x5dfa
    push ax                          ; 0x5dfb
    mov ax, 0x76                     ; 0x5dfc
    push ax                          ; 0x5dff
    mov ax, 0x71                     ; 0x5e00
    push ax                          ; 0x5e03
    mov ax, 0x64                     ; 0x5e04
    push ax                          ; 0x5e07
    mov ax, 0x5f                     ; 0x5e08
    push ax                          ; 0x5e0b
    mov ax, 0x26                     ; 0x5e0c
    push ax                          ; 0x5e0f
    mov ax, 0x21                     ; 0x5e10
    push ax                          ; 0x5e13
    mov ax, 0xffff                   ; 0x5e14
    push ax                          ; 0x5e17
    mov ax, 0x6a                     ; 0x5e18
    push ax                          ; 0x5e1b
    mov ax, 0x66                     ; 0x5e1c
    push ax                          ; 0x5e1f
    mov ax, 0x5a                     ; 0x5e20
    push ax                          ; 0x5e23
    mov ax, 0x56                     ; 0x5e24
    push ax                          ; 0x5e27
    mov ax, 0x21                     ; 0x5e28
    push ax                          ; 0x5e2b
    mov ax, 0x1d                     ; 0x5e2c
    push ax                          ; 0x5e2f
    mov ax, 0x1b                     ; 0x5e30
    push ax                          ; 0x5e33
    mov ax, 0x17                     ; 0x5e34
    push ax                          ; 0x5e37
    mov ax, 4                        ; 0x5e38
    push ax                          ; 0x5e3b
    mov ax, 2                        ; 0x5e3c
    push ax                          ; 0x5e3f
    mov ax, 4                        ; 0x5e40
    push ax                          ; 0x5e43
    mov ax, 2                        ; 0x5e44
    push ax                          ; 0x5e47
    mov ax, 1                        ; 0x5e48
    push ax                          ; 0x5e4b
    mov ax, 0                        ; 0x5e4c
    push ax                          ; 0x5e4f
    push ax                          ; 0x5e50
    push word [bss_9b44]             ; 0x5e51
    push word [bss_91d6]             ; 0x5e55
    call api_idx_0012_QGRP           ; 0x5e59
    add sp, byte 0x40                ; 0x5e5c
    mov ax, 0x3e                     ; 0x5e5f
    push ax                          ; 0x5e62
    mov ax, 0x43                     ; 0x5e63
    push ax                          ; 0x5e66
    mov ax, 0x20                     ; 0x5e67
    push ax                          ; 0x5e6a
    mov ax, 0x25                     ; 0x5e6b
    push ax                          ; 0x5e6e
    mov ax, 0xa3                     ; 0x5e6f
    push ax                          ; 0x5e72
    mov ax, 0xa8                     ; 0x5e73
    push ax                          ; 0x5e76
    mov ax, 0xffff                   ; 0x5e77
    push ax                          ; 0x5e7a
    push ax                          ; 0x5e7b
    mov ax, 0x71                     ; 0x5e7c
    push ax                          ; 0x5e7f
    mov ax, 0x76                     ; 0x5e80
    push ax                          ; 0x5e83
    mov ax, 0x5f                     ; 0x5e84
    push ax                          ; 0x5e87
    mov ax, 0x64                     ; 0x5e88
    push ax                          ; 0x5e8b
    mov ax, 0x21                     ; 0x5e8c
    push ax                          ; 0x5e8f
    mov ax, 0x26                     ; 0x5e90
    push ax                          ; 0x5e93
    mov ax, 0xffff                   ; 0x5e94
    push ax                          ; 0x5e97
    mov ax, 0x66                     ; 0x5e98
    push ax                          ; 0x5e9b
    mov ax, 0x6a                     ; 0x5e9c
    push ax                          ; 0x5e9f
    mov ax, 0x56                     ; 0x5ea0
    push ax                          ; 0x5ea3
    mov ax, 0x5a                     ; 0x5ea4
    push ax                          ; 0x5ea7
    mov ax, 0x1d                     ; 0x5ea8
    push ax                          ; 0x5eab
    mov ax, 0x21                     ; 0x5eac
    push ax                          ; 0x5eaf
    mov ax, 0x17                     ; 0x5eb0
    push ax                          ; 0x5eb3
    mov ax, 0x1b                     ; 0x5eb4
    push ax                          ; 0x5eb7
    mov ax, 4                        ; 0x5eb8
    push ax                          ; 0x5ebb
    mov ax, 2                        ; 0x5ebc
    push ax                          ; 0x5ebf
    mov ax, 4                        ; 0x5ec0
    push ax                          ; 0x5ec3
    mov ax, 2                        ; 0x5ec4
    push ax                          ; 0x5ec7
    mov ax, 1                        ; 0x5ec8
    push ax                          ; 0x5ecb
    mov ax, 0                        ; 0x5ecc
    push ax                          ; 0x5ecf
    mov ax, 4                        ; 0x5ed0
    push ax                          ; 0x5ed3
    push word [bss_9b46]             ; 0x5ed4
    push word [bss_91d6]             ; 0x5ed8
    call api_idx_0012_QGRP           ; 0x5edc
    add sp, byte 0x40                ; 0x5edf
    mov ax, word [bss_91d0]          ; 0x5ee2
    inc ax                           ; 0x5ee5
    mov cx, 2                        ; 0x5ee6
    cwd                              ; 0x5ee9
    idiv cx                          ; 0x5eea
    mov word [bss_9b18], dx          ; 0x5eec
    mov ax, 0x22                     ; 0x5ef0
    push ax                          ; 0x5ef3
    push ax                          ; 0x5ef4
    mov ax, 4                        ; 0x5ef5
    push ax                          ; 0x5ef8
    push ax                          ; 0x5ef9
    mov ax, 0x91                     ; 0x5efa
    push ax                          ; 0x5efd
    mov ax, 0x89                     ; 0x5efe
    push ax                          ; 0x5f01
    mov ax, 0x29                     ; 0x5f02
    push ax                          ; 0x5f05
    mov ax, 0x2d                     ; 0x5f06
    push ax                          ; 0x5f09
    push ax                          ; 0x5f0a
    mov ax, 0x29                     ; 0x5f0b
    push ax                          ; 0x5f0e
    mov ax, 0x25                     ; 0x5f0f
    push ax                          ; 0x5f12
    push ax                          ; 0x5f13
    mov ax, 5                        ; 0x5f14
    push ax                          ; 0x5f17
    push ax                          ; 0x5f18
    mov ax, 0x92                     ; 0x5f19
    push ax                          ; 0x5f1c
    push ax                          ; 0x5f1d
    mov ax, 0x74                     ; 0x5f1e
    push ax                          ; 0x5f21
    push ax                          ; 0x5f22
    mov ax, 0x2d                     ; 0x5f23
    push ax                          ; 0x5f26
    mov ax, 0x30                     ; 0x5f27
    push ax                          ; 0x5f2a
    push ax                          ; 0x5f2b
    mov ax, 0x2d                     ; 0x5f2c
    push ax                          ; 0x5f2f
    mov ax, 0x2a                     ; 0x5f30
    push ax                          ; 0x5f33
    push ax                          ; 0x5f34
    mov ax, 0x43                     ; 0x5f35
    push ax                          ; 0x5f38
    mov ax, 5                        ; 0x5f39
    push ax                          ; 0x5f3c
    mov ax, 3                        ; 0x5f3d
    push ax                          ; 0x5f40
    push ax                          ; 0x5f41
    mov ax, 4                        ; 0x5f42
    push ax                          ; 0x5f45
    push cx                          ; 0x5f46
    push ax                          ; 0x5f47
    push cx                          ; 0x5f48
    mov ax, 1                        ; 0x5f49
    push ax                          ; 0x5f4c
    mov ax, 0                        ; 0x5f4d
    push ax                          ; 0x5f50
    mov ax, 1                        ; 0x5f51
    push ax                          ; 0x5f54
    push word [bss_9b3c]             ; 0x5f55
    push word [bss_91d6]             ; 0x5f59
    call api_idx_0010_HMOH           ; 0x5f5d
    add sp, byte 0x4a                ; 0x5f60
    mov ax, 0xc9                     ; 0x5f63
    push ax                          ; 0x5f66
    mov ax, 0xc4                     ; 0x5f67
    push ax                          ; 0x5f6a
    mov ax, 0xb2                     ; 0x5f6b
    push ax                          ; 0x5f6e
    push ax                          ; 0x5f6f
    mov ax, 0xf                      ; 0x5f70
    push ax                          ; 0x5f73
    mov ax, 5                        ; 0x5f74
    push ax                          ; 0x5f77
    mov ax, 0xf                      ; 0x5f78
    push ax                          ; 0x5f7b
    mov ax, 5                        ; 0x5f7c
    push ax                          ; 0x5f7f
    mov ax, 0xf                      ; 0x5f80
    push ax                          ; 0x5f83
    mov ax, 5                        ; 0x5f84
    push ax                          ; 0x5f87
    mov ax, 0xc                      ; 0x5f88
    push ax                          ; 0x5f8b
    mov ax, 8                        ; 0x5f8c
    push ax                          ; 0x5f8f
    mov ax, 0x14                     ; 0x5f90
    push ax                          ; 0x5f93
    mov ax, 0x10                     ; 0x5f94
    push ax                          ; 0x5f97
    mov ax, 0                        ; 0x5f98
    push ax                          ; 0x5f9b
    push ax                          ; 0x5f9c
    mov ax, 4                        ; 0x5f9d
    push ax                          ; 0x5fa0
    push ax                          ; 0x5fa1
    mov ax, 0x34                     ; 0x5fa2
    push ax                          ; 0x5fa5
    mov ax, 0x2a                     ; 0x5fa6
    push ax                          ; 0x5fa9
    mov ax, 0xf                      ; 0x5faa
    push ax                          ; 0x5fad
    mov ax, 5                        ; 0x5fae
    push ax                          ; 0x5fb1
    mov ax, 6                        ; 0x5fb2
    push ax                          ; 0x5fb5
    mov ax, 5                        ; 0x5fb6
    push ax                          ; 0x5fb9
    mov ax, 4                        ; 0x5fba
    push ax                          ; 0x5fbd
    mov ax, 2                        ; 0x5fbe
    push ax                          ; 0x5fc1
    mov ax, 4                        ; 0x5fc2
    push ax                          ; 0x5fc5
    mov ax, 2                        ; 0x5fc6
    push ax                          ; 0x5fc9
    mov ax, 1                        ; 0x5fca
    push ax                          ; 0x5fcd
    mov ax, 0                        ; 0x5fce
    push ax                          ; 0x5fd1
    mov ax, 1                        ; 0x5fd2
    push ax                          ; 0x5fd5
    push word [bss_91d6]             ; 0x5fd6
    call api_idx_0012_GOIS           ; 0x5fda
    add sp, byte 0x40                ; 0x5fdd
    mov ax, word [bss_91d0]          ; 0x5fe0
    mov word [bss_9b18], ax          ; 0x5fe3
    mov ax, 0x26                     ; 0x5fe6
    push ax                          ; 0x5fe9
    push ax                          ; 0x5fea
    mov ax, 8                        ; 0x5feb
    push ax                          ; 0x5fee
    push ax                          ; 0x5fef
    mov ax, 0x95                     ; 0x5ff0
    push ax                          ; 0x5ff3
    mov ax, 0x8d                     ; 0x5ff4
    push ax                          ; 0x5ff7
    mov ax, 0x35                     ; 0x5ff8
    push ax                          ; 0x5ffb
    mov ax, 0x39                     ; 0x5ffc
    push ax                          ; 0x5fff
    push ax                          ; 0x6000
    mov ax, 0x35                     ; 0x6001
    push ax                          ; 0x6004
    mov ax, 0x31                     ; 0x6005
    push ax                          ; 0x6008
    push ax                          ; 0x6009
    mov ax, 9                        ; 0x600a
    push ax                          ; 0x600d
    push ax                          ; 0x600e
    mov ax, 0x98                     ; 0x600f
    push ax                          ; 0x6012
    push ax                          ; 0x6013
    mov ax, 0x7a                     ; 0x6014
    push ax                          ; 0x6017
    push ax                          ; 0x6018
    mov ax, 0x36                     ; 0x6019
    push ax                          ; 0x601c
    mov ax, 0x39                     ; 0x601d
    push ax                          ; 0x6020
    push ax                          ; 0x6021
    mov ax, 0x36                     ; 0x6022
    push ax                          ; 0x6025
    mov ax, 0x33                     ; 0x6026
    push ax                          ; 0x6029
    push ax                          ; 0x602a
    mov ax, 0x47                     ; 0x602b
    push ax                          ; 0x602e
    mov ax, 9                        ; 0x602f
    push ax                          ; 0x6032
    mov ax, 6                        ; 0x6033
    push ax                          ; 0x6036
    push ax                          ; 0x6037
    mov ax, 4                        ; 0x6038
    push ax                          ; 0x603b
    mov ax, 2                        ; 0x603c
    push ax                          ; 0x603f
    mov ax, 4                        ; 0x6040
    push ax                          ; 0x6043
    mov ax, 2                        ; 0x6044
    push ax                          ; 0x6047
    mov ax, 1                        ; 0x6048
    push ax                          ; 0x604b
    mov ax, 0                        ; 0x604c
    push ax                          ; 0x604f
    push ax                          ; 0x6050
    push word [bss_9b40]             ; 0x6051
    push word [bss_91d6]             ; 0x6055
    call api_idx_0010_HMOH           ; 0x6059
    add sp, byte 0x4a                ; 0x605c
    mov ax, 0xd3                     ; 0x605f
    push ax                          ; 0x6062
    mov ax, 0xce                     ; 0x6063
    push ax                          ; 0x6066
    mov ax, 0xb6                     ; 0x6067
    push ax                          ; 0x606a
    push ax                          ; 0x606b
    mov ax, 0x14                     ; 0x606c
    push ax                          ; 0x606f
    mov ax, 0xa                      ; 0x6070
    push ax                          ; 0x6073
    mov ax, 0x14                     ; 0x6074
    push ax                          ; 0x6077
    mov ax, 0xa                      ; 0x6078
    push ax                          ; 0x607b
    mov ax, 0x14                     ; 0x607c
    push ax                          ; 0x607f
    mov ax, 0xa                      ; 0x6080
    push ax                          ; 0x6083
    mov ax, 0xc                      ; 0x6084
    push ax                          ; 0x6087
    mov ax, 8                        ; 0x6088
    push ax                          ; 0x608b
    mov ax, 0x14                     ; 0x608c
    push ax                          ; 0x608f
    mov ax, 0x10                     ; 0x6090
    push ax                          ; 0x6093
    mov ax, 0                        ; 0x6094
    push ax                          ; 0x6097
    push ax                          ; 0x6098
    mov ax, 4                        ; 0x6099
    push ax                          ; 0x609c
    push ax                          ; 0x609d
    mov ax, 0x39                     ; 0x609e
    push ax                          ; 0x60a1
    mov ax, 0x2f                     ; 0x60a2
    push ax                          ; 0x60a5
    mov ax, 0x14                     ; 0x60a6
    push ax                          ; 0x60a9
    mov ax, 0xa                      ; 0x60aa
    push ax                          ; 0x60ad
    mov ax, 6                        ; 0x60ae
    push ax                          ; 0x60b1
    mov ax, 5                        ; 0x60b2
    push ax                          ; 0x60b5
    mov ax, 4                        ; 0x60b6
    push ax                          ; 0x60b9
    mov ax, 2                        ; 0x60ba
    push ax                          ; 0x60bd
    mov ax, 4                        ; 0x60be
    push ax                          ; 0x60c1
    mov ax, 2                        ; 0x60c2
    push ax                          ; 0x60c5
    mov ax, 1                        ; 0x60c6
    push ax                          ; 0x60c9
    mov ax, 0                        ; 0x60ca
    push ax                          ; 0x60cd
    push ax                          ; 0x60ce
    push word [bss_91d6]             ; 0x60cf
    call api_idx_0012_GOIS           ; 0x60d3
    add sp, byte 0x40                ; 0x60d6
    mov ax, word [bss_91d0]          ; 0x60d9
    inc ax                           ; 0x60dc
    mov cx, 2                        ; 0x60dd
    cwd                              ; 0x60e0
    idiv cx                          ; 0x60e1
    mov word [bss_9b18], dx          ; 0x60e3
    mov ax, 0x2a                     ; 0x60e7
    push ax                          ; 0x60ea
    push ax                          ; 0x60eb
    mov ax, 0xc                      ; 0x60ec
    push ax                          ; 0x60ef
    push ax                          ; 0x60f0
    mov ax, 0x89                     ; 0x60f1
    push ax                          ; 0x60f4
    mov ax, 0x91                     ; 0x60f5
    push ax                          ; 0x60f8
    mov ax, 0x41                     ; 0x60f9
    push ax                          ; 0x60fc
    mov ax, 0x45                     ; 0x60fd
    push ax                          ; 0x6100
    push ax                          ; 0x6101
    mov ax, 0x41                     ; 0x6102
    push ax                          ; 0x6105
    mov ax, 0x3d                     ; 0x6106
    push ax                          ; 0x6109
    push ax                          ; 0x610a
    mov ax, 0xd                      ; 0x610b
    push ax                          ; 0x610e
    push ax                          ; 0x610f
    mov ax, 0x9e                     ; 0x6110
    push ax                          ; 0x6113
    push ax                          ; 0x6114
    mov ax, 0x80                     ; 0x6115
    push ax                          ; 0x6118
    push ax                          ; 0x6119
    mov ax, 0x3f                     ; 0x611a
    push ax                          ; 0x611d
    mov ax, 0x42                     ; 0x611e
    push ax                          ; 0x6121
    push ax                          ; 0x6122
    mov ax, 0x3f                     ; 0x6123
    push ax                          ; 0x6126
    mov ax, 0x3c                     ; 0x6127
    push ax                          ; 0x612a
    push ax                          ; 0x612b
    mov ax, 0x4b                     ; 0x612c
    push ax                          ; 0x612f
    mov ax, 0xd                      ; 0x6130
    push ax                          ; 0x6133
    mov ax, 9                        ; 0x6134
    push ax                          ; 0x6137
    push ax                          ; 0x6138
    mov ax, 4                        ; 0x6139
    push ax                          ; 0x613c
    push cx                          ; 0x613d
    push ax                          ; 0x613e
    push cx                          ; 0x613f
    mov ax, 1                        ; 0x6140
    push ax                          ; 0x6143
    mov ax, 0                        ; 0x6144
    push ax                          ; 0x6147
    mov ax, 3                        ; 0x6148
    push ax                          ; 0x614b
    push word [bss_9b3e]             ; 0x614c
    push word [bss_91d6]             ; 0x6150
    call api_idx_0010_HMOH           ; 0x6154
    add sp, byte 0x4a                ; 0x6157
    mov ax, 0xc4                     ; 0x615a
    push ax                          ; 0x615d
    mov ax, 0xc9                     ; 0x615e
    push ax                          ; 0x6161
    mov ax, 0xba                     ; 0x6162
    push ax                          ; 0x6165
    push ax                          ; 0x6166
    mov ax, 5                        ; 0x6167
    push ax                          ; 0x616a
    mov ax, 0xf                      ; 0x616b
    push ax                          ; 0x616e
    mov ax, 5                        ; 0x616f
    push ax                          ; 0x6172
    mov ax, 0xf                      ; 0x6173
    push ax                          ; 0x6176
    mov ax, 5                        ; 0x6177
    push ax                          ; 0x617a
    mov ax, 0xf                      ; 0x617b
    push ax                          ; 0x617e
    mov ax, 0xc                      ; 0x617f
    push ax                          ; 0x6182
    mov ax, 8                        ; 0x6183
    push ax                          ; 0x6186
    mov ax, 0x14                     ; 0x6187
    push ax                          ; 0x618a
    mov ax, 0x10                     ; 0x618b
    push ax                          ; 0x618e
    mov ax, 0                        ; 0x618f
    push ax                          ; 0x6192
    push ax                          ; 0x6193
    mov ax, 4                        ; 0x6194
    push ax                          ; 0x6197
    push ax                          ; 0x6198
    mov ax, 0x2a                     ; 0x6199
    push ax                          ; 0x619c
    mov ax, 0x34                     ; 0x619d
    push ax                          ; 0x61a0
    mov ax, 5                        ; 0x61a1
    push ax                          ; 0x61a4
    mov ax, 0xf                      ; 0x61a5
    push ax                          ; 0x61a8
    mov ax, 6                        ; 0x61a9
    push ax                          ; 0x61ac
    mov ax, 5                        ; 0x61ad
    push ax                          ; 0x61b0
    mov ax, 4                        ; 0x61b1
    push ax                          ; 0x61b4
    mov ax, 2                        ; 0x61b5
    push ax                          ; 0x61b8
    mov ax, 4                        ; 0x61b9
    push ax                          ; 0x61bc
    mov ax, 2                        ; 0x61bd
    push ax                          ; 0x61c0
    mov ax, 1                        ; 0x61c1
    push ax                          ; 0x61c4
    mov ax, 0                        ; 0x61c5
    push ax                          ; 0x61c8
    mov ax, 3                        ; 0x61c9
    push ax                          ; 0x61cc
    push word [bss_91d6]             ; 0x61cd
    call api_idx_0012_GOIS           ; 0x61d1
    add sp, byte 0x40                ; 0x61d4
    mov ax, word [bss_91d0]          ; 0x61d7
    mov word [bss_9b18], ax          ; 0x61da
    mov ax, 0x2e                     ; 0x61dd
    push ax                          ; 0x61e0
    push ax                          ; 0x61e1
    mov ax, 0x10                     ; 0x61e2
    push ax                          ; 0x61e5
    push ax                          ; 0x61e6
    mov ax, 0x8d                     ; 0x61e7
    push ax                          ; 0x61ea
    mov ax, 0x95                     ; 0x61eb
    push ax                          ; 0x61ee
    mov ax, 0x4d                     ; 0x61ef
    push ax                          ; 0x61f2
    mov ax, 0x51                     ; 0x61f3
    push ax                          ; 0x61f6
    push ax                          ; 0x61f7
    mov ax, 0x4d                     ; 0x61f8
    push ax                          ; 0x61fb
    mov ax, 0x49                     ; 0x61fc
    push ax                          ; 0x61ff
    push ax                          ; 0x6200
    mov ax, 0x11                     ; 0x6201
    push ax                          ; 0x6204
    push ax                          ; 0x6205
    mov ax, 0xa4                     ; 0x6206
    push ax                          ; 0x6209
    push ax                          ; 0x620a
    mov ax, 0x86                     ; 0x620b
    push ax                          ; 0x620e
    push ax                          ; 0x620f
    mov ax, 0x48                     ; 0x6210
    push ax                          ; 0x6213
    mov ax, 0x4b                     ; 0x6214
    push ax                          ; 0x6217
    push ax                          ; 0x6218
    mov ax, 0x48                     ; 0x6219
    push ax                          ; 0x621c
    mov ax, 0x45                     ; 0x621d
    push ax                          ; 0x6220
    push ax                          ; 0x6221
    mov ax, 0x4f                     ; 0x6222
    push ax                          ; 0x6225
    mov ax, 0x11                     ; 0x6226
    push ax                          ; 0x6229
    mov ax, 0xc                      ; 0x622a
    push ax                          ; 0x622d
    push ax                          ; 0x622e
    mov ax, 4                        ; 0x622f
    push ax                          ; 0x6232
    mov ax, 2                        ; 0x6233
    push ax                          ; 0x6236
    mov ax, 4                        ; 0x6237
    push ax                          ; 0x623a
    mov ax, 2                        ; 0x623b
    push ax                          ; 0x623e
    mov ax, 1                        ; 0x623f
    push ax                          ; 0x6242
    mov ax, 0                        ; 0x6243
    push ax                          ; 0x6246
    mov ax, 4                        ; 0x6247
    push ax                          ; 0x624a
    push word [bss_9b42]             ; 0x624b
    push word [bss_91d6]             ; 0x624f
    call api_idx_0010_HMOH           ; 0x6253
    add sp, byte 0x4a                ; 0x6256
    mov ax, 0xce                     ; 0x6259
    push ax                          ; 0x625c
    mov ax, 0xd3                     ; 0x625d
    push ax                          ; 0x6260
    mov ax, 0xbe                     ; 0x6261
    push ax                          ; 0x6264
    push ax                          ; 0x6265
    mov ax, 0xa                      ; 0x6266
    push ax                          ; 0x6269
    mov ax, 0x14                     ; 0x626a
    push ax                          ; 0x626d
    mov ax, 0xa                      ; 0x626e
    push ax                          ; 0x6271
    mov ax, 0x14                     ; 0x6272
    push ax                          ; 0x6275
    mov ax, 0xa                      ; 0x6276
    push ax                          ; 0x6279
    mov ax, 0x14                     ; 0x627a
    push ax                          ; 0x627d
    mov ax, 0xc                      ; 0x627e
    push ax                          ; 0x6281
    mov ax, 8                        ; 0x6282
    push ax                          ; 0x6285
    mov ax, 0x14                     ; 0x6286
    push ax                          ; 0x6289
    mov ax, 0x10                     ; 0x628a
    push ax                          ; 0x628d
    mov ax, 0                        ; 0x628e
    push ax                          ; 0x6291
    push ax                          ; 0x6292
    mov ax, 4                        ; 0x6293
    push ax                          ; 0x6296
    push ax                          ; 0x6297
    mov ax, 0x2f                     ; 0x6298
    push ax                          ; 0x629b
    mov ax, 0x39                     ; 0x629c
    push ax                          ; 0x629f
    mov ax, 0xa                      ; 0x62a0
    push ax                          ; 0x62a3
    mov ax, 0x14                     ; 0x62a4
    push ax                          ; 0x62a7
    mov ax, 6                        ; 0x62a8
    push ax                          ; 0x62ab
    mov ax, 5                        ; 0x62ac
    push ax                          ; 0x62af
    mov ax, 4                        ; 0x62b0
    push ax                          ; 0x62b3
    mov ax, 2                        ; 0x62b4
    push ax                          ; 0x62b7
    mov ax, 4                        ; 0x62b8
    push ax                          ; 0x62bb
    mov ax, 2                        ; 0x62bc
    push ax                          ; 0x62bf
    mov ax, 1                        ; 0x62c0
    push ax                          ; 0x62c3
    mov ax, 0                        ; 0x62c4
    push ax                          ; 0x62c7
    mov ax, 4                        ; 0x62c8
    push ax                          ; 0x62cb
    push word [bss_91d6]             ; 0x62cc
    call api_idx_0012_GOIS           ; 0x62d0
    add sp, byte 0x40                ; 0x62d3
    inc word [bss_91d6]              ; 0x62d6
    jmp near @..api_idx_0030_QRVT.l26 ; 0x62da
@..api_idx_0030_QRVT.l39:
    mov ax, word [bss_9b34]          ; 0x62dd
    dec ax                           ; 0x62e0
    mov word [bss_91d6], ax          ; 0x62e1
    jmp near @..api_idx_0030_QRVT.l92 ; 0x62e4
@..api_idx_0030_QRVT.l40:
    mov word [bp - 0x0004], 0xff     ; 0x62e7
@..api_idx_0030_QRVT.l41:
    mov ax, word [bss_931e]          ; 0x62ec
    dec ax                           ; 0x62ef
    mov word [bp - 0x0002], ax       ; 0x62f0
    jmp short @..api_idx_0030_QRVT.l45 ; 0x62f3
@..api_idx_0030_QRVT.l42:
    mov ax, 0x11                     ; 0x62f5
    imul word [bp - 0x0002]          ; 0x62f8
    add ax, 0x9320                   ; 0x62fb
    mov word [bp - 0x0026], ax       ; 0x62fe
    mov bx, ax                       ; 0x6301
    mov al, byte [bx + 0xd]          ; 0x6303
    sub ah, ah                       ; 0x6306
    cmp ax, word [bss_91d6]          ; 0x6308
    jne short @..api_idx_0030_QRVT.l44 ; 0x630c
    mov al, byte [bx + 0xc]          ; 0x630e
    sub ah, ah                       ; 0x6311
    cmp ax, word [bp - 0x0004]       ; 0x6313
    jne short @..api_idx_0030_QRVT.l44 ; 0x6316
    cmp word [bx], byte 0xff         ; 0x6318
    je short @..api_idx_0030_QRVT.l43 ; 0x631b
    push word [bx + 0x4]             ; 0x631d
    mov al, byte [bx + 0x8]          ; 0x6320
    sub ah, ah                       ; 0x6323
    push ax                          ; 0x6325
    push word [bx]                   ; 0x6326
    mov al, byte [bx + 0xe]          ; 0x6328
    sub ah, ah                       ; 0x632b
    push ax                          ; 0x632d
    call thunk_34                    ; 0x632e
    add sp, byte 8                   ; 0x6331
@..api_idx_0030_QRVT.l43:
    mov bx, word [bp - 0x0026]       ; 0x6334
    cmp word [bx + 0x2], byte 0xff   ; 0x6337
    je short @..api_idx_0030_QRVT.l44 ; 0x633b
    push word [bx + 0x6]             ; 0x633d
    mov al, byte [bx + 0x9]          ; 0x6340
    sub ah, ah                       ; 0x6343
    push ax                          ; 0x6345
    push word [bx + 0x2]             ; 0x6346
    mov al, byte [bx + 0xe]          ; 0x6349
    sub ah, ah                       ; 0x634c
    push ax                          ; 0x634e
    call thunk_34                    ; 0x634f
    add sp, byte 8                   ; 0x6352
@..api_idx_0030_QRVT.l44:
    dec word [bp - 0x0002]           ; 0x6355
@..api_idx_0030_QRVT.l45:
    cmp word [bp - 0x0002], byte 0   ; 0x6358
    jge short @..api_idx_0030_QRVT.l42 ; 0x635c
    mov ax, 0                        ; 0x635e
    cmp word [bp - 0x0004], strict word 0xff ; 0x6361
    je short @..api_idx_0030_QRVT.l46 ; 0x6366
    mov ax, 0xffff                   ; 0x6368
    cmp word [bp - 0x0004], strict word 0xfb ; 0x636b
    jne short @..api_idx_0030_QRVT.l46 ; 0x6370
    mov ax, 1                        ; 0x6372
@..api_idx_0030_QRVT.l46:
    mov word [bp - 0x0018], ax       ; 0x6375
    cmp ax, strict word 0xffff       ; 0x6378
    jne short @..api_idx_0030_QRVT.l47 ; 0x637b
    jmp near @..api_idx_0030_QRVT.l55 ; 0x637d
@..api_idx_0030_QRVT.l47:
    mov ax, word [bss_931e]          ; 0x6380
    dec ax                           ; 0x6383
    mov word [bp - 0x0002], ax       ; 0x6384
    jmp near @..api_idx_0030_QRVT.l54 ; 0x6387
@..api_idx_0030_QRVT.l48:
    mov ax, 0x11                     ; 0x638a
    imul word [bp - 0x0002]          ; 0x638d
    add ax, 0x9320                   ; 0x6390
    mov word [bp - 0x0026], ax       ; 0x6393
    mov bx, ax                       ; 0x6396
    mov al, byte [bx + 0xd]          ; 0x6398
    sub ah, ah                       ; 0x639b
    cmp ax, word [bss_91d6]          ; 0x639d
    je short @..api_idx_0030_QRVT.l49 ; 0x63a1
    jmp near @..api_idx_0030_QRVT.l53 ; 0x63a3
@..api_idx_0030_QRVT.l49:
    mov al, byte [bx + 0xc]          ; 0x63a6
    sub ah, ah                       ; 0x63a9
    cmp ax, 0xfa                     ; 0x63ab
    jl short @..api_idx_0030_QRVT.l50 ; 0x63ae
    jmp near @..api_idx_0030_QRVT.l53 ; 0x63b0
@..api_idx_0030_QRVT.l50:
    mov al, byte [bx + 0x10]         ; 0x63b3
    sub ah, ah                       ; 0x63b6
    cmp ax, word [bp - 0x0018]       ; 0x63b8
    jne short @..api_idx_0030_QRVT.l53 ; 0x63bb
    cmp byte [bx + 0xc], 4           ; 0x63bd
    jne short @..api_idx_0030_QRVT.l51 ; 0x63c1
    cmp byte [bx + 0x9], 1           ; 0x63c3
    jne short @..api_idx_0030_QRVT.l51 ; 0x63c7
    push bx                          ; 0x63c9
    call api_idx_0016_MKON           ; 0x63ca
    pop cx                           ; 0x63cd
    jmp short @..api_idx_0030_QRVT.l53 ; 0x63ce
@..api_idx_0030_QRVT.l51:
    mov word [bp - 0x0006], 0        ; 0x63d0
@..api_idx_0030_QRVT.l52:
    mov bx, word [bp - 0x0026]       ; 0x63d5
    mov si, word [bp - 0x0006]       ; 0x63d8
    mov al, byte [bx + si + 0x8]     ; 0x63db
    mov bx, si                       ; 0x63de
    add bx, bp                       ; 0x63e0
    mov byte [bx - 0x0030], al       ; 0x63e2
    inc word [bp - 0x0006]           ; 0x63e5
    mov ax, word [bp - 0x0006]       ; 0x63e8
    cmp ax, strict word 4            ; 0x63eb
    jl short @..api_idx_0030_QRVT.l52 ; 0x63ee
    mov byte [bp - 0x002c], 0        ; 0x63f0
    mov bx, word [bp - 0x0026]       ; 0x63f4
    mov al, byte [bx + 0xe]          ; 0x63f7
    sub ah, ah                       ; 0x63fa
    push ax                          ; 0x63fc
    mov ax, 0                        ; 0x63fd
    push ax                          ; 0x6400
    lea ax, word [bp - 0x0030]       ; 0x6401
    push ax                          ; 0x6404
    mov al, byte [bx + 0xf]          ; 0x6405
    sub ah, ah                       ; 0x6408
    push ax                          ; 0x640a
    mov ax, 0x90                     ; 0x640b
    push ax                          ; 0x640e
    mov ax, 0x20                     ; 0x640f
    push ax                          ; 0x6412
    push word [bx + 0x6]             ; 0x6413
    push word [bx + 0x4]             ; 0x6416
    push word [bx + 0x2]             ; 0x6419
    push word [bx]                   ; 0x641c
    mov al, byte [bx + 0xc]          ; 0x641e
    sub ah, ah                       ; 0x6421
    push ax                          ; 0x6423
    call thunk_28                    ; 0x6424
    add sp, byte 0x16                ; 0x6427
@..api_idx_0030_QRVT.l53:
    dec word [bp - 0x0002]           ; 0x642a
@..api_idx_0030_QRVT.l54:
    cmp word [bp - 0x0002], byte 0   ; 0x642d
    jl short @..api_idx_0030_QRVT.l55 ; 0x6431
    jmp near @..api_idx_0030_QRVT.l48 ; 0x6433
@..api_idx_0030_QRVT.l55:
    dec word [bp - 0x0004]           ; 0x6436
    mov ax, word [bp - 0x0004]       ; 0x6439
    cmp ax, 0xfb                     ; 0x643c
    jl short @..api_idx_0030_QRVT.l56 ; 0x643f
    jmp near @..api_idx_0030_QRVT.l41 ; 0x6441
@..api_idx_0030_QRVT.l56:
    mov al, byte [bss_5b55]          ; 0x6444
    sub ah, ah                       ; 0x6447
    cmp ax, 0xff                     ; 0x6449
    jne short @..api_idx_0030_QRVT.l57 ; 0x644c
    jmp near @..api_idx_0030_QRVT.l77 ; 0x644e
@..api_idx_0030_QRVT.l57:
    cmp word [bss_91d6], byte 0      ; 0x6451
    je short @..api_idx_0030_QRVT.l58 ; 0x6456
    jmp near @..api_idx_0030_QRVT.l77 ; 0x6458
@..api_idx_0030_QRVT.l58:
    cmp word [bss_91d4], byte 0      ; 0x645b
    jne short @..api_idx_0030_QRVT.l59 ; 0x6460
    cmp byte [bss_91e4], 3           ; 0x6462
    jne short @..api_idx_0030_QRVT.l59 ; 0x6467
    jmp near @..api_idx_0030_QRVT.l77 ; 0x6469
@..api_idx_0030_QRVT.l59:
    mov ax, word [bss_91d4]          ; 0x646c
    mov cx, 2                        ; 0x646f
    cwd                              ; 0x6472
    idiv cx                          ; 0x6473
    mov ax, dx                       ; 0x6475
    test ax, ax                      ; 0x6477
    jne short @..api_idx_0030_QRVT.l60 ; 0x6479
    cmp word [bss_8456], byte 1      ; 0x647b
    jg short @..api_idx_0030_QRVT.l60 ; 0x6480
    jmp near @..api_idx_0030_QRVT.l77 ; 0x6482
@..api_idx_0030_QRVT.l60:
    mov word [bp - 0x0006], 0        ; 0x6485
@..api_idx_0030_QRVT.l61:
    mov ax, word [bp - 0x0006]       ; 0x648a
    shl ax, 1                        ; 0x648d
    mov bx, ax                       ; 0x648f
    cmp word [bx - 0x6e60], byte 0   ; 0x6491
    jg short @..api_idx_0030_QRVT.l62 ; 0x6496
    jmp near @..api_idx_0030_QRVT.l66 ; 0x6498
@..api_idx_0030_QRVT.l62:
    mov al, byte [bx - 0x6e60]       ; 0x649b
    mov byte [bp - 0x0030], al       ; 0x649f
    mov byte [bp - 0x002f], 0        ; 0x64a2
    mov ax, 0                        ; 0x64a6
    push ax                          ; 0x64a9
    push ax                          ; 0x64aa
    lea ax, word [bp - 0x0030]       ; 0x64ab
    push ax                          ; 0x64ae
    push word [bx - 0x6e38]          ; 0x64af
    mov ax, 0x90                     ; 0x64b3
    push ax                          ; 0x64b6
    mov ax, 0x20                     ; 0x64b7
    push ax                          ; 0x64ba
    mov ax, 0xf8                     ; 0x64bb
    push ax                          ; 0x64be
    mov ax, 0x48                     ; 0x64bf
    push ax                          ; 0x64c2
    mov bx, word [bx - 0x6e60]       ; 0x64c3
    mov al, byte [bx + 0x7c61]       ; 0x64c7
    sub ah, ah                       ; 0x64cb
    mov cx, word [bp - 0x0006]       ; 0x64cd
    shl cx, 1                        ; 0x64d0
    mov bx, cx                       ; 0x64d2
    add ax, word [bx - 0x6e4a]       ; 0x64d4
    push ax                          ; 0x64d8
    mov ax, word [bx - 0x6e60]       ; 0x64d9
    shl ax, 1                        ; 0x64dd
    add ax, word [bx - 0x6e38]       ; 0x64df
    mov bx, ax                       ; 0x64e3
    mov al, byte [bx + 0x7c18]       ; 0x64e5
    sub ah, ah                       ; 0x64e9
    mov bx, cx                       ; 0x64eb
    add ax, word [bx - 0x6e44]       ; 0x64ed
    push ax                          ; 0x64f1
    mov ax, 0xd                      ; 0x64f2
    push ax                          ; 0x64f5
    call thunk_28                    ; 0x64f6
    add sp, byte 0x16                ; 0x64f9
    mov ax, word [bp - 0x0006]       ; 0x64fc
    shl ax, 1                        ; 0x64ff
    mov bx, ax                       ; 0x6501
    cmp word [bx - 0x6e3e], byte 0   ; 0x6503
    je short @..api_idx_0030_QRVT.l63 ; 0x6508
    dec word [bx - 0x6e60]           ; 0x650a
    jmp short @..api_idx_0030_QRVT.l64 ; 0x650e
@..api_idx_0030_QRVT.l63:
    inc word [bx - 0x6e60]           ; 0x6510
@..api_idx_0030_QRVT.l64:
    mov al, byte [bss_7d3c]          ; 0x6514
    sub ah, ah                       ; 0x6517
    cmp ax, word [bx - 0x6e60]       ; 0x6519
    jge short @..api_idx_0030_QRVT.l65 ; 0x651d
    mov word [bx - 0x6e60], 0        ; 0x651f
@..api_idx_0030_QRVT.l65:
    jmp near @..api_idx_0030_QRVT.l76 ; 0x6525
@..api_idx_0030_QRVT.l66:
    cmp word [bss_8f22], byte 0      ; 0x6528
    je short @..api_idx_0030_QRVT.l67 ; 0x652d
    jmp near @..api_idx_0030_QRVT.l76 ; 0x652f
@..api_idx_0030_QRVT.l67:
    mov ax, 0x64                     ; 0x6532
    push ax                          ; 0x6535
    call ds_app_GGUI                 ; 0x6536
    pop cx                           ; 0x6539
    cmp ax, word [bp - 0x0006]       ; 0x653a
    jle short @..api_idx_0030_QRVT.l68 ; 0x653d
    jmp near @..api_idx_0030_QRVT.l76 ; 0x653f
@..api_idx_0030_QRVT.l68:
    mov ax, 2                        ; 0x6542
    push ax                          ; 0x6545
    call ds_app_GGUI                 ; 0x6546
    pop cx                           ; 0x6549
    mov cx, word [bp - 0x0006]       ; 0x654a
    shl cx, 1                        ; 0x654d
    mov bx, cx                       ; 0x654f
    mov word [bx - 0x6e38], ax       ; 0x6551
    mov ax, word [bss_91d4]          ; 0x6555
    mov cx, 2                        ; 0x6558
    cwd                              ; 0x655b
    idiv cx                          ; 0x655c
    mov ax, dx                       ; 0x655e
    test ax, ax                      ; 0x6560
    je short @..api_idx_0030_QRVT.l69 ; 0x6562
    push cx                          ; 0x6564
    call ds_app_GGUI                 ; 0x6565
    pop cx                           ; 0x6568
    jmp short @..api_idx_0030_QRVT.l70 ; 0x6569
@..api_idx_0030_QRVT.l69:
    mov ax, 0                        ; 0x656b
@..api_idx_0030_QRVT.l70:
    mov cx, word [bp - 0x0006]       ; 0x656e
    shl cx, 1                        ; 0x6571
    mov bx, cx                       ; 0x6573
    mov word [bx - 0x6e3e], ax       ; 0x6575
    mov ax, 1                        ; 0x6579
    cmp word [bx - 0x6e3e], byte 0   ; 0x657c
    je short @..api_idx_0030_QRVT.l71 ; 0x6581
    mov al, byte [bss_7d3c]          ; 0x6583
    sub ah, ah                       ; 0x6586
@..api_idx_0030_QRVT.l71:
    mov word [bx - 0x6e60], ax       ; 0x6588
    mov ax, word [bss_91d4]          ; 0x658c
    mov cx, 1                        ; 0x658f
    cwd                              ; 0x6592
    idiv cx                          ; 0x6593
    mov ax, dx                       ; 0x6595
    test ax, ax                      ; 0x6597
    je short @..api_idx_0030_QRVT.l72 ; 0x6599
    mov ax, 0x1e                     ; 0x659b
    jmp short @..api_idx_0030_QRVT.l73 ; 0x659e
@..api_idx_0030_QRVT.l72:
    mov ax, 0xa                      ; 0x65a0
@..api_idx_0030_QRVT.l73:
    mov word [bp - 0x0002], ax       ; 0x65a3
    cmp word [bx - 0x6e38], byte 0   ; 0x65a6
    je short @..api_idx_0030_QRVT.l74 ; 0x65ab
    push ax                          ; 0x65ad
    call ds_app_GGUI                 ; 0x65ae
    pop cx                           ; 0x65b1
    jmp short @..api_idx_0030_QRVT.l75 ; 0x65b2
@..api_idx_0030_QRVT.l74:
    push word [bp - 0x0002]          ; 0x65b4
    call ds_app_GGUI                 ; 0x65b7
    pop cx                           ; 0x65ba
    mov cx, ax                       ; 0x65bb
    mov ax, 0                        ; 0x65bd
    sub ax, cx                       ; 0x65c0
@..api_idx_0030_QRVT.l75:
    mov cx, word [bp - 0x0006]       ; 0x65c2
    shl cx, 1                        ; 0x65c5
    mov bx, cx                       ; 0x65c7
    mov word [bx - 0x6e44], ax       ; 0x65c9
    mov ax, 5                        ; 0x65cd
    push ax                          ; 0x65d0
    call ds_app_GGUI                 ; 0x65d1
    pop cx                           ; 0x65d4
    mov cx, word [bp - 0x0006]       ; 0x65d5
    shl cx, 1                        ; 0x65d8
    mov bx, cx                       ; 0x65da
    mov word [bx - 0x6e4a], ax       ; 0x65dc
@..api_idx_0030_QRVT.l76:
    inc word [bp - 0x0006]           ; 0x65e0
    mov ax, word [bp - 0x0006]       ; 0x65e3
    cmp ax, strict word 3            ; 0x65e6
    jge short @..api_idx_0030_QRVT.l77 ; 0x65e9
    jmp near @..api_idx_0030_QRVT.l61 ; 0x65eb
@..api_idx_0030_QRVT.l77:
    cmp word [bss_91d4], byte 0      ; 0x65ee
    je short @..api_idx_0030_QRVT.l78 ; 0x65f3
    mov ax, word [bss_91d4]          ; 0x65f5
    cmp ax, strict word 2            ; 0x65f8
    jg short @..api_idx_0030_QRVT.l78 ; 0x65fb
    jmp near @..api_idx_0030_QRVT.l91 ; 0x65fd
@..api_idx_0030_QRVT.l78:
    mov word [bp - 0x0014], 0        ; 0x6600
@..api_idx_0030_QRVT.l79:
    mov ax, word [bp - 0x0014]       ; 0x6605
    shl ax, 1                        ; 0x6608
    mov bx, ax                       ; 0x660a
    add bx, bp                       ; 0x660c
    mov ax, word [bx - 0x0024]       ; 0x660e
    mov word [bp - 0x0002], ax       ; 0x6611
    mov ax, 5                        ; 0x6614
    imul word [bss_91d6]             ; 0x6617
    mov cx, ax                       ; 0x661b
    mov ax, word [bp - 0x0002]       ; 0x661d
    add cx, ax                       ; 0x6620
    mov bx, cx                       ; 0x6622
    mov al, byte [bx - 0x6df6]       ; 0x6624
    sub ah, ah                       ; 0x6628
    mov word [bp - 0x001a], ax       ; 0x662a
    test ax, ax                      ; 0x662d
    jne short @..api_idx_0030_QRVT.l80 ; 0x662f
    jmp near @..api_idx_0030_QRVT.l90 ; 0x6631
@..api_idx_0030_QRVT.l80:
    mov ax, 0x28                     ; 0x6634
    imul word [bss_91d6]             ; 0x6637
    mov cx, word [bp - 0x0002]       ; 0x663b
    shl cx, 1                        ; 0x663e
    shl cx, 1                        ; 0x6640
    shl cx, 1                        ; 0x6642
    add ax, cx                       ; 0x6644
    mov bx, ax                       ; 0x6646
    cmp word [bx + 0x2a6], byte 0    ; 0x6648
    jne short @..api_idx_0030_QRVT.l81 ; 0x664d
    jmp near @..api_idx_0030_QRVT.l90 ; 0x664f
@..api_idx_0030_QRVT.l81:
    cmp word [bp - 0x001a], byte 1   ; 0x6652
    je short @..api_idx_0030_QRVT.l82 ; 0x6656
    cmp word [bss_91a6], byte 0      ; 0x6658
    je short @..api_idx_0030_QRVT.l84 ; 0x665d
@..api_idx_0030_QRVT.l82:
    mov ax, 0                        ; 0x665f
    cmp word [bss_91a6], byte 0      ; 0x6662
    je short @..api_idx_0030_QRVT.l83 ; 0x6667
    mov ax, 0xff                     ; 0x6669
@..api_idx_0030_QRVT.l83:
    push ax                          ; 0x666c
    push word [bx + 0x2ac]           ; 0x666d
    push word [bx + 0x2aa]           ; 0x6671
    push word [bx + 0x2a8]           ; 0x6675
    push word [bx + 0x2a6]           ; 0x6679
    call thunk_7                     ; 0x667d
    add sp, byte 0x0a                ; 0x6680
    jmp near @..api_idx_0030_QRVT.l89 ; 0x6683
@..api_idx_0030_QRVT.l84:
    cmp word [bss_91d6], byte 0      ; 0x6686
    jg short @..api_idx_0030_QRVT.l85 ; 0x668b
    jmp near @..api_idx_0030_QRVT.l89 ; 0x668d
@..api_idx_0030_QRVT.l85:
    mov ax, word [bp - 0x0002]       ; 0x6690
    shl ax, 1                        ; 0x6693
    shl ax, 1                        ; 0x6695
    add ax, word [bss_91d6]          ; 0x6697
    shl ax, 1                        ; 0x669b
    mov bx, ax                       ; 0x669d
    cmp byte [bx + 0x76a0], 0        ; 0x669f
    jne short @..api_idx_0030_QRVT.l86 ; 0x66a4
    jmp near @..api_idx_0030_QRVT.l89 ; 0x66a6
@..api_idx_0030_QRVT.l86:
    mov ax, 2                        ; 0x66a9
    push ax                          ; 0x66ac
    call ds_app_GGUI                 ; 0x66ad
    pop cx                           ; 0x66b0
    add ax, word [bss_8f46]          ; 0x66b1
    add ax, word [bss_8f44]          ; 0x66b5
    add ax, word [bss_82ee]          ; 0x66b9
    add ax, word [bss_91d6]          ; 0x66bd
    mov cx, 2                        ; 0x66c1
    cwd                              ; 0x66c4
    idiv cx                          ; 0x66c5
    mov word [bss_91d0], dx          ; 0x66c7
    mov al, byte [bss_91d6]          ; 0x66cb
    mov byte [bp - 0x0030], al       ; 0x66ce
    mov byte [bp - 0x002f], 0        ; 0x66d1
    mov ax, word [bp - 0x0002]       ; 0x66d5
    shl ax, 1                        ; 0x66d8
    shl ax, 1                        ; 0x66da
    add ax, word [bss_91d6]          ; 0x66dc
    shl ax, 1                        ; 0x66e0
    add ax, dx                       ; 0x66e2
    mov bx, ax                       ; 0x66e4
    mov al, byte [bx + 0x76a0]       ; 0x66e6
    sub ah, ah                       ; 0x66ea
    mov word [bp - 0x0006], ax       ; 0x66ec
    cmp ax, 0xff                     ; 0x66ef
    jne short @..api_idx_0030_QRVT.l88 ; 0x66f2
    mov ax, 0xffee                   ; 0x66f4
    cmp word [bss_91d0], byte 0      ; 0x66f7
    je short @..api_idx_0030_QRVT.l87 ; 0x66fc
    mov ax, 0xffea                   ; 0x66fe
@..api_idx_0030_QRVT.l87:
    mov word [bp - 0x0006], ax       ; 0x6701
@..api_idx_0030_QRVT.l88:
    mov ax, 0                        ; 0x6704
    push ax                          ; 0x6707
    push ax                          ; 0x6708
    lea ax, word [bp - 0x0030]       ; 0x6709
    push ax                          ; 0x670c
    push dx                          ; 0x670d
    mov ax, 0x90                     ; 0x670e
    push ax                          ; 0x6711
    mov ax, 0x20                     ; 0x6712
    push ax                          ; 0x6715
    mov ax, 0xf8                     ; 0x6716
    push ax                          ; 0x6719
    mov ax, 0x48                     ; 0x671a
    push ax                          ; 0x671d
    mov ax, word [bp - 0x0002]       ; 0x671e
    shl ax, 1                        ; 0x6721
    shl ax, 1                        ; 0x6723
    add ax, word [bss_91d6]          ; 0x6725
    mov bx, ax                       ; 0x6729
    mov al, byte [bx + 0x76e9]       ; 0x672b
    sub ah, ah                       ; 0x672f
    push ax                          ; 0x6731
    push word [bp - 0x0006]          ; 0x6732
    mov ax, 9                        ; 0x6735
    push ax                          ; 0x6738
    call thunk_28                    ; 0x6739
    add sp, byte 0x16                ; 0x673c
@..api_idx_0030_QRVT.l89:
    cmp word [bss_91a6], byte 0      ; 0x673f
    je short @..api_idx_0030_QRVT.l90 ; 0x6744
    call api_idx_001e_PMST           ; 0x6746
    call api_idx_0024_SLHO           ; 0x6749
@..api_idx_0030_QRVT.l90:
    inc word [bp - 0x0014]           ; 0x674c
    mov ax, word [bp - 0x0014]       ; 0x674f
    cmp ax, strict word 5            ; 0x6752
    jge short @..api_idx_0030_QRVT.l91 ; 0x6755
    jmp near @..api_idx_0030_QRVT.l79 ; 0x6757
@..api_idx_0030_QRVT.l91:
    dec word [bss_91d6]              ; 0x675a
@..api_idx_0030_QRVT.l92:
    cmp word [bss_91d6], byte 0      ; 0x675e
    jl short @..api_idx_0030_QRVT.l93 ; 0x6763
    jmp near @..api_idx_0030_QRVT.l40 ; 0x6765
@..api_idx_0030_QRVT.l93:
    call ds_app_NLKG                 ; 0x6768
    ret                              ; 0x676b
