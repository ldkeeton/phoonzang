math_loc_4691:
    mov ax, 0xa                      ; 0x4691
    imul word [bp + 0x4]             ; 0x4694
    mov cx, word [bp + 0x6]          ; 0x4697
    shl cx, 1                        ; 0x469a
    add ax, cx                       ; 0x469c
    mov bx, ax                       ; 0x469e
    cmp word [bx - 0x6d92], byte 0   ; 0x46a0
    jne short @..math_loc_4691.l1    ; 0x46a5
    cmp word [bx - 0x6d14], byte 0   ; 0x46a7
    jne short @..math_loc_4691.l1    ; 0x46ac
    jmp near loc_483c                ; 0x46ae
@..math_loc_4691.l1:
    cmp word [bp + 0x6], byte 2      ; 0x46b1
    jne short @..math_loc_4691.l2    ; 0x46b5
    mov ax, 0                        ; 0x46b7
    push ax                          ; 0x46ba
    push ax                          ; 0x46bb
    push ax                          ; 0x46bc
    mov ax, 3                        ; 0x46bd
    push ax                          ; 0x46c0
    push word [bp + 0x4]             ; 0x46c1
    mov ax, 0xffff                   ; 0x46c4
    push ax                          ; 0x46c7
    mov ax, word [bp + 0x20]         ; 0x46c8
    add ax, word [bp + 0x4]          ; 0x46cb
    push ax                          ; 0x46ce
    call loc_2eac                    ; 0x46cf
    pop cx                           ; 0x46d2
    push ax                          ; 0x46d3
    mov ax, 0                        ; 0x46d4
    push ax                          ; 0x46d7
    push ax                          ; 0x46d8
    push ax                          ; 0x46d9
    mov ax, 2                        ; 0x46da
    push ax                          ; 0x46dd
    mov ax, 0xffff                   ; 0x46de
    push ax                          ; 0x46e1
    mov ax, word [bp + 0x22]         ; 0x46e2
    add ax, word [bp + 0x4]          ; 0x46e5
    push ax                          ; 0x46e8
    mov ax, word [bp + 0x20]         ; 0x46e9
    add ax, word [bp + 0x4]          ; 0x46ec
    push ax                          ; 0x46ef
    call loc_2ec0                    ; 0x46f0
    add sp, byte 4                   ; 0x46f3
    push ax                          ; 0x46f6
    mov ax, 0xff                     ; 0x46f7
    push ax                          ; 0x46fa
    call api_idx_0004_5              ; 0x46fb
    add sp, byte 0x1c                ; 0x46fe
    jmp short @..math_loc_4691.l6    ; 0x4701
@..math_loc_4691.l2:
    cmp word [bp + 0x4], byte 0      ; 0x4703
    jle short @..math_loc_4691.l6    ; 0x4707
    mov ax, 0                        ; 0x4709
    push ax                          ; 0x470c
    push ax                          ; 0x470d
    push ax                          ; 0x470e
    mov ax, 3                        ; 0x470f
    push ax                          ; 0x4712
    push word [bp + 0x4]             ; 0x4713
    mov ax, 0xffff                   ; 0x4716
    push ax                          ; 0x4719
    cmp word [bp + 0x6], byte 3      ; 0x471a
    jne short @..math_loc_4691.l3    ; 0x471e
    mov ax, word [bp + 0x2a]         ; 0x4720
    add ax, word [bp + 0x4]          ; 0x4723
@..math_loc_4691.l3:
    push ax                          ; 0x4726
    mov ax, 0                        ; 0x4727
    push ax                          ; 0x472a
    push ax                          ; 0x472b
    push ax                          ; 0x472c
    mov ax, 2                        ; 0x472d
    push ax                          ; 0x4730
    mov ax, 0xffff                   ; 0x4731
    push ax                          ; 0x4734
    cmp word [bp + 0x6], byte 3      ; 0x4735
    jne short @..math_loc_4691.l4    ; 0x4739
    mov ax, word [bp + 0x2a]         ; 0x473b
    add ax, word [bp + 0x4]          ; 0x473e
    jmp short @..math_loc_4691.l5    ; 0x4741
@..math_loc_4691.l4:
    mov ax, word [bp + 0x28]         ; 0x4743
    add ax, word [bp + 0x4]          ; 0x4746
@..math_loc_4691.l5:
    push ax                          ; 0x4749
    mov ax, 0xff                     ; 0x474a
    push ax                          ; 0x474d
    call api_idx_0004_5              ; 0x474e
    add sp, byte 0x1c                ; 0x4751
@..math_loc_4691.l6:
    mov ax, 0xa                      ; 0x4754
    imul word [bp + 0x4]             ; 0x4757
    mov cx, word [bp + 0x6]          ; 0x475a
    shl cx, 1                        ; 0x475d
    add ax, cx                       ; 0x475f
    mov bx, ax                       ; 0x4761
    cmp word [bx - 0x6d92], byte 0   ; 0x4763
    jne short @..math_loc_4691.l7    ; 0x4768
    jmp near loc_483c                ; 0x476a
@..math_loc_4691.l7:
    mov cx, word [bx - 0x6d92]       ; 0x476d
    dec cx                           ; 0x4771
    mov ax, word [data_82ee]         ; 0x4772
    sub ax, cx                       ; 0x4775
    add ax, strict word 6            ; 0x4777
    mov cx, 4                        ; 0x477a
    cwd                              ; 0x477d
    idiv cx                          ; 0x477e
    mov word [bp - 0x0002], dx       ; 0x4780
    mov word [bp - 0x0004], 0        ; 0x4783
    mov ax, dx                       ; 0x4788
    mov cx, 2                        ; 0x478a
    cwd                              ; 0x478d
    idiv cx                          ; 0x478e
    mov ax, dx                       ; 0x4790
    test ax, ax                      ; 0x4792
    jne short @..math_loc_4691.l8    ; 0x4794
    cmp word [bp + 0x4], byte 0      ; 0x4796
    jg short @..math_loc_4691.l9     ; 0x479a
@..math_loc_4691.l8:
    cmp word [bp + 0x6], byte 2      ; 0x479c
    jne short @..math_loc_4691.l12   ; 0x47a0
@..math_loc_4691.l9:
    test ax, ax                      ; 0x47a2
    je short @..math_loc_4691.l10    ; 0x47a4
    mov ax, 3                        ; 0x47a6
    jmp short @..math_loc_4691.l11   ; 0x47a9
@..math_loc_4691.l10:
    mov ax, 0                        ; 0x47ab
@..math_loc_4691.l11:
    mov cx, word [bp + 0x4]          ; 0x47ae
    shl cx, 1                        ; 0x47b1
    shl cx, 1                        ; 0x47b3
    shl cx, 1                        ; 0x47b5
    add ax, cx                       ; 0x47b7
    inc ax                           ; 0x47b9
    inc ax                           ; 0x47ba
loc_47bb:
    inc ax                           ; 0x47bb
    mov word [bp - 0x0004], ax       ; 0x47bc
    mov ax, word [data_91d0]         ; 0x47bf
    mov word [bp - 0x0006], ax       ; 0x47c2
    mov ax, word [bx + 0x260]        ; 0x47c5
    mov word [bp - 0x0008], ax       ; 0x47c9
    jmp short @..math_loc_4691.l14   ; 0x47cc
@..math_loc_4691.l12:
    cmp word [bp + 0x4], byte 0      ; 0x47ce
    jle short @..math_loc_4691.l14   ; 0x47d2
    mov ax, word [bp + 0x4]          ; 0x47d4
    add ax, strict word 0x20         ; 0x47d7
    mov word [bp - 0x0004], ax       ; 0x47da
    mov ax, 0                        ; 0x47dd
    cmp word [bp + 0x6], byte 3      ; 0x47e0
    jne short @..math_loc_4691.l13   ; 0x47e4
    mov ax, 1                        ; 0x47e6
@..math_loc_4691.l13:
    mov word [bp - 0x0006], ax       ; 0x47e9
    mov word [bp - 0x0008], 0        ; 0x47ec
@..math_loc_4691.l14:
    cmp word [bp - 0x0004], byte 0   ; 0x47f1
    je short loc_483c                ; 0x47f5
    mov ax, 0                        ; 0x47f7
    push ax                          ; 0x47fa
    push ax                          ; 0x47fb
    push word [bp - 0x0006]          ; 0x47fc
    push ax                          ; 0x47ff
    push word [bp + 0x4]             ; 0x4800
    mov ax, 0xf8                     ; 0x4803
    push ax                          ; 0x4806
    mov ax, 0x48                     ; 0x4807
    push ax                          ; 0x480a
    push word [bp + 0x6]             ; 0x480b
    mov ax, word [bp + 0x6]          ; 0x480e
    cmp ax, strict word 2            ; 0x4811
    je short @..math_loc_4691.l15    ; 0x4814
    cmp dx, byte 1                   ; 0x4816
    jne short @..math_loc_4691.l15   ; 0x4819
    mov ax, 1                        ; 0x481b
    jmp short @..math_loc_4691.l16   ; 0x481e
@..math_loc_4691.l15:
    mov ax, 0                        ; 0x4820
@..math_loc_4691.l16:
    push ax                          ; 0x4823
    mov ax, 1                        ; 0x4824
    push ax                          ; 0x4827
    push word [bp - 0x0004]          ; 0x4828
    mov ax, 0                        ; 0x482b
    push ax                          ; 0x482e
    push word [bp - 0x0008]          ; 0x482f
    mov ax, 4                        ; 0x4832
    push ax                          ; 0x4835
    call api_idx_0004_5              ; 0x4836
    add sp, byte 0x1c                ; 0x4839
loc_483c:
    mov ax, 5                        ; 0x483c
    imul word [bp + 0x4]             ; 0x483f
    add ax, word [bp + 0x6]          ; 0x4842
    mov bx, ax                       ; 0x4845
    mov al, byte [bx - 0x6e0f]       ; 0x4847
    sub ah, ah                       ; 0x484b
    jmp near loc_4a9a                ; 0x484d
loc_4850:
    cmp word [data_91d4], byte 2     ; 0x4850
    je short loc_485a                ; 0x4855
    jmp near loc_4a00                ; 0x4857
loc_485a:
    cmp word [bp + 0x4], byte 5      ; 0x485a
    jl short loc_4863                ; 0x485e
    jmp near loc_49fd                ; 0x4860
loc_4863:
    mov ax, 0                        ; 0x4863
    push ax                          ; 0x4866
    push ax                          ; 0x4867
    push ax                          ; 0x4868
    push word [bp + 0xc]             ; 0x4869
    push word [bp + 0x4]             ; 0x486c
    mov ax, 0xffff                   ; 0x486f
    push ax                          ; 0x4872
    mov ax, word [bp + 0x18]         ; 0x4873
    add ax, word [bp + 0x4]          ; 0x4876
    push ax                          ; 0x4879
    call loc_2eac                    ; 0x487a
    pop cx                           ; 0x487d
    push ax                          ; 0x487e
    mov ax, 0                        ; 0x487f
    push ax                          ; 0x4882
    push ax                          ; 0x4883
    push ax                          ; 0x4884
    mov ax, 2                        ; 0x4885
    push ax                          ; 0x4888
    mov ax, 0xffff                   ; 0x4889
    push ax                          ; 0x488c
    mov ax, word [bp + 0x1a]         ; 0x488d
