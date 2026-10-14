; auto-generated
api_idx_0054_HNSH:
    mov ax, 0xffac                   ; 0x4514
    call aztec_csav                  ; 0x4517
    mov word [bp - 0x0002], 0        ; 0x451a
    jmp near @..api_idx_0054_HNSH.l10 ; 0x451f
@..api_idx_0054_HNSH.l1:
    mov ax, 0xe                      ; 0x4522
    imul word [bp - 0x0002]          ; 0x4525
    add ax, word [bp + 0x8]          ; 0x4528
    inc ax                           ; 0x452b
    push ax                          ; 0x452c
    mov ax, word [bp + 0x6]          ; 0x452d
    inc ax                           ; 0x4530
    inc ax                           ; 0x4531
    push ax                          ; 0x4532
    call thunk                       ; 0x4533
    add sp, byte 4                   ; 0x4536
    mov ax, 0xc3                     ; 0x4539
    push ax                          ; 0x453c
    mov ax, 0x9b                     ; 0x453d
    push ax                          ; 0x4540
    call thunk_3                     ; 0x4541
    add sp, byte 4                   ; 0x4544
    mov ax, 0x248                    ; 0x4547
    imul word [bp + 0x4]             ; 0x454a
    mov bx, ax                       ; 0x454d
    mov al, byte [bx + 0x5e2d]       ; 0x454f
    sub ah, ah                       ; 0x4553
    push ax                          ; 0x4555
    mov ax, word [bp + 0xe]          ; 0x4556
    add ax, word [bp - 0x0002]       ; 0x4559
    shl ax, 1                        ; 0x455c
    add ax, 0x9882                   ; 0x455e
    push ax                          ; 0x4561
    call ds_leaf_loc_KIMU            ; 0x4562
    add sp, byte 4                   ; 0x4565
    test ax, ax                      ; 0x4568
    je short @..api_idx_0054_HNSH.l2 ; 0x456a
    mov ax, 0x248                    ; 0x456c
    imul word [bp + 0x4]             ; 0x456f
    mov bx, ax                       ; 0x4572
    mov al, byte [bx + 0x5e2b]       ; 0x4574
    sub ah, ah                       ; 0x4578
    push ax                          ; 0x457a
    mov ax, word [bp + 0xe]          ; 0x457b
    add ax, word [bp - 0x0002]       ; 0x457e
    shl ax, 1                        ; 0x4581
    add ax, 0x98be                   ; 0x4583
    push ax                          ; 0x4586
    call ds_leaf_loc_KIMU            ; 0x4587
    add sp, byte 4                   ; 0x458a
    test ax, ax                      ; 0x458d
    je short @..api_idx_0054_HNSH.l2 ; 0x458f
    mov ax, 0x248                    ; 0x4591
    imul word [bp + 0x4]             ; 0x4594
    mov bx, ax                       ; 0x4597
    mov al, byte [bx + 0x5e2c]       ; 0x4599
    sub ah, ah                       ; 0x459d
    push ax                          ; 0x459f
    mov ax, word [bp + 0xe]          ; 0x45a0
    add ax, word [bp - 0x0002]       ; 0x45a3
    add ax, 0x98fa                   ; 0x45a6
    push ax                          ; 0x45a9
    call ds_leaf_loc_KIMU            ; 0x45aa
    add sp, byte 4                   ; 0x45ad
    test ax, ax                      ; 0x45b0
    jne short @..api_idx_0054_HNSH.l3 ; 0x45b2
@..api_idx_0054_HNSH.l2:
    lea ax, word [bp - 0x0054]       ; 0x45b4
    push ax                          ; 0x45b7
    mov ax, 0x61f                    ; 0x45b8
    push ax                          ; 0x45bb
    call ds_app_mem_VKHV             ; 0x45bc
    add sp, byte 4                   ; 0x45bf
    jmp short @..api_idx_0054_HNSH.l4 ; 0x45c2
@..api_idx_0054_HNSH.l3:
    lea ax, word [bp - 0x0054]       ; 0x45c4
    push ax                          ; 0x45c7
    mov ax, word [bp + 0xe]          ; 0x45c8
    add ax, word [bp - 0x0002]       ; 0x45cb
    mov bx, ax                       ; 0x45ce
    mov al, byte [bx - 0x66e8]       ; 0x45d0
    sub ah, ah                       ; 0x45d4
    add ax, 0x60e                    ; 0x45d6
    push ax                          ; 0x45d9
    call ds_app_mem_VKHV             ; 0x45da
    add sp, byte 4                   ; 0x45dd
@..api_idx_0054_HNSH.l4:
    mov ax, 0                        ; 0x45e0
    push ax                          ; 0x45e3
    lea ax, word [bp - 0x0054]       ; 0x45e4
    push ax                          ; 0x45e7
    call ds_string_loc_PTIK          ; 0x45e8
    add sp, byte 4                   ; 0x45eb
    mov ax, 0xe                      ; 0x45ee
    imul word [bp - 0x0002]          ; 0x45f1
    add ax, word [bp + 0x8]          ; 0x45f4
    add ax, strict word 7            ; 0x45f7
    push ax                          ; 0x45fa
    mov ax, word [bp + 0x6]          ; 0x45fb
    inc ax                           ; 0x45fe
    inc ax                           ; 0x45ff
    push ax                          ; 0x4600
    call thunk                       ; 0x4601
    add sp, byte 4                   ; 0x4604
    mov ax, 0xc3                     ; 0x4607
    push ax                          ; 0x460a
    mov ax, 1                        ; 0x460b
    push ax                          ; 0x460e
    call thunk_3                     ; 0x460f
    add sp, byte 4                   ; 0x4612
    mov ax, 0                        ; 0x4615
    push ax                          ; 0x4618
    mov ax, 8                        ; 0x4619
    push ax                          ; 0x461c
    mov ax, word [bp + 0xe]          ; 0x461d
    add ax, word [bp - 0x0002]       ; 0x4620
    shl ax, 1                        ; 0x4623
    shl ax, 1                        ; 0x4625
    mov bx, ax                       ; 0x4627
    push word [bx - 0x66c8]          ; 0x4629
    push word [bx - 0x66ca]          ; 0x462d
    call ds_app_string_JOKU          ; 0x4631
    add sp, byte 8                   ; 0x4634
    mov ax, 0xc3                     ; 0x4637
    push ax                          ; 0x463a
    mov ax, 0x1b                     ; 0x463b
    push ax                          ; 0x463e
    call thunk_3                     ; 0x463f
    add sp, byte 4                   ; 0x4642
    mov ax, 0                        ; 0x4645
    push ax                          ; 0x4648
    mov ax, 0x99ae                   ; 0x4649
    push ax                          ; 0x464c
    call ds_string_loc_PTIK          ; 0x464d
    add sp, byte 4                   ; 0x4650
    mov ax, word [bp + 0xe]          ; 0x4653
    add ax, word [bp - 0x0002]       ; 0x4656
    cmp ax, word [bp + 0x10]         ; 0x4659
    jne short @..api_idx_0054_HNSH.l5 ; 0x465c
    mov ax, 1                        ; 0x465e
    push ax                          ; 0x4661
    mov ax, 0xe                      ; 0x4662
    imul word [bp - 0x0002]          ; 0x4665
    add ax, word [bp + 0x8]          ; 0x4668
    add ax, strict word 0xd          ; 0x466b
    push ax                          ; 0x466e
    mov ax, 6                        ; 0x466f
    imul word [bp + 0xa]             ; 0x4672
    add ax, word [bp + 0x6]          ; 0x4675
    inc ax                           ; 0x4678
    inc ax                           ; 0x4679
    push ax                          ; 0x467a
    mov ax, 0xe                      ; 0x467b
    imul word [bp - 0x0002]          ; 0x467e
    add ax, word [bp + 0x8]          ; 0x4681
    inc ax                           ; 0x4684
    push ax                          ; 0x4685
    mov ax, word [bp + 0x6]          ; 0x4686
    add ax, strict word 0x53         ; 0x4689
    push ax                          ; 0x468c
    call thunk_7                     ; 0x468d
    add sp, byte 0x0a                ; 0x4690
    mov word [bp - 0x0004], 0        ; 0x4693
    jmp short @..api_idx_0054_HNSH.l6 ; 0x4698
@..api_idx_0054_HNSH.l5:
    mov word [bp - 0x0004], 0xb4     ; 0x469a
@..api_idx_0054_HNSH.l6:
    mov ax, 0xe                      ; 0x469f
    imul word [bp - 0x0002]          ; 0x46a2
    add ax, word [bp + 0x8]          ; 0x46a5
    inc ax                           ; 0x46a8
    push ax                          ; 0x46a9
    mov ax, word [bp + 0x6]          ; 0x46aa
    add ax, strict word 0x46         ; 0x46ad
    push ax                          ; 0x46b0
    call thunk                       ; 0x46b1
    add sp, byte 4                   ; 0x46b4
    mov ax, 4                        ; 0x46b7
    push ax                          ; 0x46ba
    mov ax, word [bp + 0xe]          ; 0x46bb
    add ax, word [bp - 0x0002]       ; 0x46be
    mov bx, ax                       ; 0x46c1
    mov al, byte [bx - 0x6648]       ; 0x46c3
    sub ah, ah                       ; 0x46c7
    push ax                          ; 0x46c9
    call ds_loc_3a77                 ; 0x46ca
    add sp, byte 4                   ; 0x46cd
    push word [bp - 0x0004]          ; 0x46d0
    mov ax, 0xe                      ; 0x46d3
    imul word [bp - 0x0002]          ; 0x46d6
    add ax, word [bp + 0x8]          ; 0x46d9
    inc ax                           ; 0x46dc
    inc ax                           ; 0x46dd
    push ax                          ; 0x46de
    mov ax, word [bp + 0x6]          ; 0x46df
    add ax, strict word 0x54         ; 0x46e2
    push ax                          ; 0x46e5
    mov ax, word [bp + 0xe]          ; 0x46e6
    add ax, word [bp - 0x0002]       ; 0x46e9
    mov cx, 0x16                     ; 0x46ec
    imul cx                          ; 0x46ef
    add ax, 0x99d6                   ; 0x46f1
    push ax                          ; 0x46f4
    call api_idx_002a_PHSJ           ; 0x46f5
    add sp, byte 8                   ; 0x46f8
    mov ax, word [bp + 0xe]          ; 0x46fb
    add ax, word [bp - 0x0002]       ; 0x46fe
    mov bx, ax                       ; 0x4701
    mov al, byte [bx - 0x66e8]       ; 0x4703
    sub ah, ah                       ; 0x4707
    mov bx, ax                       ; 0x4709
    cmp byte [bx + 0x60e], 1         ; 0x470b
    jne short @..api_idx_0054_HNSH.l9 ; 0x4710
    mov ax, 0xe                      ; 0x4712
    imul word [bp - 0x0002]          ; 0x4715
    add ax, word [bp + 0x8]          ; 0x4718
    add ax, strict word 8            ; 0x471b
    push ax                          ; 0x471e
    mov ax, word [bp + 0x6]          ; 0x471f
    add ax, strict word 0x7e         ; 0x4722
    push ax                          ; 0x4725
    call thunk                       ; 0x4726
    add sp, byte 4                   ; 0x4729
    mov ax, 0                        ; 0x472c
    push ax                          ; 0x472f
    mov ax, word [bp + 0xe]          ; 0x4730
    add ax, word [bp - 0x0002]       ; 0x4733
    cmp ax, word [bp + 0x10]         ; 0x4736
    jne short @..api_idx_0054_HNSH.l7 ; 0x4739
    mov ax, word [bp - 0x0004]       ; 0x473b
    jmp short @..api_idx_0054_HNSH.l8 ; 0x473e
@..api_idx_0054_HNSH.l7:
    mov ax, 2                        ; 0x4740
@..api_idx_0054_HNSH.l8:
    push ax                          ; 0x4743
    call thunk_3                     ; 0x4744
    add sp, byte 4                   ; 0x4747
    mov ax, 0                        ; 0x474a
    push ax                          ; 0x474d
    mov ax, 3                        ; 0x474e
    push ax                          ; 0x4751
    mov ax, word [bp + 0xe]          ; 0x4752
    add ax, word [bp - 0x0002]       ; 0x4755
    shl ax, 1                        ; 0x4758
    mov bx, ax                       ; 0x475a
    push word [bx - 0x6396]          ; 0x475c
    call ds_app_SHMQ                 ; 0x4760
    add sp, byte 6                   ; 0x4763
@..api_idx_0054_HNSH.l9:
    inc word [bp - 0x0002]           ; 0x4766
@..api_idx_0054_HNSH.l10:
    mov ax, word [bp - 0x0002]       ; 0x4769
    cmp ax, word [bp + 0xc]          ; 0x476c
    jge short @..api_idx_0054_HNSH.l11 ; 0x476f
    jmp near @..api_idx_0054_HNSH.l1 ; 0x4771
@..api_idx_0054_HNSH.l11:
    ret                              ; 0x4774
loc_4775:
    mov ax, 0                        ; 0x4775
    call aztec_csav                  ; 0x4778
    mov ax, 6                        ; 0x477b
    imul word [bp + 0xc]             ; 0x477e
    add ax, word [bp + 0x8]          ; 0x4781
    push ax                          ; 0x4784
    mov ax, 6                        ; 0x4785
    imul word [bp + 0xa]             ; 0x4788
    add ax, word [bp + 0x6]          ; 0x478b
    inc ax                           ; 0x478e
    inc ax                           ; 0x478f
    push ax                          ; 0x4790
    push word [bp + 0x8]             ; 0x4791
    push word [bp + 0x6]             ; 0x4794
    call ds_app_URLN                 ; 0x4797
    add sp, byte 8                   ; 0x479a
    push word [bp + 0x10]            ; 0x479d
    push word [bp + 0xe]             ; 0x47a0
    push word [bp + 0x12]            ; 0x47a3
    push word [bp + 0xa]             ; 0x47a6
    push word [bp + 0x8]             ; 0x47a9
    push word [bp + 0x6]             ; 0x47ac
    push word [bp + 0x4]             ; 0x47af
    call api_idx_0054_HNSH           ; 0x47b2
    add sp, byte 0x0e                ; 0x47b5
    ret                              ; 0x47b8
loc_47b9:
    mov ax, 0                        ; 0x47b9
    call aztec_csav                  ; 0x47bc
    call loc_109f                    ; 0x47bf
    mov ax, 0xc6                     ; 0x47c2
    push ax                          ; 0x47c5
    mov ax, 0x11d                    ; 0x47c6
    push ax                          ; 0x47c9
    mov ax, 0x8e                     ; 0x47ca
    push ax                          ; 0x47cd
    mov ax, 0x22                     ; 0x47ce
    push ax                          ; 0x47d1
    call thunk_4                     ; 0x47d2
    add sp, byte 8                   ; 0x47d5
    ret                              ; 0x47d8
