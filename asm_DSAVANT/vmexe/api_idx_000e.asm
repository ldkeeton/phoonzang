api_idx_000e:
    mov ax, 0xfff2                   ; 0x0656
    call aztec_csav                  ; 0x0659
    mov bx, word [bp + 0xe]          ; 0x065c
    mov byte [bx], 0                 ; 0x065f
    mov ax, word [bp + 0x4]          ; 0x0662
    shl ax, 1                        ; 0x0665
    mov bx, ax                       ; 0x0667
    mov bx, word [bx - 0x7b7e]       ; 0x0669
    cmp byte [bx + 0x19f], 0xff      ; 0x066d
    jne short @..api_idx_000e.l1     ; 0x0672
    ret                              ; 0x0674
@..api_idx_000e.l1:
    mov al, byte [bx + 0x19f]        ; 0x0675
    cbw                              ; 0x0679
    mov word [bp - 0x0002], ax       ; 0x067a
    mov word [bp - 0x000e], 0        ; 0x067d
    mov cx, 0x15e                    ; 0x0682
    imul cx                          ; 0x0685
    push ax                          ; 0x0687
    mov ax, 3                        ; 0x0688
    imul word [bp + 0x8]             ; 0x068b
    add ax, word [bp + 0xa]          ; 0x068e
    mov bx, ax                       ; 0x0691
    mov al, byte [bx - 0x7bd0]       ; 0x0693
    sub ah, ah                       ; 0x0697
    mov cx, ax                       ; 0x0699
    pop ax                           ; 0x069b
    add ax, cx                       ; 0x069c
    mov bx, ax                       ; 0x069e
    mov al, byte [bx + 0x6a1a]       ; 0x06a0
    sub ah, ah                       ; 0x06a4
    mov word [bp - 0x0004], ax       ; 0x06a6
    jmp near @..api_idx_000e.l15     ; 0x06a9
@..api_idx_000e.l2:
    mov ax, 0x2c                     ; 0x06ac
    imul word [bp + 0x6]             ; 0x06af
    mov si, ax                       ; 0x06b2
    mov ax, word [bp + 0x4]          ; 0x06b4
    shl ax, 1                        ; 0x06b7
    mov bx, ax                       ; 0x06b9
    mov bx, word [bx - 0x7b7e]       ; 0x06bb
    cmp byte [bx + si + 0x22], 2     ; 0x06bf
    je short @..api_idx_000e.l3      ; 0x06c3
    cmp byte [bx + si + 0x11], 0     ; 0x06c5
    ja short @..api_idx_000e.l3      ; 0x06c9
    cmp byte [bx + si + 0x10], 0     ; 0x06cb
    jbe short @..api_idx_000e.l4     ; 0x06cf
@..api_idx_000e.l3:
    mov ax, 0x5a                     ; 0x06d1
    imul word [bp + 0x8]             ; 0x06d4
    push ax                          ; 0x06d7
    mov ax, 0x1e                     ; 0x06d8
    imul word [bp + 0xa]             ; 0x06db
    mov cx, ax                       ; 0x06de
    pop ax                           ; 0x06e0
    add ax, cx                       ; 0x06e1
    push ax                          ; 0x06e3
    mov ax, 3                        ; 0x06e4
    imul word [bp - 0x0004]          ; 0x06e7
    mov cx, ax                       ; 0x06ea
    pop ax                           ; 0x06ec
    add ax, cx                       ; 0x06ed
    mov bx, ax                       ; 0x06ef
    mov al, byte [bx - 0x7cde]       ; 0x06f1
    sub ah, ah                       ; 0x06f5
    mov word [bp - 0x0006], ax       ; 0x06f7
    mov ax, 0x15e                    ; 0x06fa
    imul word [bp - 0x0002]          ; 0x06fd
    mov cx, ax                       ; 0x0700
    mov ax, word [bp - 0x0006]       ; 0x0702
    add cx, ax                       ; 0x0705
    mov bx, cx                       ; 0x0707
    mov al, byte [bx + 0x6a40]       ; 0x0709
    sub ah, ah                       ; 0x070d
    mov word [bp - 0x0008], ax       ; 0x070f
    jmp near @..api_idx_000e.l11     ; 0x0712
@..api_idx_000e.l4:
    mov ax, 0x5a                     ; 0x0715
    imul word [bp + 0x8]             ; 0x0718
    push ax                          ; 0x071b
    mov ax, 0x1e                     ; 0x071c
    imul word [bp + 0xa]             ; 0x071f
    mov cx, ax                       ; 0x0722
    pop ax                           ; 0x0724
    add ax, cx                       ; 0x0725
    push ax                          ; 0x0727
    mov ax, 3                        ; 0x0728
    imul word [bp - 0x0004]          ; 0x072b
    mov cx, ax                       ; 0x072e
    pop ax                           ; 0x0730
    add ax, cx                       ; 0x0731
    mov bx, ax                       ; 0x0733
    mov al, byte [bx - 0x7cdd]       ; 0x0735
    sub ah, ah                       ; 0x0739
    mov word [bp - 0x0008], ax       ; 0x073b
    mov al, byte [bx - 0x7cdc]       ; 0x073e
    sub ah, ah                       ; 0x0742
    mov word [bp - 0x000a], ax       ; 0x0744
    cmp word [bp + 0xc], byte 0      ; 0x0747
    je short @..api_idx_000e.l5      ; 0x074b
    dec word [bp - 0x000a]           ; 0x074d
@..api_idx_000e.l5:
    cmp word [bp - 0x000a], byte 0   ; 0x0750
    jle short @..api_idx_000e.l6     ; 0x0754
    jmp near @..api_idx_000e.l10     ; 0x0756
@..api_idx_000e.l6:
    mov al, byte [bx - 0x7cde]       ; 0x0759
    sub ah, ah                       ; 0x075d
    mov word [bp - 0x0006], ax       ; 0x075f
    inc word [bp - 0x0008]           ; 0x0762
    mov ax, 0x15e                    ; 0x0765
    imul word [bp - 0x0002]          ; 0x0768
    mov cx, ax                       ; 0x076b
    mov ax, word [bp - 0x0006]       ; 0x076d
    add cx, ax                       ; 0x0770
    mov bx, cx                       ; 0x0772
    mov al, byte [bx + 0x6a40]       ; 0x0774
    sub ah, ah                       ; 0x0778
    push ax                          ; 0x077a
    mov al, byte [bx + 0x6a4a]       ; 0x077b
    sub ah, ah                       ; 0x077f
    mov cx, ax                       ; 0x0781
    pop ax                           ; 0x0783
    add ax, cx                       ; 0x0784
    dec ax                           ; 0x0786
    cmp ax, word [bp - 0x0008]       ; 0x0787
    jl short @..api_idx_000e.l7      ; 0x078a
    jmp near @..api_idx_000e.l9      ; 0x078c
@..api_idx_000e.l7:
    mov ax, 3                        ; 0x078f
    imul word [bp + 0x8]             ; 0x0792
    add ax, word [bp + 0xa]          ; 0x0795
    mov bx, ax                       ; 0x0798
    cmp byte [bx - 0x7bd0], 0        ; 0x079a
    je short @..api_idx_000e.l8      ; 0x079f
    mov byte [bx - 0x7bd0], 0        ; 0x07a1
    mov ax, 0                        ; 0x07a6
    push ax                          ; 0x07a9
    push word [bp + 0xa]             ; 0x07aa
    push word [bp + 0x8]             ; 0x07ad
    push word [bp + 0x4]             ; 0x07b0
    call api_idx_000a                ; 0x07b3
    add sp, byte 8                   ; 0x07b6
    push word [bp + 0xe]             ; 0x07b9
    mov ax, 0                        ; 0x07bc
    push ax                          ; 0x07bf
    push word [bp + 0xa]             ; 0x07c0
    push word [bp + 0x8]             ; 0x07c3
    push word [bp + 0x6]             ; 0x07c6
    push word [bp + 0x4]             ; 0x07c9
    call api_idx_000e                ; 0x07cc
    add sp, byte 0x0c                ; 0x07cf
    ret                              ; 0x07d2
@..api_idx_000e.l8:
    mov ax, 0x15e                    ; 0x07d3
    imul word [bp - 0x0002]          ; 0x07d6
    add ax, word [bp - 0x0004]       ; 0x07d9
    mov bx, ax                       ; 0x07dc
    mov al, byte [bx + 0x6a2c]       ; 0x07de
    sub ah, ah                       ; 0x07e2
    push ax                          ; 0x07e4
    call ds_app_09f0                 ; 0x07e5
    pop cx                           ; 0x07e8
    push ax                          ; 0x07e9
    mov ax, 0x15e                    ; 0x07ea
    imul word [bp - 0x0002]          ; 0x07ed
    add ax, word [bp - 0x0004]       ; 0x07f0
    mov bx, ax                       ; 0x07f3
    mov al, byte [bx + 0x6a22]       ; 0x07f5
    sub ah, ah                       ; 0x07f9
    mov cx, ax                       ; 0x07fb
    pop ax                           ; 0x07fd
    add ax, cx                       ; 0x07fe
    mov word [bp - 0x0006], ax       ; 0x0800
    mov al, byte [bp - 0x0006]       ; 0x0803
    push ax                          ; 0x0806
    mov ax, 0x5a                     ; 0x0807
    imul word [bp + 0x8]             ; 0x080a
    mov cx, ax                       ; 0x080d
    mov ax, 0x1e                     ; 0x080f
    imul word [bp + 0xa]             ; 0x0812
    mov dx, ax                       ; 0x0815
    add cx, ax                       ; 0x0817
    mov ax, 3                        ; 0x0819
    imul word [bp - 0x0004]          ; 0x081c
    mov dx, ax                       ; 0x081f
    add cx, ax                       ; 0x0821
    mov bx, cx                       ; 0x0823
    pop ax                           ; 0x0825
    mov byte [bx - 0x7cde], al       ; 0x0826
    mov ax, 0x15e                    ; 0x082a
    imul word [bp - 0x0002]          ; 0x082d
    add ax, word [bp - 0x0006]       ; 0x0830
    mov bx, ax                       ; 0x0833
    mov al, byte [bx + 0x6a40]       ; 0x0835
    sub ah, ah                       ; 0x0839
    mov word [bp - 0x0008], ax       ; 0x083b
@..api_idx_000e.l9:
    mov al, byte [bp - 0x0008]       ; 0x083e
    push ax                          ; 0x0841
    mov ax, 0x5a                     ; 0x0842
    imul word [bp + 0x8]             ; 0x0845
    mov cx, ax                       ; 0x0848
    mov ax, 0x1e                     ; 0x084a
    imul word [bp + 0xa]             ; 0x084d
    mov dx, ax                       ; 0x0850
    add cx, ax                       ; 0x0852
    mov ax, 3                        ; 0x0854
    imul word [bp - 0x0004]          ; 0x0857
    mov dx, ax                       ; 0x085a
    add cx, ax                       ; 0x085c
    mov bx, cx                       ; 0x085e
    pop ax                           ; 0x0860
    mov byte [bx - 0x7cdd], al       ; 0x0861
    mov ax, 0x15e                    ; 0x0865
    imul word [bp - 0x0002]          ; 0x0868
    mov cx, word [bp - 0x0008]       ; 0x086b
    shl cx, 1                        ; 0x086e
    shl cx, 1                        ; 0x0870
    add ax, cx                       ; 0x0872
    mov bx, ax                       ; 0x0874
    mov al, byte [bx + 0x6ac2]       ; 0x0876
    sub ah, ah                       ; 0x087a
    push ax                          ; 0x087c
    call ds_app_09f0                 ; 0x087d
    pop cx                           ; 0x0880
    push ax                          ; 0x0881
    mov ax, 0x15e                    ; 0x0882
    imul word [bp - 0x0002]          ; 0x0885
    mov cx, word [bp - 0x0008]       ; 0x0888
    shl cx, 1                        ; 0x088b
    shl cx, 1                        ; 0x088d
    add ax, cx                       ; 0x088f
    mov bx, ax                       ; 0x0891
    mov al, byte [bx + 0x6ac1]       ; 0x0893
    sub ah, ah                       ; 0x0897
    mov cx, ax                       ; 0x0899
    pop ax                           ; 0x089b
    add ax, cx                       ; 0x089c
    mov word [bp - 0x000a], ax       ; 0x089e
@..api_idx_000e.l10:
    mov al, byte [bp - 0x000a]       ; 0x08a1
    push ax                          ; 0x08a4
    mov ax, 0x5a                     ; 0x08a5
    imul word [bp + 0x8]             ; 0x08a8
    mov cx, ax                       ; 0x08ab
    mov ax, 0x1e                     ; 0x08ad
    imul word [bp + 0xa]             ; 0x08b0
    mov dx, ax                       ; 0x08b3
    add cx, ax                       ; 0x08b5
    mov ax, 3                        ; 0x08b7
    imul word [bp - 0x0004]          ; 0x08ba
    mov dx, ax                       ; 0x08bd
    add cx, ax                       ; 0x08bf
    mov bx, cx                       ; 0x08c1
    pop ax                           ; 0x08c3
    mov byte [bx - 0x7cdc], al       ; 0x08c4
@..api_idx_000e.l11:
    mov ax, 0x15e                    ; 0x08c8
    imul word [bp - 0x0002]          ; 0x08cb
    mov cx, word [bp - 0x0008]       ; 0x08ce
    shl cx, 1                        ; 0x08d1
    shl cx, 1                        ; 0x08d3
    add ax, cx                       ; 0x08d5
    mov bx, ax                       ; 0x08d7
    mov al, byte [bx + 0x6ac0]       ; 0x08d9
    mov bx, word [bp + 0xe]          ; 0x08dd
    mov si, word [bp - 0x000e]       ; 0x08e0
    mov byte [bx + si], al           ; 0x08e3
    mov ax, word [bp + 0x4]          ; 0x08e5
    shl ax, 1                        ; 0x08e8
    mov bx, ax                       ; 0x08ea
    mov bx, word [bx - 0x7b7e]       ; 0x08ec
    cmp byte [bx + 0x19e], 0x79      ; 0x08f0
    je short @..api_idx_000e.l12     ; 0x08f5
    mov al, byte [bx + 0x19e]        ; 0x08f7
    sub ah, ah                       ; 0x08fb
    cmp ax, 0x8d                     ; 0x08fd
    jne short @..api_idx_000e.l13    ; 0x0900
@..api_idx_000e.l12:
    inc word [bp - 0x000e]           ; 0x0902
    mov bx, word [bp + 0xe]          ; 0x0905
    mov si, word [bp - 0x000e]       ; 0x0908
    mov al, byte [bx + si - 0x0001]  ; 0x090b
    mov byte [bx + si], al           ; 0x090e
    mov ax, 0x15e                    ; 0x0910
    imul word [bp - 0x0002]          ; 0x0913
    mov bx, ax                       ; 0x0916
    mov al, byte [bx + 0x6b76]       ; 0x0918
    mov bx, word [bp + 0xe]          ; 0x091c
    mov si, word [bp - 0x000e]       ; 0x091f
    mov byte [bx + si - 0x0001], al  ; 0x0922
@..api_idx_000e.l13:
    mov bx, word [bp + 0xe]          ; 0x0925
    mov si, word [bp - 0x000e]       ; 0x0928
    cmp byte [bx + si], 0            ; 0x092b
    je short @..api_idx_000e.l14     ; 0x092e
    inc word [bp - 0x000e]           ; 0x0930
@..api_idx_000e.l14:
    inc word [bp - 0x0004]           ; 0x0933
@..api_idx_000e.l15:
    mov ax, 0x15e                    ; 0x0936
    imul word [bp - 0x0002]          ; 0x0939
    push ax                          ; 0x093c
    mov ax, 3                        ; 0x093d
    imul word [bp + 0x8]             ; 0x0940
    add ax, word [bp + 0xa]          ; 0x0943
    mov bx, ax                       ; 0x0946
    mov al, byte [bx - 0x7bd0]       ; 0x0948
    sub ah, ah                       ; 0x094c
    mov cx, ax                       ; 0x094e
    pop ax                           ; 0x0950
    add ax, cx                       ; 0x0951
    mov bx, ax                       ; 0x0953
    mov al, byte [bx + 0x6a1a]       ; 0x0955
    sub ah, ah                       ; 0x0959
    push ax                          ; 0x095b
    mov al, byte [bx + 0x6a1e]       ; 0x095c
    sub ah, ah                       ; 0x0960
    mov cx, ax                       ; 0x0962
    pop ax                           ; 0x0964
    add ax, cx                       ; 0x0965
    cmp ax, word [bp - 0x0004]       ; 0x0967
    jle short @..api_idx_000e.l16    ; 0x096a
    jmp near @..api_idx_000e.l2      ; 0x096c
@..api_idx_000e.l16:
    mov bx, word [bp + 0xe]          ; 0x096f
    mov si, word [bp - 0x000e]       ; 0x0972
    mov byte [bx + si], 0            ; 0x0975
    ret                              ; 0x0978
