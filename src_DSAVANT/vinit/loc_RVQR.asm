; auto-generated
loc_RVQR:
    mov ax, 0xfce6                   ; 0x03a8
    call aztec_csav                  ; 0x03ab
    mov word [bss_905c], 0           ; 0x03ae
    mov word [bss_0e30], 0           ; 0x03b4
    mov word [bss_0e2e], 0           ; 0x03ba
    mov word [bss_0e2c], 0           ; 0x03c0
    mov word [bss_0e2a], 0           ; 0x03c6
    mov word [bss_0e28], 0           ; 0x03cc
    mov word [bss_0e26], 0           ; 0x03d2
    mov ax, 0                        ; 0x03d8
    push ax                          ; 0x03db
    mov ax, report_line1_none        ; 0x03dc
    push ax                          ; 0x03df
    call aztec_open                  ; 0x03e0
    add sp, byte 4                   ; 0x03e3
    mov word [bss_9088], ax          ; 0x03e6
    cmp ax, strict word 0xffff       ; 0x03e9
    jne short @..loc_RVQR.l1         ; 0x03ec
    mov ax, 1                        ; 0x03ee
    push ax                          ; 0x03f1
    call release_and_exit            ; 0x03f2
    pop cx                           ; 0x03f5
@..loc_RVQR.l1:
    mov ax, 0x34c                    ; 0x03f6
    push ax                          ; 0x03f9
    mov ax, bss_5642                 ; 0x03fa
    push ax                          ; 0x03fd
    push word [bss_9088]             ; 0x03fe
    call aztec_read                  ; 0x0402
    add sp, byte 6                   ; 0x0405
    push word [bss_9088]             ; 0x0408
    call aztec_close                 ; 0x040c
    pop cx                           ; 0x040f
    mov word [message_delay], 0x36   ; 0x0410
    mov al, byte [bss_5986]          ; 0x0416
    sub ah, ah                       ; 0x0419
    mov word [bss_9058], ax          ; 0x041b
    mov al, byte [bss_598a]          ; 0x041e
    sub ah, ah                       ; 0x0421
    jmp short @..loc_RVQR.l6         ; 0x0423
@..loc_RVQR.l2:
    mov ax, 2                        ; 0x0425
    push ax                          ; 0x0428
    call release_and_exit            ; 0x0429
    pop cx                           ; 0x042c
    jmp short @..loc_RVQR.l7         ; 0x042d
@..loc_RVQR.l3:
    mov word [bp - 0x0002], 1        ; 0x042f
    jmp short @..loc_RVQR.l7         ; 0x0434
@..loc_RVQR.l4:
    mov word [bp - 0x0002], 2        ; 0x0436
    jmp short @..loc_RVQR.l7         ; 0x043b
@..loc_RVQR.l5:
    mov ax, 2                        ; 0x043d
    push ax                          ; 0x0440
    call release_and_exit            ; 0x0441
    pop cx                           ; 0x0444
    jmp short @..loc_RVQR.l7         ; 0x0445
@..loc_RVQR.l6:
    cmp ax, strict word 1            ; 0x0447
    je short @..loc_RVQR.l3          ; 0x044a
    cmp ax, strict word 2            ; 0x044c
    je short @..loc_RVQR.l4          ; 0x044f
    cmp ax, 0xff                     ; 0x0451
    je short @..loc_RVQR.l2          ; 0x0454
    jmp short @..loc_RVQR.l5         ; 0x0456
@..loc_RVQR.l7:
    push word [bp - 0x0002]          ; 0x0458
    call ds_bios_video_loc_LILQ      ; 0x045b
    pop cx                           ; 0x045e
    mov word [bss_9056], ax          ; 0x045f
    test ax, 1                       ; 0x0462
    jne short @..loc_RVQR.l8         ; 0x0465
    test ax, 2                       ; 0x0467
    je short @..loc_RVQR.l9          ; 0x046a
@..loc_RVQR.l8:
    jmp short @..loc_RVQR.l10        ; 0x046c
@..loc_RVQR.l9:
    mov ax, 3                        ; 0x046e
    push ax                          ; 0x0471
    call release_and_exit            ; 0x0472
    pop cx                           ; 0x0475
@..loc_RVQR.l10:
    mov word [bss_0e34], 0x905c      ; 0x0476
    mov al, byte [bss_5984]          ; 0x047c
    sub ah, ah                       ; 0x047f
    mov word [bp - 0x000a], ax       ; 0x0481
    cmp ax, strict word 6            ; 0x0484
    jne short @..loc_RVQR.l11        ; 0x0487
    mov word [bp - 0x000a], 4        ; 0x0489
@..loc_RVQR.l11:
    mov ax, word [bss_5980]          ; 0x048e
    cmp word [bp - 0x000a], byte 0   ; 0x0491
    jne short @..loc_RVQR.l12        ; 0x0495
    mov ax, 0                        ; 0x0497
@..loc_RVQR.l12:
    mov word [bp - 0x000c], ax       ; 0x049a
    push word [bp - 0x000a]          ; 0x049d
    push ax                          ; 0x04a0
    call ds_loc_QURR                 ; 0x04a1
    add sp, byte 4                   ; 0x04a4
    mov word [bss_59f8], 0x905c      ; 0x04a7
    mov word [bss_0e32], 0           ; 0x04ad
    mov word [hotspot_hit], 0        ; 0x04b3
    mov word [bp - 0x0006], 0        ; 0x04b9
@..loc_RVQR.l13:
    mov ax, 0x64                     ; 0x04be
    push ax                          ; 0x04c1
    call random_below                ; 0x04c2
    pop cx                           ; 0x04c5
    mov bx, word [bp - 0x0006]       ; 0x04c6
    mov byte [bx + bss_5990], al     ; 0x04c9
    inc word [bp - 0x0006]           ; 0x04cd
    mov ax, word [bp - 0x0006]       ; 0x04d0
    cmp ax, strict word 0x64         ; 0x04d3
    jl short @..loc_RVQR.l13         ; 0x04d6
    call ds_app_OGNR                 ; 0x04d8
    mov ax, 0                        ; 0x04db
    push ax                          ; 0x04de
    push ax                          ; 0x04df
    call gfx_get_free_space          ; 0x04e0
    add sp, byte 4                   ; 0x04e3
    cmp dx, byte 1                   ; 0x04e6
    jg short @..loc_RVQR.l14         ; 0x04e9
    jne short @..loc_RVQR.l15        ; 0x04eb
    cmp ax, 0x6200                   ; 0x04ed
    jb short @..loc_RVQR.l15         ; 0x04f0
@..loc_RVQR.l14:
    jmp short @..loc_RVQR.l16        ; 0x04f2
@..loc_RVQR.l15:
    mov ax, 4                        ; 0x04f4
    push ax                          ; 0x04f7
    call release_and_exit            ; 0x04f8
    pop cx                           ; 0x04fb
@..loc_RVQR.l16:
    mov ax, 0                        ; 0x04fc
    push ax                          ; 0x04ff
    mov ax, dseg_90a5                ; 0x0500
    push ax                          ; 0x0503
    call api_idx_0002_JOSN           ; 0x0504
    add sp, byte 4                   ; 0x0507
    mov ax, 1                        ; 0x050a
    push ax                          ; 0x050d
    mov ax, dseg_90b1                ; 0x050e
    push ax                          ; 0x0511
    call api_idx_0002_JOSN           ; 0x0512
    add sp, byte 4                   ; 0x0515
    mov ax, 2                        ; 0x0518
    push ax                          ; 0x051b
    mov ax, dseg_90bd                ; 0x051c
    push ax                          ; 0x051f
    call api_idx_0002_JOSN           ; 0x0520
    add sp, byte 4                   ; 0x0523
    mov ax, 3                        ; 0x0526
    push ax                          ; 0x0529
    mov ax, dseg_90c9                ; 0x052a
    push ax                          ; 0x052d
    call api_idx_0002_JOSN           ; 0x052e
    add sp, byte 4                   ; 0x0531
    mov ax, 4                        ; 0x0534
    push ax                          ; 0x0537
    mov ax, dseg_90d5                ; 0x0538
    push ax                          ; 0x053b
    call api_idx_0002_JOSN           ; 0x053c
    add sp, byte 4                   ; 0x053f
    mov ax, 5                        ; 0x0542
    push ax                          ; 0x0545
    mov ax, dseg_90e1                ; 0x0546
    push ax                          ; 0x0549
    call api_idx_0002_JOSN           ; 0x054a
    add sp, byte 4                   ; 0x054d
    mov ax, 6                        ; 0x0550
    push ax                          ; 0x0553
    mov ax, dseg_90ed                ; 0x0554
    push ax                          ; 0x0557
    call api_idx_0002_JOSN           ; 0x0558
    add sp, byte 4                   ; 0x055b
    mov ax, 7                        ; 0x055e
    push ax                          ; 0x0561
    mov ax, dseg_90f9                ; 0x0562
    push ax                          ; 0x0565
    call api_idx_0002_JOSN           ; 0x0566
    add sp, byte 4                   ; 0x0569
    call ds_app_OOHU                 ; 0x056c
    mov ax, dseg_9105                ; 0x056f
    push ax                          ; 0x0572
    call load_file_data              ; 0x0573
    pop cx                           ; 0x0576
    mov word [bss_0e30], dx          ; 0x0577
    mov word [bss_0e2e], ax          ; 0x057b
    mov ax, dseg_9111                ; 0x057e
    push ax                          ; 0x0581
    call load_file_data              ; 0x0582
    pop cx                           ; 0x0585
    mov word [bss_0e2c], dx          ; 0x0586
    mov word [bss_0e2a], ax          ; 0x058a
    mov ax, dseg_911d                ; 0x058d
    push ax                          ; 0x0590
    call load_file_data              ; 0x0591
    pop cx                           ; 0x0594
    mov word [bss_0e28], dx          ; 0x0595
    mov word [bss_0e26], ax          ; 0x0599
    mov ax, 3                        ; 0x059c
    push ax                          ; 0x059f
    mov ax, dseg_9129                ; 0x05a0
    push ax                          ; 0x05a3
    call api_idx_0002_OGHR           ; 0x05a4
    add sp, byte 4                   ; 0x05a7
    mov word [bss_1008], 0x905c      ; 0x05aa
    mov ax, 0x52                     ; 0x05b0
    push ax                          ; 0x05b3
    mov ax, record_size              ; 0x05b4
    push ax                          ; 0x05b7
    mov ax, dseg_9136                ; 0x05b8
    push ax                          ; 0x05bb
    call api_idx_0002_GHOH           ; 0x05bc
    add sp, byte 6                   ; 0x05bf
    mov ax, 0x30c                    ; 0x05c2
    push ax                          ; 0x05c5
    mov ax, disk_header              ; 0x05c6
    push ax                          ; 0x05c9
    mov ax, dseg_9141                ; 0x05ca
    push ax                          ; 0x05cd
    call api_idx_0002_GHOH           ; 0x05ce
    add sp, byte 6                   ; 0x05d1
    mov ax, 0x2dfe                   ; 0x05d4
    push ax                          ; 0x05d7
    mov ax, bss_100c                 ; 0x05d8
    push ax                          ; 0x05db
    mov ax, dseg_914a                ; 0x05dc
    push ax                          ; 0x05df
    call api_idx_0002_GHOH           ; 0x05e0
    add sp, byte 6                   ; 0x05e3
    mov ax, 0x18                     ; 0x05e6
    push ax                          ; 0x05e9
    mov ax, bss_906e                 ; 0x05ea
    push ax                          ; 0x05ed
    mov ax, dseg_9152                ; 0x05ee
    push ax                          ; 0x05f1
    call api_idx_0002_GHOH           ; 0x05f2
    add sp, byte 6                   ; 0x05f5
    mov ax, dseg_915d                ; 0x05f8
    push ax                          ; 0x05fb
    call api_idx_0002_TJHL           ; 0x05fc
    pop cx                           ; 0x05ff
    mov ax, 0                        ; 0x0600
    push ax                          ; 0x0603
    push ax                          ; 0x0604
    mov ax, dseg_9166                ; 0x0605
    push ax                          ; 0x0608
    call data_file_path              ; 0x0609
    add sp, byte 4                   ; 0x060c
    push ax                          ; 0x060f
    call aztec_open                  ; 0x0610
    add sp, byte 4                   ; 0x0613
    mov word [msg_dbs_fd], ax        ; 0x0616
    cmp ax, strict word 0xffff       ; 0x0619
    jne short @..loc_RVQR.l17        ; 0x061c
    mov ax, 9                        ; 0x061e
    push ax                          ; 0x0621
    call release_and_exit            ; 0x0622
    pop cx                           ; 0x0625
@..loc_RVQR.l17:
    mov word [bss_5212], 0xffff      ; 0x0626
    mov word [bss_5214], 0           ; 0x062c
@..loc_RVQR.l18:
    mov ax, word [bss_5214]          ; 0x0632
    shl ax, 1                        ; 0x0635
    mov bx, ax                       ; 0x0637
    mov word [bx + 0x3e0a], 0xffff   ; 0x0639
    inc word [bss_5214]              ; 0x063f
    mov ax, word [bss_5214]          ; 0x0643
    cmp ax, strict word 4            ; 0x0646
    jl short @..loc_RVQR.l18         ; 0x0649
    mov word [bss_5214], 0           ; 0x064b
    mov word [bp - 0x0006], 0        ; 0x0651
@..loc_RVQR.l19:
    mov ax, word [bp - 0x0006]       ; 0x0656
    shl ax, 1                        ; 0x0659
    mov bx, ax                       ; 0x065b
    mov word [bx + saved_screen_kind], 0xffff ; 0x065d
    mov ax, 0x14                     ; 0x0663
    imul word [bp - 0x0006]          ; 0x0666
    mov bx, ax                       ; 0x0669
    mov byte [bx + saved_screen_file], 0 ; 0x066b
    mov ax, word [bp - 0x0006]       ; 0x0670
    shl ax, 1                        ; 0x0673
    shl ax, 1                        ; 0x0675
    mov bx, ax                       ; 0x0677
    mov word [bx + 0x5be2], 0        ; 0x0679
    mov word [bx + saved_screen_ref], 0 ; 0x067f
    inc word [bp - 0x0006]           ; 0x0685
    mov ax, word [bp - 0x0006]       ; 0x0688
    cmp ax, strict word 5            ; 0x068b
    jl short @..loc_RVQR.l19         ; 0x068e
    mov ax, 0                        ; 0x0690
    push ax                          ; 0x0693
    push ax                          ; 0x0694
    mov ax, dseg_916e                ; 0x0695
    push ax                          ; 0x0698
    call data_file_path              ; 0x0699
    add sp, byte 4                   ; 0x069c
    push ax                          ; 0x069f
    call aztec_open                  ; 0x06a0
    add sp, byte 4                   ; 0x06a3
    mov word [data_file_fd], ax      ; 0x06a6
    cmp ax, strict word 0xffff       ; 0x06a9
    jne short @..loc_RVQR.l20        ; 0x06ac
    mov ax, 0xa                      ; 0x06ae
    push ax                          ; 0x06b1
    call release_and_exit            ; 0x06b2
    pop cx                           ; 0x06b5
@..loc_RVQR.l20:
    call ds_app_string_KVNI          ; 0x06b6
    mov ax, 1                        ; 0x06b9
    push ax                          ; 0x06bc
    mov ax, 0                        ; 0x06bd
    push ax                          ; 0x06c0
    push ax                          ; 0x06c1
    call load_sound_file             ; 0x06c2
    add sp, byte 6                   ; 0x06c5
    mov ax, 1                        ; 0x06c8
    push ax                          ; 0x06cb
    push ax                          ; 0x06cc
    push ax                          ; 0x06cd
    call load_sound_file             ; 0x06ce
    add sp, byte 6                   ; 0x06d1
    mov ax, 1                        ; 0x06d4
    push ax                          ; 0x06d7
    mov ax, 2                        ; 0x06d8
    push ax                          ; 0x06db
    push ax                          ; 0x06dc
    call load_sound_file             ; 0x06dd
    add sp, byte 6                   ; 0x06e0
    mov ax, 1                        ; 0x06e3
    push ax                          ; 0x06e6
    mov ax, 3                        ; 0x06e7
    push ax                          ; 0x06ea
    push ax                          ; 0x06eb
    call load_sound_file             ; 0x06ec
    add sp, byte 6                   ; 0x06ef
    mov ax, 1                        ; 0x06f2
    push ax                          ; 0x06f5
    mov ax, 4                        ; 0x06f6
    push ax                          ; 0x06f9
    push ax                          ; 0x06fa
    call load_sound_file             ; 0x06fb
    add sp, byte 6                   ; 0x06fe
    mov ax, 1                        ; 0x0701
    push ax                          ; 0x0704
    mov ax, 8                        ; 0x0705
    push ax                          ; 0x0708
    push ax                          ; 0x0709
    call load_sound_file             ; 0x070a
    add sp, byte 6                   ; 0x070d
    mov ax, 1                        ; 0x0710
    push ax                          ; 0x0713
    mov ax, 9                        ; 0x0714
    push ax                          ; 0x0717
    push ax                          ; 0x0718
    call load_sound_file             ; 0x0719
    add sp, byte 6                   ; 0x071c
    mov word [loaded_sound_id], 0xffff ; 0x071f
    mov word [loaded_score_num], 0xffff ; 0x0725
    mov word [bss_100a], 0x905c      ; 0x072b
    mov word [bss_0e20], 0           ; 0x0731
    mov word [bss_0e1e], 0           ; 0x0737
    mov word [bss_0e1c], 0           ; 0x073d
    mov word [bss_0e1a], 0           ; 0x0743
    mov word [bss_0e18], 0           ; 0x0749
    mov word [bss_0e16], 0           ; 0x074f
    mov word [maze_data], 0          ; 0x0755
    mov word [maze_tables], 0        ; 0x075b
    mov word [bss_0e10], 0           ; 0x0761
    mov word [bss_0e0e], 0           ; 0x0767
    mov ax, 0x400                    ; 0x076d
    mov dx, 0                        ; 0x0770
    push dx                          ; 0x0773
    push ax                          ; 0x0774
    call app_malloc                  ; 0x0775
    add sp, byte 4                   ; 0x0778
    mov word [bss_0e20], dx          ; 0x077b
    mov word [bss_0e1e], ax          ; 0x077f
    cmp word [bss_0e20], byte 0      ; 0x0782
    jne short @..loc_RVQR.l21        ; 0x0787
    cmp word [bss_0e1e], byte 0      ; 0x0789
@..loc_RVQR.l21:
    jne short @..loc_RVQR.l22        ; 0x078e
    mov ax, 0xd                      ; 0x0790
    push ax                          ; 0x0793
    call release_and_exit            ; 0x0794
    pop cx                           ; 0x0797
@..loc_RVQR.l22:
    mov ax, 0x1000                   ; 0x0798
    mov dx, 0                        ; 0x079b
    push dx                          ; 0x079e
    push ax                          ; 0x079f
    call app_malloc                  ; 0x07a0
    add sp, byte 4                   ; 0x07a3
    mov word [bss_0e1c], dx          ; 0x07a6
    mov word [bss_0e1a], ax          ; 0x07aa
    cmp word [bss_0e1c], byte 0      ; 0x07ad
    jne short @..loc_RVQR.l23        ; 0x07b2
    cmp word [bss_0e1a], byte 0      ; 0x07b4
@..loc_RVQR.l23:
    jne short @..loc_RVQR.l24        ; 0x07b9
    mov ax, 0xd                      ; 0x07bb
    push ax                          ; 0x07be
    call release_and_exit            ; 0x07bf
    pop cx                           ; 0x07c2
@..loc_RVQR.l24:
    mov ax, 0x1000                   ; 0x07c3
    mov dx, 0                        ; 0x07c6
    push dx                          ; 0x07c9
    push ax                          ; 0x07ca
    call app_malloc                  ; 0x07cb
    add sp, byte 4                   ; 0x07ce
    mov word [bss_0e18], dx          ; 0x07d1
    mov word [bss_0e16], ax          ; 0x07d5
    cmp word [bss_0e18], byte 0      ; 0x07d8
    jne short @..loc_RVQR.l25        ; 0x07dd
    cmp word [bss_0e16], byte 0      ; 0x07df
@..loc_RVQR.l25:
    jne short @..loc_RVQR.l26        ; 0x07e4
    mov ax, 0xd                      ; 0x07e6
    push ax                          ; 0x07e9
    call release_and_exit            ; 0x07ea
    pop cx                           ; 0x07ed
@..loc_RVQR.l26:
    push word [bss_5528]             ; 0x07ee
    call aztec_malloc                ; 0x07f2
    pop cx                           ; 0x07f5
    mov word [maze_data], ax         ; 0x07f6
    cmp word [maze_data], byte 0     ; 0x07f9
    jne short @..loc_RVQR.l27        ; 0x07fe
    mov ax, 0xd                      ; 0x0800
    push ax                          ; 0x0803
    call release_and_exit            ; 0x0804
    pop cx                           ; 0x0807
@..loc_RVQR.l27:
    push word [bss_552a]             ; 0x0808
    call aztec_malloc                ; 0x080c
    pop cx                           ; 0x080f
    mov word [maze_tables], ax       ; 0x0810
    cmp word [maze_tables], byte 0   ; 0x0813
    jne short @..loc_RVQR.l28        ; 0x0818
    mov ax, 0xd                      ; 0x081a
    push ax                          ; 0x081d
    call release_and_exit            ; 0x081e
    pop cx                           ; 0x0821
@..loc_RVQR.l28:
    mov ax, 0xc00                    ; 0x0822
    push ax                          ; 0x0825
    call aztec_malloc                ; 0x0826
    pop cx                           ; 0x0829
    mov word [bss_0e10], ax          ; 0x082a
    cmp word [bss_0e10], byte 0      ; 0x082d
    jne short @..loc_RVQR.l29        ; 0x0832
    mov ax, 0xd                      ; 0x0834
    push ax                          ; 0x0837
    call release_and_exit            ; 0x0838
    pop cx                           ; 0x083b
@..loc_RVQR.l29:
    mov ax, 0x400                    ; 0x083c
    push ax                          ; 0x083f
    call aztec_malloc                ; 0x0840
    pop cx                           ; 0x0843
    mov word [bss_0e0e], ax          ; 0x0844
    cmp word [bss_0e0e], byte 0      ; 0x0847
    jne short @..loc_RVQR.l30        ; 0x084c
    mov ax, 0xd                      ; 0x084e
    push ax                          ; 0x0851
    call release_and_exit            ; 0x0852
    pop cx                           ; 0x0855
@..loc_RVQR.l30:
    mov word [bss_904c], 0           ; 0x0856
    mov ax, 0                        ; 0x085c
    push ax                          ; 0x085f
    push ax                          ; 0x0860
    mov ax, dseg_917b                ; 0x0861
    push ax                          ; 0x0864
    call data_file_path              ; 0x0865
    add sp, byte 4                   ; 0x0868
    push ax                          ; 0x086b
    call aztec_open                  ; 0x086c
    add sp, byte 4                   ; 0x086f
    mov word [bp - 0x0004], ax       ; 0x0872
    cmp ax, strict word 0xffff       ; 0x0875
    jne short @..loc_RVQR.l31        ; 0x0878
    mov ax, 0xe                      ; 0x087a
    push ax                          ; 0x087d
    call release_and_exit            ; 0x087e
    pop cx                           ; 0x0881
@..loc_RVQR.l31:
    mov ax, 0x300                    ; 0x0882
    push ax                          ; 0x0885
    lea ax, word [bp - 0x031a]       ; 0x0886
    push ax                          ; 0x088a
    push word [bp - 0x0004]          ; 0x088b
    call aztec_read                  ; 0x088e
    add sp, byte 6                   ; 0x0891
    push word [bp - 0x0004]          ; 0x0894
    call aztec_close                 ; 0x0897
    pop cx                           ; 0x089a
    lea ax, word [bp - 0x031a]       ; 0x089b
    push ax                          ; 0x089f
    mov al, byte [bss_5979]          ; 0x08a0
    cbw                              ; 0x08a3
    push ax                          ; 0x08a4
    mov al, byte [bss_5978]          ; 0x08a5
    cbw                              ; 0x08a8
    push ax                          ; 0x08a9
    call build_palette_map           ; 0x08aa
    add sp, byte 6                   ; 0x08ad
    mov word [game_state], 1         ; 0x08b0
    ret                              ; 0x08b6
