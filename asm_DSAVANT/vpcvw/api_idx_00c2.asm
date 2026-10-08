api_idx_00c2:
    mov ax, 0xff3e                   ; 0x54fb
    call ds_dispatch_f40b            ; 0x54fe
    mov ax, 0x248                    ; 0x5501
    imul word [bp + 0x4]             ; 0x5504
    push ax                          ; 0x5507
    mov ax, 0x78                     ; 0x5508
    imul word [api_idx_0016]         ; 0x550b
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
    test ax, data_0002               ; 0x5528
    je short @..api_idx_00c2.l2      ; 0x552b
    call api_idx_0056_2              ; 0x552d
    mov ax, 0x248                    ; 0x5530
    imul word [bp + 0x4]             ; 0x5533
    push ax                          ; 0x5536
    mov ax, 0x78                     ; 0x5537
    imul word [api_idx_0016]         ; 0x553a
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
    call api_idx_0048_2              ; 0x5556
    add sp, byte 4                   ; 0x5559
    mov word [bp - 0x0014], ax       ; 0x555c
    cmp word [bp - 0x0014], byte 0   ; 0x555f
    je short @..api_idx_00c2.l1      ; 0x5563
    push ax                          ; 0x5565
    push word [bp + 0x6]             ; 0x5566
    push word [api_idx_0016]         ; 0x5569
    push word [bp + 0x4]             ; 0x556d
    call api_idx_0010_2              ; 0x5570
    add sp, byte 8                   ; 0x5573
@..api_idx_00c2.l1:
    ret                              ; 0x5576
@..api_idx_00c2.l2:
    mov ax, 0x248                    ; 0x5577
    imul word [bp + 0x4]             ; 0x557a
    push ax                          ; 0x557d
    mov ax, 0x78                     ; 0x557e
    imul word [api_idx_0016]         ; 0x5581
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
    call ds_dispatch_f364            ; 0x55c5
    add sp, byte 4                   ; 0x55c8
    mov ax, word [bp + 0x6]          ; 0x55cb
    shl ax, 1                        ; 0x55ce
    mov bx, ax                       ; 0x55d0
    mov ax, word [bx - 0x6a14]       ; 0x55d2
    mov word [bp - 0x0066], ax       ; 0x55d6
    mov ax, word [bx - 0x6a00]       ; 0x55d9
    mov word [bp - 0x006a], ax       ; 0x55dd
    push word [bp + 0x6]             ; 0x55e0
    push word [api_idx_0016]         ; 0x55e3
    push word [bp + 0x4]             ; 0x55e7
    call ds_dispatch_c9e8            ; 0x55ea
    add sp, byte 6                   ; 0x55ed
    mov word [data_9614], 1          ; 0x55f0
    push word [bp + 0x4]             ; 0x55f6
    call api_idx_004c                ; 0x55f9
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
    call api_idx_0012_4              ; 0x5613
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
    call ds_dispatch_e928            ; 0x5655
    add sp, byte 8                   ; 0x5658
    mov word [bp - 0x001e], dx       ; 0x565b
    mov word [bp - 0x0020], ax       ; 0x565e
    mov word [bp - 0x001a], 1        ; 0x5661
    mov word [bp - 0x001c], 0        ; 0x5666
@..api_idx_00c2.l3:
    mov word [bp - 0x0002], 0        ; 0x566b
@..api_idx_00c2.l4:
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
    call ds_dispatch_baa6            ; 0x56d3
    add sp, byte 0x0e                ; 0x56d6
    inc word [bp - 0x0002]           ; 0x56d9
    mov ax, word [bp - 0x0002]       ; 0x56dc
    cmp ax, strict word 0xa          ; 0x56df
    jl short @..api_idx_00c2.l4      ; 0x56e2
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
    call ds_dispatch_baa6            ; 0x5700
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
    mov ax, api_idx_0002             ; 0x571a
    push ax                          ; 0x571d
    mov ax, 0xb                      ; 0x571e
    push ax                          ; 0x5721
    call ds_dispatch_baa6            ; 0x5722
    add sp, byte 0x0e                ; 0x5725
    mov ax, 0                        ; 0x5728
    push ax                          ; 0x572b
    mov ax, data_0042                ; 0x572c
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
    call ds_dispatch_baa6            ; 0x5744
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
    call ds_dispatch_baa6            ; 0x5766
    add sp, byte 0x0e                ; 0x5769
    mov ax, word [bp - 0x006a]       ; 0x576c
    mov word [bp - 0x0016], ax       ; 0x576f
    mov word [bp - 0x0002], 0        ; 0x5772
@..api_idx_00c2.l5:
    mov ax, word [bp - 0x0002]       ; 0x5777
    shl ax, 1                        ; 0x577a
    mov bx, ax                       ; 0x577c
    add bx, bp                       ; 0x577e
    mov word [bx - 0x0098], 1        ; 0x5780
    inc word [bp - 0x0002]           ; 0x5786
    mov ax, word [bp - 0x0002]       ; 0x5789
    cmp ax, strict word 4            ; 0x578c
    jl short @..api_idx_00c2.l5      ; 0x578f
    cmp word [data_905e], byte 4     ; 0x5791
    je short @..api_idx_00c2.l6      ; 0x5796
    cmp word [data_905e], byte 0x0d  ; 0x5798
    jne short @..api_idx_00c2.l7     ; 0x579d
@..api_idx_00c2.l6:
    mov word [bp - 0x0098], 0        ; 0x579f
    mov word [bp - 0x0092], 0        ; 0x57a5
@..api_idx_00c2.l7:
    push word [bp + 0x4]             ; 0x57ab
    call ds_dispatch_ca85            ; 0x57ae
    pop cx                           ; 0x57b1
    test ax, ax                      ; 0x57b2
    jne short @..api_idx_00c2.l8     ; 0x57b4
    mov word [bp - 0x0098], 0        ; 0x57b6
    mov word [bp - 0x0096], 0        ; 0x57bc
@..api_idx_00c2.l8:
    mov word [bp - 0x0090], 0xffff   ; 0x57c2
    mov ax, 0                        ; 0x57c8
    push ax                          ; 0x57cb
    push word [bp - 0x001e]          ; 0x57cc
    push word [bp - 0x0020]          ; 0x57cf
    call ds_dispatch_e94f            ; 0x57d2
    add sp, byte 6                   ; 0x57d5
    mov word [bp - 0x0070], 0        ; 0x57d8
    mov word [bp - 0x0002], 0        ; 0x57dd
@..api_idx_00c2.l9:
    mov ax, word [bp - 0x0002]       ; 0x57e2
    shl ax, 1                        ; 0x57e5
    mov bx, ax                       ; 0x57e7
    add bx, bp                       ; 0x57e9
    cmp word [bx - 0x0098], byte 0xff ; 0x57eb
    jne short @..api_idx_00c2.l10    ; 0x57f0
    jmp near @..api_idx_00c2.l14     ; 0x57f2
@..api_idx_00c2.l10:
    cmp word [bx - 0x0098], byte 1   ; 0x57f5
    je short @..api_idx_00c2.l11     ; 0x57fa
    jmp near @..api_idx_00c2.l13     ; 0x57fc
@..api_idx_00c2.l11:
    mov ax, word [bp - 0x0002]       ; 0x57ff
    cmp word [bp - 0x0002], byte 0   ; 0x5802
    jne short @..api_idx_00c2.l12    ; 0x5806
    mov ax, word [bp - 0x0016]       ; 0x5808
@..api_idx_00c2.l12:
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
    call ds_dispatch_bce3            ; 0x583c
    add sp, byte 0x0a                ; 0x583f
    mov ax, 0xc0                     ; 0x5842
    push ax                          ; 0x5845
    mov ax, 1                        ; 0x5846
    push ax                          ; 0x5849
    call ds_dispatch_e823            ; 0x584a
    add sp, byte 4                   ; 0x584d
    mov ax, word [bp - 0x000c]       ; 0x5850
    inc ax                           ; 0x5853
    inc ax                           ; 0x5854
    push ax                          ; 0x5855
    mov ax, 0xa                      ; 0x5856
    imul word [bp - 0x0018]          ; 0x5859
    add ax, 0x9616                   ; 0x585c
    push ax                          ; 0x585f
    call ds_dispatch_fa90            ; 0x5860
    pop cx                           ; 0x5863
    mov cx, ax                       ; 0x5864
    mov ax, word [bp - 0x000e]       ; 0x5866
    sub ax, cx                       ; 0x5869
    mov cx, 6                        ; 0x586b
    imul cx                          ; 0x586e
    mov cx, data_0002                ; 0x5870
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
    call ds_dispatch_e809            ; 0x5887
    add sp, byte 4                   ; 0x588a
    mov ax, 0                        ; 0x588d
    push ax                          ; 0x5890
    mov ax, 0xa                      ; 0x5891
    imul word [bp - 0x0018]          ; 0x5894
    add ax, 0x9616                   ; 0x5897
    push ax                          ; 0x589a
    call ds_dispatch_e84e            ; 0x589b
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
    call ds_dispatch_baa6            ; 0x58d7
    add sp, byte 0x0e                ; 0x58da
    mov ax, word [bp - 0x0002]       ; 0x58dd
    mov cx, word [bp - 0x0070]       ; 0x58e0
    shl cx, 1                        ; 0x58e3
    mov bx, cx                       ; 0x58e5
    add bx, bp                       ; 0x58e7
    mov word [bx - 0x0084], ax       ; 0x58e9
    inc word [bp - 0x0070]           ; 0x58ed
@..api_idx_00c2.l13:
    inc word [bp - 0x0002]           ; 0x58f0
    jmp near @..api_idx_00c2.l9      ; 0x58f3
@..api_idx_00c2.l14:
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
    call ds_dispatch_baa6            ; 0x5909
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
    call ds_dispatch_e8da            ; 0x592b
    add sp, byte 8                   ; 0x592e
    mov word [bp - 0x001a], 1        ; 0x5931
    mov word [bp - 0x001c], 0        ; 0x5936
@..api_idx_00c2.l15:
    cmp word [data_0e32], byte 0     ; 0x593b
    je short @..api_idx_00c2.l17     ; 0x5940
@..api_idx_00c2.l16:
    mov ax, 0x59fe                   ; 0x5942
    push ax                          ; 0x5945
    call ds_dispatch_b90d            ; 0x5946
    pop cx                           ; 0x5949
    dec ax                           ; 0x594a
    mov word [bp - 0x0004], ax       ; 0x594b
    cmp word [data_5b3e], byte 0     ; 0x594e
    je short @..api_idx_00c2.l16     ; 0x5953
    jmp near @..api_idx_00c2.l40     ; 0x5955
@..api_idx_00c2.l17:
    cmp word [bp - 0x001c], byte 0   ; 0x5958
    je short @..api_idx_00c2.l18     ; 0x595c
    jmp near @..api_idx_00c2.l34     ; 0x595e
@..api_idx_00c2.l18:
    mov word [bp - 0x0004], 0xffff   ; 0x5961
    mov word [bp - 0x0002], 0        ; 0x5966
@..api_idx_00c2.l19:
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
    call loc_1c25                    ; 0x5999
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
    call ds_dispatch_e8da            ; 0x59bb
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
    call loc_1c25                    ; 0x59ef
    add sp, byte 0x0a                ; 0x59f2
@..api_idx_00c2.l20:
    mov ax, 1                        ; 0x59f5
    push ax                          ; 0x59f8
    call ds_dispatch_ea50            ; 0x59f9
    pop cx                           ; 0x59fc
    test ax, ax                      ; 0x59fd
    jne short @..api_idx_00c2.l21    ; 0x59ff
    jmp short @..api_idx_00c2.l20    ; 0x5a01
@..api_idx_00c2.l21:
    mov ax, 1                        ; 0x5a03
    push ax                          ; 0x5a06
    call ds_dispatch_eb32            ; 0x5a07
    pop cx                           ; 0x5a0a
    sub ah, ah                       ; 0x5a0b
    mov word [bp - 0x009a], ax       ; 0x5a0d
    cmp ax, strict word 0x30         ; 0x5a11
    jl short @..api_idx_00c2.l23     ; 0x5a14
    cmp ax, strict word 0x39         ; 0x5a16
    jg short @..api_idx_00c2.l23     ; 0x5a19
    add ax, strict word 0xffcf       ; 0x5a1b
    mov word [bp - 0x0004], ax       ; 0x5a1e
    cmp ax, strict word 0            ; 0x5a21
    jge short @..api_idx_00c2.l22    ; 0x5a24
    add word [bp - 0x0004], byte 0x0a ; 0x5a26
@..api_idx_00c2.l22:
    jmp short @..api_idx_00c2.l32    ; 0x5a2a
@..api_idx_00c2.l23:
    mov ax, word [bp - 0x009a]       ; 0x5a2c
    jmp short @..api_idx_00c2.l31    ; 0x5a30
