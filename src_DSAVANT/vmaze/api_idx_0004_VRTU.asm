; auto-generated
api_idx_0004_VRTU:
    mov ax, 0xfffc                   ; 0x96ce
    call aztec_csav                  ; 0x96d1
    mov ax, 0x26                     ; 0x96d4
    imul word [bp + 0x4]             ; 0x96d7
    mov bx, ax                       ; 0x96da
    mov al, byte [bx - 0x7b15]       ; 0x96dc
    sub ah, ah                       ; 0x96e0
    push ax                          ; 0x96e2
    push word [bp + 0x4]             ; 0x96e3
    call loc_PQKO                    ; 0x96e6
    add sp, byte 4                   ; 0x96e9
    test ax, ax                      ; 0x96ec
    je short @..api_idx_0004_VRTU.l1 ; 0x96ee
    mov ax, 0x26                     ; 0x96f0
    imul word [bp + 0x4]             ; 0x96f3
    mov bx, ax                       ; 0x96f6
    mov al, byte [bx - 0x7b15]       ; 0x96f8
    sub ah, ah                       ; 0x96fc
    push ax                          ; 0x96fe
    add bx, strict word 0x8506       ; 0x96ff
    mov ax, bx                       ; 0x9703
    push ax                          ; 0x9705
    call test_bit                    ; 0x9706
    add sp, byte 4                   ; 0x9709
    test ax, ax                      ; 0x970c
    jne short @..api_idx_0004_VRTU.l1 ; 0x970e
    mov ax, 0x26                     ; 0x9710
    imul word [bp + 0x4]             ; 0x9713
    mov bx, ax                       ; 0x9716
    mov al, byte [bx - 0x7b15]       ; 0x9718
    sub ah, ah                       ; 0x971c
    push ax                          ; 0x971e
    mov ax, 6                        ; 0x971f
    push ax                          ; 0x9722
    mov al, byte [bx - 0x7b15]       ; 0x9723
    sub ah, ah                       ; 0x9727
    push ax                          ; 0x9729
    push word [bp + 0x4]             ; 0x972a
    call api_idx_0002_JLVK           ; 0x972d
    add sp, byte 8                   ; 0x9730
    mov ax, 0x26                     ; 0x9733
    imul word [bp + 0x4]             ; 0x9736
    mov bx, ax                       ; 0x9739
    mov byte [bx - 0x7b16], 2        ; 0x973b
    mov byte [bx - 0x7b13], 0        ; 0x9740
    ret                              ; 0x9745
@..api_idx_0004_VRTU.l1:
    push word [bp + 0x4]             ; 0x9746
    call loc_LGQU                    ; 0x9749
    pop cx                           ; 0x974c
    test ax, ax                      ; 0x974d
    je short @..api_idx_0004_VRTU.l2 ; 0x974f
    ret                              ; 0x9751
@..api_idx_0004_VRTU.l2:
    mov word [bp - 0x0002], 0        ; 0x9752
@..api_idx_0004_VRTU.l3:
    push word [bp - 0x0002]          ; 0x9757
    mov ax, 0x26                     ; 0x975a
    imul word [bp + 0x4]             ; 0x975d
    add ax, 0x850a                   ; 0x9760
    push ax                          ; 0x9763
    call test_bit                    ; 0x9764
    add sp, byte 4                   ; 0x9767
    test ax, ax                      ; 0x976a
    je short @..api_idx_0004_VRTU.l6 ; 0x976c
    mov ax, word [bp - 0x0002]       ; 0x976e
    add ax, strict word 0xc          ; 0x9771
    push ax                          ; 0x9774
    mov ax, 0x26                     ; 0x9775
    imul word [bp + 0x4]             ; 0x9778
    add ax, 0x850a                   ; 0x977b
    push ax                          ; 0x977e
    call test_bit                    ; 0x977f
    add sp, byte 4                   ; 0x9782
    test ax, ax                      ; 0x9785
    jne short @..api_idx_0004_VRTU.l5 ; 0x9787
    mov ax, 6                        ; 0x9789
    imul word [bp - 0x0002]          ; 0x978c
    mov bx, ax                       ; 0x978f
    mov al, byte [bx - 0x7b58]       ; 0x9791
    sub ah, ah                       ; 0x9795
    mov word [bp - 0x0004], ax       ; 0x9797
    push ax                          ; 0x979a
    push word [bp + 0x4]             ; 0x979b
    call loc_PQKO                    ; 0x979e
    add sp, byte 4                   ; 0x97a1
    test ax, ax                      ; 0x97a4
    je short @..api_idx_0004_VRTU.l4 ; 0x97a6
    mov al, byte [bp - 0x0002]       ; 0x97a8
    push ax                          ; 0x97ab
    mov ax, 0x26                     ; 0x97ac
    imul word [bp + 0x4]             ; 0x97af
    mov bx, ax                       ; 0x97b2
    pop ax                           ; 0x97b4
    mov byte [bx - 0x7b12], al       ; 0x97b5
    mov byte [bx - 0x7b16], 4        ; 0x97b9
    mov byte [bx - 0x7b13], 0        ; 0x97be
    ret                              ; 0x97c3
@..api_idx_0004_VRTU.l4:
    mov al, byte [bp - 0x0004]       ; 0x97c4
    push ax                          ; 0x97c7
    mov ax, 0x26                     ; 0x97c8
    imul word [bp + 0x4]             ; 0x97cb
    mov bx, ax                       ; 0x97ce
    pop ax                           ; 0x97d0
    mov byte [bx - 0x7b15], al       ; 0x97d1
    push word [bp + 0x4]             ; 0x97d5
    call loc_QJRN                    ; 0x97d8
    pop cx                           ; 0x97db
    ret                              ; 0x97dc
@..api_idx_0004_VRTU.l5:
    jmp near @..api_idx_0004_VRTU.l12 ; 0x97dd
@..api_idx_0004_VRTU.l6:
    push word [bp - 0x0002]          ; 0x97e0
    mov ax, 0x26                     ; 0x97e3
    imul word [bp + 0x4]             ; 0x97e6
    add ax, 0x8504                   ; 0x97e9
    push ax                          ; 0x97ec
    call test_bit                    ; 0x97ed
    add sp, byte 4                   ; 0x97f0
    test ax, ax                      ; 0x97f3
    jne short @..api_idx_0004_VRTU.l7 ; 0x97f5
    jmp near @..api_idx_0004_VRTU.l11 ; 0x97f7
@..api_idx_0004_VRTU.l7:
    mov ax, 6                        ; 0x97fa
    imul word [bp - 0x0002]          ; 0x97fd
    mov bx, ax                       ; 0x9800
    cmp byte [bx - 0x7b59], 1        ; 0x9802
    jne short @..api_idx_0004_VRTU.l8 ; 0x9807
    mov al, byte [bx + bss_84a6]     ; 0x9809
    push ax                          ; 0x980d
    mov ax, 0x26                     ; 0x980e
    imul word [bp + 0x4]             ; 0x9811
    mov bx, ax                       ; 0x9814
    pop ax                           ; 0x9816
    mov byte [bx - 0x7b15], al       ; 0x9817
    push word [bp + 0x4]             ; 0x981b
    call loc_QJRN                    ; 0x981e
    pop cx                           ; 0x9821
    jmp near @..api_idx_0004_VRTU.l10 ; 0x9822
@..api_idx_0004_VRTU.l8:
    mov ax, 6                        ; 0x9825
    imul word [bp - 0x0002]          ; 0x9828
    mov bx, ax                       ; 0x982b
    cmp byte [bx - 0x7b59], 0        ; 0x982d
    jne short @..api_idx_0004_VRTU.l10 ; 0x9832
    mov al, byte [bx + bss_84a6]     ; 0x9834
    sub ah, ah                       ; 0x9838
    mov cx, 0x26                     ; 0x983a
    imul cx                          ; 0x983d
    mov bx, ax                       ; 0x983f
    mov al, byte [bx - 0x7b15]       ; 0x9841
    push ax                          ; 0x9845
    mov ax, word [bp + 0x4]          ; 0x9846
    imul cx                          ; 0x9849
    mov bx, ax                       ; 0x984b
    pop ax                           ; 0x984d
    mov byte [bx - 0x7b15], al       ; 0x984e
    mov ax, 6                        ; 0x9852
    imul word [bp - 0x0002]          ; 0x9855
    mov bx, ax                       ; 0x9858
    mov al, byte [bx + bss_84a6]     ; 0x985a
    push ax                          ; 0x985e
    mov ax, word [bp + 0x4]          ; 0x985f
    imul cx                          ; 0x9862
    mov bx, ax                       ; 0x9864
    pop ax                           ; 0x9866
    mov byte [bx - 0x7b12], al       ; 0x9867
    push word [bp + 0x4]             ; 0x986b
    call loc_QJRN                    ; 0x986e
    pop cx                           ; 0x9871
    mov ax, 0x26                     ; 0x9872
    imul word [bp + 0x4]             ; 0x9875
    mov bx, ax                       ; 0x9878
    cmp byte [bx - 0x7b16], 0        ; 0x987a
    jne short @..api_idx_0004_VRTU.l9 ; 0x987f
    push word [bp + 0x4]             ; 0x9881
    call api_idx_003a_HOUV           ; 0x9884
    pop cx                           ; 0x9887
    ret                              ; 0x9888
@..api_idx_0004_VRTU.l9:
    mov ax, 0x26                     ; 0x9889
    imul word [bp + 0x4]             ; 0x988c
    mov bx, ax                       ; 0x988f
    mov byte [bx - 0x7b16], 5        ; 0x9891
    mov al, byte [bx - 0x7b12]       ; 0x9896
    sub ah, ah                       ; 0x989a
    push ax                          ; 0x989c
    mov ax, 0xa                      ; 0x989d
    push ax                          ; 0x98a0
    push word [bp - 0x0002]          ; 0x98a1
    push word [bp + 0x4]             ; 0x98a4
    call api_idx_0002_JLVK           ; 0x98a7
    add sp, byte 8                   ; 0x98aa
@..api_idx_0004_VRTU.l10:
    ret                              ; 0x98ad
@..api_idx_0004_VRTU.l11:
    push word [bp + 0x4]             ; 0x98ae
    call api_idx_003a_HOUV           ; 0x98b1
    pop cx                           ; 0x98b4
    ret                              ; 0x98b5
@..api_idx_0004_VRTU.l12:
    inc word [bp - 0x0002]           ; 0x98b6
    mov ax, word [bp - 0x0002]       ; 0x98b9
    cmp ax, strict word 0xb          ; 0x98bc
    jge short @..api_idx_0004_VRTU.l13 ; 0x98bf
    jmp near @..api_idx_0004_VRTU.l3 ; 0x98c1
@..api_idx_0004_VRTU.l13:
    push word [bp + 0x4]             ; 0x98c4
    call api_idx_003a_HOUV           ; 0x98c7
    pop cx                           ; 0x98ca
    ret                              ; 0x98cb
