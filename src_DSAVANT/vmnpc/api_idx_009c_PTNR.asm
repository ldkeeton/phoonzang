; auto-generated
api_idx_009c_PTNR:
    mov ax, 0xff64                   ; 0x677a
    call aztec_csav                  ; 0x677d
    mov word [bss_95a6], 0           ; 0x6780
    mov word [bss_9d60], 0           ; 0x6786
    mov word [bss_9d64], 0           ; 0x678c
    lea ax, word [bp - 0x42]         ; 0x6792
    push ax                          ; 0x6795
    mov ax, MSG_THE_PARTY            ; 0x6796
    push ax                          ; 0x6799
    call load_message_string         ; 0x679a
    add sp, byte 4                   ; 0x679d
    lea ax, word [bp - 0x4c]         ; 0x67a0
    push ax                          ; 0x67a3
    mov ax, MSG_VS_1511              ; 0x67a4
    push ax                          ; 0x67a7
    call load_message_string         ; 0x67a8
    add sp, byte 4                   ; 0x67ab
    cmp word [bss_91a2], byte 0      ; 0x67ae
    jle short .forward1              ; 0x67b3
    call loc_USTG                    ; 0x67b5
    mov ax, 1                        ; 0x67b8
    push ax                          ; 0x67bb
    push word [bss_91a2]             ; 0x67bc
    call api_idx_0100_KHVV           ; 0x67c0
    add sp, byte 4                   ; 0x67c3
    call loc_SOOS                    ; 0x67c6
.forward1:
    mov word [bp - 0xc], 0           ; 0x67c9
.back1:
    cmp word [bss_93da], byte 0      ; 0x67ce
    jle short .forward2              ; 0x67d3
    cmp byte [bss_91c3], 0           ; 0x67d5
    jbe short .forward2              ; 0x67da
    mov ax, 3                        ; 0x67dc
    push ax                          ; 0x67df
    call random_below                ; 0x67e0
    pop cx                           ; 0x67e3
    test ax, ax                      ; 0x67e4
    jne short .forward2              ; 0x67e6
    push word [bss_93da]             ; 0x67e8
    call play_sound_effect           ; 0x67ec
    pop cx                           ; 0x67ef
.forward2:
    mov word [bp - 2], 0             ; 0x67f0
.back2:
    mov bx, word [bp - 2]            ; 0x67f5
    cmp byte [bx + bss_91ba], 0      ; 0x67f8
    jbe short .forward3              ; 0x67fd
    mov al, byte [bx + bss_91ba]     ; 0x67ff
    sub ah, ah                       ; 0x6803
    push ax                          ; 0x6805
    push word [bp - 0xc]             ; 0x6806
    call api_idx_0040_INKU           ; 0x6809
    add sp, byte 4                   ; 0x680c
    cmp ax, strict word 1            ; 0x680f
    jne short .forward3              ; 0x6812
    cmp word [bss_95a6], byte 1      ; 0x6814
    jne short .return1               ; 0x6819
    mov word [bss_93dc], 1           ; 0x681b
    mov ax, 0                        ; 0x6821
    push ax                          ; 0x6824
    mov ax, 1                        ; 0x6825
    push ax                          ; 0x6828
    call api_idx_005e_SHOL           ; 0x6829
    add sp, byte 4                   ; 0x682c
    mov word [cell_slot_ref], 0      ; 0x682f
    call run_party_screen_animation  ; 0x6835
.return1:
    ret                              ; 0x6838
.forward3:
    inc word [bp - 2]                ; 0x6839
    mov ax, word [bp - 2]            ; 0x683c
    cmp ax, strict word 8            ; 0x683f
    jl short .back2                  ; 0x6842
    mov word [bp - 6], 0             ; 0x6844
.back3:
    mov ax, word [bp - 6]            ; 0x6849
    shl ax, 1                        ; 0x684c
    mov bx, ax                       ; 0x684e
    add bx, bp                       ; 0x6850
    mov word [bx - 0x2e], 0          ; 0x6852
    inc word [bp - 6]                ; 0x6857
    mov ax, word [bp - 6]            ; 0x685a
    cmp ax, strict word 9            ; 0x685d
    jle short .back3                 ; 0x6860
    mov word [bp - 0x20], 1          ; 0x6862
    mov al, byte [bss_91c7]          ; 0x6867
    sub ah, ah                       ; 0x686a
    mov bx, ax                       ; 0x686c
    mov al, byte [bx + target_weight] ; 0x686e
    cbw                              ; 0x6872
    mov word [bp - 0xa], ax          ; 0x6873
    cmp byte [bss_91c6], 0xff        ; 0x6876
    jne short .forward4              ; 0x687b
    add word [bp - 0xa], byte 0x23   ; 0x687d
.forward4:
    cmp word [bp - 0xa], byte -25    ; 0x6881
    jge short .forward5              ; 0x6885
    mov word [bp - 0x28], 1          ; 0x6887
    mov word [bp - 0x1c], 1          ; 0x688c
    jmp near .forward12              ; 0x6891
.forward5:
    cmp word [bp - 0xa], byte 0x19   ; 0x6894
    jge short .forward6              ; 0x6898
    mov word [bp - 0x28], 1          ; 0x689a
    mov word [bp - 0x26], 1          ; 0x689f
    mov word [bp - 0x24], 1          ; 0x68a4
    mov word [bp - 0x22], 1          ; 0x68a9
    mov word [bp - 0x1e], 1          ; 0x68ae
    jmp short .forward12             ; 0x68b3
.forward6:
    cmp word [bss_9136], byte 0x3c   ; 0x68b5
    jl short .forward7               ; 0x68ba
    cmp word [bss_9136], byte 0x3e   ; 0x68bc
    jg short .forward7               ; 0x68c1
    mov word [bp - 0x20], 0          ; 0x68c3
    jmp short .forward11             ; 0x68c8
.forward7:
    mov ax, word [bss_9136]          ; 0x68ca
    cmp ax, strict word 0x2d         ; 0x68cd
    je short .forward8               ; 0x68d0
    cmp ax, strict word 0x4d         ; 0x68d2
    je short .forward8               ; 0x68d5
    cmp ax, strict word 0x51         ; 0x68d7
    je short .forward8               ; 0x68da
    cmp ax, strict word 0x53         ; 0x68dc
    jne short .forward9              ; 0x68df
.forward8:
    mov word [bp - 0x20], 0          ; 0x68e1
    jmp short .forward10             ; 0x68e6
.forward9:
    mov word [bp - 0x2c], 1          ; 0x68e8
    mov word [bp - 0x2a], 1          ; 0x68ed
    mov word [bp - 0x26], 1          ; 0x68f2
.forward10:
    mov word [bp - 0x2e], 1          ; 0x68f7
    mov word [bp - 0x24], 1          ; 0x68fc
.forward11:
    mov word [bp - 0x22], 1          ; 0x6901
    mov word [bp - 0x1e], 1          ; 0x6906
.forward12:
    mov word [bp - 0x1a], 0xffff     ; 0x690b
    mov word [bp - 0xc], 0xffff      ; 0x6910
    mov ax, 3                        ; 0x6915
    push ax                          ; 0x6918
    call redraw_area_set             ; 0x6919
    pop cx                           ; 0x691c
    call api_idx_0054_UKJH           ; 0x691d
    mov ax, 1                        ; 0x6920
    push ax                          ; 0x6923
    mov ax, 0x93                     ; 0x6924
    push ax                          ; 0x6927
    mov ax, 0xa0                     ; 0x6928
    push ax                          ; 0x692b
    lea ax, word [bp - 0x42]         ; 0x692c
    push ax                          ; 0x692f
    call loc_VNIO                    ; 0x6930
    add sp, byte 8                   ; 0x6933
    mov ax, 0x16                     ; 0x6936
    push ax                          ; 0x6939
    mov ax, 0x9a                     ; 0x693a
    push ax                          ; 0x693d
    mov ax, 0xa0                     ; 0x693e
    push ax                          ; 0x6941
    lea ax, word [bp - 0x4c]         ; 0x6942
    push ax                          ; 0x6945
    call loc_VNIO                    ; 0x6946
    add sp, byte 8                   ; 0x6949
    lea ax, word [bp - 0x2e]         ; 0x694c
    push ax                          ; 0x694f
    mov ax, 1                        ; 0x6950
    push ax                          ; 0x6953
    mov ax, 0                        ; 0x6954
    push ax                          ; 0x6957
    mov ax, 2                        ; 0x6958
    push ax                          ; 0x695b
    mov ax, 0xa                      ; 0x695c
    push ax                          ; 0x695f
    mov ax, 0x2a                     ; 0x6960
    push ax                          ; 0x6963
    mov ax, 6                        ; 0x6964
    push ax                          ; 0x6967
    mov ax, 0xa6                     ; 0x6968
    push ax                          ; 0x696b
    mov ax, 0xe7                     ; 0x696c
    push ax                          ; 0x696f
    mov ax, 9                        ; 0x6970
    push ax                          ; 0x6973
    mov ax, 3                        ; 0x6974
    push ax                          ; 0x6977
    mov ax, 0x5fa                    ; 0x6978
    push ax                          ; 0x697b
    call loc_RSHV                    ; 0x697c
    add sp, byte 0x18                ; 0x697f
    mov word [bp - 6], ax            ; 0x6982
    lea ax, word [bp - 0x9c]         ; 0x6985
    push ax                          ; 0x6989
    mov ax, word [bp - 6]            ; 0x698a
    add ax, MSG_TALK                 ; 0x698d
    push ax                          ; 0x6990
    call load_message_string         ; 0x6991
    add sp, byte 4                   ; 0x6994
    mov ax, 0x1a                     ; 0x6997
    push ax                          ; 0x699a
    mov ax, 2                        ; 0x699b
    push ax                          ; 0x699e
    mov ax, 0xa                      ; 0x699f
    push ax                          ; 0x69a2
    mov ax, 0x2a                     ; 0x69a3
    push ax                          ; 0x69a6
    mov ax, 6                        ; 0x69a7
    push ax                          ; 0x69aa
    mov ax, 0xa6                     ; 0x69ab
    push ax                          ; 0x69ae
    mov ax, 0xe7                     ; 0x69af
    push ax                          ; 0x69b2
    mov ax, 9                        ; 0x69b3
    push ax                          ; 0x69b6
    push word [bss_9052]             ; 0x69b7
    lea ax, word [bp - 0x9c]         ; 0x69bb
    push ax                          ; 0x69bf
    call api_idx_000c_KGOL           ; 0x69c0
    add sp, byte 0x14                ; 0x69c3
    mov ax, word [bp - 6]            ; 0x69c6
    jmp near .forward32              ; 0x69c9
jumptable_6c16_case_0:
    call pick_party_member           ; 0x69cc
    mov word [bp - 0xc], ax          ; 0x69cf
    cmp ax, strict word 0            ; 0x69d2
    jge short api_idx_009c_PTNR.forward13 ; 0x69d5
    jmp near api_idx_009c_PTNR.forward18 ; 0x69d7
api_idx_009c_PTNR.forward13:
    push ax                          ; 0x69da
    call member_is_active            ; 0x69db
    pop cx                           ; 0x69de
    test ax, ax                      ; 0x69df
    jne short api_idx_009c_PTNR.forward14 ; 0x69e1
    jmp near api_idx_009c_PTNR.forward18 ; 0x69e3
api_idx_009c_PTNR.forward14:
    mov ax, 0x248                    ; 0x69e6
    imul word [bp - 0xc]             ; 0x69e9
    add ax, word [bss_9136]          ; 0x69ec
    mov bx, ax                       ; 0x69f0
    mov al, byte [bx + party_records + pc_rec.pad_01be] ; 0x69f2
    cbw                              ; 0x69f6
    push ax                          ; 0x69f7
    mov ax, 0x248                    ; 0x69f8
    imul word [bp - 0xc]             ; 0x69fb
    mov bx, ax                       ; 0x69fe
    mov al, byte [bx + party_records + pc_rec.stat + 0x6] ; 0x6a00
    sub ah, ah                       ; 0x6a04
    mov cx, ax                       ; 0x6a06
    pop ax                           ; 0x6a08
    add ax, cx                       ; 0x6a09
    add ax, word [bss_964e]          ; 0x6a0b
    jle short api_idx_009c_PTNR.forward17 ; 0x6a0f
    cmp word [bp - 6], byte 0        ; 0x6a11
    jne short api_idx_009c_PTNR.forward15 ; 0x6a15
    push word [bp - 0xc]             ; 0x6a17
    call api_idx_006a_QKPT           ; 0x6a1a
    pop cx                           ; 0x6a1d
    jmp short api_idx_009c_PTNR.forward16 ; 0x6a1e
api_idx_009c_PTNR.forward15:
    cmp word [bp - 6], byte 2        ; 0x6a20
    jne short api_idx_009c_PTNR.forward16 ; 0x6a24
    push word [bp - 0xc]             ; 0x6a26
    call api_idx_0072_KTMQ           ; 0x6a29
    pop cx                           ; 0x6a2c
api_idx_009c_PTNR.forward16:
    jmp short api_idx_009c_PTNR.forward18 ; 0x6a2d
api_idx_009c_PTNR.forward17:
    lea ax, word [bp - 0x9c]         ; 0x6a2f
    push ax                          ; 0x6a33
    mov ax, MSG_NOT_WITH_YOU         ; 0x6a34
    push ax                          ; 0x6a37
    call load_message_string         ; 0x6a38
    add sp, byte 4                   ; 0x6a3b
    mov ax, 3                        ; 0x6a3e
    push ax                          ; 0x6a41
    call redraw_area_set             ; 0x6a42
    pop cx                           ; 0x6a45
    mov ax, 1                        ; 0x6a46
    push ax                          ; 0x6a49
    lea ax, word [bp - 0x9c]         ; 0x6a4a
    push ax                          ; 0x6a4e
    call api_idx_0004_THQU           ; 0x6a4f
    add sp, byte 4                   ; 0x6a52
    mov ax, 0                        ; 0x6a55
    push ax                          ; 0x6a58
    push word [message_delay]        ; 0x6a59
    call wait_ticks_abortable        ; 0x6a5d
    add sp, byte 4                   ; 0x6a60
api_idx_009c_PTNR.forward18:
    jmp near api_idx_009c_PTNR.forward33 ; 0x6a63
jumptable_6c16_case_3:
    call pick_party_member           ; 0x6a66
    mov word [bp - 0xc], ax          ; 0x6a69
    cmp ax, strict word 0            ; 0x6a6c
    jl short api_idx_009c_PTNR.forward21 ; 0x6a6f
    push ax                          ; 0x6a71
    call member_is_active            ; 0x6a72
    pop cx                           ; 0x6a75
    test ax, ax                      ; 0x6a76
    je short api_idx_009c_PTNR.forward21 ; 0x6a78
    mov word [bp - 2], 0             ; 0x6a7a
    mov ax, word [bp - 6]            ; 0x6a7f
    jmp short api_idx_009c_PTNR.forward19 ; 0x6a82
api_idx_009c_PTNR.back4:
    push word [bp - 0xc]             ; 0x6a84
    call api_idx_0004_GGOK           ; 0x6a87
    pop cx                           ; 0x6a8a
    jmp short api_idx_009c_PTNR.forward20 ; 0x6a8b
api_idx_009c_PTNR.back5:
    push word [bp - 0xc]             ; 0x6a8d
    call api_idx_0068_OUGS           ; 0x6a90
    pop cx                           ; 0x6a93
    jmp short api_idx_009c_PTNR.forward20 ; 0x6a94
api_idx_009c_PTNR.back6:
    push word [bp - 0xc]             ; 0x6a96
    call api_idx_005e_QNLK           ; 0x6a99
    pop cx                           ; 0x6a9c
    mov word [bp - 2], ax            ; 0x6a9d
    jmp short api_idx_009c_PTNR.forward20 ; 0x6aa0
api_idx_009c_PTNR.back7:
    push word [bp - 0xc]             ; 0x6aa2
    call api_idx_00d2_RUSS           ; 0x6aa5
    pop cx                           ; 0x6aa8
    mov word [bp - 2], ax            ; 0x6aa9
    jmp short api_idx_009c_PTNR.forward20 ; 0x6aac
api_idx_009c_PTNR.forward19:
    cmp ax, strict word 3            ; 0x6aae
    je short api_idx_009c_PTNR.back7 ; 0x6ab1
    cmp ax, strict word 4            ; 0x6ab3
    je short api_idx_009c_PTNR.back6 ; 0x6ab6
    cmp ax, strict word 5            ; 0x6ab8
    je short api_idx_009c_PTNR.back4 ; 0x6abb
    cmp ax, strict word 6            ; 0x6abd
    je short api_idx_009c_PTNR.back5 ; 0x6ac0
api_idx_009c_PTNR.forward20:
    cmp word [bp - 2], byte -1       ; 0x6ac2
    jne short api_idx_009c_PTNR.forward21 ; 0x6ac6
    mov word [bss_95a6], 1           ; 0x6ac8
    mov word [bp - 6], 8             ; 0x6ace
api_idx_009c_PTNR.forward21:
    jmp near api_idx_009c_PTNR.forward33 ; 0x6ad3
jumptable_6c16_case_1:
    mov ax, 0                        ; 0x6ad6
    cmp word [bss_9d66], byte 1      ; 0x6ad9
    jne short api_idx_009c_PTNR.forward22 ; 0x6ade
    mov ax, 0xffff                   ; 0x6ae0
api_idx_009c_PTNR.forward22:
    mov word [bp - 2], ax            ; 0x6ae3
    cmp word [bss_9d66], byte -1     ; 0x6ae6
    jne short api_idx_009c_PTNR.forward26 ; 0x6aeb
    cmp byte [bss_91c6], 0xff        ; 0x6aed
    je short api_idx_009c_PTNR.forward23 ; 0x6af2
    call api_idx_0004_OKNN           ; 0x6af4
    mov word [bp - 2], ax            ; 0x6af7
    jmp short api_idx_009c_PTNR.forward25 ; 0x6afa
api_idx_009c_PTNR.forward23:
    mov word [bp - 8], 0             ; 0x6afc
api_idx_009c_PTNR.back8:
    push word [bp - 8]               ; 0x6b01
    mov ax, bss_8822                 ; 0x6b04
    push ax                          ; 0x6b07
    call test_bit                    ; 0x6b08
    add sp, byte 4                   ; 0x6b0b
    test ax, ax                      ; 0x6b0e
    je short api_idx_009c_PTNR.forward24 ; 0x6b10
    push word [bp - 8]               ; 0x6b12
    call api_idx_0002_OUKN           ; 0x6b15
    pop cx                           ; 0x6b18
    mov word [bp - 2], 1             ; 0x6b19
api_idx_009c_PTNR.forward24:
    inc word [bp - 8]                ; 0x6b1e
    mov ax, word [bp - 8]            ; 0x6b21
    cmp ax, strict word 0xb          ; 0x6b24
    jl short api_idx_009c_PTNR.back8 ; 0x6b27
api_idx_009c_PTNR.forward25:
    mov ax, word [bp - 2]            ; 0x6b29
    mov word [bss_9d66], ax          ; 0x6b2c
api_idx_009c_PTNR.forward26:
    cmp word [bp - 2], byte 0        ; 0x6b2f
    jg short api_idx_009c_PTNR.forward28 ; 0x6b33
    mov ax, 0x93f0                   ; 0x6b35
    push ax                          ; 0x6b38
    mov ax, MSG_PERHAPS_YOU_D_LIKE_TO_1645 ; 0x6b39
    cmp word [bp - 2], byte 0        ; 0x6b3c
    jne short api_idx_009c_PTNR.forward27 ; 0x6b40
    mov ax, MSG_HEH_HEH_WHY_I_HAVEN_T_1641 ; 0x6b42
api_idx_009c_PTNR.forward27:
    push ax                          ; 0x6b45
    call load_message_string         ; 0x6b46
    add sp, byte 4                   ; 0x6b49
    mov ax, 1                        ; 0x6b4c
    push ax                          ; 0x6b4f
    mov ax, bss_93f0                 ; 0x6b50
    push ax                          ; 0x6b53
    call loc_LRGG                    ; 0x6b54
    add sp, byte 4                   ; 0x6b57
api_idx_009c_PTNR.forward28:
    jmp near api_idx_009c_PTNR.forward33 ; 0x6b5a
jumptable_6c16_case_7:
    mov word [bp - 2], 0             ; 0x6b5d
    jmp short api_idx_009c_PTNR.forward30 ; 0x6b62
api_idx_009c_PTNR.back9:
    mov ax, 0x248                    ; 0x6b64
    imul word [bp - 2]               ; 0x6b67
    add ax, word [bss_9136]          ; 0x6b6a
    mov bx, ax                       ; 0x6b6e
    cmp byte [bx + party_records + pc_rec.pad_01be], 0 ; 0x6b70
    jle short api_idx_009c_PTNR.forward29 ; 0x6b75
    mov al, byte [bx + party_records + pc_rec.pad_01be] ; 0x6b77
    cbw                              ; 0x6b7b
    mov cx, 5                        ; 0x6b7c
    cwd                              ; 0x6b7f
    idiv cx                          ; 0x6b80
    mov byte [bx + party_records + pc_rec.pad_01be], al ; 0x6b82
api_idx_009c_PTNR.forward29:
    mov ax, 0                        ; 0x6b86
    push ax                          ; 0x6b89
    mov ax, 0xf                      ; 0x6b8a
    push ax                          ; 0x6b8d
    call random_below                ; 0x6b8e
    pop cx                           ; 0x6b91
    mov cx, ax                       ; 0x6b92
    add ax, strict word 0xf          ; 0x6b94
    mov cx, ax                       ; 0x6b97
    mov ax, 0                        ; 0x6b99
    sub ax, cx                       ; 0x6b9c
    push ax                          ; 0x6b9e
    push word [bp - 2]               ; 0x6b9f
    call loc_HOSN                    ; 0x6ba2
    add sp, byte 6                   ; 0x6ba5
    inc word [bp - 2]                ; 0x6ba8
api_idx_009c_PTNR.forward30:
    mov ax, word [bp - 2]            ; 0x6bab
    cmp ax, word [party_char_count]  ; 0x6bae
    jl short api_idx_009c_PTNR.back9 ; 0x6bb2
    mov al, byte [bss_91c7]          ; 0x6bb4
    sub ah, ah                       ; 0x6bb7
    mov bx, ax                       ; 0x6bb9
    cmp byte [bx + target_weight], 0 ; 0x6bbb
    jle short api_idx_009c_PTNR.forward31 ; 0x6bc0
    mov al, byte [bx + target_weight] ; 0x6bc2
    cbw                              ; 0x6bc6
    mov cx, 5                        ; 0x6bc7
    cwd                              ; 0x6bca
    idiv cx                          ; 0x6bcb
    mov byte [bx + target_weight], al ; 0x6bcd
api_idx_009c_PTNR.forward31:
    mov ax, 0xf                      ; 0x6bd1
    push ax                          ; 0x6bd4
    call random_below                ; 0x6bd5
    pop cx                           ; 0x6bd8
    mov cx, ax                       ; 0x6bd9
    add ax, strict word 0xf          ; 0x6bdb
    mov cx, ax                       ; 0x6bde
    mov ax, 0                        ; 0x6be0
    sub ax, cx                       ; 0x6be3
    push ax                          ; 0x6be5
    mov ax, 0                        ; 0x6be6
    push ax                          ; 0x6be9
    push ax                          ; 0x6bea
    call loc_HOSN                    ; 0x6beb
    add sp, byte 6                   ; 0x6bee
    mov ax, 0                        ; 0x6bf1
    push ax                          ; 0x6bf4
    call loc_GPUL                    ; 0x6bf5
    pop cx                           ; 0x6bf8
    mov word [bp - 6], 8             ; 0x6bf9
    jmp short api_idx_009c_PTNR.forward33 ; 0x6bfe
jumptable_6c16_case_8:
    mov word [bss_95a6], 1           ; 0x6c00
    jmp short api_idx_009c_PTNR.forward33 ; 0x6c06
jumptable_6c16_case_9:
    mov word [bss_95a6], 0           ; 0x6c08
    mov word [game_state], 0x17      ; 0x6c0e
    jmp short api_idx_009c_PTNR.forward33 ; 0x6c14
jumptable_6c16:
    dw jumptable_6c16_case_0 - IMAGE_BASE + __zres_end ; 0x6c16
    dw jumptable_6c16_case_1 - IMAGE_BASE + __zres_end ; 0x6c18
    dw jumptable_6c16_case_0 - IMAGE_BASE + __zres_end ; 0x6c1a
    dw jumptable_6c16_case_3 - IMAGE_BASE + __zres_end ; 0x6c1c
    dw jumptable_6c16_case_3 - IMAGE_BASE + __zres_end ; 0x6c1e
    dw jumptable_6c16_case_3 - IMAGE_BASE + __zres_end ; 0x6c20
    dw jumptable_6c16_case_3 - IMAGE_BASE + __zres_end ; 0x6c22
    dw jumptable_6c16_case_7 - IMAGE_BASE + __zres_end ; 0x6c24
    dw jumptable_6c16_case_8 - IMAGE_BASE + __zres_end ; 0x6c26
    dw jumptable_6c16_case_9 - IMAGE_BASE + __zres_end ; 0x6c28
api_idx_009c_PTNR.forward32:
    cmp ax, strict word 0xa          ; 0x6c2a
    jae short api_idx_009c_PTNR.forward33 ; 0x6c2d
    xchg bx, ax                      ; 0x6c2f
    shl bx, 1                        ; 0x6c30
    jmp [cs:bx + jumptable_6c16 - IMAGE_BASE + __zres_end] ; 0x6c32
api_idx_009c_PTNR.forward33:
    cmp word [bp - 0xc], byte 0      ; 0x6c37
    jl short api_idx_009c_PTNR.forward34 ; 0x6c3b
    mov ax, word [party_char_count]  ; 0x6c3d
    dec ax                           ; 0x6c40
    cmp ax, word [bp - 0xc]          ; 0x6c41
    jl short api_idx_009c_PTNR.forward34 ; 0x6c44
    mov ax, 4                        ; 0x6c46
    push ax                          ; 0x6c49
    call random_below                ; 0x6c4a
    pop cx                           ; 0x6c4d
    test ax, ax                      ; 0x6c4e
    jne short api_idx_009c_PTNR.forward35 ; 0x6c50
api_idx_009c_PTNR.forward34:
    push word [party_char_count]     ; 0x6c52
    call random_below                ; 0x6c56
    pop cx                           ; 0x6c59
    mov word [bp - 0xc], ax          ; 0x6c5a
api_idx_009c_PTNR.forward35:
    mov ax, 0x248                    ; 0x6c5d
    imul word [bp - 0xc]             ; 0x6c60
    add ax, word [bss_9136]          ; 0x6c63
    mov bx, ax                       ; 0x6c67
    mov al, byte [bx + party_records + pc_rec.pad_01be] ; 0x6c69
    cbw                              ; 0x6c6d
    push ax                          ; 0x6c6e
    mov ax, 0x248                    ; 0x6c6f
    imul word [bp - 0xc]             ; 0x6c72
    mov bx, ax                       ; 0x6c75
    mov al, byte [bx + party_records + pc_rec.stat + 0x6] ; 0x6c77
    sub ah, ah                       ; 0x6c7b
    mov cx, ax                       ; 0x6c7d
    pop ax                           ; 0x6c7f
    add ax, cx                       ; 0x6c80
    add ax, word [bss_964e]          ; 0x6c82
    mov word [bp - 0xa], ax          ; 0x6c86
    mov al, byte [bss_91c7]          ; 0x6c89
    sub ah, ah                       ; 0x6c8c
    mov bx, ax                       ; 0x6c8e
    mov al, byte [bx + target_weight] ; 0x6c90
    cbw                              ; 0x6c94
    add ax, word [bss_964e]          ; 0x6c95
    mov word [bp - 2], ax            ; 0x6c99
    cmp word [game_state], byte 0xa  ; 0x6c9c
    je short api_idx_009c_PTNR.forward39 ; 0x6ca1
    cmp ax, strict word 0xfff6       ; 0x6ca3
    jl short api_idx_009c_PTNR.forward36 ; 0x6ca6
    cmp word [bp - 0xa], byte -10    ; 0x6ca8
    jge short api_idx_009c_PTNR.forward39 ; 0x6cac
api_idx_009c_PTNR.forward36:
    mov ax, 0x64                     ; 0x6cae
    push ax                          ; 0x6cb1
    call random_below                ; 0x6cb2
    pop cx                           ; 0x6cb5
    add ax, strict word 0xff9c       ; 0x6cb6
    mov word [bp - 8], ax            ; 0x6cb9
    cmp ax, word [bp - 2]            ; 0x6cbc
    jl short api_idx_009c_PTNR.forward37 ; 0x6cbf
    cmp ax, word [bp - 0xa]          ; 0x6cc1
    jge short api_idx_009c_PTNR.forward39 ; 0x6cc4
api_idx_009c_PTNR.forward37:
    mov ax, 2                        ; 0x6cc6
    push ax                          ; 0x6cc9
    call random_below                ; 0x6cca
    pop cx                           ; 0x6ccd
    cmp ax, strict word 1            ; 0x6cce
    jne short api_idx_009c_PTNR.forward38 ; 0x6cd1
    mov ax, 1                        ; 0x6cd3
    push ax                          ; 0x6cd6
    call loc_GPUL                    ; 0x6cd7
    pop cx                           ; 0x6cda
    mov word [bp - 6], 8             ; 0x6cdb
    jmp short api_idx_009c_PTNR.forward39 ; 0x6ce0
api_idx_009c_PTNR.forward38:
    cmp word [game_state], byte 0x17 ; 0x6ce2
    je short api_idx_009c_PTNR.forward39 ; 0x6ce7
    mov ax, 0x55                     ; 0x6ce9
    push ax                          ; 0x6cec
    mov ax, 0                        ; 0x6ced
    push ax                          ; 0x6cf0
    mov ax, 1                        ; 0x6cf1
    push ax                          ; 0x6cf4
    mov ax, MSG_LEAVES               ; 0x6cf5
    push ax                          ; 0x6cf8
    call api_idx_0050_TJLH           ; 0x6cf9
    add sp, byte 8                   ; 0x6cfc
    mov word [bss_95a6], 1           ; 0x6cff
    mov word [bp - 6], 8             ; 0x6d05
api_idx_009c_PTNR.forward39:
    cmp word [bp - 6], byte 8        ; 0x6d0a
    je short api_idx_009c_PTNR.forward40 ; 0x6d0e
    cmp word [bp - 6], byte 9        ; 0x6d10
    je short api_idx_009c_PTNR.forward40 ; 0x6d14
    jmp near api_idx_009c_PTNR.back1 ; 0x6d16
api_idx_009c_PTNR.forward40:
    cmp word [bss_9d62], byte 1      ; 0x6d19
    jne short api_idx_009c_PTNR.forward41 ; 0x6d1e
    mov ax, 5                        ; 0x6d20
    push ax                          ; 0x6d23
    call random_below                ; 0x6d24
    pop cx                           ; 0x6d27
    mov cx, ax                       ; 0x6d28
    add ax, strict word 5            ; 0x6d2a
    mov cx, ax                       ; 0x6d2d
    mov ax, 0                        ; 0x6d2f
    sub ax, cx                       ; 0x6d32
    push ax                          ; 0x6d34
    mov ax, 0                        ; 0x6d35
    push ax                          ; 0x6d38
    push ax                          ; 0x6d39
    call loc_HOSN                    ; 0x6d3a
    add sp, byte 6                   ; 0x6d3d
api_idx_009c_PTNR.forward41:
    cmp word [game_state], byte 0xa  ; 0x6d40
    jne short api_idx_009c_PTNR.forward42 ; 0x6d45
    mov ax, 0                        ; 0x6d47
    push ax                          ; 0x6d4a
    push ax                          ; 0x6d4b
    push ax                          ; 0x6d4c
    mov ax, 6                        ; 0x6d4d
    push ax                          ; 0x6d50
    mov ax, 0                        ; 0x6d51
    push ax                          ; 0x6d54
    call api_idx_0006_SRQN           ; 0x6d55
    add sp, byte 0xa                 ; 0x6d58
    jmp short api_idx_009c_PTNR.forward43 ; 0x6d5b
api_idx_009c_PTNR.forward42:
    cmp word [game_state], byte 0x17 ; 0x6d5d
    je short api_idx_009c_PTNR.forward43 ; 0x6d62
    mov ax, 0                        ; 0x6d64
    push ax                          ; 0x6d67
    push ax                          ; 0x6d68
    push ax                          ; 0x6d69
    mov ax, 7                        ; 0x6d6a
    push ax                          ; 0x6d6d
    mov ax, 0                        ; 0x6d6e
    push ax                          ; 0x6d71
    call api_idx_0006_SRQN           ; 0x6d72
    add sp, byte 0xa                 ; 0x6d75
api_idx_009c_PTNR.forward43:
    cmp word [bss_95a6], byte 1      ; 0x6d78
    jne short api_idx_009c_PTNR.return2 ; 0x6d7d
    mov word [bss_93dc], 1           ; 0x6d7f
    mov ax, 0                        ; 0x6d85
    push ax                          ; 0x6d88
    mov ax, 1                        ; 0x6d89
    push ax                          ; 0x6d8c
    call api_idx_005e_SHOL           ; 0x6d8d
    add sp, byte 4                   ; 0x6d90
    mov word [cell_slot_ref], 0      ; 0x6d93
    call run_party_screen_animation  ; 0x6d99
api_idx_009c_PTNR.return2:
    ret                              ; 0x6d9c
