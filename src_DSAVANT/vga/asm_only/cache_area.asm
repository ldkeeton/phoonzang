; auto-generated
; asm only
cache_area:
    push bp                          ; 0x385f
    mov bp, sp                       ; 0x3860
    sub sp, byte 0x0e                ; 0x3862
    push es                          ; 0x3865
    push ds                          ; 0x3866
    push di                          ; 0x3867
    push si                          ; 0x3868
    mov ax, ds                       ; 0x3869
    mov es, ax                       ; 0x386b
    cmp word [bp + 0x14], byte 3     ; 0x386d
    jne short @..cache_area.l5       ; 0x3871
    mov ax, word [bp + 0x10]         ; 0x3873
    sub ax, word [bp + 0xc]          ; 0x3876
    inc ax                           ; 0x3879
    mov word [bp - 0x0006], ax       ; 0x387a
    mov bx, word [bp + 0x12]         ; 0x387d
    sub bx, word [bp + 0xe]          ; 0x3880
    inc bx                           ; 0x3883
    mov word [bp - 0x0004], bx       ; 0x3884
    mul bx                           ; 0x3887
    mov word [bp - 0x0008], ax       ; 0x3889
    mov word [bp - 0x000a], dx       ; 0x388c
    mov ax, word [bp + 0xe]          ; 0x388f
    mov bx, 0x140                    ; 0x3892
    mul bx                           ; 0x3895
    add ax, word [bp + 0xc]          ; 0x3897
    mov word [bp - 0x0002], ax       ; 0x389a
    lea bx, word [bp - 0x000a]       ; 0x389d
    mov dx, bx                       ; 0x38a0
    mov ax, ss                       ; 0x38a2
    mov ds, ax                       ; 0x38a4
    mov cx, 0xa                      ; 0x38a6
    mov bx, word [bp + 0x16]         ; 0x38a9
    mov ah, 0x40                     ; 0x38ac
    int 0x21 ; DOS write file (handle)
    jae short @..cache_area.l1       ; 0x38b0
    jmp near loc_381b                ; 0x38b2
@..cache_area.l1:
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x38b5
    mov ds, ax                       ; 0x38b9
    mov cx, word [bp - 0x0004]       ; 0x38bb
@..cache_area.l2:
    push cx                          ; 0x38be
    mov dx, word [bp - 0x0002]       ; 0x38bf
    add word [bp - 0x0002], strict word 0x140 ; 0x38c2
    mov cx, word [bp - 0x0006]       ; 0x38c7
    mov bx, word [bp + 0x16]         ; 0x38ca
    mov ah, 0x40                     ; 0x38cd
    int 0x21 ; DOS write file (handle)
    jae short @..cache_area.l3       ; 0x38d1
    jmp near loc_381b                ; 0x38d3
@..cache_area.l3:
    cmp ax, word [bp - 0x0006]       ; 0x38d6
    je short @..cache_area.l4        ; 0x38d9
    jmp near loc_381b                ; 0x38db
@..cache_area.l4:
    pop cx                           ; 0x38de
    loop @..cache_area.l2            ; 0x38df
    xor ax, ax                       ; 0x38e1
    mov dx, word [bp + 0x14]         ; 0x38e3
    jmp near loc_3ae6                ; 0x38e6
@..cache_area.l5:
    cmp word [bp + 0x14], byte 2     ; 0x38e9
    je short @..cache_area.l6        ; 0x38ed
    jmp near @..cache_area.l11       ; 0x38ef
@..cache_area.l6:
    mov ax, word [bp + 0x10]         ; 0x38f2
    sub ax, word [bp + 0xc]          ; 0x38f5
    inc ax                           ; 0x38f8
    mov word [bp - 0x0006], ax       ; 0x38f9
    mov bx, word [bp + 0x12]         ; 0x38fc
    sub bx, word [bp + 0xe]          ; 0x38ff
    inc bx                           ; 0x3902
    mov word [bp - 0x0004], bx       ; 0x3903
    mul bx                           ; 0x3906
    mov word [bp - 0x0008], ax       ; 0x3908
    mov word [bp - 0x000a], dx       ; 0x390b
    add ax, strict word 0xc          ; 0x390e
    add ax, strict word 0xf          ; 0x3911
    mov cl, 4                        ; 0x3914
    shr ax, cl                       ; 0x3916
    mov word [bp - 0x0002], ax       ; 0x3918
    add ax, word [cs:cseg_0bac - IMAGE_BASE] ; 0x391b
    cmp ax, 0x4180                   ; 0x3920
    jbe short @..cache_area.l7       ; 0x3923
    jmp near dos_con_loc_RSSU        ; 0x3925
@..cache_area.l7:
    mov bx, word [cs:cseg_0bac - IMAGE_BASE] ; 0x3928
    mov word [bp - 0x000e], bx       ; 0x392d
    mov word [cs:cseg_0bac - IMAGE_BASE], ax ; 0x3930
    mov bx, data_025b                ; 0x3934
    mov cx, 0x10                     ; 0x3937
    xor dx, dx                       ; 0x393a
@..cache_area.l8:
    mov ax, word [cs:bx]             ; 0x393c
    or ax, ax                        ; 0x393f
    je short @..cache_area.l9        ; 0x3941
    inc dx                           ; 0x3943
    add bx, byte 2                   ; 0x3944
    loop @..cache_area.l8            ; 0x3947
    jmp near dos_con_loc_UHSU        ; 0x3949
@..cache_area.l9:
    mov word [bp - 0x000c], dx       ; 0x394c
    mov ax, word [cs:cseg_0baa - IMAGE_BASE] ; 0x394f
    inc ax                           ; 0x3953
    mov word [cs:cseg_0baa - IMAGE_BASE], ax ; 0x3954
    mov word [cs:bx], ax             ; 0x3958
    dec ax                           ; 0x395b
    mov cl, 2                        ; 0x395c
    shl ax, cl                       ; 0x395e
    mov bx, data_0bda                ; 0x3960
    add bx, ax                       ; 0x3963
    mov ax, word [bp - 0x000e]       ; 0x3965
    mov word [cs:bx], ax             ; 0x3968
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x396b
    mov es, ax                       ; 0x3970
    mov ax, word [bp - 0x0002]       ; 0x3972
    mov word [cs:bx + 0x2], ax       ; 0x3975
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x3979
    mov ds, ax                       ; 0x397d
    mov ax, word [bp + 0xe]          ; 0x397f
    mov bx, 0x140                    ; 0x3982
    mul bx                           ; 0x3985
    add ax, word [bp + 0xc]          ; 0x3987
    mov word [bp - 0x0002], ax       ; 0x398a
    xor di, di                       ; 0x398d
    stosw                            ; 0x398f
    xor ax, ax                       ; 0x3990
    stosw                            ; 0x3992
    mov ax, word [bp - 0x0004]       ; 0x3993
    stosw                            ; 0x3996
    mov ax, word [bp - 0x0006]       ; 0x3997
    stosw                            ; 0x399a
    mov ax, word [bp - 0x0008]       ; 0x399b
    stosw                            ; 0x399e
    mov ax, word [bp - 0x000a]       ; 0x399f
    stosw                            ; 0x39a2
@..cache_area.l10:
    mov si, word [bp - 0x0002]       ; 0x39a3
    add word [bp - 0x0002], strict word 0x140 ; 0x39a6
    mov cx, word [bp - 0x0006]       ; 0x39ab
    rep movsb                        ; 0x39ae
    dec word [bp - 0x0004]           ; 0x39b0
    jne short @..cache_area.l10      ; 0x39b3
    mov ax, word [bp - 0x000c]       ; 0x39b5
    mov dx, word [bp + 0x14]         ; 0x39b8
    jmp near loc_3ae6                ; 0x39bb
@..cache_area.l11:
    mov ax, word [bp + 0x10]         ; 0x39be
    sub ax, word [bp + 0xc]          ; 0x39c1
    inc ax                           ; 0x39c4
    mov word [bp - 0x0006], ax       ; 0x39c5
    mov bx, word [bp + 0x12]         ; 0x39c8
    sub bx, word [bp + 0xe]          ; 0x39cb
    inc bx                           ; 0x39ce
    mov word [bp - 0x0004], bx       ; 0x39cf
    mul bx                           ; 0x39d2
    mov word [bp - 0x0008], ax       ; 0x39d4
    mov word [bp - 0x000a], dx       ; 0x39d7
    add ax, strict word 0xc          ; 0x39da
    add ax, strict word 0xf          ; 0x39dd
    mov cl, 4                        ; 0x39e0
    shr ax, cl                       ; 0x39e2
    mov word [bp - 0x0002], ax       ; 0x39e4
    add ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x39e7
    cmp ax, word [cs:cseg_00ff - IMAGE_BASE] ; 0x39ec
    jbe short @..cache_area.l12      ; 0x39f1
    jmp near dos_con_loc_GKQH        ; 0x39f3
@..cache_area.l12:
    mov bx, word [cs:cseg_0291 - IMAGE_BASE] ; 0x39f6
    mov word [bp - 0x000e], bx       ; 0x39fb
    mov word [cs:cseg_0291 - IMAGE_BASE], ax ; 0x39fe
    mov bx, data_029b                ; 0x3a02
    mov cx, 0x14                     ; 0x3a05
    xor dx, dx                       ; 0x3a08
@..cache_area.l13:
    mov ax, word [cs:bx]             ; 0x3a0a
    or ax, ax                        ; 0x3a0d
    je short @..cache_area.l14       ; 0x3a0f
    inc dx                           ; 0x3a11
    add bx, byte 2                   ; 0x3a12
    loop @..cache_area.l13           ; 0x3a15
    jmp near dos_con_loc_QORG        ; 0x3a17
@..cache_area.l14:
    mov word [bp - 0x000c], dx       ; 0x3a1a
    mov ax, word [cs:cseg_028f - IMAGE_BASE] ; 0x3a1d
    inc ax                           ; 0x3a21
    mov word [cs:cseg_028f - IMAGE_BASE], ax ; 0x3a22
    mov word [cs:bx], ax             ; 0x3a26
    dec ax                           ; 0x3a29
    mov cl, 2                        ; 0x3a2a
    shl ax, cl                       ; 0x3a2c
    mov bx, cseg_01eb - IMAGE_BASE   ; 0x3a2e
    add bx, ax                       ; 0x3a31
    mov ax, word [bp - 0x000e]       ; 0x3a33
    mov word [cs:bx], ax             ; 0x3a36
    mov ax, word [bp - 0x0002]       ; 0x3a39
    mov word [cs:bx + 0x2], ax       ; 0x3a3c
    mov ax, word [cs:cseg_0103 - IMAGE_BASE] ; 0x3a40
    mov es, ax                       ; 0x3a44
    mov ax, word [bp - 0x000e]       ; 0x3a46
    mov di, ax                       ; 0x3a49
    and di, strict word 0x3ff        ; 0x3a4b
    mov cl, 4                        ; 0x3a4f
    shl di, cl                       ; 0x3a51
    mov cl, 0xa                      ; 0x3a53
    shr ax, cl                       ; 0x3a55
    mov word [cs:cseg_3b8e - IMAGE_BASE], ax ; 0x3a57
    call leaf_loc_HLGJ               ; 0x3a5b
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x3a5e
    mov ds, ax                       ; 0x3a62
    mov ax, word [bp + 0xe]          ; 0x3a64
    mov bx, 0x140                    ; 0x3a67
    mul bx                           ; 0x3a6a
    add ax, word [bp + 0xc]          ; 0x3a6c
    mov word [bp - 0x0002], ax       ; 0x3a6f
    stosw                            ; 0x3a72
    xor ax, ax                       ; 0x3a73
    stosw                            ; 0x3a75
    mov ax, word [bp - 0x0004]       ; 0x3a76
    stosw                            ; 0x3a79
    mov ax, word [bp - 0x0006]       ; 0x3a7a
    stosw                            ; 0x3a7d
    mov ax, word [bp - 0x0008]       ; 0x3a7e
    stosw                            ; 0x3a81
    mov ax, word [bp - 0x000a]       ; 0x3a82
    stosw                            ; 0x3a85
@..cache_area.l15:
    mov si, word [bp - 0x0002]       ; 0x3a86
    add word [bp - 0x0002], strict word 0x140 ; 0x3a89
    mov cx, word [bp - 0x0006]       ; 0x3a8e
    rep movsb                        ; 0x3a91
    test di, 0xc000                  ; 0x3a93
    je short @..cache_area.l16       ; 0x3a97
    inc word [cs:cseg_3b8e - IMAGE_BASE] ; 0x3a99
    mov ax, word [cs:cseg_3b8e - IMAGE_BASE] ; 0x3a9e
    call leaf_loc_HLGJ               ; 0x3aa2
    and di, strict word 0x3fff       ; 0x3aa5
@..cache_area.l16:
    dec word [bp - 0x0004]           ; 0x3aa9
    jne short @..cache_area.l15      ; 0x3aac
    mov ax, word [bp - 0x000c]       ; 0x3aae
    mov dx, word [bp + 0x14]         ; 0x3ab1
    jmp near loc_3ae6                ; 0x3ab4
