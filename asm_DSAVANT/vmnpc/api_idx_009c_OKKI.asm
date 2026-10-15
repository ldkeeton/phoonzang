; auto-generated
api_idx_009c_OKKI:
    mov ax, 0xff64                   ; 0x677a
    call aztec_csav                  ; 0x677d
    mov word [bss_95a6], 0           ; 0x6780
    mov word [bss_9d60], 0           ; 0x6786
    mov word [bss_9d64], 0           ; 0x678c
    lea ax, word [bp - 0x0042]       ; 0x6792
    push ax                          ; 0x6795
    mov ax, 0x5e6                    ; 0x6796
    push ax                          ; 0x6799
    call ds_app_mem_VKHV             ; 0x679a
    add sp, byte 4                   ; 0x679d
    lea ax, word [bp - 0x004c]       ; 0x67a0
    push ax                          ; 0x67a3
    mov ax, 0x5e7                    ; 0x67a4
    push ax                          ; 0x67a7
    call ds_app_mem_VKHV             ; 0x67a8
    add sp, byte 4                   ; 0x67ab
    cmp word [bss_91a2], byte 0      ; 0x67ae
    jle short @..api_idx_009c_OKKI.l1 ; 0x67b3
    call loc_TIPL                    ; 0x67b5
    mov ax, 1                        ; 0x67b8
    push ax                          ; 0x67bb
    push word [bss_91a2]             ; 0x67bc
    call api_idx_0100_OJMJ           ; 0x67c0
    add sp, byte 4                   ; 0x67c3
    call loc_KSLL                    ; 0x67c6
@..api_idx_009c_OKKI.l1:
    mov word [bp - 0x000c], 0        ; 0x67c9
loc_SVHO:
    cmp word [bss_93da], byte 0      ; 0x67ce
    jle short loc_QMTN               ; 0x67d3
    cmp byte [bss_91c3], 0           ; 0x67d5
    jbe short loc_QMTN               ; 0x67da
    mov ax, 3                        ; 0x67dc
    push ax                          ; 0x67df
    call ds_app_GGUI                 ; 0x67e0
    pop cx                           ; 0x67e3
    test ax, ax                      ; 0x67e4
    jne short loc_QMTN               ; 0x67e6
    push word [bss_93da]             ; 0x67e8
    call ds_app_IPOK                 ; 0x67ec
    pop cx                           ; 0x67ef
loc_QMTN:
    mov word [bp - 0x0002], 0        ; 0x67f0
loc_PUTR:
    mov bx, word [bp - 0x0002]       ; 0x67f5
    cmp byte [bx - 0x6e46], 0        ; 0x67f8
    jbe short loc_MOML               ; 0x67fd
    mov al, byte [bx - 0x6e46]       ; 0x67ff
    sub ah, ah                       ; 0x6803
    push ax                          ; 0x6805
    push word [bp - 0x000c]          ; 0x6806
    call api_idx_0040_OTMJ           ; 0x6809
    add sp, byte 4                   ; 0x680c
    cmp ax, strict word 1            ; 0x680f
    jne short loc_MOML               ; 0x6812
    cmp word [bss_95a6], byte 1      ; 0x6814
    jne short loc_NUGN_6838          ; 0x6819
    mov word [bss_93dc], 1           ; 0x681b
    mov ax, 0                        ; 0x6821
    push ax                          ; 0x6824
    mov ax, 1                        ; 0x6825
    push ax                          ; 0x6828
    call api_idx_005e_USKO           ; 0x6829
    add sp, byte 4                   ; 0x682c
    mov word [bss_843a], 0           ; 0x682f
    call loc_UHKR                    ; 0x6835
loc_NUGN_6838:
    ret                              ; 0x6838
loc_MOML:
    inc word [bp - 0x0002]           ; 0x6839
    mov ax, word [bp - 0x0002]       ; 0x683c
    cmp ax, strict word 8            ; 0x683f
    jl short loc_PUTR                ; 0x6842
    mov word [bp - 0x0006], 0        ; 0x6844
loc_ROQG:
    mov ax, word [bp - 0x0006]       ; 0x6849
    shl ax, 1                        ; 0x684c
    mov bx, ax                       ; 0x684e
    add bx, bp                       ; 0x6850
    mov word [bx - 0x002e], 0        ; 0x6852
    inc word [bp - 0x0006]           ; 0x6857
    mov ax, word [bp - 0x0006]       ; 0x685a
    cmp ax, strict word 9            ; 0x685d
    jle short loc_ROQG               ; 0x6860
    mov word [bp - 0x0020], 1        ; 0x6862
    mov al, byte [bss_91c7]          ; 0x6867
    sub ah, ah                       ; 0x686a
    mov bx, ax                       ; 0x686c
    mov al, byte [bx - 0x7622]       ; 0x686e
    cbw                              ; 0x6872
    mov word [bp - 0x000a], ax       ; 0x6873
    cmp byte [bss_91c6], 0xff        ; 0x6876
    jne short loc_PRTK               ; 0x687b
    add word [bp - 0x000a], byte 0x23 ; 0x687d
loc_PRTK:
    cmp word [bp - 0x000a], byte 0xe7 ; 0x6881
    jge short loc_OPHV               ; 0x6885
    mov word [bp - 0x0028], 1        ; 0x6887
    mov word [bp - 0x001c], 1        ; 0x688c
    jmp near loc_KIHI                ; 0x6891
loc_OPHV:
    cmp word [bp - 0x000a], byte 0x19 ; 0x6894
    jge short loc_RGSM               ; 0x6898
    mov word [bp - 0x0028], 1        ; 0x689a
    mov word [bp - 0x0026], 1        ; 0x689f
    mov word [bp - 0x0024], 1        ; 0x68a4
    mov word [bp - 0x0022], 1        ; 0x68a9
    mov word [bp - 0x001e], 1        ; 0x68ae
    jmp short loc_KIHI               ; 0x68b3
loc_RGSM:
    cmp word [bss_9136], byte 0x3c   ; 0x68b5
    jl short loc_SQHR                ; 0x68ba
    cmp word [bss_9136], byte 0x3e   ; 0x68bc
    jg short loc_SQHR                ; 0x68c1
    mov word [bp - 0x0020], 0        ; 0x68c3
    jmp short loc_QINR               ; 0x68c8
loc_SQHR:
    mov ax, word [bss_9136]          ; 0x68ca
    cmp ax, strict word 0x2d         ; 0x68cd
    je short loc_IOQN                ; 0x68d0
    cmp ax, strict word 0x4d         ; 0x68d2
    je short loc_IOQN                ; 0x68d5
    cmp ax, strict word 0x51         ; 0x68d7
    je short loc_IOQN                ; 0x68da
    cmp ax, strict word 0x53         ; 0x68dc
    jne short loc_RUIL               ; 0x68df
loc_IOQN:
    mov word [bp - 0x0020], 0        ; 0x68e1
    jmp short loc_RNGR               ; 0x68e6
loc_RUIL:
    mov word [bp - 0x002c], 1        ; 0x68e8
    mov word [bp - 0x002a], 1        ; 0x68ed
    mov word [bp - 0x0026], 1        ; 0x68f2
loc_RNGR:
    mov word [bp - 0x002e], 1        ; 0x68f7
    mov word [bp - 0x0024], 1        ; 0x68fc
loc_QINR:
    mov word [bp - 0x0022], 1        ; 0x6901
    mov word [bp - 0x001e], 1        ; 0x6906
loc_KIHI:
    mov word [bp - 0x001a], 0xffff   ; 0x690b
    mov word [bp - 0x000c], 0xffff   ; 0x6910
    mov ax, 3                        ; 0x6915
    push ax                          ; 0x6918
    call api_idx_0006_NSNR           ; 0x6919
    pop cx                           ; 0x691c
    call api_idx_0054_UJOG           ; 0x691d
    mov ax, 1                        ; 0x6920
    push ax                          ; 0x6923
    mov ax, 0x93                     ; 0x6924
    push ax                          ; 0x6927
    mov ax, 0xa0                     ; 0x6928
    push ax                          ; 0x692b
    lea ax, word [bp - 0x0042]       ; 0x692c
    push ax                          ; 0x692f
    call loc_LKKH                    ; 0x6930
    add sp, byte 8                   ; 0x6933
    mov ax, 0x16                     ; 0x6936
    push ax                          ; 0x6939
    mov ax, 0x9a                     ; 0x693a
    push ax                          ; 0x693d
    mov ax, 0xa0                     ; 0x693e
    push ax                          ; 0x6941
    lea ax, word [bp - 0x004c]       ; 0x6942
    push ax                          ; 0x6945
    call loc_LKKH                    ; 0x6946
    add sp, byte 8                   ; 0x6949
    lea ax, word [bp - 0x002e]       ; 0x694c
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
    call loc_STOR                    ; 0x697c
    add sp, byte 0x18                ; 0x697f
    mov word [bp - 0x0006], ax       ; 0x6982
    lea ax, word [bp - 0x009c]       ; 0x6985
    push ax                          ; 0x6989
    mov ax, word [bp - 0x0006]       ; 0x698a
    add ax, 0x5fa                    ; 0x698d
    push ax                          ; 0x6990
    call ds_app_mem_VKHV             ; 0x6991
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
    lea ax, word [bp - 0x009c]       ; 0x69bb
    push ax                          ; 0x69bf
    call api_idx_000c_KGNV           ; 0x69c0
    add sp, byte 0x14                ; 0x69c3
    mov ax, word [bp - 0x0006]       ; 0x69c6
    jmp near loc_LPIM                ; 0x69c9
loc_MKOO:
    call ds_app_io_VJGM              ; 0x69cc
    mov word [bp - 0x000c], ax       ; 0x69cf
    cmp ax, strict word 0            ; 0x69d2
    jge short loc_UUJK               ; 0x69d5
    jmp near loc_GOIL_6a63           ; 0x69d7
loc_UUJK:
    push ax                          ; 0x69da
    call ds_app_QIQN                 ; 0x69db
    pop cx                           ; 0x69de
    test ax, ax                      ; 0x69df
    jne short loc_QSTG               ; 0x69e1
    jmp near loc_GOIL_6a63           ; 0x69e3
loc_QSTG:
    mov ax, 0x248                    ; 0x69e6
    imul word [bp - 0x000c]          ; 0x69e9
    add ax, word [bss_9136]          ; 0x69ec
    mov bx, ax                       ; 0x69f0
    mov al, byte [bx + 0x5db2]       ; 0x69f2
    cbw                              ; 0x69f6
    push ax                          ; 0x69f7
    mov ax, 0x248                    ; 0x69f8
    imul word [bp - 0x000c]          ; 0x69fb
    mov bx, ax                       ; 0x69fe
    mov al, byte [bx + 0x5d6a]       ; 0x6a00
    sub ah, ah                       ; 0x6a04
    mov cx, ax                       ; 0x6a06
    pop ax                           ; 0x6a08
    add ax, cx                       ; 0x6a09
    add ax, word [bss_964e]          ; 0x6a0b
    jle short loc_TRTJ               ; 0x6a0f
    cmp word [bp - 0x0006], byte 0   ; 0x6a11
    jne short loc_MVIN               ; 0x6a15
    push word [bp - 0x000c]          ; 0x6a17
    call api_idx_006a_RPPT           ; 0x6a1a
    pop cx                           ; 0x6a1d
    jmp short loc_NUMU               ; 0x6a1e
loc_MVIN:
    cmp word [bp - 0x0006], byte 2   ; 0x6a20
    jne short loc_NUMU               ; 0x6a24
    push word [bp - 0x000c]          ; 0x6a26
    call api_idx_0072_TMSV           ; 0x6a29
    pop cx                           ; 0x6a2c
loc_NUMU:
    jmp short loc_GOIL_6a63          ; 0x6a2d
loc_TRTJ:
    lea ax, word [bp - 0x009c]       ; 0x6a2f
    push ax                          ; 0x6a33
    mov ax, 0x604                    ; 0x6a34
    push ax                          ; 0x6a37
    call ds_app_mem_VKHV             ; 0x6a38
    add sp, byte 4                   ; 0x6a3b
    mov ax, 3                        ; 0x6a3e
    push ax                          ; 0x6a41
    call api_idx_0006_NSNR           ; 0x6a42
    pop cx                           ; 0x6a45
    mov ax, 1                        ; 0x6a46
    push ax                          ; 0x6a49
    lea ax, word [bp - 0x009c]       ; 0x6a4a
    push ax                          ; 0x6a4e
    call api_idx_0004_GNJJ           ; 0x6a4f
    add sp, byte 4                   ; 0x6a52
    mov ax, 0                        ; 0x6a55
    push ax                          ; 0x6a58
    push word [bss_905a]             ; 0x6a59
    call api_idx_0004_HTKK           ; 0x6a5d
    add sp, byte 4                   ; 0x6a60
loc_GOIL_6a63:
    jmp near loc_GSSJ                ; 0x6a63
loc_UGJT:
    call ds_app_io_VJGM              ; 0x6a66
    mov word [bp - 0x000c], ax       ; 0x6a69
    cmp ax, strict word 0            ; 0x6a6c
    jl short loc_GOIL_6ad3           ; 0x6a6f
    push ax                          ; 0x6a71
    call ds_app_QIQN                 ; 0x6a72
    pop cx                           ; 0x6a75
    test ax, ax                      ; 0x6a76
    je short loc_GOIL_6ad3           ; 0x6a78
    mov word [bp - 0x0002], 0        ; 0x6a7a
    mov ax, word [bp - 0x0006]       ; 0x6a7f
    jmp short loc_GQJU               ; 0x6a82
loc_SKGV:
    push word [bp - 0x000c]          ; 0x6a84
    call api_idx_0004_JJPH           ; 0x6a87
    pop cx                           ; 0x6a8a
    jmp short loc_KSPV               ; 0x6a8b
loc_GLQI:
    push word [bp - 0x000c]          ; 0x6a8d
    call api_idx_0068_NRJH           ; 0x6a90
    pop cx                           ; 0x6a93
    jmp short loc_KSPV               ; 0x6a94
loc_TSRO:
    push word [bp - 0x000c]          ; 0x6a96
    call api_idx_005e_JRQP           ; 0x6a99
    pop cx                           ; 0x6a9c
    mov word [bp - 0x0002], ax       ; 0x6a9d
    jmp short loc_KSPV               ; 0x6aa0
loc_NJPR:
    push word [bp - 0x000c]          ; 0x6aa2
    call api_idx_00d2_KRHQ           ; 0x6aa5
    pop cx                           ; 0x6aa8
    mov word [bp - 0x0002], ax       ; 0x6aa9
    jmp short loc_KSPV               ; 0x6aac
loc_GQJU:
    cmp ax, strict word 3            ; 0x6aae
    je short loc_NJPR                ; 0x6ab1
    cmp ax, strict word 4            ; 0x6ab3
    je short loc_TSRO                ; 0x6ab6
    cmp ax, strict word 5            ; 0x6ab8
    je short loc_SKGV                ; 0x6abb
    cmp ax, strict word 6            ; 0x6abd
    je short loc_GLQI                ; 0x6ac0
loc_KSPV:
    cmp word [bp - 0x0002], byte 0xff ; 0x6ac2
    jne short loc_GOIL_6ad3          ; 0x6ac6
    mov word [bss_95a6], 1           ; 0x6ac8
    mov word [bp - 0x0006], 8        ; 0x6ace
loc_GOIL_6ad3:
    jmp near loc_GSSJ                ; 0x6ad3
loc_MNPQ:
    mov ax, 0                        ; 0x6ad6
    cmp word [bss_9d66], byte 1      ; 0x6ad9
    jne short loc_RHTG               ; 0x6ade
    mov ax, 0xffff                   ; 0x6ae0
loc_RHTG:
    mov word [bp - 0x0002], ax       ; 0x6ae3
    cmp word [bss_9d66], byte 0xff   ; 0x6ae6
    jne short loc_HIPH               ; 0x6aeb
    cmp byte [bss_91c6], 0xff        ; 0x6aed
    je short loc_RIKH                ; 0x6af2
    call api_idx_0004_PIHR           ; 0x6af4
    mov word [bp - 0x0002], ax       ; 0x6af7
    jmp short loc_RUSQ               ; 0x6afa
loc_RIKH:
    mov word [bp - 0x0008], 0        ; 0x6afc
loc_UMVO:
    push word [bp - 0x0008]          ; 0x6b01
    mov ax, 0x8822                   ; 0x6b04
    push ax                          ; 0x6b07
    call ds_leaf_loc_KIMU            ; 0x6b08
    add sp, byte 4                   ; 0x6b0b
    test ax, ax                      ; 0x6b0e
    je short loc_VKOR                ; 0x6b10
    push word [bp - 0x0008]          ; 0x6b12
    call api_idx_0002_JPPG           ; 0x6b15
    pop cx                           ; 0x6b18
    mov word [bp - 0x0002], 1        ; 0x6b19
loc_VKOR:
    inc word [bp - 0x0008]           ; 0x6b1e
    mov ax, word [bp - 0x0008]       ; 0x6b21
    cmp ax, strict word 0xb          ; 0x6b24
    jl short loc_UMVO                ; 0x6b27
loc_RUSQ:
    mov ax, word [bp - 0x0002]       ; 0x6b29
    mov word [bss_9d66], ax          ; 0x6b2c
loc_HIPH:
    cmp word [bp - 0x0002], byte 0   ; 0x6b2f
    jg short loc_GOIL_6b5a           ; 0x6b33
    mov ax, 0x93f0                   ; 0x6b35
    push ax                          ; 0x6b38
    mov ax, 0x66d                    ; 0x6b39
    cmp word [bp - 0x0002], byte 0   ; 0x6b3c
    jne short loc_GGLP               ; 0x6b40
    mov ax, 0x669                    ; 0x6b42
loc_GGLP:
    push ax                          ; 0x6b45
    call ds_app_mem_VKHV             ; 0x6b46
    add sp, byte 4                   ; 0x6b49
    mov ax, 1                        ; 0x6b4c
    push ax                          ; 0x6b4f
    mov ax, 0x93f0                   ; 0x6b50
    push ax                          ; 0x6b53
    call loc_JJJH                    ; 0x6b54
    add sp, byte 4                   ; 0x6b57
loc_GOIL_6b5a:
    jmp near loc_GSSJ                ; 0x6b5a
loc_RPTH:
    mov word [bp - 0x0002], 0        ; 0x6b5d
    jmp short loc_TLNU               ; 0x6b62
loc_MRPN:
    mov ax, 0x248                    ; 0x6b64
    imul word [bp - 0x0002]          ; 0x6b67
    add ax, word [bss_9136]          ; 0x6b6a
    mov bx, ax                       ; 0x6b6e
    cmp byte [bx + 0x5db2], 0        ; 0x6b70
    jle short loc_ULMG               ; 0x6b75
    mov al, byte [bx + 0x5db2]       ; 0x6b77
    cbw                              ; 0x6b7b
    mov cx, 5                        ; 0x6b7c
    cwd                              ; 0x6b7f
    idiv cx                          ; 0x6b80
    mov byte [bx + 0x5db2], al       ; 0x6b82
loc_ULMG:
    mov ax, 0                        ; 0x6b86
    push ax                          ; 0x6b89
    mov ax, 0xf                      ; 0x6b8a
    push ax                          ; 0x6b8d
    call ds_app_GGUI                 ; 0x6b8e
    pop cx                           ; 0x6b91
    mov cx, ax                       ; 0x6b92
    add ax, strict word 0xf          ; 0x6b94
    mov cx, ax                       ; 0x6b97
    mov ax, 0                        ; 0x6b99
    sub ax, cx                       ; 0x6b9c
    push ax                          ; 0x6b9e
    push word [bp - 0x0002]          ; 0x6b9f
    call loc_MQOK                    ; 0x6ba2
    add sp, byte 6                   ; 0x6ba5
    inc word [bp - 0x0002]           ; 0x6ba8
loc_TLNU:
    mov ax, word [bp - 0x0002]       ; 0x6bab
    cmp ax, word [bss_69c8]          ; 0x6bae
    jl short loc_MRPN                ; 0x6bb2
    mov al, byte [bss_91c7]          ; 0x6bb4
    sub ah, ah                       ; 0x6bb7
    mov bx, ax                       ; 0x6bb9
    cmp byte [bx - 0x7622], 0        ; 0x6bbb
    jle short loc_TKHT               ; 0x6bc0
    mov al, byte [bx - 0x7622]       ; 0x6bc2
    cbw                              ; 0x6bc6
    mov cx, 5                        ; 0x6bc7
    cwd                              ; 0x6bca
    idiv cx                          ; 0x6bcb
    mov byte [bx - 0x7622], al       ; 0x6bcd
loc_TKHT:
    mov ax, 0xf                      ; 0x6bd1
    push ax                          ; 0x6bd4
    call ds_app_GGUI                 ; 0x6bd5
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
    call loc_MQOK                    ; 0x6beb
    add sp, byte 6                   ; 0x6bee
    mov ax, 0                        ; 0x6bf1
    push ax                          ; 0x6bf4
    call loc_PPOM                    ; 0x6bf5
    pop cx                           ; 0x6bf8
    mov word [bp - 0x0006], 8        ; 0x6bf9
    jmp short loc_GSSJ               ; 0x6bfe
