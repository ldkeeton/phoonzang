api_idx_0012_2:
    mov ax, 0xffee                   ; 0x4665
    call ds_aztec_csav               ; 0x4668
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
    mov ax, word [bss_82ee]          ; 0x4772
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
    inc ax                           ; 0x47bb
    mov word [bp - 0x0004], ax       ; 0x47bc
    mov ax, word [bss_91d0]          ; 0x47bf
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
    cmp word [bss_91d4], byte 2      ; 0x4850
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
    cmp word [bss_91d4], byte 0      ; 0x495a
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
    cmp word [bss_91d4], byte 4      ; 0x4a00
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
    call ds_bios_mouse_loc_4266      ; 0x4a3b
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
    jmp near @..api_idx_0012_2.l40   ; 0x4ab3
loc_4ab6:
    cmp word [bp + 0x4], byte 5      ; 0x4ab6
    jge short @..api_idx_0012_2.l38  ; 0x4aba
    mov ax, word [bp + 0x1c]         ; 0x4abc
    add ax, word [bp + 0x4]          ; 0x4abf
    push ax                          ; 0x4ac2
    call loc_2eac                    ; 0x4ac3
    pop cx                           ; 0x4ac6
    push ax                          ; 0x4ac7
    mov ax, 2                        ; 0x4ac8
    push ax                          ; 0x4acb
    mov ax, word [bp + 0x1e]         ; 0x4acc
    add ax, word [bp + 0x4]          ; 0x4acf
    push ax                          ; 0x4ad2
    mov ax, word [bp + 0x1c]         ; 0x4ad3
    add ax, word [bp + 0x4]          ; 0x4ad6
    push ax                          ; 0x4ad9
    call loc_2ec0                    ; 0x4ada
    add sp, byte 4                   ; 0x4add
    push ax                          ; 0x4ae0
    push word [bp + 0xa]             ; 0x4ae1
    call ds_bios_mouse_loc_4266      ; 0x4ae4
    add sp, byte 8                   ; 0x4ae7
@..api_idx_0012_2.l38:
    jmp near loc_4b82                ; 0x4aea
loc_4aed:
    cmp word [bp + 0x4], byte 5      ; 0x4aed
    jge short @..api_idx_0012_2.l39  ; 0x4af1
    mov ax, word [bp + 0x30]         ; 0x4af3
    add ax, word [bp + 0x4]          ; 0x4af6
    push ax                          ; 0x4af9
    call loc_2eac                    ; 0x4afa
    pop cx                           ; 0x4afd
    push ax                          ; 0x4afe
    mov ax, 2                        ; 0x4aff
    push ax                          ; 0x4b02
    mov ax, word [bp + 0x32]         ; 0x4b03
    add ax, word [bp + 0x4]          ; 0x4b06
    push ax                          ; 0x4b09
    mov ax, word [bp + 0x30]         ; 0x4b0a
    add ax, word [bp + 0x4]          ; 0x4b0d
    push ax                          ; 0x4b10
    call loc_2ec0                    ; 0x4b11
    add sp, byte 4                   ; 0x4b14
    push ax                          ; 0x4b17
    push word [bp + 0x16]            ; 0x4b18
    call ds_bios_mouse_loc_4266      ; 0x4b1b
    add sp, byte 8                   ; 0x4b1e
@..api_idx_0012_2.l39:
    jmp short loc_4b82               ; 0x4b21
