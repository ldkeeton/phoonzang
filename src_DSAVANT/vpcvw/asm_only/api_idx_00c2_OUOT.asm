; auto-generated
; asm only
api_idx_00c2_OUOT:
    mov ax, 0xff3e                   ; 0x54fb
    call aztec_csav                  ; 0x54fe
    mov ax, 0x248                    ; 0x5501
    imul word [bp + 0x4]             ; 0x5504
    push ax                          ; 0x5507
    mov ax, 0x78                     ; 0x5508
    imul word [bss_9434]             ; 0x550b
    mov cx, ax                       ; 0x550f
    pop ax                           ; 0x5511
    add ax, cx                       ; 0x5512
    push ax                          ; 0x5514
    mov ax, 0xc                      ; 0x5515
    imul word [bp + 0x6]             ; 0x5518
    mov cx, ax                       ; 0x551b
    pop ax                           ; 0x551d
    add ax, cx                       ; 0x551e
    mov bx, ax                       ; 0x5520
    mov al, byte [bx + 0x5c3b]       ; 0x5522
    sub ah, ah                       ; 0x5526
    test ax, 2                       ; 0x5528
    je short @..api_idx_00c2_OUOT.l2 ; 0x552b
    call api_idx_0056_KPMS           ; 0x552d
    mov ax, 0x248                    ; 0x5530
    imul word [bp + 0x4]             ; 0x5533
    push ax                          ; 0x5536
    mov ax, 0x78                     ; 0x5537
    imul word [bss_9434]             ; 0x553a
    mov cx, ax                       ; 0x553e
    pop ax                           ; 0x5540
    add ax, cx                       ; 0x5541
    push ax                          ; 0x5543
    mov ax, 0xc                      ; 0x5544
    imul word [bp + 0x6]             ; 0x5547
    mov cx, ax                       ; 0x554a
    pop ax                           ; 0x554c
    add ax, cx                       ; 0x554d
    add ax, 0x5c34                   ; 0x554f
    push ax                          ; 0x5552
    push word [bp + 0x4]             ; 0x5553
    call api_idx_0048_RUIH           ; 0x5556
    add sp, byte 4                   ; 0x5559
    mov word [bp - 0x0014], ax       ; 0x555c
    cmp word [bp - 0x0014], byte 0   ; 0x555f
    je short @..api_idx_00c2_OUOT.l1 ; 0x5563
    push ax                          ; 0x5565
    push word [bp + 0x6]             ; 0x5566
    push word [bss_9434]             ; 0x5569
    push word [bp + 0x4]             ; 0x556d
    call api_idx_0010_GVMH           ; 0x5570
    add sp, byte 8                   ; 0x5573
@..api_idx_00c2_OUOT.l1:
    ret                              ; 0x5576
@..api_idx_00c2_OUOT.l2:
    mov ax, 0x248                    ; 0x5577
    imul word [bp + 0x4]             ; 0x557a
    push ax                          ; 0x557d
    mov ax, 0x78                     ; 0x557e
    imul word [bss_9434]             ; 0x5581
    mov cx, ax                       ; 0x5585
    pop ax                           ; 0x5587
    add ax, cx                       ; 0x5588
    push ax                          ; 0x558a
    mov ax, 0xc                      ; 0x558b
    imul word [bp + 0x6]             ; 0x558e
    mov cx, ax                       ; 0x5591
    pop ax                           ; 0x5593
    add ax, cx                       ; 0x5594
    mov bx, ax                       ; 0x5596
    mov al, byte [bx + 0x5c3b]       ; 0x5598
    sub ah, ah                       ; 0x559c
    and ax, strict word 0xfffe       ; 0x559e
    mov byte [bx + 0x5c3b], al       ; 0x55a1
    add bx, strict word 0x5c34       ; 0x55a5
    mov si, bx                       ; 0x55a9
    lea di, word [bp - 0x002c]       ; 0x55ab
    mov cx, ds                       ; 0x55ae
    mov es, cx                       ; 0x55b0
    mov cx, 6                        ; 0x55b2
    rep movsw                        ; 0x55b5
    mov ax, 0x16                     ; 0x55b7
    imul word [bp + 0x6]             ; 0x55ba
    add ax, 0x9436                   ; 0x55bd
    push ax                          ; 0x55c0
    lea ax, word [bp - 0x004e]       ; 0x55c1
    push ax                          ; 0x55c4
    call aztec_strcpy                ; 0x55c5
    add sp, byte 4                   ; 0x55c8
    mov ax, word [bp + 0x6]          ; 0x55cb
    shl ax, 1                        ; 0x55ce
    mov bx, ax                       ; 0x55d0
    mov ax, word [bx - 0x6a14]       ; 0x55d2
    mov word [bp - 0x0066], ax       ; 0x55d6
    mov ax, word [bx - 0x6a00]       ; 0x55d9
    mov word [bp - 0x006a], ax       ; 0x55dd
    push word [bp + 0x6]             ; 0x55e0
    push word [bss_9434]             ; 0x55e3
    push word [bp + 0x4]             ; 0x55e7
    call ds_app_IPJO                 ; 0x55ea
    add sp, byte 6                   ; 0x55ed
    mov word [bss_9614], 1           ; 0x55f0
    push word [bp + 0x4]             ; 0x55f6
    call api_idx_004c_LTUL           ; 0x55f9
    pop cx                           ; 0x55fc
    mov ax, 0                        ; 0x55fd
    push ax                          ; 0x5600
    push ax                          ; 0x5601
    push word [bp - 0x0066]          ; 0x5602
    lea ax, word [bp - 0x004e]       ; 0x5605
    push ax                          ; 0x5608
    lea ax, word [bp - 0x002c]       ; 0x5609
    push ax                          ; 0x560c
    push word [bp + 0x6]             ; 0x560d
    push word [bp + 0x4]             ; 0x5610
    call api_idx_0012_MVLS           ; 0x5613
    add sp, byte 0x0e                ; 0x5616
    mov word [bp - 0x000a], 4        ; 0x5619
    mov word [bp - 0x000c], 0xbc     ; 0x561e
    mov word [bp - 0x000e], 7        ; 0x5623
    mov ax, 6                        ; 0x5628
    imul word [bp - 0x000e]          ; 0x562b
    add ax, strict word 4            ; 0x562e
    mov word [bp - 0x0010], ax       ; 0x5631
    mov word [bp - 0x0012], 4        ; 0x5634
    mov ax, word [bp - 0x000c]       ; 0x5639
    add ax, strict word 0xa          ; 0x563c
    push ax                          ; 0x563f
    mov ax, word [bp - 0x0010]       ; 0x5640
    imul word [bp - 0x0012]          ; 0x5643
    add ax, word [bp - 0x000a]       ; 0x5646
    inc ax                           ; 0x5649
    push ax                          ; 0x564a
    mov ax, word [bp - 0x000c]       ; 0x564b
    dec ax                           ; 0x564e
    push ax                          ; 0x564f
    mov ax, word [bp - 0x000a]       ; 0x5650
    dec ax                           ; 0x5653
    push ax                          ; 0x5654
    call thunk_10                    ; 0x5655
    add sp, byte 8                   ; 0x5658
    mov word [bp - 0x001e], dx       ; 0x565b
    mov word [bp - 0x0020], ax       ; 0x565e
    mov word [bp - 0x001a], 1        ; 0x5661
    mov word [bp - 0x001c], 0        ; 0x5666
@..api_idx_00c2_OUOT.l3:
    mov word [bp - 0x0002], 0        ; 0x566b
@..api_idx_00c2_OUOT.l4:
    mov ax, 0                        ; 0x5670
    push ax                          ; 0x5673
    mov ax, word [bp - 0x0002]       ; 0x5674
    inc ax                           ; 0x5677
    mov cx, 0xa                      ; 0x5678
    cwd                              ; 0x567b
    idiv cx                          ; 0x567c
    mov ax, dx                       ; 0x567e
    add ax, strict word 0x30         ; 0x5680
    cbw                              ; 0x5683
    push ax                          ; 0x5684
    mov ax, word [bp - 0x0002]       ; 0x5685
    mov cx, 5                        ; 0x5688
    cwd                              ; 0x568b
    idiv cx                          ; 0x568c
    mov ax, dx                       ; 0x568e
    mov cx, 0xe                      ; 0x5690
    imul cx                          ; 0x5693
    add ax, strict word 0x7d         ; 0x5695
    push ax                          ; 0x5698
    mov ax, word [bp - 0x0002]       ; 0x5699
    mov cx, 5                        ; 0x569c
    cwd                              ; 0x569f
    idiv cx                          ; 0x56a0
    mov cx, 0x4f                     ; 0x56a2
    imul cx                          ; 0x56a5
    add ax, strict word 0x4e         ; 0x56a7
    push ax                          ; 0x56aa
    mov ax, word [bp - 0x0002]       ; 0x56ab
    mov cx, 5                        ; 0x56ae
    cwd                              ; 0x56b1
    idiv cx                          ; 0x56b2
    mov ax, dx                       ; 0x56b4
    mov cx, 0xe                      ; 0x56b6
    imul cx                          ; 0x56b9
    add ax, strict word 0x71         ; 0x56bb
    push ax                          ; 0x56be
    mov ax, word [bp - 0x0002]       ; 0x56bf
    mov cx, 5                        ; 0x56c2
    cwd                              ; 0x56c5
    idiv cx                          ; 0x56c6
    mov cx, 0x4f                     ; 0x56c8
    imul cx                          ; 0x56cb
    inc ax                           ; 0x56cd
    inc ax                           ; 0x56ce
    push ax                          ; 0x56cf
    push word [bp - 0x0002]          ; 0x56d0
    call ds_app_NGUR                 ; 0x56d3
    add sp, byte 0x0e                ; 0x56d6
    inc word [bp - 0x0002]           ; 0x56d9
    mov ax, word [bp - 0x0002]       ; 0x56dc
    cmp ax, strict word 0xa          ; 0x56df
    jl short @..api_idx_00c2_OUOT.l4 ; 0x56e2
    mov ax, 0                        ; 0x56e4
    push ax                          ; 0x56e7
    mov ax, 0xb                      ; 0x56e8
    push ax                          ; 0x56eb
    mov ax, 0x4a                     ; 0x56ec
    push ax                          ; 0x56ef
    mov ax, 0x26                     ; 0x56f0
    push ax                          ; 0x56f3
    mov ax, 0x11                     ; 0x56f4
    push ax                          ; 0x56f7
    mov ax, 0xc                      ; 0x56f8
    push ax                          ; 0x56fb
    mov ax, 0xa                      ; 0x56fc
    push ax                          ; 0x56ff
    call ds_app_NGUR                 ; 0x5700
    add sp, byte 0x0e                ; 0x5703
    mov ax, 0                        ; 0x5706
    push ax                          ; 0x5709
    mov ax, 9                        ; 0x570a
    push ax                          ; 0x570d
    mov ax, 0x4a                     ; 0x570e
    push ax                          ; 0x5711
    mov ax, 0x43                     ; 0x5712
    push ax                          ; 0x5715
    mov ax, 0x11                     ; 0x5716
    push ax                          ; 0x5719
    mov ax, 0x27                     ; 0x571a
    push ax                          ; 0x571d
    mov ax, 0xb                      ; 0x571e
    push ax                          ; 0x5721
    call ds_app_NGUR                 ; 0x5722
    add sp, byte 0x0e                ; 0x5725
    mov ax, 0                        ; 0x5728
    push ax                          ; 0x572b
    mov ax, 0x42                     ; 0x572c
    push ax                          ; 0x572f
    mov ax, 0x6e                     ; 0x5730
    push ax                          ; 0x5733
    mov ax, 0xf2                     ; 0x5734
    push ax                          ; 0x5737
    mov ax, 0x53                     ; 0x5738
    push ax                          ; 0x573b
    mov ax, 0xdb                     ; 0x573c
    push ax                          ; 0x573f
    mov ax, 0xc                      ; 0x5740
    push ax                          ; 0x5743
    call ds_app_NGUR                 ; 0x5744
    add sp, byte 0x0e                ; 0x5747
    mov ax, 0                        ; 0x574a
    push ax                          ; 0x574d
    mov ax, 0x45                     ; 0x574e
    push ax                          ; 0x5751
    mov ax, 0x7e                     ; 0x5752
    push ax                          ; 0x5755
    mov ax, 0x13a                    ; 0x5756
    push ax                          ; 0x5759
    mov ax, 0x29                     ; 0x575a
    push ax                          ; 0x575d
    mov ax, 0xf8                     ; 0x575e
    push ax                          ; 0x5761
    mov ax, 0xd                      ; 0x5762
    push ax                          ; 0x5765
    call ds_app_NGUR                 ; 0x5766
    add sp, byte 0x0e                ; 0x5769
    mov ax, word [bp - 0x006a]       ; 0x576c
    mov word [bp - 0x0016], ax       ; 0x576f
    mov word [bp - 0x0002], 0        ; 0x5772
@..api_idx_00c2_OUOT.l5:
    mov ax, word [bp - 0x0002]       ; 0x5777
    shl ax, 1                        ; 0x577a
    mov bx, ax                       ; 0x577c
    add bx, bp                       ; 0x577e
    mov word [bx - 0x0098], 1        ; 0x5780
    inc word [bp - 0x0002]           ; 0x5786
    mov ax, word [bp - 0x0002]       ; 0x5789
    cmp ax, strict word 4            ; 0x578c
    jl short @..api_idx_00c2_OUOT.l5 ; 0x578f
    cmp word [bss_905e], byte 4      ; 0x5791
    je short @..api_idx_00c2_OUOT.l6 ; 0x5796
    cmp word [bss_905e], byte 0x0d   ; 0x5798
    jne short @..api_idx_00c2_OUOT.l7 ; 0x579d
@..api_idx_00c2_OUOT.l6:
    mov word [bp - 0x0098], 0        ; 0x579f
    mov word [bp - 0x0092], 0        ; 0x57a5
@..api_idx_00c2_OUOT.l7:
    push word [bp + 0x4]             ; 0x57ab
    call ds_app_KTPM                 ; 0x57ae
    pop cx                           ; 0x57b1
    test ax, ax                      ; 0x57b2
    jne short @..api_idx_00c2_OUOT.l8 ; 0x57b4
    mov word [bp - 0x0098], 0        ; 0x57b6
    mov word [bp - 0x0096], 0        ; 0x57bc
@..api_idx_00c2_OUOT.l8:
    mov word [bp - 0x0090], 0xffff   ; 0x57c2
    mov ax, 0                        ; 0x57c8
    push ax                          ; 0x57cb
    push word [bp - 0x001e]          ; 0x57cc
    push word [bp - 0x0020]          ; 0x57cf
    call thunk_13                    ; 0x57d2
    add sp, byte 6                   ; 0x57d5
    mov word [bp - 0x0070], 0        ; 0x57d8
    mov word [bp - 0x0002], 0        ; 0x57dd
@..api_idx_00c2_OUOT.l9:
    mov ax, word [bp - 0x0002]       ; 0x57e2
    shl ax, 1                        ; 0x57e5
    mov bx, ax                       ; 0x57e7
    add bx, bp                       ; 0x57e9
    cmp word [bx - 0x0098], byte 0xff ; 0x57eb
    jne short @..api_idx_00c2_OUOT.l10 ; 0x57f0
    jmp near @..api_idx_00c2_OUOT.l14 ; 0x57f2
@..api_idx_00c2_OUOT.l10:
    cmp word [bx - 0x0098], byte 1   ; 0x57f5
    je short @..api_idx_00c2_OUOT.l11 ; 0x57fa
    jmp near @..api_idx_00c2_OUOT.l13 ; 0x57fc
@..api_idx_00c2_OUOT.l11:
    mov ax, word [bp - 0x0002]       ; 0x57ff
    cmp word [bp - 0x0002], byte 0   ; 0x5802
    jne short @..api_idx_00c2_OUOT.l12 ; 0x5806
    mov ax, word [bp - 0x0016]       ; 0x5808
@..api_idx_00c2_OUOT.l12:
    mov word [bp - 0x0018], ax       ; 0x580b
    mov ax, 0                        ; 0x580e
    push ax                          ; 0x5811
    mov ax, word [bp - 0x000c]       ; 0x5812
    add ax, strict word 8            ; 0x5815
    push ax                          ; 0x5818
    mov ax, word [bp - 0x0010]       ; 0x5819
    imul word [bp - 0x0070]          ; 0x581c
    push ax                          ; 0x581f
    mov ax, 6                        ; 0x5820
    imul word [bp - 0x000e]          ; 0x5823
    mov cx, ax                       ; 0x5826
    pop ax                           ; 0x5828
    add ax, cx                       ; 0x5829
    add ax, word [bp - 0x000a]       ; 0x582b
    push ax                          ; 0x582e
    push word [bp - 0x000c]          ; 0x582f
    mov ax, word [bp - 0x0010]       ; 0x5832
    imul word [bp - 0x0070]          ; 0x5835
    add ax, word [bp - 0x000a]       ; 0x5838
    push ax                          ; 0x583b
    call ds_app_PQGJ                 ; 0x583c
    add sp, byte 0x0a                ; 0x583f
    mov ax, 0xc0                     ; 0x5842
    push ax                          ; 0x5845
    mov ax, 1                        ; 0x5846
    push ax                          ; 0x5849
    call thunk_3                     ; 0x584a
    add sp, byte 4                   ; 0x584d
    mov ax, word [bp - 0x000c]       ; 0x5850
    inc ax                           ; 0x5853
    inc ax                           ; 0x5854
    push ax                          ; 0x5855
    mov ax, 0xa                      ; 0x5856
    imul word [bp - 0x0018]          ; 0x5859
    add ax, 0x9616                   ; 0x585c
    push ax                          ; 0x585f
    call aztec_strlen                ; 0x5860
    pop cx                           ; 0x5863
    mov cx, ax                       ; 0x5864
    mov ax, word [bp - 0x000e]       ; 0x5866
    sub ax, cx                       ; 0x5869
    mov cx, 6                        ; 0x586b
    imul cx                          ; 0x586e
    mov cx, 2                        ; 0x5870
    cwd                              ; 0x5873
    idiv cx                          ; 0x5874
    push ax                          ; 0x5876
    mov ax, word [bp - 0x0010]       ; 0x5877
    imul word [bp - 0x0070]          ; 0x587a
    mov cx, ax                       ; 0x587d
    pop ax                           ; 0x587f
    add ax, cx                       ; 0x5880
    add ax, word [bp - 0x000a]       ; 0x5882
    inc ax                           ; 0x5885
    push ax                          ; 0x5886
    call thunk                       ; 0x5887
    add sp, byte 4                   ; 0x588a
    mov ax, 0                        ; 0x588d
    push ax                          ; 0x5890
    mov ax, 0xa                      ; 0x5891
    imul word [bp - 0x0018]          ; 0x5894
    add ax, 0x9616                   ; 0x5897
    push ax                          ; 0x589a
    call ds_string_loc_QRJV          ; 0x589b
    add sp, byte 4                   ; 0x589e
    mov ax, 0                        ; 0x58a1
    push ax                          ; 0x58a4
    push ax                          ; 0x58a5
    mov ax, word [bp - 0x000c]       ; 0x58a6
    add ax, strict word 8            ; 0x58a9
    push ax                          ; 0x58ac
    mov ax, word [bp - 0x0010]       ; 0x58ad
    imul word [bp - 0x0070]          ; 0x58b0
    push ax                          ; 0x58b3
    mov ax, 6                        ; 0x58b4
    imul word [bp - 0x000e]          ; 0x58b7
    mov cx, ax                       ; 0x58ba
    pop ax                           ; 0x58bc
    add ax, cx                       ; 0x58bd
    add ax, word [bp - 0x000a]       ; 0x58bf
    push ax                          ; 0x58c2
    push word [bp - 0x000c]          ; 0x58c3
    mov ax, word [bp - 0x0010]       ; 0x58c6
    imul word [bp - 0x0070]          ; 0x58c9
    add ax, word [bp - 0x000a]       ; 0x58cc
    push ax                          ; 0x58cf
    mov ax, word [bp - 0x0070]       ; 0x58d0
    add ax, strict word 0xe          ; 0x58d3
    push ax                          ; 0x58d6
    call ds_app_NGUR                 ; 0x58d7
    add sp, byte 0x0e                ; 0x58da
    mov ax, word [bp - 0x0002]       ; 0x58dd
    mov cx, word [bp - 0x0070]       ; 0x58e0
    shl cx, 1                        ; 0x58e3
    mov bx, cx                       ; 0x58e5
    add bx, bp                       ; 0x58e7
    mov word [bx - 0x0084], ax       ; 0x58e9
    inc word [bp - 0x0070]           ; 0x58ed
@..api_idx_00c2_OUOT.l13:
    inc word [bp - 0x0002]           ; 0x58f0
    jmp near @..api_idx_00c2_OUOT.l9 ; 0x58f3
@..api_idx_00c2_OUOT.l14:
    mov ax, 0                        ; 0x58f6
    push ax                          ; 0x58f9
    push ax                          ; 0x58fa
    push ax                          ; 0x58fb
    push ax                          ; 0x58fc
    push ax                          ; 0x58fd
    mov ax, 0xffff                   ; 0x58fe
    push ax                          ; 0x5901
    mov ax, word [bp - 0x0070]       ; 0x5902
    add ax, strict word 0xe          ; 0x5905
    push ax                          ; 0x5908
    call ds_app_NGUR                 ; 0x5909
    add sp, byte 0x0e                ; 0x590c
    mov ax, word [bp - 0x000c]       ; 0x590f
    add ax, strict word 0xa          ; 0x5912
    push ax                          ; 0x5915
    mov ax, word [bp - 0x0010]       ; 0x5916
    imul word [bp - 0x0012]          ; 0x5919
    add ax, word [bp - 0x000a]       ; 0x591c
    inc ax                           ; 0x591f
    push ax                          ; 0x5920
    mov ax, word [bp - 0x000c]       ; 0x5921
    dec ax                           ; 0x5924
    push ax                          ; 0x5925
    mov ax, word [bp - 0x000a]       ; 0x5926
    dec ax                           ; 0x5929
    push ax                          ; 0x592a
    call thunk_4                     ; 0x592b
    add sp, byte 8                   ; 0x592e
    mov word [bp - 0x001a], 1        ; 0x5931
    mov word [bp - 0x001c], 0        ; 0x5936
@..api_idx_00c2_OUOT.l15:
    cmp word [bss_0e32], byte 0      ; 0x593b
    je short @..api_idx_00c2_OUOT.l17 ; 0x5940
@..api_idx_00c2_OUOT.l16:
    mov ax, 0x59fe                   ; 0x5942
    push ax                          ; 0x5945
    call ds_app_io_UHMG              ; 0x5946
    pop cx                           ; 0x5949
    dec ax                           ; 0x594a
    mov word [bp - 0x0004], ax       ; 0x594b
    cmp word [bss_5b3e], byte 0      ; 0x594e
    je short @..api_idx_00c2_OUOT.l16 ; 0x5953
    jmp near @..api_idx_00c2_OUOT.l40 ; 0x5955
@..api_idx_00c2_OUOT.l17:
    cmp word [bp - 0x001c], byte 0   ; 0x5958
    je short @..api_idx_00c2_OUOT.l18 ; 0x595c
    jmp near @..api_idx_00c2_OUOT.l34 ; 0x595e
@..api_idx_00c2_OUOT.l18:
    mov word [bp - 0x0004], 0xffff   ; 0x5961
    mov word [bp - 0x0002], 0        ; 0x5966
@..api_idx_00c2_OUOT.l19:
    mov ax, 0x16                     ; 0x596b
    push ax                          ; 0x596e
    mov ax, word [bp - 0x000c]       ; 0x596f
    add ax, strict word 8            ; 0x5972
    push ax                          ; 0x5975
    mov ax, word [bp - 0x0010]       ; 0x5976
    imul word [bp - 0x0002]          ; 0x5979
    push ax                          ; 0x597c
    mov ax, 6                        ; 0x597d
    imul word [bp - 0x000e]          ; 0x5980
    mov cx, ax                       ; 0x5983
    pop ax                           ; 0x5985
    add ax, cx                       ; 0x5986
    add ax, word [bp - 0x000a]       ; 0x5988
    push ax                          ; 0x598b
    push word [bp - 0x000c]          ; 0x598c
    mov ax, word [bp - 0x0010]       ; 0x598f
    imul word [bp - 0x0002]          ; 0x5992
    add ax, word [bp - 0x000a]       ; 0x5995
    push ax                          ; 0x5998
    call loc_MNNG                    ; 0x5999
    add sp, byte 0x0a                ; 0x599c
    mov ax, word [bp - 0x000c]       ; 0x599f
    add ax, strict word 0xa          ; 0x59a2
    push ax                          ; 0x59a5
    mov ax, word [bp - 0x0010]       ; 0x59a6
    imul word [bp - 0x0012]          ; 0x59a9
    add ax, word [bp - 0x000a]       ; 0x59ac
    inc ax                           ; 0x59af
    push ax                          ; 0x59b0
    mov ax, word [bp - 0x000c]       ; 0x59b1
    dec ax                           ; 0x59b4
    push ax                          ; 0x59b5
    mov ax, word [bp - 0x000a]       ; 0x59b6
    dec ax                           ; 0x59b9
    push ax                          ; 0x59ba
    call thunk_4                     ; 0x59bb
    add sp, byte 8                   ; 0x59be
    mov ax, 0                        ; 0x59c1
    push ax                          ; 0x59c4
    mov ax, word [bp - 0x000c]       ; 0x59c5
    add ax, strict word 8            ; 0x59c8
    push ax                          ; 0x59cb
    mov ax, word [bp - 0x0010]       ; 0x59cc
    imul word [bp - 0x0002]          ; 0x59cf
    push ax                          ; 0x59d2
    mov ax, 6                        ; 0x59d3
    imul word [bp - 0x000e]          ; 0x59d6
    mov cx, ax                       ; 0x59d9
    pop ax                           ; 0x59db
    add ax, cx                       ; 0x59dc
    add ax, word [bp - 0x000a]       ; 0x59de
    push ax                          ; 0x59e1
    push word [bp - 0x000c]          ; 0x59e2
    mov ax, word [bp - 0x0010]       ; 0x59e5
    imul word [bp - 0x0002]          ; 0x59e8
    add ax, word [bp - 0x000a]       ; 0x59eb
    push ax                          ; 0x59ee
    call loc_MNNG                    ; 0x59ef
    add sp, byte 0x0a                ; 0x59f2
@..api_idx_00c2_OUOT.l20:
    mov ax, 1                        ; 0x59f5
    push ax                          ; 0x59f8
    call dos_con_in_noecho           ; 0x59f9
    pop cx                           ; 0x59fc
    test ax, ax                      ; 0x59fd
    jne short @..api_idx_00c2_OUOT.l21 ; 0x59ff
    jmp short @..api_idx_00c2_OUOT.l20 ; 0x5a01
@..api_idx_00c2_OUOT.l21:
    mov ax, 1                        ; 0x5a03
    push ax                          ; 0x5a06
    call dos_con_in_noecho_2         ; 0x5a07
    pop cx                           ; 0x5a0a
    sub ah, ah                       ; 0x5a0b
    mov word [bp - 0x009a], ax       ; 0x5a0d
    cmp ax, strict word 0x30         ; 0x5a11
    jl short @..api_idx_00c2_OUOT.l23 ; 0x5a14
    cmp ax, strict word 0x39         ; 0x5a16
    jg short @..api_idx_00c2_OUOT.l23 ; 0x5a19
    add ax, strict word 0xffcf       ; 0x5a1b
    mov word [bp - 0x0004], ax       ; 0x5a1e
    cmp ax, strict word 0            ; 0x5a21
    jge short @..api_idx_00c2_OUOT.l22 ; 0x5a24
    add word [bp - 0x0004], byte 0x0a ; 0x5a26
@..api_idx_00c2_OUOT.l22:
    jmp short @..api_idx_00c2_OUOT.l32 ; 0x5a2a
@..api_idx_00c2_OUOT.l23:
    mov ax, word [bp - 0x009a]       ; 0x5a2c
    jmp short @..api_idx_00c2_OUOT.l31 ; 0x5a30
@..api_idx_00c2_OUOT.l24:
    mov word [bp - 0x0004], 0xa      ; 0x5a32
    jmp short @..api_idx_00c2_OUOT.l32 ; 0x5a37
@..api_idx_00c2_OUOT.l25:
    mov word [bp - 0x0004], 0xb      ; 0x5a39
    jmp short @..api_idx_00c2_OUOT.l32 ; 0x5a3e
@..api_idx_00c2_OUOT.l26:
    mov word [bp - 0x0004], 0xc      ; 0x5a40
    jmp short @..api_idx_00c2_OUOT.l32 ; 0x5a45
@..api_idx_00c2_OUOT.l27:
    mov word [bp - 0x0004], 0xd      ; 0x5a47
    jmp short @..api_idx_00c2_OUOT.l32 ; 0x5a4c
@..api_idx_00c2_OUOT.l28:
    mov ax, word [bp - 0x0002]       ; 0x5a4e
    add ax, word [bp - 0x0070]       ; 0x5a51
    dec ax                           ; 0x5a54
    cwd                              ; 0x5a55
    idiv word [bp - 0x0070]          ; 0x5a56
    mov word [bp - 0x0002], dx       ; 0x5a59
    jmp short @..api_idx_00c2_OUOT.l32 ; 0x5a5c
@..api_idx_00c2_OUOT.l29:
    mov ax, word [bp - 0x0002]       ; 0x5a5e
    inc ax                           ; 0x5a61
    cwd                              ; 0x5a62
    idiv word [bp - 0x0070]          ; 0x5a63
    mov word [bp - 0x0002], dx       ; 0x5a66
    jmp short @..api_idx_00c2_OUOT.l32 ; 0x5a69
@..api_idx_00c2_OUOT.l30:
    mov ax, word [bp - 0x0002]       ; 0x5a6b
    add ax, strict word 0xe          ; 0x5a6e
    mov word [bp - 0x0004], ax       ; 0x5a71
    jmp short @..api_idx_00c2_OUOT.l32 ; 0x5a74
@..api_idx_00c2_OUOT.l31:
    cmp ax, strict word 8            ; 0x5a76
    je short @..api_idx_00c2_OUOT.l28 ; 0x5a79
    cmp ax, strict word 9            ; 0x5a7b
    je short @..api_idx_00c2_OUOT.l25 ; 0x5a7e
    cmp ax, strict word 0xa          ; 0x5a80
    je short @..api_idx_00c2_OUOT.l29 ; 0x5a83
    cmp ax, strict word 0xb          ; 0x5a85
    je short @..api_idx_00c2_OUOT.l24 ; 0x5a88
    cmp ax, strict word 0xd          ; 0x5a8a
    je short @..api_idx_00c2_OUOT.l30 ; 0x5a8d
    cmp ax, strict word 0x42         ; 0x5a8f
    je short @..api_idx_00c2_OUOT.l26 ; 0x5a92
    cmp ax, strict word 0x45         ; 0x5a94
    je short @..api_idx_00c2_OUOT.l27 ; 0x5a97
@..api_idx_00c2_OUOT.l32:
    cmp word [bp - 0x0004], byte 0xff ; 0x5a99
    jne short @..api_idx_00c2_OUOT.l33 ; 0x5a9d
    jmp near @..api_idx_00c2_OUOT.l19 ; 0x5a9f
@..api_idx_00c2_OUOT.l33:
    mov ax, word [bp - 0x000c]       ; 0x5aa2
    add ax, strict word 0xa          ; 0x5aa5
    push ax                          ; 0x5aa8
    mov ax, word [bp - 0x0010]       ; 0x5aa9
    imul word [bp - 0x0012]          ; 0x5aac
    add ax, word [bp - 0x000a]       ; 0x5aaf
    inc ax                           ; 0x5ab2
    push ax                          ; 0x5ab3
    mov ax, word [bp - 0x000c]       ; 0x5ab4
    dec ax                           ; 0x5ab7
    push ax                          ; 0x5ab8
    mov ax, word [bp - 0x000a]       ; 0x5ab9
    dec ax                           ; 0x5abc
    push ax                          ; 0x5abd
    call thunk_4                     ; 0x5abe
    add sp, byte 8                   ; 0x5ac1
    jmp short @..api_idx_00c2_OUOT.l40 ; 0x5ac4
@..api_idx_00c2_OUOT.l34:
    mov word [bp - 0x0004], 0xffff   ; 0x5ac6
@..api_idx_00c2_OUOT.l35:
    mov ax, 1                        ; 0x5acb
    push ax                          ; 0x5ace
    call dos_con_in_noecho           ; 0x5acf
    pop cx                           ; 0x5ad2
    test ax, ax                      ; 0x5ad3
    jne short @..api_idx_00c2_OUOT.l36 ; 0x5ad5
    jmp short @..api_idx_00c2_OUOT.l35 ; 0x5ad7
@..api_idx_00c2_OUOT.l36:
    mov ax, 1                        ; 0x5ad9
    push ax                          ; 0x5adc
    call dos_con_in_noecho_2         ; 0x5add
    pop cx                           ; 0x5ae0
    sub ah, ah                       ; 0x5ae1
    mov word [bp - 0x009a], ax       ; 0x5ae3
    cmp ax, strict word 0x30         ; 0x5ae7
    jl short @..api_idx_00c2_OUOT.l37 ; 0x5aea
    cmp ax, strict word 0x39         ; 0x5aec
    jg short @..api_idx_00c2_OUOT.l37 ; 0x5aef
    add ax, strict word 0xffcf       ; 0x5af1
    mov word [bp - 0x0004], ax       ; 0x5af4
    cmp ax, strict word 0            ; 0x5af7
    jge short @..api_idx_00c2_OUOT.l37 ; 0x5afa
    add word [bp - 0x0004], byte 0x0a ; 0x5afc
@..api_idx_00c2_OUOT.l37:
    cmp word [bp - 0x009a], byte 0x0d ; 0x5b00
    je short @..api_idx_00c2_OUOT.l38 ; 0x5b05
    cmp word [bp - 0x009a], byte 0x1b ; 0x5b07
    jne short @..api_idx_00c2_OUOT.l39 ; 0x5b0c
@..api_idx_00c2_OUOT.l38:
    mov word [bp - 0x001c], 0        ; 0x5b0e
@..api_idx_00c2_OUOT.l39:
    cmp word [bp - 0x009a], byte 0x0d ; 0x5b13
    je short @..api_idx_00c2_OUOT.l40 ; 0x5b18
    cmp word [bp - 0x009a], byte 0x1b ; 0x5b1a
    je short @..api_idx_00c2_OUOT.l40 ; 0x5b1f
    cmp word [bp - 0x0004], byte 0xff ; 0x5b21
    je short @..api_idx_00c2_OUOT.l35 ; 0x5b25
@..api_idx_00c2_OUOT.l40:
    cmp word [bp - 0x0004], byte 0   ; 0x5b27
    jge short @..api_idx_00c2_OUOT.l41 ; 0x5b2b
    jmp near @..api_idx_00c2_OUOT.l49 ; 0x5b2d
@..api_idx_00c2_OUOT.l41:
    cmp word [bp - 0x0004], byte 0x0a ; 0x5b30
    jl short @..api_idx_00c2_OUOT.l42 ; 0x5b34
    jmp near @..api_idx_00c2_OUOT.l49 ; 0x5b36
@..api_idx_00c2_OUOT.l42:
    mov ax, 0x248                    ; 0x5b39
    imul word [bp + 0x4]             ; 0x5b3c
    push ax                          ; 0x5b3f
    mov ax, 0x78                     ; 0x5b40
    imul word [bss_9434]             ; 0x5b43
    mov cx, ax                       ; 0x5b47
    pop ax                           ; 0x5b49
    add ax, cx                       ; 0x5b4a
    push ax                          ; 0x5b4c
    mov ax, 0xc                      ; 0x5b4d
    imul word [bp - 0x0004]          ; 0x5b50
    mov cx, ax                       ; 0x5b53
    pop ax                           ; 0x5b55
    add ax, cx                       ; 0x5b56
    mov bx, ax                       ; 0x5b58
    cmp word [bx + 0x5c34], byte 0   ; 0x5b5a
    jle short @..api_idx_00c2_OUOT.l43 ; 0x5b5f
    mov al, byte [bx + 0x5c3b]       ; 0x5b61
    sub ah, ah                       ; 0x5b65
    test ax, 2                       ; 0x5b67
    je short @..api_idx_00c2_OUOT.l43 ; 0x5b6a
    call api_idx_0056_KPMS           ; 0x5b6c
    mov word [bp - 0x001a], 2        ; 0x5b6f
    jmp near @..api_idx_00c2_OUOT.l48 ; 0x5b74
@..api_idx_00c2_OUOT.l43:
    mov ax, word [bp - 0x0004]       ; 0x5b77
    mov word [bp + 0x6], ax          ; 0x5b7a
    mov ax, 0x248                    ; 0x5b7d
    imul word [bp + 0x4]             ; 0x5b80
    push ax                          ; 0x5b83
    mov ax, 0x78                     ; 0x5b84
    imul word [bss_9434]             ; 0x5b87
    mov cx, ax                       ; 0x5b8b
    pop ax                           ; 0x5b8d
    add ax, cx                       ; 0x5b8e
    push ax                          ; 0x5b90
    mov ax, 0xc                      ; 0x5b91
    imul word [bp + 0x6]             ; 0x5b94
    mov cx, ax                       ; 0x5b97
    pop ax                           ; 0x5b99
    add ax, cx                       ; 0x5b9a
    mov bx, ax                       ; 0x5b9c
    mov al, byte [bx + 0x5c3b]       ; 0x5b9e
    sub ah, ah                       ; 0x5ba2
    and ax, strict word 0xfffe       ; 0x5ba4
    mov byte [bx + 0x5c3b], al       ; 0x5ba7
    add bx, strict word 0x5c34       ; 0x5bab
    mov si, bx                       ; 0x5baf
    lea di, word [bp - 0x0038]       ; 0x5bb1
    mov cx, ds                       ; 0x5bb4
    mov es, cx                       ; 0x5bb6
    mov cx, 6                        ; 0x5bb8
    rep movsw                        ; 0x5bbb
    mov ax, 0x16                     ; 0x5bbd
    imul word [bp + 0x6]             ; 0x5bc0
    add ax, 0x9436                   ; 0x5bc3
    push ax                          ; 0x5bc6
    lea ax, word [bp - 0x0064]       ; 0x5bc7
    push ax                          ; 0x5bca
    call aztec_strcpy                ; 0x5bcb
    add sp, byte 4                   ; 0x5bce
    mov ax, word [bp + 0x6]          ; 0x5bd1
    shl ax, 1                        ; 0x5bd4
    mov bx, ax                       ; 0x5bd6
    mov ax, word [bx - 0x6a14]       ; 0x5bd8
    mov word [bp - 0x0068], ax       ; 0x5bdc
    mov ax, word [bx - 0x6a00]       ; 0x5bdf
    mov word [bp - 0x006c], ax       ; 0x5be3
    push word [bp + 0x6]             ; 0x5be6
    push word [bss_9434]             ; 0x5be9
    push word [bp + 0x4]             ; 0x5bed
    call ds_app_IPJO                 ; 0x5bf0
    add sp, byte 6                   ; 0x5bf3
    cmp word [bp - 0x001c], byte 0   ; 0x5bf6
    je short @..api_idx_00c2_OUOT.l46 ; 0x5bfa
    cmp word [bp - 0x0038], byte 0   ; 0x5bfc
    jle short @..api_idx_00c2_OUOT.l44 ; 0x5c00
    lea ax, word [bp - 0x0064]       ; 0x5c02
    push ax                          ; 0x5c05
    lea ax, word [bp - 0x004e]       ; 0x5c06
    push ax                          ; 0x5c09
    lea ax, word [bp - 0x0038]       ; 0x5c0a
    push ax                          ; 0x5c0d
    lea ax, word [bp - 0x002c]       ; 0x5c0e
    push ax                          ; 0x5c11
    call api_idx_0002_IUPU           ; 0x5c12
    add sp, byte 8                   ; 0x5c15
    jmp short @..api_idx_00c2_OUOT.l45 ; 0x5c18
@..api_idx_00c2_OUOT.l44:
    lea ax, word [bp - 0x0064]       ; 0x5c1a
    push ax                          ; 0x5c1d
    lea ax, word [bp - 0x004e]       ; 0x5c1e
    push ax                          ; 0x5c21
    lea ax, word [bp - 0x0038]       ; 0x5c22
    push ax                          ; 0x5c25
    lea ax, word [bp - 0x002c]       ; 0x5c26
    push ax                          ; 0x5c29
    call api_idx_000e_OJVI           ; 0x5c2a
    add sp, byte 8                   ; 0x5c2d
    mov ax, word [bp - 0x0066]       ; 0x5c30
    mov word [bp - 0x0068], ax       ; 0x5c33
    mov ax, word [bp - 0x006a]       ; 0x5c36
    mov word [bp - 0x006c], ax       ; 0x5c39
@..api_idx_00c2_OUOT.l45:
    mov word [bp - 0x001c], 0        ; 0x5c3c
@..api_idx_00c2_OUOT.l46:
    lea si, word [bp - 0x002c]       ; 0x5c41
    mov ax, 0x248                    ; 0x5c44
    imul word [bp + 0x4]             ; 0x5c47
    push ax                          ; 0x5c4a
    mov ax, 0x78                     ; 0x5c4b
    imul word [bss_9434]             ; 0x5c4e
    mov cx, ax                       ; 0x5c52
    pop ax                           ; 0x5c54
    add ax, cx                       ; 0x5c55
    push ax                          ; 0x5c57
    mov ax, 0xc                      ; 0x5c58
    imul word [bp + 0x6]             ; 0x5c5b
    mov cx, ax                       ; 0x5c5e
    pop ax                           ; 0x5c60
    add ax, cx                       ; 0x5c61
    mov di, ax                       ; 0x5c63
    add ax, 0x5c34                   ; 0x5c65
    mov di, ax                       ; 0x5c68
    mov cx, ds                       ; 0x5c6a
    mov es, cx                       ; 0x5c6c
    mov cx, 6                        ; 0x5c6e
    rep movsw                        ; 0x5c71
    lea ax, word [bp - 0x004e]       ; 0x5c73
    push ax                          ; 0x5c76
    mov ax, 0x16                     ; 0x5c77
    imul word [bp + 0x6]             ; 0x5c7a
    add ax, 0x9436                   ; 0x5c7d
    push ax                          ; 0x5c80
    call aztec_strcpy                ; 0x5c81
    add sp, byte 4                   ; 0x5c84
    mov ax, word [bp - 0x0066]       ; 0x5c87
    mov cx, word [bp + 0x6]          ; 0x5c8a
    shl cx, 1                        ; 0x5c8d
    mov bx, cx                       ; 0x5c8f
    mov word [bx - 0x6a14], ax       ; 0x5c91
    mov ax, word [bp - 0x006a]       ; 0x5c95
    mov word [bx - 0x6a00], ax       ; 0x5c98
    lea si, word [bp - 0x0038]       ; 0x5c9c
    lea di, word [bp - 0x002c]       ; 0x5c9f
    mov cx, ds                       ; 0x5ca2
    mov es, cx                       ; 0x5ca4
    mov cx, 6                        ; 0x5ca6
    rep movsw                        ; 0x5ca9
    lea ax, word [bp - 0x0064]       ; 0x5cab
    push ax                          ; 0x5cae
    lea ax, word [bp - 0x004e]       ; 0x5caf
    push ax                          ; 0x5cb2
    call aztec_strcpy                ; 0x5cb3
    add sp, byte 4                   ; 0x5cb6
    mov ax, word [bp - 0x0068]       ; 0x5cb9
    mov word [bp - 0x0066], ax       ; 0x5cbc
    mov ax, word [bp - 0x006c]       ; 0x5cbf
    mov word [bp - 0x006a], ax       ; 0x5cc2
    cmp word [bp - 0x0038], byte 0   ; 0x5cc5
    jne short @..api_idx_00c2_OUOT.l47 ; 0x5cc9
    mov word [bss_9614], 0           ; 0x5ccb
    push word [bp + 0x4]             ; 0x5cd1
    call api_idx_004c_LTUL           ; 0x5cd4
    pop cx                           ; 0x5cd7
    mov ax, 6                        ; 0x5cd8
    push ax                          ; 0x5cdb
    mov ax, 0x24                     ; 0x5cdc
    push ax                          ; 0x5cdf
    mov ax, 0                        ; 0x5ce0
    push ax                          ; 0x5ce3
    mov ax, 0                        ; 0x5ce4
    push ax                          ; 0x5ce7
    push ax                          ; 0x5ce8
    mov ax, 0                        ; 0x5ce9
    sub ax, word [bp + 0x6]          ; 0x5cec
    dec ax                           ; 0x5cef
    push ax                          ; 0x5cf0
    push word [bp + 0x4]             ; 0x5cf1
    call api_idx_0012_MVLS           ; 0x5cf4
    add sp, byte 0x0e                ; 0x5cf7
    mov word [bp - 0x001a], 0        ; 0x5cfa
    jmp short @..api_idx_00c2_OUOT.l48 ; 0x5cff
@..api_idx_00c2_OUOT.l47:
    mov word [bss_9614], 1           ; 0x5d01
    push word [bp + 0x4]             ; 0x5d07
    call api_idx_004c_LTUL           ; 0x5d0a
    pop cx                           ; 0x5d0d
    mov ax, 6                        ; 0x5d0e
    push ax                          ; 0x5d11
    mov ax, 0x24                     ; 0x5d12
    push ax                          ; 0x5d15
    push word [bp - 0x0066]          ; 0x5d16
    lea ax, word [bp - 0x004e]       ; 0x5d19
    push ax                          ; 0x5d1c
    lea ax, word [bp - 0x002c]       ; 0x5d1d
    push ax                          ; 0x5d20
    push word [bp + 0x6]             ; 0x5d21
    push word [bp + 0x4]             ; 0x5d24
    call api_idx_0012_MVLS           ; 0x5d27
    add sp, byte 0x0e                ; 0x5d2a
    mov word [bp - 0x001a], 2        ; 0x5d2d
@..api_idx_00c2_OUOT.l48:
    jmp near @..api_idx_00c2_OUOT.l81 ; 0x5d32
@..api_idx_00c2_OUOT.l49:
    cmp word [bp - 0x0004], byte 0x0e ; 0x5d35
    jge short @..api_idx_00c2_OUOT.l50 ; 0x5d39
    jmp near @..api_idx_00c2_OUOT.l67 ; 0x5d3b
@..api_idx_00c2_OUOT.l50:
    mov ax, word [bp - 0x0070]       ; 0x5d3e
    add ax, strict word 0xe          ; 0x5d41
    cmp ax, word [bp - 0x0004]       ; 0x5d44
    jg short @..api_idx_00c2_OUOT.l51 ; 0x5d47
    jmp near @..api_idx_00c2_OUOT.l67 ; 0x5d49
@..api_idx_00c2_OUOT.l51:
    mov word [bp - 0x001c], 0        ; 0x5d4c
    add word [bp - 0x0004], byte 0xf2 ; 0x5d51
    mov ax, 1                        ; 0x5d55
    push ax                          ; 0x5d58
    push ax                          ; 0x5d59
    push word [bp - 0x000e]          ; 0x5d5a
    push word [bp - 0x000c]          ; 0x5d5d
    mov ax, word [bp - 0x0004]       ; 0x5d60
    imul word [bp - 0x0010]          ; 0x5d63
    add ax, word [bp - 0x000a]       ; 0x5d66
    push ax                          ; 0x5d69
    call ds_app_VIGG                 ; 0x5d6a
    add sp, byte 0x0a                ; 0x5d6d
    mov ax, 0                        ; 0x5d70
    push ax                          ; 0x5d73
    mov ax, 1                        ; 0x5d74
    push ax                          ; 0x5d77
    push word [bp - 0x000e]          ; 0x5d78
    push word [bp - 0x000c]          ; 0x5d7b
    mov ax, word [bp - 0x0004]       ; 0x5d7e
    imul word [bp - 0x0010]          ; 0x5d81
    add ax, word [bp - 0x000a]       ; 0x5d84
    push ax                          ; 0x5d87
    call ds_app_VIGG                 ; 0x5d88
    add sp, byte 0x0a                ; 0x5d8b
    mov ax, word [bp - 0x0004]       ; 0x5d8e
    shl ax, 1                        ; 0x5d91
    mov bx, ax                       ; 0x5d93
    add bx, bp                       ; 0x5d95
    cmp word [bx - 0x0084], byte 0   ; 0x5d97
    jne short @..api_idx_00c2_OUOT.l52 ; 0x5d9c
    mov ax, word [bp - 0x0016]       ; 0x5d9e
    jmp short @..api_idx_00c2_OUOT.l53 ; 0x5da1
@..api_idx_00c2_OUOT.l52:
    mov ax, word [bx - 0x0084]       ; 0x5da3
@..api_idx_00c2_OUOT.l53:
    mov word [bp - 0x0018], ax       ; 0x5da7
    mov ax, 0x1a                     ; 0x5daa
    push ax                          ; 0x5dad
    mov ax, 1                        ; 0x5dae
    push ax                          ; 0x5db1
    mov ax, 9                        ; 0x5db2
    push ax                          ; 0x5db5
    push word [bp - 0x0010]          ; 0x5db6
    push word [bp - 0x000e]          ; 0x5db9
    push word [bp - 0x000c]          ; 0x5dbc
    push word [bp - 0x000a]          ; 0x5dbf
    push word [bp - 0x0004]          ; 0x5dc2
    mov ax, 0xa                      ; 0x5dc5
    imul word [bp - 0x0018]          ; 0x5dc8
    add ax, 0x9616                   ; 0x5dcb
    push ax                          ; 0x5dce
    call api_idx_0008_SKNL           ; 0x5dcf
    add sp, byte 0x12                ; 0x5dd2
    mov ax, word [bp - 0x0004]       ; 0x5dd5
    shl ax, 1                        ; 0x5dd8
    mov bx, ax                       ; 0x5dda
    add bx, bp                       ; 0x5ddc
    mov ax, word [bx - 0x0084]       ; 0x5dde
    jmp near @..api_idx_00c2_OUOT.l63 ; 0x5de2
@..api_idx_00c2_OUOT.l54:
    mov ax, 0x12c                    ; 0x5de5
    push ax                          ; 0x5de8
    call ds_leaf_loc_UJPS            ; 0x5de9
    pop cx                           ; 0x5dec
    mov ax, 0                        ; 0x5ded
    push ax                          ; 0x5df0
    push word [bp - 0x001e]          ; 0x5df1
    push word [bp - 0x0020]          ; 0x5df4
    call thunk_13                    ; 0x5df7
    add sp, byte 6                   ; 0x5dfa
    mov ax, word [bp - 0x000c]       ; 0x5dfd
    add ax, strict word 0xa          ; 0x5e00
    push ax                          ; 0x5e03
    mov ax, word [bp - 0x0010]       ; 0x5e04
    imul word [bp - 0x0012]          ; 0x5e07
    add ax, word [bp - 0x000a]       ; 0x5e0a
    inc ax                           ; 0x5e0d
    push ax                          ; 0x5e0e
    mov ax, word [bp - 0x000c]       ; 0x5e0f
    dec ax                           ; 0x5e12
    push ax                          ; 0x5e13
    mov ax, word [bp - 0x000a]       ; 0x5e14
    dec ax                           ; 0x5e17
    push ax                          ; 0x5e18
    call thunk_4                     ; 0x5e19
    add sp, byte 8                   ; 0x5e1c
    lea ax, word [bp - 0x002c]       ; 0x5e1f
    push ax                          ; 0x5e22
    push word [bp + 0x4]             ; 0x5e23
    call api_idx_009e_ITUJ           ; 0x5e26
    add sp, byte 4                   ; 0x5e29
    push word [bp + 0x4]             ; 0x5e2c
    call api_idx_004c_LTUL           ; 0x5e2f
    pop cx                           ; 0x5e32
    cmp word [bp - 0x002c], byte 0   ; 0x5e33
    jne short @..api_idx_00c2_OUOT.l55 ; 0x5e37
    mov word [bss_9614], 0           ; 0x5e39
    mov ax, 6                        ; 0x5e3f
    push ax                          ; 0x5e42
    mov ax, 0x24                     ; 0x5e43
    push ax                          ; 0x5e46
    mov ax, 0                        ; 0x5e47
    push ax                          ; 0x5e4a
    mov ax, 0                        ; 0x5e4b
    push ax                          ; 0x5e4e
    push ax                          ; 0x5e4f
    mov ax, 0                        ; 0x5e50
    sub ax, word [bp + 0x6]          ; 0x5e53
    dec ax                           ; 0x5e56
    push ax                          ; 0x5e57
    push word [bp + 0x4]             ; 0x5e58
    call api_idx_0012_MVLS           ; 0x5e5b
    add sp, byte 0x0e                ; 0x5e5e
    mov word [bp - 0x001a], 0        ; 0x5e61
    jmp short @..api_idx_00c2_OUOT.l56 ; 0x5e66
@..api_idx_00c2_OUOT.l55:
    mov ax, 6                        ; 0x5e68
    push ax                          ; 0x5e6b
    mov ax, 0x24                     ; 0x5e6c
    push ax                          ; 0x5e6f
    push word [bp - 0x0066]          ; 0x5e70
    lea ax, word [bp - 0x004e]       ; 0x5e73
    push ax                          ; 0x5e76
    lea ax, word [bp - 0x002c]       ; 0x5e77
    push ax                          ; 0x5e7a
    push word [bp + 0x6]             ; 0x5e7b
    push word [bp + 0x4]             ; 0x5e7e
    call api_idx_0012_MVLS           ; 0x5e81
    add sp, byte 0x0e                ; 0x5e84
    mov word [bp - 0x001a], 2        ; 0x5e87
@..api_idx_00c2_OUOT.l56:
    mov ax, 0xbb                     ; 0x5e8c
    push ax                          ; 0x5e8f
    mov ax, 0xab                     ; 0x5e90
    push ax                          ; 0x5e93
    mov ax, 0x70                     ; 0x5e94
    push ax                          ; 0x5e97
    mov ax, 1                        ; 0x5e98
    push ax                          ; 0x5e9b
    call thunk_4                     ; 0x5e9c
    add sp, byte 8                   ; 0x5e9f
    jmp near @..api_idx_00c2_OUOT.l66 ; 0x5ea2
@..api_idx_00c2_OUOT.l57:
    mov ax, 0                        ; 0x5ea5
    push ax                          ; 0x5ea8
    lea ax, word [bp - 0x004e]       ; 0x5ea9
    push ax                          ; 0x5eac
    lea ax, word [bp - 0x002c]       ; 0x5ead
    push ax                          ; 0x5eb0
    push word [bp + 0x4]             ; 0x5eb1
    call loc_IUTP                    ; 0x5eb4
    add sp, byte 8                   ; 0x5eb7
    cmp ax, strict word 0xffff       ; 0x5eba
    jne short @..api_idx_00c2_OUOT.l58 ; 0x5ebd
    mov ax, 0x12c                    ; 0x5ebf
    push ax                          ; 0x5ec2
    call ds_leaf_loc_UJPS            ; 0x5ec3
    pop cx                           ; 0x5ec6
    mov ax, 0                        ; 0x5ec7
    push ax                          ; 0x5eca
    push word [bp - 0x001e]          ; 0x5ecb
    push word [bp - 0x0020]          ; 0x5ece
    call thunk_13                    ; 0x5ed1
    add sp, byte 6                   ; 0x5ed4
    mov ax, word [bp - 0x000c]       ; 0x5ed7
    add ax, strict word 0xa          ; 0x5eda
    push ax                          ; 0x5edd
    mov ax, word [bp - 0x0010]       ; 0x5ede
    imul word [bp - 0x0012]          ; 0x5ee1
    add ax, word [bp - 0x000a]       ; 0x5ee4
    inc ax                           ; 0x5ee7
    push ax                          ; 0x5ee8
    mov ax, word [bp - 0x000c]       ; 0x5ee9
    dec ax                           ; 0x5eec
    push ax                          ; 0x5eed
    mov ax, word [bp - 0x000a]       ; 0x5eee
    dec ax                           ; 0x5ef1
    push ax                          ; 0x5ef2
    call thunk_4                     ; 0x5ef3
    add sp, byte 8                   ; 0x5ef6
    lea ax, word [bp - 0x00c2]       ; 0x5ef9
    push ax                          ; 0x5efd
    mov ax, 0x1d1                    ; 0x5efe
    push ax                          ; 0x5f01
    call ds_app_mem_TIMR             ; 0x5f02
    add sp, byte 4                   ; 0x5f05
    mov ax, 1                        ; 0x5f08
    push ax                          ; 0x5f0b
    lea ax, word [bp - 0x00c2]       ; 0x5f0c
    push ax                          ; 0x5f10
    call api_idx_0004_PMIU           ; 0x5f11
    add sp, byte 4                   ; 0x5f14
@..api_idx_00c2_OUOT.l58:
    push word [bp + 0x4]             ; 0x5f17
    call api_idx_004c_LTUL           ; 0x5f1a
    pop cx                           ; 0x5f1d
    mov ax, 6                        ; 0x5f1e
    push ax                          ; 0x5f21
    mov ax, 0x24                     ; 0x5f22
    push ax                          ; 0x5f25
    push word [bp - 0x0066]          ; 0x5f26
    lea ax, word [bp - 0x004e]       ; 0x5f29
    push ax                          ; 0x5f2c
    lea ax, word [bp - 0x002c]       ; 0x5f2d
    push ax                          ; 0x5f30
    push word [bp + 0x6]             ; 0x5f31
    push word [bp + 0x4]             ; 0x5f34
    call api_idx_0012_MVLS           ; 0x5f37
    add sp, byte 0x0e                ; 0x5f3a
    mov word [bp - 0x001a], 2        ; 0x5f3d
    jmp short @..api_idx_00c2_OUOT.l66 ; 0x5f42
@..api_idx_00c2_OUOT.l59:
    mov word [bp - 0x001c], 1        ; 0x5f44
    jmp short @..api_idx_00c2_OUOT.l66 ; 0x5f49
@..api_idx_00c2_OUOT.l60:
    cmp word [bp - 0x002c], strict word 0x229 ; 0x5f4b
    jne short @..api_idx_00c2_OUOT.l61 ; 0x5f50
    mov ax, 0                        ; 0x5f52
    push ax                          ; 0x5f55
    call ds_app_HKIJ                 ; 0x5f56
    pop cx                           ; 0x5f59
    jmp short @..api_idx_00c2_OUOT.l62 ; 0x5f5a
@..api_idx_00c2_OUOT.l61:
    lea ax, word [bp - 0x002c]       ; 0x5f5c
    push ax                          ; 0x5f5f
    call api_idx_0004_UJRL           ; 0x5f60
    pop cx                           ; 0x5f63
    mov word [bss_9614], 0           ; 0x5f64
    mov ax, 6                        ; 0x5f6a
    push ax                          ; 0x5f6d
    mov ax, 0x24                     ; 0x5f6e
    push ax                          ; 0x5f71
    mov ax, 0                        ; 0x5f72
    push ax                          ; 0x5f75
    mov ax, 0                        ; 0x5f76
    push ax                          ; 0x5f79
    push ax                          ; 0x5f7a
    mov ax, 0                        ; 0x5f7b
    sub ax, word [bp + 0x6]          ; 0x5f7e
    dec ax                           ; 0x5f81
    push ax                          ; 0x5f82
    push word [bp + 0x4]             ; 0x5f83
    call api_idx_0012_MVLS           ; 0x5f86
    add sp, byte 0x0e                ; 0x5f89
    mov word [bp - 0x001a], 0        ; 0x5f8c
@..api_idx_00c2_OUOT.l62:
    jmp short @..api_idx_00c2_OUOT.l66 ; 0x5f91
@..api_idx_00c2_OUOT.l63:
    cmp ax, strict word 0            ; 0x5f93
    jne short @..api_idx_00c2_OUOT.l64 ; 0x5f96
    jmp near @..api_idx_00c2_OUOT.l54 ; 0x5f98
@..api_idx_00c2_OUOT.l64:
    cmp ax, strict word 1            ; 0x5f9b
    jne short @..api_idx_00c2_OUOT.l65 ; 0x5f9e
    jmp near @..api_idx_00c2_OUOT.l57 ; 0x5fa0
@..api_idx_00c2_OUOT.l65:
    cmp ax, strict word 2            ; 0x5fa3
    je short @..api_idx_00c2_OUOT.l59 ; 0x5fa6
    cmp ax, strict word 3            ; 0x5fa8
    je short @..api_idx_00c2_OUOT.l60 ; 0x5fab
@..api_idx_00c2_OUOT.l66:
    jmp near @..api_idx_00c2_OUOT.l81 ; 0x5fad
@..api_idx_00c2_OUOT.l67:
    mov word [bp - 0x001c], 0        ; 0x5fb0
    mov ax, word [bp - 0x0004]       ; 0x5fb5
    jmp near @..api_idx_00c2_OUOT.l77 ; 0x5fb8
@..api_idx_00c2_OUOT.l68:
    cmp word [bss_905e], byte 0x0d   ; 0x5fbb
    je short @..api_idx_00c2_OUOT.l69 ; 0x5fc0
    cmp word [bss_905e], byte 4      ; 0x5fc2
    je short @..api_idx_00c2_OUOT.l69 ; 0x5fc7
    mov ax, word [bp + 0x4]          ; 0x5fc9
    add ax, word [bss_69c8]          ; 0x5fcc
    dec ax                           ; 0x5fd0
    cwd                              ; 0x5fd1
    idiv word [bss_69c8]             ; 0x5fd2
    mov word [bss_8af0], dx          ; 0x5fd6
    mov word [bp + 0x4], dx          ; 0x5fda
    mov word [bss_967a], 0           ; 0x5fdd
    mov ax, 0                        ; 0x5fe3
    push ax                          ; 0x5fe6
    push dx                          ; 0x5fe7
    call loc_JTQP                    ; 0x5fe8
    add sp, byte 4                   ; 0x5feb
    mov word [bp - 0x001a], 2        ; 0x5fee
@..api_idx_00c2_OUOT.l69:
    jmp near @..api_idx_00c2_OUOT.l81 ; 0x5ff3
@..api_idx_00c2_OUOT.l70:
    cmp word [bss_905e], byte 0x0d   ; 0x5ff6
    je short @..api_idx_00c2_OUOT.l71 ; 0x5ffb
    cmp word [bss_905e], byte 4      ; 0x5ffd
    je short @..api_idx_00c2_OUOT.l71 ; 0x6002
    mov ax, word [bp + 0x4]          ; 0x6004
    inc ax                           ; 0x6007
    cwd                              ; 0x6008
    idiv word [bss_69c8]             ; 0x6009
    mov word [bss_8af0], dx          ; 0x600d
    mov word [bp + 0x4], dx          ; 0x6011
    mov word [bss_967a], 0           ; 0x6014
    mov ax, 0                        ; 0x601a
    push ax                          ; 0x601d
    push dx                          ; 0x601e
    call loc_JTQP                    ; 0x601f
    add sp, byte 4                   ; 0x6022
    mov word [bp - 0x001a], 2        ; 0x6025
@..api_idx_00c2_OUOT.l71:
    jmp near @..api_idx_00c2_OUOT.l81 ; 0x602a
@..api_idx_00c2_OUOT.l72:
    mov ax, word [bss_9434]          ; 0x602d
    inc ax                           ; 0x6030
    mov cx, 2                        ; 0x6031
    cwd                              ; 0x6034
    idiv cx                          ; 0x6035
    mov word [bss_9434], dx          ; 0x6037
    mov word [bss_967a], 0           ; 0x603b
    push word [bp + 0x4]             ; 0x6041
    call api_idx_004c_LTUL           ; 0x6044
    pop cx                           ; 0x6047
    call api_idx_0004_KVIP           ; 0x6048
    mov ax, 0xb6                     ; 0x604b
    push ax                          ; 0x604e
    mov ax, 0xab                     ; 0x604f
    push ax                          ; 0x6052
    mov ax, 0x70                     ; 0x6053
    push ax                          ; 0x6056
    mov ax, 1                        ; 0x6057
    push ax                          ; 0x605a
    call thunk_4                     ; 0x605b
    add sp, byte 8                   ; 0x605e
    jmp near @..api_idx_00c2_OUOT.l81 ; 0x6061
@..api_idx_00c2_OUOT.l73:
    mov ax, 0                        ; 0x6064
    push ax                          ; 0x6067
    push word [bp - 0x001e]          ; 0x6068
    push word [bp - 0x0020]          ; 0x606b
    call thunk_13                    ; 0x606e
    add sp, byte 6                   ; 0x6071
    lea ax, word [bp - 0x002c]       ; 0x6074
    push ax                          ; 0x6077
    push word [bp + 0x4]             ; 0x6078
    call api_idx_0072_IPMP           ; 0x607b
    add sp, byte 4                   ; 0x607e
    mov word [bp - 0x0014], ax       ; 0x6081
    cmp ax, strict word 0xffff       ; 0x6084
    je short @..api_idx_00c2_OUOT.l75 ; 0x6087
    mov word [bss_9434], 0           ; 0x6089
    mov word [bss_967a], 0           ; 0x608f
    mov word [bss_9614], 0           ; 0x6095
    push word [bp + 0x4]             ; 0x609b
    call api_idx_0080_MHMQ           ; 0x609e
    pop cx                           ; 0x60a1
    push word [bp + 0x4]             ; 0x60a2
    call api_idx_004c_LTUL           ; 0x60a5
    pop cx                           ; 0x60a8
    mov ax, 0xc7                     ; 0x60a9
    push ax                          ; 0x60ac
    mov ax, 0x13f                    ; 0x60ad
    push ax                          ; 0x60b0
    mov ax, 0                        ; 0x60b1
    push ax                          ; 0x60b4
    push ax                          ; 0x60b5
    call thunk_4                     ; 0x60b6
    add sp, byte 8                   ; 0x60b9
    mov ax, 6                        ; 0x60bc
    push ax                          ; 0x60bf
    mov ax, 0x24                     ; 0x60c0
    push ax                          ; 0x60c3
    mov ax, 0                        ; 0x60c4
    push ax                          ; 0x60c7
    mov ax, 0                        ; 0x60c8
    push ax                          ; 0x60cb
    push ax                          ; 0x60cc
    mov ax, 0                        ; 0x60cd
    sub ax, word [bss_95ea]          ; 0x60d0
    dec ax                           ; 0x60d4
    push ax                          ; 0x60d5
    push word [bp + 0x4]             ; 0x60d6
    call api_idx_0012_MVLS           ; 0x60d9
    add sp, byte 0x0e                ; 0x60dc
    mov word [bp - 0x001a], 0        ; 0x60df
    cmp word [bp - 0x0014], byte 0   ; 0x60e4
    jle short @..api_idx_00c2_OUOT.l74 ; 0x60e8
    push word [bp - 0x0014]          ; 0x60ea
    push word [bss_95ea]             ; 0x60ed
    mov ax, 0                        ; 0x60f1
    push ax                          ; 0x60f4
    push word [bp + 0x4]             ; 0x60f5
    call api_idx_0010_GVMH           ; 0x60f8
    add sp, byte 8                   ; 0x60fb
@..api_idx_00c2_OUOT.l74:
    jmp short @..api_idx_00c2_OUOT.l76 ; 0x60fe
@..api_idx_00c2_OUOT.l75:
    mov word [bp - 0x001a], 2        ; 0x6100
@..api_idx_00c2_OUOT.l76:
    jmp short @..api_idx_00c2_OUOT.l81 ; 0x6105
@..api_idx_00c2_OUOT.l77:
    cmp ax, strict word 0xa          ; 0x6107
    jne short @..api_idx_00c2_OUOT.l78 ; 0x610a
    jmp near @..api_idx_00c2_OUOT.l68 ; 0x610c
@..api_idx_00c2_OUOT.l78:
    cmp ax, strict word 0xb          ; 0x610f
    jne short @..api_idx_00c2_OUOT.l79 ; 0x6112
    jmp near @..api_idx_00c2_OUOT.l70 ; 0x6114
@..api_idx_00c2_OUOT.l79:
    cmp ax, strict word 0xc          ; 0x6117
    jne short @..api_idx_00c2_OUOT.l80 ; 0x611a
    jmp near @..api_idx_00c2_OUOT.l72 ; 0x611c
@..api_idx_00c2_OUOT.l80:
    cmp ax, strict word 0xd          ; 0x611f
    jne short @..api_idx_00c2_OUOT.l81 ; 0x6122
    jmp near @..api_idx_00c2_OUOT.l73 ; 0x6124
@..api_idx_00c2_OUOT.l81:
    cmp word [bp - 0x001a], byte 1   ; 0x6127
    jne short @..api_idx_00c2_OUOT.l82 ; 0x612b
    jmp near @..api_idx_00c2_OUOT.l15 ; 0x612d
@..api_idx_00c2_OUOT.l82:
    cmp word [bp - 0x001a], byte 2   ; 0x6130
    jne short @..api_idx_00c2_OUOT.l83 ; 0x6134
    jmp near @..api_idx_00c2_OUOT.l3 ; 0x6136
@..api_idx_00c2_OUOT.l83:
    mov ax, 1                        ; 0x6139
    push ax                          ; 0x613c
    push word [bp - 0x001e]          ; 0x613d
    push word [bp - 0x0020]          ; 0x6140
    call thunk_13                    ; 0x6143
    add sp, byte 6                   ; 0x6146
    mov ax, word [bp - 0x000c]       ; 0x6149
    add ax, strict word 0xa          ; 0x614c
    push ax                          ; 0x614f
    mov ax, word [bp - 0x0010]       ; 0x6150
    imul word [bp - 0x0012]          ; 0x6153
    add ax, word [bp - 0x000a]       ; 0x6156
    inc ax                           ; 0x6159
    push ax                          ; 0x615a
    mov ax, word [bp - 0x000c]       ; 0x615b
    dec ax                           ; 0x615e
    push ax                          ; 0x615f
    mov ax, word [bp - 0x000a]       ; 0x6160
    dec ax                           ; 0x6163
    push ax                          ; 0x6164
    call thunk_4                     ; 0x6165
    add sp, byte 8                   ; 0x6168
    ret                              ; 0x616b
