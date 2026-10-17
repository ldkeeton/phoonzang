; auto-generated
loc_RMSR:
    mov ax, 0                        ; 0x5706
    call aztec_csav                  ; 0x5709
    mov ax, 0x248                    ; 0x570c
    imul word [bp + 0x4]             ; 0x570f
    mov bx, ax                       ; 0x5712
    mov al, byte [bx + 0x5e2d]       ; 0x5714
    sub ah, ah                       ; 0x5718
    jmp near loc_5a7c                ; 0x571a
jumptable_5a60_case_0:
    mov ax, 3                        ; 0x571d
    push ax                          ; 0x5720
    mov ax, 6                        ; 0x5721
    push ax                          ; 0x5724
    mov ax, 0xa                      ; 0x5725
    push ax                          ; 0x5728
    push word [bp + 0x4]             ; 0x5729
    call api_idx_001c_ITKQ           ; 0x572c
    add sp, byte 8                   ; 0x572f
    jmp near loc_PLIR                ; 0x5732
jumptable_5a60_case_1:
    mov ax, 0xc                      ; 0x5735
    push ax                          ; 0x5738
    mov ax, 4                        ; 0x5739
    push ax                          ; 0x573c
    mov ax, 3                        ; 0x573d
    push ax                          ; 0x5740
    push word [bp + 0x4]             ; 0x5741
    call api_idx_001c_ITKQ           ; 0x5744
    add sp, byte 8                   ; 0x5747
    mov ax, 2                        ; 0x574a
    push ax                          ; 0x574d
    mov ax, 3                        ; 0x574e
    push ax                          ; 0x5751
    push word [bp + 0x4]             ; 0x5752
    call api_idx_0002_USJO           ; 0x5755
    add sp, byte 6                   ; 0x5758
    push ax                          ; 0x575b
    mov ax, 0x248                    ; 0x575c
    imul word [bp + 0x4]             ; 0x575f
    mov bx, ax                       ; 0x5762
    pop ax                           ; 0x5764
    mov byte [bx + 0x5d8c], al       ; 0x5765
    jmp near loc_PLIR                ; 0x5769
jumptable_5a60_case_2:
    mov ax, 0xc                      ; 0x576c
    push ax                          ; 0x576f
    mov ax, 4                        ; 0x5770
    push ax                          ; 0x5773
    mov ax, 3                        ; 0x5774
    push ax                          ; 0x5777
    push word [bp + 0x4]             ; 0x5778
    call api_idx_001c_ITKQ           ; 0x577b
    add sp, byte 8                   ; 0x577e
    mov ax, 2                        ; 0x5781
    push ax                          ; 0x5784
    mov ax, 3                        ; 0x5785
    push ax                          ; 0x5788
    push word [bp + 0x4]             ; 0x5789
    call api_idx_0002_USJO           ; 0x578c
    add sp, byte 6                   ; 0x578f
    push ax                          ; 0x5792
    mov ax, 0x248                    ; 0x5793
    imul word [bp + 0x4]             ; 0x5796
    mov bx, ax                       ; 0x5799
    pop ax                           ; 0x579b
    mov byte [bx + 0x5d8a], al       ; 0x579c
    jmp near loc_PLIR                ; 0x57a0
jumptable_5a60_case_3:
    mov ax, 4                        ; 0x57a3
    push ax                          ; 0x57a6
    mov ax, 0xa                      ; 0x57a7
    push ax                          ; 0x57aa
    mov ax, 5                        ; 0x57ab
    push ax                          ; 0x57ae
    push word [bp + 0x4]             ; 0x57af
    call api_idx_001c_ITKQ           ; 0x57b2
    add sp, byte 8                   ; 0x57b5
    mov ax, 2                        ; 0x57b8
    push ax                          ; 0x57bb
    mov ax, 1                        ; 0x57bc
    push ax                          ; 0x57bf
    push word [bp + 0x4]             ; 0x57c0
    call api_idx_0002_USJO           ; 0x57c3
    add sp, byte 6                   ; 0x57c6
    push ax                          ; 0x57c9
    mov ax, 0x248                    ; 0x57ca
    imul word [bp + 0x4]             ; 0x57cd
    mov bx, ax                       ; 0x57d0
    pop ax                           ; 0x57d2
    mov byte [bx + 0x5d7c], al       ; 0x57d3
    jmp near loc_PLIR                ; 0x57d7
jumptable_5a60_case_4:
    mov ax, 5                        ; 0x57da
    push ax                          ; 0x57dd
    mov ax, 7                        ; 0x57de
    push ax                          ; 0x57e1
    push ax                          ; 0x57e2
    push word [bp + 0x4]             ; 0x57e3
    call api_idx_001c_ITKQ           ; 0x57e6
    add sp, byte 8                   ; 0x57e9
    mov ax, 3                        ; 0x57ec
    push ax                          ; 0x57ef
    mov ax, 0                        ; 0x57f0
    push ax                          ; 0x57f3
    push word [bp + 0x4]             ; 0x57f4
    call api_idx_0002_USJO           ; 0x57f7
    add sp, byte 6                   ; 0x57fa
    push ax                          ; 0x57fd
    mov ax, 0x248                    ; 0x57fe
    imul word [bp + 0x4]             ; 0x5801
    mov bx, ax                       ; 0x5804
    pop ax                           ; 0x5806
    mov byte [bx + 0x5d73], al       ; 0x5807
    mov ax, 3                        ; 0x580b
    push ax                          ; 0x580e
    mov ax, 1                        ; 0x580f
    push ax                          ; 0x5812
    push word [bp + 0x4]             ; 0x5813
    call api_idx_0002_USJO           ; 0x5816
    add sp, byte 6                   ; 0x5819
    push ax                          ; 0x581c
    mov ax, 0x248                    ; 0x581d
    imul word [bp + 0x4]             ; 0x5820
    mov bx, ax                       ; 0x5823
    pop ax                           ; 0x5825
    mov byte [bx + 0x5d78], al       ; 0x5826
    jmp near loc_PLIR                ; 0x582a
jumptable_5a60_case_6:
    mov ax, 6                        ; 0x582d
    push ax                          ; 0x5830
    mov ax, 7                        ; 0x5831
    push ax                          ; 0x5834
    mov ax, 6                        ; 0x5835
    push ax                          ; 0x5838
    push word [bp + 0x4]             ; 0x5839
    call api_idx_001c_ITKQ           ; 0x583c
    add sp, byte 8                   ; 0x583f
    mov ax, 2                        ; 0x5842
    push ax                          ; 0x5845
    mov ax, 1                        ; 0x5846
    push ax                          ; 0x5849
    push word [bp + 0x4]             ; 0x584a
    call api_idx_0002_USJO           ; 0x584d
    add sp, byte 6                   ; 0x5850
    push ax                          ; 0x5853
    mov ax, 0x248                    ; 0x5854
    imul word [bp + 0x4]             ; 0x5857
    mov bx, ax                       ; 0x585a
    pop ax                           ; 0x585c
    mov byte [bx + 0x5d79], al       ; 0x585d
    jmp near loc_PLIR                ; 0x5861
jumptable_5a60_case_5:
    mov ax, 0xc                      ; 0x5864
    push ax                          ; 0x5867
    mov ax, 4                        ; 0x5868
    push ax                          ; 0x586b
    mov ax, 3                        ; 0x586c
    push ax                          ; 0x586f
    push word [bp + 0x4]             ; 0x5870
    call api_idx_001c_ITKQ           ; 0x5873
    add sp, byte 8                   ; 0x5876
    mov ax, 2                        ; 0x5879
    push ax                          ; 0x587c
    mov ax, 3                        ; 0x587d
    push ax                          ; 0x5880
    push word [bp + 0x4]             ; 0x5881
    call api_idx_0002_USJO           ; 0x5884
    add sp, byte 6                   ; 0x5887
    push ax                          ; 0x588a
    mov ax, 0x248                    ; 0x588b
    imul word [bp + 0x4]             ; 0x588e
    mov bx, ax                       ; 0x5891
    pop ax                           ; 0x5893
    mov byte [bx + 0x5d89], al       ; 0x5894
    jmp near loc_PLIR                ; 0x5898
jumptable_5a60_case_7:
    mov ax, 0xc                      ; 0x589b
    push ax                          ; 0x589e
    mov ax, 4                        ; 0x589f
    push ax                          ; 0x58a2
    mov ax, 3                        ; 0x58a3
    push ax                          ; 0x58a6
    push word [bp + 0x4]             ; 0x58a7
    call api_idx_001c_ITKQ           ; 0x58aa
    add sp, byte 8                   ; 0x58ad
    mov ax, 2                        ; 0x58b0
    push ax                          ; 0x58b3
    mov ax, 3                        ; 0x58b4
    push ax                          ; 0x58b7
    push word [bp + 0x4]             ; 0x58b8
    call api_idx_0002_USJO           ; 0x58bb
    add sp, byte 6                   ; 0x58be
    push ax                          ; 0x58c1
    mov ax, 0x248                    ; 0x58c2
    imul word [bp + 0x4]             ; 0x58c5
    mov bx, ax                       ; 0x58c8
    pop ax                           ; 0x58ca
    mov byte [bx + 0x5d8b], al       ; 0x58cb
    jmp near loc_PLIR                ; 0x58cf
jumptable_5a60_case_9:
    mov ax, 0xd                      ; 0x58d2
    push ax                          ; 0x58d5
    mov ax, 3                        ; 0x58d6
    push ax                          ; 0x58d9
    push ax                          ; 0x58da
    push word [bp + 0x4]             ; 0x58db
    call api_idx_001c_ITKQ           ; 0x58de
    add sp, byte 8                   ; 0x58e1
    mov ax, 3                        ; 0x58e4
    push ax                          ; 0x58e7
    push ax                          ; 0x58e8
    push word [bp + 0x4]             ; 0x58e9
    call api_idx_0002_USJO           ; 0x58ec
    add sp, byte 6                   ; 0x58ef
    push ax                          ; 0x58f2
    mov ax, 0x248                    ; 0x58f3
    imul word [bp + 0x4]             ; 0x58f6
    mov bx, ax                       ; 0x58f9
    pop ax                           ; 0x58fb
    mov byte [bx + 0x5d8c], al       ; 0x58fc
    mov ax, 2                        ; 0x5900
    push ax                          ; 0x5903
    mov ax, 3                        ; 0x5904
    push ax                          ; 0x5907
    push word [bp + 0x4]             ; 0x5908
    call api_idx_0002_USJO           ; 0x590b
    add sp, byte 6                   ; 0x590e
    push ax                          ; 0x5911
    mov ax, 0x248                    ; 0x5912
    imul word [bp + 0x4]             ; 0x5915
    mov bx, ax                       ; 0x5918
    pop ax                           ; 0x591a
    mov byte [bx + 0x5d8a], al       ; 0x591b
    jmp near loc_PLIR                ; 0x591f
jumptable_5a60_case_8:
    mov ax, 5                        ; 0x5922
    push ax                          ; 0x5925
    push ax                          ; 0x5926
    mov ax, 9                        ; 0x5927
    push ax                          ; 0x592a
    push word [bp + 0x4]             ; 0x592b
    call api_idx_001c_ITKQ           ; 0x592e
    add sp, byte 8                   ; 0x5931
    mov ax, 3                        ; 0x5934
    push ax                          ; 0x5937
    mov ax, 0                        ; 0x5938
    push ax                          ; 0x593b
    push word [bp + 0x4]             ; 0x593c
    call api_idx_0002_USJO           ; 0x593f
    add sp, byte 6                   ; 0x5942
    push ax                          ; 0x5945
    mov ax, 0x248                    ; 0x5946
    imul word [bp + 0x4]             ; 0x5949
    mov bx, ax                       ; 0x594c
    pop ax                           ; 0x594e
    mov byte [bx + 0x5d70], al       ; 0x594f
    jmp near loc_PLIR                ; 0x5953
jumptable_5a60_case_10:
    mov ax, 5                        ; 0x5956
    push ax                          ; 0x5959
    push ax                          ; 0x595a
    mov ax, 9                        ; 0x595b
    push ax                          ; 0x595e
    push word [bp + 0x4]             ; 0x595f
    call api_idx_001c_ITKQ           ; 0x5962
    add sp, byte 8                   ; 0x5965
    mov ax, 3                        ; 0x5968
    push ax                          ; 0x596b
    push ax                          ; 0x596c
    push word [bp + 0x4]             ; 0x596d
    call api_idx_0002_USJO           ; 0x5970
    add sp, byte 6                   ; 0x5973
    push ax                          ; 0x5976
    mov ax, 0x248                    ; 0x5977
    imul word [bp + 0x4]             ; 0x597a
    mov bx, ax                       ; 0x597d
    pop ax                           ; 0x597f
    mov byte [bx + 0x5d88], al       ; 0x5980
    jmp near loc_PLIR                ; 0x5984
jumptable_5a60_case_11:
    mov ax, 5                        ; 0x5987
    push ax                          ; 0x598a
    push ax                          ; 0x598b
    mov ax, 9                        ; 0x598c
    push ax                          ; 0x598f
    push word [bp + 0x4]             ; 0x5990
    call api_idx_001c_ITKQ           ; 0x5993
    add sp, byte 8                   ; 0x5996
    mov ax, 2                        ; 0x5999
    push ax                          ; 0x599c
    mov ax, 0                        ; 0x599d
    push ax                          ; 0x59a0
    push word [bp + 0x4]             ; 0x59a1
    call api_idx_0002_USJO           ; 0x59a4
    add sp, byte 6                   ; 0x59a7
    push ax                          ; 0x59aa
    mov ax, 0x248                    ; 0x59ab
    imul word [bp + 0x4]             ; 0x59ae
    mov bx, ax                       ; 0x59b1
    pop ax                           ; 0x59b3
    mov byte [bx + 0x5d6d], al       ; 0x59b4
    jmp near loc_PLIR                ; 0x59b8
jumptable_5a60_case_12:
    mov ax, 6                        ; 0x59bb
    push ax                          ; 0x59be
    push ax                          ; 0x59bf
    mov ax, 7                        ; 0x59c0
    push ax                          ; 0x59c3
    push word [bp + 0x4]             ; 0x59c4
    call api_idx_001c_ITKQ           ; 0x59c7
    add sp, byte 8                   ; 0x59ca
    mov ax, 3                        ; 0x59cd
    push ax                          ; 0x59d0
    mov ax, 0                        ; 0x59d1
    push ax                          ; 0x59d4
    push word [bp + 0x4]             ; 0x59d5
    call api_idx_0002_USJO           ; 0x59d8
    add sp, byte 6                   ; 0x59db
    push ax                          ; 0x59de
    mov ax, 0x248                    ; 0x59df
    imul word [bp + 0x4]             ; 0x59e2
    mov bx, ax                       ; 0x59e5
    pop ax                           ; 0x59e7
    mov byte [bx + 0x5d75], al       ; 0x59e8
    mov ax, 3                        ; 0x59ec
    push ax                          ; 0x59ef
    push ax                          ; 0x59f0
    push word [bp + 0x4]             ; 0x59f1
    call api_idx_0002_USJO           ; 0x59f4
    add sp, byte 6                   ; 0x59f7
    push ax                          ; 0x59fa
    mov ax, 0x248                    ; 0x59fb
    imul word [bp + 0x4]             ; 0x59fe
    mov bx, ax                       ; 0x5a01
    pop ax                           ; 0x5a03
    mov byte [bx + 0x5d8b], al       ; 0x5a04
    jmp near loc_PLIR                ; 0x5a08
