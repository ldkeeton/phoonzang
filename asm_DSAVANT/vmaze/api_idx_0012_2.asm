api_idx_0012_2:
    mov ax, 0xffee                   ; 0x4665
    call ds_dispatch_f40b            ; 0x4668
    cmp word [bp + 0x4], byte 4      ; 0x466b
    jge short @..api_idx_0012_2.l1   ; 0x466f
    cmp word [bp + 0x6], byte 0      ; 0x4671
    jle short @..api_idx_0012_2.l1   ; 0x4675
    cmp word [bp + 0x6], byte 4      ; 0x4677
    jge short @..api_idx_0012_2.l1   ; 0x467b
    mov ax, 1                        ; 0x467d
    jmp short @..api_idx_0012_2.l2   ; 0x4680
@..api_idx_0012_2.l1:
    mov ax, 0                        ; 0x4682
@..api_idx_0012_2.l2:
    mov word [bp - 0x0012], ax       ; 0x4685
    cmp word [bp - 0x0012], byte 0   ; 0x4688
    jne short @..api_idx_0012_2.l3   ; 0x468c
    jmp near @..api_idx_0012_2.l20   ; 0x468e
@..api_idx_0012_2.l3:
    mov ax, 0xa                      ; 0x4691
    imul word [bp + 0x4]             ; 0x4694
    mov cx, word [bp + 0x6]          ; 0x4697
    shl cx, 1                        ; 0x469a
    add ax, cx                       ; 0x469c
    mov bx, ax                       ; 0x469e
    cmp word [bx - 0x6d92], byte 0   ; 0x46a0
    jne short @..api_idx_0012_2.l4   ; 0x46a5
    cmp word [bx - 0x6d14], byte 0   ; 0x46a7
    jne short @..api_idx_0012_2.l4   ; 0x46ac
    jmp near @..api_idx_0012_2.l20   ; 0x46ae
@..api_idx_0012_2.l4:
    cmp word [bp + 0x6], byte 2      ; 0x46b1
    jne short @..api_idx_0012_2.l5   ; 0x46b5
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
    jmp short @..api_idx_0012_2.l9   ; 0x4701
@..api_idx_0012_2.l5:
    cmp word [bp + 0x4], byte 0      ; 0x4703
    jle short @..api_idx_0012_2.l9   ; 0x4707
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
    jne short @..api_idx_0012_2.l6   ; 0x471e
    mov ax, word [bp + 0x2a]         ; 0x4720
    add ax, word [bp + 0x4]          ; 0x4723
@..api_idx_0012_2.l6:
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
    jne short @..api_idx_0012_2.l7   ; 0x4739
    mov ax, word [bp + 0x2a]         ; 0x473b
    add ax, word [bp + 0x4]          ; 0x473e
    jmp short @..api_idx_0012_2.l8   ; 0x4741
@..api_idx_0012_2.l7:
    mov ax, word [bp + 0x28]         ; 0x4743
    add ax, word [bp + 0x4]          ; 0x4746
@..api_idx_0012_2.l8:
    push ax                          ; 0x4749
    mov ax, 0xff                     ; 0x474a
    push ax                          ; 0x474d
    call api_idx_0004_5              ; 0x474e
    add sp, byte 0x1c                ; 0x4751
@..api_idx_0012_2.l9:
    mov ax, 0xa                      ; 0x4754
    imul word [bp + 0x4]             ; 0x4757
    mov cx, word [bp + 0x6]          ; 0x475a
    shl cx, 1                        ; 0x475d
    add ax, cx                       ; 0x475f
    mov bx, ax                       ; 0x4761
    cmp word [bx - 0x6d92], byte 0   ; 0x4763
    jne short @..api_idx_0012_2.l10  ; 0x4768
    jmp near @..api_idx_0012_2.l20   ; 0x476a
@..api_idx_0012_2.l10:
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
    jne short @..api_idx_0012_2.l11  ; 0x4794
    cmp word [bp + 0x4], byte 0      ; 0x4796
    jg short @..api_idx_0012_2.l12   ; 0x479a
@..api_idx_0012_2.l11:
    cmp word [bp + 0x6], byte 2      ; 0x479c
    jne short @..api_idx_0012_2.l15  ; 0x47a0
@..api_idx_0012_2.l12:
    test ax, ax                      ; 0x47a2
    je short @..api_idx_0012_2.l13   ; 0x47a4
    mov ax, 3                        ; 0x47a6
    jmp short @..api_idx_0012_2.l14  ; 0x47a9
@..api_idx_0012_2.l13:
    mov ax, 0                        ; 0x47ab
@..api_idx_0012_2.l14:
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
    jmp short @..api_idx_0012_2.l17  ; 0x47cc
@..api_idx_0012_2.l15:
    cmp word [bp + 0x4], byte 0      ; 0x47ce
    jle short @..api_idx_0012_2.l17  ; 0x47d2
    mov ax, word [bp + 0x4]          ; 0x47d4
    add ax, strict word 0x20         ; 0x47d7
    mov word [bp - 0x0004], ax       ; 0x47da
    mov ax, 0                        ; 0x47dd
    cmp word [bp + 0x6], byte 3      ; 0x47e0
    jne short @..api_idx_0012_2.l16  ; 0x47e4
    mov ax, 1                        ; 0x47e6
@..api_idx_0012_2.l16:
    mov word [bp - 0x0006], ax       ; 0x47e9
    mov word [bp - 0x0008], 0        ; 0x47ec
@..api_idx_0012_2.l17:
    cmp word [bp - 0x0004], byte 0   ; 0x47f1
    je short @..api_idx_0012_2.l20   ; 0x47f5
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
    je short @..api_idx_0012_2.l18   ; 0x4814
    cmp dx, byte 1                   ; 0x4816
    jne short @..api_idx_0012_2.l18  ; 0x4819
    mov ax, 1                        ; 0x481b
    jmp short @..api_idx_0012_2.l19  ; 0x481e
@..api_idx_0012_2.l18:
    mov ax, 0                        ; 0x4820
@..api_idx_0012_2.l19:
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
@..api_idx_0012_2.l20:
    mov ax, 5                        ; 0x483c
    imul word [bp + 0x4]             ; 0x483f
    add ax, word [bp + 0x6]          ; 0x4842
    mov bx, ax                       ; 0x4845
    mov al, byte [bx - 0x6e0f]       ; 0x4847
    sub ah, ah                       ; 0x484b
    jmp near @..api_idx_0012_2.l36   ; 0x484d
@..api_idx_0012_2.l21:
    cmp word [data_91d4], byte 2     ; 0x4850
    je short @..api_idx_0012_2.l22   ; 0x4855
    jmp near @..api_idx_0012_2.l32   ; 0x4857
@..api_idx_0012_2.l22:
    cmp word [bp + 0x4], byte 5      ; 0x485a
    jl short @..api_idx_0012_2.l23   ; 0x485e
    jmp near @..api_idx_0012_2.l31   ; 0x4860
