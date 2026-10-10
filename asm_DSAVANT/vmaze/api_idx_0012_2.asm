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
@..api_idx_0012_2.l23:
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
    add ax, word [bp + 0x4]          ; 0x4890
    push ax                          ; 0x4893
    mov ax, word [bp + 0x18]         ; 0x4894
    add ax, word [bp + 0x4]          ; 0x4897
    push ax                          ; 0x489a
    call loc_2ec0                    ; 0x489b
    add sp, byte 4                   ; 0x489e
    push ax                          ; 0x48a1
    mov ax, 0xff                     ; 0x48a2
    push ax                          ; 0x48a5
    call api_idx_0004_5              ; 0x48a6
    add sp, byte 0x1c                ; 0x48a9
    mov word [bp - 0x000e], 0xffff   ; 0x48ac
    mov word [bp - 0x000a], 0xffff   ; 0x48b1
    mov word [bp - 0x0010], 0xffff   ; 0x48b6
    mov word [bp - 0x000c], 0xffff   ; 0x48bb
jumptable_5704_case_5:
    cmp word [bp + 0x40], byte 0xff  ; 0x48c0
    je short @..api_idx_0012_2.l24   ; 0x48c4
    mov ax, word [bp + 0x42]         ; 0x48c6
    add ax, word [bp + 0x4]          ; 0x48c9
    push ax                          ; 0x48cc
    mov ax, word [bp + 0x40]         ; 0x48cd
    add ax, word [bp + 0x4]          ; 0x48d0
    push ax                          ; 0x48d3
    call loc_2ec0                    ; 0x48d4
    add sp, byte 4                   ; 0x48d7
    mov word [bp - 0x000e], ax       ; 0x48da
    mov ax, word [bp + 0x40]         ; 0x48dd
    add ax, word [bp + 0x4]          ; 0x48e0
    push ax                          ; 0x48e3
    call loc_2eac                    ; 0x48e4
    pop cx                           ; 0x48e7
    mov word [bp - 0x0010], ax       ; 0x48e8
@..api_idx_0012_2.l24:
    cmp word [bp + 0x4], byte 0      ; 0x48eb
    jle short @..api_idx_0012_2.l25  ; 0x48ef
    mov ax, word [bp + 0x3e]         ; 0x48f1
    add ax, word [bp + 0x4]          ; 0x48f4
    dec ax                           ; 0x48f7
    push ax                          ; 0x48f8
    mov ax, word [bp + 0x3c]         ; 0x48f9
    add ax, word [bp + 0x4]          ; 0x48fc
    dec ax                           ; 0x48ff
    push ax                          ; 0x4900
    call loc_2e98                    ; 0x4901
    add sp, byte 4                   ; 0x4904
    mov word [bp - 0x000a], ax       ; 0x4907
    mov ax, word [bp + 0x3c]         ; 0x490a
    add ax, word [bp + 0x4]          ; 0x490d
    dec ax                           ; 0x4910
    push ax                          ; 0x4911
    call loc_2e84                    ; 0x4912
    pop cx                           ; 0x4915
    mov word [bp - 0x000c], ax       ; 0x4916
@..api_idx_0012_2.l25:
    cmp word [bp - 0x000a], byte 0xff ; 0x4919
    jne short @..api_idx_0012_2.l26  ; 0x491d
    cmp word [bp - 0x000e], byte 0xff ; 0x491f
    jne short @..api_idx_0012_2.l26  ; 0x4923
    jmp near @..api_idx_0012_2.l31   ; 0x4925
@..api_idx_0012_2.l26:
    mov ax, 0                        ; 0x4928
    push ax                          ; 0x492b
    push ax                          ; 0x492c
    push ax                          ; 0x492d
    push word [bp + 0xc]             ; 0x492e
    push word [bp + 0x4]             ; 0x4931
    push word [bp - 0x000c]          ; 0x4934
    push word [bp - 0x0010]          ; 0x4937
    push ax                          ; 0x493a
    push ax                          ; 0x493b
    mov ax, 2                        ; 0x493c
    push ax                          ; 0x493f
    push ax                          ; 0x4940
    push word [bp - 0x000a]          ; 0x4941
    push word [bp - 0x000e]          ; 0x4944
    mov ax, 0xff                     ; 0x4947
    push ax                          ; 0x494a
    call api_idx_0004_5              ; 0x494b
    add sp, byte 0x1c                ; 0x494e
    cmp word [bp - 0x000a], byte 0xff ; 0x4951
    jne short @..api_idx_0012_2.l27  ; 0x4955
    jmp near @..api_idx_0012_2.l31   ; 0x4957
@..api_idx_0012_2.l27:
    cmp word [data_91d4], byte 0     ; 0x495a
    jne short @..api_idx_0012_2.l28  ; 0x495f
    jmp near @..api_idx_0012_2.l31   ; 0x4961
@..api_idx_0012_2.l28:
    mov ax, word [bp + 0x4]          ; 0x4964
    cmp ax, strict word 4            ; 0x4967
    je short @..api_idx_0012_2.l29   ; 0x496a
    jmp near @..api_idx_0012_2.l31   ; 0x496c
@..api_idx_0012_2.l29:
    cmp word [bp + 0x6], byte 0      ; 0x496f
    jne short @..api_idx_0012_2.l30  ; 0x4973
    mov ax, 0                        ; 0x4975
    push ax                          ; 0x4978
    push ax                          ; 0x4979
    push ax                          ; 0x497a
    push word [bp + 0xc]             ; 0x497b
    push word [bp + 0x4]             ; 0x497e
    mov ax, 0xffff                   ; 0x4981
    push ax                          ; 0x4984
    mov ax, 0xc2                     ; 0x4985
    push ax                          ; 0x4988
    call loc_2e84                    ; 0x4989
    pop cx                           ; 0x498c
    push ax                          ; 0x498d
    mov ax, 0                        ; 0x498e
    push ax                          ; 0x4991
    push ax                          ; 0x4992
    push ax                          ; 0x4993
    mov ax, 2                        ; 0x4994
    push ax                          ; 0x4997
    mov ax, 0xffff                   ; 0x4998
    push ax                          ; 0x499b
    mov ax, 0xc3                     ; 0x499c
    push ax                          ; 0x499f
    mov ax, 0xc2                     ; 0x49a0
    push ax                          ; 0x49a3
    call loc_2e98                    ; 0x49a4
    add sp, byte 4                   ; 0x49a7
    push ax                          ; 0x49aa
    mov ax, 0xff                     ; 0x49ab
    push ax                          ; 0x49ae
    call api_idx_0004_5              ; 0x49af
    add sp, byte 0x1c                ; 0x49b2
    jmp short @..api_idx_0012_2.l31  ; 0x49b5
@..api_idx_0012_2.l30:
    cmp word [bp + 0x6], byte 4      ; 0x49b7
    jne short @..api_idx_0012_2.l31  ; 0x49bb
    mov ax, 0                        ; 0x49bd
    push ax                          ; 0x49c0
    push ax                          ; 0x49c1
    push ax                          ; 0x49c2
    push word [bp + 0xc]             ; 0x49c3
    push word [bp + 0x4]             ; 0x49c6
    mov ax, 0xffff                   ; 0x49c9
    push ax                          ; 0x49cc
    mov ax, 0xc3                     ; 0x49cd
    push ax                          ; 0x49d0
    call loc_2e84                    ; 0x49d1
    pop cx                           ; 0x49d4
    push ax                          ; 0x49d5
    mov ax, 0                        ; 0x49d6
    push ax                          ; 0x49d9
    push ax                          ; 0x49da
    push ax                          ; 0x49db
    mov ax, 2                        ; 0x49dc
    push ax                          ; 0x49df
    mov ax, 0xffff                   ; 0x49e0
    push ax                          ; 0x49e3
    mov ax, 0xc2                     ; 0x49e4
    push ax                          ; 0x49e7
    mov ax, 0xc3                     ; 0x49e8
    push ax                          ; 0x49eb
    call loc_2e98                    ; 0x49ec
    add sp, byte 4                   ; 0x49ef
    push ax                          ; 0x49f2
    mov ax, 0xff                     ; 0x49f3
    push ax                          ; 0x49f6
    call api_idx_0004_5              ; 0x49f7
    add sp, byte 0x1c                ; 0x49fa
@..api_idx_0012_2.l31:
    jmp near @..api_idx_0012_2.l35   ; 0x49fd
@..api_idx_0012_2.l32:
    cmp word [data_91d4], byte 4     ; 0x4a00
    je short @..api_idx_0012_2.l33   ; 0x4a05
    jmp near @..api_idx_0012_2.l35   ; 0x4a07
@..api_idx_0012_2.l33:
    cmp word [bp + 0x4], byte 4      ; 0x4a0a
    jl short @..api_idx_0012_2.l34   ; 0x4a0e
    jmp near @..api_idx_0012_2.l35   ; 0x4a10
@..api_idx_0012_2.l34:
    mov ax, word [bp + 0x38]         ; 0x4a13
    add ax, word [bp + 0x4]          ; 0x4a16
    push ax                          ; 0x4a19
    call loc_2eac                    ; 0x4a1a
    pop cx                           ; 0x4a1d
    push ax                          ; 0x4a1e
    mov ax, 2                        ; 0x4a1f
    push ax                          ; 0x4a22
    mov ax, word [bp + 0x3a]         ; 0x4a23
    add ax, word [bp + 0x4]          ; 0x4a26
    push ax                          ; 0x4a29
    mov ax, word [bp + 0x38]         ; 0x4a2a
    add ax, word [bp + 0x4]          ; 0x4a2d
    push ax                          ; 0x4a30
    call loc_2ec0                    ; 0x4a31
    add sp, byte 4                   ; 0x4a34
    push ax                          ; 0x4a37
    push word [bp + 0x10]            ; 0x4a38
    call 0xf01f                      ; 0x4a3b
    add sp, byte 8                   ; 0x4a3e
    mov ax, word [bp + 0x4]          ; 0x4a41
    cmp ax, strict word 2            ; 0x4a44
    jge short @..api_idx_0012_2.l35  ; 0x4a47
    cmp word [bp + 0x6], byte 2      ; 0x4a49
    jne short @..api_idx_0012_2.l35  ; 0x4a4d
    mov ax, 0                        ; 0x4a4f
    push ax                          ; 0x4a52
    mov ax, 1                        ; 0x4a53
    push ax                          ; 0x4a56
    mov ax, 0                        ; 0x4a57
    push ax                          ; 0x4a5a
    push word [bp + 0x10]            ; 0x4a5b
    push word [bp + 0x4]             ; 0x4a5e
    mov ax, 0xffff                   ; 0x4a61
    push ax                          ; 0x4a64
    mov ax, word [bp + 0x4]          ; 0x4a65
    add ax, strict word 0x19         ; 0x4a68
    push ax                          ; 0x4a6b
    call loc_2eac                    ; 0x4a6c
    pop cx                           ; 0x4a6f
    push ax                          ; 0x4a70
    mov ax, 0                        ; 0x4a71
    push ax                          ; 0x4a74
    push ax                          ; 0x4a75
    push ax                          ; 0x4a76
    mov ax, 2                        ; 0x4a77
    push ax                          ; 0x4a7a
    mov ax, 0xffff                   ; 0x4a7b
    push ax                          ; 0x4a7e
    mov ax, word [bp + 0x4]          ; 0x4a7f
    add ax, strict word 0x19         ; 0x4a82
    push ax                          ; 0x4a85
    push ax                          ; 0x4a86
    call loc_2ec0                    ; 0x4a87
    add sp, byte 4                   ; 0x4a8a
    push ax                          ; 0x4a8d
    mov ax, 0xfe                     ; 0x4a8e
    push ax                          ; 0x4a91
    call api_idx_0004_5              ; 0x4a92
    add sp, byte 0x1c                ; 0x4a95
@..api_idx_0012_2.l35:
    jmp short @..api_idx_0012_2.l37  ; 0x4a98
@..api_idx_0012_2.l36:
    cmp ax, strict word 1            ; 0x4a9a
    jne short @..api_idx_0012_2.l37  ; 0x4a9d
    jmp near @..api_idx_0012_2.l21   ; 0x4a9f
@..api_idx_0012_2.l37:
    mov ax, 5                        ; 0x4aa2
    imul word [bp + 0x4]             ; 0x4aa5
    add ax, word [bp + 0x6]          ; 0x4aa8
    mov bx, ax                       ; 0x4aab
    mov al, byte [bx - 0x6e28]       ; 0x4aad
    sub ah, ah                       ; 0x4ab1
    jmp near @..api_idx_0012_2.l38   ; 0x4ab3

    db 0x83, 0x7e, 0x04, 0x05, 0x7d, 0x2e, 0x8b, 0x46, 0x1c, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe6, 0xe3
    db 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x1e, 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x1c
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xe3, 0xe3, 0x83, 0xc4, 0x04, 0x50, 0xff, 0x76, 0x0a, 0xe8, 0x38
    db 0xa5, 0x83, 0xc4, 0x08, 0xe9, 0x95, 0x00, 0x83, 0x7e, 0x04, 0x05, 0x7d, 0x2e, 0x8b, 0x46, 0x30
    db 0x03, 0x46, 0x04, 0x50, 0xe8, 0xaf, 0xe3, 0x59, 0x50, 0xb8, 0x02, 0x00, 0x50, 0x8b, 0x46, 0x32
    db 0x03, 0x46, 0x04, 0x50, 0x8b, 0x46, 0x30, 0x03, 0x46, 0x04, 0x50, 0xe8, 0xac, 0xe3, 0x83, 0xc4
    db 0x04, 0x50, 0xff, 0x76, 0x16, 0xe8, 0x01, 0xa5, 0x83, 0xc4, 0x08, 0xeb, 0x5f, 0x83, 0x7e, 0x04
    db 0x05, 0x7d, 0x3c, 0xa1, 0xd2, 0x91, 0x03, 0x06, 0xe8, 0x82, 0xb9, 0x02, 0x00, 0x99, 0xf7, 0xf9
    db 0x8b, 0xc2, 0x85, 0xc0, 0x74, 0x08, 0x8b, 0x46, 0x34, 0x03, 0x46, 0x04, 0xeb, 0x03, 0xb8, 0xff
    db 0xff, 0x50, 0x51, 0x85, 0xd2, 0x74, 0x08, 0x8b, 0x46, 0x36, 0x03, 0x46, 0x04, 0xeb, 0x06, 0x8b
    db 0x46, 0x34, 0x03, 0x46, 0x04, 0x50, 0xff, 0x76, 0x14, 0xe8, 0xbd, 0xa4, 0x83, 0xc4, 0x08, 0xeb
    db 0x1b, 0xeb, 0x19, 0xeb, 0x17, 0xb0, 0x9b, 0xfd, 0x9a, 0x34, 0x9b, 0x6a, 0x9b, 0xae, 0x9b

@..api_idx_0012_2.l38:
    cmp ax, strict word 5            ; 0x4b75
    jae short @..api_idx_0012_2.l39  ; 0x4b78
    xchg bx, ax                      ; 0x4b7a
    shl bx, 1                        ; 0x4b7b
    jmp [cs:bx - 0x644e]             ; 0x4b7d
@..api_idx_0012_2.l39:
    cmp word [bp - 0x0012], byte 0   ; 0x4b82
    jne short @..api_idx_0012_2.l40  ; 0x4b86
    jmp near @..api_idx_0012_2.l53   ; 0x4b88
@..api_idx_0012_2.l40:
    mov ax, 0xa                      ; 0x4b8b
    imul word [bp + 0x4]             ; 0x4b8e
    mov cx, word [bp + 0x6]          ; 0x4b91
    shl cx, 1                        ; 0x4b94
    add ax, cx                       ; 0x4b96
    mov bx, ax                       ; 0x4b98
    cmp word [bx - 0x6dc4], byte 0   ; 0x4b9a
    jne short @..api_idx_0012_2.l41  ; 0x4b9f
    cmp word [bx - 0x6d46], byte 0   ; 0x4ba1
    jne short @..api_idx_0012_2.l41  ; 0x4ba6
    jmp near @..api_idx_0012_2.l53   ; 0x4ba8
@..api_idx_0012_2.l41:
    cmp word [bp + 0x6], byte 2      ; 0x4bab
    jne short @..api_idx_0012_2.l42  ; 0x4baf
    mov ax, word [bp + 0x24]         ; 0x4bb1
    add ax, word [bp + 0x4]          ; 0x4bb4
    push ax                          ; 0x4bb7
    call loc_2eac                    ; 0x4bb8
    pop cx                           ; 0x4bbb
    push ax                          ; 0x4bbc
    mov ax, 2                        ; 0x4bbd
    push ax                          ; 0x4bc0
    mov ax, word [bp + 0x26]         ; 0x4bc1
    add ax, word [bp + 0x4]          ; 0x4bc4
    push ax                          ; 0x4bc7
    mov ax, word [bp + 0x24]         ; 0x4bc8
    add ax, word [bp + 0x4]          ; 0x4bcb
    push ax                          ; 0x4bce
    call loc_2ec0                    ; 0x4bcf
    add sp, byte 4                   ; 0x4bd2
    push ax                          ; 0x4bd5
    mov ax, 3                        ; 0x4bd6
    push ax                          ; 0x4bd9
    db 0xe8, 0x42, 0xa4 ; call 0xf01f
    add sp, byte 8                   ; 0x4bdd
    jmp short @..api_idx_0012_2.l46  ; 0x4be0
@..api_idx_0012_2.l42:
    cmp word [bp + 0x4], byte 0      ; 0x4be2
    jle short @..api_idx_0012_2.l46  ; 0x4be6
    mov ax, 0xffff                   ; 0x4be8
    cmp word [bp + 0x6], byte 3      ; 0x4beb
    jne short @..api_idx_0012_2.l43  ; 0x4bef
    mov ax, word [bp + 0x2e]         ; 0x4bf1
    add ax, word [bp + 0x4]          ; 0x4bf4
@..api_idx_0012_2.l43:
    push ax                          ; 0x4bf7
    mov ax, 2                        ; 0x4bf8
    push ax                          ; 0x4bfb
    cmp word [bp + 0x6], byte 3      ; 0x4bfc
    jne short @..api_idx_0012_2.l44  ; 0x4c00
    mov ax, word [bp + 0x2e]         ; 0x4c02
    add ax, word [bp + 0x4]          ; 0x4c05
    jmp short @..api_idx_0012_2.l45  ; 0x4c08
@..api_idx_0012_2.l44:
    mov ax, word [bp + 0x2c]         ; 0x4c0a
    add ax, word [bp + 0x4]          ; 0x4c0d
@..api_idx_0012_2.l45:
    push ax                          ; 0x4c10
    mov ax, 3                        ; 0x4c11
    push ax                          ; 0x4c14
    db 0xe8, 0x07, 0xa4 ; call 0xf01f
    add sp, byte 8                   ; 0x4c18
@..api_idx_0012_2.l46:
    mov ax, 0xa                      ; 0x4c1b
    imul word [bp + 0x4]             ; 0x4c1e
    mov cx, word [bp + 0x6]          ; 0x4c21
    shl cx, 1                        ; 0x4c24
    add ax, cx                       ; 0x4c26
    mov bx, ax                       ; 0x4c28
    cmp word [bx - 0x6dc4], byte 0   ; 0x4c2a
    jne short @..api_idx_0012_2.l47  ; 0x4c2f
    jmp near @..api_idx_0012_2.l53   ; 0x4c31
@..api_idx_0012_2.l47:
    mov cx, word [bx - 0x6dc4]       ; 0x4c34
    dec cx                           ; 0x4c38
    mov ax, word [data_82ee]         ; 0x4c39
    sub ax, cx                       ; 0x4c3c
    add ax, strict word 6            ; 0x4c3e
    mov cx, 4                        ; 0x4c41
    cwd                              ; 0x4c44
    idiv cx                          ; 0x4c45
    mov word [bp - 0x0002], dx       ; 0x4c47
    mov word [bp - 0x0004], 0        ; 0x4c4a
    mov ax, dx                       ; 0x4c4f
    mov cx, 2                        ; 0x4c51
    cwd                              ; 0x4c54
    idiv cx                          ; 0x4c55
    mov ax, dx                       ; 0x4c57
    test ax, ax                      ; 0x4c59
    jne short @..api_idx_0012_2.l48  ; 0x4c5b
    cmp word [bp + 0x4], byte 0      ; 0x4c5d
    jg short @..api_idx_0012_2.l49   ; 0x4c61
@..api_idx_0012_2.l48:
    cmp word [bp + 0x6], byte 2      ; 0x4c63
    jne short @..api_idx_0012_2.l50  ; 0x4c67
@..api_idx_0012_2.l49:
    mov cx, word [bp + 0x4]          ; 0x4c69
    shl cx, 1                        ; 0x4c6c
    shl cx, 1                        ; 0x4c6e
    shl cx, 1                        ; 0x4c70
    add ax, cx                       ; 0x4c72
    inc ax                           ; 0x4c74
    mov word [bp - 0x0004], ax       ; 0x4c75
    mov ax, word [data_91d0]         ; 0x4c78
    mov word [bp - 0x0006], ax       ; 0x4c7b
    mov ax, word [bx + 0x260]        ; 0x4c7e
    mov word [bp - 0x0008], ax       ; 0x4c82
    jmp short @..api_idx_0012_2.l52  ; 0x4c85
@..api_idx_0012_2.l50:
    cmp word [bp + 0x4], byte 0      ; 0x4c87
    jle short @..api_idx_0012_2.l52  ; 0x4c8b
    mov ax, word [bp + 0x4]          ; 0x4c8d
    add ax, strict word 0x20         ; 0x4c90
    mov word [bp - 0x0004], ax       ; 0x4c93
    mov ax, 0                        ; 0x4c96
    cmp word [bp + 0x6], byte 3      ; 0x4c99
    jne short @..api_idx_0012_2.l51  ; 0x4c9d
    mov ax, 1                        ; 0x4c9f
@..api_idx_0012_2.l51:
    mov word [bp - 0x0006], ax       ; 0x4ca2
    mov word [bp - 0x0008], 0        ; 0x4ca5
@..api_idx_0012_2.l52:
    cmp word [bp - 0x0004], byte 0   ; 0x4caa
    je short @..api_idx_0012_2.l53   ; 0x4cae
    mov ax, 0                        ; 0x4cb0
    push ax                          ; 0x4cb3
    push ax                          ; 0x4cb4
    push word [bp - 0x0006]          ; 0x4cb5
    push ax                          ; 0x4cb8
    push word [bp + 0x4]             ; 0x4cb9
    mov ax, 0xf8                     ; 0x4cbc
    push ax                          ; 0x4cbf
    mov ax, 0x48                     ; 0x4cc0
    push ax                          ; 0x4cc3
    mov ax, 0                        ; 0x4cc4
    push ax                          ; 0x4cc7
    push ax                          ; 0x4cc8
    push ax                          ; 0x4cc9
    push word [bp - 0x0004]          ; 0x4cca
    push ax                          ; 0x4ccd
    push word [bp - 0x0008]          ; 0x4cce
    mov ax, 4                        ; 0x4cd1
    push ax                          ; 0x4cd4
    call api_idx_0004_5              ; 0x4cd5
    add sp, byte 0x1c                ; 0x4cd8
@..api_idx_0012_2.l53:
    cmp word [bp + 0x4], byte 4      ; 0x4cdb
    jl short @..api_idx_0012_2.l54   ; 0x4cdf
    jmp near @..api_idx_0012_2.l75   ; 0x4ce1
@..api_idx_0012_2.l54:
    mov ax, 5                        ; 0x4ce4
    imul word [bp + 0x4]             ; 0x4ce7
    add ax, word [bp + 0x6]          ; 0x4cea
    mov bx, ax                       ; 0x4ced
    cmp byte [bx - 0x6d60], 3        ; 0x4cef
    je short @..api_idx_0012_2.l55   ; 0x4cf4
    jmp near @..api_idx_0012_2.l61   ; 0x4cf6
@..api_idx_0012_2.l55:
    mov ax, word [bp + 0x4]          ; 0x4cf9
    cmp ax, strict word 0            ; 0x4cfc
    jg short @..api_idx_0012_2.l56   ; 0x4cff
    mov ax, word [bp + 0x6]          ; 0x4d01
    cmp ax, strict word 2            ; 0x4d04
    je short @..api_idx_0012_2.l56   ; 0x4d07
    jmp near @..api_idx_0012_2.l61   ; 0x4d09
@..api_idx_0012_2.l56:
    cmp word [bp + 0x4], byte 0      ; 0x4d0c
    jne short @..api_idx_0012_2.l57  ; 0x4d10
    mov ax, word [bp + 0x6]          ; 0x4d12
    cmp ax, strict word 2            ; 0x4d15
    jne short @..api_idx_0012_2.l57  ; 0x4d18
    cmp word [data_8f22], byte 0     ; 0x4d1a
    je short @..api_idx_0012_2.l57   ; 0x4d1f
    mov word [data_8f20], 0xffff     ; 0x4d21
@..api_idx_0012_2.l57:
    cmp word [bp + 0x4], byte 0      ; 0x4d27
    jne short @..api_idx_0012_2.l58  ; 0x4d2b
    mov ax, word [bp + 0x6]          ; 0x4d2d
    cmp ax, strict word 2            ; 0x4d30
    jne short @..api_idx_0012_2.l58  ; 0x4d33
    mov ax, 2                        ; 0x4d35
    jmp short @..api_idx_0012_2.l59  ; 0x4d38
@..api_idx_0012_2.l58:
    mov ax, 1                        ; 0x4d3a
@..api_idx_0012_2.l59:
    mov word [bp - 0x0004], ax       ; 0x4d3d
    mov ax, word [bp + 0x4]          ; 0x4d40
    cmp word [bp - 0x0004], byte 2   ; 0x4d43
    je short @..api_idx_0012_2.l60   ; 0x4d47
    dec ax                           ; 0x4d49
@..api_idx_0012_2.l60:
    mov word [bp - 0x0008], ax       ; 0x4d4a
    mov ax, 1                        ; 0x4d4d
    push ax                          ; 0x4d50
    push ax                          ; 0x4d51
    mov ax, 0                        ; 0x4d52
    push ax                          ; 0x4d55
    mov ax, word [bp - 0x0008]       ; 0x4d56
    shl ax, 1                        ; 0x4d59
    mov bx, ax                       ; 0x4d5b
    push word [bx + 0x576]           ; 0x4d5d
    push word [bp + 0x4]             ; 0x4d61
    mov ax, 0xf8                     ; 0x4d64
    push ax                          ; 0x4d67
    mov ax, 0x48                     ; 0x4d68
    push ax                          ; 0x4d6b
    mov ax, 0                        ; 0x4d6c
    push ax                          ; 0x4d6f
    push ax                          ; 0x4d70
    push ax                          ; 0x4d71
    push word [bp - 0x0004]          ; 0x4d72
    push word [bx + 0x3dc]           ; 0x4d75
    mov ax, 0xa                      ; 0x4d79
    imul word [bp + 0x4]             ; 0x4d7c
    mov cx, word [bp + 0x6]          ; 0x4d7f
    shl cx, 1                        ; 0x4d82
    add ax, cx                       ; 0x4d84
    mov bx, ax                       ; 0x4d86
    push word [bx + 0x3aa]           ; 0x4d88
    mov ax, 0xc                      ; 0x4d8c
    push ax                          ; 0x4d8f
    call api_idx_0004_5              ; 0x4d90
    add sp, byte 0x1c                ; 0x4d93
@..api_idx_0012_2.l61:
    mov ax, 5                        ; 0x4d96
    imul word [bp + 0x4]             ; 0x4d99
    add ax, word [bp + 0x6]          ; 0x4d9c
    mov bx, ax                       ; 0x4d9f
    cmp byte [bx - 0x6d60], 1        ; 0x4da1
    je short @..api_idx_0012_2.l62   ; 0x4da6
    cmp byte [bx - 0x6d60], 2        ; 0x4da8
    jne short @..api_idx_0012_2.l64  ; 0x4dad
@..api_idx_0012_2.l62:
    mov ax, word [bp + 0x4]          ; 0x4daf
    cmp ax, strict word 0            ; 0x4db2
    jg short @..api_idx_0012_2.l63   ; 0x4db5
    mov ax, word [bp + 0x6]          ; 0x4db7
    cmp ax, strict word 2            ; 0x4dba
    jne short @..api_idx_0012_2.l64  ; 0x4dbd
@..api_idx_0012_2.l63:
    mov ax, 1                        ; 0x4dbf
    push ax                          ; 0x4dc2
    push ax                          ; 0x4dc3
    mov ax, 0                        ; 0x4dc4
    push ax                          ; 0x4dc7
    mov ax, word [bp + 0x4]          ; 0x4dc8
    shl ax, 1                        ; 0x4dcb
    mov bx, ax                       ; 0x4dcd
    push word [bx + 0x576]           ; 0x4dcf
    push word [bp + 0x4]             ; 0x4dd3
    mov ax, 0xf8                     ; 0x4dd6
    push ax                          ; 0x4dd9
    mov ax, 0x48                     ; 0x4dda
    push ax                          ; 0x4ddd
    mov ax, 0                        ; 0x4dde
    push ax                          ; 0x4de1
    push ax                          ; 0x4de2
    push ax                          ; 0x4de3
    mov ax, 5                        ; 0x4de4
    imul word [bp + 0x4]             ; 0x4de7
    add ax, word [bp + 0x6]          ; 0x4dea
    mov bx, ax                       ; 0x4ded
    mov al, byte [bx - 0x6d60]       ; 0x4def
    sub ah, ah                       ; 0x4df3
    push ax                          ; 0x4df5
    mov ax, word [bp + 0x4]          ; 0x4df6
    shl ax, 1                        ; 0x4df9
    mov bx, ax                       ; 0x4dfb
    push word [bx + 0x3dc]           ; 0x4dfd
    mov ax, 0xa                      ; 0x4e01
    imul word [bp + 0x4]             ; 0x4e04
    mov cx, word [bp + 0x6]          ; 0x4e07
    shl cx, 1                        ; 0x4e0a
    add ax, cx                       ; 0x4e0c
    mov bx, ax                       ; 0x4e0e
    push word [bx + 0x3aa]           ; 0x4e10
    mov ax, 0xb                      ; 0x4e14
    push ax                          ; 0x4e17
    call api_idx_0004_5              ; 0x4e18
    add sp, byte 0x1c                ; 0x4e1b
@..api_idx_0012_2.l64:
    mov ax, 5                        ; 0x4e1e
    imul word [bp + 0x4]             ; 0x4e21
    add ax, word [bp + 0x6]          ; 0x4e24
    mov bx, ax                       ; 0x4e27
    cmp byte [bx - 0x6ddd], 0        ; 0x4e29
    jne short @..api_idx_0012_2.l65  ; 0x4e2e
    jmp near @..api_idx_0012_2.l75   ; 0x4e30
@..api_idx_0012_2.l65:
    cmp word [bp + 0x4], byte 0      ; 0x4e33
    jne short @..api_idx_0012_2.l66  ; 0x4e37
    mov ax, word [bp + 0x6]          ; 0x4e39
    cmp ax, strict word 2            ; 0x4e3c
    jne short @..api_idx_0012_2.l66  ; 0x4e3f
    cmp word [data_8f22], byte 0     ; 0x4e41
    je short @..api_idx_0012_2.l66   ; 0x4e46
    mov al, byte [bx - 0x6ddd]       ; 0x4e48
    sub ah, ah                       ; 0x4e4c
    mov word [data_8f20], ax         ; 0x4e4e
    jmp near @..api_idx_0012_2.l75   ; 0x4e51
@..api_idx_0012_2.l66:
    mov ax, word [bp + 0x4]          ; 0x4e54
    cmp ax, strict word 0            ; 0x4e57
    jg short @..api_idx_0012_2.l67   ; 0x4e5a
    mov ax, word [bp + 0x6]          ; 0x4e5c
    cmp ax, strict word 2            ; 0x4e5f
    je short @..api_idx_0012_2.l67   ; 0x4e62
    jmp near @..api_idx_0012_2.l75   ; 0x4e64
@..api_idx_0012_2.l67:
    mov al, byte [bx - 0x6ddd]       ; 0x4e67
    sub ah, ah                       ; 0x4e6b
    mov cx, ax                       ; 0x4e6d
    dec ax                           ; 0x4e6f
    mov cx, ax                       ; 0x4e70
    mov ax, word [data_82ee]         ; 0x4e72
    sub ax, cx                       ; 0x4e75
    add ax, strict word 6            ; 0x4e77
    mov cx, 4                        ; 0x4e7a
    cwd                              ; 0x4e7d
    idiv cx                          ; 0x4e7e
    mov word [bp - 0x0002], dx       ; 0x4e80
    mov ax, dx                       ; 0x4e83
    jmp near @..api_idx_0012_2.l72   ; 0x4e85
@..api_idx_0012_2.l68:
    mov ax, 1                        ; 0x4e88
    push ax                          ; 0x4e8b
    push ax                          ; 0x4e8c
    mov ax, 0                        ; 0x4e8d
    push ax                          ; 0x4e90
    mov ax, word [bp + 0x4]          ; 0x4e91
    shl ax, 1                        ; 0x4e94
    mov bx, ax                       ; 0x4e96
    push word [bx + 0x576]           ; 0x4e98
    push word [bp + 0x4]             ; 0x4e9c
    mov ax, 0xf8                     ; 0x4e9f
    push ax                          ; 0x4ea2
    mov ax, 0x48                     ; 0x4ea3
    push ax                          ; 0x4ea6
    mov ax, 0                        ; 0x4ea7
    push ax                          ; 0x4eaa
    mov ax, 5                        ; 0x4eab
    cmp word [bp - 0x0002], byte 0   ; 0x4eae
    jne short @..api_idx_0012_2.l69  ; 0x4eb2
    mov ax, 4                        ; 0x4eb4
@..api_idx_0012_2.l69:
    push ax                          ; 0x4eb7
    mov ax, 2                        ; 0x4eb8
    push ax                          ; 0x4ebb
    mov ax, 1                        ; 0x4ebc
    push ax                          ; 0x4ebf
    push word [bx + 0x3dc]           ; 0x4ec0
    mov ax, 0xa                      ; 0x4ec4
    imul word [bp + 0x4]             ; 0x4ec7
    mov cx, word [bp + 0x6]          ; 0x4eca
    shl cx, 1                        ; 0x4ecd
    add ax, cx                       ; 0x4ecf
    mov bx, ax                       ; 0x4ed1
    push word [bx + 0x3aa]           ; 0x4ed3
    mov ax, 3                        ; 0x4ed7
    push ax                          ; 0x4eda
    call api_idx_0004_5              ; 0x4edb
    add sp, byte 0x1c                ; 0x4ede
    jmp short @..api_idx_0012_2.l75  ; 0x4ee1
@..api_idx_0012_2.l70:
    mov ax, 1                        ; 0x4ee3
    push ax                          ; 0x4ee6
    push ax                          ; 0x4ee7
    mov ax, 0                        ; 0x4ee8
    cmp word [bp - 0x0002], byte 3   ; 0x4eeb
    jne short @..api_idx_0012_2.l71  ; 0x4eef
    mov ax, 1                        ; 0x4ef1
@..api_idx_0012_2.l71:
    push ax                          ; 0x4ef4
    mov ax, word [bp + 0x4]          ; 0x4ef5
    shl ax, 1                        ; 0x4ef8
    mov bx, ax                       ; 0x4efa
    push word [bx + 0x576]           ; 0x4efc
    push word [bp + 0x4]             ; 0x4f00
    mov ax, 0xf8                     ; 0x4f03
    push ax                          ; 0x4f06
    mov ax, 0x48                     ; 0x4f07
    push ax                          ; 0x4f0a
    mov ax, 0                        ; 0x4f0b
    push ax                          ; 0x4f0e
    push ax                          ; 0x4f0f
    push ax                          ; 0x4f10
    mov ax, 3                        ; 0x4f11
    push ax                          ; 0x4f14
    push word [bx + 0x3dc]           ; 0x4f15
    mov ax, 0xa                      ; 0x4f19
    imul word [bp + 0x4]             ; 0x4f1c
    mov cx, word [bp + 0x6]          ; 0x4f1f
    shl cx, 1                        ; 0x4f22
    add ax, cx                       ; 0x4f24
    mov bx, ax                       ; 0x4f26
    push word [bx + 0x3aa]           ; 0x4f28
    mov ax, 3                        ; 0x4f2c
    push ax                          ; 0x4f2f
    call api_idx_0004_5              ; 0x4f30
    add sp, byte 0x1c                ; 0x4f33
    jmp short @..api_idx_0012_2.l75  ; 0x4f36
@..api_idx_0012_2.l72:
    cmp ax, strict word 0            ; 0x4f38
    jne short @..api_idx_0012_2.l73  ; 0x4f3b
    jmp near @..api_idx_0012_2.l68   ; 0x4f3d
@..api_idx_0012_2.l73:
    cmp ax, strict word 1            ; 0x4f40
    je short @..api_idx_0012_2.l70   ; 0x4f43
    cmp ax, strict word 2            ; 0x4f45
    jne short @..api_idx_0012_2.l74  ; 0x4f48
    jmp near @..api_idx_0012_2.l68   ; 0x4f4a
@..api_idx_0012_2.l74:
    cmp ax, strict word 3            ; 0x4f4d
    je short @..api_idx_0012_2.l70   ; 0x4f50
@..api_idx_0012_2.l75:
    ret                              ; 0x4f52
