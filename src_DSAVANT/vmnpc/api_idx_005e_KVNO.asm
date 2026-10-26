; auto-generated
api_idx_005e_KVNO:
    mov ax, 0xffa2                   ; 0x57e1
    call aztec_csav                  ; 0x57e4
    mov ax, word [bp + 0x6]          ; 0x57e7
    shl ax, 1                        ; 0x57ea
    mov bx, ax                       ; 0x57ec
    mov ax, word [bx + bss_9caa]     ; 0x57ee
    mov cx, 0x100                    ; 0x57f2
    cwd                              ; 0x57f5
    idiv cx                          ; 0x57f6
    mov word [bp - 0x000a], ax       ; 0x57f8
    mov word [bp - 0x000c], dx       ; 0x57fb
    mov ax, 0x248                    ; 0x57fe
    imul word [bp + 0x4]             ; 0x5801
    push ax                          ; 0x5804
    mov ax, 0x78                     ; 0x5805
    imul word [bp - 0x000a]          ; 0x5808
    mov cx, ax                       ; 0x580b
    pop ax                           ; 0x580d
    add ax, cx                       ; 0x580e
    push ax                          ; 0x5810
    mov ax, 0xc                      ; 0x5811
    imul word [bp - 0x000c]          ; 0x5814
    mov cx, ax                       ; 0x5817
    pop ax                           ; 0x5819
    add ax, cx                       ; 0x581a
    mov bx, ax                       ; 0x581c
    mov ax, word [bx + party_records + pc_rec.cell] ; 0x581e
    mov word [bp - 0x0008], ax       ; 0x5822
    mov ax, 0                        ; 0x5825
    push ax                          ; 0x5828
    push word [bp - 0x0008]          ; 0x5829
    lea ax, word [bp - 0x0054]       ; 0x582c
    push ax                          ; 0x582f
    mov ax, 1                        ; 0x5830
    push ax                          ; 0x5833
    call data_record_io              ; 0x5834
    add sp, byte 8                   ; 0x5837
    mov al, byte [bp - 0x0038]       ; 0x583a
    sub ah, ah                       ; 0x583d
    push ax                          ; 0x583f
    mov al, byte [bp - 0x0037]       ; 0x5840
    sub ah, ah                       ; 0x5843
    mov cx, ax                       ; 0x5845
    pop ax                           ; 0x5847
    imul cx                          ; 0x5848
    add ax, word [bp - 0x003a]       ; 0x584a
    mov word [bp - 0x0004], ax       ; 0x584d
    cmp ax, strict word 1            ; 0x5850
    jge short @..api_idx_005e_KVNO.l1 ; 0x5853
    mov word [bp - 0x0004], 1        ; 0x5855
@..api_idx_005e_KVNO.l1:
    mov ax, 0x248                    ; 0x585a
    imul word [bp + 0x4]             ; 0x585d
    push ax                          ; 0x5860
    mov ax, 0x78                     ; 0x5861
    imul word [bp - 0x000a]          ; 0x5864
    mov cx, ax                       ; 0x5867
    pop ax                           ; 0x5869
    add ax, cx                       ; 0x586a
    push ax                          ; 0x586c
    mov ax, 0xc                      ; 0x586d
    imul word [bp - 0x000c]          ; 0x5870
    mov cx, ax                       ; 0x5873
    pop ax                           ; 0x5875
    add ax, cx                       ; 0x5876
    mov bx, ax                       ; 0x5878
    mov al, byte [bx + party_records + pc_rec.cell + 0x6] ; 0x587a
    sub ah, ah                       ; 0x587e
    mov word [bp - 0x0006], ax       ; 0x5880
    cmp ax, strict word 1            ; 0x5883
    jge short @..api_idx_005e_KVNO.l2 ; 0x5886
    mov word [bp - 0x0006], 1        ; 0x5888
@..api_idx_005e_KVNO.l2:
    mov al, byte [bp - 0x001c]       ; 0x588d
    sub ah, ah                       ; 0x5890
    mov bx, ax                       ; 0x5892
    cmp byte [bx + cell_overlay_code + 0x58], 1 ; 0x5894
    jne short @..api_idx_005e_KVNO.l3 ; 0x5899
    mov ax, word [bp - 0x0006]       ; 0x589b
    cwd                              ; 0x589e
    push ax                          ; 0x589f
    push dx                          ; 0x58a0
    mul word [bp - 0x003c]           ; 0x58a1
    mov cx, ax                       ; 0x58a4
    pop ax                           ; 0x58a6
    mul word [bp - 0x003e]           ; 0x58a7
    add cx, ax                       ; 0x58aa
    pop ax                           ; 0x58ac
    mul word [bp - 0x003e]           ; 0x58ad
    add dx, cx                       ; 0x58b0
    mov word [bp - 0x003c], dx       ; 0x58b2
    mov word [bp - 0x003e], ax       ; 0x58b5
    jmp short @..api_idx_005e_KVNO.l4 ; 0x58b8
@..api_idx_005e_KVNO.l3:
    mov ax, word [bp - 0x003e]       ; 0x58ba
    mov dx, word [bp - 0x003c]       ; 0x58bd
    push ax                          ; 0x58c0
    xchg dx, ax                      ; 0x58c1
    mov bx, 0x64                     ; 0x58c2
    mul bx                           ; 0x58c5
    mov cx, ax                       ; 0x58c7
    pop ax                           ; 0x58c9
    mul bx                           ; 0x58ca
    add dx, cx                       ; 0x58cc
    push ax                          ; 0x58ce
    push dx                          ; 0x58cf
    mov ax, word [bp - 0x0004]       ; 0x58d0
    cwd                              ; 0x58d3
    mov cx, ax                       ; 0x58d4
    mov bx, dx                       ; 0x58d6
    pop dx                           ; 0x58d8
    pop ax                           ; 0x58d9
    call aztec_ldv                   ; 0x58da
    push ax                          ; 0x58dd
    push dx                          ; 0x58de
    mov ax, word [bp - 0x0006]       ; 0x58df
    cwd                              ; 0x58e2
    mov cx, ax                       ; 0x58e3
    mov bx, dx                       ; 0x58e5
    pop dx                           ; 0x58e7
    pop ax                           ; 0x58e8
    push ax                          ; 0x58e9
    push dx                          ; 0x58ea
    mul bx                           ; 0x58eb
    mov bx, ax                       ; 0x58ed
    pop ax                           ; 0x58ef
    mul cx                           ; 0x58f0
    add bx, ax                       ; 0x58f2
    pop ax                           ; 0x58f4
    mul cx                           ; 0x58f5
    add dx, bx                       ; 0x58f7
    mov cx, 0x64                     ; 0x58f9
    mov bx, 0                        ; 0x58fc
    call aztec_ldv                   ; 0x58ff
    mov word [bp - 0x003c], dx       ; 0x5902
    mov word [bp - 0x003e], ax       ; 0x5905
@..api_idx_005e_KVNO.l4:
    push word [bp - 0x0008]          ; 0x5908
    call loc_GMVH                    ; 0x590b
    pop cx                           ; 0x590e
    test ax, ax                      ; 0x590f
    je short @..api_idx_005e_KVNO.l5 ; 0x5911
    mov ax, word [bp - 0x003e]       ; 0x5913
    mov dx, word [bp - 0x003c]       ; 0x5916
    jmp short @..api_idx_005e_KVNO.l6 ; 0x5919
@..api_idx_005e_KVNO.l5:
    mov ax, word [bss_91ac]          ; 0x591b
    cwd                              ; 0x591e
    push ax                          ; 0x591f
    push dx                          ; 0x5920
    mul word [bp - 0x003c]           ; 0x5921
    mov cx, ax                       ; 0x5924
    pop ax                           ; 0x5926
    mul word [bp - 0x003e]           ; 0x5927
    add cx, ax                       ; 0x592a
    pop ax                           ; 0x592c
    mul word [bp - 0x003e]           ; 0x592d
    add dx, cx                       ; 0x5930
    mov cx, 0x64                     ; 0x5932
    mov bx, 0                        ; 0x5935
    call aztec_ldv                   ; 0x5938
@..api_idx_005e_KVNO.l6:
    mov word [bp - 0x003c], dx       ; 0x593b
    mov word [bp - 0x003e], ax       ; 0x593e
    push word [bp - 0x0008]          ; 0x5941
    call loc_GMVH                    ; 0x5944
    pop cx                           ; 0x5947
    test ax, ax                      ; 0x5948
    je short @..api_idx_005e_KVNO.l7 ; 0x594a
    cmp byte [bss_91c6], 0xff        ; 0x594c
    je short @..api_idx_005e_KVNO.l8 ; 0x5951
@..api_idx_005e_KVNO.l7:
    push word [bp - 0x0008]          ; 0x5953
    call loc_GMVH                    ; 0x5956
    pop cx                           ; 0x5959
    test ax, ax                      ; 0x595a
    jne short @..api_idx_005e_KVNO.l9 ; 0x595c
    mov al, byte [bp - 0x001d]       ; 0x595e
    sub ah, ah                       ; 0x5961
    test ax, 2                       ; 0x5963
    je short @..api_idx_005e_KVNO.l9 ; 0x5966
    mov ax, word [bp - 0x0008]       ; 0x5968
    cmp ax, word [bss_91ae]          ; 0x596b
    je short @..api_idx_005e_KVNO.l9 ; 0x596f
@..api_idx_005e_KVNO.l8:
    mov ax, 0x98                     ; 0x5971
    push ax                          ; 0x5974
    mov ax, 0x65                     ; 0x5975
    push ax                          ; 0x5978
    mov ax, MSG_YOU_NEED_IT          ; 0x5979
    push ax                          ; 0x597c
    call api_idx_0054_LVHV           ; 0x597d
    add sp, byte 6                   ; 0x5980
    mov ax, 0                        ; 0x5983
    ret                              ; 0x5986
@..api_idx_005e_KVNO.l9:
    cmp word [bp - 0x003c], byte 0   ; 0x5987
    jg short @..api_idx_005e_KVNO.l10 ; 0x598b
    jne short @..api_idx_005e_KVNO.l11 ; 0x598d
    cmp word [bp - 0x003e], byte 0   ; 0x598f
    jbe short @..api_idx_005e_KVNO.l11 ; 0x5993
@..api_idx_005e_KVNO.l10:
    jmp short @..api_idx_005e_KVNO.l12 ; 0x5995
@..api_idx_005e_KVNO.l11:
    mov ax, word [bp - 0x0008]       ; 0x5997
    cmp ax, word [bss_91ae]          ; 0x599a
    jne short @..api_idx_005e_KVNO.l13 ; 0x599e
@..api_idx_005e_KVNO.l12:
    cmp word [bp - 0x0008], strict word 0x19a ; 0x59a0
    jne short @..api_idx_005e_KVNO.l14 ; 0x59a5
@..api_idx_005e_KVNO.l13:
    mov ax, 0x98                     ; 0x59a7
    push ax                          ; 0x59aa
    mov ax, 0x65                     ; 0x59ab
    push ax                          ; 0x59ae
    mov ax, MSG_NO_THANKS            ; 0x59af
    push ax                          ; 0x59b2
    call api_idx_0054_LVHV           ; 0x59b3
    add sp, byte 6                   ; 0x59b6
    mov ax, 0                        ; 0x59b9
    ret                              ; 0x59bc
@..api_idx_005e_KVNO.l14:
    mov ax, 0x248                    ; 0x59bd
    imul word [bp + 0x4]             ; 0x59c0
    push ax                          ; 0x59c3
    mov ax, 0x78                     ; 0x59c4
    imul word [bp - 0x000a]          ; 0x59c7
    mov cx, ax                       ; 0x59ca
    pop ax                           ; 0x59cc
    add ax, cx                       ; 0x59cd
    push ax                          ; 0x59cf
    mov ax, 0xc                      ; 0x59d0
    imul word [bp - 0x000c]          ; 0x59d3
    mov cx, ax                       ; 0x59d6
    pop ax                           ; 0x59d8
    add ax, cx                       ; 0x59d9
    mov bx, ax                       ; 0x59db
    mov al, byte [bx + party_records + pc_rec.cell + 0x7] ; 0x59dd
    sub ah, ah                       ; 0x59e1
    test ax, 1                       ; 0x59e3
    je short @..api_idx_005e_KVNO.l15 ; 0x59e6
    mov ax, 0x98                     ; 0x59e8
    push ax                          ; 0x59eb
    mov ax, 0x65                     ; 0x59ec
    push ax                          ; 0x59ef
    mov ax, MSG_EQUIPPED             ; 0x59f0
    push ax                          ; 0x59f3
    call api_idx_0054_LVHV           ; 0x59f4
    add sp, byte 6                   ; 0x59f7
    mov ax, 0                        ; 0x59fa
    ret                              ; 0x59fd
@..api_idx_005e_KVNO.l15:
    mov ax, bss_95a8                 ; 0x59fe
    push ax                          ; 0x5a01
    mov ax, MSG_ACCEPT_GP_FOR        ; 0x5a02
    push ax                          ; 0x5a05
    call load_message_string         ; 0x5a06
    add sp, byte 4                   ; 0x5a09
    mov ax, bss_95fa                 ; 0x5a0c
    push ax                          ; 0x5a0f
    push word [bp - 0x003c]          ; 0x5a10
    push word [bp - 0x003e]          ; 0x5a13
    call format_long_decimal         ; 0x5a16
    add sp, byte 6                   ; 0x5a19
    mov ax, 0x24                     ; 0x5a1c
    push ax                          ; 0x5a1f
    mov ax, 0x95fa                   ; 0x5a20
    push ax                          ; 0x5a23
    mov ax, bss_95a8                 ; 0x5a24
    push ax                          ; 0x5a27
    call str_subst_char              ; 0x5a28
    add sp, byte 6                   ; 0x5a2b
    mov ax, bss_95fa                 ; 0x5a2e
    push ax                          ; 0x5a31
    mov ax, MSG_YOUR                 ; 0x5a32
    push ax                          ; 0x5a35
    call load_message_string         ; 0x5a36
    add sp, byte 4                   ; 0x5a39
    mov ax, 0x16                     ; 0x5a3c
    imul word [bp + 0x6]             ; 0x5a3f
    add ax, list_row_name            ; 0x5a42
    push ax                          ; 0x5a45
    mov ax, bss_9d10                 ; 0x5a46
    push ax                          ; 0x5a49
    call aztec_strcpy                ; 0x5a4a
    add sp, byte 4                   ; 0x5a4d
    mov ax, bss_9d10                 ; 0x5a50
    push ax                          ; 0x5a53
    call replace_slashes_with_spaces ; 0x5a54
    pop cx                           ; 0x5a57
    mov ax, 0x24                     ; 0x5a58
    push ax                          ; 0x5a5b
    mov ax, 0x9d10                   ; 0x5a5c
    push ax                          ; 0x5a5f
    mov ax, bss_95fa                 ; 0x5a60
    push ax                          ; 0x5a63
    call str_subst_char              ; 0x5a64
    add sp, byte 6                   ; 0x5a67
    mov word [bp - 0x0002], 0        ; 0x5a6a
@..api_idx_005e_KVNO.l16:
    mov ax, word [bp - 0x0002]       ; 0x5a6f
    shl ax, 1                        ; 0x5a72
    mov bx, ax                       ; 0x5a74
    add bx, bp                       ; 0x5a76
    mov word [bx - 0x005e], 1        ; 0x5a78
    inc word [bp - 0x0002]           ; 0x5a7d
    mov ax, word [bp - 0x0002]       ; 0x5a80
    cmp ax, strict word 1            ; 0x5a83
    jle short @..api_idx_005e_KVNO.l16 ; 0x5a86
    mov word [bp - 0x005a], 0xffff   ; 0x5a88
    lea ax, word [bp - 0x005e]       ; 0x5a8d
    push ax                          ; 0x5a90
    mov ax, 1                        ; 0x5a91
    push ax                          ; 0x5a94
    mov ax, 0xffff                   ; 0x5a95
    push ax                          ; 0x5a98
    mov ax, 1                        ; 0x5a99
    push ax                          ; 0x5a9c
    mov ax, 2                        ; 0x5a9d
    push ax                          ; 0x5aa0
    mov ax, 1                        ; 0x5aa1
    push ax                          ; 0x5aa4
    mov ax, 0xc                      ; 0x5aa5
    push ax                          ; 0x5aa8
    mov ax, 0x6a                     ; 0x5aa9
    push ax                          ; 0x5aac
    mov ax, 0xb                      ; 0x5aad
    push ax                          ; 0x5ab0
    mov ax, 0xb5                     ; 0x5ab1
    push ax                          ; 0x5ab4
    mov ax, 0x4a                     ; 0x5ab5
    push ax                          ; 0x5ab8
    mov ax, 0x635                    ; 0x5ab9
    push ax                          ; 0x5abc
    mov ax, bss_95fa                 ; 0x5abd
    push ax                          ; 0x5ac0
    mov ax, bss_95a8                 ; 0x5ac1
    push ax                          ; 0x5ac4
    call loc_MOVJ                    ; 0x5ac5
    add sp, byte 0x1c                ; 0x5ac8
    mov word [bp - 0x0002], ax       ; 0x5acb
    cmp word [bp - 0x0002], byte 0   ; 0x5ace
    je short @..api_idx_005e_KVNO.l17 ; 0x5ad2
    jmp near @..api_idx_005e_KVNO.l19 ; 0x5ad4
@..api_idx_005e_KVNO.l17:
    mov ax, 0x248                    ; 0x5ad7
    imul word [bp + 0x4]             ; 0x5ada
    push ax                          ; 0x5add
    mov ax, 0x78                     ; 0x5ade
    imul word [bp - 0x000a]          ; 0x5ae1
    mov cx, ax                       ; 0x5ae4
    pop ax                           ; 0x5ae6
    add ax, cx                       ; 0x5ae7
    push ax                          ; 0x5ae9
    mov ax, 0xc                      ; 0x5aea
    imul word [bp - 0x000c]          ; 0x5aed
    mov cx, ax                       ; 0x5af0
    pop ax                           ; 0x5af2
    add ax, cx                       ; 0x5af3
    mov bx, ax                       ; 0x5af5
    mov ax, word [bx + party_records + pc_rec.cell] ; 0x5af7
    mov word [bp - 0x0008], ax       ; 0x5afb
    push ax                          ; 0x5afe
    call loc_GMVH                    ; 0x5aff
    pop cx                           ; 0x5b02
    test ax, ax                      ; 0x5b03
    je short @..api_idx_005e_KVNO.l18 ; 0x5b05
    mov ax, word [bp - 0x0008]       ; 0x5b07
    add ax, 0xfe70                   ; 0x5b0a
    push ax                          ; 0x5b0d
    mov ax, 0x15                     ; 0x5b0e
    push ax                          ; 0x5b11
    mov al, byte [bss_91c6]          ; 0x5b12
    cbw                              ; 0x5b15
    push ax                          ; 0x5b16
    call assign_slot_bit             ; 0x5b17
    add sp, byte 6                   ; 0x5b1a
@..api_idx_005e_KVNO.l18:
    push word [bp - 0x000c]          ; 0x5b1d
    push word [bp - 0x000a]          ; 0x5b20
    push word [bp + 0x4]             ; 0x5b23
    call clear_cell_key              ; 0x5b26
    add sp, byte 6                   ; 0x5b29
    push word [bp + 0x6]             ; 0x5b2c
    call api_idx_0002_MIIL           ; 0x5b2f
    pop cx                           ; 0x5b32
    mov ax, word [bp - 0x003e]       ; 0x5b33
    mov dx, word [bp - 0x003c]       ; 0x5b36
    push ax                          ; 0x5b39
    push dx                          ; 0x5b3a
    mov ax, 0x248                    ; 0x5b3b
    imul word [bp + 0x4]             ; 0x5b3e
    mov bx, ax                       ; 0x5b41
    pop dx                           ; 0x5b43
    pop ax                           ; 0x5b44
    add word [bx + party_records + pc_rec.f_0014], ax ; 0x5b45
    adc word [bx + party_records + pc_rec.f_0016], dx ; 0x5b49
    mov ax, 1                        ; 0x5b4d
    push ax                          ; 0x5b50
    push word [bp + 0x4]             ; 0x5b51
    call draw_party_member_panel     ; 0x5b54
    add sp, byte 4                   ; 0x5b57
    mov ax, 0                        ; 0x5b5a
    push ax                          ; 0x5b5d
    push ax                          ; 0x5b5e
    push word [bp - 0x0008]          ; 0x5b5f
    mov ax, 3                        ; 0x5b62
    push ax                          ; 0x5b65
    push word [bp + 0x4]             ; 0x5b66
    call api_idx_0006_SRQN           ; 0x5b69
    add sp, byte 0x0a                ; 0x5b6c
    ret                              ; 0x5b6f
@..api_idx_005e_KVNO.l19:
    mov ax, 0                        ; 0x5b70
    ret                              ; 0x5b73
