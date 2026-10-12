string_loc_3620:
    mov ax, 0xfe52                   ; 0x3620
    call ds_aztec_csav               ; 0x3623
    mov ax, word [bss_9058]          ; 0x3626
    mov cx, 2                        ; 0x3629
    cwd                              ; 0x362c
    idiv cx                          ; 0x362d
    push ax                          ; 0x362f
    call api_idx_0004_5              ; 0x3630
    pop cx                           ; 0x3633
    mov word [bss_90e4], 0           ; 0x3634
    cmp word [bss_8464], byte 0      ; 0x363a
    je short @..string_loc_3620.l1   ; 0x363f
    mov ax, word [bss_8464]          ; 0x3641
    cmp ax, strict word 6            ; 0x3644
    jne short @..string_loc_3620.l3  ; 0x3647
@..string_loc_3620.l1:
    mov word [bp - 0x0004], 6        ; 0x3649
    mov ax, word [bp - 0x0004]       ; 0x364e
    shl ax, 1                        ; 0x3651
    mov bx, ax                       ; 0x3653
    mov bx, word [bx - 0x7b7e]       ; 0x3655
    cmp byte [bx + 0x1a1], 0         ; 0x3659
    jbe short @..string_loc_3620.l2  ; 0x365e
    mov ax, 2                        ; 0x3660
    push ax                          ; 0x3663
    mov ax, 0x41                     ; 0x3664
    push ax                          ; 0x3667
    mov ax, 0xc91                    ; 0x3668
    push ax                          ; 0x366b
    call api_idx_0050                ; 0x366c
    add sp, byte 6                   ; 0x366f
    ret                              ; 0x3672
@..string_loc_3620.l2:
    jmp short @..string_loc_3620.l5  ; 0x3673
@..string_loc_3620.l3:
    cmp word [bp + 0x10], byte 0     ; 0x3675
    jle short @..string_loc_3620.l4  ; 0x3679
    cmp word [bss_8466], byte 5      ; 0x367b
    jge short @..string_loc_3620.l4  ; 0x3680
    inc word [bss_8466]              ; 0x3682
    mov ax, word [bss_8466]          ; 0x3686
    mov word [bp - 0x0004], ax       ; 0x3689
    jmp short @..string_loc_3620.l5  ; 0x368c
@..string_loc_3620.l4:
    mov ax, 2                        ; 0x368e
    push ax                          ; 0x3691
    mov ax, 0x41                     ; 0x3692
    push ax                          ; 0x3695
    mov ax, 0xc91                    ; 0x3696
    push ax                          ; 0x3699
    call api_idx_0050                ; 0x369a
    add sp, byte 6                   ; 0x369d
    ret                              ; 0x36a0
@..string_loc_3620.l5:
    mov ax, 0                        ; 0x36a1
    push ax                          ; 0x36a4
    mov ax, 0x1a4                    ; 0x36a5
    push ax                          ; 0x36a8
    mov ax, word [bp - 0x0004]       ; 0x36a9
    shl ax, 1                        ; 0x36ac
    mov bx, ax                       ; 0x36ae
    push word [bx - 0x7b7e]          ; 0x36b0
    call ds_aztec_setmem             ; 0x36b4
    add sp, byte 6                   ; 0x36b7
    mov word [bp - 0x01ac], 0        ; 0x36ba
@..string_loc_3620.l6:
    inc word [bp - 0x01ac]           ; 0x36c0
    dec word [bp + 0x10]             ; 0x36c4
    cmp word [bp + 0x10], byte 0     ; 0x36c7
    jle short @..string_loc_3620.l7  ; 0x36cb
    mov ax, 3                        ; 0x36cd
    push ax                          ; 0x36d0
    call ds_app_09f0                 ; 0x36d1
    pop cx                           ; 0x36d4
    test ax, ax                      ; 0x36d5
    jne short @..string_loc_3620.l7  ; 0x36d7
    cmp word [bp - 0x01ac], byte 3   ; 0x36d9
    jl short @..string_loc_3620.l6   ; 0x36de
@..string_loc_3620.l7:
    mov ax, word [bp + 0x10]         ; 0x36e0
    jmp short @..string_loc_3620.l9  ; 0x36e3
loc_36e5:
    mov ax, word [bp + 0x4]          ; 0x36e5
    mov word [bp - 0x01aa], ax       ; 0x36e8
    jmp short @..string_loc_3620.l11 ; 0x36ec
loc_36ee:
    mov ax, word [bp + 0x6]          ; 0x36ee
    mov word [bp - 0x01aa], ax       ; 0x36f1
    jmp short @..string_loc_3620.l11 ; 0x36f5
loc_36f7:
    mov ax, word [bp + 0x8]          ; 0x36f7
    mov word [bp - 0x01aa], ax       ; 0x36fa
    jmp short @..string_loc_3620.l11 ; 0x36fe
loc_3700:
    mov ax, word [bp + 0xa]          ; 0x3700
    mov word [bp - 0x01aa], ax       ; 0x3703
    jmp short @..string_loc_3620.l11 ; 0x3707
loc_3709:
    mov ax, word [bp + 0xc]          ; 0x3709
    mov word [bp - 0x01aa], ax       ; 0x370c
    jmp short @..string_loc_3620.l11 ; 0x3710
loc_3712:
    mov ax, word [bp + 0xe]          ; 0x3712
    mov word [bp - 0x01aa], ax       ; 0x3715
    jmp short @..string_loc_3620.l11 ; 0x3719
loc_371b:
    mov ax, word [bp + 0xe]          ; 0x371b
    mov word [bp - 0x01aa], ax       ; 0x371e
    jmp short @..string_loc_3620.l11 ; 0x3722
@..string_loc_3620.l8:
    mov ax, word [bp + 0x4]          ; 0x3724
    mov word [bp - 0x01aa], ax       ; 0x3727
    jmp short @..string_loc_3620.l11 ; 0x372b
jumptable_372d:
    dw loc_36e5 - IMAGE_BASE + 0x5055          ; 0x372d
    dw loc_36ee - IMAGE_BASE + 0x5055          ; 0x372f
    dw loc_36f7 - IMAGE_BASE + 0x5055          ; 0x3731
    dw loc_3700 - IMAGE_BASE + 0x5055          ; 0x3733
    dw loc_3709 - IMAGE_BASE + 0x5055          ; 0x3735
    dw loc_3712 - IMAGE_BASE + 0x5055          ; 0x3737
    dw loc_371b - IMAGE_BASE + 0x5055          ; 0x3739
@..string_loc_3620.l9:
    cmp ax, strict word 7            ; 0x373b
    jae short @..string_loc_3620.l10 ; 0x373e
    xchg bx, ax                      ; 0x3740
    shl bx, 1                        ; 0x3741
    jmp [cs:bx - 0x788c]             ; 0x3743
@..string_loc_3620.l10:
    jmp short @..string_loc_3620.l8  ; 0x3748
@..string_loc_3620.l11:
    mov ax, 0                        ; 0x374a
    push ax                          ; 0x374d
    push word [bp - 0x01aa]          ; 0x374e
    mov ax, word [bp - 0x0004]       ; 0x3752
    shl ax, 1                        ; 0x3755
    mov bx, ax                       ; 0x3757
    push word [bx - 0x7b70]          ; 0x3759
    mov ax, 4                        ; 0x375d
    push ax                          ; 0x3760
    call ds_app_file_0883            ; 0x3761
    add sp, byte 8                   ; 0x3764
    cmp word [bss_8464], byte 0      ; 0x3767
    je short @..string_loc_3620.l12  ; 0x376c
    mov ax, word [bss_8464]          ; 0x376e
    cmp ax, strict word 6            ; 0x3771
    je short @..string_loc_3620.l12  ; 0x3774
    mov ax, word [bp - 0x0004]       ; 0x3776
    shl ax, 1                        ; 0x3779
    mov bx, ax                       ; 0x377b
    mov bx, word [bx - 0x7b70]       ; 0x377d
    mov al, byte [bx + 0xd7]         ; 0x3781
    sub ah, ah                       ; 0x3785
    push ax                          ; 0x3787
    call api_idx_005e                ; 0x3788
    pop cx                           ; 0x378b
    cmp ax, strict word 0xffff       ; 0x378c
    jne short @..string_loc_3620.l12 ; 0x378f
    dec word [bss_8466]              ; 0x3791
    mov ax, 2                        ; 0x3795
    push ax                          ; 0x3798
    mov ax, 0x41                     ; 0x3799
    push ax                          ; 0x379c
    mov ax, 0xc91                    ; 0x379d
    push ax                          ; 0x37a0
    call api_idx_0050                ; 0x37a1
    add sp, byte 6                   ; 0x37a4
    ret                              ; 0x37a7
@..string_loc_3620.l12:
    mov al, byte [bp - 0x01aa]       ; 0x37a8
    mov cx, word [bp - 0x0004]       ; 0x37ac
    shl cx, 1                        ; 0x37af
    mov bx, cx                       ; 0x37b1
    mov bx, word [bx - 0x7b7e]       ; 0x37b3
    mov byte [bx + 0x19e], al        ; 0x37b7
    mov ax, word [bp - 0x0004]       ; 0x37bb
    shl ax, 1                        ; 0x37be
    mov bx, ax                       ; 0x37c0
    mov bx, word [bx - 0x7b70]       ; 0x37c2
    mov al, byte [bx + 0x7d]         ; 0x37c6
    sub ah, ah                       ; 0x37c9
    add ax, word [bp - 0x01ac]       ; 0x37cb
    dec ax                           ; 0x37cf
    mov byte [bx + 0x7d], al         ; 0x37d0
    add bx, byte 0x7a                ; 0x37d3
    mov cx, bx                       ; 0x37d6
    sub sp, byte 4                   ; 0x37d8
    mov ax, sp                       ; 0x37db
    mov dx, ss                       ; 0x37dd
    mov cx, bx                       ; 0x37df
    mov es, dx                       ; 0x37e1
    mov si, cx                       ; 0x37e3
    mov di, ax                       ; 0x37e5
    movsw                            ; 0x37e7
    movsw                            ; 0x37e8
    call ds_app_2305                 ; 0x37e9
    add sp, byte 4                   ; 0x37ec
    mov cx, word [bp - 0x0004]       ; 0x37ef
    shl cx, 1                        ; 0x37f2
    mov bx, cx                       ; 0x37f4
    mov bx, word [bx - 0x7b7e]       ; 0x37f6
    mov byte [bx + 0x1a1], al        ; 0x37fa
    mov ax, word [bp - 0x0004]       ; 0x37fe
    shl ax, 1                        ; 0x3801
    mov bx, ax                       ; 0x3803
    mov bx, word [bx - 0x7b7e]       ; 0x3805
    cmp byte [bx + 0x1a1], 1         ; 0x3809
    jae short @..string_loc_3620.l13 ; 0x380e
    mov byte [bx + 0x1a1], 1         ; 0x3810
@..string_loc_3620.l13:
    mov ax, word [bp - 0x0004]       ; 0x3815
    shl ax, 1                        ; 0x3818
    mov bx, ax                       ; 0x381a
    mov bx, word [bx - 0x7b7e]       ; 0x381c
    cmp byte [bx + 0x1a1], 9         ; 0x3820
    jbe short @..string_loc_3620.l14 ; 0x3825
    mov byte [bx + 0x1a1], 9         ; 0x3827
@..string_loc_3620.l14:
    mov word [bp - 0x0002], 0        ; 0x382c
@..string_loc_3620.l15:
    mov ax, word [bp - 0x0004]       ; 0x3831
    shl ax, 1                        ; 0x3834
    mov bx, ax                       ; 0x3836
    mov bx, word [bx - 0x7b7e]       ; 0x3838
    mov si, word [bp - 0x0002]       ; 0x383c
    mov byte [bx + si + 0x18c], 0    ; 0x383f
    inc word [bp - 0x0002]           ; 0x3844
    mov ax, word [bp - 0x0002]       ; 0x3847
    cmp ax, strict word 6            ; 0x384a
    jl short @..string_loc_3620.l15  ; 0x384d
    mov word [bp - 0x0002], 0        ; 0x384f
@..string_loc_3620.l16:
    mov ax, word [bp - 0x0004]       ; 0x3854
    shl ax, 1                        ; 0x3857
    mov bx, ax                       ; 0x3859
    mov bx, word [bx - 0x7b7e]       ; 0x385b
    mov si, word [bp - 0x0002]       ; 0x385f
    mov byte [bx + si + 0x192], 0    ; 0x3862
    inc word [bp - 0x0002]           ; 0x3867
    mov ax, word [bp - 0x0002]       ; 0x386a
    cmp ax, strict word 6            ; 0x386d
    jl short @..string_loc_3620.l16  ; 0x3870
    mov ax, word [bp - 0x0004]       ; 0x3872
    shl ax, 1                        ; 0x3875
    mov bx, ax                       ; 0x3877
    mov bx, word [bx - 0x7b7e]       ; 0x3879
    mov byte [bx + 0x1a0], 0         ; 0x387d
    mov word [bp - 0x0002], 0        ; 0x3882
    jmp near @..string_loc_3620.l18  ; 0x3887
@..string_loc_3620.l17:
    mov ax, word [bp - 0x0004]       ; 0x388a
    shl ax, 1                        ; 0x388d
    mov bx, ax                       ; 0x388f
    mov bx, word [bx - 0x7b70]       ; 0x3891
    mov al, byte [bx + 0x80]         ; 0x3895
    sub ah, ah                       ; 0x3899
    push ax                          ; 0x389b
    mov ax, 0x2c                     ; 0x389c
    imul word [bp - 0x0002]          ; 0x389f
    mov si, ax                       ; 0x38a2
    mov ax, word [bp - 0x0004]       ; 0x38a4
    shl ax, 1                        ; 0x38a7
    mov bx, ax                       ; 0x38a9
    mov bx, word [bx - 0x7b7e]       ; 0x38ab
    pop ax                           ; 0x38af
    mov word [bx + si], ax           ; 0x38b0
    mov ax, word [bp - 0x0004]       ; 0x38b2
    shl ax, 1                        ; 0x38b5
    mov bx, ax                       ; 0x38b7
    mov cx, word [bx - 0x7b70]       ; 0x38b9
    add cx, byte 0x7e                ; 0x38bd
    sub sp, byte 4                   ; 0x38c0
    mov ax, sp                       ; 0x38c3
    mov dx, ss                       ; 0x38c5
    mov es, dx                       ; 0x38c7
    mov si, cx                       ; 0x38c9
    mov di, ax                       ; 0x38cb
    movsw                            ; 0x38cd
    movsw                            ; 0x38ce
    call ds_app_2305                 ; 0x38cf
    add sp, byte 4                   ; 0x38d2
    push ax                          ; 0x38d5
    mov ax, 0x2c                     ; 0x38d6
    imul word [bp - 0x0002]          ; 0x38d9
    mov si, ax                       ; 0x38dc
    mov ax, word [bp - 0x0004]       ; 0x38de
    shl ax, 1                        ; 0x38e1
    mov bx, ax                       ; 0x38e3
    mov bx, word [bx - 0x7b7e]       ; 0x38e5
    pop ax                           ; 0x38e9
    mov word [bx + si + 0x4], ax     ; 0x38ea
    mov ax, 0x2c                     ; 0x38ed
    imul word [bp - 0x0002]          ; 0x38f0
    mov si, ax                       ; 0x38f3
    mov ax, word [bp - 0x0004]       ; 0x38f5
    shl ax, 1                        ; 0x38f8
    mov bx, ax                       ; 0x38fa
    mov bx, word [bx - 0x7b7e]       ; 0x38fc
    mov ax, word [bx + si + 0x4]     ; 0x3900
    mov word [bx + si + 0x2], ax     ; 0x3903
    mov ax, word [bp - 0x0004]       ; 0x3906
    shl ax, 1                        ; 0x3909
    mov bx, ax                       ; 0x390b
    mov cx, word [bx - 0x7b70]       ; 0x390d
    add cx, strict word 0x82         ; 0x3911
    sub sp, byte 4                   ; 0x3915
    mov ax, sp                       ; 0x3918
    mov dx, ss                       ; 0x391a
    mov es, dx                       ; 0x391c
    mov si, cx                       ; 0x391e
    mov di, ax                       ; 0x3920
    movsw                            ; 0x3922
    movsw                            ; 0x3923
    call ds_app_2305                 ; 0x3924
    add sp, byte 4                   ; 0x3927
    push ax                          ; 0x392a
    mov ax, 0x2c                     ; 0x392b
    imul word [bp - 0x0002]          ; 0x392e
    mov si, ax                       ; 0x3931
    mov ax, word [bp - 0x0004]       ; 0x3933
    shl ax, 1                        ; 0x3936
    mov bx, ax                       ; 0x3938
    mov bx, word [bx - 0x7b7e]       ; 0x393a
    pop ax                           ; 0x393e
    mov word [bx + si + 0x8], ax     ; 0x393f
    mov ax, 0x2c                     ; 0x3942
    imul word [bp - 0x0002]          ; 0x3945
    mov si, ax                       ; 0x3948
    mov ax, word [bp - 0x0004]       ; 0x394a
    shl ax, 1                        ; 0x394d
    mov bx, ax                       ; 0x394f
    mov bx, word [bx - 0x7b7e]       ; 0x3951
    mov ax, word [bx + si + 0x8]     ; 0x3955
    mov word [bx + si + 0x6], ax     ; 0x3958
    mov ax, 0x2c                     ; 0x395b
    imul word [bp - 0x0002]          ; 0x395e
    mov si, ax                       ; 0x3961
    mov ax, word [bp - 0x0004]       ; 0x3963
    shl ax, 1                        ; 0x3966
    mov bx, ax                       ; 0x3968
    mov bx, word [bx - 0x7b7e]       ; 0x396a
    mov byte [bx + si + 0x2a], 0xff  ; 0x396e
    mov ax, 0x2c                     ; 0x3972
    imul word [bp - 0x0002]          ; 0x3975
    mov si, ax                       ; 0x3978
    mov ax, word [bp - 0x0004]       ; 0x397a
    shl ax, 1                        ; 0x397d
    mov bx, ax                       ; 0x397f
    mov bx, word [bx - 0x7b7e]       ; 0x3981
    mov byte [bx + si + 0x1e], 0xa   ; 0x3985
    mov ax, 0x2c                     ; 0x3989
    imul word [bp - 0x0002]          ; 0x398c
    mov si, ax                       ; 0x398f
    mov ax, word [bp - 0x0004]       ; 0x3991
    shl ax, 1                        ; 0x3994
    mov bx, ax                       ; 0x3996
    mov bx, word [bx - 0x7b7e]       ; 0x3998
    mov byte [bx + si + 0x21], 0     ; 0x399c
    mov ax, 0x2c                     ; 0x39a0
    imul word [bp - 0x0002]          ; 0x39a3
    mov si, ax                       ; 0x39a6
    mov ax, word [bp - 0x0004]       ; 0x39a8
    shl ax, 1                        ; 0x39ab
    mov bx, ax                       ; 0x39ad
    mov bx, word [bx - 0x7b7e]       ; 0x39af
    mov byte [bx + si + 0x18], 0     ; 0x39b3
    inc word [bp - 0x0002]           ; 0x39b7
@..string_loc_3620.l18:
    mov ax, word [bp - 0x0004]       ; 0x39ba
    shl ax, 1                        ; 0x39bd
    mov bx, ax                       ; 0x39bf
    mov bx, word [bx - 0x7b7e]       ; 0x39c1
    mov al, byte [bx + 0x1a1]        ; 0x39c5
    sub ah, ah                       ; 0x39c9
    cmp ax, word [bp - 0x0002]       ; 0x39cb
    jle short @..string_loc_3620.l19 ; 0x39ce
    jmp near @..string_loc_3620.l17  ; 0x39d0
@..string_loc_3620.l19:
    mov ax, word [bss_598e]          ; 0x39d3
    mov word [bp - 0x01ae], ax       ; 0x39d6
    mov ax, 0x11                     ; 0x39da
    push ax                          ; 0x39dd
    call ds_app_29f1                 ; 0x39de
    pop cx                           ; 0x39e1
    mov ax, 0x90e6                   ; 0x39e2
    push ax                          ; 0x39e5
    mov ax, word [bp - 0x0004]       ; 0x39e6
    shl ax, 1                        ; 0x39e9
    mov bx, ax                       ; 0x39eb
    mov bx, word [bx - 0x7b7e]       ; 0x39ed
    mov al, byte [bx + 0x1a1]        ; 0x39f1
    sub ah, ah                       ; 0x39f5
    push ax                          ; 0x39f7
    call ds_app_04c4                 ; 0x39f8
    add sp, byte 4                   ; 0x39fb
    mov ax, word [bp - 0x0004]       ; 0x39fe
    shl ax, 1                        ; 0x3a01
    mov bx, ax                       ; 0x3a03
    mov bx, word [bx - 0x7b7e]       ; 0x3a05
    cmp byte [bx + 0x1a1], 1         ; 0x3a09
    jne short @..string_loc_3620.l20 ; 0x3a0e
    mov ax, 0                        ; 0x3a10
    jmp short @..string_loc_3620.l21 ; 0x3a13
@..string_loc_3620.l20:
    mov ax, 1                        ; 0x3a15
@..string_loc_3620.l21:
    mov cx, 4                        ; 0x3a18
    shl ax, cl                       ; 0x3a1b
    mov cx, ax                       ; 0x3a1d
    mov ax, word [bp - 0x0004]       ; 0x3a1f
    shl ax, 1                        ; 0x3a22
    mov bx, ax                       ; 0x3a24
    mov ax, word [bx - 0x7b70]       ; 0x3a26
    add ax, cx                       ; 0x3a2a
    push ax                          ; 0x3a2c
    mov ax, 0x9136                   ; 0x3a2d
    push ax                          ; 0x3a30
    call ds_aztec_strcpy             ; 0x3a31
    add sp, byte 4                   ; 0x3a34
    mov ax, 0x9186                   ; 0x3a37
    push ax                          ; 0x3a3a
    mov ax, word [bp - 0x0004]       ; 0x3a3b
    shl ax, 1                        ; 0x3a3e
    mov bx, ax                       ; 0x3a40
    mov bx, word [bx - 0x7b7e]       ; 0x3a42
    cmp byte [bx + 0x1a1], 1         ; 0x3a46
    jne short @..string_loc_3620.l22 ; 0x3a4b
    mov ax, 0xc8f                    ; 0x3a4d
    jmp short @..string_loc_3620.l23 ; 0x3a50
@..string_loc_3620.l22:
    mov ax, 0xc90                    ; 0x3a52
@..string_loc_3620.l23:
    push ax                          ; 0x3a55
    call ds_app_mem_0782             ; 0x3a56
    add sp, byte 4                   ; 0x3a59
    mov ax, 0x41                     ; 0x3a5c
    push ax                          ; 0x3a5f
    push ax                          ; 0x3a60
    mov ax, 1                        ; 0x3a61
    push ax                          ; 0x3a64
    mov ax, 0x9186                   ; 0x3a65
    push ax                          ; 0x3a68
    mov ax, 0x9136                   ; 0x3a69
    push ax                          ; 0x3a6c
    mov ax, 0x90e6                   ; 0x3a6d
    push ax                          ; 0x3a70
    mov ax, 2                        ; 0x3a71
    push ax                          ; 0x3a74
    call api_idx_0004_4              ; 0x3a75
    add sp, byte 0x0e                ; 0x3a78
    mov ax, 0x10                     ; 0x3a7b
    push ax                          ; 0x3a7e
    call ds_app_0a27                 ; 0x3a7f
    pop cx                           ; 0x3a82
    cmp word [bp - 0x01ae], byte 0xff ; 0x3a83
    je short @..string_loc_3620.l24  ; 0x3a88
    push word [bp - 0x01ae]          ; 0x3a8a
    call ds_app_29f1                 ; 0x3a8e
    pop cx                           ; 0x3a91
    jmp short @..string_loc_3620.l25 ; 0x3a92
@..string_loc_3620.l24:
    mov ax, 0x10                     ; 0x3a94
    push ax                          ; 0x3a97
    call ds_app_290d                 ; 0x3a98
    pop cx                           ; 0x3a9b
    mov word [bss_598e], 0xffff      ; 0x3a9c
@..string_loc_3620.l25:
    ret                              ; 0x3aa2
loc_3aa3:
    mov ax, 0                        ; 0x3aa3
    call ds_aztec_csav               ; 0x3aa6
    mov ax, word [bss_9058]          ; 0x3aa9
    mov cx, 4                        ; 0x3aac
    cwd                              ; 0x3aaf
    idiv cx                          ; 0x3ab0
    push ax                          ; 0x3ab2
    call api_idx_0004_5              ; 0x3ab3
    pop cx                           ; 0x3ab6
    push word [bp + 0x6]             ; 0x3ab7
    push word [bp + 0x4]             ; 0x3aba
    mov ax, 0x90e6                   ; 0x3abd
    push ax                          ; 0x3ac0
    call loc_15ab                    ; 0x3ac1
    add sp, byte 6                   ; 0x3ac4
    mov ax, 0x9136                   ; 0x3ac7
    push ax                          ; 0x3aca
    push word [bp + 0x8]             ; 0x3acb
    call ds_app_mem_0782             ; 0x3ace
    add sp, byte 4                   ; 0x3ad1
    mov ax, 0                        ; 0x3ad4
    push ax                          ; 0x3ad7
    push word [bp + 0xa]             ; 0x3ad8
    mov ax, 0x43                     ; 0x3adb
    cmp word [bp + 0x4], byte 0      ; 0x3ade
    jne short @..local.l67           ; 0x3ae2
    mov ax, 1                        ; 0x3ae4
@..local.l67:
    push ax                          ; 0x3ae7
    mov ax, 0x90b0                   ; 0x3ae8
    push ax                          ; 0x3aeb
    mov ax, 0x9136                   ; 0x3aec
    push ax                          ; 0x3aef
    mov ax, 0x90e6                   ; 0x3af0
    push ax                          ; 0x3af3
    mov ax, 2                        ; 0x3af4
    push ax                          ; 0x3af7
    call api_idx_0004_4              ; 0x3af8
    add sp, byte 0x0e                ; 0x3afb
    push word [bss_9058]             ; 0x3afe
    call api_idx_0004_5              ; 0x3b02
    pop cx                           ; 0x3b05
    ret                              ; 0x3b06
