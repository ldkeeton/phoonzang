math_loc_361e:
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
    jb short @..math_loc_361e.l1     ; 0x3632
    mov ax, word [bp + 0x18]         ; 0x3634
    sub ax, word [bp + 0x16]         ; 0x3637
    jb short @..math_loc_361e.l1     ; 0x363a
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
    add ax, word [cs:data_01e1]      ; 0x3664
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
    je short @..math_loc_361e.l1     ; 0x3684
    call dos_con_loc_39e3            ; 0x3686
    xor ah, ah                       ; 0x3689
    mov al, byte [bx + 0x2]          ; 0x368b
    mov word [bp - 0x0002], ax       ; 0x368e
    mov cx, ax                       ; 0x3691
    mov al, byte [bx + 0x3]          ; 0x3693
    mov word [bp - 0x0004], ax       ; 0x3696
    or ax, cx                        ; 0x3699
    jne short @..math_loc_361e.l2    ; 0x369b
@..math_loc_361e.l1:
    jmp near @..math_loc_361e.l56    ; 0x369d
@..math_loc_361e.l2:
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
    jne short @..math_loc_361e.l3    ; 0x36c5
    jmp near @..math_loc_361e.l7     ; 0x36c7
@..math_loc_361e.l3:
    cmp bx, byte 0x64                ; 0x36ca
    jae short @..math_loc_361e.l1    ; 0x36cd
    mov ax, word [bp - 0x0002]       ; 0x36cf
    mov cl, 3                        ; 0x36d2
    shl ax, cl                       ; 0x36d4
    mov cx, ax                       ; 0x36d6
    mov bx, word [bp + 0x20]         ; 0x36d8
    mul bx                           ; 0x36db
    mov bx, 0x64                     ; 0x36dd
    div bx                           ; 0x36e0
    cmp dx, byte 0x32                ; 0x36e2
    jb short @..math_loc_361e.l4     ; 0x36e5
    inc ax                           ; 0x36e7
@..math_loc_361e.l4:
    or ax, ax                        ; 0x36e8
    je short @..math_loc_361e.l5     ; 0x36ea
    xor dx, dx                       ; 0x36ec
    mov bx, ax                       ; 0x36ee
    mov word [bp - 0x0034], ax       ; 0x36f0
    mov ax, cx                       ; 0x36f3
    div bx                           ; 0x36f5
    mov di, data_36dd                ; 0x36f7
    mov bx, word [bp - 0x0034]       ; 0x36fa
    shr bx, 1                        ; 0x36fd
    mov word [bp - 0x003c], bx       ; 0x36ff
    mov si, ax                       ; 0x3702
    dec si                           ; 0x3704
    mov word [bp - 0x0030], ax       ; 0x3705
    mov word [bp - 0x0032], cx       ; 0x3708
    call leaf_loc_3a51               ; 0x370b
@..math_loc_361e.l5:
    mov ax, word [bp - 0x0004]       ; 0x370e
    mov cl, 3                        ; 0x3711
    shl ax, cl                       ; 0x3713
    mov cx, ax                       ; 0x3715
    mov bx, word [bp + 0x20]         ; 0x3717
    mul bx                           ; 0x371a
    mov bx, 0x64                     ; 0x371c
    div bx                           ; 0x371f
    cmp dx, byte 0x32                ; 0x3721
    jb short @..math_loc_361e.l6     ; 0x3724
    inc ax                           ; 0x3726
@..math_loc_361e.l6:
    or ax, ax                        ; 0x3727
    je short @..math_loc_361e.l7     ; 0x3729
    xor dx, dx                       ; 0x372b
    mov bx, ax                       ; 0x372d
    mov word [bp - 0x0034], ax       ; 0x372f
    mov ax, cx                       ; 0x3732
    div bx                           ; 0x3734
    mov di, data_3705                ; 0x3736
    mov bx, word [bp - 0x0034]       ; 0x3739
    shr bx, 1                        ; 0x373c
    mov word [bp - 0x003c], bx       ; 0x373e
    mov si, ax                       ; 0x3741
    dec si                           ; 0x3743
    mov word [bp - 0x0030], ax       ; 0x3744
    mov word [bp - 0x0032], cx       ; 0x3747
    call leaf_loc_3a51               ; 0x374a
@..math_loc_361e.l7:
    mov bx, word [bp - 0x003a]       ; 0x374d
    mov ax, word [bp - 0x0038]       ; 0x3750
    mov es, ax                       ; 0x3753
    mov ax, word [bp + 0x12]         ; 0x3755
    sub ax, word [bp + 0xe]          ; 0x3758
    jge short @..math_loc_361e.l8    ; 0x375b
    xor ax, ax                       ; 0x375d
@..math_loc_361e.l8:
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
    jge short @..math_loc_361e.l9    ; 0x3778
    xor ax, ax                       ; 0x377a
@..math_loc_361e.l9:
    mov word [bp - 0x002a], ax       ; 0x377c
    add ax, word [bp - 0x0028]       ; 0x377f
    sub cx, ax                       ; 0x3782
    ja short @..math_loc_361e.l10    ; 0x3784
    jmp near @..math_loc_361e.l56    ; 0x3786
@..math_loc_361e.l10:
    mov word [bp - 0x0026], cx       ; 0x3789
    mov ax, word [bp + 0x16]         ; 0x378c
    sub ax, word [bp + 0x10]         ; 0x378f
    jge short @..math_loc_361e.l11   ; 0x3792
    xor ax, ax                       ; 0x3794
@..math_loc_361e.l11:
    mov word [bp - 0x0024], ax       ; 0x3796
    mov ax, word [bp + 0x10]         ; 0x3799
    mov bx, word [bp - 0x0004]       ; 0x379c
    mov cl, 3                        ; 0x379f
    shl bx, cl                       ; 0x37a1
    mov cx, bx                       ; 0x37a3
    dec bx                           ; 0x37a5
    add ax, bx                       ; 0x37a6
    sub ax, word [bp + 0x18]         ; 0x37a8
    jge short @..math_loc_361e.l12   ; 0x37ab
    xor ax, ax                       ; 0x37ad
@..math_loc_361e.l12:
    mov word [bp - 0x002c], ax       ; 0x37af
    add ax, word [bp - 0x0024]       ; 0x37b2
    sub cx, ax                       ; 0x37b5
    ja short @..math_loc_361e.l13    ; 0x37b7
    jmp near @..math_loc_361e.l56    ; 0x37b9
@..math_loc_361e.l13:
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
    je short @..math_loc_361e.l14    ; 0x37d8
    jmp near @..math_loc_361e.l28    ; 0x37da
@..math_loc_361e.l14:
    mov bx, word [bp - 0x001e]       ; 0x37dd
    inc bx                           ; 0x37e0
    mov word [bp - 0x003e], bx       ; 0x37e1
    mov bx, data_36dd                ; 0x37e4
    mov dl, 0x80                     ; 0x37e7
    xor ax, ax                       ; 0x37e9
    mov word [bp - 0x0030], ax       ; 0x37eb
    mov word [bp - 0x0040], ax       ; 0x37ee
    mov cx, word [bp - 0x0028]       ; 0x37f1
    or cx, cx                        ; 0x37f4
    je short @..math_loc_361e.l19    ; 0x37f6
@..math_loc_361e.l15:
    mov al, byte [cs:bx]             ; 0x37f8
    and al, dl                       ; 0x37fb
    jne short @..math_loc_361e.l16   ; 0x37fd
    or byte [cs:bx], dl              ; 0x37ff
    jmp short @..math_loc_361e.l17   ; 0x3802
@..math_loc_361e.l16:
    inc word [bp - 0x0030]           ; 0x3804
    inc cx                           ; 0x3807
@..math_loc_361e.l17:
    ror dl, 1                        ; 0x3808
    cmp dl, 0x80                     ; 0x380a
    jne short @..math_loc_361e.l18   ; 0x380d
    inc bx                           ; 0x380f
@..math_loc_361e.l18:
    loop @..math_loc_361e.l15        ; 0x3810
@..math_loc_361e.l19:
    mov word [bp - 0x0032], bx       ; 0x3812
    mov ax, word [bp - 0x0030]       ; 0x3815
    mov word [bp - 0x0040], ax       ; 0x3818
    add ax, word [bp - 0x0028]       ; 0x381b
