; auto-generated
api_idx_0014:
    mov ax, 0xffec                   ; 0x06da
    call aztec_csav                  ; 0x06dd
    mov ax, word [bss_0e10]          ; 0x06e0
    mov word [bp - 0x0004], ax       ; 0x06e3
    mov word [bp - 0x0002], 0        ; 0x06e6
    jmp near @..api_idx_0014.l10     ; 0x06eb
@..api_idx_0014.l1:
    mov bx, word [bp - 0x0004]       ; 0x06ee
    mov al, byte [bx]                ; 0x06f1
    sub ah, ah                       ; 0x06f3
    cmp ax, word [bss_830c]          ; 0x06f5
    je short @..api_idx_0014.l2      ; 0x06f9
    jmp near @..api_idx_0014.l9      ; 0x06fb
@..api_idx_0014.l2:
    cmp byte [bx + 0x1], 6           ; 0x06fe
    jne short @..api_idx_0014.l3     ; 0x0702
    mov ax, word [bx + 0x4]          ; 0x0704
    mov cx, word [bx + 0x2]          ; 0x0707
    shl cx, 1                        ; 0x070a
    mov si, cx                       ; 0x070c
    mov bx, word [bss_0e12]          ; 0x070e
loc_0712:
    mov word [bx + si + 0x3c0], ax   ; 0x0712
    jmp near @..api_idx_0014.l9      ; 0x0716
@..api_idx_0014.l3:
    mov bx, word [bp - 0x0004]       ; 0x0719
    mov ax, word [bx + 0x2]          ; 0x071c
    mov cx, 0x100                    ; 0x071f
    cwd                              ; 0x0722
    idiv cx                          ; 0x0723
    mov word [bp - 0x0010], ax       ; 0x0725
    mov ax, word [bx + 0x2]          ; 0x0728
    cwd                              ; 0x072b
    idiv cx                          ; 0x072c
    mov word [bp - 0x0012], dx       ; 0x072e
    mov ax, word [bp - 0x0010]       ; 0x0731
    mov word [bp - 0x0006], ax       ; 0x0734
    mov ax, dx                       ; 0x0737
    mov cx, 0x10                     ; 0x0739
    cwd                              ; 0x073c
    idiv cx                          ; 0x073d
    mov word [bp - 0x0008], ax       ; 0x073f
    mov word [bp - 0x000a], dx       ; 0x0742
    mov ax, word [bp - 0x0006]       ; 0x0745
    mov cx, 6                        ; 0x0748
    shl ax, cl                       ; 0x074b
    shl dx, 1                        ; 0x074d
    shl dx, 1                        ; 0x074f
    shl dx, 1                        ; 0x0751
    mov cx, dx                       ; 0x0753
    add ax, cx                       ; 0x0755
    mov cx, ax                       ; 0x0757
    mov ax, word [bp - 0x0008]       ; 0x0759
    add cx, ax                       ; 0x075c
    mov word [bp - 0x0014], cx       ; 0x075e
    mov ax, word [bx + 0x4]          ; 0x0761
    mov cx, 0x100                    ; 0x0764
    cwd                              ; 0x0767
    idiv cx                          ; 0x0768
    mov word [bp - 0x0010], ax       ; 0x076a
    mov ax, word [bx + 0x4]          ; 0x076d
    cwd                              ; 0x0770
    idiv cx                          ; 0x0771
    mov word [bp - 0x0012], dx       ; 0x0773
    mov bx, word [bss_0e14]          ; 0x0776
    mov si, word [bp - 0x0006]       ; 0x077a
    mov al, byte [bx + si + 0x490]   ; 0x077d
    sub ah, ah                       ; 0x0781
    add ax, word [bp - 0x0008]       ; 0x0783
    mov word [bp - 0x000c], ax       ; 0x0786
    mov al, byte [bx + si + 0x4a0]   ; 0x0789
    sub ah, ah                       ; 0x078d
    add ax, word [bp - 0x000a]       ; 0x078f
    mov word [bp - 0x000e], ax       ; 0x0792
    mov bx, word [bp - 0x0004]       ; 0x0795
    mov al, byte [bx + 0x1]          ; 0x0798
    sub ah, ah                       ; 0x079b
    jmp near @..api_idx_0014.l8      ; 0x079d
jumptable_099e_case_0:
    mov ax, word [bp - 0x0010]       ; 0x07a0
    mov cx, 0x10                     ; 0x07a3
    cwd                              ; 0x07a6
    idiv cx                          ; 0x07a7
    push ax                          ; 0x07a9
    mov ax, 4                        ; 0x07aa
    push ax                          ; 0x07ad
    push word [bp - 0x0014]          ; 0x07ae
    mov ax, word [bss_0e14]          ; 0x07b1
    add ax, 0x90                     ; 0x07b4
    push ax                          ; 0x07b7
    call ds_leaf_loc_3eeb            ; 0x07b8
    add sp, byte 8                   ; 0x07bb
    mov ax, word [bp - 0x0010]       ; 0x07be
    mov cx, 0x10                     ; 0x07c1
    cwd                              ; 0x07c4
    idiv cx                          ; 0x07c5
    mov ax, dx                       ; 0x07c7
    push ax                          ; 0x07c9
    mov ax, 4                        ; 0x07ca
    push ax                          ; 0x07cd
    push word [bp - 0x0014]          ; 0x07ce
    mov ax, word [bss_0e14]          ; 0x07d1
    add ax, 0x290                    ; 0x07d4
    push ax                          ; 0x07d7
    call ds_leaf_loc_3eeb            ; 0x07d8
    add sp, byte 8                   ; 0x07db
    mov ax, word [bp - 0x000e]       ; 0x07de
    dec ax                           ; 0x07e1
    push ax                          ; 0x07e2
    push word [bp - 0x000c]          ; 0x07e3
    lea ax, word [bp - 0x0006]       ; 0x07e6
    push ax                          ; 0x07e9
    lea ax, word [bp - 0x000a]       ; 0x07ea
    push ax                          ; 0x07ed
    lea ax, word [bp - 0x0008]       ; 0x07ee
    push ax                          ; 0x07f1
    call api_idx_0004_6              ; 0x07f2
    add sp, byte 0x0a                ; 0x07f5
    test ax, ax                      ; 0x07f8
    jne short @..api_idx_0014.l4     ; 0x07fa
    mov ax, word [bp - 0x0006]       ; 0x07fc
    mov cx, 6                        ; 0x07ff
    shl ax, cl                       ; 0x0802
    mov cx, word [bp - 0x000a]       ; 0x0804
    shl cx, 1                        ; 0x0807
    shl cx, 1                        ; 0x0809
    shl cx, 1                        ; 0x080b
    add ax, cx                       ; 0x080d
    add ax, word [bp - 0x0008]       ; 0x080f
    mov word [bp - 0x0014], ax       ; 0x0812
    mov ax, word [bp - 0x0012]       ; 0x0815
    mov cx, 0x10                     ; 0x0818
    cwd                              ; 0x081b
    idiv cx                          ; 0x081c
    push ax                          ; 0x081e
    mov ax, 4                        ; 0x081f
    push ax                          ; 0x0822
    push word [bp - 0x0014]          ; 0x0823
    mov ax, word [bss_0e14]          ; 0x0826
    add ax, 0x90                     ; 0x0829
    push ax                          ; 0x082c
    call ds_leaf_loc_3eeb            ; 0x082d
    add sp, byte 8                   ; 0x0830
@..api_idx_0014.l4:
    push word [bp - 0x000e]          ; 0x0833
    mov ax, word [bp - 0x000c]       ; 0x0836
    dec ax                           ; 0x0839
    push ax                          ; 0x083a
    lea ax, word [bp - 0x0006]       ; 0x083b
    push ax                          ; 0x083e
    lea ax, word [bp - 0x000a]       ; 0x083f
    push ax                          ; 0x0842
    lea ax, word [bp - 0x0008]       ; 0x0843
    push ax                          ; 0x0846
    call api_idx_0004_6              ; 0x0847
    add sp, byte 0x0a                ; 0x084a
    test ax, ax                      ; 0x084d
    jne short @..api_idx_0014.l5     ; 0x084f
    mov ax, word [bp - 0x0006]       ; 0x0851
    mov cx, 6                        ; 0x0854
    shl ax, cl                       ; 0x0857
    mov cx, word [bp - 0x000a]       ; 0x0859
    shl cx, 1                        ; 0x085c
    shl cx, 1                        ; 0x085e
    shl cx, 1                        ; 0x0860
    add ax, cx                       ; 0x0862
    add ax, word [bp - 0x0008]       ; 0x0864
    mov word [bp - 0x0014], ax       ; 0x0867
    mov ax, word [bp - 0x0012]       ; 0x086a
    mov cx, 0x10                     ; 0x086d
    cwd                              ; 0x0870
    idiv cx                          ; 0x0871
    mov ax, dx                       ; 0x0873
    push ax                          ; 0x0875
    mov ax, 4                        ; 0x0876
    push ax                          ; 0x0879
    push word [bp - 0x0014]          ; 0x087a
    mov ax, word [bss_0e14]          ; 0x087d
    add ax, 0x290                    ; 0x0880
    push ax                          ; 0x0883
    call ds_leaf_loc_3eeb            ; 0x0884
    add sp, byte 8                   ; 0x0887
@..api_idx_0014.l5:
    jmp near @..api_idx_0014.l9      ; 0x088a
jumptable_099e_case_1:
    mov bx, word [bp - 0x0004]       ; 0x088d
    push word [bx + 0x4]             ; 0x0890
    mov ax, 4                        ; 0x0893
    push ax                          ; 0x0896
    push word [bp - 0x0014]          ; 0x0897
    mov ax, word [bss_0e14]          ; 0x089a
    add ax, 0x90                     ; 0x089d
    push ax                          ; 0x08a0
    call ds_leaf_loc_3eeb            ; 0x08a1
    add sp, byte 8                   ; 0x08a4
    jmp near @..api_idx_0014.l9      ; 0x08a7
jumptable_099e_case_2:
    mov bx, word [bp - 0x0004]       ; 0x08aa
    push word [bx + 0x4]             ; 0x08ad
    mov ax, 4                        ; 0x08b0
    push ax                          ; 0x08b3
    push word [bp - 0x0014]          ; 0x08b4
    mov ax, word [bss_0e14]          ; 0x08b7
    add ax, 0x290                    ; 0x08ba
    push ax                          ; 0x08bd
    call ds_leaf_loc_3eeb            ; 0x08be
    add sp, byte 8                   ; 0x08c1
    jmp near @..api_idx_0014.l9      ; 0x08c4
jumptable_099e_case_3:
    mov ax, word [bp - 0x000e]       ; 0x08c7
    dec ax                           ; 0x08ca
    push ax                          ; 0x08cb
    push word [bp - 0x000c]          ; 0x08cc
    lea ax, word [bp - 0x0006]       ; 0x08cf
    push ax                          ; 0x08d2
    lea ax, word [bp - 0x000a]       ; 0x08d3
    push ax                          ; 0x08d6
    lea ax, word [bp - 0x0008]       ; 0x08d7
    push ax                          ; 0x08da
    call api_idx_0004_6              ; 0x08db
    add sp, byte 0x0a                ; 0x08de
    test ax, ax                      ; 0x08e1
    jne short @..api_idx_0014.l6     ; 0x08e3
    mov ax, word [bp - 0x0006]       ; 0x08e5
    mov cx, 6                        ; 0x08e8
    shl ax, cl                       ; 0x08eb
    mov cx, word [bp - 0x000a]       ; 0x08ed
    shl cx, 1                        ; 0x08f0
    shl cx, 1                        ; 0x08f2
    shl cx, 1                        ; 0x08f4
    add ax, cx                       ; 0x08f6
    add ax, word [bp - 0x0008]       ; 0x08f8
    mov word [bp - 0x0014], ax       ; 0x08fb
    mov bx, word [bp - 0x0004]       ; 0x08fe
    push word [bx + 0x4]             ; 0x0901
    mov ax, 4                        ; 0x0904
    push ax                          ; 0x0907
    push word [bp - 0x0014]          ; 0x0908
    mov ax, word [bss_0e14]          ; 0x090b
    add ax, 0x90                     ; 0x090e
    push ax                          ; 0x0911
    call ds_leaf_loc_3eeb            ; 0x0912
    add sp, byte 8                   ; 0x0915
@..api_idx_0014.l6:
    jmp near @..api_idx_0014.l9      ; 0x0918
jumptable_099e_case_4:
    push word [bp - 0x000e]          ; 0x091b
    mov ax, word [bp - 0x000c]       ; 0x091e
    dec ax                           ; 0x0921
    push ax                          ; 0x0922
    lea ax, word [bp - 0x0006]       ; 0x0923
    push ax                          ; 0x0926
    lea ax, word [bp - 0x000a]       ; 0x0927
    push ax                          ; 0x092a
    lea ax, word [bp - 0x0008]       ; 0x092b
    push ax                          ; 0x092e
    call api_idx_0004_6              ; 0x092f
    add sp, byte 0x0a                ; 0x0932
    test ax, ax                      ; 0x0935
    jne short @..api_idx_0014.l7     ; 0x0937
    mov ax, word [bp - 0x0006]       ; 0x0939
    mov cx, 6                        ; 0x093c
    shl ax, cl                       ; 0x093f
    mov cx, word [bp - 0x000a]       ; 0x0941
    shl cx, 1                        ; 0x0944
    shl cx, 1                        ; 0x0946
    shl cx, 1                        ; 0x0948
    add ax, cx                       ; 0x094a
    add ax, word [bp - 0x0008]       ; 0x094c
    mov word [bp - 0x0014], ax       ; 0x094f
    mov bx, word [bp - 0x0004]       ; 0x0952
    push word [bx + 0x4]             ; 0x0955
    mov ax, 4                        ; 0x0958
    push ax                          ; 0x095b
    push word [bp - 0x0014]          ; 0x095c
    mov ax, word [bss_0e14]          ; 0x095f
    add ax, 0x290                    ; 0x0962
    push ax                          ; 0x0965
    call ds_leaf_loc_3eeb            ; 0x0966
    add sp, byte 8                   ; 0x0969
@..api_idx_0014.l7:
    jmp short @..api_idx_0014.l9     ; 0x096c
jumptable_099e_case_5:
    push word [bp - 0x0010]          ; 0x096e
    mov ax, 6                        ; 0x0971
    push ax                          ; 0x0974
    push word [bp - 0x0014]          ; 0x0975
    mov ax, word [bss_0e14]          ; 0x0978
    add ax, 0x4b0                    ; 0x097b
    push ax                          ; 0x097e
    call ds_leaf_loc_3eeb            ; 0x097f
    add sp, byte 8                   ; 0x0982
    push word [bp - 0x0012]          ; 0x0985
    mov ax, 2                        ; 0x0988
    push ax                          ; 0x098b
    push word [bp - 0x0014]          ; 0x098c
    mov ax, word [bss_0e14]          ; 0x098f
    add ax, 0x7b0                    ; 0x0992
    push ax                          ; 0x0995
    call ds_leaf_loc_3eeb            ; 0x0996
    add sp, byte 8                   ; 0x0999
    jmp short @..api_idx_0014.l9     ; 0x099c
jumptable_099e:
    dw jumptable_099e_case_0 - IMAGE_BASE + 0x5055 ; 0x099e
    dw jumptable_099e_case_1 - IMAGE_BASE + 0x5055 ; 0x09a0
    dw jumptable_099e_case_2 - IMAGE_BASE + 0x5055 ; 0x09a2
    dw jumptable_099e_case_3 - IMAGE_BASE + 0x5055 ; 0x09a4
    dw jumptable_099e_case_4 - IMAGE_BASE + 0x5055 ; 0x09a6
    dw jumptable_099e_case_5 - IMAGE_BASE + 0x5055 ; 0x09a8
@..api_idx_0014.l8:
    cmp ax, strict word 6            ; 0x09aa
    jae short @..api_idx_0014.l9     ; 0x09ad
    xchg bx, ax                      ; 0x09af
    shl bx, 1                        ; 0x09b0
    jmp [cs:bx + 0x59e5]             ; 0x09b2
@..api_idx_0014.l9:
    add word [bp - 0x0004], byte 6   ; 0x09b7
    inc word [bp - 0x0002]           ; 0x09bb
@..api_idx_0014.l10:
    mov ax, word [bp - 0x0002]       ; 0x09be
    cmp ax, word [bss_590e]          ; 0x09c1
    jge short @..api_idx_0014.l11    ; 0x09c5
    jmp near @..api_idx_0014.l1      ; 0x09c7
@..api_idx_0014.l11:
    ret                              ; 0x09ca
loc_09cb:
    mov ax, 0                        ; 0x09cb
    call aztec_csav                  ; 0x09ce
    mov ax, 0                        ; 0x09d1
    push ax                          ; 0x09d4
    push word [bss_830c]             ; 0x09d5
    push word [bss_0e14]             ; 0x09d9
    mov ax, 2                        ; 0x09dd
    push ax                          ; 0x09e0
    call ds_app_file_0883            ; 0x09e1
    add sp, byte 8                   ; 0x09e4
    mov ax, 0                        ; 0x09e7
    push ax                          ; 0x09ea
    push word [bss_830c]             ; 0x09eb
    push word [bss_0e12]             ; 0x09ef
    mov ax, 3                        ; 0x09f3
    push ax                          ; 0x09f6
    call ds_app_file_0883            ; 0x09f7
    add sp, byte 8                   ; 0x09fa
    mov ax, 0x80                     ; 0x09fd
    push ax                          ; 0x0a00
    push ds                          ; 0x0a01
    mov ax, 0x8b7e                   ; 0x0a02
    push ax                          ; 0x0a05
    mov ax, word [bss_830c]          ; 0x0a06
    mov cx, 7                        ; 0x0a09
    shl ax, cl                       ; 0x0a0c
    mov cx, ax                       ; 0x0a0e
    mov ax, word [bss_0e1a]          ; 0x0a10
    mov dx, word [bss_0e1c]          ; 0x0a13
    add ax, cx                       ; 0x0a17
    push dx                          ; 0x0a19
    push ax                          ; 0x0a1a
    call app_memmove                 ; 0x0a1b
    add sp, byte 0x0a                ; 0x0a1e
    mov ax, 0x80                     ; 0x0a21
    push ax                          ; 0x0a24
    push ds                          ; 0x0a25
    mov ax, 0x8afe                   ; 0x0a26
    push ax                          ; 0x0a29
    mov ax, word [bss_830c]          ; 0x0a2a
    mov cx, 7                        ; 0x0a2d
    shl ax, cl                       ; 0x0a30
    mov cx, ax                       ; 0x0a32
    mov ax, word [bss_0e16]          ; 0x0a34
    mov dx, word [bss_0e18]          ; 0x0a37
    add ax, cx                       ; 0x0a3b
    push dx                          ; 0x0a3d
    push ax                          ; 0x0a3e
    call app_memmove                 ; 0x0a3f
    add sp, byte 0x0a                ; 0x0a42
    call api_idx_0014                ; 0x0a45
    mov bx, word [bss_0e14]          ; 0x0a48
    mov si, word [bss_8f3e]          ; 0x0a4c
    mov al, byte [bx + si + 0x490]   ; 0x0a50
    sub ah, ah                       ; 0x0a54
    add ax, word [bss_8f42]          ; 0x0a56
    mov word [bss_8f46], ax          ; 0x0a5a
    mov al, byte [bx + si + 0x4a0]   ; 0x0a5d
    sub ah, ah                       ; 0x0a61
    add ax, word [bss_8f40]          ; 0x0a63
    mov word [bss_8f44], ax          ; 0x0a67
    call api_idx_0002_5              ; 0x0a6a
    ret                              ; 0x0a6d
