; auto-generated
add_party_member:
    mov ax, 0xfff8                   ; 0x07ad
    call aztec_csav                  ; 0x07b0
    mov ax, 0                        ; 0x07b3
    push ax                          ; 0x07b6
    push word [bp + 0x4]             ; 0x07b7
    mov ax, word [bp + 0x6]          ; 0x07ba
    shl ax, 1                        ; 0x07bd
    mov bx, ax                       ; 0x07bf
    push word [bx + party_char_ext]  ; 0x07c1
    mov ax, 4                        ; 0x07c5
    push ax                          ; 0x07c8
    call data_record_io              ; 0x07c9
    add sp, byte 8                   ; 0x07cc
    cmp word [bp + 0x6], byte 1      ; 0x07cf
    jle short @..add_party_member.l1 ; 0x07d3
    mov ax, word [bp + 0x6]          ; 0x07d5
    shl ax, 1                        ; 0x07d8
    mov bx, ax                       ; 0x07da
    mov bx, word [bx + party_char_ext] ; 0x07dc
    mov al, byte [bx + member_ext.kind] ; 0x07e0
    sub ah, ah                       ; 0x07e4
    push ax                          ; 0x07e6
    call api_idx_005e_RKOR           ; 0x07e7
    pop cx                           ; 0x07ea
    cmp ax, strict word 0xffff       ; 0x07eb
    jne short @..add_party_member.l1 ; 0x07ee
    ret                              ; 0x07f0
@..add_party_member.l1:
    inc word [party_member_count]    ; 0x07f1
    mov al, byte [bp + 0x4]          ; 0x07f5
    mov cx, word [bp + 0x6]          ; 0x07f8
    shl cx, 1                        ; 0x07fb
    mov bx, cx                       ; 0x07fd
    mov bx, word [bx + party_char]   ; 0x07ff
    mov byte [bx + member_rec.kind], al ; 0x0803
    mov ax, word [bp + 0x6]          ; 0x0807
    shl ax, 1                        ; 0x080a
    mov bx, ax                       ; 0x080c
    mov bx, word [bx + party_char_ext] ; 0x080e
    mov al, byte [bx + member_ext.kind] ; 0x0812
    sub ah, ah                       ; 0x0816
    push ax                          ; 0x0818
    call find_picture_slot           ; 0x0819
    pop cx                           ; 0x081c
    mov cx, word [bp + 0x6]          ; 0x081d
    shl cx, 1                        ; 0x0820
    mov bx, cx                       ; 0x0822
    mov bx, word [bx + party_char]   ; 0x0824
    mov byte [bx + member_rec.slot], al ; 0x0828
    cmp word [bp + 0x6], byte 1      ; 0x082c
    jne short @..add_party_member.l2 ; 0x0830
    mov ax, word [bp + 0x6]          ; 0x0832
    shl ax, 1                        ; 0x0835
    mov bx, ax                       ; 0x0837
    mov bx, word [bx + party_char_ext] ; 0x0839
    cmp byte [bx + member_ext.f_00d8], 0 ; 0x083d
    jbe short @..add_party_member.l2 ; 0x0842
    mov al, byte [bx + 0xd8]         ; 0x0844
    sub ah, ah                       ; 0x0848
    push ax                          ; 0x084a
    call ds_app_QTIV                 ; 0x084b
    pop cx                           ; 0x084e
@..add_party_member.l2:
    mov ax, word [bp + 0x6]          ; 0x084f
    shl ax, 1                        ; 0x0852
    mov bx, ax                       ; 0x0854
    mov bx, word [bx + party_char_ext] ; 0x0856
    mov al, byte [bx + member_ext.f_00e2] ; 0x085a
    sub ah, ah                       ; 0x085e
    test ax, 1                       ; 0x0860
    jne short @..add_party_member.l7 ; 0x0863
    mov al, byte [bss_5988]          ; 0x0865
    sub ah, ah                       ; 0x0868
    jmp short @..add_party_member.l6 ; 0x086a
@..add_party_member.l3:
    mov ax, word [bp + 0x6]          ; 0x086c
    shl ax, 1                        ; 0x086f
    mov bx, ax                       ; 0x0871
    mov bx, word [bx + party_char_ext] ; 0x0873
    cmp word [bx + member_ext.f_007a], byte 0 ; 0x0877
    jle short @..add_party_member.l4 ; 0x087b
    dec word [bx + 0x7a]             ; 0x087d
@..add_party_member.l4:
    jmp short @..add_party_member.l7 ; 0x0880
@..add_party_member.l5:
    mov ax, word [bp + 0x6]          ; 0x0882
    shl ax, 1                        ; 0x0885
    mov bx, ax                       ; 0x0887
    mov bx, word [bx + party_char_ext] ; 0x0889
    inc word [bx + member_ext.f_007a] ; 0x088d
    jmp short @..add_party_member.l7 ; 0x0890
@..add_party_member.l6:
    cmp ax, strict word 1            ; 0x0892
    je short @..add_party_member.l3  ; 0x0895
    cmp ax, strict word 2            ; 0x0897
    je short @..add_party_member.l5  ; 0x089a
@..add_party_member.l7:
    mov ax, word [bp + 0x6]          ; 0x089c
    shl ax, 1                        ; 0x089f
    mov bx, ax                       ; 0x08a1
    mov cx, word [bx + party_char_ext] ; 0x08a3
    add cx, byte 0x7a                ; 0x08a7
    sub sp, byte 4                   ; 0x08aa
    mov ax, sp                       ; 0x08ad
    mov dx, ss                       ; 0x08af
    mov es, dx                       ; 0x08b1
    mov si, cx                       ; 0x08b3
    mov di, ax                       ; 0x08b5
    movsw                            ; 0x08b7
    movsw                            ; 0x08b8
    call add_random_steps            ; 0x08b9
    add sp, byte 4                   ; 0x08bc
    mov cx, word [bp + 0x6]          ; 0x08bf
    shl cx, 1                        ; 0x08c2
    mov bx, cx                       ; 0x08c4
    mov bx, word [bx + party_char]   ; 0x08c6
    mov byte [bx + member_rec.item_count], al ; 0x08ca
    mov ax, word [bp + 0x6]          ; 0x08ce
    shl ax, 1                        ; 0x08d1
    mov bx, ax                       ; 0x08d3
    mov bx, word [bx + party_char]   ; 0x08d5
    cmp byte [bx + member_rec.item_count], 1 ; 0x08d9
    jae short @..add_party_member.l8 ; 0x08de
    mov byte [bx + 0x1a1], 1         ; 0x08e0
@..add_party_member.l8:
    mov ax, word [bp + 0x6]          ; 0x08e5
    shl ax, 1                        ; 0x08e8
    mov bx, ax                       ; 0x08ea
    mov bx, word [bx + party_char]   ; 0x08ec
    cmp byte [bx + member_rec.item_count], 9 ; 0x08f0
    jbe short @..add_party_member.l9 ; 0x08f5
    mov byte [bx + 0x1a1], 9         ; 0x08f7
@..add_party_member.l9:
    mov ax, word [bp + 0x6]          ; 0x08fc
    shl ax, 1                        ; 0x08ff
    mov bx, ax                       ; 0x0901
    mov bx, word [bx + party_char]   ; 0x0903
    mov byte [bx + member_rec.f_01a0], 1 ; 0x0907
    mov word [bp - 0x0002], 0        ; 0x090c
@..add_party_member.l10:
    mov ax, word [bp + 0x6]          ; 0x0911
    shl ax, 1                        ; 0x0914
    mov bx, ax                       ; 0x0916
    mov bx, word [bx + party_char]   ; 0x0918
    mov si, word [bp - 0x0002]       ; 0x091c
    mov byte [bx + si + member_rec.charge], 0 ; 0x091f
    inc word [bp - 0x0002]           ; 0x0924
    mov ax, word [bp - 0x0002]       ; 0x0927
    cmp ax, strict word 6            ; 0x092a
    jl short @..add_party_member.l10 ; 0x092d
    mov word [bp - 0x0002], 0        ; 0x092f
@..add_party_member.l11:
    mov ax, word [bp + 0x6]          ; 0x0934
    shl ax, 1                        ; 0x0937
    mov bx, ax                       ; 0x0939
    mov bx, word [bx + party_char]   ; 0x093b
    mov si, word [bp - 0x0002]       ; 0x093f
    mov byte [bx + si + member_rec.delay], 0 ; 0x0942
    inc word [bp - 0x0002]           ; 0x0947
    mov ax, word [bp - 0x0002]       ; 0x094a
    cmp ax, strict word 6            ; 0x094d
    jl short @..add_party_member.l11 ; 0x0950
    cmp byte [bss_5988], 2           ; 0x0952
    jne short @..add_party_member.l12 ; 0x0957
    mov ax, word [bp + 0x6]          ; 0x0959
    shl ax, 1                        ; 0x095c
    mov bx, ax                       ; 0x095e
    mov bx, word [bx + party_char_ext] ; 0x0960
    inc byte [bx + member_ext.f_0080] ; 0x0964
@..add_party_member.l12:
    mov word [bp - 0x0002], 0        ; 0x0968
    jmp near @..add_party_member.l19 ; 0x096d
@..add_party_member.l13:
    mov ax, word [bp + 0x6]          ; 0x0970
    shl ax, 1                        ; 0x0973
    mov bx, ax                       ; 0x0975
    mov bx, word [bx + party_char_ext] ; 0x0977
    mov al, byte [bx + member_ext.f_0080] ; 0x097b
    sub ah, ah                       ; 0x097f
    push ax                          ; 0x0981
    mov ax, 0x2c                     ; 0x0982
    imul word [bp - 0x0002]          ; 0x0985
    mov si, ax                       ; 0x0988
    mov ax, word [bp + 0x6]          ; 0x098a
    shl ax, 1                        ; 0x098d
    mov bx, ax                       ; 0x098f
    mov bx, word [bx + party_char]   ; 0x0991
    pop ax                           ; 0x0995
    mov word [bx + si], ax           ; 0x0996
    mov ax, word [bp + 0x6]          ; 0x0998
    shl ax, 1                        ; 0x099b
    mov bx, ax                       ; 0x099d
    mov cx, word [bx + party_char_ext] ; 0x099f
    add cx, byte 0x7e                ; 0x09a3
    sub sp, byte 4                   ; 0x09a6
    mov ax, sp                       ; 0x09a9
    mov dx, ss                       ; 0x09ab
    mov es, dx                       ; 0x09ad
    mov si, cx                       ; 0x09af
    mov di, ax                       ; 0x09b1
    movsw                            ; 0x09b3
    movsw                            ; 0x09b4
    call add_random_steps            ; 0x09b5
    add sp, byte 4                   ; 0x09b8
    push ax                          ; 0x09bb
    mov ax, 0x2c                     ; 0x09bc
    imul word [bp - 0x0002]          ; 0x09bf
    mov si, ax                       ; 0x09c2
    mov ax, word [bp + 0x6]          ; 0x09c4
    shl ax, 1                        ; 0x09c7
    mov bx, ax                       ; 0x09c9
    mov bx, word [bx + party_char]   ; 0x09cb
    pop ax                           ; 0x09cf
    mov word [bx + si + member_rec.item_charge_cap], ax ; 0x09d0
    mov ax, 0x2c                     ; 0x09d3
    imul word [bp - 0x0002]          ; 0x09d6
    mov si, ax                       ; 0x09d9
    mov ax, word [bp + 0x6]          ; 0x09db
    shl ax, 1                        ; 0x09de
    mov bx, ax                       ; 0x09e0
    mov bx, word [bx + party_char]   ; 0x09e2
    mov ax, word [bx + si + member_rec.item_charge_cap] ; 0x09e6
    mov word [bx + si + member_rec.item_charges], ax ; 0x09e9
    mov ax, word [bp + 0x6]          ; 0x09ec
    shl ax, 1                        ; 0x09ef
    mov bx, ax                       ; 0x09f1
    mov cx, word [bx + party_char_ext] ; 0x09f3
    add cx, strict word 0x82         ; 0x09f7
    sub sp, byte 4                   ; 0x09fb
    mov ax, sp                       ; 0x09fe
    mov dx, ss                       ; 0x0a00
    mov es, dx                       ; 0x0a02
    mov si, cx                       ; 0x0a04
    mov di, ax                       ; 0x0a06
    movsw                            ; 0x0a08
    movsw                            ; 0x0a09
    call add_random_steps            ; 0x0a0a
    add sp, byte 4                   ; 0x0a0d
    push ax                          ; 0x0a10
    mov ax, 0x2c                     ; 0x0a11
    imul word [bp - 0x0002]          ; 0x0a14
    mov si, ax                       ; 0x0a17
    mov ax, word [bp + 0x6]          ; 0x0a19
    shl ax, 1                        ; 0x0a1c
    mov bx, ax                       ; 0x0a1e
    mov bx, word [bx + party_char]   ; 0x0a20
    pop ax                           ; 0x0a24
    mov word [bx + si + member_rec.item_timer_max], ax ; 0x0a25
    mov ax, 0x2c                     ; 0x0a28
    imul word [bp - 0x0002]          ; 0x0a2b
    mov si, ax                       ; 0x0a2e
    mov ax, word [bp + 0x6]          ; 0x0a30
    shl ax, 1                        ; 0x0a33
    mov bx, ax                       ; 0x0a35
    mov bx, word [bx + party_char]   ; 0x0a37
    mov ax, word [bx + si + member_rec.item_timer_max] ; 0x0a3b
    mov word [bx + si + member_rec.item_timer], ax ; 0x0a3e
    mov ax, 0x2c                     ; 0x0a41
    imul word [bp - 0x0002]          ; 0x0a44
    mov si, ax                       ; 0x0a47
    mov ax, word [bp + 0x6]          ; 0x0a49
    shl ax, 1                        ; 0x0a4c
    mov bx, ax                       ; 0x0a4e
    mov bx, word [bx + party_char]   ; 0x0a50
    mov byte [bx + si + member_rec.item_cell], 0xff ; 0x0a54
    mov al, byte [bss_5988]          ; 0x0a58
    sub ah, ah                       ; 0x0a5b
    jmp near @..add_party_member.l16 ; 0x0a5d
@..add_party_member.l14:
    mov ax, 0x2c                     ; 0x0a60
    imul word [bp - 0x0002]          ; 0x0a63
    mov si, ax                       ; 0x0a66
    mov ax, word [bp + 0x6]          ; 0x0a68
    shl ax, 1                        ; 0x0a6b
    mov bx, ax                       ; 0x0a6d
    mov bx, word [bx + party_char]   ; 0x0a6f
    mov byte [bx + si + member_rec.f_0026], 2 ; 0x0a73
    mov ax, 0x2c                     ; 0x0a77
    imul word [bp - 0x0002]          ; 0x0a7a
    mov si, ax                       ; 0x0a7d
    mov ax, word [bp + 0x6]          ; 0x0a7f
    shl ax, 1                        ; 0x0a82
    mov bx, ax                       ; 0x0a84
    mov bx, word [bx + party_char]   ; 0x0a86
    mov byte [bx + si + member_rec.f_0027], 2 ; 0x0a8a
    mov ax, 0x2c                     ; 0x0a8e
    imul word [bp - 0x0002]          ; 0x0a91
    mov si, ax                       ; 0x0a94
    mov ax, word [bp + 0x6]          ; 0x0a96
    shl ax, 1                        ; 0x0a99
    mov bx, ax                       ; 0x0a9b
    mov bx, word [bx + party_char]   ; 0x0a9d
    mov byte [bx + si + member_rec.item_level], 0xfb ; 0x0aa1
    jmp short @..add_party_member.l18 ; 0x0aa5
@..add_party_member.l15:
    mov ax, 0x2c                     ; 0x0aa7
    imul word [bp - 0x0002]          ; 0x0aaa
    mov si, ax                       ; 0x0aad
    mov ax, word [bp + 0x6]          ; 0x0aaf
    shl ax, 1                        ; 0x0ab2
    mov bx, ax                       ; 0x0ab4
    mov bx, word [bx + party_char]   ; 0x0ab6
    mov byte [bx + si + member_rec.f_0026], 0xfe ; 0x0aba
    mov ax, 0x2c                     ; 0x0abe
    imul word [bp - 0x0002]          ; 0x0ac1
    mov si, ax                       ; 0x0ac4
    mov ax, word [bp + 0x6]          ; 0x0ac6
    shl ax, 1                        ; 0x0ac9
    mov bx, ax                       ; 0x0acb
    mov bx, word [bx + party_char]   ; 0x0acd
    mov byte [bx + si + member_rec.f_0027], 0xfe ; 0x0ad1
    mov ax, 0x2c                     ; 0x0ad5
    imul word [bp - 0x0002]          ; 0x0ad8
    mov si, ax                       ; 0x0adb
    mov ax, word [bp + 0x6]          ; 0x0add
    shl ax, 1                        ; 0x0ae0
    mov bx, ax                       ; 0x0ae2
    mov bx, word [bx + party_char]   ; 0x0ae4
    mov byte [bx + si + member_rec.item_level], 5 ; 0x0ae8
    jmp short @..add_party_member.l18 ; 0x0aec
@..add_party_member.l16:
    cmp ax, strict word 1            ; 0x0aee
    jne short @..add_party_member.l17 ; 0x0af1
    jmp near @..add_party_member.l14 ; 0x0af3
@..add_party_member.l17:
    cmp ax, strict word 2            ; 0x0af6
    je short @..add_party_member.l15 ; 0x0af9
@..add_party_member.l18:
    inc word [bp - 0x0002]           ; 0x0afb
@..add_party_member.l19:
    mov ax, word [bp + 0x6]          ; 0x0afe
    shl ax, 1                        ; 0x0b01
    mov bx, ax                       ; 0x0b03
    mov bx, word [bx + party_char]   ; 0x0b05
    mov al, byte [bx + member_rec.item_count] ; 0x0b09
    sub ah, ah                       ; 0x0b0d
    cmp ax, word [bp - 0x0002]       ; 0x0b0f
    jle short @..add_party_member.l20 ; 0x0b12
    jmp near @..add_party_member.l13 ; 0x0b14
@..add_party_member.l20:
    mov word [bp - 0x0006], 0        ; 0x0b17
    mov word [bp - 0x0002], 0        ; 0x0b1c
    jmp short @..add_party_member.l22 ; 0x0b21
@..add_party_member.l21:
    mov ax, 0x248                    ; 0x0b23
    imul word [bp - 0x0002]          ; 0x0b26
    mov bx, ax                       ; 0x0b29
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x0b2b
    add word [bp - 0x0006], ax       ; 0x0b2f
    inc word [bp - 0x0002]           ; 0x0b32
@..add_party_member.l22:
    mov ax, word [bp - 0x0002]       ; 0x0b35
    cmp ax, word [party_char_count]  ; 0x0b38
    jl short @..add_party_member.l21 ; 0x0b3c
    mov ax, word [bp - 0x0006]       ; 0x0b3e
    cwd                              ; 0x0b41
    idiv word [party_char_count]     ; 0x0b42
    inc ax                           ; 0x0b46
    mov cx, 3                        ; 0x0b47
    cwd                              ; 0x0b4a
    idiv cx                          ; 0x0b4b
    mov word [bp - 0x0006], ax       ; 0x0b4d
    cmp word [party_entry_mode], byte 0 ; 0x0b50
    jle short @..add_party_member.l23 ; 0x0b55
    inc word [bp - 0x0006]           ; 0x0b57
@..add_party_member.l23:
    mov ax, 5                        ; 0x0b5a
    push ax                          ; 0x0b5d
    mov ax, 1                        ; 0x0b5e
    push ax                          ; 0x0b61
    push word [bp - 0x0006]          ; 0x0b62
    call clamp_between               ; 0x0b65
    add sp, byte 6                   ; 0x0b68
    mov word [bp - 0x0006], ax       ; 0x0b6b
    mov ax, 0x96                     ; 0x0b6e
    cmp byte [bss_5988], 1           ; 0x0b71
    je short @..add_party_member.l24 ; 0x0b76
    mov ax, 0x64                     ; 0x0b78
    cmp byte [bss_5988], 2           ; 0x0b7b
    jne short @..add_party_member.l24 ; 0x0b80
    mov ax, 0x4b                     ; 0x0b82
@..add_party_member.l24:
    mov word [bp - 0x0004], ax       ; 0x0b85
    mov word [bp - 0x0008], 1        ; 0x0b88
    mov ax, word [bp + 0x6]          ; 0x0b8d
    cmp ax, word [bp - 0x0006]       ; 0x0b90
    jl short @..add_party_member.l25 ; 0x0b93
    jmp near @..add_party_member.l31 ; 0x0b95
@..add_party_member.l25:
    mov ax, 0x64                     ; 0x0b98
    push ax                          ; 0x0b9b
    call random_below                ; 0x0b9c
    pop cx                           ; 0x0b9f
    cmp ax, strict word 0x19         ; 0x0ba0
    jle short @..add_party_member.l27 ; 0x0ba3
    push word [bp + 0x4]             ; 0x0ba5
    push word [bp - 0x0008]          ; 0x0ba8
    call pick_target_slot            ; 0x0bab
    add sp, byte 4                   ; 0x0bae
    mov word [bp + 0x4], ax          ; 0x0bb1
    push word [bp - 0x0004]          ; 0x0bb4
    call random_below                ; 0x0bb7
    pop cx                           ; 0x0bba
    push ax                          ; 0x0bbb
    mov ax, word [bp + 0x6]          ; 0x0bbc
    shl ax, 1                        ; 0x0bbf
    mov bx, ax                       ; 0x0bc1
    mov bx, word [bx + party_char_ext] ; 0x0bc3
    mov al, byte [bx + member_ext.f_00ac] ; 0x0bc7
    sub ah, ah                       ; 0x0bcb
    mov cx, ax                       ; 0x0bcd
    pop ax                           ; 0x0bcf
    cmp ax, cx                       ; 0x0bd0
    jle short @..add_party_member.l26 ; 0x0bd2
    mov word [bp + 0x4], 0xffff      ; 0x0bd4
@..add_party_member.l26:
    jmp short @..add_party_member.l28 ; 0x0bd9
@..add_party_member.l27:
    mov word [bp + 0x4], 0xffff      ; 0x0bdb
@..add_party_member.l28:
    mov word [bp - 0x0002], 0        ; 0x0be0
@..add_party_member.l29:
    cmp word [bp + 0x4], byte 0xff   ; 0x0be5
    jne short @..add_party_member.l30 ; 0x0be9
    mov ax, word [bp - 0x0008]       ; 0x0beb
    shl ax, 1                        ; 0x0bee
    mov bx, ax                       ; 0x0bf0
    mov bx, word [bx + party_char_ext] ; 0x0bf2
    mov si, word [bp - 0x0002]       ; 0x0bf6
    cmp byte [bx + si + member_ext.f_00ac], 0 ; 0x0bf9
    jbe short @..add_party_member.l30 ; 0x0bfe
    mov ax, word [bp + 0x6]          ; 0x0c00
    shl ax, 1                        ; 0x0c03
    mov bx, ax                       ; 0x0c05
    mov bx, word [bx + party_char_ext] ; 0x0c07
    cmp byte [bx + si + 0xac], 0     ; 0x0c0b
    jbe short @..add_party_member.l30 ; 0x0c10
    push word [bp - 0x0004]          ; 0x0c12
    call random_below                ; 0x0c15
    pop cx                           ; 0x0c18
    push ax                          ; 0x0c19
    mov ax, word [bp + 0x6]          ; 0x0c1a
    shl ax, 1                        ; 0x0c1d
    mov bx, ax                       ; 0x0c1f
    mov bx, word [bx + party_char_ext] ; 0x0c21
    mov si, word [bp - 0x0002]       ; 0x0c25
    mov al, byte [bx + si + member_ext.f_00ac] ; 0x0c28
    sub ah, ah                       ; 0x0c2c
    mov cx, ax                       ; 0x0c2e
    pop ax                           ; 0x0c30
    cmp ax, cx                       ; 0x0c31
    jge short @..add_party_member.l30 ; 0x0c33
    mov ax, word [bp - 0x0008]       ; 0x0c35
    shl ax, 1                        ; 0x0c38
    mov bx, ax                       ; 0x0c3a
    mov bx, word [bx + party_char_ext] ; 0x0c3c
    mov al, byte [bx + si + 0xaa]    ; 0x0c40
    sub ah, ah                       ; 0x0c44
    mov word [bp + 0x4], ax          ; 0x0c46
@..add_party_member.l30:
    inc word [bp - 0x0002]           ; 0x0c49
    cmp word [bp - 0x0002], byte 2   ; 0x0c4c
    jl short @..add_party_member.l29 ; 0x0c50
    cmp word [bp + 0x4], byte 0xff   ; 0x0c52
    je short @..add_party_member.l31 ; 0x0c56
    mov ax, word [bp + 0x6]          ; 0x0c58
    inc ax                           ; 0x0c5b
    push ax                          ; 0x0c5c
    push word [bp + 0x4]             ; 0x0c5d
    call add_party_member            ; 0x0c60
    add sp, byte 4                   ; 0x0c63
@..add_party_member.l31:
    ret                              ; 0x0c66
