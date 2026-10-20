; auto-generated
api_idx_0024_NKNU:
    mov ax, 0xffdc                   ; 0x45f3
    call aztec_csav                  ; 0x45f6
    mov word [bp - 0x001e], 0        ; 0x45f9
    mov word [bp - 0x0020], 0        ; 0x45fe
    mov word [bp - 0x0022], 0        ; 0x4603
    mov word [bp - 0x0024], 0        ; 0x4608
    mov word [bp - 0x0004], 0        ; 0x460d
    jmp short @..api_idx_0024_NKNU.l3 ; 0x4612
@..api_idx_0024_NKNU.l1:
    push word [bp - 0x0004]          ; 0x4614
    call ds_app_KTPM                 ; 0x4617
    pop cx                           ; 0x461a
    test ax, ax                      ; 0x461b
    je short @..api_idx_0024_NKNU.l2 ; 0x461d
    mov ax, 0x2c                     ; 0x461f
    imul word [bp - 0x0004]          ; 0x4622
    mov si, ax                       ; 0x4625
    mov bx, word [party_char]        ; 0x4627
    mov ax, word [bx + si + 0x2]     ; 0x462b
    cwd                              ; 0x462e
    add word [bp - 0x0020], ax       ; 0x462f
    adc word [bp - 0x001e], dx       ; 0x4632
@..api_idx_0024_NKNU.l2:
    inc word [bp - 0x0004]           ; 0x4635
@..api_idx_0024_NKNU.l3:
    mov bx, word [party_char]        ; 0x4638
    mov al, byte [bx + 0x1a1]        ; 0x463c
    sub ah, ah                       ; 0x4640
    cmp ax, word [bp - 0x0004]       ; 0x4642
    jg short @..api_idx_0024_NKNU.l1 ; 0x4645
    mov word [bp - 0x0004], 0        ; 0x4647
    jmp short @..api_idx_0024_NKNU.l5 ; 0x464c
@..api_idx_0024_NKNU.l4:
    mov ax, 0x2c                     ; 0x464e
    imul word [bp - 0x0004]          ; 0x4651
    mov si, ax                       ; 0x4654
    mov bx, word [bss_848e]          ; 0x4656
    mov ax, word [bx + si + 0x2]     ; 0x465a
    cwd                              ; 0x465d
    add word [bp - 0x0020], ax       ; 0x465e
    adc word [bp - 0x001e], dx       ; 0x4661
    inc word [bp - 0x0004]           ; 0x4664
@..api_idx_0024_NKNU.l5:
    mov bx, word [bss_848e]          ; 0x4667
    mov al, byte [bx + 0x1a1]        ; 0x466b
    sub ah, ah                       ; 0x466f
    cmp ax, word [bp - 0x0004]       ; 0x4671
    jg short @..api_idx_0024_NKNU.l4 ; 0x4674
    mov word [bp - 0x0004], 1        ; 0x4676
    jmp short @..api_idx_0024_NKNU.l9 ; 0x467b
@..api_idx_0024_NKNU.l6:
    mov word [bp - 0x0006], 0        ; 0x467d
    jmp short @..api_idx_0024_NKNU.l8 ; 0x4682
@..api_idx_0024_NKNU.l7:
    mov ax, 0x2c                     ; 0x4684
    imul word [bp - 0x0006]          ; 0x4687
    mov si, ax                       ; 0x468a
    mov ax, word [bp - 0x0004]       ; 0x468c
    shl ax, 1                        ; 0x468f
    mov bx, ax                       ; 0x4691
    mov bx, word [bx + party_char]   ; 0x4693
    mov ax, word [bx + si + 0x2]     ; 0x4697
    cwd                              ; 0x469a
    add word [bp - 0x0024], ax       ; 0x469b
    adc word [bp - 0x0022], dx       ; 0x469e
    inc word [bp - 0x0006]           ; 0x46a1
@..api_idx_0024_NKNU.l8:
    mov ax, word [bp - 0x0004]       ; 0x46a4
    shl ax, 1                        ; 0x46a7
    mov bx, ax                       ; 0x46a9
    mov bx, word [bx + party_char]   ; 0x46ab
    mov al, byte [bx + 0x1a1]        ; 0x46af
    sub ah, ah                       ; 0x46b3
    cmp ax, word [bp - 0x0006]       ; 0x46b5
    jg short @..api_idx_0024_NKNU.l7 ; 0x46b8
    inc word [bp - 0x0004]           ; 0x46ba
@..api_idx_0024_NKNU.l9:
    mov ax, word [bp - 0x0004]       ; 0x46bd
    cmp ax, word [bss_8466]          ; 0x46c0
    jle short @..api_idx_0024_NKNU.l6 ; 0x46c4
    cmp word [bp + 0x4], byte 6      ; 0x46c6
    jne short @..api_idx_0024_NKNU.l10 ; 0x46ca
    mov ax, word [bp - 0x0024]       ; 0x46cc
    mov dx, word [bp - 0x0022]       ; 0x46cf
    push ax                          ; 0x46d2
    xchg dx, ax                      ; 0x46d3
    mov bx, 0x64                     ; 0x46d4
    mul bx                           ; 0x46d7
    mov cx, ax                       ; 0x46d9
    pop ax                           ; 0x46db
    mul bx                           ; 0x46dc
    add dx, cx                       ; 0x46de
    mov cx, word [bp - 0x0020]       ; 0x46e0
    mov bx, word [bp - 0x001e]       ; 0x46e3
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
    adc dx, byte 0xff                ; 0x4703
    mov word [bp - 0x001c], ax       ; 0x4706
    jmp short @..api_idx_0024_NKNU.l11 ; 0x4709
@..api_idx_0024_NKNU.l10:
    mov ax, word [bp - 0x0020]       ; 0x470b
    mov dx, word [bp - 0x001e]       ; 0x470e
    push ax                          ; 0x4711
    xchg dx, ax                      ; 0x4712
    mov bx, 0x64                     ; 0x4713
    mul bx                           ; 0x4716
    mov cx, ax                       ; 0x4718
    pop ax                           ; 0x471a
    mul bx                           ; 0x471b
    add dx, cx                       ; 0x471d
    mov cx, word [bp - 0x0024]       ; 0x471f
    mov bx, word [bp - 0x0022]       ; 0x4722
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
    adc dx, byte 0xff                ; 0x4742
    mov word [bp - 0x001c], ax       ; 0x4745
@..api_idx_0024_NKNU.l11:
    mov ax, word [bp + 0x4]          ; 0x4748
    shl ax, 1                        ; 0x474b
    mov bx, ax                       ; 0x474d
    mov bx, word [bx + party_char_ext] ; 0x474f
    mov al, byte [bx + 0xe2]         ; 0x4753
    sub ah, ah                       ; 0x4757
    test ax, 1                       ; 0x4759
    je short @..api_idx_0024_NKNU.l13 ; 0x475c
    cmp word [bp - 0x001c], byte 0   ; 0x475e
    jge short @..api_idx_0024_NKNU.l12 ; 0x4762
    mov word [bp - 0x001c], 0        ; 0x4764
@..api_idx_0024_NKNU.l12:
    mov ax, word [bp + 0x4]          ; 0x4769
    shl ax, 1                        ; 0x476c
    mov bx, ax                       ; 0x476e
    mov bx, word [bx + party_char]   ; 0x4770
    mov ax, word [bx + 0x4]          ; 0x4774
    shl ax, 1                        ; 0x4777
    mov cx, word [bx + 0x2]          ; 0x4779
    inc cx                           ; 0x477c
    cwd                              ; 0x477d
    idiv cx                          ; 0x477e
    add word [bp - 0x001c], ax       ; 0x4780
    mov ax, word [bp - 0x001c]       ; 0x4783
    shl ax, 1                        ; 0x4786
    add ax, strict word 0xa          ; 0x4788
    mov word [bp - 0x001c], ax       ; 0x478b
@..api_idx_0024_NKNU.l13:
    mov word [bp - 0x0002], 0        ; 0x478e
    jmp near @..api_idx_0024_NKNU.l71 ; 0x4793
@..api_idx_0024_NKNU.l14:
    mov ax, 0x2c                     ; 0x4796
    imul word [bp - 0x0002]          ; 0x4799
    mov cx, ax                       ; 0x479c
    mov ax, word [bp + 0x4]          ; 0x479e
    shl ax, 1                        ; 0x47a1
    mov bx, ax                       ; 0x47a3
    mov ax, word [bx + party_char]   ; 0x47a5
    add ax, cx                       ; 0x47a9
    mov word [bp - 0x0008], ax       ; 0x47ab
    mov ax, 0xa                      ; 0x47ae
    push ax                          ; 0x47b1
    call ds_app_PUNN                 ; 0x47b2
    pop cx                           ; 0x47b5
    push ax                          ; 0x47b6
    mov ax, 0x2c                     ; 0x47b7
    imul word [bp - 0x0002]          ; 0x47ba
    mov si, ax                       ; 0x47bd
    mov ax, word [bp + 0x4]          ; 0x47bf
    shl ax, 1                        ; 0x47c2
    mov bx, ax                       ; 0x47c4
    mov bx, word [bx + party_char]   ; 0x47c6
    mov al, byte [bx + si + 0x29]    ; 0x47ca
    cbw                              ; 0x47cd
    mov cx, ax                       ; 0x47ce
    pop ax                           ; 0x47d0
    add ax, cx                       ; 0x47d1
    push ax                          ; 0x47d3
    mov ax, word [bp + 0x4]          ; 0x47d4
    shl ax, 1                        ; 0x47d7
    mov bx, ax                       ; 0x47d9
    mov bx, word [bx + party_char_ext] ; 0x47db
    mov al, byte [bx + 0xd9]         ; 0x47df
    sub ah, ah                       ; 0x47e3
    mov cx, ax                       ; 0x47e5
    pop ax                           ; 0x47e7
    add ax, cx                       ; 0x47e8
    mov word [bp - 0x000a], ax       ; 0x47ea
    cmp ax, strict word 1            ; 0x47ed
    jge short @..api_idx_0024_NKNU.l15 ; 0x47f0
    mov word [bp - 0x000a], 1        ; 0x47f2
@..api_idx_0024_NKNU.l15:
    cmp word [bp - 0x000a], byte 0x64 ; 0x47f7
    jle short @..api_idx_0024_NKNU.l16 ; 0x47fb
    mov word [bp - 0x000a], 0x64     ; 0x47fd
@..api_idx_0024_NKNU.l16:
    mov ax, word [bp - 0x000a]       ; 0x4802
    push ax                          ; 0x4805
    mov al, byte [bx + 0xdb]         ; 0x4806
    sub ah, ah                       ; 0x480a
    mov cx, ax                       ; 0x480c
    pop ax                           ; 0x480e
    cwd                              ; 0x480f
    idiv cx                          ; 0x4810
    mov word [bp - 0x000c], ax       ; 0x4812
    mov al, byte [bx + 0xe2]         ; 0x4815
    sub ah, ah                       ; 0x4819
    test ax, 2                       ; 0x481b
    je short @..api_idx_0024_NKNU.l17 ; 0x481e
    mov bx, word [bp - 0x0008]       ; 0x4820
    mov byte [bx + 0x24], 1          ; 0x4823
@..api_idx_0024_NKNU.l17:
    mov bx, word [bp - 0x0008]       ; 0x4827
    cmp byte [bx + 0x24], 0          ; 0x482a
    jbe short @..api_idx_0024_NKNU.l18 ; 0x482e
    mov ax, word [bp - 0x000a]       ; 0x4830
    mov cx, 2                        ; 0x4833
    cwd                              ; 0x4836
    idiv cx                          ; 0x4837
    push ax                          ; 0x4839
    call ds_app_PUNN                 ; 0x483a
    pop cx                           ; 0x483d
    push ax                          ; 0x483e
    mov ax, 0x14                     ; 0x483f
    push ax                          ; 0x4842
    call ds_app_PUNN                 ; 0x4843
    pop cx                           ; 0x4846
    mov cx, ax                       ; 0x4847
    pop ax                           ; 0x4849
    add ax, cx                       ; 0x484a
    push ax                          ; 0x484c
    mov ax, word [bp - 0x000a]       ; 0x484d
    mov cx, 2                        ; 0x4850
    cwd                              ; 0x4853
    idiv cx                          ; 0x4854
    mov cx, ax                       ; 0x4856
    pop ax                           ; 0x4858
    add ax, cx                       ; 0x4859
    mov bx, word [bp - 0x0008]       ; 0x485b
    mov byte [bx + 0x25], al         ; 0x485e
@..api_idx_0024_NKNU.l18:
    mov bx, word [bp - 0x0008]       ; 0x4861
    mov byte [bx + 0x21], 0          ; 0x4864
    push word [bp + 0x4]             ; 0x4868
    call api_idx_0002_ROVK           ; 0x486b
    pop cx                           ; 0x486e
    mov bx, word [bp - 0x0008]       ; 0x486f
    mov byte [bx + 0x1c], al         ; 0x4872
    mov word [bp - 0x0016], 0        ; 0x4875
@..api_idx_0024_NKNU.l19:
    push word [bp + 0x4]             ; 0x487a
    call api_idx_0002_ROVK           ; 0x487d
    pop cx                           ; 0x4880
    mov bx, word [bp - 0x0008]       ; 0x4881
    mov byte [bx + 0x1d], al         ; 0x4884
    inc word [bp - 0x0016]           ; 0x4887
    mov bx, word [bp - 0x0008]       ; 0x488a
    mov al, byte [bx + 0x1d]         ; 0x488d
    mov cl, byte [bx + 0x1c]         ; 0x4890
    cmp al, cl                       ; 0x4893
    jne short @..api_idx_0024_NKNU.l20 ; 0x4895
    cmp word [bp - 0x0016], byte 3   ; 0x4897
    jl short @..api_idx_0024_NKNU.l19 ; 0x489b
@..api_idx_0024_NKNU.l20:
    mov word [bp - 0x000e], 0        ; 0x489d
@..api_idx_0024_NKNU.l21:
    mov ax, word [bp + 0x4]          ; 0x48a2
    shl ax, 1                        ; 0x48a5
    mov bx, ax                       ; 0x48a7
    mov bx, word [bx + party_char_ext] ; 0x48a9
    mov al, byte [bx + 0xdb]         ; 0x48ad
    sub ah, ah                       ; 0x48b1
    cmp ax, word [bp - 0x000e]       ; 0x48b3
    jle short @..api_idx_0024_NKNU.l22 ; 0x48b6
    mov bx, word [bp - 0x0008]       ; 0x48b8
    cmp byte [bx + 0x22], 2          ; 0x48bb
    jae short @..api_idx_0024_NKNU.l22 ; 0x48bf
    cmp byte [bx + 0x11], 0          ; 0x48c1
    ja short @..api_idx_0024_NKNU.l22 ; 0x48c5
    cmp byte [bx + 0x10], 0          ; 0x48c7
    jbe short @..api_idx_0024_NKNU.l23 ; 0x48cb
@..api_idx_0024_NKNU.l22:
    mov bx, word [bp - 0x0008]       ; 0x48cd
    mov si, word [bp - 0x000e]       ; 0x48d0
    mov byte [bx + si + 0x18], 0     ; 0x48d3
    jmp short @..api_idx_0024_NKNU.l24 ; 0x48d7
@..api_idx_0024_NKNU.l23:
    mov al, byte [bp - 0x000a]       ; 0x48d9
    mov bx, word [bp - 0x0008]       ; 0x48dc
    mov si, word [bp - 0x000e]       ; 0x48df
    mov byte [bx + si + 0x18], al    ; 0x48e2
    mov ax, word [bp - 0x000c]       ; 0x48e5
    sub word [bp - 0x000a], ax       ; 0x48e8
@..api_idx_0024_NKNU.l24:
    inc word [bp - 0x000e]           ; 0x48eb
    mov ax, word [bp - 0x000e]       ; 0x48ee
    cmp ax, strict word 4            ; 0x48f1
    jl short @..api_idx_0024_NKNU.l21 ; 0x48f4
    mov word [bp - 0x0018], 0xffff   ; 0x48f6
    mov al, byte [bp + 0x6]          ; 0x48fb
    mov bx, word [bp - 0x0008]       ; 0x48fe
    mov byte [bx + 0x1f], al         ; 0x4901
@..api_idx_0024_NKNU.l25:
    mov ax, word [bp + 0x6]          ; 0x4904
    shl ax, 1                        ; 0x4907
    mov bx, ax                       ; 0x4909
    mov bx, word [bx + party_char]   ; 0x490b
    mov al, byte [bx + 0x1a1]        ; 0x490f
    sub ah, ah                       ; 0x4913
    push ax                          ; 0x4915
    call ds_app_PUNN                 ; 0x4916
    pop cx                           ; 0x4919
    mov bx, word [bp - 0x0008]       ; 0x491a
    mov byte [bx + 0x20], al         ; 0x491d
    mov bx, word [bp - 0x0008]       ; 0x4920
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
    cmp byte [bx + si + 0x22], 3     ; 0x493c
    jae short @..api_idx_0024_NKNU.l25 ; 0x4940
    mov ax, 0x64                     ; 0x4942
    push ax                          ; 0x4945
    call ds_app_PUNN                 ; 0x4946
    pop cx                           ; 0x4949
    push ax                          ; 0x494a
    mov ax, word [bp + 0x4]          ; 0x494b
    shl ax, 1                        ; 0x494e
    mov bx, ax                       ; 0x4950
    mov bx, word [bx + party_char_ext] ; 0x4952
    mov al, byte [bx + 0xae]         ; 0x4956
    sub ah, ah                       ; 0x495a
    mov cx, ax                       ; 0x495c
    pop ax                           ; 0x495e
    cmp ax, cx                       ; 0x495f
    jl short @..api_idx_0024_NKNU.l26 ; 0x4961
    jmp near @..api_idx_0024_NKNU.l39 ; 0x4963
@..api_idx_0024_NKNU.l26:
    mov word [bp - 0x0018], 3        ; 0x4966
    mov bx, word [bp - 0x0008]       ; 0x496b
    mov byte [bx + 0x1e], 3          ; 0x496e
    mov ax, 0x64                     ; 0x4972
    push ax                          ; 0x4975
    call ds_app_PUNN                 ; 0x4976
    pop cx                           ; 0x4979
    mov word [bp - 0x0012], ax       ; 0x497a
    mov word [bp - 0x0016], 5        ; 0x497d
    mov word [bp - 0x0010], 0        ; 0x4982
    mov word [bp - 0x001a], 0xffff   ; 0x4987
@..api_idx_0024_NKNU.l27:
    mov ax, word [bp - 0x0012]       ; 0x498c
    cmp ax, word [bp - 0x0016]       ; 0x498f
    jge short @..api_idx_0024_NKNU.l28 ; 0x4992
    mov ax, word [bp + 0x4]          ; 0x4994
    shl ax, 1                        ; 0x4997
    mov bx, ax                       ; 0x4999
    mov bx, word [bx + party_char_ext] ; 0x499b
    mov si, word [bp - 0x0010]       ; 0x499f
    mov al, byte [bx + si + 0x90]    ; 0x49a2
    sub ah, ah                       ; 0x49a6
    mov word [bp - 0x001a], ax       ; 0x49a8
@..api_idx_0024_NKNU.l28:
    inc word [bp - 0x0010]           ; 0x49ab
    cmp word [bp - 0x0016], byte 0x0f ; 0x49ae
    jge short @..api_idx_0024_NKNU.l29 ; 0x49b2
    add word [bp - 0x0016], byte 5   ; 0x49b4
    jmp short @..api_idx_0024_NKNU.l31 ; 0x49b8
@..api_idx_0024_NKNU.l29:
    cmp word [bp - 0x0016], byte 0x37 ; 0x49ba
    jge short @..api_idx_0024_NKNU.l30 ; 0x49be
    add word [bp - 0x0016], byte 0x0a ; 0x49c0
    jmp short @..api_idx_0024_NKNU.l31 ; 0x49c4
@..api_idx_0024_NKNU.l30:
    add word [bp - 0x0016], byte 0x0f ; 0x49c6
@..api_idx_0024_NKNU.l31:
    cmp word [bp - 0x001a], byte 0xff ; 0x49ca
    je short @..api_idx_0024_NKNU.l27 ; 0x49ce
    mov ax, 6                        ; 0x49d0
    imul word [bp - 0x001a]          ; 0x49d3
    mov bx, ax                       ; 0x49d6
    cmp byte [bx + 0x624], 1         ; 0x49d8
    je short @..api_idx_0024_NKNU.l32 ; 0x49dd
    mov ax, word [bp - 0x001a]       ; 0x49df
    cmp ax, strict word 0x58         ; 0x49e2
    je short @..api_idx_0024_NKNU.l32 ; 0x49e5
    cmp ax, strict word 0x13         ; 0x49e7
    je short @..api_idx_0024_NKNU.l32 ; 0x49ea
    cmp ax, strict word 0x42         ; 0x49ec
    jne short @..api_idx_0024_NKNU.l35 ; 0x49ef
@..api_idx_0024_NKNU.l32:
    cmp word [bp + 0x4], byte 6      ; 0x49f1
    jne short @..api_idx_0024_NKNU.l34 ; 0x49f5
    mov ax, 0                        ; 0x49f7
    push ax                          ; 0x49fa
    push word [bp - 0x0008]          ; 0x49fb
    call api_idx_0004_PKLV           ; 0x49fe
    add sp, byte 4                   ; 0x4a01
    test ax, ax                      ; 0x4a04
    jne short @..api_idx_0024_NKNU.l33 ; 0x4a06
    mov ax, 6                        ; 0x4a08
    push ax                          ; 0x4a0b
    push word [bp - 0x0008]          ; 0x4a0c
    call api_idx_0004_PKLV           ; 0x4a0f
    add sp, byte 4                   ; 0x4a12
    test ax, ax                      ; 0x4a15
    jne short @..api_idx_0024_NKNU.l33 ; 0x4a17
    mov word [bp - 0x0018], 0xffff   ; 0x4a19
@..api_idx_0024_NKNU.l33:
    jmp short @..api_idx_0024_NKNU.l35 ; 0x4a1e
@..api_idx_0024_NKNU.l34:
    push word [bp + 0x4]             ; 0x4a20
    push word [bp - 0x0008]          ; 0x4a23
    call api_idx_0004_PKLV           ; 0x4a26
    add sp, byte 4                   ; 0x4a29
    test ax, ax                      ; 0x4a2c
    jne short @..api_idx_0024_NKNU.l35 ; 0x4a2e
    push word [bss_8466]             ; 0x4a30
    call ds_app_PUNN                 ; 0x4a34
    pop cx                           ; 0x4a37
    inc ax                           ; 0x4a38
    push ax                          ; 0x4a39
    push word [bp - 0x0008]          ; 0x4a3a
    call api_idx_0004_PKLV           ; 0x4a3d
    add sp, byte 4                   ; 0x4a40
    test ax, ax                      ; 0x4a43
    jne short @..api_idx_0024_NKNU.l35 ; 0x4a45
    mov word [bp - 0x0018], 0xffff   ; 0x4a47
@..api_idx_0024_NKNU.l35:
    mov ax, 6                        ; 0x4a4c
    imul word [bp - 0x001a]          ; 0x4a4f
    mov bx, ax                       ; 0x4a52
    mov al, byte [bx + 0x621]        ; 0x4a54
    sub ah, ah                       ; 0x4a58
    mov cx, ax                       ; 0x4a5a
    mov bx, word [bp - 0x0008]       ; 0x4a5c
    mov ax, word [bx]                ; 0x4a5f
    sub ax, cx                       ; 0x4a61
    inc ax                           ; 0x4a63
    mov word [bp - 0x0012], ax       ; 0x4a64
    mov ax, 1                        ; 0x4a67
    mov cx, word [bp - 0x0012]       ; 0x4a6a
    cmp cx, byte 1                   ; 0x4a6d
    jl short @..api_idx_0024_NKNU.l36 ; 0x4a70
    mov ax, cx                       ; 0x4a72
    push ax                          ; 0x4a74
    cmp ax, strict word 6            ; 0x4a75
    pop ax                           ; 0x4a78
    jle short @..api_idx_0024_NKNU.l36 ; 0x4a79
    mov ax, 6                        ; 0x4a7b
@..api_idx_0024_NKNU.l36:
    mov word [bp - 0x0012], ax       ; 0x4a7e
@..api_idx_0024_NKNU.l37:
    mov bx, word [bp - 0x0008]       ; 0x4a81
    push word [bx]                   ; 0x4a84
    call ds_app_PUNN                 ; 0x4a86
    pop cx                           ; 0x4a89
    inc ax                           ; 0x4a8a
    cmp ax, word [bp - 0x0012]       ; 0x4a8b
    jge short @..api_idx_0024_NKNU.l38 ; 0x4a8e
    dec word [bp - 0x0012]           ; 0x4a90
    jmp short @..api_idx_0024_NKNU.l37 ; 0x4a93
@..api_idx_0024_NKNU.l38:
    mov ax, word [bp - 0x0012]       ; 0x4a95
    xchg al, ah                      ; 0x4a98
    sub al, al                       ; 0x4a9a
    add ax, word [bp - 0x001a]       ; 0x4a9c
    mov bx, word [bp - 0x0008]       ; 0x4a9f
    mov word [bx + 0xa], ax          ; 0x4aa2
@..api_idx_0024_NKNU.l39:
    cmp word [bp - 0x0018], byte 0xff ; 0x4aa5
    jne short @..api_idx_0024_NKNU.l40 ; 0x4aa9
    mov ax, 0x64                     ; 0x4aab
    push ax                          ; 0x4aae
    call ds_app_PUNN                 ; 0x4aaf
    pop cx                           ; 0x4ab2
    push ax                          ; 0x4ab3
    mov ax, word [bp + 0x4]          ; 0x4ab4
    shl ax, 1                        ; 0x4ab7
    mov bx, ax                       ; 0x4ab9
    mov bx, word [bx + party_char_ext] ; 0x4abb
    mov al, byte [bx + 0xb0]         ; 0x4abf
    sub ah, ah                       ; 0x4ac3
    mov cx, ax                       ; 0x4ac5
    pop ax                           ; 0x4ac7
    cmp ax, cx                       ; 0x4ac8
    jge short @..api_idx_0024_NKNU.l40 ; 0x4aca
    mov word [bp - 0x0018], 5        ; 0x4acc
    mov bx, word [bp - 0x0008]       ; 0x4ad1
    mov byte [bx + 0x1e], 5          ; 0x4ad4
    mov ax, word [bp + 0x4]          ; 0x4ad8
    shl ax, 1                        ; 0x4adb
    mov bx, ax                       ; 0x4add
    mov bx, word [bx + party_char_ext] ; 0x4adf
    mov al, byte [bx + 0xde]         ; 0x4ae3
    sub ah, ah                       ; 0x4ae7
    mov bx, word [bp - 0x0008]       ; 0x4ae9
    mov word [bx + 0xa], ax          ; 0x4aec
@..api_idx_0024_NKNU.l40:
    cmp word [bp - 0x0018], byte 0xff ; 0x4aef
    je short @..api_idx_0024_NKNU.l41 ; 0x4af3
    jmp near @..api_idx_0024_NKNU.l57 ; 0x4af5
@..api_idx_0024_NKNU.l41:
    mov word [bp - 0x0012], 0        ; 0x4af8
    mov bx, word [bp - 0x0008]       ; 0x4afd
    cmp byte [bx + 0x22], 2          ; 0x4b00
    jb short @..api_idx_0024_NKNU.l42 ; 0x4b04
    jmp near @..api_idx_0024_NKNU.l47 ; 0x4b06
@..api_idx_0024_NKNU.l42:
    cmp byte [bx + 0x11], 0          ; 0x4b09
    je short @..api_idx_0024_NKNU.l43 ; 0x4b0d
    jmp near @..api_idx_0024_NKNU.l47 ; 0x4b0f
@..api_idx_0024_NKNU.l43:
    cmp byte [bx + 0x10], 0          ; 0x4b12
    jne short @..api_idx_0024_NKNU.l47 ; 0x4b16
    mov al, byte [bx + 0x1c]         ; 0x4b18
    sub ah, ah                       ; 0x4b1b
    mov word [bp - 0x0014], ax       ; 0x4b1d
    cmp word [bp + 0x4], byte 6      ; 0x4b20
    jne short @..api_idx_0024_NKNU.l44 ; 0x4b24
    mov word [bp - 0x0012], 9        ; 0x4b26
    jmp short @..api_idx_0024_NKNU.l47 ; 0x4b2b
@..api_idx_0024_NKNU.l44:
    cmp word [bp + 0x4], byte 3      ; 0x4b2d
    jl short @..api_idx_0024_NKNU.l45 ; 0x4b31
    mov cx, 0x12                     ; 0x4b33
    imul cx                          ; 0x4b36
    mov si, ax                       ; 0x4b38
    mov ax, word [bp + 0x4]          ; 0x4b3a
    shl ax, 1                        ; 0x4b3d
    mov bx, ax                       ; 0x4b3f
    mov bx, word [bx + party_char_ext] ; 0x4b41
    cmp byte [bx + si + 0x51], 1     ; 0x4b45
    jbe short @..api_idx_0024_NKNU.l47 ; 0x4b49
@..api_idx_0024_NKNU.l45:
    mov word [bp - 0x0012], 3        ; 0x4b4b
    mov ax, 0x12                     ; 0x4b50
    imul word [bp - 0x0014]          ; 0x4b53
    mov si, ax                       ; 0x4b56
    mov ax, word [bp + 0x4]          ; 0x4b58
    shl ax, 1                        ; 0x4b5b
    mov bx, ax                       ; 0x4b5d
    mov bx, word [bx + party_char_ext] ; 0x4b5f
    mov al, byte [bx + si + 0x51]    ; 0x4b63
    sub ah, ah                       ; 0x4b66
    mov cx, 2                        ; 0x4b68
    cmp word [bp + 0x4], byte 3      ; 0x4b6b
    jge short @..api_idx_0024_NKNU.l46 ; 0x4b6f
    mov cx, 0                        ; 0x4b71
@..api_idx_0024_NKNU.l46:
    cmp ax, cx                       ; 0x4b74
    jle short @..api_idx_0024_NKNU.l47 ; 0x4b76
    mov word [bp - 0x0012], 6        ; 0x4b78
@..api_idx_0024_NKNU.l47:
    mov ax, word [bp + 0x6]          ; 0x4b7d
    shl ax, 1                        ; 0x4b80
    mov bx, ax                       ; 0x4b82
    mov bx, word [bx + party_char]   ; 0x4b84
    mov al, byte [bx + 0x1a1]        ; 0x4b88
    sub ah, ah                       ; 0x4b8c
    cmp ax, word [bp - 0x0012]       ; 0x4b8e
    jge short @..api_idx_0024_NKNU.l48 ; 0x4b91
    mov word [bp - 0x0012], ax       ; 0x4b93
@..api_idx_0024_NKNU.l48:
    mov word [bp - 0x0010], 0        ; 0x4b96
    mov word [bp - 0x0016], 0        ; 0x4b9b
    jmp short @..api_idx_0024_NKNU.l51 ; 0x4ba0
@..api_idx_0024_NKNU.l49:
    mov ax, 0x2c                     ; 0x4ba2
    imul word [bp - 0x0016]          ; 0x4ba5
    mov si, ax                       ; 0x4ba8
    mov ax, word [bp + 0x6]          ; 0x4baa
    shl ax, 1                        ; 0x4bad
    mov bx, ax                       ; 0x4baf
    mov bx, word [bx + party_char]   ; 0x4bb1
    cmp byte [bx + si + 0x22], 3     ; 0x4bb5
    jae short @..api_idx_0024_NKNU.l50 ; 0x4bb9
    inc word [bp - 0x0010]           ; 0x4bbb
@..api_idx_0024_NKNU.l50:
    inc word [bp - 0x0016]           ; 0x4bbe
@..api_idx_0024_NKNU.l51:
    mov ax, word [bp - 0x0016]       ; 0x4bc1
    cmp ax, word [bp - 0x0012]       ; 0x4bc4
    jl short @..api_idx_0024_NKNU.l49 ; 0x4bc7
    cmp word [bp - 0x0010], byte 0   ; 0x4bc9
    jg short @..api_idx_0024_NKNU.l52 ; 0x4bcd
    jmp near @..api_idx_0024_NKNU.l56 ; 0x4bcf
@..api_idx_0024_NKNU.l52:
    mov bx, word [bp - 0x0008]       ; 0x4bd2
    mov byte [bx + 0x1e], 0          ; 0x4bd5
    mov al, byte [bp + 0x6]          ; 0x4bd9
    mov bx, word [bp - 0x0008]       ; 0x4bdc
    mov byte [bx + 0x1f], al         ; 0x4bdf
    push word [bp - 0x0010]          ; 0x4be2
    call ds_app_PUNN                 ; 0x4be5
    pop cx                           ; 0x4be8
    mov bx, word [bp - 0x0008]       ; 0x4be9
    mov byte [bx + 0x20], al         ; 0x4bec
    mov bx, word [bp - 0x0008]       ; 0x4bef
    mov al, byte [bx + 0x1c]         ; 0x4bf2
    sub ah, ah                       ; 0x4bf5
    mov word [bp - 0x0014], ax       ; 0x4bf7
    mov ax, word [bp + 0x4]          ; 0x4bfa
    shl ax, 1                        ; 0x4bfd
    mov bx, ax                       ; 0x4bff
    mov bx, word [bx + party_char_ext] ; 0x4c01
    mov si, word [bp - 0x0014]       ; 0x4c05
    cmp byte [bx + si + 0x86], 2     ; 0x4c08
    jne short @..api_idx_0024_NKNU.l53 ; 0x4c0d
    mov bx, word [bp - 0x0008]       ; 0x4c0f
    mov word [bx + 0xa], 4           ; 0x4c12
    jmp short @..api_idx_0024_NKNU.l55 ; 0x4c17
@..api_idx_0024_NKNU.l53:
    mov ax, word [bp + 0x4]          ; 0x4c19
    shl ax, 1                        ; 0x4c1c
    mov bx, ax                       ; 0x4c1e
    mov bx, word [bx + party_char_ext] ; 0x4c20
    mov si, word [bp - 0x0014]       ; 0x4c24
    cmp byte [bx + si + 0x86], 3     ; 0x4c27
    jne short @..api_idx_0024_NKNU.l54 ; 0x4c2c
    mov bx, word [bp - 0x0008]       ; 0x4c2e
    mov word [bx + 0xa], 8           ; 0x4c31
    jmp short @..api_idx_0024_NKNU.l55 ; 0x4c36
@..api_idx_0024_NKNU.l54:
    mov ax, 0x12                     ; 0x4c38
    imul word [bp - 0x0014]          ; 0x4c3b
    mov cx, ax                       ; 0x4c3e
    mov ax, word [bp + 0x4]          ; 0x4c40
    shl ax, 1                        ; 0x4c43
    mov bx, ax                       ; 0x4c45
    mov ax, word [bx + party_char_ext] ; 0x4c47
    add ax, cx                       ; 0x4c4b
    add ax, strict word 0x53         ; 0x4c4d
    push ax                          ; 0x4c50
    call api_idx_0006_QUSK           ; 0x4c51
    pop cx                           ; 0x4c54
    mov bx, word [bp - 0x0008]       ; 0x4c55
    mov word [bx + 0xa], ax          ; 0x4c58
@..api_idx_0024_NKNU.l55:
    jmp short @..api_idx_0024_NKNU.l57 ; 0x4c5b
@..api_idx_0024_NKNU.l56:
    mov bx, word [bp - 0x0008]       ; 0x4c5d
    mov byte [bx + 0x18], 0          ; 0x4c60
@..api_idx_0024_NKNU.l57:
    mov ax, 0x64                     ; 0x4c64
    push ax                          ; 0x4c67
    call ds_app_PUNN                 ; 0x4c68
    pop cx                           ; 0x4c6b
    mov word [bp - 0x0006], ax       ; 0x4c6c
    mov bx, word [bp - 0x0008]       ; 0x4c6f
    cmp byte [bx + 0xf], 0           ; 0x4c72
    jbe short @..api_idx_0024_NKNU.l58 ; 0x4c76
    mov cx, word [bp - 0x001c]       ; 0x4c78
    add cx, byte 0x0a                ; 0x4c7b
    jmp short @..api_idx_0024_NKNU.l59 ; 0x4c7e
@..api_idx_0024_NKNU.l58:
    mov cx, word [bp - 0x001c]       ; 0x4c80
@..api_idx_0024_NKNU.l59:
    cmp cx, ax                       ; 0x4c83
    jle short @..api_idx_0024_NKNU.l60 ; 0x4c85
    mov ax, word [bp + 0x4]          ; 0x4c87
    shl ax, 1                        ; 0x4c8a
    mov bx, ax                       ; 0x4c8c
    mov bx, word [bx + party_char_ext] ; 0x4c8e
    mov al, byte [bx + 0xb2]         ; 0x4c92
    sub ah, ah                       ; 0x4c96
    mov cx, ax                       ; 0x4c98
    mov ax, word [bp - 0x0006]       ; 0x4c9a
    cmp cx, ax                       ; 0x4c9d
    jle short @..api_idx_0024_NKNU.l60 ; 0x4c9f
    mov word [bp - 0x0018], 6        ; 0x4ca1
    mov bx, word [bp - 0x0008]       ; 0x4ca6
    mov byte [bx + 0x1e], 6          ; 0x4ca9
@..api_idx_0024_NKNU.l60:
    mov bx, word [bp - 0x0008]       ; 0x4cad
    mov word [bx + 0xc], 0xffff      ; 0x4cb0
    mov bx, word [bp - 0x0008]       ; 0x4cb5
    cmp byte [bx + 0x1e], 0          ; 0x4cb8
    je short @..api_idx_0024_NKNU.l61 ; 0x4cbc
    jmp near @..api_idx_0024_NKNU.l68 ; 0x4cbe
@..api_idx_0024_NKNU.l61:
    mov al, byte [bx + 0x1d]         ; 0x4cc1
    sub ah, ah                       ; 0x4cc4
    mov word [bp - 0x0014], ax       ; 0x4cc6
    cmp word [bp + 0x4], byte 3      ; 0x4cc9
    jl short @..api_idx_0024_NKNU.l62 ; 0x4ccd
    mov cx, 0x12                     ; 0x4ccf
    imul cx                          ; 0x4cd2
    mov si, ax                       ; 0x4cd4
    mov ax, word [bp + 0x4]          ; 0x4cd6
    shl ax, 1                        ; 0x4cd9
    mov bx, ax                       ; 0x4cdb
    mov bx, word [bx + party_char_ext] ; 0x4cdd
    cmp byte [bx + si + 0x51], 1     ; 0x4ce1
    jbe short @..api_idx_0024_NKNU.l66 ; 0x4ce5
@..api_idx_0024_NKNU.l62:
    mov ax, word [bp + 0x4]          ; 0x4ce7
    shl ax, 1                        ; 0x4cea
    mov bx, ax                       ; 0x4cec
    mov bx, word [bx + party_char_ext] ; 0x4cee
    mov si, word [bp - 0x0014]       ; 0x4cf2
    cmp byte [bx + si + 0x86], 2     ; 0x4cf5
    jne short @..api_idx_0024_NKNU.l63 ; 0x4cfa
    mov bx, word [bp - 0x0008]       ; 0x4cfc
    mov word [bx + 0xc], 4           ; 0x4cff
    jmp short @..api_idx_0024_NKNU.l65 ; 0x4d04
@..api_idx_0024_NKNU.l63:
    mov ax, word [bp + 0x4]          ; 0x4d06
    shl ax, 1                        ; 0x4d09
    mov bx, ax                       ; 0x4d0b
    mov bx, word [bx + party_char_ext] ; 0x4d0d
    mov si, word [bp - 0x0014]       ; 0x4d11
    cmp byte [bx + si + 0x86], 3     ; 0x4d14
    jne short @..api_idx_0024_NKNU.l64 ; 0x4d19
    mov bx, word [bp - 0x0008]       ; 0x4d1b
    mov word [bx + 0xc], 8           ; 0x4d1e
    jmp short @..api_idx_0024_NKNU.l65 ; 0x4d23
@..api_idx_0024_NKNU.l64:
    mov ax, 0x12                     ; 0x4d25
    imul word [bp - 0x0014]          ; 0x4d28
    mov cx, ax                       ; 0x4d2b
    mov ax, word [bp + 0x4]          ; 0x4d2d
    shl ax, 1                        ; 0x4d30
    mov bx, ax                       ; 0x4d32
    mov ax, word [bx + party_char_ext] ; 0x4d34
    add ax, cx                       ; 0x4d38
    add ax, strict word 0x53         ; 0x4d3a
    push ax                          ; 0x4d3d
    call api_idx_0006_QUSK           ; 0x4d3e
    pop cx                           ; 0x4d41
    mov bx, word [bp - 0x0008]       ; 0x4d42
    mov word [bx + 0xc], ax          ; 0x4d45
@..api_idx_0024_NKNU.l65:
    jmp short @..api_idx_0024_NKNU.l67 ; 0x4d48
@..api_idx_0024_NKNU.l66:
    mov bx, word [bp - 0x0008]       ; 0x4d4a
    mov byte [bx + 0x19], 0          ; 0x4d4d
    mov bx, word [bp - 0x0008]       ; 0x4d51
    mov byte [bx + 0x1b], 0          ; 0x4d54
@..api_idx_0024_NKNU.l67:
    jmp short @..api_idx_0024_NKNU.l70 ; 0x4d58
@..api_idx_0024_NKNU.l68:
    mov word [bp - 0x0004], 1        ; 0x4d5a
@..api_idx_0024_NKNU.l69:
    mov bx, word [bp - 0x0008]       ; 0x4d5f
    mov si, word [bp - 0x0004]       ; 0x4d62
    mov byte [bx + si + 0x18], 0     ; 0x4d65
    inc word [bp - 0x0004]           ; 0x4d69
    mov ax, word [bp - 0x0004]       ; 0x4d6c
    cmp ax, strict word 4            ; 0x4d6f
    jl short @..api_idx_0024_NKNU.l69 ; 0x4d72
@..api_idx_0024_NKNU.l70:
    inc word [bp - 0x0002]           ; 0x4d74
@..api_idx_0024_NKNU.l71:
    mov ax, word [bp + 0x4]          ; 0x4d77
    shl ax, 1                        ; 0x4d7a
    mov bx, ax                       ; 0x4d7c
    mov bx, word [bx + party_char]   ; 0x4d7e
    mov al, byte [bx + 0x1a1]        ; 0x4d82
    sub ah, ah                       ; 0x4d86
    cmp ax, word [bp - 0x0002]       ; 0x4d88
    jle short @..api_idx_0024_NKNU.l72 ; 0x4d8b
    jmp near @..api_idx_0024_NKNU.l14 ; 0x4d8d
@..api_idx_0024_NKNU.l72:
    ret                              ; 0x4d90
