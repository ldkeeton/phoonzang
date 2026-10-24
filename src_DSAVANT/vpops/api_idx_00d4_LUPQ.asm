; auto-generated
api_idx_00d4_LUPQ:
    mov ax, 0xff2c                   ; 0x3710
    call aztec_csav                  ; 0x3713
    lea ax, word [bp - 0x00d4]       ; 0x3716
    push ax                          ; 0x371a
    mov ax, 0xdaf                    ; 0x371b
    push ax                          ; 0x371e
    call load_message_string         ; 0x371f
    add sp, byte 4                   ; 0x3722
    mov word [bp - 0x0006], 0        ; 0x3725
    jmp near @..api_idx_00d4_LUPQ.l11 ; 0x372a
@..api_idx_00d4_LUPQ.l1:
    mov ax, 0x2c                     ; 0x372d
    imul word [bp - 0x0006]          ; 0x3730
    mov cx, ax                       ; 0x3733
    mov ax, word [party_char]        ; 0x3735
    add ax, cx                       ; 0x3738
    mov word [bp - 0x00aa], ax       ; 0x373a
    mov ax, 0xa                      ; 0x373e
    push ax                          ; 0x3741
    call random_below                ; 0x3742
    pop cx                           ; 0x3745
    push ax                          ; 0x3746
    mov ax, 0x248                    ; 0x3747
    imul word [bp - 0x0006]          ; 0x374a
    mov bx, ax                       ; 0x374d
    mov al, byte [bx + member_state + 0xf] ; 0x374f
    sub ah, ah                       ; 0x3753
    mov cx, ax                       ; 0x3755
    pop ax                           ; 0x3757
    add ax, cx                       ; 0x3758
    push ax                          ; 0x375a
    mov ax, 0x2c                     ; 0x375b
    imul word [bp - 0x0006]          ; 0x375e
    mov si, ax                       ; 0x3761
    mov bx, word [party_char]        ; 0x3763
    mov al, byte [bx + si + 0x29]    ; 0x3767
    cbw                              ; 0x376a
    mov cx, ax                       ; 0x376b
    pop ax                           ; 0x376d
    add ax, cx                       ; 0x376e
    mov word [bp - 0x00a4], ax       ; 0x3770
    cmp ax, strict word 1            ; 0x3774
    jge short @..api_idx_00d4_LUPQ.l2 ; 0x3777
    mov word [bp - 0x00a4], 1        ; 0x3779
@..api_idx_00d4_LUPQ.l2:
    cmp word [bp - 0x00a4], byte 0x64 ; 0x377f
    jle short @..api_idx_00d4_LUPQ.l3 ; 0x3784
    mov word [bp - 0x00a4], 0x64     ; 0x3786
@..api_idx_00d4_LUPQ.l3:
    mov ax, 0x248                    ; 0x378c
    imul word [bp - 0x0006]          ; 0x378f
    mov bx, ax                       ; 0x3792
    mov al, byte [bx + member_state + 0xe] ; 0x3794
    sub ah, ah                       ; 0x3798
    mov cx, ax                       ; 0x379a
    mov ax, word [bp - 0x00a4]       ; 0x379c
    cwd                              ; 0x37a0
    idiv cx                          ; 0x37a1
    mov word [bp - 0x00a6], ax       ; 0x37a3
    mov bx, word [bp - 0x00aa]       ; 0x37a7
    cmp byte [bx + 0x24], 0          ; 0x37ab
    jbe short @..api_idx_00d4_LUPQ.l4 ; 0x37af
    mov ax, word [bp - 0x00a4]       ; 0x37b1
    mov cx, 2                        ; 0x37b5
    cwd                              ; 0x37b8
    idiv cx                          ; 0x37b9
    push ax                          ; 0x37bb
    call random_below                ; 0x37bc
    pop cx                           ; 0x37bf
    push ax                          ; 0x37c0
    mov ax, 0x14                     ; 0x37c1
    push ax                          ; 0x37c4
    call random_below                ; 0x37c5
    pop cx                           ; 0x37c8
    mov cx, ax                       ; 0x37c9
    pop ax                           ; 0x37cb
    add ax, cx                       ; 0x37cc
    push ax                          ; 0x37ce
    mov ax, word [bp - 0x00a4]       ; 0x37cf
    mov cx, 2                        ; 0x37d3
    cwd                              ; 0x37d6
    idiv cx                          ; 0x37d7
    mov cx, ax                       ; 0x37d9
    pop ax                           ; 0x37db
    add ax, cx                       ; 0x37dc
    mov bx, word [bp - 0x00aa]       ; 0x37de
    mov byte [bx + 0x25], al         ; 0x37e2
@..api_idx_00d4_LUPQ.l4:
    mov bx, word [bp - 0x00aa]       ; 0x37e5
    mov byte [bx + 0x21], 0          ; 0x37e9
    mov bx, word [bp - 0x00aa]       ; 0x37ed
    mov byte [bx + 0x1c], 0          ; 0x37f1
    mov bx, word [bp - 0x00aa]       ; 0x37f5
    mov byte [bx + 0x1d], 1          ; 0x37f9
    mov ax, 0x248                    ; 0x37fd
    imul word [bp - 0x0006]          ; 0x3800
    mov bx, ax                       ; 0x3803
    mov al, byte [bx + member_state + 0xe] ; 0x3805
    sub ah, ah                       ; 0x3809
    push ax                          ; 0x380b
    mov ax, 0x2c                     ; 0x380c
    imul word [bp - 0x0006]          ; 0x380f
    mov si, ax                       ; 0x3812
    mov bx, word [party_char]        ; 0x3814
    mov al, byte [bx + si + 0x29]    ; 0x3818
    cbw                              ; 0x381b
    mov cx, 0xa                      ; 0x381c
    cwd                              ; 0x381f
    idiv cx                          ; 0x3820
    mov cx, ax                       ; 0x3822
    pop ax                           ; 0x3824
    add ax, cx                       ; 0x3825
    mov word [bp - 0x00a8], ax       ; 0x3827
    cmp ax, strict word 1            ; 0x382b
    jge short @..api_idx_00d4_LUPQ.l5 ; 0x382e
    mov word [bp - 0x00a8], 1        ; 0x3830
@..api_idx_00d4_LUPQ.l5:
    cmp word [bp - 0x00a8], byte 4   ; 0x3836
    jle short @..api_idx_00d4_LUPQ.l6 ; 0x383b
    mov word [bp - 0x00a8], 4        ; 0x383d
@..api_idx_00d4_LUPQ.l6:
    mov word [bp - 0x00a2], 0        ; 0x3843
@..api_idx_00d4_LUPQ.l7:
    mov ax, word [bp - 0x00a2]       ; 0x3849
    cmp ax, word [bp - 0x00a8]       ; 0x384d
    jge short @..api_idx_00d4_LUPQ.l8 ; 0x3851
    mov ax, 0x248                    ; 0x3853
    imul word [bp - 0x0006]          ; 0x3856
    mov bx, ax                       ; 0x3859
    cmp byte [bx + member_state + 0x5], 2 ; 0x385b
    jae short @..api_idx_00d4_LUPQ.l8 ; 0x3860
    cmp byte [bx + cell_key_grid + 0x129], 0 ; 0x3862
    ja short @..api_idx_00d4_LUPQ.l8 ; 0x3867
    cmp byte [bx + cell_key_grid + 0x128], 0 ; 0x3869
    jbe short @..api_idx_00d4_LUPQ.l9 ; 0x386e
@..api_idx_00d4_LUPQ.l8:
    mov bx, word [bp - 0x00aa]       ; 0x3870
    mov si, word [bp - 0x00a2]       ; 0x3874
    mov byte [bx + si + 0x18], 0     ; 0x3878
    jmp short @..api_idx_00d4_LUPQ.l10 ; 0x387c
@..api_idx_00d4_LUPQ.l9:
    mov al, byte [bp - 0x00a4]       ; 0x387e
    mov bx, word [bp - 0x00aa]       ; 0x3882
    mov si, word [bp - 0x00a2]       ; 0x3886
    mov byte [bx + si + 0x18], al    ; 0x388a
    mov ax, word [bp - 0x00a6]       ; 0x388d
    sub word [bp - 0x00a4], ax       ; 0x3891
@..api_idx_00d4_LUPQ.l10:
    inc word [bp - 0x00a2]           ; 0x3895
    mov ax, word [bp - 0x00a2]       ; 0x3899
    cmp ax, strict word 4            ; 0x389d
    jl short @..api_idx_00d4_LUPQ.l7 ; 0x38a0
    inc word [bp - 0x0006]           ; 0x38a2
@..api_idx_00d4_LUPQ.l11:
    mov ax, word [bp - 0x0006]       ; 0x38a5
    cmp ax, word [bss_69c8]          ; 0x38a8
    jge short @..api_idx_00d4_LUPQ.l12 ; 0x38ac
    jmp near @..api_idx_00d4_LUPQ.l1 ; 0x38ae
@..api_idx_00d4_LUPQ.l12:
    mov ax, 0                        ; 0x38b1
    push ax                          ; 0x38b4
    mov ax, 0x2d                     ; 0x38b5
    push ax                          ; 0x38b8
    mov ax, bss_90d8                 ; 0x38b9
    push ax                          ; 0x38bc
    call aztec_setmem                ; 0x38bd
    add sp, byte 6                   ; 0x38c0
    mov word [bp - 0x00b4], 0        ; 0x38c3
    call flush_keyboard              ; 0x38c9
    mov word [bp - 0x0006], 0        ; 0x38cc
@..api_idx_00d4_LUPQ.l13:
    mov ax, word [bp - 0x0006]       ; 0x38d1
    cmp ax, word [bss_69c8]          ; 0x38d4
    jl short @..api_idx_00d4_LUPQ.l14 ; 0x38d8
    jmp near @..api_idx_00d4_LUPQ.l96 ; 0x38da
@..api_idx_00d4_LUPQ.l14:
    push ax                          ; 0x38dd
    call member_is_active            ; 0x38de
    pop cx                           ; 0x38e1
    test ax, ax                      ; 0x38e2
    jne short @..api_idx_00d4_LUPQ.l15 ; 0x38e4
    jmp near @..api_idx_00d4_LUPQ.l82 ; 0x38e6
@..api_idx_00d4_LUPQ.l15:
    mov ax, word [bp - 0x0006]       ; 0x38e9
    mov cx, word [bp - 0x00b4]       ; 0x38ec
    shl cx, 1                        ; 0x38f0
    mov bx, cx                       ; 0x38f2
    add bx, bp                       ; 0x38f4
    mov word [bx - 0x00c0], ax       ; 0x38f6
    inc word [bp - 0x00b4]           ; 0x38fa
    mov cx, 0x2c                     ; 0x38fe
    imul cx                          ; 0x3901
    mov cx, ax                       ; 0x3903
    mov ax, word [party_char]        ; 0x3905
    add ax, cx                       ; 0x3908
    mov word [bp - 0x00aa], ax       ; 0x390a
@..api_idx_00d4_LUPQ.l16:
    mov ax, 0x2c                     ; 0x390e
    imul word [bp - 0x0006]          ; 0x3911
    mov si, ax                       ; 0x3914
    mov bx, word [party_char]        ; 0x3916
    cmp byte [bx + si + 0x1f], 1     ; 0x391a
    jb short @..api_idx_00d4_LUPQ.l17 ; 0x391e
    mov al, byte [bx + si + 0x1f]    ; 0x3920
    sub ah, ah                       ; 0x3923
    cmp ax, word [bss_8466]          ; 0x3925
    jle short @..api_idx_00d4_LUPQ.l18 ; 0x3929
@..api_idx_00d4_LUPQ.l17:
    mov byte [bx + si + 0x1f], 1     ; 0x392b
@..api_idx_00d4_LUPQ.l18:
    mov word [bp - 0x0002], 0        ; 0x392f
@..api_idx_00d4_LUPQ.l19:
    mov ax, word [bp - 0x0002]       ; 0x3934
    shl ax, 1                        ; 0x3937
    mov bx, ax                       ; 0x3939
    add bx, bp                       ; 0x393b
    mov word [bx - 0x0028], 1        ; 0x393d
    inc word [bp - 0x0002]           ; 0x3942
    mov ax, word [bp - 0x0002]       ; 0x3945
    cmp ax, strict word 0xb          ; 0x3948
    jl short @..api_idx_00d4_LUPQ.l19 ; 0x394b
    mov ax, 0x248                    ; 0x394d
    imul word [bp - 0x0006]          ; 0x3950
    mov bx, ax                       ; 0x3953
    cmp byte [bx + member_state + 0x1], 7 ; 0x3955
    je short @..api_idx_00d4_LUPQ.l20 ; 0x395a
    mov word [bp - 0x001e], 0        ; 0x395c
@..api_idx_00d4_LUPQ.l20:
    mov ax, 0x2c                     ; 0x3961
    imul word [bp - 0x0006]          ; 0x3964
    mov si, ax                       ; 0x3967
    mov bx, word [party_char]        ; 0x3969
    cmp byte [bx + si + 0x2b], 0     ; 0x396d
    jne short @..api_idx_00d4_LUPQ.l21 ; 0x3971
    mov ax, 0x248                    ; 0x3973
    imul word [bp - 0x0006]          ; 0x3976
    mov bx, ax                       ; 0x3979
    mov al, byte [bx + member_state + 0x3] ; 0x397b
    cmp al, 3                        ; 0x397f
    je short @..api_idx_00d4_LUPQ.l22 ; 0x3981
    cmp al, 0xd                      ; 0x3983
    je short @..api_idx_00d4_LUPQ.l22 ; 0x3985
    cmp al, 4                        ; 0x3987
    je short @..api_idx_00d4_LUPQ.l22 ; 0x3989
    cmp al, 6                        ; 0x398b
    je short @..api_idx_00d4_LUPQ.l22 ; 0x398d
    cmp al, 0xc                      ; 0x398f
    je short @..api_idx_00d4_LUPQ.l22 ; 0x3991
    cmp byte [bx + cell_key_grid + 0x149], 0 ; 0x3993
    jne short @..api_idx_00d4_LUPQ.l22 ; 0x3998
@..api_idx_00d4_LUPQ.l21:
    mov word [bp - 0x0024], 0        ; 0x399a
@..api_idx_00d4_LUPQ.l22:
    mov word [bp - 0x0020], 0        ; 0x399f
    mov word [bp - 0x00ae], 0        ; 0x39a4
@..api_idx_00d4_LUPQ.l23:
    mov word [bp - 0x00ac], 0        ; 0x39aa
@..api_idx_00d4_LUPQ.l24:
    mov ax, 0x248                    ; 0x39b0
    imul word [bp - 0x0006]          ; 0x39b3
    push ax                          ; 0x39b6
    mov ax, 0x78                     ; 0x39b7
    imul word [bp - 0x00ae]          ; 0x39ba
    mov cx, ax                       ; 0x39be
    pop ax                           ; 0x39c0
    add ax, cx                       ; 0x39c1
    push ax                          ; 0x39c3
    mov ax, 0xc                      ; 0x39c4
    imul word [bp - 0x00ac]          ; 0x39c7
    mov cx, ax                       ; 0x39cb
    pop ax                           ; 0x39cd
    add ax, cx                       ; 0x39ce
    mov bx, ax                       ; 0x39d0
    cmp word [bx + cell_key_grid], byte 0 ; 0x39d2
    jle short @..api_idx_00d4_LUPQ.l25 ; 0x39d7
    mov word [bp - 0x0020], 1        ; 0x39d9
@..api_idx_00d4_LUPQ.l25:
    inc word [bp - 0x00ac]           ; 0x39de
    mov ax, word [bp - 0x00ac]       ; 0x39e2
    cmp ax, strict word 0xa          ; 0x39e6
    jl short @..api_idx_00d4_LUPQ.l24 ; 0x39e9
    inc word [bp - 0x00ae]           ; 0x39eb
    mov ax, word [bp - 0x00ae]       ; 0x39ef
    cmp ax, strict word 2            ; 0x39f3
    jl short @..api_idx_00d4_LUPQ.l23 ; 0x39f6
    cmp word [bp - 0x00b4], byte 2   ; 0x39f8
    jge short @..api_idx_00d4_LUPQ.l26 ; 0x39fd
    mov word [bp - 0x0016], 0        ; 0x39ff
    mov word [bp - 0x0014], 0        ; 0x3a04
@..api_idx_00d4_LUPQ.l26:
    mov ax, 0x248                    ; 0x3a09
    imul word [bp - 0x0006]          ; 0x3a0c
    mov bx, ax                       ; 0x3a0f
    mov al, byte [bx + cell_key_grid + 0x114] ; 0x3a11
    sub ah, ah                       ; 0x3a15
    mov word [bp - 0x00ac], ax       ; 0x3a17
    cmp ax, 0xff                     ; 0x3a1b
    jne short @..api_idx_00d4_LUPQ.l27 ; 0x3a1e
    jmp near @..api_idx_00d4_LUPQ.l37 ; 0x3a20
@..api_idx_00d4_LUPQ.l27:
    mov cx, 0xc                      ; 0x3a23
    imul cx                          ; 0x3a26
    add bx, ax                       ; 0x3a28
    cmp byte [bx + cell_key_grid + 0x4], 3 ; 0x3a2a
    je short @..api_idx_00d4_LUPQ.l28 ; 0x3a2f
    jmp near @..api_idx_00d4_LUPQ.l37 ; 0x3a31
@..api_idx_00d4_LUPQ.l28:
    mov al, byte [bx + cell_key_grid + 0x7] ; 0x3a34
    sub ah, ah                       ; 0x3a38
    test ax, 0x20                    ; 0x3a3a
    je short @..api_idx_00d4_LUPQ.l29 ; 0x3a3d
    jmp near @..api_idx_00d4_LUPQ.l37 ; 0x3a3f
@..api_idx_00d4_LUPQ.l29:
    mov ax, 0x248                    ; 0x3a42
    imul word [bp - 0x0006]          ; 0x3a45
    mov bx, ax                       ; 0x3a48
    mov al, byte [bx + cell_key_grid + 0x115] ; 0x3a4a
    sub ah, ah                       ; 0x3a4e
    mov word [bp - 0x00ae], ax       ; 0x3a50
    cmp ax, 0xff                     ; 0x3a54
    jne short @..api_idx_00d4_LUPQ.l30 ; 0x3a57
    jmp near @..api_idx_00d4_LUPQ.l36 ; 0x3a59
@..api_idx_00d4_LUPQ.l30:
    imul cx                          ; 0x3a5c
    add bx, ax                       ; 0x3a5e
    cmp byte [bx + cell_key_grid + 0x4], 4 ; 0x3a60
    je short @..api_idx_00d4_LUPQ.l31 ; 0x3a65
    mov word [bp - 0x0028], 0        ; 0x3a67
    jmp near @..api_idx_00d4_LUPQ.l35 ; 0x3a6c
@..api_idx_00d4_LUPQ.l31:
    mov ax, 0x248                    ; 0x3a6f
    imul word [bp - 0x0006]          ; 0x3a72
    push ax                          ; 0x3a75
    mov ax, word [bp - 0x00ac]       ; 0x3a76
    imul cx                          ; 0x3a7a
    mov cx, ax                       ; 0x3a7c
    pop ax                           ; 0x3a7e
    add ax, cx                       ; 0x3a7f
    mov bx, ax                       ; 0x3a81
    mov al, byte [bx + cell_key_grid + 0x5] ; 0x3a83
    cmp al, 0xb                      ; 0x3a87
    jne short @..api_idx_00d4_LUPQ.l32 ; 0x3a89
    mov ax, 0x248                    ; 0x3a8b
    imul word [bp - 0x0006]          ; 0x3a8e
    push ax                          ; 0x3a91
    mov ax, 0xc                      ; 0x3a92
    imul word [bp - 0x00ae]          ; 0x3a95
    mov cx, ax                       ; 0x3a99
    pop ax                           ; 0x3a9b
    add ax, cx                       ; 0x3a9c
    mov bx, ax                       ; 0x3a9e
    mov al, byte [bx + cell_key_grid + 0x5] ; 0x3aa0
    cmp al, 0x16                     ; 0x3aa4
    je short @..api_idx_00d4_LUPQ.l32 ; 0x3aa6
    jmp near @..api_idx_00d4_LUPQ.l34 ; 0x3aa8
@..api_idx_00d4_LUPQ.l32:
    mov ax, 0x248                    ; 0x3aab
    imul word [bp - 0x0006]          ; 0x3aae
    push ax                          ; 0x3ab1
    mov ax, 0xc                      ; 0x3ab2
    imul word [bp - 0x00ac]          ; 0x3ab5
    mov cx, ax                       ; 0x3ab9
    pop ax                           ; 0x3abb
    add ax, cx                       ; 0x3abc
    mov bx, ax                       ; 0x3abe
    mov al, byte [bx + cell_key_grid + 0x5] ; 0x3ac0
    cmp al, 0xd                      ; 0x3ac4
    jne short @..api_idx_00d4_LUPQ.l33 ; 0x3ac6
    mov ax, 0x248                    ; 0x3ac8
    imul word [bp - 0x0006]          ; 0x3acb
    push ax                          ; 0x3ace
    mov ax, 0xc                      ; 0x3acf
    imul word [bp - 0x00ae]          ; 0x3ad2
    mov cx, ax                       ; 0x3ad6
    pop ax                           ; 0x3ad8
    add ax, cx                       ; 0x3ad9
    mov bx, ax                       ; 0x3adb
    mov al, byte [bx + cell_key_grid + 0x5] ; 0x3add
    cmp al, 0x17                     ; 0x3ae1
    jne short @..api_idx_00d4_LUPQ.l34 ; 0x3ae3
@..api_idx_00d4_LUPQ.l33:
    mov ax, 0x248                    ; 0x3ae5
    imul word [bp - 0x0006]          ; 0x3ae8
    push ax                          ; 0x3aeb
    mov ax, 0xc                      ; 0x3aec
    imul word [bp - 0x00ac]          ; 0x3aef
    mov cx, ax                       ; 0x3af3
    pop ax                           ; 0x3af5
    add ax, cx                       ; 0x3af6
    mov bx, ax                       ; 0x3af8
    mov al, byte [bx + cell_key_grid + 0x5] ; 0x3afa
    cmp al, 0xc                      ; 0x3afe
    jne short @..api_idx_00d4_LUPQ.l35 ; 0x3b00
    mov ax, 0x248                    ; 0x3b02
    imul word [bp - 0x0006]          ; 0x3b05
    push ax                          ; 0x3b08
    mov ax, 0xc                      ; 0x3b09
    imul word [bp - 0x00ae]          ; 0x3b0c
    mov cx, ax                       ; 0x3b10
    pop ax                           ; 0x3b12
    add ax, cx                       ; 0x3b13
    mov bx, ax                       ; 0x3b15
    mov al, byte [bx + cell_key_grid + 0x5] ; 0x3b17
    cmp al, 0x53                     ; 0x3b1b
    je short @..api_idx_00d4_LUPQ.l35 ; 0x3b1d
@..api_idx_00d4_LUPQ.l34:
    mov word [bp - 0x0028], 0        ; 0x3b1f
@..api_idx_00d4_LUPQ.l35:
    jmp short @..api_idx_00d4_LUPQ.l37 ; 0x3b24
@..api_idx_00d4_LUPQ.l36:
    mov word [bp - 0x0028], 0        ; 0x3b26
@..api_idx_00d4_LUPQ.l37:
    mov ax, 0x248                    ; 0x3b2b
    imul word [bp - 0x0006]          ; 0x3b2e
    mov bx, ax                       ; 0x3b31
    mov al, byte [bx + cell_key_grid + 0xfd] ; 0x3b33
    sub ah, ah                       ; 0x3b37
    mov word [bp - 0x00b2], ax       ; 0x3b39
    mov ax, 0x2c                     ; 0x3b3d
    imul word [bp - 0x0006]          ; 0x3b40
    mov si, ax                       ; 0x3b43
    mov bx, word [party_char]        ; 0x3b45
    mov al, byte [bx + si + 0x1f]    ; 0x3b49
    sub ah, ah                       ; 0x3b4c
    mov cx, word [bp - 0x00b2]       ; 0x3b4e
    shl cx, 1                        ; 0x3b52
    mov bx, cx                       ; 0x3b54
    mov cx, word [bx + bss_9386]     ; 0x3b56
    cmp ax, cx                       ; 0x3b5a
    jle short @..api_idx_00d4_LUPQ.l38 ; 0x3b5c
    mov word [bp - 0x0028], 0        ; 0x3b5e
@..api_idx_00d4_LUPQ.l38:
    cmp word [bp - 0x0006], byte 3   ; 0x3b63
    jl short @..api_idx_00d4_LUPQ.l39 ; 0x3b67
    cmp word [bp - 0x00b2], byte 0   ; 0x3b69
    jne short @..api_idx_00d4_LUPQ.l39 ; 0x3b6e
    mov bx, word [party_char]        ; 0x3b70
    cmp byte [bx + si + 0x2b], 1     ; 0x3b74
    je short @..api_idx_00d4_LUPQ.l39 ; 0x3b78
    mov word [bp - 0x0028], 0        ; 0x3b7a
@..api_idx_00d4_LUPQ.l39:
    mov bx, word [party_char]        ; 0x3b7f
    mov al, byte [bx + si + 0x1f]    ; 0x3b83
    sub ah, ah                       ; 0x3b86
    cmp ax, word [bss_9388]          ; 0x3b88
    jle short @..api_idx_00d4_LUPQ.l40 ; 0x3b8c
    mov word [bp - 0x001e], 0        ; 0x3b8e
@..api_idx_00d4_LUPQ.l40:
    mov word [bp - 0x0012], 0xffff   ; 0x3b93
    mov word [bp - 0x0098], 0xffff   ; 0x3b98
    mov byte [bx + si + 0x20], 0     ; 0x3b9e
    mov ax, 3                        ; 0x3ba2
    push ax                          ; 0x3ba5
    call redraw_area_set             ; 0x3ba6
    pop cx                           ; 0x3ba9
    mov ax, 0x2c                     ; 0x3baa
    imul word [bp - 0x0006]          ; 0x3bad
    mov si, ax                       ; 0x3bb0
    mov bx, word [party_char]        ; 0x3bb2
    mov al, byte [bx + si + 0x1f]    ; 0x3bb6
    sub ah, ah                       ; 0x3bb9
    push ax                          ; 0x3bbb
    call api_idx_0054_NQHV           ; 0x3bbc
    pop cx                           ; 0x3bbf
    mov ax, 1                        ; 0x3bc0
    push ax                          ; 0x3bc3
    mov ax, 0x93                     ; 0x3bc4
    push ax                          ; 0x3bc7
    mov ax, 0xa0                     ; 0x3bc8
    push ax                          ; 0x3bcb
    mov ax, 0x248                    ; 0x3bcc
    imul word [bp - 0x0006]          ; 0x3bcf
    add ax, party_records            ; 0x3bd2
    push ax                          ; 0x3bd5
    call loc_VNIO                    ; 0x3bd6
    add sp, byte 8                   ; 0x3bd9
    mov ax, 0x16                     ; 0x3bdc
    push ax                          ; 0x3bdf
    mov ax, 0x9a                     ; 0x3be0
    push ax                          ; 0x3be3
    mov ax, 0xa0                     ; 0x3be4
    push ax                          ; 0x3be7
    lea ax, word [bp - 0x00d4]       ; 0x3be8
    push ax                          ; 0x3bec
    call loc_VNIO                    ; 0x3bed
    add sp, byte 8                   ; 0x3bf0
    mov word [bp - 0x009e], 0        ; 0x3bf3
    mov word [bp - 0x00a0], 0        ; 0x3bf9
    lea ax, word [bp - 0x0028]       ; 0x3bff
    push ax                          ; 0x3c02
    mov ax, 1                        ; 0x3c03
    push ax                          ; 0x3c06
    push ax                          ; 0x3c07
    mov ax, 3                        ; 0x3c08
    push ax                          ; 0x3c0b
    mov ax, 0xa                      ; 0x3c0c
    push ax                          ; 0x3c0f
    mov ax, 0x2a                     ; 0x3c10
    push ax                          ; 0x3c13
    mov ax, 6                        ; 0x3c14
    push ax                          ; 0x3c17
    mov ax, 0xa6                     ; 0x3c18
    push ax                          ; 0x3c1b
    mov ax, 0xe7                     ; 0x3c1c
    push ax                          ; 0x3c1f
    mov ax, 9                        ; 0x3c20
    push ax                          ; 0x3c23
    mov ax, 3                        ; 0x3c24
    push ax                          ; 0x3c27
    mov ax, 0xbb8                    ; 0x3c28
    push ax                          ; 0x3c2b
    call loc_HTRU                    ; 0x3c2c
    add sp, byte 0x18                ; 0x3c2f
    mov word [bp - 0x0008], ax       ; 0x3c32
    cmp ax, strict word 0            ; 0x3c35
    jge short @..api_idx_00d4_LUPQ.l42 ; 0x3c38
    mov word [bp - 0x009e], 1        ; 0x3c3a
    push ax                          ; 0x3c40
    cmp ax, strict word 0            ; 0x3c41
    pop ax                           ; 0x3c44
    jge short @..api_idx_00d4_LUPQ.l41 ; 0x3c45
    neg ax                           ; 0x3c47
@..api_idx_00d4_LUPQ.l41:
    push ax                          ; 0x3c49
    mov ax, 0x2c                     ; 0x3c4a
    imul word [bp - 0x0006]          ; 0x3c4d
    mov si, ax                       ; 0x3c50
    mov bx, word [party_char]        ; 0x3c52
    pop ax                           ; 0x3c56
    mov byte [bx + si + 0x1f], al    ; 0x3c57
    mov ax, 0                        ; 0x3c5a
    push ax                          ; 0x3c5d
    call api_idx_0054_NQHV           ; 0x3c5e
    pop cx                           ; 0x3c61
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3c62
@..api_idx_00d4_LUPQ.l42:
    mov ax, word [bp - 0x0008]       ; 0x3c65
    jmp near @..api_idx_00d4_LUPQ.l66 ; 0x3c68
jumptable_4058_case_0:
    mov ax, 0                        ; 0x3c6b
    push ax                          ; 0x3c6e
    call redraw_area_set             ; 0x3c6f
    pop cx                           ; 0x3c72
    mov ax, 1                        ; 0x3c73
    push ax                          ; 0x3c76
    mov ax, 0x93                     ; 0x3c77
    push ax                          ; 0x3c7a
    mov ax, 0xa0                     ; 0x3c7b
    push ax                          ; 0x3c7e
    mov ax, 0x248                    ; 0x3c7f
    imul word [bp - 0x0006]          ; 0x3c82
    add ax, party_records            ; 0x3c85
    push ax                          ; 0x3c88
    call loc_VNIO                    ; 0x3c89
    add sp, byte 8                   ; 0x3c8c
    mov ax, 0x16                     ; 0x3c8f
    push ax                          ; 0x3c92
    mov ax, 0x9a                     ; 0x3c93
    push ax                          ; 0x3c96
    mov ax, 0xa0                     ; 0x3c97
    push ax                          ; 0x3c9a
    lea ax, word [bp - 0x00d4]       ; 0x3c9b
    push ax                          ; 0x3c9f
    call loc_VNIO                    ; 0x3ca0
    add sp, byte 8                   ; 0x3ca3
    mov ax, 0x248                    ; 0x3ca6
    imul word [bp - 0x0006]          ; 0x3ca9
    mov bx, ax                       ; 0x3cac
    mov al, byte [bx + cell_key_grid + 0x114] ; 0x3cae
    sub ah, ah                       ; 0x3cb2
    mov word [bp - 0x00ac], ax       ; 0x3cb4
    cmp ax, 0xff                     ; 0x3cb8
    je short @..api_idx_00d4_LUPQ.l43 ; 0x3cbb
    mov cx, 0xc                      ; 0x3cbd
    imul cx                          ; 0x3cc0
    add bx, ax                       ; 0x3cc2
    cmp byte [bx + cell_key_grid + 0x4], 3 ; 0x3cc4
    jne short @..api_idx_00d4_LUPQ.l43 ; 0x3cc9
    mov word [bp - 0x00b0], 1        ; 0x3ccb
    mov word [bp - 0x0098], 8        ; 0x3cd1
@..api_idx_00d4_LUPQ.l43:
    cmp word [bp - 0x0098], byte 0xff ; 0x3cd7
    je short @..api_idx_00d4_LUPQ.l44 ; 0x3cdc
    jmp near @..api_idx_00d4_LUPQ.l49 ; 0x3cde
@..api_idx_00d4_LUPQ.l44:
    mov word [bp - 0x00b0], 0        ; 0x3ce1
    mov word [bp - 0x0002], 0        ; 0x3ce7
@..api_idx_00d4_LUPQ.l45:
    push word [bp - 0x0002]          ; 0x3cec
    mov ax, 0x248                    ; 0x3cef
    imul word [bp - 0x0006]          ; 0x3cf2
    add ax, cell_key_grid + 0xff     ; 0x3cf5
    push ax                          ; 0x3cf8
    call test_bit                    ; 0x3cf9
    add sp, byte 4                   ; 0x3cfc
    mov cx, word [bp - 0x0002]       ; 0x3cff
    shl cx, 1                        ; 0x3d02
    mov bx, cx                       ; 0x3d04
    add bx, bp                       ; 0x3d06
    mov word [bx - 0x0046], ax       ; 0x3d08
    mov ax, word [bp - 0x0002]       ; 0x3d0b
    cmp ax, strict word 4            ; 0x3d0e
    je short @..api_idx_00d4_LUPQ.l46 ; 0x3d11
    cmp word [bp - 0x0006], byte 3   ; 0x3d13
    jl short @..api_idx_00d4_LUPQ.l46 ; 0x3d17
    cmp word [bp - 0x00ac], strict word 0xff ; 0x3d19
    je short @..api_idx_00d4_LUPQ.l46 ; 0x3d1f
    mov ax, 0x248                    ; 0x3d21
    imul word [bp - 0x0006]          ; 0x3d24
    push ax                          ; 0x3d27
    mov ax, 0xc                      ; 0x3d28
    imul word [bp - 0x00ac]          ; 0x3d2b
    mov cx, ax                       ; 0x3d2f
    pop ax                           ; 0x3d31
    add ax, cx                       ; 0x3d32
    mov bx, ax                       ; 0x3d34
    cmp byte [bx + cell_key_grid + 0x4], 2 ; 0x3d36
    jne short @..api_idx_00d4_LUPQ.l46 ; 0x3d3b
    mov ax, word [bp - 0x0002]       ; 0x3d3d
    shl ax, 1                        ; 0x3d40
    mov bx, ax                       ; 0x3d42
    add bx, bp                       ; 0x3d44
    mov word [bx - 0x0046], 0        ; 0x3d46
@..api_idx_00d4_LUPQ.l46:
    mov ax, word [bp - 0x0002]       ; 0x3d4b
    shl ax, 1                        ; 0x3d4e
    mov bx, ax                       ; 0x3d50
    add bx, bp                       ; 0x3d52
    cmp word [bx - 0x0046], byte 1   ; 0x3d54
    jne short @..api_idx_00d4_LUPQ.l47 ; 0x3d58
    inc word [bp - 0x00b0]           ; 0x3d5a
    mov ax, word [bp - 0x0002]       ; 0x3d5e
    mov word [bp - 0x0098], ax       ; 0x3d61
@..api_idx_00d4_LUPQ.l47:
    inc word [bp - 0x0002]           ; 0x3d65
    mov ax, word [bp - 0x0002]       ; 0x3d68
    cmp ax, strict word 8            ; 0x3d6b
    jge short @..api_idx_00d4_LUPQ.l48 ; 0x3d6e
    jmp near @..api_idx_00d4_LUPQ.l45 ; 0x3d70
@..api_idx_00d4_LUPQ.l48:
    mov word [bp - 0x0036], 0xffff   ; 0x3d73
@..api_idx_00d4_LUPQ.l49:
    cmp word [bp - 0x00b0], byte 1   ; 0x3d78
    jle short @..api_idx_00d4_LUPQ.l50 ; 0x3d7d
    lea ax, word [bp - 0x0046]       ; 0x3d7f
    push ax                          ; 0x3d82
    mov ax, 0x1b                     ; 0x3d83
    push ax                          ; 0x3d86
    mov ax, 0                        ; 0x3d87
    push ax                          ; 0x3d8a
    mov ax, 3                        ; 0x3d8b
    push ax                          ; 0x3d8e
    mov ax, 0xa                      ; 0x3d8f
    push ax                          ; 0x3d92
    mov ax, 0x2a                     ; 0x3d93
    push ax                          ; 0x3d96
    mov ax, 6                        ; 0x3d97
    push ax                          ; 0x3d9a
    mov ax, 0xa6                     ; 0x3d9b
    push ax                          ; 0x3d9e
    mov ax, 0xe7                     ; 0x3d9f
    push ax                          ; 0x3da2
    mov ax, 9                        ; 0x3da3
    push ax                          ; 0x3da6
    mov ax, 0                        ; 0x3da7
    push ax                          ; 0x3daa
    mov ax, 0xbea                    ; 0x3dab
    push ax                          ; 0x3dae
    call loc_HTRU                    ; 0x3daf
    add sp, byte 0x18                ; 0x3db2
    mov word [bp - 0x0098], ax       ; 0x3db5
@..api_idx_00d4_LUPQ.l50:
    cmp word [bp - 0x0098], byte 0xff ; 0x3db9
    jne short @..api_idx_00d4_LUPQ.l51 ; 0x3dbe
    jmp near @..api_idx_00d4_LUPQ.l55 ; 0x3dc0
@..api_idx_00d4_LUPQ.l51:
    mov ax, 0x248                    ; 0x3dc3
    imul word [bp - 0x0006]          ; 0x3dc6
    mov bx, ax                       ; 0x3dc9
    mov al, byte [bx + cell_key_grid + 0xfd] ; 0x3dcb
    sub ah, ah                       ; 0x3dcf
    mov word [bp - 0x00b2], ax       ; 0x3dd1
    cmp ax, strict word 2            ; 0x3dd5
    jne short @..api_idx_00d4_LUPQ.l52 ; 0x3dd8
    cmp word [bp - 0x0098], byte 4   ; 0x3dda
    je short @..api_idx_00d4_LUPQ.l52 ; 0x3ddf
    mov word [bp - 0x00b2], 0        ; 0x3de1
@..api_idx_00d4_LUPQ.l52:
    mov ax, 0x2c                     ; 0x3de7
    imul word [bp - 0x0006]          ; 0x3dea
    mov si, ax                       ; 0x3ded
    mov bx, word [party_char]        ; 0x3def
    mov al, byte [bx + si + 0x1f]    ; 0x3df3
    sub ah, ah                       ; 0x3df6
    mov cx, word [bp - 0x00b2]       ; 0x3df8
    shl cx, 1                        ; 0x3dfc
    mov bx, cx                       ; 0x3dfe
    mov cx, word [bx + bss_9386]     ; 0x3e00
    cmp ax, cx                       ; 0x3e04
    jle short @..api_idx_00d4_LUPQ.l53 ; 0x3e06
    mov ax, 0                        ; 0x3e08
    push ax                          ; 0x3e0b
    call play_sound_effect           ; 0x3e0c
    pop cx                           ; 0x3e0f
    mov word [bp - 0x009e], 1        ; 0x3e10
@..api_idx_00d4_LUPQ.l53:
    cmp word [bp - 0x00b2], byte 0   ; 0x3e16
    jne short @..api_idx_00d4_LUPQ.l54 ; 0x3e1b
    cmp word [bp - 0x0006], byte 3   ; 0x3e1d
    jl short @..api_idx_00d4_LUPQ.l54 ; 0x3e21
    mov ax, 0x2c                     ; 0x3e23
    imul word [bp - 0x0006]          ; 0x3e26
    mov si, ax                       ; 0x3e29
    mov bx, word [party_char]        ; 0x3e2b
    cmp byte [bx + si + 0x2b], 1     ; 0x3e2f
    je short @..api_idx_00d4_LUPQ.l54 ; 0x3e33
    mov ax, 0                        ; 0x3e35
    push ax                          ; 0x3e38
    call play_sound_effect           ; 0x3e39
    pop cx                           ; 0x3e3c
    mov word [bp - 0x009e], 1        ; 0x3e3d
@..api_idx_00d4_LUPQ.l54:
    jmp short @..api_idx_00d4_LUPQ.l56 ; 0x3e43
@..api_idx_00d4_LUPQ.l55:
    mov word [bp - 0x009e], 1        ; 0x3e45
@..api_idx_00d4_LUPQ.l56:
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3e4b
jumptable_4058_case_1:
    mov ax, 0                        ; 0x3e4e
    push ax                          ; 0x3e51
    call redraw_area_set             ; 0x3e52
    pop cx                           ; 0x3e55
    mov ax, 1                        ; 0x3e56
    push ax                          ; 0x3e59
    mov ax, 0x93                     ; 0x3e5a
    push ax                          ; 0x3e5d
    mov ax, 0xa0                     ; 0x3e5e
    push ax                          ; 0x3e61
    mov ax, 0x248                    ; 0x3e62
    imul word [bp - 0x0006]          ; 0x3e65
    add ax, party_records            ; 0x3e68
    push ax                          ; 0x3e6b
    call loc_VNIO                    ; 0x3e6c
    add sp, byte 8                   ; 0x3e6f
    mov ax, 0x16                     ; 0x3e72
    push ax                          ; 0x3e75
    mov ax, 0x9a                     ; 0x3e76
    push ax                          ; 0x3e79
    mov ax, 0xa0                     ; 0x3e7a
    push ax                          ; 0x3e7d
    lea ax, word [bp - 0x00d4]       ; 0x3e7e
    push ax                          ; 0x3e82
    call loc_VNIO                    ; 0x3e83
    add sp, byte 8                   ; 0x3e86
    mov word [bp - 0x0002], 0        ; 0x3e89
@..api_idx_00d4_LUPQ.l57:
    mov ax, word [bp - 0x0002]       ; 0x3e8e
    shl ax, 1                        ; 0x3e91
    mov bx, ax                       ; 0x3e93
    add bx, bp                       ; 0x3e95
    mov word [bx - 0x0028], 1        ; 0x3e97
    inc word [bp - 0x0002]           ; 0x3e9c
    mov ax, word [bp - 0x0002]       ; 0x3e9f
    cmp ax, strict word 4            ; 0x3ea2
    jl short @..api_idx_00d4_LUPQ.l57 ; 0x3ea5
    mov word [bp - 0x0028], 0        ; 0x3ea7
    mov ax, 0x248                    ; 0x3eac
    imul word [bp - 0x0006]          ; 0x3eaf
    mov bx, ax                       ; 0x3eb2
    mov al, byte [bx + cell_key_grid + 0x115] ; 0x3eb4
    sub ah, ah                       ; 0x3eb8
    mov word [bp - 0x00ac], ax       ; 0x3eba
    cmp ax, 0xff                     ; 0x3ebe
    je short @..api_idx_00d4_LUPQ.l58 ; 0x3ec1
    mov cx, 0xc                      ; 0x3ec3
    imul cx                          ; 0x3ec6
    add bx, ax                       ; 0x3ec8
    cmp byte [bx + cell_key_grid + 0x4], 0xb ; 0x3eca
    jne short @..api_idx_00d4_LUPQ.l58 ; 0x3ecf
    mov word [bp - 0x0028], 1        ; 0x3ed1
@..api_idx_00d4_LUPQ.l58:
    mov word [bp - 0x0020], 0xffff   ; 0x3ed6
    lea ax, word [bp - 0x0028]       ; 0x3edb
    push ax                          ; 0x3ede
    mov ax, 0x1b                     ; 0x3edf
    push ax                          ; 0x3ee2
    mov ax, 0                        ; 0x3ee3
    push ax                          ; 0x3ee6
    mov ax, 3                        ; 0x3ee7
    push ax                          ; 0x3eea
    mov ax, 0xa                      ; 0x3eeb
    push ax                          ; 0x3eee
    mov ax, 0x2a                     ; 0x3eef
    push ax                          ; 0x3ef2
    mov ax, 6                        ; 0x3ef3
    push ax                          ; 0x3ef6
    mov ax, 0xa6                     ; 0x3ef7
    push ax                          ; 0x3efa
    mov ax, 0xe7                     ; 0x3efb
    push ax                          ; 0x3efe
    mov ax, 9                        ; 0x3eff
    push ax                          ; 0x3f02
    mov ax, 0                        ; 0x3f03
    push ax                          ; 0x3f06
    mov ax, 0xc1c                    ; 0x3f07
    push ax                          ; 0x3f0a
    call loc_HTRU                    ; 0x3f0b
    add sp, byte 0x18                ; 0x3f0e
    mov word [bp - 0x0098], ax       ; 0x3f11
    cmp ax, strict word 0xffff       ; 0x3f15
    jne short @..api_idx_00d4_LUPQ.l59 ; 0x3f18
    mov word [bp - 0x009e], 1        ; 0x3f1a
@..api_idx_00d4_LUPQ.l59:
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3f20
jumptable_4058_case_8:
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3f23
jumptable_4058_case_3:
    mov ax, 0                        ; 0x3f26
    push ax                          ; 0x3f29
    call redraw_area_set             ; 0x3f2a
    pop cx                           ; 0x3f2d
    mov ax, 0x16                     ; 0x3f2e
    push ax                          ; 0x3f31
    mov ax, 0x9a                     ; 0x3f32
    push ax                          ; 0x3f35
    mov ax, 0xa0                     ; 0x3f36
    push ax                          ; 0x3f39
    lea ax, word [bp - 0x00d4]       ; 0x3f3a
    push ax                          ; 0x3f3e
    call loc_VNIO                    ; 0x3f3f
    add sp, byte 8                   ; 0x3f42
    push word [bp - 0x0006]          ; 0x3f45
    call pick_spell_action           ; 0x3f48
    pop cx                           ; 0x3f4b
    mov word [bp - 0x0098], ax       ; 0x3f4c
    cmp ax, strict word 0xffff       ; 0x3f50
    jne short @..api_idx_00d4_LUPQ.l60 ; 0x3f53
    mov word [bp - 0x009e], 1        ; 0x3f55
@..api_idx_00d4_LUPQ.l60:
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3f5b
jumptable_4058_case_4:
    mov ax, 0                        ; 0x3f5e
    push ax                          ; 0x3f61
    call redraw_area_set             ; 0x3f62
    pop cx                           ; 0x3f65
    mov ax, 0x16                     ; 0x3f66
    push ax                          ; 0x3f69
    mov ax, 0x9a                     ; 0x3f6a
    push ax                          ; 0x3f6d
    mov ax, 0xa0                     ; 0x3f6e
    push ax                          ; 0x3f71
    lea ax, word [bp - 0x00d4]       ; 0x3f72
    push ax                          ; 0x3f76
    call loc_VNIO                    ; 0x3f77
    add sp, byte 8                   ; 0x3f7a
    push word [bp - 0x0006]          ; 0x3f7d
    call api_idx_0094_NVHQ           ; 0x3f80
    pop cx                           ; 0x3f83
    mov word [bp - 0x0098], ax       ; 0x3f84
    cmp ax, strict word 0xffff       ; 0x3f88
    jne short @..api_idx_00d4_LUPQ.l61 ; 0x3f8b
    mov word [bp - 0x009e], 1        ; 0x3f8d
@..api_idx_00d4_LUPQ.l61:
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3f93
jumptable_4058_case_7:
    call pick_party_member           ; 0x3f96
    mov word [bp - 0x0098], ax       ; 0x3f99
    cmp ax, strict word 0xffff       ; 0x3f9d
    jne short @..api_idx_00d4_LUPQ.l62 ; 0x3fa0
    mov word [bp - 0x009e], 1        ; 0x3fa2
@..api_idx_00d4_LUPQ.l62:
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3fa8
jumptable_4058_case_2:
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3fab
jumptable_4058_case_5:
    mov word [bp - 0x0098], 8        ; 0x3fae
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3fb4
jumptable_4058_case_6:
    jmp near @..api_idx_00d4_LUPQ.l67 ; 0x3fb7
jumptable_4058_case_9:
    mov ax, 0                        ; 0x3fba
    push ax                          ; 0x3fbd
    mov ax, 0x2d                     ; 0x3fbe
    push ax                          ; 0x3fc1
    mov ax, bss_90d8                 ; 0x3fc2
    push ax                          ; 0x3fc5
    call aztec_setmem                ; 0x3fc6
    add sp, byte 6                   ; 0x3fc9
    mov word [bp - 0x009a], 0        ; 0x3fcc
    jmp short @..api_idx_00d4_LUPQ.l65 ; 0x3fd2
@..api_idx_00d4_LUPQ.l63:
    mov ax, 0x2c                     ; 0x3fd4
    imul word [bp - 0x009a]          ; 0x3fd7
    mov si, ax                       ; 0x3fdb
    mov bx, word [party_char]        ; 0x3fdd
    cmp byte [bx + si + 0x1f], 0     ; 0x3fe1
    jbe short @..api_idx_00d4_LUPQ.l64 ; 0x3fe5
    mov al, byte [bx + si + 0x1f]    ; 0x3fe7
    sub ah, ah                       ; 0x3fea
    mov cx, 9                        ; 0x3fec
    imul cx                          ; 0x3fef
    push ax                          ; 0x3ff1
    mov al, byte [bx + si + 0x20]    ; 0x3ff2
    sub ah, ah                       ; 0x3ff5
    mov cx, ax                       ; 0x3ff7
    pop ax                           ; 0x3ff9
    add ax, cx                       ; 0x3ffa
    mov bx, ax                       ; 0x3ffc
    mov byte [bx + bss_90d8], 1      ; 0x3ffe
@..api_idx_00d4_LUPQ.l64:
    inc word [bp - 0x009a]           ; 0x4003
@..api_idx_00d4_LUPQ.l65:
    mov ax, word [bp - 0x0006]       ; 0x4007
    dec ax                           ; 0x400a
    cmp ax, word [bp - 0x009a]       ; 0x400b
    jg short @..api_idx_00d4_LUPQ.l63 ; 0x400f
    mov ax, word [bp - 0x00b4]       ; 0x4011
    shl ax, 1                        ; 0x4015
    mov bx, ax                       ; 0x4017
    add bx, bp                       ; 0x4019
    mov ax, word [bx - 0x00c4]       ; 0x401b
    dec ax                           ; 0x401f
    mov word [bp - 0x0006], ax       ; 0x4020
    dec word [bp - 0x00b4]           ; 0x4023
    dec word [bp - 0x00b4]           ; 0x4027
    mov word [bp - 0x00a0], 1        ; 0x402b
    jmp short @..api_idx_00d4_LUPQ.l67 ; 0x4031
jumptable_4058_case_10:
    mov ax, 0                        ; 0x4033
    push ax                          ; 0x4036
    mov ax, 0x2d                     ; 0x4037
    push ax                          ; 0x403a
    mov ax, bss_90d8                 ; 0x403b
    push ax                          ; 0x403e
    call aztec_setmem                ; 0x403f
    add sp, byte 6                   ; 0x4042
    mov word [bp - 0x0006], 0xffff   ; 0x4045
    mov word [bp - 0x00a0], 1        ; 0x404a
    mov word [bp - 0x00b4], 0        ; 0x4050
    jmp short @..api_idx_00d4_LUPQ.l67 ; 0x4056
jumptable_4058:
    dw jumptable_4058_case_0 - IMAGE_BASE + __zres_end ; 0x4058
    dw jumptable_4058_case_1 - IMAGE_BASE + __zres_end ; 0x405a
    dw jumptable_4058_case_2 - IMAGE_BASE + __zres_end ; 0x405c
    dw jumptable_4058_case_3 - IMAGE_BASE + __zres_end ; 0x405e
    dw jumptable_4058_case_4 - IMAGE_BASE + __zres_end ; 0x4060
    dw jumptable_4058_case_5 - IMAGE_BASE + __zres_end ; 0x4062
    dw jumptable_4058_case_6 - IMAGE_BASE + __zres_end ; 0x4064
    dw jumptable_4058_case_7 - IMAGE_BASE + __zres_end ; 0x4066
    dw jumptable_4058_case_8 - IMAGE_BASE + __zres_end ; 0x4068
    dw jumptable_4058_case_9 - IMAGE_BASE + __zres_end ; 0x406a
    dw jumptable_4058_case_10 - IMAGE_BASE + __zres_end ; 0x406c
@..api_idx_00d4_LUPQ.l66:
    cmp ax, strict word 0xb          ; 0x406e
    jae short @..api_idx_00d4_LUPQ.l67 ; 0x4071
    xchg bx, ax                      ; 0x4073
    shl bx, 1                        ; 0x4074
    jmp [cs:bx + jumptable_4058 - IMAGE_BASE + __zres_end] ; 0x4076
@..api_idx_00d4_LUPQ.l67:
    cmp word [bp - 0x009e], byte 1   ; 0x407b
    jne short @..api_idx_00d4_LUPQ.l68 ; 0x4080
    jmp near @..api_idx_00d4_LUPQ.l16 ; 0x4082
@..api_idx_00d4_LUPQ.l68:
    mov ax, 0                        ; 0x4085
    push ax                          ; 0x4088
    call redraw_area_set             ; 0x4089
    pop cx                           ; 0x408c
    mov ax, 0x16                     ; 0x408d
    push ax                          ; 0x4090
    mov ax, 0x9a                     ; 0x4091
    push ax                          ; 0x4094
    mov ax, 0xa0                     ; 0x4095
    push ax                          ; 0x4098
    lea ax, word [bp - 0x00d4]       ; 0x4099
    push ax                          ; 0x409d
    call loc_VNIO                    ; 0x409e
    add sp, byte 8                   ; 0x40a1
    mov ax, 0                        ; 0x40a4
    push ax                          ; 0x40a7
    call show_area_set               ; 0x40a8
    pop cx                           ; 0x40ab
    mov ax, 0x32                     ; 0x40ac
    push ax                          ; 0x40af
    call delay_ms                    ; 0x40b0
    pop cx                           ; 0x40b3
    cmp word [bp - 0x00a0], byte 0   ; 0x40b4
    je short @..api_idx_00d4_LUPQ.l69 ; 0x40b9
    jmp near @..api_idx_00d4_LUPQ.l82 ; 0x40bb
@..api_idx_00d4_LUPQ.l69:
    mov ax, word [bp - 0x0098]       ; 0x40be
    push ax                          ; 0x40c2
    mov ax, 0x2c                     ; 0x40c3
    imul word [bp - 0x0006]          ; 0x40c6
    mov si, ax                       ; 0x40c9
    mov bx, word [party_char]        ; 0x40cb
    pop ax                           ; 0x40cf
    mov word [bx + si + 0xa], ax     ; 0x40d0
    mov ax, 0x2c                     ; 0x40d3
    imul word [bp - 0x0006]          ; 0x40d6
    mov si, ax                       ; 0x40d9
    mov bx, word [party_char]        ; 0x40db
    mov word [bx + si + 0xc], 0xffff ; 0x40df
    mov al, byte [bp - 0x0008]       ; 0x40e4
    push ax                          ; 0x40e7
    mov ax, 0x2c                     ; 0x40e8
    imul word [bp - 0x0006]          ; 0x40eb
    mov si, ax                       ; 0x40ee
    mov bx, word [party_char]        ; 0x40f0
    pop ax                           ; 0x40f4
    mov byte [bx + si + 0x1e], al    ; 0x40f5
    mov ax, 0x2c                     ; 0x40f8
    imul word [bp - 0x0006]          ; 0x40fb
    mov si, ax                       ; 0x40fe
    mov bx, word [party_char]        ; 0x4100
    mov al, byte [bx + si + 0x1f]    ; 0x4104
    sub ah, ah                       ; 0x4107
    mov word [bp - 0x009a], ax       ; 0x4109
    cmp ax, strict word 1            ; 0x410d
    jl short @..api_idx_00d4_LUPQ.l70 ; 0x4110
    cmp ax, strict word 5            ; 0x4112
    jg short @..api_idx_00d4_LUPQ.l70 ; 0x4115
    mov al, byte [bp - 0x009a]       ; 0x4117
    sub ah, ah                       ; 0x411b
    push ax                          ; 0x411d
    push word [bp - 0x0006]          ; 0x411e
    call api_idx_000c_JUIH           ; 0x4121
    add sp, byte 4                   ; 0x4124
    push ax                          ; 0x4127
    mov ax, 0x2c                     ; 0x4128
    imul word [bp - 0x0006]          ; 0x412b
    mov si, ax                       ; 0x412e
    mov bx, word [party_char]        ; 0x4130
    pop ax                           ; 0x4134
    mov byte [bx + si + 0x20], al    ; 0x4135
@..api_idx_00d4_LUPQ.l70:
    mov ax, 0x248                    ; 0x4138
    imul word [bp - 0x0006]          ; 0x413b
    mov bx, ax                       ; 0x413e
    mov al, byte [bx + cell_key_grid + 0x115] ; 0x4140
    sub ah, ah                       ; 0x4144
    mov word [bp - 0x00ac], ax       ; 0x4146
    cmp word [bp - 0x0008], byte 0   ; 0x414a
    je short @..api_idx_00d4_LUPQ.l71 ; 0x414e
    jmp near @..api_idx_00d4_LUPQ.l82 ; 0x4150
@..api_idx_00d4_LUPQ.l71:
    cmp ax, 0xff                     ; 0x4153
    jne short @..api_idx_00d4_LUPQ.l73 ; 0x4156
    mov al, byte [bx + cell_key_grid + 0x114] ; 0x4158
    sub ah, ah                       ; 0x415c
    cmp ax, 0xff                     ; 0x415e
    jne short @..api_idx_00d4_LUPQ.l73 ; 0x4161
    add bx, strict word 0x5d33       ; 0x4163
    mov ax, bx                       ; 0x4167
    push ax                          ; 0x4169
    call api_idx_0006_QUSK           ; 0x416a
    pop cx                           ; 0x416d
    mov word [bp - 0x0002], ax       ; 0x416e
    cmp ax, strict word 0xffff       ; 0x4171
    je short @..api_idx_00d4_LUPQ.l72 ; 0x4174
    mov ax, word [bp - 0x0002]       ; 0x4176
    push ax                          ; 0x4179
    mov ax, 0x2c                     ; 0x417a
    imul word [bp - 0x0006]          ; 0x417d
    mov si, ax                       ; 0x4180
    mov bx, word [party_char]        ; 0x4182
    pop ax                           ; 0x4186
    mov word [bx + si + 0xc], ax     ; 0x4187
@..api_idx_00d4_LUPQ.l72:
    jmp near @..api_idx_00d4_LUPQ.l82 ; 0x418a
@..api_idx_00d4_LUPQ.l73:
    cmp word [bp - 0x00ac], strict word 0xff ; 0x418d
    jne short @..api_idx_00d4_LUPQ.l74 ; 0x4193
    jmp near @..api_idx_00d4_LUPQ.l82 ; 0x4195
@..api_idx_00d4_LUPQ.l74:
    mov ax, 0x248                    ; 0x4198
    imul word [bp - 0x0006]          ; 0x419b
    push ax                          ; 0x419e
    mov ax, 0xc                      ; 0x419f
    imul word [bp - 0x00ac]          ; 0x41a2
    mov cx, ax                       ; 0x41a6
    pop ax                           ; 0x41a8
    add ax, cx                       ; 0x41a9
    mov bx, ax                       ; 0x41ab
    cmp byte [bx + cell_key_grid + 0x4], 3 ; 0x41ad
    jne short @..api_idx_00d4_LUPQ.l75 ; 0x41b2
    mov al, byte [bx + cell_key_grid + 0x7] ; 0x41b4
    sub ah, ah                       ; 0x41b8
    test ax, 0x20                    ; 0x41ba
    je short @..api_idx_00d4_LUPQ.l75 ; 0x41bd
    mov ax, 0x2c                     ; 0x41bf
    imul word [bp - 0x0006]          ; 0x41c2
    mov si, ax                       ; 0x41c5
    mov bx, word [party_char]        ; 0x41c7
    mov word [bx + si + 0xc], 8      ; 0x41cb
    jmp near @..api_idx_00d4_LUPQ.l82 ; 0x41d0
@..api_idx_00d4_LUPQ.l75:
    mov ax, 0x248                    ; 0x41d3
    imul word [bp - 0x0006]          ; 0x41d6
    push ax                          ; 0x41d9
    mov ax, 0xc                      ; 0x41da
    imul word [bp - 0x00ac]          ; 0x41dd
    mov cx, ax                       ; 0x41e1
    pop ax                           ; 0x41e3
    add ax, cx                       ; 0x41e4
    mov bx, ax                       ; 0x41e6
    mov al, byte [bx + cell_key_grid + 0x4] ; 0x41e8
    cmp al, 2                        ; 0x41ec
    je short @..api_idx_00d4_LUPQ.l76 ; 0x41ee
    cmp al, 0xc                      ; 0x41f0
    je short @..api_idx_00d4_LUPQ.l76 ; 0x41f2
    cmp al, 0x10                     ; 0x41f4
    jne short @..api_idx_00d4_LUPQ.l77 ; 0x41f6
@..api_idx_00d4_LUPQ.l76:
    mov ax, 0x2c                     ; 0x41f8
    imul word [bp - 0x0006]          ; 0x41fb
    mov si, ax                       ; 0x41fe
    mov bx, word [party_char]        ; 0x4200
    mov word [bx + si + 0xc], 4      ; 0x4204
    jmp near @..api_idx_00d4_LUPQ.l82 ; 0x4209
@..api_idx_00d4_LUPQ.l77:
    mov ax, 0x248                    ; 0x420c
    imul word [bp - 0x0006]          ; 0x420f
    push ax                          ; 0x4212
    mov ax, 0xc                      ; 0x4213
    imul word [bp - 0x00ac]          ; 0x4216
    mov cx, ax                       ; 0x421a
    pop ax                           ; 0x421c
    add ax, cx                       ; 0x421d
    mov bx, ax                       ; 0x421f
    cmp byte [bx + cell_key_grid + 0x4], 2 ; 0x4221
    jae short @..api_idx_00d4_LUPQ.l82 ; 0x4226
    mov ax, 0x248                    ; 0x4228
    imul word [bp - 0x0006]          ; 0x422b
    mov bx, ax                       ; 0x422e
    cmp byte [bx + cell_key_grid + 0x10f], 1 ; 0x4230
    je short @..api_idx_00d4_LUPQ.l78 ; 0x4235
    cmp word [bp - 0x0006], byte 3   ; 0x4237
    jge short @..api_idx_00d4_LUPQ.l82 ; 0x423b
    cmp word [bp - 0x009a], byte 3   ; 0x423d
    jge short @..api_idx_00d4_LUPQ.l82 ; 0x4242
@..api_idx_00d4_LUPQ.l78:
    mov word [bp - 0x000a], 0        ; 0x4244
@..api_idx_00d4_LUPQ.l79:
    mov ax, 0x248                    ; 0x4249
    imul word [bp - 0x0006]          ; 0x424c
    add ax, cell_key_grid + 0x111    ; 0x424f
    push ax                          ; 0x4252
    call api_idx_0006_QUSK           ; 0x4253
    pop cx                           ; 0x4256
    mov word [bp - 0x0002], ax       ; 0x4257
    inc word [bp - 0x000a]           ; 0x425a
    cmp word [bp - 0x0002], byte 4   ; 0x425d
    jne short @..api_idx_00d4_LUPQ.l80 ; 0x4261
    cmp word [bp - 0x000a], byte 0x0a ; 0x4263
    jl short @..api_idx_00d4_LUPQ.l79 ; 0x4267
@..api_idx_00d4_LUPQ.l80:
    cmp word [bp - 0x0002], byte 4   ; 0x4269
    jne short @..api_idx_00d4_LUPQ.l81 ; 0x426d
    mov word [bp - 0x0002], 0xffff   ; 0x426f
@..api_idx_00d4_LUPQ.l81:
    cmp word [bp - 0x0002], byte 0xff ; 0x4274
    je short @..api_idx_00d4_LUPQ.l82 ; 0x4278
    mov ax, word [bp - 0x0002]       ; 0x427a
    push ax                          ; 0x427d
    mov ax, 0x2c                     ; 0x427e
    imul word [bp - 0x0006]          ; 0x4281
    mov si, ax                       ; 0x4284
    mov bx, word [party_char]        ; 0x4286
    pop ax                           ; 0x428a
    mov word [bx + si + 0xc], ax     ; 0x428b
@..api_idx_00d4_LUPQ.l82:
    inc word [bp - 0x0006]           ; 0x428e
    mov ax, word [bp - 0x0006]       ; 0x4291
    cmp ax, word [bss_69c8]          ; 0x4294
    je short @..api_idx_00d4_LUPQ.l83 ; 0x4298
    jmp near @..api_idx_00d4_LUPQ.l95 ; 0x429a
@..api_idx_00d4_LUPQ.l83:
    mov ax, 3                        ; 0x429d
    push ax                          ; 0x42a0
    call redraw_area_set             ; 0x42a1
    pop cx                           ; 0x42a4
    lea ax, word [bp - 0x0096]       ; 0x42a5
    push ax                          ; 0x42a9
    mov ax, 0xdb2                    ; 0x42aa
    push ax                          ; 0x42ad
    call load_message_string         ; 0x42ae
    add sp, byte 4                   ; 0x42b1
    mov ax, 1                        ; 0x42b4
    push ax                          ; 0x42b7
    mov ax, 0x99                     ; 0x42b8
    push ax                          ; 0x42bb
    mov ax, 0xa0                     ; 0x42bc
    push ax                          ; 0x42bf
    lea ax, word [bp - 0x0096]       ; 0x42c0
    push ax                          ; 0x42c4
    call loc_VNIO                    ; 0x42c5
    add sp, byte 8                   ; 0x42c8
    mov ax, 3                        ; 0x42cb
    push ax                          ; 0x42ce
    call show_area_set               ; 0x42cf
    pop cx                           ; 0x42d2
    mov word [bp - 0x0002], 0        ; 0x42d3
@..api_idx_00d4_LUPQ.l84:
    mov ax, word [bp - 0x0002]       ; 0x42d8
    shl ax, 1                        ; 0x42db
    mov bx, ax                       ; 0x42dd
    add bx, bp                       ; 0x42df
    mov word [bx - 0x0028], 1        ; 0x42e1
    inc word [bp - 0x0002]           ; 0x42e6
    mov ax, word [bp - 0x0002]       ; 0x42e9
    cmp ax, strict word 3            ; 0x42ec
    jl short @..api_idx_00d4_LUPQ.l84 ; 0x42ef
    cmp word [bp - 0x00b4], byte 0   ; 0x42f1
    jne short @..api_idx_00d4_LUPQ.l85 ; 0x42f6
    mov word [bp - 0x0026], 0        ; 0x42f8
@..api_idx_00d4_LUPQ.l85:
    mov word [bp - 0x0022], 0xffff   ; 0x42fd
    call flush_keyboard              ; 0x4302
    lea ax, word [bp - 0x0028]       ; 0x4305
    push ax                          ; 0x4308
    mov ax, 1                        ; 0x4309
    push ax                          ; 0x430c
    mov ax, 0                        ; 0x430d
    push ax                          ; 0x4310
    mov ax, 3                        ; 0x4311
    push ax                          ; 0x4314
    mov ax, 0xa                      ; 0x4315
    push ax                          ; 0x4318
    mov ax, 0x78                     ; 0x4319
    push ax                          ; 0x431c
    mov ax, 0x12                     ; 0x431d
    push ax                          ; 0x4320
    mov ax, 0xa6                     ; 0x4321
    push ax                          ; 0x4324
    mov ax, 0x69                     ; 0x4325
    push ax                          ; 0x4328
    push ax                          ; 0x4329
    mov ax, 1                        ; 0x432a
    push ax                          ; 0x432d
    mov ax, 0xdb3                    ; 0x432e
    push ax                          ; 0x4331
    call loc_HTRU                    ; 0x4332
    add sp, byte 0x18                ; 0x4335
    mov word [bp - 0x0002], ax       ; 0x4338
    cmp ax, strict word 2            ; 0x433b
    je short @..api_idx_00d4_LUPQ.l86 ; 0x433e
    jmp near @..api_idx_00d4_LUPQ.l91 ; 0x4340
@..api_idx_00d4_LUPQ.l86:
    mov ax, 5                        ; 0x4343
    push ax                          ; 0x4346
    call ds_app_OIGN                 ; 0x4347
    pop cx                           ; 0x434a
    mov word [bp - 0x0006], 0        ; 0x434b
    jmp near @..api_idx_00d4_LUPQ.l89 ; 0x4350
@..api_idx_00d4_LUPQ.l87:
    mov ax, 0x2c                     ; 0x4353
    imul word [bp - 0x0006]          ; 0x4356
    mov si, ax                       ; 0x4359
    mov bx, word [party_char]        ; 0x435b
    cmp byte [bx + si + 0x22], 3     ; 0x435f
    je short @..api_idx_00d4_LUPQ.l88 ; 0x4363
    mov ax, 0x248                    ; 0x4365
    imul word [bp - 0x0006]          ; 0x4368
    mov bx, ax                       ; 0x436b
    mov word [bx + member_pair_points + 0x2], 0 ; 0x436d
    mov word [bx + pc_records], 0    ; 0x4373
    mov byte [bx + member_state + 0x5], 3 ; 0x4379
    mov bx, word [party_char]        ; 0x437e
    mov word [bx + si + 0x2], 0      ; 0x4382
    mov ax, 0x2c                     ; 0x4387
    imul word [bp - 0x0006]          ; 0x438a
    mov si, ax                       ; 0x438d
    mov bx, word [party_char]        ; 0x438f
    mov word [bx + si + 0x6], 0      ; 0x4393
    mov ax, 0x2c                     ; 0x4398
    imul word [bp - 0x0006]          ; 0x439b
    mov si, ax                       ; 0x439e
    mov bx, word [party_char]        ; 0x43a0
    mov byte [bx + si + 0x22], 3     ; 0x43a4
    mov ax, 0x248                    ; 0x43a8
    imul word [bp - 0x0006]          ; 0x43ab
    mov bx, ax                       ; 0x43ae
    mov al, byte [bx + member_state + 0x2] ; 0x43b0
    sub ah, ah                       ; 0x43b4
    add ax, strict word 8            ; 0x43b6
    push ax                          ; 0x43b9
    call play_sound_effect           ; 0x43ba
    pop cx                           ; 0x43bd
    mov ax, 1                        ; 0x43be
    push ax                          ; 0x43c1
    push word [bp - 0x0006]          ; 0x43c2
    call draw_party_member_panel     ; 0x43c5
    add sp, byte 4                   ; 0x43c8
    mov ax, 8                        ; 0x43cb
    push ax                          ; 0x43ce
    call ds_app_OIGN                 ; 0x43cf
    pop cx                           ; 0x43d2
@..api_idx_00d4_LUPQ.l88:
    inc word [bp - 0x0006]           ; 0x43d3
@..api_idx_00d4_LUPQ.l89:
    mov ax, word [bp - 0x0006]       ; 0x43d6
    cmp ax, word [bss_69c8]          ; 0x43d9
    jge short @..api_idx_00d4_LUPQ.l90 ; 0x43dd
    jmp near @..api_idx_00d4_LUPQ.l87 ; 0x43df
@..api_idx_00d4_LUPQ.l90:
    mov ax, 1                        ; 0x43e2
    ret                              ; 0x43e5
@..api_idx_00d4_LUPQ.l91:
    cmp word [bp - 0x0002], byte 1   ; 0x43e6
    jne short @..api_idx_00d4_LUPQ.l95 ; 0x43ea
    mov ax, 0                        ; 0x43ec
    push ax                          ; 0x43ef
    mov ax, 0x2d                     ; 0x43f0
    push ax                          ; 0x43f3
    mov ax, bss_90d8                 ; 0x43f4
    push ax                          ; 0x43f7
    call aztec_setmem                ; 0x43f8
    add sp, byte 6                   ; 0x43fb
    mov word [bp - 0x009a], 0        ; 0x43fe
    jmp short @..api_idx_00d4_LUPQ.l94 ; 0x4404
@..api_idx_00d4_LUPQ.l92:
    mov ax, 0x2c                     ; 0x4406
    imul word [bp - 0x009a]          ; 0x4409
    mov si, ax                       ; 0x440d
    mov bx, word [party_char]        ; 0x440f
    cmp byte [bx + si + 0x1f], 0     ; 0x4413
    jbe short @..api_idx_00d4_LUPQ.l93 ; 0x4417
    mov al, byte [bx + si + 0x1f]    ; 0x4419
    sub ah, ah                       ; 0x441c
    mov cx, 9                        ; 0x441e
    imul cx                          ; 0x4421
    push ax                          ; 0x4423
    mov al, byte [bx + si + 0x20]    ; 0x4424
    sub ah, ah                       ; 0x4427
    mov cx, ax                       ; 0x4429
    pop ax                           ; 0x442b
    add ax, cx                       ; 0x442c
    mov bx, ax                       ; 0x442e
    mov byte [bx + bss_90d8], 1      ; 0x4430
@..api_idx_00d4_LUPQ.l93:
    inc word [bp - 0x009a]           ; 0x4435
@..api_idx_00d4_LUPQ.l94:
    mov ax, word [bss_69c8]          ; 0x4439
    dec ax                           ; 0x443c
    cmp ax, word [bp - 0x009a]       ; 0x443d
    jg short @..api_idx_00d4_LUPQ.l92 ; 0x4441
    mov ax, word [bp - 0x00b4]       ; 0x4443
    shl ax, 1                        ; 0x4447
    mov bx, ax                       ; 0x4449
    add bx, bp                       ; 0x444b
    mov ax, word [bx - 0x00c2]       ; 0x444d
    mov word [bp - 0x0006], ax       ; 0x4451
    dec word [bp - 0x00b4]           ; 0x4454
@..api_idx_00d4_LUPQ.l95:
    jmp near @..api_idx_00d4_LUPQ.l13 ; 0x4458
@..api_idx_00d4_LUPQ.l96:
    mov word [bp - 0x0006], 0        ; 0x445b
    jmp near @..api_idx_00d4_LUPQ.l105 ; 0x4460
@..api_idx_00d4_LUPQ.l97:
    mov ax, 0x2c                     ; 0x4463
    imul word [bp - 0x0006]          ; 0x4466
    mov si, ax                       ; 0x4469
    mov bx, word [party_char]        ; 0x446b
    cmp byte [bx + si + 0xf], 0      ; 0x446f
    jbe short @..api_idx_00d4_LUPQ.l98 ; 0x4473
    mov ax, 0x64                     ; 0x4475
    push ax                          ; 0x4478
    call random_below                ; 0x4479
    pop cx                           ; 0x447c
    push ax                          ; 0x447d
    mov ax, 0x248                    ; 0x447e
    imul word [bp - 0x0006]          ; 0x4481
    mov bx, ax                       ; 0x4484
    mov al, byte [bx + cell_key_grid + 0x136] ; 0x4486
    sub ah, ah                       ; 0x448a
    mov cx, ax                       ; 0x448c
    add ax, strict word 0x50         ; 0x448e
    mov cx, ax                       ; 0x4491
    pop ax                           ; 0x4493
    cmp ax, cx                       ; 0x4494
    jle short @..api_idx_00d4_LUPQ.l98 ; 0x4496
    mov ax, 0x2c                     ; 0x4498
    imul word [bp - 0x0006]          ; 0x449b
    mov si, ax                       ; 0x449e
    mov bx, word [party_char]        ; 0x44a0
    mov byte [bx + si + 0x1e], 6     ; 0x44a4
@..api_idx_00d4_LUPQ.l98:
    mov ax, 0x2c                     ; 0x44a8
    imul word [bp - 0x0006]          ; 0x44ab
    mov si, ax                       ; 0x44ae
    mov bx, word [party_char]        ; 0x44b0
    cmp byte [bx + si + 0x1e], 1     ; 0x44b4
    je short @..api_idx_00d4_LUPQ.l99 ; 0x44b8
    cmp byte [bx + si + 0x1e], 7     ; 0x44ba
    jne short @..api_idx_00d4_LUPQ.l100 ; 0x44be
@..api_idx_00d4_LUPQ.l99:
    mov byte [bx + si + 0x18], 1     ; 0x44c0
@..api_idx_00d4_LUPQ.l100:
    mov ax, 0x2c                     ; 0x44c4
    imul word [bp - 0x0006]          ; 0x44c7
    mov si, ax                       ; 0x44ca
    mov bx, word [party_char]        ; 0x44cc
    cmp byte [bx + si + 0x1e], 0     ; 0x44d0
    jne short @..api_idx_00d4_LUPQ.l102 ; 0x44d4
    cmp word [bx + si + 0xc], byte 0xff ; 0x44d6
    jne short @..api_idx_00d4_LUPQ.l101 ; 0x44da
    mov byte [bx + si + 0x19], 0     ; 0x44dc
    mov ax, 0x2c                     ; 0x44e0
    imul word [bp - 0x0006]          ; 0x44e3
    mov si, ax                       ; 0x44e6
    mov bx, word [party_char]        ; 0x44e8
    mov byte [bx + si + 0x1b], 0     ; 0x44ec
@..api_idx_00d4_LUPQ.l101:
    jmp short @..api_idx_00d4_LUPQ.l104 ; 0x44f0
@..api_idx_00d4_LUPQ.l102:
    mov word [bp - 0x0002], 1        ; 0x44f2
@..api_idx_00d4_LUPQ.l103:
    mov ax, 0x2c                     ; 0x44f7
    imul word [bp - 0x0006]          ; 0x44fa
    add ax, word [bp - 0x0002]       ; 0x44fd
    mov si, ax                       ; 0x4500
    mov bx, word [party_char]        ; 0x4502
    mov byte [bx + si + 0x18], 0     ; 0x4506
    inc word [bp - 0x0002]           ; 0x450a
    mov ax, word [bp - 0x0002]       ; 0x450d
    cmp ax, strict word 4            ; 0x4510
    jl short @..api_idx_00d4_LUPQ.l103 ; 0x4513
@..api_idx_00d4_LUPQ.l104:
    inc word [bp - 0x0006]           ; 0x4515
@..api_idx_00d4_LUPQ.l105:
    mov ax, word [bp - 0x0006]       ; 0x4518
    cmp ax, word [bss_69c8]          ; 0x451b
    jge short @..api_idx_00d4_LUPQ.l106 ; 0x451f
    jmp near @..api_idx_00d4_LUPQ.l97 ; 0x4521
@..api_idx_00d4_LUPQ.l106:
    mov ax, 0                        ; 0x4524
    ret                              ; 0x4527
