; auto-generated
loc_HUIS:
    mov ax, 0xfe5c                   ; 0x5789
    call aztec_csav                  ; 0x578c
    mov ax, 0                        ; 0x578f
    push ax                          ; 0x5792
    push word [bss_84a0]             ; 0x5793
    lea ax, word [bp - 0x003a]       ; 0x5797
    push ax                          ; 0x579a
    mov ax, 7                        ; 0x579b
    push ax                          ; 0x579e
    call ds_app_file_NKGK            ; 0x579f
    add sp, byte 8                   ; 0x57a2
    mov word [bss_84a0], 0xffff      ; 0x57a5
    cmp byte [bp - 0x0005], 0        ; 0x57ab
    jbe short @..loc_HUIS.l2         ; 0x57af
    mov ax, 0xc6                     ; 0x57b1
    push ax                          ; 0x57b4
    mov ax, 0x109                    ; 0x57b5
    push ax                          ; 0x57b8
    mov ax, 0x92                     ; 0x57b9
    push ax                          ; 0x57bc
    mov ax, 0x37                     ; 0x57bd
    push ax                          ; 0x57c0
    call thunk_4                     ; 0x57c1
    add sp, byte 8                   ; 0x57c4
    lea ax, word [bp - 0x003a]       ; 0x57c7
    push ax                          ; 0x57ca
    call api_idx_007a_4f0c           ; 0x57cb
    pop cx                           ; 0x57ce
    cmp ax, strict word 0xffff       ; 0x57cf
    jne short @..loc_HUIS.l1         ; 0x57d2
    mov ax, 1                        ; 0x57d4
    push ax                          ; 0x57d7
    call api_idx_000a_TIPG           ; 0x57d8
    pop cx                           ; 0x57db
    ret                              ; 0x57dc
@..loc_HUIS.l1:
    mov ax, 1                        ; 0x57dd
    push ax                          ; 0x57e0
    call api_idx_000a_TIPG           ; 0x57e1
    pop cx                           ; 0x57e4
@..loc_HUIS.l2:
    cmp word [bss_905e], byte 0x15   ; 0x57e5
    jne short @..loc_HUIS.l3         ; 0x57ea
    call api_idx_0006_OUPU           ; 0x57ec
@..loc_HUIS.l3:
    mov ax, 1                        ; 0x57ef
    push ax                          ; 0x57f2
    call api_idx_000a_TIPG           ; 0x57f3
    pop cx                           ; 0x57f6
    mov word [bp - 0x0086], 0        ; 0x57f7
    mov word [bp - 0x0088], 0        ; 0x57fd
    mov word [bp - 0x008a], 0        ; 0x5803
    mov word [bp - 0x008c], 0        ; 0x5809
    mov word [bss_95e4], 0           ; 0x580f
    cmp word [bss_849e], byte 0xff   ; 0x5815
    jne short @..loc_HUIS.l4         ; 0x581a
    jmp near @..loc_HUIS.l9          ; 0x581c
@..loc_HUIS.l4:
    mov ax, 0x26                     ; 0x581f
    imul word [bss_849e]             ; 0x5822
    mov bx, ax                       ; 0x5826
    cmp byte [bx - 0x7b00], 0        ; 0x5828
    jle short @..loc_HUIS.l5         ; 0x582d
    jmp near @..loc_HUIS.l9          ; 0x582f
@..loc_HUIS.l5:
    mov word [bp - 0x0002], 0        ; 0x5832
@..loc_HUIS.l6:
    push word [bp - 0x0002]          ; 0x5837
    mov ax, 0x26                     ; 0x583a
    imul word [bss_849e]             ; 0x583d
    add ax, 0x8502                   ; 0x5841
    push ax                          ; 0x5844
    call ds_leaf_loc_PRVP            ; 0x5845
    add sp, byte 4                   ; 0x5848
    test ax, ax                      ; 0x584b
    je short @..loc_HUIS.l7          ; 0x584d
    push word [bp - 0x0002]          ; 0x584f
    push word [bss_849e]             ; 0x5852
    mov ax, 0x15                     ; 0x5856
    push ax                          ; 0x5859
    call api_idx_0002_MLKN           ; 0x585a
    add sp, byte 6                   ; 0x585d
    mov ax, word [bp - 0x0002]       ; 0x5860
    add ax, 0x190                    ; 0x5863
    mov cx, word [bss_95e4]          ; 0x5866
    shl cx, 1                        ; 0x586a
    mov bx, cx                       ; 0x586c
    mov word [bx - 0x69f2], ax       ; 0x586e
    inc word [bss_95e4]              ; 0x5872
@..loc_HUIS.l7:
    push word [bp - 0x0002]          ; 0x5876
    mov ax, 0x26                     ; 0x5879
    imul word [bss_849e]             ; 0x587c
    add ax, 0x8504                   ; 0x5880
    push ax                          ; 0x5883
    call ds_leaf_loc_PRVP            ; 0x5884
    add sp, byte 4                   ; 0x5887
    test ax, ax                      ; 0x588a
    je short @..loc_HUIS.l8          ; 0x588c
    mov ax, 1                        ; 0x588e
    push ax                          ; 0x5891
    push word [bp - 0x0002]          ; 0x5892
    mov ax, 0x8822                   ; 0x5895
    push ax                          ; 0x5898
    call set_bitmap_bit              ; 0x5899
    add sp, byte 6                   ; 0x589c
@..loc_HUIS.l8:
    inc word [bp - 0x0002]           ; 0x589f
    mov ax, word [bp - 0x0002]       ; 0x58a2
    cmp ax, strict word 0xb          ; 0x58a5
    jl short @..loc_HUIS.l6          ; 0x58a8
@..loc_HUIS.l9:
    mov word [bp - 0x0002], 0        ; 0x58aa
@..loc_HUIS.l10:
    mov ax, 0x64                     ; 0x58af
    push ax                          ; 0x58b2
    call ds_app_PUNN                 ; 0x58b3
    pop cx                           ; 0x58b6
    push ax                          ; 0x58b7
    mov ax, 6                        ; 0x58b8
    imul word [bp - 0x0002]          ; 0x58bb
    mov bx, ax                       ; 0x58be
    add bx, bp                       ; 0x58c0
    mov al, byte [bx - 0x0035]       ; 0x58c2
    sub ah, ah                       ; 0x58c5
    mov cx, ax                       ; 0x58c7
    pop ax                           ; 0x58c9
    cmp ax, cx                       ; 0x58ca
    jl short @..loc_HUIS.l11         ; 0x58cc
    jmp near @..loc_HUIS.l19         ; 0x58ce
@..loc_HUIS.l11:
    mov al, byte [bx - 0x0036]       ; 0x58d1
    sub ah, ah                       ; 0x58d4
    jmp near @..loc_HUIS.l17         ; 0x58d6
@..loc_HUIS.l12:
    mov ax, 6                        ; 0x58d9
    imul word [bp - 0x0002]          ; 0x58dc
    mov bx, ax                       ; 0x58df
    add bx, bp                       ; 0x58e1
    mov ax, word [bx - 0x003a]       ; 0x58e3
    mov cx, word [bx - 0x0038]       ; 0x58e6
    sub ax, cx                       ; 0x58e9
    push ax                          ; 0x58eb
    call ds_app_PUNN                 ; 0x58ec
    pop cx                           ; 0x58ef
    cwd                              ; 0x58f0
    push ax                          ; 0x58f1
    push dx                          ; 0x58f2
    mov ax, 6                        ; 0x58f3
    imul word [bp - 0x0002]          ; 0x58f6
    mov bx, ax                       ; 0x58f9
    add bx, bp                       ; 0x58fb
    mov ax, word [bx - 0x0038]       ; 0x58fd
    cwd                              ; 0x5900
    mov cx, ax                       ; 0x5901
    mov bx, dx                       ; 0x5903
    pop dx                           ; 0x5905
    pop ax                           ; 0x5906
    add ax, cx                       ; 0x5907
    adc dx, bx                       ; 0x5909
    add word [bp - 0x0088], ax       ; 0x590b
    adc word [bp - 0x0086], dx       ; 0x590f
    jmp near @..loc_HUIS.l19         ; 0x5913
@..loc_HUIS.l13:
    mov ax, 6                        ; 0x5916
    imul word [bp - 0x0002]          ; 0x5919
    mov bx, ax                       ; 0x591c
    add bx, bp                       ; 0x591e
    mov ax, word [bx - 0x003a]       ; 0x5920
    mov cx, word [bx - 0x0038]       ; 0x5923
    mov bx, cx                       ; 0x5926
    imul bx                          ; 0x5928
    add word [bp - 0x008c], ax       ; 0x592a
    adc word [bp - 0x008a], dx       ; 0x592e
    jmp near @..loc_HUIS.l19         ; 0x5932
@..loc_HUIS.l14:
    mov ax, 6                        ; 0x5935
    imul word [bp - 0x0002]          ; 0x5938
    mov bx, ax                       ; 0x593b
    add bx, bp                       ; 0x593d
    push word [bx - 0x0038]          ; 0x593f
    call ds_app_PUNN                 ; 0x5942
    pop cx                           ; 0x5945
    push ax                          ; 0x5946
    mov ax, 6                        ; 0x5947
    imul word [bp - 0x0002]          ; 0x594a
    mov bx, ax                       ; 0x594d
    add bx, bp                       ; 0x594f
    mov cx, word [bx - 0x003a]       ; 0x5951
    pop ax                           ; 0x5954
    add ax, cx                       ; 0x5955
    mov cx, word [bss_95e4]          ; 0x5957
    shl cx, 1                        ; 0x595b
    mov bx, cx                       ; 0x595d
    mov word [bx - 0x69f2], ax       ; 0x595f
    push ax                          ; 0x5963
    call loc_GMVH                    ; 0x5964
    pop cx                           ; 0x5967
    test ax, ax                      ; 0x5968
    je short @..loc_HUIS.l15         ; 0x596a
    mov ax, word [bss_95e4]          ; 0x596c
    shl ax, 1                        ; 0x596f
    mov bx, ax                       ; 0x5971
    mov ax, word [bx - 0x69f2]       ; 0x5973
    add ax, 0xfe70                   ; 0x5977
    push ax                          ; 0x597a
    mov ax, 0xffff                   ; 0x597b
    push ax                          ; 0x597e
    mov ax, 0x15                     ; 0x597f
    push ax                          ; 0x5982
    call api_idx_0002_MLKN           ; 0x5983
    add sp, byte 6                   ; 0x5986
@..loc_HUIS.l15:
    mov ax, word [bss_95e4]          ; 0x5989
    shl ax, 1                        ; 0x598c
    mov bx, ax                       ; 0x598e
    cmp word [bx - 0x69f2], byte 0   ; 0x5990
    jle short @..loc_HUIS.l16        ; 0x5995
    inc word [bss_95e4]              ; 0x5997
@..loc_HUIS.l16:
    jmp short @..loc_HUIS.l19        ; 0x599b
@..loc_HUIS.l17:
    cmp ax, strict word 1            ; 0x599d
    jne short @..loc_HUIS.l18        ; 0x59a0
    jmp near @..loc_HUIS.l12         ; 0x59a2
@..loc_HUIS.l18:
    cmp ax, strict word 2            ; 0x59a5
    je short @..loc_HUIS.l14         ; 0x59a8
    cmp ax, strict word 4            ; 0x59aa
    jne short @..loc_HUIS.l19        ; 0x59ad
    jmp near @..loc_HUIS.l13         ; 0x59af
@..loc_HUIS.l19:
    inc word [bp - 0x0002]           ; 0x59b2
    mov ax, word [bp - 0x0002]       ; 0x59b5
    cmp ax, strict word 8            ; 0x59b8
    jge short @..loc_HUIS.l20        ; 0x59bb
    jmp near @..loc_HUIS.l10         ; 0x59bd
@..loc_HUIS.l20:
    mov word [bp - 0x0084], 0        ; 0x59c0
    mov word [bp - 0x0002], 0        ; 0x59c6
    jmp short @..loc_HUIS.l23        ; 0x59cb
@..loc_HUIS.l21:
    mov ax, 0x248                    ; 0x59cd
    imul word [bp - 0x0002]          ; 0x59d0
    mov bx, ax                       ; 0x59d3
    cmp byte [bx + 0x5e2f], 0        ; 0x59d5
    jne short @..loc_HUIS.l22        ; 0x59da
    inc word [bp - 0x0084]           ; 0x59dc
@..loc_HUIS.l22:
    inc word [bp - 0x0002]           ; 0x59e0
@..loc_HUIS.l23:
    mov ax, word [bp - 0x0002]       ; 0x59e3
    cmp ax, word [bss_69c8]          ; 0x59e6
    jl short @..loc_HUIS.l21         ; 0x59ea
    cmp word [bp - 0x0084], byte 0   ; 0x59ec
    jne short @..loc_HUIS.l24        ; 0x59f1
    mov word [bss_830a], 8           ; 0x59f3
    ret                              ; 0x59f9
@..loc_HUIS.l24:
    mov ax, word [bp - 0x0088]       ; 0x59fa
    mov dx, word [bp - 0x0086]       ; 0x59fe
    push ax                          ; 0x5a02
    push dx                          ; 0x5a03
    mov ax, word [bp - 0x0084]       ; 0x5a04
    cwd                              ; 0x5a08
    mov cx, ax                       ; 0x5a09
    mov bx, dx                       ; 0x5a0b
    pop dx                           ; 0x5a0d
    pop ax                           ; 0x5a0e
    call aztec_ldv                   ; 0x5a0f
    mov word [bp - 0x0086], dx       ; 0x5a12
    mov word [bp - 0x0088], ax       ; 0x5a16
    push word [bss_0e2c]             ; 0x5a1a
    push word [bss_0e2a]             ; 0x5a1e
    call ds_app_io_TSGV              ; 0x5a22
    add sp, byte 4                   ; 0x5a25
    mov ax, 0                        ; 0x5a28
    push ax                          ; 0x5a2b
    mov ax, 0xa4                     ; 0x5a2c
    push ax                          ; 0x5a2f
    mov ax, 0x12e                    ; 0x5a30
    push ax                          ; 0x5a33
    call thunk_46                    ; 0x5a34
    add sp, byte 6                   ; 0x5a37
    lea ax, word [bp - 0x00b4]       ; 0x5a3a
    push ax                          ; 0x5a3e
    mov ax, 0x138d                   ; 0x5a3f
    push ax                          ; 0x5a42
    call ds_app_mem_TIMR             ; 0x5a43
    add sp, byte 4                   ; 0x5a46
    mov word [bp - 0x0002], 0        ; 0x5a49
    jmp near @..loc_HUIS.l44         ; 0x5a4e
@..loc_HUIS.l25:
    mov ax, word [bp - 0x0002]       ; 0x5a51
    shl ax, 1                        ; 0x5a54
    mov bx, ax                       ; 0x5a56
    cmp word [bx - 0x69f2], byte 0   ; 0x5a58
    jg short @..loc_HUIS.l26         ; 0x5a5d
    jmp near @..loc_HUIS.l43         ; 0x5a5f
@..loc_HUIS.l26:
    mov ax, 0                        ; 0x5a62
    push ax                          ; 0x5a65
    push word [bx - 0x69f2]          ; 0x5a66
    lea ax, word [bp - 0x0082]       ; 0x5a6a
    push ax                          ; 0x5a6e
    mov ax, 1                        ; 0x5a6f
    push ax                          ; 0x5a72
    call ds_app_file_NKGK            ; 0x5a73
    add sp, byte 8                   ; 0x5a76
    mov al, byte [bp - 0x004b]       ; 0x5a79
    sub ah, ah                       ; 0x5a7c
    test ax, 1                       ; 0x5a7e
    je short @..loc_HUIS.l27         ; 0x5a81
    lea ax, word [bp - 0x0082]       ; 0x5a83
    push ax                          ; 0x5a87
    mov ax, 0x16                     ; 0x5a88
    imul word [bp - 0x0002]          ; 0x5a8b
    add ax, 0x93fe                   ; 0x5a8e
    push ax                          ; 0x5a91
    call aztec_strcpy                ; 0x5a92
    add sp, byte 4                   ; 0x5a95
    jmp short @..loc_HUIS.l28        ; 0x5a98
@..loc_HUIS.l27:
    mov ax, 0x16                     ; 0x5a9a
    imul word [bp - 0x0002]          ; 0x5a9d
    add ax, 0x93fe                   ; 0x5aa0
    push ax                          ; 0x5aa3
    mov al, byte [bp - 0x0049]       ; 0x5aa4
    sub ah, ah                       ; 0x5aa7
    add ax, 0x1770                   ; 0x5aa9
    push ax                          ; 0x5aac
    call ds_app_mem_TIMR             ; 0x5aad
    add sp, byte 4                   ; 0x5ab0
@..loc_HUIS.l28:
    mov ax, 0x16                     ; 0x5ab3
    imul word [bp - 0x0002]          ; 0x5ab6
    add ax, 0x93fe                   ; 0x5ab9
    push ax                          ; 0x5abc
    lea ax, word [bp - 0x01a4]       ; 0x5abd
    push ax                          ; 0x5ac1
    call aztec_strcpy                ; 0x5ac2
    add sp, byte 4                   ; 0x5ac5
    lea ax, word [bp - 0x01a4]       ; 0x5ac8
    push ax                          ; 0x5acc
    call api_idx_0002_HHSQ           ; 0x5acd
    pop cx                           ; 0x5ad0
    mov al, byte [bp - 0x004a]       ; 0x5ad1
    sub ah, ah                       ; 0x5ad4
    mov bx, ax                       ; 0x5ad6
    cmp byte [bx + 0x60e], 1         ; 0x5ad8
    jne short @..loc_HUIS.l29        ; 0x5add
    push word [bp - 0x0066]          ; 0x5adf
    push word [bp - 0x0068]          ; 0x5ae2
    call ds_app_QSQR                 ; 0x5ae5
    add sp, byte 4                   ; 0x5ae8
    sub ah, ah                       ; 0x5aeb
    mov cx, word [bp - 0x0002]       ; 0x5aed
    shl cx, 1                        ; 0x5af0
    mov bx, cx                       ; 0x5af2
    mov word [bx - 0x6a4a], ax       ; 0x5af4
    jmp short @..loc_HUIS.l30        ; 0x5af8
@..loc_HUIS.l29:
    mov ax, word [bp - 0x0002]       ; 0x5afa
    shl ax, 1                        ; 0x5afd
    mov bx, ax                       ; 0x5aff
    mov word [bx - 0x6a4a], 0xffff   ; 0x5b01
@..loc_HUIS.l30:
    mov al, byte [bp - 0x0049]       ; 0x5b07
    sub ah, ah                       ; 0x5b0a
    mov cx, word [bp - 0x0002]       ; 0x5b0c
    shl cx, 1                        ; 0x5b0f
    mov bx, cx                       ; 0x5b11
    mov word [bx - 0x6c2a], ax       ; 0x5b13
    mov word [bx - 0x6c52], 0        ; 0x5b17
    mov al, byte [bp - 0x004b]       ; 0x5b1d
    sub ah, ah                       ; 0x5b20
    test ax, 2                       ; 0x5b22
    je short @..loc_HUIS.l31         ; 0x5b25
    mov ax, 1                        ; 0x5b27
    jmp short @..loc_HUIS.l32        ; 0x5b2a
@..loc_HUIS.l31:
    mov ax, 0                        ; 0x5b2c
@..loc_HUIS.l32:
    mov word [bx - 0x69ca], ax       ; 0x5b2f
    mov al, byte [bp - 0x004b]       ; 0x5b33
    sub ah, ah                       ; 0x5b36
    test ax, 1                       ; 0x5b38
    je short @..loc_HUIS.l33         ; 0x5b3b
    mov ax, 1                        ; 0x5b3d
    jmp short @..loc_HUIS.l34        ; 0x5b40
@..loc_HUIS.l33:
    mov ax, 0                        ; 0x5b42
@..loc_HUIS.l34:
    mov word [bx - 0x6a1a], ax       ; 0x5b45
    lea ax, word [bp - 0x00b4]       ; 0x5b49
    push ax                          ; 0x5b4d
    lea ax, word [bp - 0x0104]       ; 0x5b4e
    push ax                          ; 0x5b52
    call aztec_strcpy                ; 0x5b53
    add sp, byte 4                   ; 0x5b56
    lea ax, word [bp - 0x0154]       ; 0x5b59
    push ax                          ; 0x5b5d
    mov ax, word [bp - 0x0002]       ; 0x5b5e
    shl ax, 1                        ; 0x5b61
    mov bx, ax                       ; 0x5b63
    cmp word [bx - 0x6a4a], byte 0   ; 0x5b65
    jle short @..loc_HUIS.l35        ; 0x5b6a
    mov ax, word [bx - 0x6a4a]       ; 0x5b6c
    jmp short @..loc_HUIS.l36        ; 0x5b70
@..loc_HUIS.l35:
    mov ax, 1                        ; 0x5b72
@..loc_HUIS.l36:
    push ax                          ; 0x5b75
    call ds_app_OLKR                 ; 0x5b76
    add sp, byte 4                   ; 0x5b79
    mov ax, 0x25                     ; 0x5b7c
    push ax                          ; 0x5b7f
    lea ax, word [bp - 0x0154]       ; 0x5b80
    push ax                          ; 0x5b84
    lea ax, word [bp - 0x0104]       ; 0x5b85
    push ax                          ; 0x5b89
    call ds_app_string_HHIL          ; 0x5b8a
    add sp, byte 6                   ; 0x5b8d
    mov ax, 0x24                     ; 0x5b90
    push ax                          ; 0x5b93
    mov ax, 0                        ; 0x5b94
    cmp byte [bp - 0x01a4], 0x3f     ; 0x5b97
    jne short @..loc_HUIS.l37        ; 0x5b9c
    mov ax, 1                        ; 0x5b9e
@..loc_HUIS.l37:
    lea cx, word [bp - 0x01a4]       ; 0x5ba1
    add ax, cx                       ; 0x5ba5
    push ax                          ; 0x5ba7
    lea ax, word [bp - 0x0104]       ; 0x5ba8
    push ax                          ; 0x5bac
    call ds_app_string_HHIL          ; 0x5bad
    add sp, byte 6                   ; 0x5bb0
    mov al, byte [bp - 0x004b]       ; 0x5bb3
    sub ah, ah                       ; 0x5bb6
    test ax, 1                       ; 0x5bb8
    je short @..loc_HUIS.l42         ; 0x5bbb
    lea ax, word [bp - 0x0104]       ; 0x5bbd
    push ax                          ; 0x5bc1
    call aztec_strlen                ; 0x5bc2
    pop cx                           ; 0x5bc5
    mov word [bp - 0x0004], ax       ; 0x5bc6
    mov al, byte [bp - 0x004a]       ; 0x5bc9
    sub ah, ah                       ; 0x5bcc
    jmp short @..loc_HUIS.l41        ; 0x5bce
@..loc_HUIS.l38:
    mov ax, word [bp - 0x0004]       ; 0x5bd0
    lea cx, word [bp - 0x0104]       ; 0x5bd3
    add ax, cx                       ; 0x5bd7
    push ax                          ; 0x5bd9
    mov ax, 0x1398                   ; 0x5bda
    push ax                          ; 0x5bdd
    call ds_app_mem_TIMR             ; 0x5bde
    add sp, byte 4                   ; 0x5be1
    jmp short @..loc_HUIS.l42        ; 0x5be4
@..loc_HUIS.l39:
    mov ax, word [bp - 0x0004]       ; 0x5be6
    lea cx, word [bp - 0x0104]       ; 0x5be9
    add ax, cx                       ; 0x5bed
    push ax                          ; 0x5bef
    mov ax, 0x1399                   ; 0x5bf0
    push ax                          ; 0x5bf3
    call ds_app_mem_TIMR             ; 0x5bf4
    add sp, byte 4                   ; 0x5bf7
    jmp short @..loc_HUIS.l42        ; 0x5bfa
@..loc_HUIS.l40:
    mov ax, word [bp - 0x0004]       ; 0x5bfc
    lea cx, word [bp - 0x0104]       ; 0x5bff
    add ax, cx                       ; 0x5c03
    push ax                          ; 0x5c05
    mov ax, 0x139a                   ; 0x5c06
    push ax                          ; 0x5c09
    call ds_app_mem_TIMR             ; 0x5c0a
    add sp, byte 4                   ; 0x5c0d
    jmp short @..loc_HUIS.l42        ; 0x5c10
@..loc_HUIS.l41:
    cmp ax, strict word 0xc          ; 0x5c12
    je short @..loc_HUIS.l38         ; 0x5c15
    cmp ax, strict word 0xd          ; 0x5c17
    je short @..loc_HUIS.l39         ; 0x5c1a
    cmp ax, strict word 0x10         ; 0x5c1c
    je short @..loc_HUIS.l40         ; 0x5c1f
@..loc_HUIS.l42:
    mov ax, 1                        ; 0x5c21
    push ax                          ; 0x5c24
    push ax                          ; 0x5c25
    push word [bss_91d4]             ; 0x5c26
    lea ax, word [bp - 0x0104]       ; 0x5c2a
    push ax                          ; 0x5c2e
    call loc_OOHI                    ; 0x5c2f
    add sp, byte 8                   ; 0x5c32
@..loc_HUIS.l43:
    inc word [bp - 0x0002]           ; 0x5c35
@..loc_HUIS.l44:
    mov ax, word [bp - 0x0002]       ; 0x5c38
    cmp ax, word [bss_95e4]          ; 0x5c3b
    jge short @..loc_HUIS.l45        ; 0x5c3f
    jmp near @..loc_HUIS.l25         ; 0x5c41
@..loc_HUIS.l45:
    cmp word [bp - 0x0086], byte 0   ; 0x5c44
    jl short @..loc_HUIS.l46         ; 0x5c49
    jne short @..loc_HUIS.l47        ; 0x5c4b
    cmp word [bp - 0x0088], byte 0   ; 0x5c4d
    ja short @..loc_HUIS.l47         ; 0x5c52
@..loc_HUIS.l46:
    jmp short @..loc_HUIS.l48        ; 0x5c54
@..loc_HUIS.l47:
    lea ax, word [bp - 0x0104]       ; 0x5c56
    push ax                          ; 0x5c5a
    mov ax, 0x138a                   ; 0x5c5b
    push ax                          ; 0x5c5e
    call ds_app_mem_TIMR             ; 0x5c5f
    add sp, byte 4                   ; 0x5c62
    lea ax, word [bp - 0x0154]       ; 0x5c65
    push ax                          ; 0x5c69
    push word [bp - 0x0086]          ; 0x5c6a
    push word [bp - 0x0088]          ; 0x5c6e
    call ds_app_SVGG                 ; 0x5c72
    add sp, byte 6                   ; 0x5c75
    mov ax, 0x24                     ; 0x5c78
    push ax                          ; 0x5c7b
    lea ax, word [bp - 0x0154]       ; 0x5c7c
    push ax                          ; 0x5c80
    lea ax, word [bp - 0x0104]       ; 0x5c81
    push ax                          ; 0x5c85
    call ds_app_string_HHIL          ; 0x5c86
    add sp, byte 6                   ; 0x5c89
    mov ax, 0x55                     ; 0x5c8c
    push ax                          ; 0x5c8f
    mov ax, 0                        ; 0x5c90
    push ax                          ; 0x5c93
    push word [bss_91d4]             ; 0x5c94
    lea ax, word [bp - 0x0104]       ; 0x5c98
    push ax                          ; 0x5c9c
    call loc_OOHI                    ; 0x5c9d
    add sp, byte 8                   ; 0x5ca0
@..loc_HUIS.l48:
    cmp word [bp - 0x008a], byte 0   ; 0x5ca3
    jl short @..loc_HUIS.l49         ; 0x5ca8
    jne short @..loc_HUIS.l50        ; 0x5caa
    cmp word [bp - 0x008c], byte 0   ; 0x5cac
    ja short @..loc_HUIS.l50         ; 0x5cb1
@..loc_HUIS.l49:
    jmp short @..loc_HUIS.l51        ; 0x5cb3
@..loc_HUIS.l50:
    lea ax, word [bp - 0x0104]       ; 0x5cb5
    push ax                          ; 0x5cb9
    mov ax, 0x138b                   ; 0x5cba
    push ax                          ; 0x5cbd
    call ds_app_mem_TIMR             ; 0x5cbe
    add sp, byte 4                   ; 0x5cc1
    lea ax, word [bp - 0x0154]       ; 0x5cc4
    push ax                          ; 0x5cc8
    push word [bp - 0x008a]          ; 0x5cc9
    push word [bp - 0x008c]          ; 0x5ccd
    call ds_app_SVGG                 ; 0x5cd1
    add sp, byte 6                   ; 0x5cd4
    mov ax, 0x24                     ; 0x5cd7
    push ax                          ; 0x5cda
    lea ax, word [bp - 0x0154]       ; 0x5cdb
    push ax                          ; 0x5cdf
    lea ax, word [bp - 0x0104]       ; 0x5ce0
    push ax                          ; 0x5ce4
    call ds_app_string_HHIL          ; 0x5ce5
    add sp, byte 6                   ; 0x5ce8
    mov ax, 0x41                     ; 0x5ceb
    push ax                          ; 0x5cee
    mov ax, 1                        ; 0x5cef
    push ax                          ; 0x5cf2
    push word [bss_91d4]             ; 0x5cf3
    lea ax, word [bp - 0x0104]       ; 0x5cf7
    push ax                          ; 0x5cfb
    call loc_OOHI                    ; 0x5cfc
    add sp, byte 8                   ; 0x5cff
@..loc_HUIS.l51:
    mov ax, 0                        ; 0x5d02
    push ax                          ; 0x5d05
    mov ax, 0xa4                     ; 0x5d06
    push ax                          ; 0x5d09
    mov ax, 0x12e                    ; 0x5d0a
    push ax                          ; 0x5d0d
    call thunk_47                    ; 0x5d0e
    add sp, byte 6                   ; 0x5d11
    mov ax, 0                        ; 0x5d14
    mov dx, 0                        ; 0x5d17
    push dx                          ; 0x5d1a
    push ax                          ; 0x5d1b
    call ds_app_io_TSGV              ; 0x5d1c
    add sp, byte 4                   ; 0x5d1f
    mov word [bp - 0x0002], 0        ; 0x5d22
    jmp short @..loc_HUIS.l54        ; 0x5d27
@..loc_HUIS.l52:
    mov ax, 0x248                    ; 0x5d29
    imul word [bp - 0x0002]          ; 0x5d2c
    mov bx, ax                       ; 0x5d2f
    cmp byte [bx + 0x5e2f], 0        ; 0x5d31
    jne short @..loc_HUIS.l53        ; 0x5d36
    mov ax, word [bp - 0x008c]       ; 0x5d38
    mov dx, word [bp - 0x008a]       ; 0x5d3c
    add word [bx + 0x5c00], ax       ; 0x5d40
    adc word [bx + 0x5c02], dx       ; 0x5d44
    mov ax, word [bp - 0x0088]       ; 0x5d48
    mov dx, word [bp - 0x0086]       ; 0x5d4c
    add word [bx + 0x5c08], ax       ; 0x5d50
    adc word [bx + 0x5c0a], dx       ; 0x5d54
@..loc_HUIS.l53:
    inc word [bp - 0x0002]           ; 0x5d58
@..loc_HUIS.l54:
    mov ax, word [bp - 0x0002]       ; 0x5d5b
    cmp ax, word [bss_69c8]          ; 0x5d5e
    jl short @..loc_HUIS.l52         ; 0x5d62
    cmp word [bss_95e4], byte 0      ; 0x5d64
    jle short @..loc_HUIS.l55        ; 0x5d69
    call api_idx_0040_LIPH           ; 0x5d6b
@..loc_HUIS.l55:
    mov word [bss_9114], 0           ; 0x5d6e
    call loc_SPML                    ; 0x5d74
    mov ax, 2                        ; 0x5d77
    push ax                          ; 0x5d7a
    call api_idx_0004_UQUT           ; 0x5d7b
    pop cx                           ; 0x5d7e
    ret                              ; 0x5d7f
