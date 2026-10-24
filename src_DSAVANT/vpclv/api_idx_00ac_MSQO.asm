; auto-generated
api_idx_00ac_MSQO:
    mov ax, 0xff54                   ; 0x45e0
    call aztec_csav                  ; 0x45e3
    mov ax, 0x248                    ; 0x45e6
    imul word [bp + 0x4]             ; 0x45e9
    mov bx, ax                       ; 0x45ec
    mov al, byte [bx + cell_key_grid + 0x130] ; 0x45ee
    sub ah, ah                       ; 0x45f2
    mov word [bp - 0x0006], ax       ; 0x45f4
    mov al, byte [bx + cell_key_grid + 0x133] ; 0x45f7
    sub ah, ah                       ; 0x45fb
    mov word [bp - 0x0008], ax       ; 0x45fd
    mov al, byte [bx + member_state + 0x3] ; 0x4600
    sub ah, ah                       ; 0x4604
    jmp near @..api_idx_00ac_MSQO.l1 ; 0x4606
jumptable_4679_case_0:
    mov ax, 5                        ; 0x4609
    push ax                          ; 0x460c
    call random_below                ; 0x460d
    pop cx                           ; 0x4610
    add ax, strict word 6            ; 0x4611
    mov word [bp - 0x0002], ax       ; 0x4614
    jmp near @..api_idx_00ac_MSQO.l2 ; 0x4617
jumptable_4679_case_1:
    mov ax, 3                        ; 0x461a
    push ax                          ; 0x461d
    call random_below                ; 0x461e
    pop cx                           ; 0x4621
    inc ax                           ; 0x4622
    inc ax                           ; 0x4623
    mov word [bp - 0x0002], ax       ; 0x4624
    jmp short @..api_idx_00ac_MSQO.l2 ; 0x4627
jumptable_4679_case_2:
    mov ax, 4                        ; 0x4629
    push ax                          ; 0x462c
    call random_below                ; 0x462d
    pop cx                           ; 0x4630
    add ax, strict word 4            ; 0x4631
    mov word [bp - 0x0002], ax       ; 0x4634
    jmp short @..api_idx_00ac_MSQO.l2 ; 0x4637
jumptable_4679_case_3:
    mov ax, 4                        ; 0x4639
    push ax                          ; 0x463c
    call random_below                ; 0x463d
    pop cx                           ; 0x4640
    inc ax                           ; 0x4641
    inc ax                           ; 0x4642
    inc ax                           ; 0x4643
    mov word [bp - 0x0002], ax       ; 0x4644
    jmp short @..api_idx_00ac_MSQO.l2 ; 0x4647
jumptable_4679_case_6:
    mov ax, 3                        ; 0x4649
    push ax                          ; 0x464c
    call random_below                ; 0x464d
    pop cx                           ; 0x4650
    inc ax                           ; 0x4651
    inc ax                           ; 0x4652
    inc ax                           ; 0x4653
    mov word [bp - 0x0002], ax       ; 0x4654
    jmp short @..api_idx_00ac_MSQO.l2 ; 0x4657
jumptable_4679_case_8:
    mov ax, 5                        ; 0x4659
    push ax                          ; 0x465c
    call random_below                ; 0x465d
    pop cx                           ; 0x4660
    add ax, strict word 5            ; 0x4661
    mov word [bp - 0x0002], ax       ; 0x4664
    jmp short @..api_idx_00ac_MSQO.l2 ; 0x4667
jumptable_4679_case_13:
    mov ax, 5                        ; 0x4669
    push ax                          ; 0x466c
    call random_below                ; 0x466d
    pop cx                           ; 0x4670
    add ax, strict word 4            ; 0x4671
    mov word [bp - 0x0002], ax       ; 0x4674
    jmp short @..api_idx_00ac_MSQO.l2 ; 0x4677
jumptable_4679:
    dw jumptable_4679_case_0 - IMAGE_BASE + __zres_end ; 0x4679
    dw jumptable_4679_case_1 - IMAGE_BASE + __zres_end ; 0x467b
    dw jumptable_4679_case_2 - IMAGE_BASE + __zres_end ; 0x467d
    dw jumptable_4679_case_3 - IMAGE_BASE + __zres_end ; 0x467f
    dw jumptable_4679_case_0 - IMAGE_BASE + __zres_end ; 0x4681
    dw jumptable_4679_case_2 - IMAGE_BASE + __zres_end ; 0x4683
    dw jumptable_4679_case_6 - IMAGE_BASE + __zres_end ; 0x4685
    dw jumptable_4679_case_6 - IMAGE_BASE + __zres_end ; 0x4687
    dw jumptable_4679_case_8 - IMAGE_BASE + __zres_end ; 0x4689
    dw jumptable_4679_case_6 - IMAGE_BASE + __zres_end ; 0x468b
    dw jumptable_4679_case_0 - IMAGE_BASE + __zres_end ; 0x468d
    dw jumptable_4679_case_8 - IMAGE_BASE + __zres_end ; 0x468f
    dw jumptable_4679_case_2 - IMAGE_BASE + __zres_end ; 0x4691
    dw jumptable_4679_case_13 - IMAGE_BASE + __zres_end ; 0x4693
@..api_idx_00ac_MSQO.l1:
    cmp ax, strict word 0xe          ; 0x4695
    jae short @..api_idx_00ac_MSQO.l2 ; 0x4698
    xchg bx, ax                      ; 0x469a
    shl bx, 1                        ; 0x469b
    jmp [cs:bx + jumptable_4679 - IMAGE_BASE + __zres_end] ; 0x469d
@..api_idx_00ac_MSQO.l2:
    mov ax, 4                        ; 0x46a2
    push ax                          ; 0x46a5
    call random_below                ; 0x46a6
    pop cx                           ; 0x46a9
    push ax                          ; 0x46aa
    mov ax, word [bp - 0x0006]       ; 0x46ab
    add ax, word [bp - 0x0008]       ; 0x46ae
    mov cx, 6                        ; 0x46b1
    cwd                              ; 0x46b4
    idiv cx                          ; 0x46b5
    mov cx, ax                       ; 0x46b7
    pop ax                           ; 0x46b9
    add ax, cx                       ; 0x46ba
    mov word [bp - 0x0004], ax       ; 0x46bc
    mov ax, word [bp - 0x0006]       ; 0x46bf
    shl ax, 1                        ; 0x46c2
    add ax, word [bp - 0x0008]       ; 0x46c4
    mov cx, 3                        ; 0x46c7
    imul cx                          ; 0x46ca
    mov word [bp - 0x000c], ax       ; 0x46cc
    mov ax, word [bp - 0x0008]       ; 0x46cf
    cmp ax, strict word 8            ; 0x46d2
    jge short @..api_idx_00ac_MSQO.l3 ; 0x46d5
    dec word [bp - 0x0002]           ; 0x46d7
@..api_idx_00ac_MSQO.l3:
    cmp ax, strict word 0xf          ; 0x46da
    jle short @..api_idx_00ac_MSQO.l4 ; 0x46dd
    inc word [bp - 0x0002]           ; 0x46df
@..api_idx_00ac_MSQO.l4:
    cmp ax, strict word 0x11         ; 0x46e2
    jle short @..api_idx_00ac_MSQO.l5 ; 0x46e5
    inc word [bp - 0x0002]           ; 0x46e7
@..api_idx_00ac_MSQO.l5:
    cmp word [bp - 0x0006], byte 0x0f ; 0x46ea
    jle short @..api_idx_00ac_MSQO.l6 ; 0x46ee
    mov ax, word [bp - 0x0006]       ; 0x46f0
    add word [bp - 0x000c], ax       ; 0x46f3
@..api_idx_00ac_MSQO.l6:
    cmp word [bp - 0x0006], byte 0x11 ; 0x46f6
    jle short @..api_idx_00ac_MSQO.l7 ; 0x46fa
    mov ax, word [bp - 0x0006]       ; 0x46fc
    add word [bp - 0x000c], ax       ; 0x46ff
@..api_idx_00ac_MSQO.l7:
    cmp word [bp - 0x0002], byte 1   ; 0x4702
    jge short @..api_idx_00ac_MSQO.l8 ; 0x4706
    mov word [bp - 0x0002], 1        ; 0x4708
@..api_idx_00ac_MSQO.l8:
    mov ax, 0x248                    ; 0x470d
    imul word [bp + 0x4]             ; 0x4710
    mov bx, ax                       ; 0x4713
    mov ax, word [bx + pc_spell_power_cap] ; 0x4715
    push ax                          ; 0x4719
    mov al, byte [bx + member_state + 0x11] ; 0x471a
    sub ah, ah                       ; 0x471e
    mov cx, ax                       ; 0x4720
    pop ax                           ; 0x4722
    cmp ax, cx                       ; 0x4723
    jge short @..api_idx_00ac_MSQO.l9 ; 0x4725
    mov word [bp - 0x0002], 1        ; 0x4727
    mov word [bp - 0x0004], 1        ; 0x472c
@..api_idx_00ac_MSQO.l9:
    mov ax, word [bp - 0x0002]       ; 0x4731
    add word [bx + member_pair_points + 0x2], ax ; 0x4734
    add word [bx + member_pair_points + 0x4], ax ; 0x4738
    mov ax, word [bp - 0x0004]       ; 0x473c
    add word [bx + pc_records], ax   ; 0x473f
    add word [bx + pc_records + 0x2], ax ; 0x4743
    mov ax, 0xf                      ; 0x4747
    imul word [bp - 0x000c]          ; 0x474a
    mov word [bx + pc_records + 0x6], ax ; 0x474d
    cmp byte [bx + member_state + 0x1], 5 ; 0x4751
    jne short @..api_idx_00ac_MSQO.l10 ; 0x4756
    shl ax, 1                        ; 0x4758
    mov cx, 3                        ; 0x475a
    cwd                              ; 0x475d
    idiv cx                          ; 0x475e
    mov word [bx + pc_records + 0x6], ax ; 0x4760
@..api_idx_00ac_MSQO.l10:
    mov ax, 0x64                     ; 0x4764
    imul word [bx + pc_records]      ; 0x4767
    cwd                              ; 0x476b
    idiv word [bx + pc_records + 0x2] ; 0x476c
    mov word [bp - 0x000a], ax       ; 0x4770
    cmp ax, strict word 1            ; 0x4773
    jge short @..api_idx_00ac_MSQO.l11 ; 0x4776
    cmp word [bx + pc_records], byte 0 ; 0x4778
    jle short @..api_idx_00ac_MSQO.l11 ; 0x477d
    mov ax, 1                        ; 0x477f
    jmp short @..api_idx_00ac_MSQO.l12 ; 0x4782
@..api_idx_00ac_MSQO.l11:
    mov ax, word [bp - 0x000a]       ; 0x4784
@..api_idx_00ac_MSQO.l12:
    mov word [bp - 0x000a], ax       ; 0x4787
    mov ax, 1                        ; 0x478a
    push ax                          ; 0x478d
    mov ax, 0x18                     ; 0x478e
    push ax                          ; 0x4791
    mov ax, dseg_93e9                ; 0x4792
    push ax                          ; 0x4795
    mov ax, dseg_93e5                ; 0x4796
    push ax                          ; 0x4799
    mov ax, 0xd5                     ; 0x479a
    push ax                          ; 0x479d
    push word [bx + pc_records + 0x2] ; 0x479e
    push word [bp - 0x000a]          ; 0x47a2
    mov ax, 0x63                     ; 0x47a5
    push ax                          ; 0x47a8
    mov ax, 6                        ; 0x47a9
    push ax                          ; 0x47ac
    mov ax, 0                        ; 0x47ad
    push ax                          ; 0x47b0
    call api_idx_0020_ORSV           ; 0x47b1
    add sp, byte 0x14                ; 0x47b4
    lea ax, word [bp - 0x005c]       ; 0x47b7
    push ax                          ; 0x47ba
    mov ax, 0x1395                   ; 0x47bb
    push ax                          ; 0x47be
    call load_message_string         ; 0x47bf
    add sp, byte 4                   ; 0x47c2
    mov ax, 1                        ; 0x47c5
    push ax                          ; 0x47c8
    lea ax, word [bp - 0x005c]       ; 0x47c9
    push ax                          ; 0x47cc
    call api_idx_0004_PMIU           ; 0x47cd
    add sp, byte 4                   ; 0x47d0
    push word [bp + 0x4]             ; 0x47d3
    call api_idx_007c_MOJH           ; 0x47d6
    pop cx                           ; 0x47d9
    mov ax, 0x67                     ; 0x47da
    push ax                          ; 0x47dd
    mov ax, 0xa2                     ; 0x47de
    push ax                          ; 0x47e1
    mov ax, 6                        ; 0x47e2
    push ax                          ; 0x47e5
    push ax                          ; 0x47e6
    call gfx_show_area               ; 0x47e7
    add sp, byte 8                   ; 0x47ea
    mov ax, 1                        ; 0x47ed
    push ax                          ; 0x47f0
    mov ax, 0x18                     ; 0x47f1
    push ax                          ; 0x47f4
    mov ax, dseg_93ed                ; 0x47f5
    push ax                          ; 0x47f8
    mov ax, dseg_93eb                ; 0x47f9
    push ax                          ; 0x47fc
    mov ax, 0xd4                     ; 0x47fd
    push ax                          ; 0x4800
    mov ax, 0x248                    ; 0x4801
    imul word [bp + 0x4]             ; 0x4804
    mov bx, ax                       ; 0x4807
    push word [bx + member_pair_points + 0x4] ; 0x4809
    push word [bx + member_pair_points + 0x2] ; 0x480d
    mov ax, 0x5d                     ; 0x4811
    push ax                          ; 0x4814
    mov ax, 6                        ; 0x4815
    push ax                          ; 0x4818
    mov ax, 0                        ; 0x4819
    push ax                          ; 0x481c
    call api_idx_0020_ORSV           ; 0x481d
    add sp, byte 0x14                ; 0x4820
    lea ax, word [bp - 0x005c]       ; 0x4823
    push ax                          ; 0x4826
    mov ax, 0x1394                   ; 0x4827
    cmp word [bp - 0x0002], byte 1   ; 0x482a
    jne short @..api_idx_00ac_MSQO.l13 ; 0x482e
    mov ax, 0x1393                   ; 0x4830
@..api_idx_00ac_MSQO.l13:
    push ax                          ; 0x4833
    call load_message_string         ; 0x4834
    add sp, byte 4                   ; 0x4837
    lea ax, word [bp - 0x00ac]       ; 0x483a
    push ax                          ; 0x483e
    push word [bp - 0x0002]          ; 0x483f
    call format_int_decimal          ; 0x4842
    add sp, byte 4                   ; 0x4845
    mov ax, 0x24                     ; 0x4848
    push ax                          ; 0x484b
    lea ax, word [bp - 0x00ac]       ; 0x484c
    push ax                          ; 0x4850
    lea ax, word [bp - 0x005c]       ; 0x4851
    push ax                          ; 0x4854
    call str_subst_char              ; 0x4855
    add sp, byte 6                   ; 0x4858
    mov ax, 1                        ; 0x485b
    push ax                          ; 0x485e
    lea ax, word [bp - 0x005c]       ; 0x485f
    push ax                          ; 0x4862
    call api_idx_0004_PMIU           ; 0x4863
    add sp, byte 4                   ; 0x4866
    push word [bp + 0x4]             ; 0x4869
    call api_idx_007c_MOJH           ; 0x486c
    pop cx                           ; 0x486f
    mov ax, 0x67                     ; 0x4870
    push ax                          ; 0x4873
    mov ax, 0xa2                     ; 0x4874
    push ax                          ; 0x4877
    mov ax, 6                        ; 0x4878
    push ax                          ; 0x487b
    push ax                          ; 0x487c
    call gfx_show_area               ; 0x487d
    add sp, byte 8                   ; 0x4880
    ret                              ; 0x4883
