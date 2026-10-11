api_idx_005e:
    mov ax, 0xffa2                   ; 0x34bc
    call ds_dispatch_f40b            ; 0x34bf
    mov word [bp - 0x0002], 0xf      ; 0x34c2
@..api_idx_005e.l1:
    mov bx, word [bp - 0x0002]       ; 0x34c7
    mov al, byte [bx + 0x5b48]       ; 0x34ca
    sub ah, ah                       ; 0x34ce
    cmp ax, word [bp + 0x4]          ; 0x34d0
    jne short @..api_idx_005e.l2     ; 0x34d3
    mov ax, 0                        ; 0x34d5
    ret                              ; 0x34d8
@..api_idx_005e.l2:
    inc word [bp - 0x0002]           ; 0x34d9
    mov ax, word [bp - 0x0002]       ; 0x34dc
    cmp ax, strict word 0x12         ; 0x34df
    jl short @..api_idx_005e.l1      ; 0x34e2
    mov ax, 0x90a6                   ; 0x34e4
    push ax                          ; 0x34e7
    lea ax, word [bp - 0x005e]       ; 0x34e8
    push ax                          ; 0x34eb
    call ds_dispatch_f364            ; 0x34ec
    add sp, byte 4                   ; 0x34ef
    mov ax, word [bp + 0x4]          ; 0x34f2
    mov cx, 0xa                      ; 0x34f5
    cwd                              ; 0x34f8
    idiv cx                          ; 0x34f9
    add ax, strict word 0x30         ; 0x34fb
    mov byte [bp - 0x005b], al       ; 0x34fe
    add dx, byte 0x30                ; 0x3501
    mov ax, dx                       ; 0x3504
    mov byte [bp - 0x005a], al       ; 0x3506
    mov ax, 0                        ; 0x3509
    push ax                          ; 0x350c
    mov ax, 1                        ; 0x350d
    push ax                          ; 0x3510
    lea ax, word [bp - 0x005e]       ; 0x3511
    push ax                          ; 0x3514
    call ds_dispatch_d161            ; 0x3515
    add sp, byte 4                   ; 0x3518
    push ax                          ; 0x351b
    call ds_dispatch_f909            ; 0x351c
    add sp, byte 4                   ; 0x351f
    mov word [bp - 0x0004], ax       ; 0x3522
    cmp ax, strict word 0xffff       ; 0x3525
    jne short @..api_idx_005e.l3     ; 0x3528
    mov ax, 0xffff                   ; 0x352a
    ret                              ; 0x352d
@..api_idx_005e.l3:
    mov ax, 2                        ; 0x352e
    push ax                          ; 0x3531
    mov ax, 0                        ; 0x3532
    mov dx, 0                        ; 0x3535
    push dx                          ; 0x3538
    push ax                          ; 0x3539
    push word [bp - 0x0004]          ; 0x353a
    call ds_dispatch_fdbd            ; 0x353d
    add sp, byte 8                   ; 0x3540
    mov word [bp - 0x0006], dx       ; 0x3543
    mov word [bp - 0x0008], ax       ; 0x3546
    push word [bp - 0x0004]          ; 0x3549
    call ds_dispatch_fda5            ; 0x354c
    pop cx                           ; 0x354f
    mov word [bp - 0x000a], 0        ; 0x3550
    mov word [bp - 0x000c], 0x2800   ; 0x3555
    mov ax, 0                        ; 0x355a
    push ax                          ; 0x355d
    mov ax, 2                        ; 0x355e
    push ax                          ; 0x3561
    call ds_dispatch_e91b            ; 0x3562
    add sp, byte 4                   ; 0x3565
    mov cx, word [bp - 0x0008]       ; 0x3568
    mov bx, word [bp - 0x0006]       ; 0x356b
    add cx, word [bp - 0x000c]       ; 0x356e
    adc bx, word [bp - 0x000a]       ; 0x3571
    cmp dx, bx                       ; 0x3574
    jl short @..api_idx_005e.l4      ; 0x3576
    jne short @..api_idx_005e.l5     ; 0x3578
    cmp ax, cx                       ; 0x357a
    ja short @..api_idx_005e.l5      ; 0x357c
@..api_idx_005e.l4:
    jmp short @..api_idx_005e.l6     ; 0x357e
@..api_idx_005e.l5:
    mov ax, 0                        ; 0x3580
    ret                              ; 0x3583
@..api_idx_005e.l6:
    cmp byte [dseg_5962], 1          ; 0x3584
    jne short @..api_idx_005e.l9     ; 0x3589
    mov ax, 0                        ; 0x358b
    push ax                          ; 0x358e
    mov ax, 1                        ; 0x358f
    push ax                          ; 0x3592
    call ds_dispatch_e91b            ; 0x3593
    add sp, byte 4                   ; 0x3596
    cmp dx, word [bp - 0x000a]       ; 0x3599
    jl short @..api_idx_005e.l7      ; 0x359c
    jne short @..api_idx_005e.l8     ; 0x359e
    cmp ax, word [bp - 0x000c]       ; 0x35a0
    ja short @..api_idx_005e.l8      ; 0x35a3
@..api_idx_005e.l7:
    jmp short @..api_idx_005e.l9     ; 0x35a5
@..api_idx_005e.l8:
    mov word [bp - 0x000a], 0        ; 0x35a7
    mov word [bp - 0x000c], 0        ; 0x35ac
    jmp short @..api_idx_005e.l12    ; 0x35b1
@..api_idx_005e.l9:
    cmp byte [dseg_5963], 1          ; 0x35b3
    jne short @..api_idx_005e.l12    ; 0x35b8
    mov al, byte [dseg_5964]         ; 0x35ba
    sub ah, ah                       ; 0x35bd
    add ax, strict word 0xffc0       ; 0x35bf
    mov word [bp - 0x000e], ax       ; 0x35c2
    cmp ax, strict word 1            ; 0x35c5
    jl short @..api_idx_005e.l12     ; 0x35c8
    cmp ax, strict word 0x1a         ; 0x35ca
    jg short @..api_idx_005e.l12     ; 0x35cd
    push ax                          ; 0x35cf
    mov ax, 3                        ; 0x35d0
    push ax                          ; 0x35d3
    call ds_dispatch_e91b            ; 0x35d4
    add sp, byte 4                   ; 0x35d7
    cmp dx, word [bp - 0x000a]       ; 0x35da
    jl short @..api_idx_005e.l10     ; 0x35dd
    jne short @..api_idx_005e.l11    ; 0x35df
    cmp ax, word [bp - 0x000c]       ; 0x35e1
    ja short @..api_idx_005e.l11     ; 0x35e4
@..api_idx_005e.l10:
    jmp short @..api_idx_005e.l12    ; 0x35e6
@..api_idx_005e.l11:
    mov word [bp - 0x000a], 0        ; 0x35e8
    mov word [bp - 0x000c], 0        ; 0x35ed
@..api_idx_005e.l12:
    mov ax, 0                        ; 0x35f2
    push ax                          ; 0x35f5
    mov ax, 2                        ; 0x35f6
    push ax                          ; 0x35f9
    call ds_dispatch_e91b            ; 0x35fa
    add sp, byte 4                   ; 0x35fd
    mov cx, word [bp - 0x0008]       ; 0x3600
    mov bx, word [bp - 0x0006]       ; 0x3603
    add cx, word [bp - 0x000c]       ; 0x3606
    adc bx, word [bp - 0x000a]       ; 0x3609
    cmp dx, bx                       ; 0x360c
    jl short @..api_idx_005e.l13     ; 0x360e
    jne short @..api_idx_005e.l14    ; 0x3610
    cmp ax, cx                       ; 0x3612
    ja short @..api_idx_005e.l14     ; 0x3614
@..api_idx_005e.l13:
    jmp short @..api_idx_005e.l15    ; 0x3616
@..api_idx_005e.l14:
    mov ax, 0                        ; 0x3618
    ret                              ; 0x361b
@..api_idx_005e.l15:
    mov ax, 0xffff                   ; 0x361c
    ret                              ; 0x361f
loc_3620:
    mov ax, 0xfe52                   ; 0x3620
    call ds_dispatch_f40b            ; 0x3623
    mov ax, word [dseg_9058]         ; 0x3626
    mov cx, 2                        ; 0x3629
    cwd                              ; 0x362c
    idiv cx                          ; 0x362d
    push ax                          ; 0x362f
    call api_idx_0004_5              ; 0x3630
    pop cx                           ; 0x3633
    mov word [dseg_90e4], 0          ; 0x3634
    cmp word [dseg_8464], byte 0     ; 0x363a
    je short @..local.l67            ; 0x363f
    mov ax, word [dseg_8464]         ; 0x3641
    cmp ax, strict word 6            ; 0x3644
    jne short @..local.l69           ; 0x3647
@..local.l67:
    mov word [bp - 0x0004], 6        ; 0x3649
    mov ax, word [bp - 0x0004]       ; 0x364e
    shl ax, 1                        ; 0x3651
    mov bx, ax                       ; 0x3653
    mov bx, word [bx - 0x7b7e]       ; 0x3655
    cmp byte [bx + 0x1a1], 0         ; 0x3659
    jbe short @..local.l68           ; 0x365e
    mov ax, 2                        ; 0x3660
    push ax                          ; 0x3663
    mov ax, 0x41                     ; 0x3664
    push ax                          ; 0x3667
    mov ax, 0xc91                    ; 0x3668
    push ax                          ; 0x366b
    call api_idx_0050                ; 0x366c
    add sp, byte 6                   ; 0x366f
    ret                              ; 0x3672
@..local.l68:
    jmp short @..local.l71           ; 0x3673
@..local.l69:
    cmp word [bp + 0x10], byte 0     ; 0x3675
    jle short @..local.l70           ; 0x3679
    cmp word [dseg_8466], byte 5     ; 0x367b
    jge short @..local.l70           ; 0x3680
    inc word [dseg_8466]             ; 0x3682
    mov ax, word [dseg_8466]         ; 0x3686
    mov word [bp - 0x0004], ax       ; 0x3689
    jmp short @..local.l71           ; 0x368c
@..local.l70:
    mov ax, 2                        ; 0x368e
    push ax                          ; 0x3691
    mov ax, 0x41                     ; 0x3692
    push ax                          ; 0x3695
    mov ax, 0xc91                    ; 0x3696
    push ax                          ; 0x3699
    call api_idx_0050                ; 0x369a
    add sp, byte 6                   ; 0x369d
    ret                              ; 0x36a0
@..local.l71:
    mov ax, 0                        ; 0x36a1
    push ax                          ; 0x36a4
    mov ax, 0x1a4                    ; 0x36a5
    push ax                          ; 0x36a8
    mov ax, word [bp - 0x0004]       ; 0x36a9
    shl ax, 1                        ; 0x36ac
    mov bx, ax                       ; 0x36ae
    push word [bx - 0x7b7e]          ; 0x36b0
    call ds_dispatch_f306            ; 0x36b4
    add sp, byte 6                   ; 0x36b7
    mov word [bp - 0x01ac], 0        ; 0x36ba
@..local.l72:
    inc word [bp - 0x01ac]           ; 0x36c0
    dec word [bp + 0x10]             ; 0x36c4
    cmp word [bp + 0x10], byte 0     ; 0x36c7
    jle short @..local.l73           ; 0x36cb
    mov ax, 3                        ; 0x36cd
    push ax                          ; 0x36d0
    call ds_dispatch_b7a9            ; 0x36d1
    pop cx                           ; 0x36d4
    test ax, ax                      ; 0x36d5
    jne short @..local.l73           ; 0x36d7
    cmp word [bp - 0x01ac], byte 3   ; 0x36d9
    jl short @..local.l72            ; 0x36de
@..local.l73:
    mov ax, word [bp + 0x10]         ; 0x36e0
    jmp short @..local.l75           ; 0x36e3

    db 0x8b, 0x46, 0x04, 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x5c, 0x8b, 0x46, 0x06, 0x89, 0x86, 0x56, 0xfe
    db 0xeb, 0x53, 0x8b, 0x46, 0x08, 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x4a, 0x8b, 0x46, 0x0a, 0x89, 0x86
    db 0x56, 0xfe, 0xeb, 0x41, 0x8b, 0x46, 0x0c, 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x38, 0x8b, 0x46, 0x0e
    db 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x2f, 0x8b, 0x46, 0x0e, 0x89, 0x86, 0x56, 0xfe, 0xeb, 0x26

@..local.l74:
    mov ax, word [bp + 0x4]          ; 0x3724
    mov word [bp - 0x01aa], ax       ; 0x3727
    jmp short @..local.l77           ; 0x372b
    db 0x2c, 0x87, 0x35, 0x87, 0x3e, 0x87, 0x47, 0x87, 0x50, 0x87, 0x59, 0x87, 0x62, 0x87
@..local.l75:
    cmp ax, strict word 7            ; 0x373b
    jae short @..local.l76           ; 0x373e
    xchg bx, ax                      ; 0x3740
    shl bx, 1                        ; 0x3741
    jmp [cs:bx - 0x788c]             ; 0x3743
@..local.l76:
    jmp short @..local.l74           ; 0x3748
@..local.l77:
    mov ax, 0                        ; 0x374a
    push ax                          ; 0x374d
    push word [bp - 0x01aa]          ; 0x374e
    mov ax, word [bp - 0x0004]       ; 0x3752
    shl ax, 1                        ; 0x3755
    mov bx, ax                       ; 0x3757
    push word [bx - 0x7b70]          ; 0x3759
    mov ax, 4                        ; 0x375d
    push ax                          ; 0x3760
    call ds_dispatch_b63c            ; 0x3761
    add sp, byte 8                   ; 0x3764
    cmp word [dseg_8464], byte 0     ; 0x3767
    je short @..local.l78            ; 0x376c
    mov ax, word [dseg_8464]         ; 0x376e
    cmp ax, strict word 6            ; 0x3771
    je short @..local.l78            ; 0x3774
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
    jne short @..local.l78           ; 0x378f
    dec word [dseg_8466]             ; 0x3791
    mov ax, 2                        ; 0x3795
    push ax                          ; 0x3798
    mov ax, 0x41                     ; 0x3799
    push ax                          ; 0x379c
    mov ax, 0xc91                    ; 0x379d
    push ax                          ; 0x37a0
    call api_idx_0050                ; 0x37a1
    add sp, byte 6                   ; 0x37a4
    ret                              ; 0x37a7
@..local.l78:
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
    call ds_dispatch_d0be            ; 0x37e9
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
    jae short @..local.l79           ; 0x380e
    mov byte [bx + 0x1a1], 1         ; 0x3810
@..local.l79:
    mov ax, word [bp - 0x0004]       ; 0x3815
    shl ax, 1                        ; 0x3818
    mov bx, ax                       ; 0x381a
    mov bx, word [bx - 0x7b7e]       ; 0x381c
    cmp byte [bx + 0x1a1], 9         ; 0x3820
    jbe short @..local.l80           ; 0x3825
    mov byte [bx + 0x1a1], 9         ; 0x3827
@..local.l80:
    mov word [bp - 0x0002], 0        ; 0x382c
@..local.l81:
    mov ax, word [bp - 0x0004]       ; 0x3831
    shl ax, 1                        ; 0x3834
    mov bx, ax                       ; 0x3836
    mov bx, word [bx - 0x7b7e]       ; 0x3838
    mov si, word [bp - 0x0002]       ; 0x383c
    mov byte [bx + si + 0x18c], 0    ; 0x383f
    inc word [bp - 0x0002]           ; 0x3844
    mov ax, word [bp - 0x0002]       ; 0x3847
    cmp ax, strict word 6            ; 0x384a
    jl short @..local.l81            ; 0x384d
    mov word [bp - 0x0002], 0        ; 0x384f
@..local.l82:
    mov ax, word [bp - 0x0004]       ; 0x3854
    shl ax, 1                        ; 0x3857
    mov bx, ax                       ; 0x3859
    mov bx, word [bx - 0x7b7e]       ; 0x385b
    mov si, word [bp - 0x0002]       ; 0x385f
    mov byte [bx + si + 0x192], 0    ; 0x3862
    inc word [bp - 0x0002]           ; 0x3867
    mov ax, word [bp - 0x0002]       ; 0x386a
    cmp ax, strict word 6            ; 0x386d
    jl short @..local.l82            ; 0x3870
    mov ax, word [bp - 0x0004]       ; 0x3872
    shl ax, 1                        ; 0x3875
    mov bx, ax                       ; 0x3877
    mov bx, word [bx - 0x7b7e]       ; 0x3879
    mov byte [bx + 0x1a0], 0         ; 0x387d
    mov word [bp - 0x0002], 0        ; 0x3882
    jmp near @..local.l84            ; 0x3887
@..local.l83:
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
    call ds_dispatch_d0be            ; 0x38cf
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
    call ds_dispatch_d0be            ; 0x3924
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
@..local.l84:
    mov ax, word [bp - 0x0004]       ; 0x39ba
    shl ax, 1                        ; 0x39bd
    mov bx, ax                       ; 0x39bf
    mov bx, word [bx - 0x7b7e]       ; 0x39c1
    mov al, byte [bx + 0x1a1]        ; 0x39c5
    sub ah, ah                       ; 0x39c9
    cmp ax, word [bp - 0x0002]       ; 0x39cb
    jle short @..local.l85           ; 0x39ce
    jmp near @..local.l83            ; 0x39d0
@..local.l85:
    mov ax, word [dseg_598e]         ; 0x39d3
    mov word [bp - 0x01ae], ax       ; 0x39d6
    mov ax, 0x11                     ; 0x39da
    push ax                          ; 0x39dd
    call ds_dispatch_d7aa            ; 0x39de
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
    call ds_dispatch_b27d            ; 0x39f8
    add sp, byte 4                   ; 0x39fb
    mov ax, word [bp - 0x0004]       ; 0x39fe
    shl ax, 1                        ; 0x3a01
    mov bx, ax                       ; 0x3a03
    mov bx, word [bx - 0x7b7e]       ; 0x3a05
    cmp byte [bx + 0x1a1], 1         ; 0x3a09
    jne short @..local.l86           ; 0x3a0e
    mov ax, 0                        ; 0x3a10
    jmp short @..local.l87           ; 0x3a13
@..local.l86:
    mov ax, 1                        ; 0x3a15
@..local.l87:
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
    call ds_dispatch_f364            ; 0x3a31
    add sp, byte 4                   ; 0x3a34
    mov ax, 0x9186                   ; 0x3a37
    push ax                          ; 0x3a3a
    mov ax, word [bp - 0x0004]       ; 0x3a3b
    shl ax, 1                        ; 0x3a3e
    mov bx, ax                       ; 0x3a40
    mov bx, word [bx - 0x7b7e]       ; 0x3a42
    cmp byte [bx + 0x1a1], 1         ; 0x3a46
    jne short @..local.l88           ; 0x3a4b
    mov ax, 0xc8f                    ; 0x3a4d
    jmp short @..local.l89           ; 0x3a50
@..local.l88:
    mov ax, 0xc90                    ; 0x3a52
@..local.l89:
    push ax                          ; 0x3a55
    call ds_dispatch_b53b            ; 0x3a56
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
    call ds_dispatch_b7e0            ; 0x3a7f
    pop cx                           ; 0x3a82
    cmp word [bp - 0x01ae], byte 0xff ; 0x3a83
    je short @..local.l90            ; 0x3a88
    push word [bp - 0x01ae]          ; 0x3a8a
    call ds_dispatch_d7aa            ; 0x3a8e
    pop cx                           ; 0x3a91
    jmp short @..local.l91           ; 0x3a92
@..local.l90:
    mov ax, 0x10                     ; 0x3a94
    push ax                          ; 0x3a97
    call ds_dispatch_d6c6            ; 0x3a98
    pop cx                           ; 0x3a9b
    mov word [dseg_598e], 0xffff     ; 0x3a9c
@..local.l91:
    ret                              ; 0x3aa2
loc_3aa3:
    mov ax, 0                        ; 0x3aa3
    call ds_dispatch_f40b            ; 0x3aa6
    mov ax, word [dseg_9058]         ; 0x3aa9
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
    call ds_dispatch_b53b            ; 0x3ace
    add sp, byte 4                   ; 0x3ad1
    mov ax, 0                        ; 0x3ad4
    push ax                          ; 0x3ad7
    push word [bp + 0xa]             ; 0x3ad8
    mov ax, 0x43                     ; 0x3adb
    cmp word [bp + 0x4], byte 0      ; 0x3ade
    jne short @..local.l92           ; 0x3ae2
    mov ax, 1                        ; 0x3ae4
@..local.l92:
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
    push word [dseg_9058]            ; 0x3afe
    call api_idx_0004_5              ; 0x3b02
    pop cx                           ; 0x3b05
    ret                              ; 0x3b06
