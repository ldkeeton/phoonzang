; auto-generated
; asm only
leaf_loc_IPGP:
    cmp word [bp - 0x0014], byte 0xff ; 0x5876
    je short @..leaf_loc_IPGP.l1     ; 0x587a
    mov word [bss_5b3e], 1           ; 0x587c
@..leaf_loc_IPGP.l1:
    jmp short loc_OGLL               ; 0x5882
loc_NJMT:
    mov word [bp - 0x0014], 0x18     ; 0x5884
    mov word [bss_5b3e], 1           ; 0x5889
    jmp short loc_OGLL               ; 0x588f
loc_LNMV:
    cmp ax, strict word 8            ; 0x5891
    jne short loc_TUQT               ; 0x5894
    jmp near loc_HKKI                ; 0x5896
loc_TUQT:
    cmp ax, strict word 9            ; 0x5899
    jne short loc_OHIS               ; 0x589c
    jmp near loc_PKPU                ; 0x589e
loc_OHIS:
    cmp ax, strict word 0xa          ; 0x58a1
    jne short loc_UVNT               ; 0x58a4
    jmp near loc_JQTQ                ; 0x58a6
loc_UVNT:
    cmp ax, strict word 0xb          ; 0x58a9
    jne short loc_IUIU               ; 0x58ac
    jmp near loc_JPGI                ; 0x58ae
loc_IUIU:
    cmp ax, strict word 0xd          ; 0x58b1
    jne short loc_SHSH               ; 0x58b4
    jmp near loc_PKQG                ; 0x58b6
loc_SHSH:
    cmp ax, strict word 0x1b         ; 0x58b9
    je short loc_NJMT                ; 0x58bc
    cmp ax, strict word 0x2b         ; 0x58be
    jne short loc_NHJK               ; 0x58c1
    jmp near loc_JQTQ                ; 0x58c3
loc_NHJK:
    cmp ax, strict word 0x2d         ; 0x58c6
    jne short loc_PGMI               ; 0x58c9
    jmp near loc_HKKI                ; 0x58cb
loc_PGMI:
    cmp ax, strict word 0x3d         ; 0x58ce
    jne short loc_OGLL               ; 0x58d1
    jmp near loc_JQTQ                ; 0x58d3
loc_OGLL:
    cmp word [bss_5b3e], byte 1      ; 0x58d6
    je short loc_VVHP                ; 0x58db
    jmp near loc_HSST                ; 0x58dd
loc_VVHP:
    mov ax, word [bp - 0x0014]       ; 0x58e0
    jmp near loc_NKPH                ; 0x58e3
jumptable_5e7f_case_0:
    mov al, byte [bss_5989]          ; 0x58e6
    sub ah, ah                       ; 0x58e9
    inc ax                           ; 0x58eb
    mov cx, 2                        ; 0x58ec
    cwd                              ; 0x58ef
    idiv cx                          ; 0x58f0
    mov ax, dx                       ; 0x58f2
    mov byte [bss_5989], al          ; 0x58f4
    push word [bp - 0x000a]          ; 0x58f7
    push word [bp - 0x0008]          ; 0x58fa
    mov ax, 0                        ; 0x58fd
    push ax                          ; 0x5900
    call api_idx_0052_NJVQ           ; 0x5901
    add sp, byte 6                   ; 0x5904
    jmp near loc_NSGT                ; 0x5907
jumptable_5e7f_case_1:
    cmp byte [bss_5986], 0           ; 0x590a
    jbe short @..loc_590a.l1         ; 0x590f
    dec byte [bss_5986]              ; 0x5911
    push word [bp - 0x000a]          ; 0x5915
    push word [bp - 0x0008]          ; 0x5918
    mov ax, 1                        ; 0x591b
    push ax                          ; 0x591e
    call api_idx_0052_NJVQ           ; 0x591f
    add sp, byte 6                   ; 0x5922
@..loc_590a.l1:
    jmp near loc_NSGT                ; 0x5925
jumptable_5e7f_case_2:
    cmp byte [bss_5986], 0x63        ; 0x5928
    jae short @..loc_5928.l1         ; 0x592d
    inc byte [bss_5986]              ; 0x592f
    push word [bp - 0x000a]          ; 0x5933
    push word [bp - 0x0008]          ; 0x5936
    mov ax, 1                        ; 0x5939
    push ax                          ; 0x593c
    call api_idx_0052_NJVQ           ; 0x593d
    add sp, byte 6                   ; 0x5940
@..loc_5928.l1:
    jmp near loc_NSGT                ; 0x5943
jumptable_5e7f_case_3:
    call bios_kbd_check              ; 0x5946
    mov ax, 0x12                     ; 0x5949
    push ax                          ; 0x594c
    mov ax, word [bp - 0x000a]       ; 0x594d
    add ax, strict word 0x38         ; 0x5950
    push ax                          ; 0x5953
    mov ax, word [bp - 0x0008]       ; 0x5954
    add ax, strict word 0x27         ; 0x5957
    push ax                          ; 0x595a
    mov ax, 0x593a                   ; 0x595b
    push ax                          ; 0x595e
    call loc_MPIM                    ; 0x595f
    add sp, byte 8                   ; 0x5962
    mov ax, 0                        ; 0x5965
    push ax                          ; 0x5968
    mov ax, 1                        ; 0x5969
    push ax                          ; 0x596c
    mov ax, 0                        ; 0x596d
    push ax                          ; 0x5970
    mov ax, 0x10                     ; 0x5971
    push ax                          ; 0x5974
    mov ax, word [bp - 0x000a]       ; 0x5975
    add ax, strict word 0x39         ; 0x5978
    push ax                          ; 0x597b
    mov ax, word [bp - 0x0008]       ; 0x597c
    add ax, strict word 0x29         ; 0x597f
    push ax                          ; 0x5982
    mov ax, 0x593a                   ; 0x5983
    push ax                          ; 0x5986
    call api_idx_0008_IGKQ           ; 0x5987
    add sp, byte 0x0e                ; 0x598a
    push word [bp - 0x000a]          ; 0x598d
    push word [bp - 0x0008]          ; 0x5990
    mov ax, 2                        ; 0x5993
    push ax                          ; 0x5996
    call api_idx_0052_NJVQ           ; 0x5997
    add sp, byte 6                   ; 0x599a
    jmp near loc_NSGT                ; 0x599d
jumptable_5e7f_case_4:
    call bios_kbd_check              ; 0x59a0
    mov ax, 0x12                     ; 0x59a3
    push ax                          ; 0x59a6
    mov ax, word [bp - 0x000a]       ; 0x59a7
    add ax, strict word 0x44         ; 0x59aa
    push ax                          ; 0x59ad
    mov ax, word [bp - 0x0008]       ; 0x59ae
    add ax, strict word 0x27         ; 0x59b1
    push ax                          ; 0x59b4
    mov ax, 0x594e                   ; 0x59b5
    push ax                          ; 0x59b8
    call loc_MPIM                    ; 0x59b9
    add sp, byte 8                   ; 0x59bc
    mov ax, 0                        ; 0x59bf
    push ax                          ; 0x59c2
    mov ax, 1                        ; 0x59c3
    push ax                          ; 0x59c6
    mov ax, 0                        ; 0x59c7
    push ax                          ; 0x59ca
    mov ax, 0x10                     ; 0x59cb
    push ax                          ; 0x59ce
    mov ax, word [bp - 0x000a]       ; 0x59cf
    add ax, strict word 0x45         ; 0x59d2
    push ax                          ; 0x59d5
    mov ax, word [bp - 0x0008]       ; 0x59d6
    add ax, strict word 0x29         ; 0x59d9
    push ax                          ; 0x59dc
    mov ax, 0x594e                   ; 0x59dd
    push ax                          ; 0x59e0
    call api_idx_0008_IGKQ           ; 0x59e1
    add sp, byte 0x0e                ; 0x59e4
    push word [bp - 0x000a]          ; 0x59e7
    push word [bp - 0x0008]          ; 0x59ea
    mov ax, 3                        ; 0x59ed
    push ax                          ; 0x59f0
    call api_idx_0052_NJVQ           ; 0x59f1
    add sp, byte 6                   ; 0x59f4
    jmp near loc_NSGT                ; 0x59f7
jumptable_5e7f_case_5:
    cmp word [bp + 0x4], byte 0      ; 0x59fa
    jne short @..loc_59fa.l2         ; 0x59fe
@..loc_59fa.l1:
    mov al, byte [bss_5984]          ; 0x5a00
    sub ah, ah                       ; 0x5a03
    inc ax                           ; 0x5a05
    mov cx, 7                        ; 0x5a06
    cwd                              ; 0x5a09
    idiv cx                          ; 0x5a0a
    mov ax, dx                       ; 0x5a0c
    mov byte [bss_5984], al          ; 0x5a0e
    cmp byte [bss_5984], 5           ; 0x5a11
    je short @..loc_59fa.l1          ; 0x5a16
    push word [bp - 0x000a]          ; 0x5a18
    push word [bp - 0x0008]          ; 0x5a1b
    mov ax, 4                        ; 0x5a1e
    push ax                          ; 0x5a21
    call api_idx_0052_NJVQ           ; 0x5a22
    add sp, byte 6                   ; 0x5a25
@..loc_59fa.l2:
    cmp byte [bss_5984], 0           ; 0x5a28
    jbe short @..loc_59fa.l3         ; 0x5a2d
    mov word [bss_5980], 0x220       ; 0x5a2f
    jmp short @..loc_59fa.l4         ; 0x5a35
@..loc_59fa.l3:
    mov word [bss_5980], 0           ; 0x5a37
@..loc_59fa.l4:
    jmp near loc_NSGT                ; 0x5a3d
jumptable_5e7f_case_6:
    mov ax, 0xa                      ; 0x5a40
    push ax                          ; 0x5a43
    mov ax, 0xffff                   ; 0x5a44
    push ax                          ; 0x5a47
    mov ax, 0                        ; 0x5a48
    push ax                          ; 0x5a4b
    call loc_ISNS                    ; 0x5a4c
    add sp, byte 6                   ; 0x5a4f
    push word [bp - 0x000a]          ; 0x5a52
    push word [bp - 0x0008]          ; 0x5a55
    mov ax, 5                        ; 0x5a58
    push ax                          ; 0x5a5b
    call api_idx_0052_NJVQ           ; 0x5a5c
    add sp, byte 6                   ; 0x5a5f
    jmp near loc_NSGT                ; 0x5a62
jumptable_5e7f_case_7:
    mov ax, 0xa                      ; 0x5a65
    push ax                          ; 0x5a68
    mov ax, 1                        ; 0x5a69
    push ax                          ; 0x5a6c
    mov ax, 0                        ; 0x5a6d
    push ax                          ; 0x5a70
    call loc_ISNS                    ; 0x5a71
    add sp, byte 6                   ; 0x5a74
    push word [bp - 0x000a]          ; 0x5a77
    push word [bp - 0x0008]          ; 0x5a7a
    mov ax, 5                        ; 0x5a7d
    push ax                          ; 0x5a80
    call api_idx_0052_NJVQ           ; 0x5a81
    add sp, byte 6                   ; 0x5a84
    jmp near loc_NSGT                ; 0x5a87
jumptable_5e7f_case_8:
    mov ax, 0xa                      ; 0x5a8a
    push ax                          ; 0x5a8d
    mov ax, 0xffff                   ; 0x5a8e
    push ax                          ; 0x5a91
    mov ax, 1                        ; 0x5a92
    push ax                          ; 0x5a95
    call loc_ISNS                    ; 0x5a96
    add sp, byte 6                   ; 0x5a99
    push word [bp - 0x000a]          ; 0x5a9c
    push word [bp - 0x0008]          ; 0x5a9f
    mov ax, 6                        ; 0x5aa2
    push ax                          ; 0x5aa5
    call api_idx_0052_NJVQ           ; 0x5aa6
    add sp, byte 6                   ; 0x5aa9
    jmp near loc_NSGT                ; 0x5aac
jumptable_5e7f_case_9:
    mov ax, 0xa                      ; 0x5aaf
    push ax                          ; 0x5ab2
    mov ax, 1                        ; 0x5ab3
    push ax                          ; 0x5ab6
    push ax                          ; 0x5ab7
    call loc_ISNS                    ; 0x5ab8
    add sp, byte 6                   ; 0x5abb
    push word [bp - 0x000a]          ; 0x5abe
    push word [bp - 0x0008]          ; 0x5ac1
    mov ax, 6                        ; 0x5ac4
    push ax                          ; 0x5ac7
    call api_idx_0052_NJVQ           ; 0x5ac8
    add sp, byte 6                   ; 0x5acb
    jmp near loc_NSGT                ; 0x5ace
jumptable_5e7f_case_10:
    mov ax, 0xa                      ; 0x5ad1
    push ax                          ; 0x5ad4
    mov ax, 0xffff                   ; 0x5ad5
    push ax                          ; 0x5ad8
    mov ax, 2                        ; 0x5ad9
    push ax                          ; 0x5adc
    call loc_ISNS                    ; 0x5add
    add sp, byte 6                   ; 0x5ae0
    push word [bp - 0x000a]          ; 0x5ae3
    push word [bp - 0x0008]          ; 0x5ae6
    mov ax, 7                        ; 0x5ae9
    push ax                          ; 0x5aec
    call api_idx_0052_NJVQ           ; 0x5aed
    add sp, byte 6                   ; 0x5af0
    jmp near loc_NSGT                ; 0x5af3
jumptable_5e7f_case_11:
    mov ax, 0xa                      ; 0x5af6
    push ax                          ; 0x5af9
    mov ax, 1                        ; 0x5afa
    push ax                          ; 0x5afd
    mov ax, 2                        ; 0x5afe
    push ax                          ; 0x5b01
    call loc_ISNS                    ; 0x5b02
    add sp, byte 6                   ; 0x5b05
    push word [bp - 0x000a]          ; 0x5b08
    push word [bp - 0x0008]          ; 0x5b0b
    mov ax, 7                        ; 0x5b0e
    push ax                          ; 0x5b11
    call api_idx_0052_NJVQ           ; 0x5b12
    add sp, byte 6                   ; 0x5b15
    jmp near loc_NSGT                ; 0x5b18
jumptable_5e7f_case_12:
    cmp word [bp + 0x4], byte 0      ; 0x5b1b
    jne short @..loc_5b1b.l2         ; 0x5b1f
@..loc_5b1b.l1:
    mov al, byte [bss_5985]          ; 0x5b21
    sub ah, ah                       ; 0x5b24
    inc ax                           ; 0x5b26
    mov cx, 7                        ; 0x5b27
    cwd                              ; 0x5b2a
    idiv cx                          ; 0x5b2b
    mov ax, dx                       ; 0x5b2d
    mov byte [bss_5985], al          ; 0x5b2f
    cmp byte [bss_5985], 2           ; 0x5b32
    je short @..loc_5b1b.l1          ; 0x5b37
    cmp byte [bss_5985], 3           ; 0x5b39
    je short @..loc_5b1b.l1          ; 0x5b3e
    push word [bp - 0x000a]          ; 0x5b40
    push word [bp - 0x0008]          ; 0x5b43
    mov ax, 8                        ; 0x5b46
    push ax                          ; 0x5b49
    call api_idx_0052_NJVQ           ; 0x5b4a
    add sp, byte 6                   ; 0x5b4d
@..loc_5b1b.l2:
    cmp byte [bss_5985], 0           ; 0x5b50
    jbe short @..loc_5b1b.l3         ; 0x5b55
    mov word [bss_5982], 0x220       ; 0x5b57
    jmp short @..loc_5b1b.l4         ; 0x5b5d
@..loc_5b1b.l3:
    mov word [bss_5982], 0           ; 0x5b5f
@..loc_5b1b.l4:
    jmp near loc_NSGT                ; 0x5b65
jumptable_5e7f_case_13:
    mov ax, 0xa                      ; 0x5b68
    push ax                          ; 0x5b6b
    mov ax, 0xffff                   ; 0x5b6c
    push ax                          ; 0x5b6f
    mov ax, 3                        ; 0x5b70
    push ax                          ; 0x5b73
    call loc_ISNS                    ; 0x5b74
    add sp, byte 6                   ; 0x5b77
    push word [bp - 0x000a]          ; 0x5b7a
    push word [bp - 0x0008]          ; 0x5b7d
    mov ax, 9                        ; 0x5b80
    push ax                          ; 0x5b83
    call api_idx_0052_NJVQ           ; 0x5b84
    add sp, byte 6                   ; 0x5b87
    jmp near loc_NSGT                ; 0x5b8a
jumptable_5e7f_case_14:
    mov ax, 0xa                      ; 0x5b8d
    push ax                          ; 0x5b90
    mov ax, 1                        ; 0x5b91
    push ax                          ; 0x5b94
    mov ax, 3                        ; 0x5b95
    push ax                          ; 0x5b98
    call loc_ISNS                    ; 0x5b99
    add sp, byte 6                   ; 0x5b9c
    push word [bp - 0x000a]          ; 0x5b9f
    push word [bp - 0x0008]          ; 0x5ba2
    mov ax, 9                        ; 0x5ba5
    push ax                          ; 0x5ba8
    call api_idx_0052_NJVQ           ; 0x5ba9
    add sp, byte 6                   ; 0x5bac
    jmp near loc_NSGT                ; 0x5baf
jumptable_5e7f_case_15:
    mov al, byte [bss_5988]          ; 0x5bb2
    sub ah, ah                       ; 0x5bb5
    inc ax                           ; 0x5bb7
    mov cx, 3                        ; 0x5bb8
    cwd                              ; 0x5bbb
    idiv cx                          ; 0x5bbc
    mov ax, dx                       ; 0x5bbe
    mov byte [bss_5988], al          ; 0x5bc0
    push word [bp - 0x000a]          ; 0x5bc3
    push word [bp - 0x0008]          ; 0x5bc6
    mov ax, 0xa                      ; 0x5bc9
    push ax                          ; 0x5bcc
    call api_idx_0052_NJVQ           ; 0x5bcd
    add sp, byte 6                   ; 0x5bd0
    jmp near loc_NSGT                ; 0x5bd3
jumptable_5e7f_case_16:
    mov al, byte [bss_598c]          ; 0x5bd6
    sub ah, ah                       ; 0x5bd9
    inc ax                           ; 0x5bdb
    mov cx, 2                        ; 0x5bdc
    cwd                              ; 0x5bdf
    idiv cx                          ; 0x5be0
    mov ax, dx                       ; 0x5be2
    mov byte [bss_598c], al          ; 0x5be4
    push word [bp - 0x000a]          ; 0x5be7
    push word [bp - 0x0008]          ; 0x5bea
    mov ax, 0xb                      ; 0x5bed
    push ax                          ; 0x5bf0
    call api_idx_0052_NJVQ           ; 0x5bf1
    add sp, byte 6                   ; 0x5bf4
    jmp near loc_NSGT                ; 0x5bf7
jumptable_5e7f_case_17:
    mov ax, 1                        ; 0x5bfa
    cmp byte [bss_5962], 1           ; 0x5bfd
    je short @..loc_5bfa.l1          ; 0x5c02
    mov ax, 0                        ; 0x5c04
    cmp byte [bss_5963], 1           ; 0x5c07
    jne short @..loc_5bfa.l1         ; 0x5c0c
    mov ax, 2                        ; 0x5c0e
@..loc_5bfa.l1:
    mov word [bp - 0x0004], ax       ; 0x5c11
    inc ax                           ; 0x5c14
    mov cx, 3                        ; 0x5c15
    cwd                              ; 0x5c18
    idiv cx                          ; 0x5c19
    mov word [bp - 0x0004], dx       ; 0x5c1b
    mov byte [bss_5962], 0           ; 0x5c1e
    mov byte [bss_5963], 0           ; 0x5c23
    mov ax, dx                       ; 0x5c28
    jmp short @..loc_5bfa.l4         ; 0x5c2a
@..loc_5bfa.l2:
    mov byte [bss_5962], 1           ; 0x5c2c
    jmp short @..loc_5bfa.l5         ; 0x5c31
@..loc_5bfa.l3:
    mov byte [bss_5963], 1           ; 0x5c33
    jmp short @..loc_5bfa.l5         ; 0x5c38
@..loc_5bfa.l4:
    cmp ax, strict word 1            ; 0x5c3a
    je short @..loc_5bfa.l2          ; 0x5c3d
    cmp ax, strict word 2            ; 0x5c3f
    je short @..loc_5bfa.l3          ; 0x5c42
@..loc_5bfa.l5:
    push word [bp - 0x000a]          ; 0x5c44
    push word [bp - 0x0008]          ; 0x5c47
    mov ax, 0xc                      ; 0x5c4a
    push ax                          ; 0x5c4d
    call api_idx_0052_NJVQ           ; 0x5c4e
    add sp, byte 6                   ; 0x5c51
    mov ax, word [bp - 0x000e]       ; 0x5c54
    inc ax                           ; 0x5c57
    push ax                          ; 0x5c58
    mov ax, word [bp - 0x000c]       ; 0x5c59
    inc ax                           ; 0x5c5c
    push ax                          ; 0x5c5d
    mov ax, word [bp - 0x000a]       ; 0x5c5e
    dec ax                           ; 0x5c61
    push ax                          ; 0x5c62
    mov ax, word [bp - 0x0008]       ; 0x5c63
    dec ax                           ; 0x5c66
    push ax                          ; 0x5c67
    call thunk_4                     ; 0x5c68
    add sp, byte 8                   ; 0x5c6b
jumptable_5e7f_case_18:
    cmp word [bp - 0x0014], byte 0x12 ; 0x5c6e
    je short @..loc_5bfa.l6          ; 0x5c72
    cmp byte [bss_5963], 1           ; 0x5c74
    jne short @..loc_5bfa.l7         ; 0x5c79
    mov ax, 0x5964                   ; 0x5c7b
    push ax                          ; 0x5c7e
    call aztec_strlen                ; 0x5c7f
    pop cx                           ; 0x5c82
    test ax, ax                      ; 0x5c83
    jne short @..loc_5bfa.l7         ; 0x5c85
@..loc_5bfa.l6:
    call bios_kbd_check              ; 0x5c87
    mov ax, 0xa                      ; 0x5c8a
    push ax                          ; 0x5c8d
    mov ax, word [bp - 0x000a]       ; 0x5c8e
    add ax, strict word 0x44         ; 0x5c91
    push ax                          ; 0x5c94
    mov ax, word [bp - 0x0008]       ; 0x5c95
    add ax, 0xd5                     ; 0x5c98
    push ax                          ; 0x5c9b
    mov ax, 0x5964                   ; 0x5c9c
    push ax                          ; 0x5c9f
    call loc_MPIM                    ; 0x5ca0
    add sp, byte 8                   ; 0x5ca3
    mov ax, 0                        ; 0x5ca6
    push ax                          ; 0x5ca9
    mov ax, 1                        ; 0x5caa
    push ax                          ; 0x5cad
    mov ax, 0                        ; 0x5cae
    push ax                          ; 0x5cb1
    mov ax, 0xa                      ; 0x5cb2
    push ax                          ; 0x5cb5
    mov ax, word [bp - 0x000a]       ; 0x5cb6
    add ax, strict word 0x45         ; 0x5cb9
    push ax                          ; 0x5cbc
    mov ax, word [bp - 0x0008]       ; 0x5cbd
    add ax, 0xd7                     ; 0x5cc0
    push ax                          ; 0x5cc3
    mov ax, 0x5964                   ; 0x5cc4
    push ax                          ; 0x5cc7
    call api_idx_0008_IGKQ           ; 0x5cc8
    add sp, byte 0x0e                ; 0x5ccb
    push word [bp - 0x000a]          ; 0x5cce
    push word [bp - 0x0008]          ; 0x5cd1
    mov ax, 0xd                      ; 0x5cd4
    push ax                          ; 0x5cd7
    call api_idx_0052_NJVQ           ; 0x5cd8
    add sp, byte 6                   ; 0x5cdb
@..loc_5bfa.l7:
    jmp near loc_NSGT                ; 0x5cde
jumptable_5e7f_case_19:
    mov ax, 0xff9d                   ; 0x5ce1
    push ax                          ; 0x5ce4
    mov ax, 0xffff                   ; 0x5ce5
    push ax                          ; 0x5ce8
    mov ax, 0                        ; 0x5ce9
    push ax                          ; 0x5cec
    call loc_IGOG                    ; 0x5ced
    add sp, byte 6                   ; 0x5cf0
    push word [bp - 0x000a]          ; 0x5cf3
    push word [bp - 0x0008]          ; 0x5cf6
    mov ax, 0xf                      ; 0x5cf9
    push ax                          ; 0x5cfc
    call api_idx_0052_NJVQ           ; 0x5cfd
    add sp, byte 6                   ; 0x5d00
    mov al, byte [bss_5979]          ; 0x5d03
    cbw                              ; 0x5d06
    push ax                          ; 0x5d07
    mov al, byte [bss_5978]          ; 0x5d08
    cbw                              ; 0x5d0b
    push ax                          ; 0x5d0c
    call api_idx_000c_GPPG           ; 0x5d0d
    add sp, byte 4                   ; 0x5d10
    jmp near loc_NSGT                ; 0x5d13
jumptable_5e7f_case_20:
    mov ax, 0x63                     ; 0x5d16
    push ax                          ; 0x5d19
    mov ax, 1                        ; 0x5d1a
    push ax                          ; 0x5d1d
    mov ax, 0                        ; 0x5d1e
    push ax                          ; 0x5d21
    call loc_IGOG                    ; 0x5d22
    add sp, byte 6                   ; 0x5d25
    push word [bp - 0x000a]          ; 0x5d28
    push word [bp - 0x0008]          ; 0x5d2b
    mov ax, 0xf                      ; 0x5d2e
    push ax                          ; 0x5d31
    call api_idx_0052_NJVQ           ; 0x5d32
    add sp, byte 6                   ; 0x5d35
    mov al, byte [bss_5979]          ; 0x5d38
    cbw                              ; 0x5d3b
    push ax                          ; 0x5d3c
    mov al, byte [bss_5978]          ; 0x5d3d
    cbw                              ; 0x5d40
    push ax                          ; 0x5d41
    call api_idx_000c_GPPG           ; 0x5d42
    add sp, byte 4                   ; 0x5d45
    jmp near loc_NSGT                ; 0x5d48
jumptable_5e7f_case_21:
    mov ax, 0xff9d                   ; 0x5d4b
    push ax                          ; 0x5d4e
    mov ax, 0xffff                   ; 0x5d4f
    push ax                          ; 0x5d52
    mov ax, 1                        ; 0x5d53
    push ax                          ; 0x5d56
    call loc_IGOG                    ; 0x5d57
    add sp, byte 6                   ; 0x5d5a
    push word [bp - 0x000a]          ; 0x5d5d
    push word [bp - 0x0008]          ; 0x5d60
    mov ax, 0x10                     ; 0x5d63
    push ax                          ; 0x5d66
    call api_idx_0052_NJVQ           ; 0x5d67
    add sp, byte 6                   ; 0x5d6a
    mov al, byte [bss_5979]          ; 0x5d6d
    cbw                              ; 0x5d70
    push ax                          ; 0x5d71
    mov al, byte [bss_5978]          ; 0x5d72
    cbw                              ; 0x5d75
    push ax                          ; 0x5d76
    call api_idx_000c_GPPG           ; 0x5d77
    add sp, byte 4                   ; 0x5d7a
    jmp near loc_NSGT                ; 0x5d7d
jumptable_5e7f_case_22:
    mov ax, 0x63                     ; 0x5d80
    push ax                          ; 0x5d83
    mov ax, 1                        ; 0x5d84
    push ax                          ; 0x5d87
    push ax                          ; 0x5d88
    call loc_IGOG                    ; 0x5d89
    add sp, byte 6                   ; 0x5d8c
    push word [bp - 0x000a]          ; 0x5d8f
    push word [bp - 0x0008]          ; 0x5d92
    mov ax, 0x10                     ; 0x5d95
    push ax                          ; 0x5d98
    call api_idx_0052_NJVQ           ; 0x5d99
    add sp, byte 6                   ; 0x5d9c
    mov al, byte [bss_5979]          ; 0x5d9f
    cbw                              ; 0x5da2
    push ax                          ; 0x5da3
    mov al, byte [bss_5978]          ; 0x5da4
    cbw                              ; 0x5da7
    push ax                          ; 0x5da8
    call api_idx_000c_GPPG           ; 0x5da9
    add sp, byte 4                   ; 0x5dac
    jmp near loc_NSGT                ; 0x5daf
jumptable_5e7f_case_23:
    mov ax, 1                        ; 0x5db2
    push ax                          ; 0x5db5
    push ax                          ; 0x5db6
    mov ax, 6                        ; 0x5db7
    push ax                          ; 0x5dba
    mov ax, word [bp - 0x000a]       ; 0x5dbb
    add ax, strict word 0x7f         ; 0x5dbe
    push ax                          ; 0x5dc1
    mov ax, word [bp - 0x0008]       ; 0x5dc2
    add ax, 0xb2                     ; 0x5dc5
    push ax                          ; 0x5dc8
    call ds_app_JSSU                 ; 0x5dc9
    add sp, byte 0x0a                ; 0x5dcc
    mov ax, 0                        ; 0x5dcf
    push ax                          ; 0x5dd2
    mov ax, 1                        ; 0x5dd3
    push ax                          ; 0x5dd6
    mov ax, 6                        ; 0x5dd7
    push ax                          ; 0x5dda
    mov ax, word [bp - 0x000a]       ; 0x5ddb
    add ax, strict word 0x7f         ; 0x5dde
    push ax                          ; 0x5de1
    mov ax, word [bp - 0x0008]       ; 0x5de2
    add ax, 0xb2                     ; 0x5de5
    push ax                          ; 0x5de8
    call ds_app_JSSU                 ; 0x5de9
    add sp, byte 0x0a                ; 0x5dec
    mov al, byte [bss_5984]          ; 0x5def
    cmp al, byte [bp - 0x0074]       ; 0x5df2
    jne short @..loc_5db2.l1         ; 0x5df5
    mov al, byte [bss_5985]          ; 0x5df7
    cmp al, byte [bp - 0x0073]       ; 0x5dfa
    je short @..loc_5db2.l2          ; 0x5dfd
@..loc_5db2.l1:
    mov ax, 1                        ; 0x5dff
    jmp short @..loc_5db2.l3         ; 0x5e02
@..loc_5db2.l2:
    mov ax, 0                        ; 0x5e04
@..loc_5db2.l3:
    mov word [bss_9050], ax          ; 0x5e07
    mov word [bp - 0x0018], 0        ; 0x5e0a
    call api_idx_0002_QPLT           ; 0x5e0f
    jmp near loc_NSGT                ; 0x5e12
jumptable_5e7f_case_24:
    mov ax, 1                        ; 0x5e15
    push ax                          ; 0x5e18
    push ax                          ; 0x5e19
    mov ax, 6                        ; 0x5e1a
    push ax                          ; 0x5e1d
    mov ax, word [bp - 0x000a]       ; 0x5e1e
    add ax, strict word 0x7f         ; 0x5e21
    push ax                          ; 0x5e24
    mov ax, word [bp - 0x0008]       ; 0x5e25
    add ax, 0xe6                     ; 0x5e28
    push ax                          ; 0x5e2b
    call ds_app_JSSU                 ; 0x5e2c
    add sp, byte 0x0a                ; 0x5e2f
    mov ax, 0                        ; 0x5e32
    push ax                          ; 0x5e35
    mov ax, 1                        ; 0x5e36
    push ax                          ; 0x5e39
    mov ax, 6                        ; 0x5e3a
    push ax                          ; 0x5e3d
    mov ax, word [bp - 0x000a]       ; 0x5e3e
    add ax, strict word 0x7f         ; 0x5e41
    push ax                          ; 0x5e44
    mov ax, word [bp - 0x0008]       ; 0x5e45
    add ax, 0xe6                     ; 0x5e48
    push ax                          ; 0x5e4b
    call ds_app_JSSU                 ; 0x5e4c
    add sp, byte 0x0a                ; 0x5e4f
    mov word [bss_9050], 0           ; 0x5e52
    mov word [bp - 0x0018], 0        ; 0x5e58
    lea si, word [bp - 0x03b6]       ; 0x5e5d
    mov di, bss_5642                 ; 0x5e61
    mov cx, ds                       ; 0x5e64
    mov es, cx                       ; 0x5e66
    mov cx, 0x1a6                    ; 0x5e68
    rep movsw                        ; 0x5e6b
    mov al, byte [bss_5979]          ; 0x5e6d
    cbw                              ; 0x5e70
    push ax                          ; 0x5e71
    mov al, byte [bss_5978]          ; 0x5e72
    cbw                              ; 0x5e75
    push ax                          ; 0x5e76
    call api_idx_000c_GPPG           ; 0x5e77
    add sp, byte 4                   ; 0x5e7a
    jmp short loc_NSGT               ; 0x5e7d
jumptable_5e7f:
    dw jumptable_5e7f_case_0 - IMAGE_BASE + 0x5055 ; 0x5e7f
    dw jumptable_5e7f_case_1 - IMAGE_BASE + 0x5055 ; 0x5e81
    dw jumptable_5e7f_case_2 - IMAGE_BASE + 0x5055 ; 0x5e83
    dw jumptable_5e7f_case_3 - IMAGE_BASE + 0x5055 ; 0x5e85
    dw jumptable_5e7f_case_4 - IMAGE_BASE + 0x5055 ; 0x5e87
    dw jumptable_5e7f_case_5 - IMAGE_BASE + 0x5055 ; 0x5e89
    dw jumptable_5e7f_case_6 - IMAGE_BASE + 0x5055 ; 0x5e8b
    dw jumptable_5e7f_case_7 - IMAGE_BASE + 0x5055 ; 0x5e8d
    dw jumptable_5e7f_case_8 - IMAGE_BASE + 0x5055 ; 0x5e8f
    dw jumptable_5e7f_case_9 - IMAGE_BASE + 0x5055 ; 0x5e91
    dw jumptable_5e7f_case_10 - IMAGE_BASE + 0x5055 ; 0x5e93
    dw jumptable_5e7f_case_11 - IMAGE_BASE + 0x5055 ; 0x5e95
    dw jumptable_5e7f_case_12 - IMAGE_BASE + 0x5055 ; 0x5e97
    dw jumptable_5e7f_case_13 - IMAGE_BASE + 0x5055 ; 0x5e99
    dw jumptable_5e7f_case_14 - IMAGE_BASE + 0x5055 ; 0x5e9b
    dw jumptable_5e7f_case_15 - IMAGE_BASE + 0x5055 ; 0x5e9d
    dw jumptable_5e7f_case_16 - IMAGE_BASE + 0x5055 ; 0x5e9f
    dw jumptable_5e7f_case_17 - IMAGE_BASE + 0x5055 ; 0x5ea1
    dw jumptable_5e7f_case_18 - IMAGE_BASE + 0x5055 ; 0x5ea3
    dw jumptable_5e7f_case_19 - IMAGE_BASE + 0x5055 ; 0x5ea5
    dw jumptable_5e7f_case_20 - IMAGE_BASE + 0x5055 ; 0x5ea7
    dw jumptable_5e7f_case_21 - IMAGE_BASE + 0x5055 ; 0x5ea9
    dw jumptable_5e7f_case_22 - IMAGE_BASE + 0x5055 ; 0x5eab
    dw jumptable_5e7f_case_23 - IMAGE_BASE + 0x5055 ; 0x5ead
    dw jumptable_5e7f_case_24 - IMAGE_BASE + 0x5055 ; 0x5eaf
loc_NKPH:
    cmp ax, strict word 0x19         ; 0x5eb1
    jae short loc_NSGT               ; 0x5eb4
    xchg bx, ax                      ; 0x5eb6
    shl bx, 1                        ; 0x5eb7
    jmp [cs:bx - 0x513a]             ; 0x5eb9
loc_NSGT:
    cmp word [bp - 0x0018], byte 0   ; 0x5ebe
    je short loc_MGJO                ; 0x5ec2
    cmp word [bss_0e32], byte 0      ; 0x5ec4
    jne short loc_MGJO               ; 0x5ec9
    push word [bp - 0x000a]          ; 0x5ecb
    push word [bp - 0x0008]          ; 0x5ece
    push word [bp - 0x0016]          ; 0x5ed1
    call api_idx_0052_IHOT           ; 0x5ed4
    add sp, byte 6                   ; 0x5ed7
loc_MGJO:
    mov ax, word [bp - 0x000e]       ; 0x5eda
    inc ax                           ; 0x5edd
    push ax                          ; 0x5ede
    mov ax, word [bp - 0x000c]       ; 0x5edf
    inc ax                           ; 0x5ee2
    push ax                          ; 0x5ee3
    mov ax, word [bp - 0x000a]       ; 0x5ee4
    dec ax                           ; 0x5ee7
    push ax                          ; 0x5ee8
    mov ax, word [bp - 0x0008]       ; 0x5ee9
    dec ax                           ; 0x5eec
    push ax                          ; 0x5eed
    call thunk_4                     ; 0x5eee
    add sp, byte 8                   ; 0x5ef1
loc_HSST:
    cmp word [bp - 0x0018], byte 0   ; 0x5ef4
    je short loc_GJGH                ; 0x5ef8
    jmp near loc_UKVI                ; 0x5efa
loc_GJGH:
    mov ax, 1                        ; 0x5efd
    push ax                          ; 0x5f00
    push word [bp - 0x006a]          ; 0x5f01
    call ds_app_file_OVOQ            ; 0x5f04
    add sp, byte 4                   ; 0x5f07
    mov ax, word [bp - 0x000e]       ; 0x5f0a
    inc ax                           ; 0x5f0d
    push ax                          ; 0x5f0e
    mov ax, word [bp - 0x000c]       ; 0x5f0f
    inc ax                           ; 0x5f12
    push ax                          ; 0x5f13
    mov ax, word [bp - 0x000a]       ; 0x5f14
    dec ax                           ; 0x5f17
    push ax                          ; 0x5f18
    mov ax, word [bp - 0x0008]       ; 0x5f19
    dec ax                           ; 0x5f1c
    push ax                          ; 0x5f1d
    call thunk_4                     ; 0x5f1e
    add sp, byte 8                   ; 0x5f21
    mov ax, word [bss_9050]          ; 0x5f24
    ret                              ; 0x5f27
loc_HTPL:
    mov ax, 0xfd40                   ; 0x5f28
    call aztec_csav                  ; 0x5f2b
    mov word [bp - 0x0008], 0        ; 0x5f2e
    mov word [bp - 0x0002], 0        ; 0x5f33
    jmp near @..loc_HTPL.l7          ; 0x5f38
@..loc_HTPL.l1:
    mov bx, word [bp - 0x0002]       ; 0x5f3b
    cmp byte [bx - 0x6f8a], 1        ; 0x5f3e
    je short @..loc_HTPL.l2          ; 0x5f43
    jmp near @..loc_HTPL.l6          ; 0x5f45
@..loc_HTPL.l2:
    mov ax, 0                        ; 0x5f48
    push ax                          ; 0x5f4b
    push bx                          ; 0x5f4c
    lea ax, word [bp - 0x0250]       ; 0x5f4d
    push ax                          ; 0x5f51
    call api_idx_0002_LTOL           ; 0x5f52
    add sp, byte 6                   ; 0x5f55
    lea ax, word [bp - 0x0250]       ; 0x5f58
    push ax                          ; 0x5f5c
    mov ax, 0x14                     ; 0x5f5d
    imul word [bp - 0x0008]          ; 0x5f60
    add ax, 0xe38                    ; 0x5f63
    push ax                          ; 0x5f66
    call aztec_strcpy                ; 0x5f67
    add sp, byte 4                   ; 0x5f6a
    mov ax, 0x14                     ; 0x5f6d
    imul word [bp - 0x0008]          ; 0x5f70
    add ax, 0xe38                    ; 0x5f73
    push ax                          ; 0x5f76
    call aztec_strlen                ; 0x5f77
    pop cx                           ; 0x5f7a
    mov word [bp - 0x0004], ax       ; 0x5f7b
@..loc_HTPL.l3:
    cmp word [bp - 0x0004], byte 0x0a ; 0x5f7e
    jge short @..loc_HTPL.l4         ; 0x5f82
    mov ax, 0x14                     ; 0x5f84
    imul word [bp - 0x0008]          ; 0x5f87
    add ax, word [bp - 0x0004]       ; 0x5f8a
    mov bx, ax                       ; 0x5f8d
    mov byte [bx + 0xe38], 0x20      ; 0x5f8f
    inc word [bp - 0x0004]           ; 0x5f94
    jmp short @..loc_HTPL.l3         ; 0x5f97
@..loc_HTPL.l4:
    lea ax, word [bp - 0x02a0]       ; 0x5f99
    push ax                          ; 0x5f9d
    mov al, byte [bp - 0x0018]       ; 0x5f9e
    sub ah, ah                       ; 0x5fa1
    add ax, 0x8c                     ; 0x5fa3
    push ax                          ; 0x5fa6
    call ds_app_mem_VKHV             ; 0x5fa7
    add sp, byte 4                   ; 0x5faa
    mov al, byte [bp - 0x02a0]       ; 0x5fad
    push ax                          ; 0x5fb1
    mov ax, 0x14                     ; 0x5fb2
    imul word [bp - 0x0008]          ; 0x5fb5
    mov bx, ax                       ; 0x5fb8
    pop ax                           ; 0x5fba
    mov byte [bx + 0xe42], al        ; 0x5fbb
    mov byte [bx + 0xe43], 0x2d      ; 0x5fbf
    lea ax, word [bp - 0x02a0]       ; 0x5fc4
    push ax                          ; 0x5fc8
    mov al, byte [bp - 0x0017]       ; 0x5fc9
    sub ah, ah                       ; 0x5fcc
    add ax, strict word 0x78         ; 0x5fce
    push ax                          ; 0x5fd1
    call ds_app_mem_VKHV             ; 0x5fd2
    add sp, byte 4                   ; 0x5fd5
    mov word [bp - 0x0004], 0        ; 0x5fd8
@..loc_HTPL.l5:
    mov bx, word [bp - 0x0004]       ; 0x5fdd
    add bx, bp                       ; 0x5fe0
    mov al, byte [bx - 0x02a0]       ; 0x5fe2
    push ax                          ; 0x5fe6
    mov ax, 0x14                     ; 0x5fe7
    imul word [bp - 0x0008]          ; 0x5fea
    mov cx, ax                       ; 0x5fed
    add ax, word [bp - 0x0004]       ; 0x5fef
    mov bx, ax                       ; 0x5ff2
    pop ax                           ; 0x5ff4
    mov byte [bx + 0xe44], al        ; 0x5ff5
    inc word [bp - 0x0004]           ; 0x5ff9
    mov ax, word [bp - 0x0004]       ; 0x5ffc
    cmp ax, strict word 3            ; 0x5fff
    jl short @..loc_HTPL.l5          ; 0x6002
    mov ax, 0x14                     ; 0x6004
    imul word [bp - 0x0008]          ; 0x6007
    mov bx, ax                       ; 0x600a
    mov byte [bx + 0xe47], 0         ; 0x600c
    mov ax, word [bp - 0x0002]       ; 0x6011
    mov cx, word [bp - 0x0008]       ; 0x6014
    shl cx, 1                        ; 0x6017
    mov bx, cx                       ; 0x6019
    add bx, bp                       ; 0x601b
    mov word [bx - 0x02c0], ax       ; 0x601d
    inc word [bp - 0x0008]           ; 0x6021
@..loc_HTPL.l6:
    inc word [bp - 0x0002]           ; 0x6024
@..loc_HTPL.l7:
    mov ax, word [bp - 0x0002]       ; 0x6027
    cmp ax, word [bss_9070]          ; 0x602a
    jge short @..loc_HTPL.l8         ; 0x602e
    jmp near @..loc_HTPL.l1          ; 0x6030
@..loc_HTPL.l8:
    cmp word [bp - 0x0008], byte 0   ; 0x6033
    jle short @..loc_HTPL.l9         ; 0x6037
    push word [bp - 0x0008]          ; 0x6039
    mov ax, 1                        ; 0x603c
    push ax                          ; 0x603f
    push ax                          ; 0x6040
    mov ax, 0                        ; 0x6041
    push ax                          ; 0x6044
    push word [bp + 0x4]             ; 0x6045
    call api_idx_0038_HKLS           ; 0x6048
    add sp, byte 0x0a                ; 0x604b
    cmp ax, strict word 1            ; 0x604e
    jne short @..loc_HTPL.l9         ; 0x6051
    mov ax, word [bss_904e]          ; 0x6053
    mov word [bp - 0x0006], ax       ; 0x6056
    cmp ax, strict word 0xffff       ; 0x6059
    je short @..loc_HTPL.l9          ; 0x605c
    shl ax, 1                        ; 0x605e
    mov bx, ax                       ; 0x6060
    add bx, bp                       ; 0x6062
    mov ax, word [bx - 0x02c0]       ; 0x6064
    ret                              ; 0x6068
@..loc_HTPL.l9:
    mov ax, 0xffff                   ; 0x6069
    ret                              ; 0x606c
