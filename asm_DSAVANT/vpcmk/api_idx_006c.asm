api_idx_006c:
    mov ax, 0xff94                   ; 0x4697
    call ds_aztec_csav               ; 0x469a
    mov ax, 0                        ; 0x469d
    push ax                          ; 0x46a0
    mov ax, 0x10                     ; 0x46a1
    push ax                          ; 0x46a4
    lea ax, word [bp - 0x0018]       ; 0x46a5
    push ax                          ; 0x46a8
    call ds_aztec_setmem             ; 0x46a9
    add sp, byte 6                   ; 0x46ac
    mov word [bp - 0x0006], 0        ; 0x46af
    mov ax, 8                        ; 0x46b4
    push ax                          ; 0x46b7
    mov ax, 1                        ; 0x46b8
    push ax                          ; 0x46bb
    mov ax, 0x18                     ; 0x46bc
    push ax                          ; 0x46bf
    mov ax, 0x97                     ; 0x46c0
    push ax                          ; 0x46c3
    mov ax, 0x58                     ; 0x46c4
    push ax                          ; 0x46c7
    mov ax, 0x44e                    ; 0x46c8
    push ax                          ; 0x46cb
    call api_idx_0058                ; 0x46cc
    add sp, byte 0x0c                ; 0x46cf
    mov word [bp - 0x006a], dx       ; 0x46d2
    mov word [bp - 0x006c], ax       ; 0x46d5
    call ds_bios_kbd_check           ; 0x46d8
@..api_idx_006c.l1:
    mov ax, 0                        ; 0x46db
    push ax                          ; 0x46de
    push word [bp + 0x4]             ; 0x46df
    call api_idx_0002_5              ; 0x46e2
    add sp, byte 4                   ; 0x46e5
    mov ax, 0                        ; 0x46e8
    push ax                          ; 0x46eb
    mov ax, 1                        ; 0x46ec
    push ax                          ; 0x46ef
    call ds_loc_3a6a                 ; 0x46f0
    add sp, byte 4                   ; 0x46f3
    mov ax, 6                        ; 0x46f6
    imul word [bp - 0x0006]          ; 0x46f9
    add ax, strict word 0x23         ; 0x46fc
    push ax                          ; 0x46ff
    mov ax, 0x85                     ; 0x4700
    push ax                          ; 0x4703
    call ds_loc_3a50                 ; 0x4704
    add sp, byte 4                   ; 0x4707
    mov ax, 0                        ; 0x470a
    push ax                          ; 0x470d
    mov ax, 5                        ; 0x470e
    push ax                          ; 0x4711
    call ds_loc_3a77                 ; 0x4712
    add sp, byte 4                   ; 0x4715
    mov ax, 6                        ; 0x4718
    imul word [bp - 0x0006]          ; 0x471b
    add ax, strict word 0x23         ; 0x471e
    push ax                          ; 0x4721
    mov ax, 0x97                     ; 0x4722
    push ax                          ; 0x4725
    call ds_loc_3a50                 ; 0x4726
    add sp, byte 4                   ; 0x4729
    mov ax, 0                        ; 0x472c
    push ax                          ; 0x472f
    mov ax, 6                        ; 0x4730
    push ax                          ; 0x4733
    call ds_loc_3a77                 ; 0x4734
    add sp, byte 4                   ; 0x4737
    mov word [bp - 0x0002], 0        ; 0x473a
@..api_idx_006c.l2:
    mov ax, word [bp - 0x0002]       ; 0x473f
    cmp ax, word [bp - 0x0006]       ; 0x4742
    jne short @..api_idx_006c.l3     ; 0x4745
    mov ax, 0                        ; 0x4747
    push ax                          ; 0x474a
    mov ax, 0x2d                     ; 0x474b
    push ax                          ; 0x474e
    mov ax, 6                        ; 0x474f
    imul word [bp - 0x0006]          ; 0x4752
    add ax, strict word 0x28         ; 0x4755
    push ax                          ; 0x4758
    mov ax, 0x8a                     ; 0x4759
    push ax                          ; 0x475c
    mov ax, 6                        ; 0x475d
    imul word [bp - 0x0006]          ; 0x4760
    add ax, strict word 0x23         ; 0x4763
    push ax                          ; 0x4766
    mov ax, 0x85                     ; 0x4767
    push ax                          ; 0x476a
    push word [bp - 0x0002]          ; 0x476b
    call ds_app_0ced                 ; 0x476e
    add sp, byte 0x0e                ; 0x4771
    mov ax, 0x3d                     ; 0x4774
    push ax                          ; 0x4777
    mov ax, 0x2b                     ; 0x4778
    push ax                          ; 0x477b
    mov ax, 6                        ; 0x477c
    imul word [bp - 0x0006]          ; 0x477f
    add ax, strict word 0x28         ; 0x4782
    push ax                          ; 0x4785
    mov ax, 0x9c                     ; 0x4786
    push ax                          ; 0x4789
    mov ax, 6                        ; 0x478a
    imul word [bp - 0x0006]          ; 0x478d
    add ax, strict word 0x23         ; 0x4790
    push ax                          ; 0x4793
    mov ax, 0x97                     ; 0x4794
    push ax                          ; 0x4797
    mov ax, 7                        ; 0x4798
    push ax                          ; 0x479b
    call ds_app_0ced                 ; 0x479c
    add sp, byte 0x0e                ; 0x479f
    jmp short @..api_idx_006c.l6     ; 0x47a2
@..api_idx_006c.l3:
    mov ax, 0                        ; 0x47a4
    push ax                          ; 0x47a7
    mov ax, word [bp - 0x0006]       ; 0x47a8
    inc ax                           ; 0x47ab
    mov cx, 7                        ; 0x47ac
    cwd                              ; 0x47af
    idiv cx                          ; 0x47b0
    mov ax, dx                       ; 0x47b2
    cmp ax, word [bp - 0x0002]       ; 0x47b4
    jne short @..api_idx_006c.l4     ; 0x47b7
    mov al, 0x20                     ; 0x47b9
    jmp short @..api_idx_006c.l5     ; 0x47bb
@..api_idx_006c.l4:
    mov al, 0                        ; 0x47bd
@..api_idx_006c.l5:
    cbw                              ; 0x47bf
    push ax                          ; 0x47c0
    mov ax, 6                        ; 0x47c1
    imul word [bp - 0x0002]          ; 0x47c4
    add ax, strict word 0x28         ; 0x47c7
    push ax                          ; 0x47ca
    mov ax, 0x9c                     ; 0x47cb
    push ax                          ; 0x47ce
    mov ax, 6                        ; 0x47cf
    imul word [bp - 0x0002]          ; 0x47d2
    add ax, strict word 0x23         ; 0x47d5
    push ax                          ; 0x47d8
    mov ax, 0x73                     ; 0x47d9
    push ax                          ; 0x47dc
    push word [bp - 0x0002]          ; 0x47dd
    call ds_app_0ced                 ; 0x47e0
    add sp, byte 0x0e                ; 0x47e3
@..api_idx_006c.l6:
    inc word [bp - 0x0002]           ; 0x47e6
    mov ax, word [bp - 0x0002]       ; 0x47e9
    cmp ax, strict word 7            ; 0x47ec
    jge short @..api_idx_006c.l7     ; 0x47ef
    jmp near @..api_idx_006c.l2      ; 0x47f1
@..api_idx_006c.l7:
    mov ax, 0                        ; 0x47f4
    push ax                          ; 0x47f7
    push ax                          ; 0x47f8
    push ax                          ; 0x47f9
    push ax                          ; 0x47fa
    push ax                          ; 0x47fb
    mov ax, 0xffff                   ; 0x47fc
    push ax                          ; 0x47ff
    mov ax, 9                        ; 0x4800
    push ax                          ; 0x4803
    call ds_app_0ced                 ; 0x4804
    add sp, byte 0x0e                ; 0x4807
    mov ax, 0x60                     ; 0x480a
    push ax                          ; 0x480d
    mov ax, 0xa8                     ; 0x480e
    push ax                          ; 0x4811
    mov ax, 0x23                     ; 0x4812
    push ax                          ; 0x4815
    mov ax, 0x66                     ; 0x4816
    push ax                          ; 0x4819
    call ds_loc_3b21                 ; 0x481a
    add sp, byte 8                   ; 0x481d
@..api_idx_006c.l8:
    mov ax, 0x59fe                   ; 0x4820
    push ax                          ; 0x4823
    call ds_app_io_0b54              ; 0x4824
    pop cx                           ; 0x4827
    dec ax                           ; 0x4828
    mov word [bp - 0x0004], ax       ; 0x4829
    cmp word [bss_5b3e], byte 0      ; 0x482c
    je short @..api_idx_006c.l8      ; 0x4831
    cmp word [bp - 0x0004], byte 7   ; 0x4833
    jge short @..api_idx_006c.l9     ; 0x4837
    mov ax, word [bp - 0x0004]       ; 0x4839
    cmp ax, word [bp - 0x0006]       ; 0x483c
    je short @..api_idx_006c.l9      ; 0x483f
    mov word [bp - 0x0006], ax       ; 0x4841
    jmp near @..api_idx_006c.l14     ; 0x4844
@..api_idx_006c.l9:
    mov ax, word [bp - 0x0004]       ; 0x4847
    cmp ax, word [bp - 0x0006]       ; 0x484a
    jne short @..api_idx_006c.l12    ; 0x484d
    mov ax, word [bp - 0x0006]       ; 0x484f
    shl ax, 1                        ; 0x4852
    mov bx, ax                       ; 0x4854
    add bx, bp                       ; 0x4856
    cmp word [bx - 0x0018], byte 0   ; 0x4858
    jle short @..api_idx_006c.l10    ; 0x485c
    mov ax, 0x248                    ; 0x485e
    imul word [bp + 0x4]             ; 0x4861
    add ax, word [bp - 0x0006]       ; 0x4864
    mov bx, ax                       ; 0x4867
    dec byte [bx + 0x5d64]           ; 0x4869
    mov ax, word [bp - 0x0006]       ; 0x486d
    shl ax, 1                        ; 0x4870
    mov bx, ax                       ; 0x4872
    add bx, bp                       ; 0x4874
    dec word [bx - 0x0018]           ; 0x4876
    inc word [bss_9594]              ; 0x4879
    jmp short @..api_idx_006c.l11    ; 0x487d
@..api_idx_006c.l10:
    mov ax, 0                        ; 0x487f
    push ax                          ; 0x4882
    call ds_app_0a27                 ; 0x4883
    pop cx                           ; 0x4886
@..api_idx_006c.l11:
    jmp short @..api_idx_006c.l14    ; 0x4887
@..api_idx_006c.l12:
    cmp word [bp - 0x0004], byte 7   ; 0x4889
    jne short @..api_idx_006c.l14    ; 0x488d
    mov ax, 0x248                    ; 0x488f
    imul word [bp + 0x4]             ; 0x4892
    add ax, word [bp - 0x0006]       ; 0x4895
    mov bx, ax                       ; 0x4898
    cmp byte [bx + 0x5d64], 0x12     ; 0x489a
    jae short @..api_idx_006c.l13    ; 0x489f
    cmp word [bss_9594], byte 0      ; 0x48a1
    jle short @..api_idx_006c.l13    ; 0x48a6
    inc byte [bx + 0x5d64]           ; 0x48a8
    mov ax, word [bp - 0x0006]       ; 0x48ac
    shl ax, 1                        ; 0x48af
    mov bx, ax                       ; 0x48b1
    add bx, bp                       ; 0x48b3
    inc word [bx - 0x0018]           ; 0x48b5
    dec word [bss_9594]              ; 0x48b8
    jmp short @..api_idx_006c.l14    ; 0x48bc
@..api_idx_006c.l13:
    mov ax, 0                        ; 0x48be
    push ax                          ; 0x48c1
    call ds_app_0a27                 ; 0x48c2
    pop cx                           ; 0x48c5
@..api_idx_006c.l14:
    cmp word [bp - 0x0004], byte 8   ; 0x48c6
    je short @..api_idx_006c.l15     ; 0x48ca
    jmp near @..api_idx_006c.l1      ; 0x48cc
@..api_idx_006c.l15:
    cmp word [bss_9594], byte 0      ; 0x48cf
    je short @..api_idx_006c.l16     ; 0x48d4
    jmp near @..api_idx_006c.l1      ; 0x48d6
@..api_idx_006c.l16:
    mov word [bss_9594], 0xffff      ; 0x48d9
    mov ax, 1                        ; 0x48df
    push ax                          ; 0x48e2
    push ax                          ; 0x48e3
    mov ax, 0x18                     ; 0x48e4
    push ax                          ; 0x48e7
    mov ax, 0x97                     ; 0x48e8
    push ax                          ; 0x48eb
    mov ax, 0x58                     ; 0x48ec
    push ax                          ; 0x48ef
    call ds_app_10a6                 ; 0x48f0
    add sp, byte 0x0a                ; 0x48f3
    mov ax, 0                        ; 0x48f6
    push ax                          ; 0x48f9
    mov ax, 1                        ; 0x48fa
    push ax                          ; 0x48fd
    mov ax, 0x18                     ; 0x48fe
    push ax                          ; 0x4901
    mov ax, 0x97                     ; 0x4902
    push ax                          ; 0x4905
    mov ax, 0x58                     ; 0x4906
    push ax                          ; 0x4909
    call ds_app_10a6                 ; 0x490a
    add sp, byte 0x0a                ; 0x490d
    mov ax, 1                        ; 0x4910
    push ax                          ; 0x4913
    push word [bp - 0x006a]          ; 0x4914
    push word [bp - 0x006c]          ; 0x4917
    call ds_loc_3b96                 ; 0x491a
    add sp, byte 6                   ; 0x491d
    mov ax, 0xc7                     ; 0x4920
    push ax                          ; 0x4923
    mov ax, 0x13f                    ; 0x4924
    push ax                          ; 0x4927
    mov ax, 0                        ; 0x4928
    push ax                          ; 0x492b
    push ax                          ; 0x492c
    call ds_loc_3b21                 ; 0x492d
    add sp, byte 8                   ; 0x4930
    ret                              ; 0x4933
