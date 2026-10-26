; auto-generated
api_idx_0024_NKNU:
    mov ax, 0xffdc                   ; 0x45f3
    call aztec_csav                  ; 0x45f6
    mov word [bp - 0x1e], 0          ; 0x45f9
    mov word [bp - 0x20], 0          ; 0x45fe
    mov word [bp - 0x22], 0          ; 0x4603
    mov word [bp - 0x24], 0          ; 0x4608
    mov word [bp - 4], 0             ; 0x460d
    jmp short .forward2              ; 0x4612
.back1:
    push word [bp - 4]               ; 0x4614
    call member_is_active            ; 0x4617
    pop cx                           ; 0x461a
    test ax, ax                      ; 0x461b
    je short .forward1               ; 0x461d
    mov ax, 0x2c                     ; 0x461f
    imul word [bp - 4]               ; 0x4622
    mov si, ax                       ; 0x4625
    mov bx, word [party_char]        ; 0x4627
    mov ax, word [bx + si + member_rec.item_charges] ; 0x462b
    cwd                              ; 0x462e
    add word [bp - 0x20], ax         ; 0x462f
    adc word [bp - 0x1e], dx         ; 0x4632
.forward1:
    inc word [bp - 4]                ; 0x4635
.forward2:
    mov bx, word [party_char]        ; 0x4638
    mov al, byte [bx + member_rec.item_count] ; 0x463c
    sub ah, ah                       ; 0x4640
    cmp ax, word [bp - 4]            ; 0x4642
    jg short .back1                  ; 0x4645
    mov word [bp - 4], 0             ; 0x4647
    jmp short .forward3              ; 0x464c
.back2:
    mov ax, 0x2c                     ; 0x464e
    imul word [bp - 4]               ; 0x4651
    mov si, ax                       ; 0x4654
    mov bx, word [bss_848e]          ; 0x4656
    mov ax, word [bx + si + rec_848e.f_0002] ; 0x465a
    cwd                              ; 0x465d
    add word [bp - 0x20], ax         ; 0x465e
    adc word [bp - 0x1e], dx         ; 0x4661
    inc word [bp - 4]                ; 0x4664
.forward3:
    mov bx, word [bss_848e]          ; 0x4667
    mov al, byte [bx + rec_848e.f_01a1] ; 0x466b
    sub ah, ah                       ; 0x466f
    cmp ax, word [bp - 4]            ; 0x4671
    jg short .back2                  ; 0x4674
    mov word [bp - 4], 1             ; 0x4676
    jmp short .forward5              ; 0x467b
.back3:
    mov word [bp - 6], 0             ; 0x467d
    jmp short .forward4              ; 0x4682
.back4:
    mov ax, 0x2c                     ; 0x4684
    imul word [bp - 6]               ; 0x4687
    mov si, ax                       ; 0x468a
    mov ax, word [bp - 4]            ; 0x468c
    shl ax, 1                        ; 0x468f
    mov bx, ax                       ; 0x4691
    mov bx, word [bx + party_char]   ; 0x4693
    mov ax, word [bx + si + member_rec.item_charges] ; 0x4697
    cwd                              ; 0x469a
    add word [bp - 0x24], ax         ; 0x469b
    adc word [bp - 0x22], dx         ; 0x469e
    inc word [bp - 6]                ; 0x46a1
.forward4:
    mov ax, word [bp - 4]            ; 0x46a4
    shl ax, 1                        ; 0x46a7
    mov bx, ax                       ; 0x46a9
    mov bx, word [bx + party_char]   ; 0x46ab
    mov al, byte [bx + member_rec.item_count] ; 0x46af
    sub ah, ah                       ; 0x46b3
    cmp ax, word [bp - 6]            ; 0x46b5
    jg short .back4                  ; 0x46b8
    inc word [bp - 4]                ; 0x46ba
.forward5:
    mov ax, word [bp - 4]            ; 0x46bd
    cmp ax, word [party_member_count] ; 0x46c0
    jle short .back3                 ; 0x46c4
    cmp word [bp + 4], byte 6        ; 0x46c6
    jne short .forward6              ; 0x46ca
    mov ax, word [bp - 0x24]         ; 0x46cc
    mov dx, word [bp - 0x22]         ; 0x46cf
    push ax                          ; 0x46d2
    xchg dx, ax                      ; 0x46d3
    mov bx, 0x64                     ; 0x46d4
    mul bx                           ; 0x46d7
    mov cx, ax                       ; 0x46d9
    pop ax                           ; 0x46db
    mul bx                           ; 0x46dc
    add dx, cx                       ; 0x46de
    mov cx, word [bp - 0x20]         ; 0x46e0
    mov bx, word [bp - 0x1e]         ; 0x46e3
    call aztec_ldv                   ; 0x46e6
    mov cx, 0x19                     ; 0x46e9
    mov bx, 0                        ; 0x46ec
    call aztec_ldv                   ; 0x46ef
    push ax                          ; 0x46f2
    xchg dx, ax                      ; 0x46f3
    mov bx, 5                        ; 0x46f4
    mul bx                           ; 0x46f7
    mov cx, ax                       ; 0x46f9
    pop ax                           ; 0x46fb
    mul bx                           ; 0x46fc
    add dx, cx                       ; 0x46fe
    add ax, strict word 0xffec       ; 0x4700
    adc dx, byte -1                  ; 0x4703
    mov word [bp - 0x1c], ax         ; 0x4706
    jmp short .forward7              ; 0x4709
.forward6:
    mov ax, word [bp - 0x20]         ; 0x470b
    mov dx, word [bp - 0x1e]         ; 0x470e
    push ax                          ; 0x4711
    xchg dx, ax                      ; 0x4712
    mov bx, 0x64                     ; 0x4713
    mul bx                           ; 0x4716
    mov cx, ax                       ; 0x4718
    pop ax                           ; 0x471a
    mul bx                           ; 0x471b
    add dx, cx                       ; 0x471d
    mov cx, word [bp - 0x24]         ; 0x471f
    mov bx, word [bp - 0x22]         ; 0x4722
    call aztec_ldv                   ; 0x4725
    mov cx, 0x19                     ; 0x4728
    mov bx, 0                        ; 0x472b
    call aztec_ldv                   ; 0x472e
    push ax                          ; 0x4731
    xchg dx, ax                      ; 0x4732
    mov bx, 5                        ; 0x4733
    mul bx                           ; 0x4736
    mov cx, ax                       ; 0x4738
    pop ax                           ; 0x473a
    mul bx                           ; 0x473b
    add dx, cx                       ; 0x473d
    add ax, strict word 0xffec       ; 0x473f
    adc dx, byte -1                  ; 0x4742
    mov word [bp - 0x1c], ax         ; 0x4745
.forward7:
    mov ax, word [bp + 4]            ; 0x4748
    shl ax, 1                        ; 0x474b
    mov bx, ax                       ; 0x474d
    mov bx, word [bx + party_char_ext] ; 0x474f
    mov al, byte [bx + member_ext.flags] ; 0x4753
    sub ah, ah                       ; 0x4757
    test ax, 1                       ; 0x4759
    je short .forward9               ; 0x475c
    cmp word [bp - 0x1c], byte 0     ; 0x475e
    jge short .forward8              ; 0x4762
    mov word [bp - 0x1c], 0          ; 0x4764
.forward8:
    mov ax, word [bp + 4]            ; 0x4769
    shl ax, 1                        ; 0x476c
    mov bx, ax                       ; 0x476e
    mov bx, word [bx + party_char]   ; 0x4770
    mov ax, word [bx + member_rec.item_charge_cap] ; 0x4774
    shl ax, 1                        ; 0x4777
    mov cx, word [bx + member_rec.item_charges] ; 0x4779
    inc cx                           ; 0x477c
    cwd                              ; 0x477d
    idiv cx                          ; 0x477e
    add word [bp - 0x1c], ax         ; 0x4780
    mov ax, word [bp - 0x1c]         ; 0x4783
    shl ax, 1                        ; 0x4786
    add ax, strict word 0xa          ; 0x4788
    mov word [bp - 0x1c], ax         ; 0x478b
.forward9:
    mov word [bp - 2], 0             ; 0x478e
    jmp near .forward59              ; 0x4793
.back5:
    mov ax, 0x2c                     ; 0x4796
    imul word [bp - 2]               ; 0x4799
    mov cx, ax                       ; 0x479c
    mov ax, word [bp + 4]            ; 0x479e
    shl ax, 1                        ; 0x47a1
    mov bx, ax                       ; 0x47a3
    mov ax, word [bx + party_char]   ; 0x47a5
    add ax, cx                       ; 0x47a9
    mov word [bp - 8], ax            ; 0x47ab
    mov ax, 0xa                      ; 0x47ae
    push ax                          ; 0x47b1
    call random_below                ; 0x47b2
    pop cx                           ; 0x47b5
    push ax                          ; 0x47b6
    mov ax, 0x2c                     ; 0x47b7
    imul word [bp - 2]               ; 0x47ba
    mov si, ax                       ; 0x47bd
    mov ax, word [bp + 4]            ; 0x47bf
    shl ax, 1                        ; 0x47c2
    mov bx, ax                       ; 0x47c4
    mov bx, word [bx + party_char]   ; 0x47c6
    mov al, byte [bx + si + member_rec.item_level] ; 0x47ca
    cbw                              ; 0x47cd
    mov cx, ax                       ; 0x47ce
    pop ax                           ; 0x47d0
    add ax, cx                       ; 0x47d1
    push ax                          ; 0x47d3
    mov ax, word [bp + 4]            ; 0x47d4
    shl ax, 1                        ; 0x47d7
    mov bx, ax                       ; 0x47d9
    mov bx, word [bx + party_char_ext] ; 0x47db
    mov al, byte [bx + member_ext.f_00d9] ; 0x47df
    sub ah, ah                       ; 0x47e3
    mov cx, ax                       ; 0x47e5
    pop ax                           ; 0x47e7
    add ax, cx                       ; 0x47e8
    mov word [bp - 0xa], ax          ; 0x47ea
    cmp ax, strict word 1            ; 0x47ed
    jge short .forward10             ; 0x47f0
    mov word [bp - 0xa], 1           ; 0x47f2
.forward10:
    cmp word [bp - 0xa], byte 0x64   ; 0x47f7
    jle short .forward11             ; 0x47fb
    mov word [bp - 0xa], 0x64        ; 0x47fd
.forward11:
    mov ax, word [bp - 0xa]          ; 0x4802
    push ax                          ; 0x4805
    mov al, byte [bx + 0xdb]         ; 0x4806
    sub ah, ah                       ; 0x480a
    mov cx, ax                       ; 0x480c
    pop ax                           ; 0x480e
    cwd                              ; 0x480f
    idiv cx                          ; 0x4810
    mov word [bp - 0xc], ax          ; 0x4812
    mov al, byte [bx + 0xe2]         ; 0x4815
    sub ah, ah                       ; 0x4819
    test ax, 2                       ; 0x481b
    je short .forward12              ; 0x481e
    mov bx, word [bp - 8]            ; 0x4820
    mov byte [bx + 0x24], 1          ; 0x4823
.forward12:
    mov bx, word [bp - 8]            ; 0x4827
    cmp byte [bx + 0x24], 0          ; 0x482a
    jbe short .forward13             ; 0x482e
    mov ax, word [bp - 0xa]          ; 0x4830
    mov cx, 2                        ; 0x4833
    cwd                              ; 0x4836
    idiv cx                          ; 0x4837
    push ax                          ; 0x4839
    call random_below                ; 0x483a
    pop cx                           ; 0x483d
    push ax                          ; 0x483e
    mov ax, 0x14                     ; 0x483f
    push ax                          ; 0x4842
    call random_below                ; 0x4843
    pop cx                           ; 0x4846
    mov cx, ax                       ; 0x4847
    pop ax                           ; 0x4849
    add ax, cx                       ; 0x484a
    push ax                          ; 0x484c
    mov ax, word [bp - 0xa]          ; 0x484d
    mov cx, 2                        ; 0x4850
    cwd                              ; 0x4853
    idiv cx                          ; 0x4854
    mov cx, ax                       ; 0x4856
    pop ax                           ; 0x4858
    add ax, cx                       ; 0x4859
    mov bx, word [bp - 8]            ; 0x485b
    mov byte [bx + 0x25], al         ; 0x485e
.forward13:
    mov bx, word [bp - 8]            ; 0x4861
    mov byte [bx + 0x21], 0          ; 0x4864
    push word [bp + 4]               ; 0x4868
    call api_idx_0002_ROVK           ; 0x486b
    pop cx                           ; 0x486e
    mov bx, word [bp - 8]            ; 0x486f
    mov byte [bx + 0x1c], al         ; 0x4872
    mov word [bp - 0x16], 0          ; 0x4875
.back6:
    push word [bp + 4]               ; 0x487a
    call api_idx_0002_ROVK           ; 0x487d
    pop cx                           ; 0x4880
    mov bx, word [bp - 8]            ; 0x4881
    mov byte [bx + 0x1d], al         ; 0x4884
    inc word [bp - 0x16]             ; 0x4887
    mov bx, word [bp - 8]            ; 0x488a
    mov al, byte [bx + 0x1d]         ; 0x488d
    mov cl, byte [bx + 0x1c]         ; 0x4890
    cmp al, cl                       ; 0x4893
    jne short .forward14             ; 0x4895
    cmp word [bp - 0x16], byte 3     ; 0x4897
    jl short .back6                  ; 0x489b
.forward14:
    mov word [bp - 0xe], 0           ; 0x489d
.back7:
    mov ax, word [bp + 4]            ; 0x48a2
    shl ax, 1                        ; 0x48a5
    mov bx, ax                       ; 0x48a7
    mov bx, word [bx + party_char_ext] ; 0x48a9
    mov al, byte [bx + member_ext.f_00db] ; 0x48ad
    sub ah, ah                       ; 0x48b1
    cmp ax, word [bp - 0xe]          ; 0x48b3
    jle short .forward15             ; 0x48b6
    mov bx, word [bp - 8]            ; 0x48b8
    cmp byte [bx + 0x22], 2          ; 0x48bb
    jae short .forward15             ; 0x48bf
    cmp byte [bx + 0x11], 0          ; 0x48c1
    ja short .forward15              ; 0x48c5
    cmp byte [bx + 0x10], 0          ; 0x48c7
    jbe short .forward16             ; 0x48cb
.forward15:
    mov bx, word [bp - 8]            ; 0x48cd
    mov si, word [bp - 0xe]          ; 0x48d0
    mov byte [bx + si + 0x18], 0     ; 0x48d3
    jmp short .forward17             ; 0x48d7
.forward16:
    mov al, byte [bp - 0xa]          ; 0x48d9
    mov bx, word [bp - 8]            ; 0x48dc
    mov si, word [bp - 0xe]          ; 0x48df
    mov byte [bx + si + 0x18], al    ; 0x48e2
    mov ax, word [bp - 0xc]          ; 0x48e5
    sub word [bp - 0xa], ax          ; 0x48e8
.forward17:
    inc word [bp - 0xe]              ; 0x48eb
    mov ax, word [bp - 0xe]          ; 0x48ee
    cmp ax, strict word 4            ; 0x48f1
    jl short .back7                  ; 0x48f4
    mov word [bp - 0x18], 0xffff     ; 0x48f6
    mov al, byte [bp + 6]            ; 0x48fb
    mov bx, word [bp - 8]            ; 0x48fe
    mov byte [bx + 0x1f], al         ; 0x4901
.back8:
    mov ax, word [bp + 6]            ; 0x4904
    shl ax, 1                        ; 0x4907
    mov bx, ax                       ; 0x4909
    mov bx, word [bx + party_char]   ; 0x490b
    mov al, byte [bx + member_rec.item_count] ; 0x490f
    sub ah, ah                       ; 0x4913
    push ax                          ; 0x4915
    call random_below                ; 0x4916
    pop cx                           ; 0x4919
    mov bx, word [bp - 8]            ; 0x491a
    mov byte [bx + 0x20], al         ; 0x491d
    mov bx, word [bp - 8]            ; 0x4920
    mov al, byte [bx + 0x20]         ; 0x4923
    sub ah, ah                       ; 0x4926
    mov cx, 0x2c                     ; 0x4928
    imul cx                          ; 0x492b
    mov si, ax                       ; 0x492d
    mov al, byte [bx + 0x1f]         ; 0x492f
    sub ah, ah                       ; 0x4932
    shl ax, 1                        ; 0x4934
    mov bx, ax                       ; 0x4936
    mov bx, word [bx + party_char]   ; 0x4938
    cmp byte [bx + si + member_rec.item_state], 3 ; 0x493c
    jae short .back8                 ; 0x4940
    mov ax, 0x64                     ; 0x4942
    push ax                          ; 0x4945
    call random_below                ; 0x4946
    pop cx                           ; 0x4949
    push ax                          ; 0x494a
    mov ax, word [bp + 4]            ; 0x494b
    shl ax, 1                        ; 0x494e
    mov bx, ax                       ; 0x4950
    mov bx, word [bx + party_char_ext] ; 0x4952
    mov al, byte [bx + member_ext.f_00ae] ; 0x4956
    sub ah, ah                       ; 0x495a
    mov cx, ax                       ; 0x495c
    pop ax                           ; 0x495e
    cmp ax, cx                       ; 0x495f
    jl short .forward18              ; 0x4961
    jmp near .forward29              ; 0x4963
.forward18:
    mov word [bp - 0x18], 3          ; 0x4966
    mov bx, word [bp - 8]            ; 0x496b
    mov byte [bx + 0x1e], 3          ; 0x496e
    mov ax, 0x64                     ; 0x4972
    push ax                          ; 0x4975
    call random_below                ; 0x4976
    pop cx                           ; 0x4979
    mov word [bp - 0x12], ax         ; 0x497a
    mov word [bp - 0x16], 5          ; 0x497d
    mov word [bp - 0x10], 0          ; 0x4982
    mov word [bp - 0x1a], 0xffff     ; 0x4987
.back9:
    mov ax, word [bp - 0x12]         ; 0x498c
    cmp ax, word [bp - 0x16]         ; 0x498f
    jge short .forward19             ; 0x4992
    mov ax, word [bp + 4]            ; 0x4994
    shl ax, 1                        ; 0x4997
    mov bx, ax                       ; 0x4999
    mov bx, word [bx + party_char_ext] ; 0x499b
    mov si, word [bp - 0x10]         ; 0x499f
    mov al, byte [bx + si + member_ext.f_0090] ; 0x49a2
    sub ah, ah                       ; 0x49a6
    mov word [bp - 0x1a], ax         ; 0x49a8
.forward19:
    inc word [bp - 0x10]             ; 0x49ab
    cmp word [bp - 0x16], byte 0xf   ; 0x49ae
    jge short .forward20             ; 0x49b2
    add word [bp - 0x16], byte 5     ; 0x49b4
    jmp short .forward22             ; 0x49b8
.forward20:
    cmp word [bp - 0x16], byte 0x37  ; 0x49ba
    jge short .forward21             ; 0x49be
    add word [bp - 0x16], byte 0xa   ; 0x49c0
    jmp short .forward22             ; 0x49c4
.forward21:
    add word [bp - 0x16], byte 0xf   ; 0x49c6
.forward22:
    cmp word [bp - 0x1a], byte -1    ; 0x49ca
    je short .back9                  ; 0x49ce
    mov ax, 6                        ; 0x49d0
    imul word [bp - 0x1a]            ; 0x49d3
    mov bx, ax                       ; 0x49d6
    cmp byte [bx + spell_table + spell_table_rec.f_0004], 1 ; 0x49d8
    je short .forward23              ; 0x49dd
    mov ax, word [bp - 0x1a]         ; 0x49df
    cmp ax, strict word 0x58         ; 0x49e2
    je short .forward23              ; 0x49e5
    cmp ax, strict word 0x13         ; 0x49e7
    je short .forward23              ; 0x49ea
    cmp ax, strict word 0x42         ; 0x49ec
    jne short .forward26             ; 0x49ef
.forward23:
    cmp word [bp + 4], byte 6        ; 0x49f1
    jne short .forward25             ; 0x49f5
    mov ax, 0                        ; 0x49f7
    push ax                          ; 0x49fa
    push word [bp - 8]               ; 0x49fb
    call api_idx_0004_PKLV           ; 0x49fe
    add sp, byte 4                   ; 0x4a01
    test ax, ax                      ; 0x4a04
    jne short .forward24             ; 0x4a06
    mov ax, 6                        ; 0x4a08
    push ax                          ; 0x4a0b
    push word [bp - 8]               ; 0x4a0c
    call api_idx_0004_PKLV           ; 0x4a0f
    add sp, byte 4                   ; 0x4a12
    test ax, ax                      ; 0x4a15
    jne short .forward24             ; 0x4a17
    mov word [bp - 0x18], 0xffff     ; 0x4a19
.forward24:
    jmp short .forward26             ; 0x4a1e
.forward25:
    push word [bp + 4]               ; 0x4a20
    push word [bp - 8]               ; 0x4a23
    call api_idx_0004_PKLV           ; 0x4a26
    add sp, byte 4                   ; 0x4a29
    test ax, ax                      ; 0x4a2c
    jne short .forward26             ; 0x4a2e
    push word [party_member_count]   ; 0x4a30
    call random_below                ; 0x4a34
    pop cx                           ; 0x4a37
    inc ax                           ; 0x4a38
    push ax                          ; 0x4a39
    push word [bp - 8]               ; 0x4a3a
    call api_idx_0004_PKLV           ; 0x4a3d
    add sp, byte 4                   ; 0x4a40
    test ax, ax                      ; 0x4a43
    jne short .forward26             ; 0x4a45
    mov word [bp - 0x18], 0xffff     ; 0x4a47
.forward26:
    mov ax, 6                        ; 0x4a4c
    imul word [bp - 0x1a]            ; 0x4a4f
    mov bx, ax                       ; 0x4a52
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x4a54
    sub ah, ah                       ; 0x4a58
    mov cx, ax                       ; 0x4a5a
    mov bx, word [bp - 8]            ; 0x4a5c
    mov ax, word [bx]                ; 0x4a5f
    sub ax, cx                       ; 0x4a61
    inc ax                           ; 0x4a63
    mov word [bp - 0x12], ax         ; 0x4a64
    mov ax, 1                        ; 0x4a67
    mov cx, word [bp - 0x12]         ; 0x4a6a
    cmp cx, byte 1                   ; 0x4a6d
    jl short .forward27              ; 0x4a70
    mov ax, cx                       ; 0x4a72
    push ax                          ; 0x4a74
    cmp ax, strict word 6            ; 0x4a75
    pop ax                           ; 0x4a78
    jle short .forward27             ; 0x4a79
    mov ax, 6                        ; 0x4a7b
.forward27:
    mov word [bp - 0x12], ax         ; 0x4a7e
.back10:
    mov bx, word [bp - 8]            ; 0x4a81
    push word [bx]                   ; 0x4a84
    call random_below                ; 0x4a86
    pop cx                           ; 0x4a89
    inc ax                           ; 0x4a8a
    cmp ax, word [bp - 0x12]         ; 0x4a8b
    jge short .forward28             ; 0x4a8e
    dec word [bp - 0x12]             ; 0x4a90
    jmp short .back10                ; 0x4a93
.forward28:
    mov ax, word [bp - 0x12]         ; 0x4a95
    xchg al, ah                      ; 0x4a98
    sub al, al                       ; 0x4a9a
    add ax, word [bp - 0x1a]         ; 0x4a9c
    mov bx, word [bp - 8]            ; 0x4a9f
    mov word [bx + 0xa], ax          ; 0x4aa2
.forward29:
    cmp word [bp - 0x18], byte -1    ; 0x4aa5
    jne short .forward30             ; 0x4aa9
    mov ax, 0x64                     ; 0x4aab
    push ax                          ; 0x4aae
    call random_below                ; 0x4aaf
    pop cx                           ; 0x4ab2
    push ax                          ; 0x4ab3
    mov ax, word [bp + 4]            ; 0x4ab4
    shl ax, 1                        ; 0x4ab7
    mov bx, ax                       ; 0x4ab9
    mov bx, word [bx + party_char_ext] ; 0x4abb
    mov al, byte [bx + member_ext.f_00b0] ; 0x4abf
    sub ah, ah                       ; 0x4ac3
    mov cx, ax                       ; 0x4ac5
    pop ax                           ; 0x4ac7
    cmp ax, cx                       ; 0x4ac8
    jge short .forward30             ; 0x4aca
    mov word [bp - 0x18], 5          ; 0x4acc
    mov bx, word [bp - 8]            ; 0x4ad1
    mov byte [bx + 0x1e], 5          ; 0x4ad4
    mov ax, word [bp + 4]            ; 0x4ad8
    shl ax, 1                        ; 0x4adb
    mov bx, ax                       ; 0x4add
    mov bx, word [bx + party_char_ext] ; 0x4adf
    mov al, byte [bx + member_ext.f_00de] ; 0x4ae3
    sub ah, ah                       ; 0x4ae7
    mov bx, word [bp - 8]            ; 0x4ae9
    mov word [bx + 0xa], ax          ; 0x4aec
.forward30:
    cmp word [bp - 0x18], byte -1    ; 0x4aef
    je short .forward31              ; 0x4af3
    jmp near .forward46              ; 0x4af5
.forward31:
    mov word [bp - 0x12], 0          ; 0x4af8
    mov bx, word [bp - 8]            ; 0x4afd
    cmp byte [bx + 0x22], 2          ; 0x4b00
    jb short .forward32              ; 0x4b04
    jmp near .forward37              ; 0x4b06
.forward32:
    cmp byte [bx + 0x11], 0          ; 0x4b09
    je short .forward33              ; 0x4b0d
    jmp near .forward37              ; 0x4b0f
.forward33:
    cmp byte [bx + 0x10], 0          ; 0x4b12
    jne short .forward37             ; 0x4b16
    mov al, byte [bx + 0x1c]         ; 0x4b18
    sub ah, ah                       ; 0x4b1b
    mov word [bp - 0x14], ax         ; 0x4b1d
    cmp word [bp + 4], byte 6        ; 0x4b20
    jne short .forward34             ; 0x4b24
    mov word [bp - 0x12], 9          ; 0x4b26
    jmp short .forward37             ; 0x4b2b
.forward34:
    cmp word [bp + 4], byte 3        ; 0x4b2d
    jl short .forward35              ; 0x4b31
    mov cx, 0x12                     ; 0x4b33
    imul cx                          ; 0x4b36
    mov si, ax                       ; 0x4b38
    mov ax, word [bp + 4]            ; 0x4b3a
    shl ax, 1                        ; 0x4b3d
    mov bx, ax                       ; 0x4b3f
    mov bx, word [bx + party_char_ext] ; 0x4b41
    cmp byte [bx + si + 0x51], 1     ; 0x4b45
    jbe short .forward37             ; 0x4b49
.forward35:
    mov word [bp - 0x12], 3          ; 0x4b4b
    mov ax, 0x12                     ; 0x4b50
    imul word [bp - 0x14]            ; 0x4b53
    mov si, ax                       ; 0x4b56
    mov ax, word [bp + 4]            ; 0x4b58
    shl ax, 1                        ; 0x4b5b
    mov bx, ax                       ; 0x4b5d
    mov bx, word [bx + party_char_ext] ; 0x4b5f
    mov al, byte [bx + si + member_ext.f_0051] ; 0x4b63
    sub ah, ah                       ; 0x4b66
    mov cx, 2                        ; 0x4b68
    cmp word [bp + 4], byte 3        ; 0x4b6b
    jge short .forward36             ; 0x4b6f
    mov cx, 0                        ; 0x4b71
.forward36:
    cmp ax, cx                       ; 0x4b74
    jle short .forward37             ; 0x4b76
    mov word [bp - 0x12], 6          ; 0x4b78
.forward37:
    mov ax, word [bp + 6]            ; 0x4b7d
    shl ax, 1                        ; 0x4b80
    mov bx, ax                       ; 0x4b82
    mov bx, word [bx + party_char]   ; 0x4b84
    mov al, byte [bx + member_rec.item_count] ; 0x4b88
    sub ah, ah                       ; 0x4b8c
    cmp ax, word [bp - 0x12]         ; 0x4b8e
    jge short .forward38             ; 0x4b91
    mov word [bp - 0x12], ax         ; 0x4b93
.forward38:
    mov word [bp - 0x10], 0          ; 0x4b96
    mov word [bp - 0x16], 0          ; 0x4b9b
    jmp short .forward40             ; 0x4ba0
.back11:
    mov ax, 0x2c                     ; 0x4ba2
    imul word [bp - 0x16]            ; 0x4ba5
    mov si, ax                       ; 0x4ba8
    mov ax, word [bp + 6]            ; 0x4baa
    shl ax, 1                        ; 0x4bad
    mov bx, ax                       ; 0x4baf
    mov bx, word [bx + party_char]   ; 0x4bb1
    cmp byte [bx + si + member_rec.item_state], 3 ; 0x4bb5
    jae short .forward39             ; 0x4bb9
    inc word [bp - 0x10]             ; 0x4bbb
.forward39:
    inc word [bp - 0x16]             ; 0x4bbe
.forward40:
    mov ax, word [bp - 0x16]         ; 0x4bc1
    cmp ax, word [bp - 0x12]         ; 0x4bc4
    jl short .back11                 ; 0x4bc7
    cmp word [bp - 0x10], byte 0     ; 0x4bc9
    jg short .forward41              ; 0x4bcd
    jmp near .forward45              ; 0x4bcf
.forward41:
    mov bx, word [bp - 8]            ; 0x4bd2
    mov byte [bx + 0x1e], 0          ; 0x4bd5
    mov al, byte [bp + 6]            ; 0x4bd9
    mov bx, word [bp - 8]            ; 0x4bdc
    mov byte [bx + 0x1f], al         ; 0x4bdf
    push word [bp - 0x10]            ; 0x4be2
    call random_below                ; 0x4be5
    pop cx                           ; 0x4be8
    mov bx, word [bp - 8]            ; 0x4be9
    mov byte [bx + 0x20], al         ; 0x4bec
    mov bx, word [bp - 8]            ; 0x4bef
    mov al, byte [bx + 0x1c]         ; 0x4bf2
    sub ah, ah                       ; 0x4bf5
    mov word [bp - 0x14], ax         ; 0x4bf7
    mov ax, word [bp + 4]            ; 0x4bfa
    shl ax, 1                        ; 0x4bfd
    mov bx, ax                       ; 0x4bff
    mov bx, word [bx + party_char_ext] ; 0x4c01
    mov si, word [bp - 0x14]         ; 0x4c05
    cmp byte [bx + si + member_ext.f_0086], 2 ; 0x4c08
    jne short .forward42             ; 0x4c0d
    mov bx, word [bp - 8]            ; 0x4c0f
    mov word [bx + 0xa], 4           ; 0x4c12
    jmp short .forward44             ; 0x4c17
.forward42:
    mov ax, word [bp + 4]            ; 0x4c19
    shl ax, 1                        ; 0x4c1c
    mov bx, ax                       ; 0x4c1e
    mov bx, word [bx + party_char_ext] ; 0x4c20
    mov si, word [bp - 0x14]         ; 0x4c24
    cmp byte [bx + si + member_ext.f_0086], 3 ; 0x4c27
    jne short .forward43             ; 0x4c2c
    mov bx, word [bp - 8]            ; 0x4c2e
    mov word [bx + 0xa], 8           ; 0x4c31
    jmp short .forward44             ; 0x4c36
.forward43:
    mov ax, 0x12                     ; 0x4c38
    imul word [bp - 0x14]            ; 0x4c3b
    mov cx, ax                       ; 0x4c3e
    mov ax, word [bp + 4]            ; 0x4c40
    shl ax, 1                        ; 0x4c43
    mov bx, ax                       ; 0x4c45
    mov ax, word [bx + party_char_ext] ; 0x4c47
    add ax, cx                       ; 0x4c4b
    add ax, strict word 0x53         ; 0x4c4d
    push ax                          ; 0x4c50
    call api_idx_0006_QUSK           ; 0x4c51
    pop cx                           ; 0x4c54
    mov bx, word [bp - 8]            ; 0x4c55
    mov word [bx + 0xa], ax          ; 0x4c58
.forward44:
    jmp short .forward46             ; 0x4c5b
.forward45:
    mov bx, word [bp - 8]            ; 0x4c5d
    mov byte [bx + 0x18], 0          ; 0x4c60
.forward46:
    mov ax, 0x64                     ; 0x4c64
    push ax                          ; 0x4c67
    call random_below                ; 0x4c68
    pop cx                           ; 0x4c6b
    mov word [bp - 6], ax            ; 0x4c6c
    mov bx, word [bp - 8]            ; 0x4c6f
    cmp byte [bx + 0xf], 0           ; 0x4c72
    jbe short .forward47             ; 0x4c76
    mov cx, word [bp - 0x1c]         ; 0x4c78
    add cx, byte 0xa                 ; 0x4c7b
    jmp short .forward48             ; 0x4c7e
.forward47:
    mov cx, word [bp - 0x1c]         ; 0x4c80
.forward48:
    cmp cx, ax                       ; 0x4c83
    jle short .forward49             ; 0x4c85
    mov ax, word [bp + 4]            ; 0x4c87
    shl ax, 1                        ; 0x4c8a
    mov bx, ax                       ; 0x4c8c
    mov bx, word [bx + party_char_ext] ; 0x4c8e
    mov al, byte [bx + member_ext.f_00b2] ; 0x4c92
    sub ah, ah                       ; 0x4c96
    mov cx, ax                       ; 0x4c98
    mov ax, word [bp - 6]            ; 0x4c9a
    cmp cx, ax                       ; 0x4c9d
    jle short .forward49             ; 0x4c9f
    mov word [bp - 0x18], 6          ; 0x4ca1
    mov bx, word [bp - 8]            ; 0x4ca6
    mov byte [bx + 0x1e], 6          ; 0x4ca9
.forward49:
    mov bx, word [bp - 8]            ; 0x4cad
    mov word [bx + 0xc], 0xffff      ; 0x4cb0
    mov bx, word [bp - 8]            ; 0x4cb5
    cmp byte [bx + 0x1e], 0          ; 0x4cb8
    je short .forward50              ; 0x4cbc
    jmp near .forward57              ; 0x4cbe
.forward50:
    mov al, byte [bx + 0x1d]         ; 0x4cc1
    sub ah, ah                       ; 0x4cc4
    mov word [bp - 0x14], ax         ; 0x4cc6
    cmp word [bp + 4], byte 3        ; 0x4cc9
    jl short .forward51              ; 0x4ccd
    mov cx, 0x12                     ; 0x4ccf
    imul cx                          ; 0x4cd2
    mov si, ax                       ; 0x4cd4
    mov ax, word [bp + 4]            ; 0x4cd6
    shl ax, 1                        ; 0x4cd9
    mov bx, ax                       ; 0x4cdb
    mov bx, word [bx + party_char_ext] ; 0x4cdd
    cmp byte [bx + si + 0x51], 1     ; 0x4ce1
    jbe short .forward55             ; 0x4ce5
.forward51:
    mov ax, word [bp + 4]            ; 0x4ce7
    shl ax, 1                        ; 0x4cea
    mov bx, ax                       ; 0x4cec
    mov bx, word [bx + party_char_ext] ; 0x4cee
    mov si, word [bp - 0x14]         ; 0x4cf2
    cmp byte [bx + si + member_ext.f_0086], 2 ; 0x4cf5
    jne short .forward52             ; 0x4cfa
    mov bx, word [bp - 8]            ; 0x4cfc
    mov word [bx + 0xc], 4           ; 0x4cff
    jmp short .forward54             ; 0x4d04
.forward52:
    mov ax, word [bp + 4]            ; 0x4d06
    shl ax, 1                        ; 0x4d09
    mov bx, ax                       ; 0x4d0b
    mov bx, word [bx + party_char_ext] ; 0x4d0d
    mov si, word [bp - 0x14]         ; 0x4d11
    cmp byte [bx + si + member_ext.f_0086], 3 ; 0x4d14
    jne short .forward53             ; 0x4d19
    mov bx, word [bp - 8]            ; 0x4d1b
    mov word [bx + 0xc], 8           ; 0x4d1e
    jmp short .forward54             ; 0x4d23
.forward53:
    mov ax, 0x12                     ; 0x4d25
    imul word [bp - 0x14]            ; 0x4d28
    mov cx, ax                       ; 0x4d2b
    mov ax, word [bp + 4]            ; 0x4d2d
    shl ax, 1                        ; 0x4d30
    mov bx, ax                       ; 0x4d32
    mov ax, word [bx + party_char_ext] ; 0x4d34
    add ax, cx                       ; 0x4d38
    add ax, strict word 0x53         ; 0x4d3a
    push ax                          ; 0x4d3d
    call api_idx_0006_QUSK           ; 0x4d3e
    pop cx                           ; 0x4d41
    mov bx, word [bp - 8]            ; 0x4d42
    mov word [bx + 0xc], ax          ; 0x4d45
.forward54:
    jmp short .forward56             ; 0x4d48
.forward55:
    mov bx, word [bp - 8]            ; 0x4d4a
    mov byte [bx + 0x19], 0          ; 0x4d4d
    mov bx, word [bp - 8]            ; 0x4d51
    mov byte [bx + 0x1b], 0          ; 0x4d54
.forward56:
    jmp short .forward58             ; 0x4d58
.forward57:
    mov word [bp - 4], 1             ; 0x4d5a
.back12:
    mov bx, word [bp - 8]            ; 0x4d5f
    mov si, word [bp - 4]            ; 0x4d62
    mov byte [bx + si + 0x18], 0     ; 0x4d65
    inc word [bp - 4]                ; 0x4d69
    mov ax, word [bp - 4]            ; 0x4d6c
    cmp ax, strict word 4            ; 0x4d6f
    jl short .back12                 ; 0x4d72
.forward58:
    inc word [bp - 2]                ; 0x4d74
.forward59:
    mov ax, word [bp + 4]            ; 0x4d77
    shl ax, 1                        ; 0x4d7a
    mov bx, ax                       ; 0x4d7c
    mov bx, word [bx + party_char]   ; 0x4d7e
    mov al, byte [bx + member_rec.item_count] ; 0x4d82
    sub ah, ah                       ; 0x4d86
    cmp ax, word [bp - 2]            ; 0x4d88
    jle short .return1               ; 0x4d8b
    jmp near .back5                  ; 0x4d8d
.return1:
    ret                              ; 0x4d90
