api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x35fc
    call ds_dispatch_f40b            ; 0x35ff
    mov ax, 0x248                    ; 0x3602
    imul word [bp + 0x4]             ; 0x3605
    mov bx, ax                       ; 0x3608
    mov al, byte [bx + 0x5e2d]       ; 0x360a
    sub ah, ah                       ; 0x360e
    jmp near @..api_idx_0004_7.l1    ; 0x3610
    mov ax, 0x91ec                   ; 0x3613
    push ax                          ; 0x3616
    mov ax, 0x91e5                   ; 0x3617
    push ax                          ; 0x361a
    mov ax, 0x91dc                   ; 0x361b
    push ax                          ; 0x361e
    mov ax, 0x91d1                   ; 0x361f
    push ax                          ; 0x3622
    push word [bp + 0x4]             ; 0x3623
    call api_idx_0004_6              ; 0x3626
    add sp, byte 0x0a                ; 0x3629
    jmp near @..api_idx_0004_7.l2    ; 0x362c
    mov ax, 0x9212                   ; 0x362f
    push ax                          ; 0x3632
    mov ax, 0x920b                   ; 0x3633
    push ax                          ; 0x3636
    mov ax, 0x9202                   ; 0x3637
    push ax                          ; 0x363a
    mov ax, 0x91f7                   ; 0x363b
    push ax                          ; 0x363e
    push word [bp + 0x4]             ; 0x363f
    call api_idx_0004_6              ; 0x3642
    add sp, byte 0x0a                ; 0x3645
    jmp near @..api_idx_0004_7.l2    ; 0x3648
    mov ax, 0x9238                   ; 0x364b
    push ax                          ; 0x364e
    mov ax, 0x9231                   ; 0x364f
    push ax                          ; 0x3652
    mov ax, 0x9228                   ; 0x3653
    push ax                          ; 0x3656
    mov ax, 0x921d                   ; 0x3657
    push ax                          ; 0x365a
    push word [bp + 0x4]             ; 0x365b
    call api_idx_0004_6              ; 0x365e
    add sp, byte 0x0a                ; 0x3661
    jmp near @..api_idx_0004_7.l2    ; 0x3664
    mov ax, 0x925e                   ; 0x3667
    push ax                          ; 0x366a
    mov ax, 0x9257                   ; 0x366b
    push ax                          ; 0x366e
    mov ax, 0x924e                   ; 0x366f
    push ax                          ; 0x3672
    mov ax, 0x9243                   ; 0x3673
    push ax                          ; 0x3676
    push word [bp + 0x4]             ; 0x3677
    call api_idx_0004_6              ; 0x367a
    add sp, byte 0x0a                ; 0x367d
    jmp near @..api_idx_0004_7.l2    ; 0x3680
    mov ax, 0x9284                   ; 0x3683
    push ax                          ; 0x3686
    mov ax, 0x927d                   ; 0x3687
    push ax                          ; 0x368a
    mov ax, 0x9274                   ; 0x368b
    push ax                          ; 0x368e
    mov ax, 0x9269                   ; 0x368f
    push ax                          ; 0x3692
    push word [bp + 0x4]             ; 0x3693
    call api_idx_0004_6              ; 0x3696
    add sp, byte 0x0a                ; 0x3699
    jmp near @..api_idx_0004_7.l2    ; 0x369c
    mov ax, 0x92aa                   ; 0x369f
    push ax                          ; 0x36a2
    mov ax, 0x92a3                   ; 0x36a3
    push ax                          ; 0x36a6
    mov ax, 0x929a                   ; 0x36a7
    push ax                          ; 0x36aa
    mov ax, 0x928f                   ; 0x36ab
    push ax                          ; 0x36ae
    push word [bp + 0x4]             ; 0x36af
    call api_idx_0004_6              ; 0x36b2
    add sp, byte 0x0a                ; 0x36b5
    jmp near @..api_idx_0004_7.l2    ; 0x36b8
    mov ax, 0x92d0                   ; 0x36bb
    push ax                          ; 0x36be
    mov ax, 0x92c9                   ; 0x36bf
    push ax                          ; 0x36c2
    mov ax, 0x92c0                   ; 0x36c3
    push ax                          ; 0x36c6
    mov ax, 0x92b5                   ; 0x36c7
    push ax                          ; 0x36ca
    push word [bp + 0x4]             ; 0x36cb
    call api_idx_0004_6              ; 0x36ce
    add sp, byte 0x0a                ; 0x36d1
    jmp near @..api_idx_0004_7.l2    ; 0x36d4
    mov ax, 0x92f6                   ; 0x36d7
    push ax                          ; 0x36da
    mov ax, 0x92ef                   ; 0x36db
    push ax                          ; 0x36de
    mov ax, 0x92e6                   ; 0x36df
    push ax                          ; 0x36e2
    mov ax, 0x92db                   ; 0x36e3
    push ax                          ; 0x36e6
    push word [bp + 0x4]             ; 0x36e7
    call api_idx_0004_6              ; 0x36ea
    add sp, byte 0x0a                ; 0x36ed
    jmp near @..api_idx_0004_7.l2    ; 0x36f0
    mov ax, 0x931c                   ; 0x36f3
    push ax                          ; 0x36f6
    mov ax, 0x9315                   ; 0x36f7
    push ax                          ; 0x36fa
    mov ax, 0x930c                   ; 0x36fb
    push ax                          ; 0x36fe
    mov ax, 0x9301                   ; 0x36ff
    push ax                          ; 0x3702
    push word [bp + 0x4]             ; 0x3703
    call api_idx_0004_6              ; 0x3706
    add sp, byte 0x0a                ; 0x3709
    jmp near @..api_idx_0004_7.l2    ; 0x370c
    mov ax, 0x9342                   ; 0x370f
    push ax                          ; 0x3712
    mov ax, 0x933b                   ; 0x3713
    push ax                          ; 0x3716
    mov ax, 0x9332                   ; 0x3717
    push ax                          ; 0x371a
    mov ax, 0x9327                   ; 0x371b
    push ax                          ; 0x371e
    push word [bp + 0x4]             ; 0x371f
    call api_idx_0004_6              ; 0x3722
    add sp, byte 0x0a                ; 0x3725
    jmp near @..api_idx_0004_7.l2    ; 0x3728
    mov ax, 0x9368                   ; 0x372b
    push ax                          ; 0x372e
    mov ax, 0x9361                   ; 0x372f
    push ax                          ; 0x3732
    mov ax, 0x9358                   ; 0x3733
    push ax                          ; 0x3736
    mov ax, 0x934d                   ; 0x3737
    push ax                          ; 0x373a
    push word [bp + 0x4]             ; 0x373b
    call api_idx_0004_6              ; 0x373e
    add sp, byte 0x0a                ; 0x3741
    jmp short @..api_idx_0004_7.l2   ; 0x3744
    mov ax, 0x938e                   ; 0x3746
    push ax                          ; 0x3749
    mov ax, 0x9387                   ; 0x374a
    push ax                          ; 0x374d
    mov ax, 0x937e                   ; 0x374e
    push ax                          ; 0x3751
    mov ax, 0x9373                   ; 0x3752
    push ax                          ; 0x3755
    push word [bp + 0x4]             ; 0x3756
    call api_idx_0004_6              ; 0x3759
    add sp, byte 0x0a                ; 0x375c
    jmp short @..api_idx_0004_7.l2   ; 0x375f
    mov ax, 0x93b4                   ; 0x3761
    push ax                          ; 0x3764
    mov ax, 0x93ad                   ; 0x3765
    push ax                          ; 0x3768
    mov ax, 0x93a4                   ; 0x3769
    push ax                          ; 0x376c
    mov ax, 0x9399                   ; 0x376d
    push ax                          ; 0x3770
    push word [bp + 0x4]             ; 0x3771
    call api_idx_0004_6              ; 0x3774
    add sp, byte 0x0a                ; 0x3777
    jmp short @..api_idx_0004_7.l2   ; 0x377a
    mov ax, 0x93da                   ; 0x377c
    push ax                          ; 0x377f
    mov ax, 0x93d3                   ; 0x3780
    push ax                          ; 0x3783
    mov ax, 0x93ca                   ; 0x3784
    push ax                          ; 0x3787
    mov ax, 0x93bf                   ; 0x3788
    push ax                          ; 0x378b
    push word [bp + 0x4]             ; 0x378c
    call api_idx_0004_6              ; 0x378f
    add sp, byte 0x0a                ; 0x3792
    jmp short @..api_idx_0004_7.l2   ; 0x3795
    pop dx                           ; 0x3797
    xchg byte [bp - 0x007a], dh      ; 0x3798
    xchg dx, ax                      ; 0x379b
    xchg byte [bp - 0x357a], ch      ; 0x379c
    db 0x86, 0xe6 ; xchg dh, ah
    xchg byte [bp + si], al          ; 0x37a2
    xchg word [data_3a87], bx        ; 0x37a4
    xchg word [bp - 0x0079], dx      ; 0x37a8
    jb short loc_3734                ; 0x37ab
    lea ax, word [bx - 0x7858]       ; 0x37ad
    ret                              ; 0x37b1
    db 0x87
@..api_idx_0004_7.l1:
    cmp ax, strict word 0xe          ; 0x37b3
    jae short @..api_idx_0004_7.l2   ; 0x37b6
    xchg bx, ax                      ; 0x37b8
    shl bx, 1                        ; 0x37b9
    jmp [cs:bx - 0x7822]             ; 0x37bb
@..api_idx_0004_7.l2:
    mov ax, 0x248                    ; 0x37c0
    imul word [bp + 0x4]             ; 0x37c3
    mov bx, ax                       ; 0x37c6
    cmp byte [bx + 0x5d65], 0xd      ; 0x37c8
    jbe short @..api_idx_0004_7.l3   ; 0x37cd
    cmp byte [bx + 0x5d6a], 0xd      ; 0x37cf
    jbe short @..api_idx_0004_7.l3   ; 0x37d4
    mov word [dseg_95d0], 1          ; 0x37d6
@..api_idx_0004_7.l3:
    mov word [bp - 0x0004], 0        ; 0x37dc
    mov ax, word [bp + 0x6]          ; 0x37e1
    shl ax, 1                        ; 0x37e4
    shl ax, 1                        ; 0x37e6
    mov bx, ax                       ; 0x37e8
    db 0x8b, 0x87, 0x38, 0x00 ; mov ax, word [bx + 0x38]
    mov word [bp - 0x0002], ax       ; 0x37ee
    jmp short @..api_idx_0004_7.l6   ; 0x37f1
@..api_idx_0004_7.l4:
    mov ax, word [bp - 0x0002]       ; 0x37f3
    shl ax, 1                        ; 0x37f6
    mov bx, ax                       ; 0x37f8
    cmp word [bx - 0x6a68], byte 1   ; 0x37fa
    jne short @..api_idx_0004_7.l5   ; 0x37ff
    mov ax, 0x14                     ; 0x3801
    imul word [bp - 0x0004]          ; 0x3804
    add ax, 0xe38                    ; 0x3807
    push ax                          ; 0x380a
    mov ax, word [bp - 0x0002]       ; 0x380b
    add ax, 0x157c                   ; 0x380e
    push ax                          ; 0x3811
    call ds_dispatch_b53b            ; 0x3812
    add sp, byte 4                   ; 0x3815
    mov ax, word [bp - 0x0002]       ; 0x3818
    mov cx, word [bp - 0x0004]       ; 0x381b
    shl cx, 1                        ; 0x381e
    mov si, cx                       ; 0x3820
    mov bx, word [bp + 0x8]          ; 0x3822
    mov word [bx + si], ax           ; 0x3825
    inc word [bp - 0x0004]           ; 0x3827
@..api_idx_0004_7.l5:
    inc word [bp - 0x0002]           ; 0x382a
@..api_idx_0004_7.l6:
    mov ax, word [bp + 0x6]          ; 0x382d
    shl ax, 1                        ; 0x3830
    shl ax, 1                        ; 0x3832
    mov bx, ax                       ; 0x3834
    db 0x8b, 0x87, 0x3a, 0x00 ; mov ax, word [bx + 0x3a]
    cmp ax, word [bp - 0x0002]       ; 0x383a
    jge short @..api_idx_0004_7.l4   ; 0x383d
    mov ax, 0x95dc                   ; 0x383f
    push ax                          ; 0x3842
    mov ax, 0x159e                   ; 0x3843
    push ax                          ; 0x3846
    call ds_dispatch_b53b            ; 0x3847
    add sp, byte 4                   ; 0x384a
    mov ax, word [bp - 0x0004]       ; 0x384d
    ret                              ; 0x3850
