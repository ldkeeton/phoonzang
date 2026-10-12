io_loc_35ba:
    push bp                          ; 0x35ba
    mov bp, sp                       ; 0x35bb
    sub sp, byte 8                   ; 0x35bd
    push ds                          ; 0x35c0
    push es                          ; 0x35c1
    push di                          ; 0x35c2
    push si                          ; 0x35c3
    mov ax, ds                       ; 0x35c4
    mov es, ax                       ; 0x35c6
    lds si, word [cs:cseg_01f7 - IMAGE_BASE] ; 0x35c8
    mov di, word [bp + 0xc]          ; 0x35cd
    mov cx, 0x300                    ; 0x35d0
    rep movsb                        ; 0x35d3
    pop si                           ; 0x35d5
    pop di                           ; 0x35d6
    pop es                           ; 0x35d7
    pop ds                           ; 0x35d8
    mov sp, bp                       ; 0x35d9
    pop bp                           ; 0x35db
    ret                              ; 0x35dc

    times 65 db 0

loc_361e:
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
    jb short @..local.l66            ; 0x3632
    mov ax, word [bp + 0x18]         ; 0x3634
    sub ax, word [bp + 0x16]         ; 0x3637
    jb short @..local.l66            ; 0x363a
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
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x3664
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
    je short @..local.l66            ; 0x3684
    call leaf_loc_39e3               ; 0x3686
    xor ah, ah                       ; 0x3689
    mov al, byte [bx + 0x2]          ; 0x368b
    mov word [bp - 0x0002], ax       ; 0x368e
    mov cx, ax                       ; 0x3691
    mov al, byte [bx + 0x3]          ; 0x3693
    mov word [bp - 0x0004], ax       ; 0x3696
    or ax, cx                        ; 0x3699
    jne short @..local.l67           ; 0x369b
@..local.l66:
    jmp near @..local.l121           ; 0x369d
@..local.l67:
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
    jne short @..local.l68           ; 0x36c5
    jmp near @..local.l72            ; 0x36c7
@..local.l68:
    cmp bx, byte 0x64                ; 0x36ca
    jae short @..local.l66           ; 0x36cd
    mov ax, word [bp - 0x0002]       ; 0x36cf
    mov cl, 3                        ; 0x36d2
    shl ax, cl                       ; 0x36d4
    mov cx, ax                       ; 0x36d6
    mov bx, word [bp + 0x20]         ; 0x36d8
    mul bx                           ; 0x36db
data_36dd:
cseg_36dd:
    mov bx, 0x64                     ; 0x36dd
    div bx                           ; 0x36e0
    cmp dx, byte 0x32                ; 0x36e2
    jb short @..local.l69            ; 0x36e5
    inc ax                           ; 0x36e7
@..local.l69:
    or ax, ax                        ; 0x36e8
    je short @..local.l70            ; 0x36ea
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
cseg_3705:
    mov word [bp - 0x0030], ax       ; 0x3705
    mov word [bp - 0x0032], cx       ; 0x3708
    call leaf_loc_3a51               ; 0x370b
@..local.l70:
    mov ax, word [bp - 0x0004]       ; 0x370e
    mov cl, 3                        ; 0x3711
    shl ax, cl                       ; 0x3713
    mov cx, ax                       ; 0x3715
    mov bx, word [bp + 0x20]         ; 0x3717
    mul bx                           ; 0x371a
    mov bx, 0x64                     ; 0x371c
    div bx                           ; 0x371f
    cmp dx, byte 0x32                ; 0x3721
    jb short @..local.l71            ; 0x3724
    inc ax                           ; 0x3726
@..local.l71:
    or ax, ax                        ; 0x3727
    je short @..local.l72            ; 0x3729
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
    call leaf_loc_3a51               ; 0x374a
@..local.l72:
    mov bx, word [bp - 0x003a]       ; 0x374d
    mov ax, word [bp - 0x0038]       ; 0x3750
    mov es, ax                       ; 0x3753
    mov ax, word [bp + 0x12]         ; 0x3755
    sub ax, word [bp + 0xe]          ; 0x3758
    jge short @..local.l73           ; 0x375b
    xor ax, ax                       ; 0x375d
@..local.l73:
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
    jge short @..local.l74           ; 0x3778
    xor ax, ax                       ; 0x377a
@..local.l74:
    mov word [bp - 0x002a], ax       ; 0x377c
    add ax, word [bp - 0x0028]       ; 0x377f
    sub cx, ax                       ; 0x3782
    ja short @..local.l75            ; 0x3784
    jmp near @..local.l121           ; 0x3786
@..local.l75:
    mov word [bp - 0x0026], cx       ; 0x3789
    mov ax, word [bp + 0x16]         ; 0x378c
    sub ax, word [bp + 0x10]         ; 0x378f
    jge short @..local.l76           ; 0x3792
    xor ax, ax                       ; 0x3794
@..local.l76:
    mov word [bp - 0x0024], ax       ; 0x3796
    mov ax, word [bp + 0x10]         ; 0x3799
    mov bx, word [bp - 0x0004]       ; 0x379c
    mov cl, 3                        ; 0x379f
    shl bx, cl                       ; 0x37a1
    mov cx, bx                       ; 0x37a3
    dec bx                           ; 0x37a5
    add ax, bx                       ; 0x37a6
    sub ax, word [bp + 0x18]         ; 0x37a8
    jge short @..local.l77           ; 0x37ab
    xor ax, ax                       ; 0x37ad
@..local.l77:
    mov word [bp - 0x002c], ax       ; 0x37af
    add ax, word [bp - 0x0024]       ; 0x37b2
    sub cx, ax                       ; 0x37b5
    ja short @..local.l78            ; 0x37b7
    jmp near @..local.l121           ; 0x37b9
@..local.l78:
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
    je short @..local.l79            ; 0x37d8
    jmp near @..local.l93            ; 0x37da
@..local.l79:
    mov bx, word [bp - 0x001e]       ; 0x37dd
    inc bx                           ; 0x37e0
    mov word [bp - 0x003e], bx       ; 0x37e1
    mov bx, cseg_36dd - IMAGE_BASE   ; 0x37e4
    mov dl, 0x80                     ; 0x37e7
    xor ax, ax                       ; 0x37e9
    mov word [bp - 0x0030], ax       ; 0x37eb
    mov word [bp - 0x0040], ax       ; 0x37ee
    mov cx, word [bp - 0x0028]       ; 0x37f1
    or cx, cx                        ; 0x37f4
    je short @..local.l84            ; 0x37f6
@..local.l80:
    mov al, byte [cs:bx]             ; 0x37f8
    and al, dl                       ; 0x37fb
    jne short @..local.l81           ; 0x37fd
    or byte [cs:bx], dl              ; 0x37ff
    jmp short @..local.l82           ; 0x3802
@..local.l81:
    inc word [bp - 0x0030]           ; 0x3804
    inc cx                           ; 0x3807
@..local.l82:
    ror dl, 1                        ; 0x3808
    cmp dl, 0x80                     ; 0x380a
    jne short @..local.l83           ; 0x380d
    inc bx                           ; 0x380f
@..local.l83:
    loop @..local.l80                ; 0x3810
@..local.l84:
    mov word [bp - 0x0032], bx       ; 0x3812
    mov ax, word [bp - 0x0030]       ; 0x3815
    mov word [bp - 0x0040], ax       ; 0x3818
    add ax, word [bp - 0x0028]       ; 0x381b
    mov bx, word [bp - 0x003e]       ; 0x381e
    cmp bx, ax                       ; 0x3821
    ja short @..local.l85            ; 0x3823
    jmp near @..local.l121           ; 0x3825
@..local.l85:
    sub bx, ax                       ; 0x3828
    xor ax, ax                       ; 0x382a
    mov word [bp - 0x0030], ax       ; 0x382c
    sub bx, word [bp - 0x0026]       ; 0x382f
    jbe short @..local.l92           ; 0x3832
    mov word [bp - 0x0034], bx       ; 0x3834
    mov cx, word [bp - 0x0026]       ; 0x3837
    mov bx, word [bp - 0x0032]       ; 0x383a
@..local.l86:
    mov al, byte [cs:bx]             ; 0x383d
    and al, dl                       ; 0x3840
    je short @..local.l87            ; 0x3842
    inc word [bp - 0x0030]           ; 0x3844
    mov ax, word [bp - 0x0030]       ; 0x3847
    cmp ax, word [bp - 0x0034]       ; 0x384a
    je short @..local.l89            ; 0x384d
    inc cx                           ; 0x384f
@..local.l87:
    ror dl, 1                        ; 0x3850
    cmp dl, 0x80                     ; 0x3852
    jne short @..local.l88           ; 0x3855
    inc bx                           ; 0x3857
@..local.l88:
    loop @..local.l86                ; 0x3858
@..local.l89:
    mov word [bp - 0x0032], bx       ; 0x385a
    mov ax, word [bp - 0x0030]       ; 0x385d
    add ax, word [bp - 0x0040]       ; 0x3860
    add ax, word [bp - 0x0028]       ; 0x3863
    add ax, word [bp - 0x0026]       ; 0x3866
    mov cx, word [bp - 0x003e]       ; 0x3869
    sub cx, ax                       ; 0x386c
    jbe short @..local.l92           ; 0x386e
    mov bx, word [bp - 0x0032]       ; 0x3870
@..local.l90:
    or byte [cs:bx], dl              ; 0x3873
    ror dl, 1                        ; 0x3876
    cmp dl, 0x80                     ; 0x3878
    jne short @..local.l91           ; 0x387b
    inc bx                           ; 0x387d
@..local.l91:
    loop @..local.l90                ; 0x387e
@..local.l92:
    jmp near @..local.l106           ; 0x3880
@..local.l93:
    mov bx, word [bp - 0x001e]       ; 0x3883
    inc bx                           ; 0x3886
    mov word [bp - 0x003e], bx       ; 0x3887
    mov bx, cseg_36dd - IMAGE_BASE   ; 0x388a
    mov dl, 0x80                     ; 0x388d
    xor ax, ax                       ; 0x388f
    mov word [bp - 0x0030], ax       ; 0x3891
    mov word [bp - 0x0040], ax       ; 0x3894
    mov cx, word [bp - 0x002a]       ; 0x3897
    or cx, cx                        ; 0x389a
    je short @..local.l98            ; 0x389c
@..local.l94:
    mov al, byte [cs:bx]             ; 0x389e
    and al, dl                       ; 0x38a1
    jne short @..local.l95           ; 0x38a3
    or byte [cs:bx], dl              ; 0x38a5
    jmp short @..local.l96           ; 0x38a8
@..local.l95:
    inc word [bp - 0x0030]           ; 0x38aa
    inc cx                           ; 0x38ad
@..local.l96:
    ror dl, 1                        ; 0x38ae
    cmp dl, 0x80                     ; 0x38b0
    jne short @..local.l97           ; 0x38b3
    inc bx                           ; 0x38b5
@..local.l97:
    loop @..local.l94                ; 0x38b6
@..local.l98:
    mov word [bp - 0x0032], bx       ; 0x38b8
    mov ax, word [bp - 0x0030]       ; 0x38bb
    mov word [bp - 0x0040], ax       ; 0x38be
    add ax, word [bp - 0x002a]       ; 0x38c1
    mov bx, word [bp - 0x003e]       ; 0x38c4
    cmp bx, ax                       ; 0x38c7
    ja short @..local.l99            ; 0x38c9
    jmp near @..local.l121           ; 0x38cb
@..local.l99:
    sub bx, ax                       ; 0x38ce
    xor ax, ax                       ; 0x38d0
    mov word [bp - 0x0030], ax       ; 0x38d2
    sub bx, word [bp - 0x0026]       ; 0x38d5
    jbe short @..local.l106          ; 0x38d8
    mov word [bp - 0x0034], bx       ; 0x38da
    mov cx, word [bp - 0x0026]       ; 0x38dd
    mov bx, word [bp - 0x0032]       ; 0x38e0
@..local.l100:
    mov al, byte [cs:bx]             ; 0x38e3
    and al, dl                       ; 0x38e6
    je short @..local.l101           ; 0x38e8
    inc word [bp - 0x0030]           ; 0x38ea
    mov ax, word [bp - 0x0030]       ; 0x38ed
    cmp ax, word [bp - 0x0034]       ; 0x38f0
    je short @..local.l103           ; 0x38f3
    inc cx                           ; 0x38f5
@..local.l101:
    ror dl, 1                        ; 0x38f6
    cmp dl, 0x80                     ; 0x38f8
    jne short @..local.l102          ; 0x38fb
    inc bx                           ; 0x38fd
@..local.l102:
    loop @..local.l100               ; 0x38fe
@..local.l103:
    mov word [bp - 0x0032], bx       ; 0x3900
    mov ax, word [bp - 0x0030]       ; 0x3903
    add ax, word [bp - 0x0040]       ; 0x3906
    add ax, word [bp - 0x002a]       ; 0x3909
    add ax, word [bp - 0x0026]       ; 0x390c
    mov cx, word [bp - 0x003e]       ; 0x390f
    sub cx, ax                       ; 0x3912
    jbe short @..local.l106          ; 0x3914
    mov bx, word [bp - 0x0032]       ; 0x3916
@..local.l104:
    or byte [cs:bx], dl              ; 0x3919
    ror dl, 1                        ; 0x391c
    cmp dl, 0x80                     ; 0x391e
    jne short @..local.l105          ; 0x3921
    inc bx                           ; 0x3923
@..local.l105:
    loop @..local.l104               ; 0x3924
@..local.l106:
    mov ax, word [bp + 0x1a]         ; 0x3926
    and al, 2                        ; 0x3929
    jne short @..local.l113          ; 0x392b
    mov bx, cseg_3705 - IMAGE_BASE   ; 0x392d
    mov dl, 0x80                     ; 0x3930
    xor ax, ax                       ; 0x3932
    mov word [bp - 0x0030], ax       ; 0x3934
    mov word [bp - 0x0040], ax       ; 0x3937
    mov cx, word [bp - 0x0024]       ; 0x393a
    or cx, cx                        ; 0x393d
    je short @..local.l111           ; 0x393f
@..local.l107:
    mov al, byte [cs:bx]             ; 0x3941
    and al, dl                       ; 0x3944
    jne short @..local.l108          ; 0x3946
    or byte [cs:bx], dl              ; 0x3948
    jmp short @..local.l109          ; 0x394b
@..local.l108:
    inc word [bp - 0x0030]           ; 0x394d
    inc cx                           ; 0x3950
@..local.l109:
    ror dl, 1                        ; 0x3951
    cmp dl, 0x80                     ; 0x3953
    jne short @..local.l110          ; 0x3956
    inc bx                           ; 0x3958
@..local.l110:
    loop @..local.l107               ; 0x3959
@..local.l111:
    mov ax, word [bp - 0x0030]       ; 0x395b
    mov word [bp - 0x0040], ax       ; 0x395e
    add ax, word [bp - 0x0024]       ; 0x3961
    mov bx, word [bp - 0x0004]       ; 0x3964
    mov cl, 3                        ; 0x3967
    shl bx, cl                       ; 0x3969
    cmp bx, ax                       ; 0x396b
    ja short @..local.l112           ; 0x396d
    jmp near @..local.l121           ; 0x396f
@..local.l112:
    jmp short @..local.l119          ; 0x3972
@..local.l113:
    mov bx, cseg_3705 - IMAGE_BASE   ; 0x3974
    mov dl, 0x80                     ; 0x3977
    xor ax, ax                       ; 0x3979
    mov word [bp - 0x0030], ax       ; 0x397b
    mov word [bp - 0x0040], ax       ; 0x397e
    mov cx, word [bp - 0x002c]       ; 0x3981
    or cx, cx                        ; 0x3984
    je short @..local.l118           ; 0x3986
@..local.l114:
    mov al, byte [cs:bx]             ; 0x3988
    and al, dl                       ; 0x398b
    jne short @..local.l115          ; 0x398d
    or byte [cs:bx], dl              ; 0x398f
    jmp short @..local.l116          ; 0x3992
@..local.l115:
    inc word [bp - 0x0030]           ; 0x3994
    inc cx                           ; 0x3997
@..local.l116:
    ror dl, 1                        ; 0x3998
    cmp dl, 0x80                     ; 0x399a
    jne short @..local.l117          ; 0x399d
    inc bx                           ; 0x399f
@..local.l117:
    loop @..local.l114               ; 0x39a0
@..local.l118:
    mov ax, word [bp - 0x0030]       ; 0x39a2
    add ax, word [bp - 0x002c]       ; 0x39a5
    mov bx, word [bp - 0x0004]       ; 0x39a8
    mov cl, 3                        ; 0x39ab
    shl bx, cl                       ; 0x39ad
    cmp bx, ax                       ; 0x39af
    jbe short @..local.l121          ; 0x39b1
@..local.l119:
    mov ax, word [bp + 0x20]         ; 0x39b3
    mov bl, 0xc                      ; 0x39b6
    div bl                           ; 0x39b8
    xor ah, ah                       ; 0x39ba
    mov word [bp - 0x0030], ax       ; 0x39bc
@..local.l120:
    mov si, word [bp + 0x1c]         ; 0x39bf
    mov bx, word [bp - 0x0008]       ; 0x39c2
    mov ds, bx                       ; 0x39c5
    xor ah, ah                       ; 0x39c7
    mov al, byte [ss:si]             ; 0x39c9
    or al, al                        ; 0x39cc
    je short @..local.l121           ; 0x39ce
    call leaf_loc_39e3               ; 0x39d0
    call graphics_loc_3a8b           ; 0x39d3
    inc word [bp + 0x1c]             ; 0x39d6
    jmp short @..local.l120          ; 0x39d9
@..local.l121:
    pop di                           ; 0x39db
    pop si                           ; 0x39dc
    pop es                           ; 0x39dd
    pop ds                           ; 0x39de
    mov sp, bp                       ; 0x39df
    pop bp                           ; 0x39e1
    ret                              ; 0x39e2
