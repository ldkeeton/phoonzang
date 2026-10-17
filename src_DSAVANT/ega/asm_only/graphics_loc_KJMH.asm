; auto-generated
; asm only
graphics_loc_KJMH:
    push bp                          ; 0x361e
    mov bp, sp                       ; 0x361f
    sub sp, byte 0x40                ; 0x3621
    push ds                          ; 0x3624
    push es                          ; 0x3625
    push si                          ; 0x3626
    push di                          ; 0x3627
    mov ax, ds                       ; 0x3628
    mov es, ax                       ; 0x362a
    mov ax, word [bp + 0x14]         ; 0x362c
    sub ax, word [bp + 0x12]         ; 0x362f
    jb short @..graphics_loc_KJMH.l1 ; 0x3632
    mov ax, word [bp + 0x18]         ; 0x3634
    sub ax, word [bp + 0x16]         ; 0x3637
    jb short @..graphics_loc_KJMH.l1 ; 0x363a
    mov ax, word [bp + 0x10]         ; 0x363c
    mov bx, 0x140                    ; 0x363f
    mul bx                           ; 0x3642
    add ax, word [bp + 0xe]          ; 0x3644
    mov word [bp - 0x0006], ax       ; 0x3647
    mov ax, word [bp + 0xc]          ; 0x364a
    shl ax, 1                        ; 0x364d
    mov bx, 0x229                    ; 0x364f
    add bx, ax                       ; 0x3652
    mov ax, word [cs:bx]             ; 0x3654
    dec ax                           ; 0x3657
    mov cl, 2                        ; 0x3658
    shl ax, cl                       ; 0x365a
    mov bx, 0x10fb                   ; 0x365c
    add bx, ax                       ; 0x365f
    mov ax, word [cs:bx]             ; 0x3661
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x3664
    mov word [bp - 0x0008], ax       ; 0x3669
    mov ds, ax                       ; 0x366c
    xor bx, bx                       ; 0x366e
    mov ax, word [bx]                ; 0x3670
    mov word [bp - 0x0012], ax       ; 0x3672
    mov si, word [bp + 0x1c]         ; 0x3675
    mov bx, word [bp - 0x0008]       ; 0x3678
    mov ds, bx                       ; 0x367b
    xor ah, ah                       ; 0x367d
    mov al, byte [ss:si]             ; 0x367f
    or al, al                        ; 0x3682
    je short @..graphics_loc_KJMH.l1 ; 0x3684
    call leaf_loc_TVGR               ; 0x3686
    xor ah, ah                       ; 0x3689
    mov al, byte [bx + 0x2]          ; 0x368b
    mov word [bp - 0x0002], ax       ; 0x368e
    mov cx, ax                       ; 0x3691
    mov al, byte [bx + 0x3]          ; 0x3693
    mov word [bp - 0x0004], ax       ; 0x3696
    or ax, cx                        ; 0x3699
    jne short @..graphics_loc_KJMH.l2 ; 0x369b
@..graphics_loc_KJMH.l1:
    jmp near @..graphics_loc_KJMH.l56 ; 0x369d
@..graphics_loc_KJMH.l2:
    mov word [bp - 0x003a], bx       ; 0x36a0
    mov ax, es                       ; 0x36a3
    mov word [bp - 0x0038], ax       ; 0x36a5
    mov ax, cs                       ; 0x36a8
    mov es, ax                       ; 0x36aa
    lea di, word [data_36dd]         ; 0x36ac
    xor ax, ax                       ; 0x36b0
    mov cx, 0x14                     ; 0x36b2
    rep stosw                        ; 0x36b5
    lea di, word [data_3705]         ; 0x36b7
    mov cx, 0x19                     ; 0x36bb
    rep stosb                        ; 0x36be
    mov bx, word [bp + 0x20]         ; 0x36c0
    or bx, bx                        ; 0x36c3
    jne short @..graphics_loc_KJMH.l3 ; 0x36c5
    jmp near @..graphics_loc_KJMH.l7 ; 0x36c7
@..graphics_loc_KJMH.l3:
    cmp bx, byte 0x64                ; 0x36ca
    jae short @..graphics_loc_KJMH.l1 ; 0x36cd
    mov ax, word [bp - 0x0002]       ; 0x36cf
    mov cl, 3                        ; 0x36d2
    shl ax, cl                       ; 0x36d4
    mov cx, ax                       ; 0x36d6
    mov bx, word [bp + 0x20]         ; 0x36d8
    mul bx                           ; 0x36db
data_36dd:
    mov bx, 0x64                     ; 0x36dd
    div bx                           ; 0x36e0
    cmp dx, byte 0x32                ; 0x36e2
    jb short @..graphics_loc_KJMH.l4 ; 0x36e5
    inc ax                           ; 0x36e7
@..graphics_loc_KJMH.l4:
    or ax, ax                        ; 0x36e8
    je short @..graphics_loc_KJMH.l5 ; 0x36ea
    xor dx, dx                       ; 0x36ec
    mov bx, ax                       ; 0x36ee
    mov word [bp - 0x0034], ax       ; 0x36f0
    mov ax, cx                       ; 0x36f3
    div bx                           ; 0x36f5
    mov di, 0x36dd                   ; 0x36f7
    mov bx, word [bp - 0x0034]       ; 0x36fa
    shr bx, 1                        ; 0x36fd
    mov word [bp - 0x003c], bx       ; 0x36ff
    mov si, ax                       ; 0x3702
    dec si                           ; 0x3704
data_3705:
    mov word [bp - 0x0030], ax       ; 0x3705
    mov word [bp - 0x0032], cx       ; 0x3708
    call leaf_loc_NOSG               ; 0x370b
@..graphics_loc_KJMH.l5:
    mov ax, word [bp - 0x0004]       ; 0x370e
    mov cl, 3                        ; 0x3711
    shl ax, cl                       ; 0x3713
    mov cx, ax                       ; 0x3715
    mov bx, word [bp + 0x20]         ; 0x3717
    mul bx                           ; 0x371a
    mov bx, 0x64                     ; 0x371c
    div bx                           ; 0x371f
    cmp dx, byte 0x32                ; 0x3721
    jb short @..graphics_loc_KJMH.l6 ; 0x3724
    inc ax                           ; 0x3726
@..graphics_loc_KJMH.l6:
    or ax, ax                        ; 0x3727
    je short @..graphics_loc_KJMH.l7 ; 0x3729
    xor dx, dx                       ; 0x372b
    mov bx, ax                       ; 0x372d
    mov word [bp - 0x0034], ax       ; 0x372f
    mov ax, cx                       ; 0x3732
    div bx                           ; 0x3734
    mov di, 0x3705                   ; 0x3736
    mov bx, word [bp - 0x0034]       ; 0x3739
    shr bx, 1                        ; 0x373c
    mov word [bp - 0x003c], bx       ; 0x373e
    mov si, ax                       ; 0x3741
    dec si                           ; 0x3743
    mov word [bp - 0x0030], ax       ; 0x3744
    mov word [bp - 0x0032], cx       ; 0x3747
    call leaf_loc_NOSG               ; 0x374a
@..graphics_loc_KJMH.l7:
    mov bx, word [bp - 0x003a]       ; 0x374d
    mov ax, word [bp - 0x0038]       ; 0x3750
    mov es, ax                       ; 0x3753
    mov ax, word [bp + 0x12]         ; 0x3755
    sub ax, word [bp + 0xe]          ; 0x3758
    jge short @..graphics_loc_KJMH.l8 ; 0x375b
    xor ax, ax                       ; 0x375d
@..graphics_loc_KJMH.l8:
    mov word [bp - 0x0028], ax       ; 0x375f
    mov ax, word [bp + 0xe]          ; 0x3762
    mov bx, word [bp - 0x0002]       ; 0x3765
    mov cl, 3                        ; 0x3768
    shl bx, cl                       ; 0x376a
    mov cx, bx                       ; 0x376c
    dec bx                           ; 0x376e
    mov word [bp - 0x001e], bx       ; 0x376f
    add ax, bx                       ; 0x3772
    inc ax                           ; 0x3774
    sub ax, word [bp + 0x14]         ; 0x3775
    jge short @..graphics_loc_KJMH.l9 ; 0x3778
    xor ax, ax                       ; 0x377a
@..graphics_loc_KJMH.l9:
    mov word [bp - 0x002a], ax       ; 0x377c
    add ax, word [bp - 0x0028]       ; 0x377f
    sub cx, ax                       ; 0x3782
    ja short @..graphics_loc_KJMH.l10 ; 0x3784
    jmp near @..graphics_loc_KJMH.l56 ; 0x3786
@..graphics_loc_KJMH.l10:
    mov word [bp - 0x0026], cx       ; 0x3789
    mov ax, word [bp + 0x16]         ; 0x378c
    sub ax, word [bp + 0x10]         ; 0x378f
    jge short @..graphics_loc_KJMH.l11 ; 0x3792
    xor ax, ax                       ; 0x3794
@..graphics_loc_KJMH.l11:
    mov word [bp - 0x0024], ax       ; 0x3796
    mov ax, word [bp + 0x10]         ; 0x3799
    mov bx, word [bp - 0x0004]       ; 0x379c
    mov cl, 3                        ; 0x379f
    shl bx, cl                       ; 0x37a1
    mov cx, bx                       ; 0x37a3
    dec bx                           ; 0x37a5
    add ax, bx                       ; 0x37a6
    sub ax, word [bp + 0x18]         ; 0x37a8
    jge short @..graphics_loc_KJMH.l12 ; 0x37ab
    xor ax, ax                       ; 0x37ad
@..graphics_loc_KJMH.l12:
    mov word [bp - 0x002c], ax       ; 0x37af
    add ax, word [bp - 0x0024]       ; 0x37b2
    sub cx, ax                       ; 0x37b5
    ja short @..graphics_loc_KJMH.l13 ; 0x37b7
    jmp near @..graphics_loc_KJMH.l56 ; 0x37b9
@..graphics_loc_KJMH.l13:
    mov ax, word [bp + 0x18]         ; 0x37bc
    inc ax                           ; 0x37bf
    mov cx, 0x140                    ; 0x37c0
    mul cx                           ; 0x37c3
    mov word [bp - 0x0022], ax       ; 0x37c5
    mov ax, word [bp + 0x16]         ; 0x37c8
    mov cx, 0x140                    ; 0x37cb
    mul cx                           ; 0x37ce
    mov word [bp - 0x002e], ax       ; 0x37d0
    mov ax, word [bp + 0x1a]         ; 0x37d3
    and al, 1                        ; 0x37d6
    je short @..graphics_loc_KJMH.l14 ; 0x37d8
    jmp near @..graphics_loc_KJMH.l28 ; 0x37da
@..graphics_loc_KJMH.l14:
    mov bx, word [bp - 0x001e]       ; 0x37dd
    inc bx                           ; 0x37e0
    mov word [bp - 0x003e], bx       ; 0x37e1
    mov bx, cseg_35dd - IMAGE_BASE   ; 0x37e4
    mov dl, 0x80                     ; 0x37e7
    xor ax, ax                       ; 0x37e9
    mov word [bp - 0x0030], ax       ; 0x37eb
    mov word [bp - 0x0040], ax       ; 0x37ee
    mov cx, word [bp - 0x0028]       ; 0x37f1
    or cx, cx                        ; 0x37f4
    je short @..graphics_loc_KJMH.l19 ; 0x37f6
@..graphics_loc_KJMH.l15:
    mov al, byte [cs:bx]             ; 0x37f8
    and al, dl                       ; 0x37fb
    jne short @..graphics_loc_KJMH.l16 ; 0x37fd
    or byte [cs:bx], dl              ; 0x37ff
    jmp short @..graphics_loc_KJMH.l17 ; 0x3802
@..graphics_loc_KJMH.l16:
    inc word [bp - 0x0030]           ; 0x3804
    inc cx                           ; 0x3807
@..graphics_loc_KJMH.l17:
    ror dl, 1                        ; 0x3808
    cmp dl, 0x80                     ; 0x380a
    jne short @..graphics_loc_KJMH.l18 ; 0x380d
    inc bx                           ; 0x380f
@..graphics_loc_KJMH.l18:
    loop @..graphics_loc_KJMH.l15    ; 0x3810
@..graphics_loc_KJMH.l19:
    mov word [bp - 0x0032], bx       ; 0x3812
    mov ax, word [bp - 0x0030]       ; 0x3815
    mov word [bp - 0x0040], ax       ; 0x3818
    add ax, word [bp - 0x0028]       ; 0x381b
    mov bx, word [bp - 0x003e]       ; 0x381e
    cmp bx, ax                       ; 0x3821
    ja short @..graphics_loc_KJMH.l20 ; 0x3823
    jmp near @..graphics_loc_KJMH.l56 ; 0x3825
@..graphics_loc_KJMH.l20:
    sub bx, ax                       ; 0x3828
    xor ax, ax                       ; 0x382a
    mov word [bp - 0x0030], ax       ; 0x382c
    sub bx, word [bp - 0x0026]       ; 0x382f
    jbe short @..graphics_loc_KJMH.l27 ; 0x3832
    mov word [bp - 0x0034], bx       ; 0x3834
    mov cx, word [bp - 0x0026]       ; 0x3837
    mov bx, word [bp - 0x0032]       ; 0x383a
@..graphics_loc_KJMH.l21:
    mov al, byte [cs:bx]             ; 0x383d
    and al, dl                       ; 0x3840
    je short @..graphics_loc_KJMH.l22 ; 0x3842
    inc word [bp - 0x0030]           ; 0x3844
    mov ax, word [bp - 0x0030]       ; 0x3847
    cmp ax, word [bp - 0x0034]       ; 0x384a
    je short @..graphics_loc_KJMH.l24 ; 0x384d
    inc cx                           ; 0x384f
@..graphics_loc_KJMH.l22:
    ror dl, 1                        ; 0x3850
    cmp dl, 0x80                     ; 0x3852
    jne short @..graphics_loc_KJMH.l23 ; 0x3855
    inc bx                           ; 0x3857
@..graphics_loc_KJMH.l23:
    loop @..graphics_loc_KJMH.l21    ; 0x3858
@..graphics_loc_KJMH.l24:
    mov word [bp - 0x0032], bx       ; 0x385a
    mov ax, word [bp - 0x0030]       ; 0x385d
    add ax, word [bp - 0x0040]       ; 0x3860
    add ax, word [bp - 0x0028]       ; 0x3863
    add ax, word [bp - 0x0026]       ; 0x3866
    mov cx, word [bp - 0x003e]       ; 0x3869
    sub cx, ax                       ; 0x386c
    jbe short @..graphics_loc_KJMH.l27 ; 0x386e
    mov bx, word [bp - 0x0032]       ; 0x3870
@..graphics_loc_KJMH.l25:
    or byte [cs:bx], dl              ; 0x3873
    ror dl, 1                        ; 0x3876
    cmp dl, 0x80                     ; 0x3878
    jne short @..graphics_loc_KJMH.l26 ; 0x387b
    inc bx                           ; 0x387d
@..graphics_loc_KJMH.l26:
    loop @..graphics_loc_KJMH.l25    ; 0x387e
@..graphics_loc_KJMH.l27:
    jmp near @..graphics_loc_KJMH.l41 ; 0x3880
@..graphics_loc_KJMH.l28:
    mov bx, word [bp - 0x001e]       ; 0x3883
    inc bx                           ; 0x3886
    mov word [bp - 0x003e], bx       ; 0x3887
    mov bx, cseg_35dd - IMAGE_BASE   ; 0x388a
    mov dl, 0x80                     ; 0x388d
    xor ax, ax                       ; 0x388f
    mov word [bp - 0x0030], ax       ; 0x3891
    mov word [bp - 0x0040], ax       ; 0x3894
    mov cx, word [bp - 0x002a]       ; 0x3897
    or cx, cx                        ; 0x389a
    je short @..graphics_loc_KJMH.l33 ; 0x389c
@..graphics_loc_KJMH.l29:
    mov al, byte [cs:bx]             ; 0x389e
    and al, dl                       ; 0x38a1
    jne short @..graphics_loc_KJMH.l30 ; 0x38a3
    or byte [cs:bx], dl              ; 0x38a5
    jmp short @..graphics_loc_KJMH.l31 ; 0x38a8
@..graphics_loc_KJMH.l30:
    inc word [bp - 0x0030]           ; 0x38aa
    inc cx                           ; 0x38ad
@..graphics_loc_KJMH.l31:
    ror dl, 1                        ; 0x38ae
    cmp dl, 0x80                     ; 0x38b0
    jne short @..graphics_loc_KJMH.l32 ; 0x38b3
    inc bx                           ; 0x38b5
@..graphics_loc_KJMH.l32:
    loop @..graphics_loc_KJMH.l29    ; 0x38b6
@..graphics_loc_KJMH.l33:
    mov word [bp - 0x0032], bx       ; 0x38b8
    mov ax, word [bp - 0x0030]       ; 0x38bb
    mov word [bp - 0x0040], ax       ; 0x38be
    add ax, word [bp - 0x002a]       ; 0x38c1
    mov bx, word [bp - 0x003e]       ; 0x38c4
    cmp bx, ax                       ; 0x38c7
    ja short @..graphics_loc_KJMH.l34 ; 0x38c9
    jmp near @..graphics_loc_KJMH.l56 ; 0x38cb
@..graphics_loc_KJMH.l34:
    sub bx, ax                       ; 0x38ce
    xor ax, ax                       ; 0x38d0
    mov word [bp - 0x0030], ax       ; 0x38d2
    sub bx, word [bp - 0x0026]       ; 0x38d5
    jbe short @..graphics_loc_KJMH.l41 ; 0x38d8
    mov word [bp - 0x0034], bx       ; 0x38da
    mov cx, word [bp - 0x0026]       ; 0x38dd
    mov bx, word [bp - 0x0032]       ; 0x38e0
@..graphics_loc_KJMH.l35:
    mov al, byte [cs:bx]             ; 0x38e3
    and al, dl                       ; 0x38e6
    je short @..graphics_loc_KJMH.l36 ; 0x38e8
    inc word [bp - 0x0030]           ; 0x38ea
    mov ax, word [bp - 0x0030]       ; 0x38ed
    cmp ax, word [bp - 0x0034]       ; 0x38f0
    je short @..graphics_loc_KJMH.l38 ; 0x38f3
    inc cx                           ; 0x38f5
@..graphics_loc_KJMH.l36:
    ror dl, 1                        ; 0x38f6
    cmp dl, 0x80                     ; 0x38f8
    jne short @..graphics_loc_KJMH.l37 ; 0x38fb
    inc bx                           ; 0x38fd
@..graphics_loc_KJMH.l37:
    loop @..graphics_loc_KJMH.l35    ; 0x38fe
@..graphics_loc_KJMH.l38:
    mov word [bp - 0x0032], bx       ; 0x3900
    mov ax, word [bp - 0x0030]       ; 0x3903
    add ax, word [bp - 0x0040]       ; 0x3906
    add ax, word [bp - 0x002a]       ; 0x3909
    add ax, word [bp - 0x0026]       ; 0x390c
    mov cx, word [bp - 0x003e]       ; 0x390f
    sub cx, ax                       ; 0x3912
    jbe short @..graphics_loc_KJMH.l41 ; 0x3914
    mov bx, word [bp - 0x0032]       ; 0x3916
@..graphics_loc_KJMH.l39:
    or byte [cs:bx], dl              ; 0x3919
    ror dl, 1                        ; 0x391c
    cmp dl, 0x80                     ; 0x391e
    jne short @..graphics_loc_KJMH.l40 ; 0x3921
    inc bx                           ; 0x3923
@..graphics_loc_KJMH.l40:
    loop @..graphics_loc_KJMH.l39    ; 0x3924
@..graphics_loc_KJMH.l41:
    mov ax, word [bp + 0x1a]         ; 0x3926
    and al, 2                        ; 0x3929
    jne short @..graphics_loc_KJMH.l48 ; 0x392b
    mov bx, cseg_3605 - IMAGE_BASE   ; 0x392d
    mov dl, 0x80                     ; 0x3930
    xor ax, ax                       ; 0x3932
    mov word [bp - 0x0030], ax       ; 0x3934
    mov word [bp - 0x0040], ax       ; 0x3937
    mov cx, word [bp - 0x0024]       ; 0x393a
    or cx, cx                        ; 0x393d
    je short @..graphics_loc_KJMH.l46 ; 0x393f
@..graphics_loc_KJMH.l42:
    mov al, byte [cs:bx]             ; 0x3941
    and al, dl                       ; 0x3944
    jne short @..graphics_loc_KJMH.l43 ; 0x3946
    or byte [cs:bx], dl              ; 0x3948
    jmp short @..graphics_loc_KJMH.l44 ; 0x394b
@..graphics_loc_KJMH.l43:
    inc word [bp - 0x0030]           ; 0x394d
    inc cx                           ; 0x3950
@..graphics_loc_KJMH.l44:
    ror dl, 1                        ; 0x3951
    cmp dl, 0x80                     ; 0x3953
    jne short @..graphics_loc_KJMH.l45 ; 0x3956
    inc bx                           ; 0x3958
@..graphics_loc_KJMH.l45:
    loop @..graphics_loc_KJMH.l42    ; 0x3959
@..graphics_loc_KJMH.l46:
    mov ax, word [bp - 0x0030]       ; 0x395b
    mov word [bp - 0x0040], ax       ; 0x395e
    add ax, word [bp - 0x0024]       ; 0x3961
    mov bx, word [bp - 0x0004]       ; 0x3964
    mov cl, 3                        ; 0x3967
    shl bx, cl                       ; 0x3969
    cmp bx, ax                       ; 0x396b
    ja short @..graphics_loc_KJMH.l47 ; 0x396d
    jmp near @..graphics_loc_KJMH.l56 ; 0x396f
@..graphics_loc_KJMH.l47:
    jmp short @..graphics_loc_KJMH.l54 ; 0x3972
@..graphics_loc_KJMH.l48:
    mov bx, cseg_3605 - IMAGE_BASE   ; 0x3974
    mov dl, 0x80                     ; 0x3977
    xor ax, ax                       ; 0x3979
    mov word [bp - 0x0030], ax       ; 0x397b
    mov word [bp - 0x0040], ax       ; 0x397e
    mov cx, word [bp - 0x002c]       ; 0x3981
    or cx, cx                        ; 0x3984
    je short @..graphics_loc_KJMH.l53 ; 0x3986
@..graphics_loc_KJMH.l49:
    mov al, byte [cs:bx]             ; 0x3988
    and al, dl                       ; 0x398b
    jne short @..graphics_loc_KJMH.l50 ; 0x398d
    or byte [cs:bx], dl              ; 0x398f
    jmp short @..graphics_loc_KJMH.l51 ; 0x3992
@..graphics_loc_KJMH.l50:
    inc word [bp - 0x0030]           ; 0x3994
    inc cx                           ; 0x3997
@..graphics_loc_KJMH.l51:
    ror dl, 1                        ; 0x3998
    cmp dl, 0x80                     ; 0x399a
    jne short @..graphics_loc_KJMH.l52 ; 0x399d
    inc bx                           ; 0x399f
@..graphics_loc_KJMH.l52:
    loop @..graphics_loc_KJMH.l49    ; 0x39a0
@..graphics_loc_KJMH.l53:
    mov ax, word [bp - 0x0030]       ; 0x39a2
    add ax, word [bp - 0x002c]       ; 0x39a5
    mov bx, word [bp - 0x0004]       ; 0x39a8
    mov cl, 3                        ; 0x39ab
    shl bx, cl                       ; 0x39ad
    cmp bx, ax                       ; 0x39af
    jbe short @..graphics_loc_KJMH.l56 ; 0x39b1
@..graphics_loc_KJMH.l54:
    mov ax, word [bp + 0x20]         ; 0x39b3
    mov bl, 0xc                      ; 0x39b6
    div bl                           ; 0x39b8
    xor ah, ah                       ; 0x39ba
    mov word [bp - 0x0030], ax       ; 0x39bc
@..graphics_loc_KJMH.l55:
    mov si, word [bp + 0x1c]         ; 0x39bf
    mov bx, word [bp - 0x0008]       ; 0x39c2
    mov ds, bx                       ; 0x39c5
    xor ah, ah                       ; 0x39c7
    mov al, byte [ss:si]             ; 0x39c9
    or al, al                        ; 0x39cc
    je short @..graphics_loc_KJMH.l56 ; 0x39ce
    call leaf_loc_TVGR               ; 0x39d0
    call graphics_loc_NVPK           ; 0x39d3
    inc word [bp + 0x1c]             ; 0x39d6
    jmp short @..graphics_loc_KJMH.l55 ; 0x39d9
@..graphics_loc_KJMH.l56:
    pop di                           ; 0x39db
    pop si                           ; 0x39dc
    pop es                           ; 0x39dd
    pop ds                           ; 0x39de
    mov sp, bp                       ; 0x39df
    pop bp                           ; 0x39e1
    ret                              ; 0x39e2
