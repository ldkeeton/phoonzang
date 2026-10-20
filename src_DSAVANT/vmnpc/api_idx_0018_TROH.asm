; auto-generated
api_idx_0018_TROH:
    mov ax, 0xffe8                   ; 0x0727
    call aztec_csav                  ; 0x072a
    mov byte [bp - 0x0018], 0        ; 0x072d
    mov ax, 6                        ; 0x0731
    imul word [bp + 0x4]             ; 0x0734
    mov cx, word [bp + 0x6]          ; 0x0737
    shl cx, 1                        ; 0x073a
    add ax, cx                       ; 0x073c
    mov bx, ax                       ; 0x073e
    mov ax, word [bx + bss_843a]     ; 0x0740
    mov word [bp - 0x0002], ax       ; 0x0744
    cmp word [bp - 0x0002], byte 0   ; 0x0747
    jne short @..api_idx_0018_TROH.l1 ; 0x074b
    ret                              ; 0x074d
@..api_idx_0018_TROH.l1:
    lea ax, word [bp - 0x0018]       ; 0x074e
    push ax                          ; 0x0751
    push word [bp + 0x10]            ; 0x0752
    push word [bp + 0x6]             ; 0x0755
    push word [bp + 0x4]             ; 0x0758
    push word [bp - 0x0002]          ; 0x075b
    call api_idx_000c_POTM           ; 0x075e
    add sp, byte 0x0a                ; 0x0761
    cmp byte [bp - 0x0018], 0        ; 0x0764
    jne short @..api_idx_0018_TROH.l2 ; 0x0768
    ret                              ; 0x076a
@..api_idx_0018_TROH.l2:
    cmp word [bss_9136], byte 0x3e   ; 0x076b
    jne short @..api_idx_0018_TROH.l3 ; 0x0770
    cmp word [bss_9134], byte 0x12   ; 0x0772
    jne short @..api_idx_0018_TROH.l3 ; 0x0777
    mov ax, 1                        ; 0x0779
    jmp short @..api_idx_0018_TROH.l4 ; 0x077c
@..api_idx_0018_TROH.l3:
    mov ax, word [bp + 0x6]          ; 0x077e
    mov cx, 2                        ; 0x0781
    cwd                              ; 0x0784
    idiv cx                          ; 0x0785
    mov ax, dx                       ; 0x0787
@..api_idx_0018_TROH.l4:
    mov word [bp - 0x0004], ax       ; 0x0789
    mov al, byte [bp - 0x0018]       ; 0x078c
    sub ah, ah                       ; 0x078f
    mov word [bp - 0x0006], ax       ; 0x0791
    mov ax, 0x15e                    ; 0x0794
    imul word [bp - 0x0002]          ; 0x0797
    mov bx, ax                       ; 0x079a
    cmp byte [bx + slot_rec_forced], 0 ; 0x079c
    je short @..api_idx_0018_TROH.l5 ; 0x07a1
    mov word [bp + 0x8], 0           ; 0x07a3
@..api_idx_0018_TROH.l5:
    mov cx, word [bp - 0x0006]       ; 0x07a8
    shl cx, 1                        ; 0x07ab
    shl cx, 1                        ; 0x07ad
    add ax, cx                       ; 0x07af
    mov bx, ax                       ; 0x07b1
    mov al, byte [bx + 0x6abf]       ; 0x07b3
    sub ah, ah                       ; 0x07b7
    mov word [bp - 0x0008], ax       ; 0x07b9
    cmp word [bp - 0x0008], byte 0   ; 0x07bc
    jne short @..api_idx_0018_TROH.l6 ; 0x07c0
    mov ax, 6                        ; 0x07c2
    imul word [bp + 0x4]             ; 0x07c5
    mov cx, word [bp + 0x6]          ; 0x07c8
    shl cx, 1                        ; 0x07cb
    add ax, cx                       ; 0x07cd
    mov bx, ax                       ; 0x07cf
    mov ax, word [bx + 0x5da]        ; 0x07d1
    mov word [bp - 0x0008], ax       ; 0x07d5
    jmp short @..api_idx_0018_TROH.l8 ; 0x07d8
@..api_idx_0018_TROH.l6:
    mov ax, 0x64                     ; 0x07da
    push ax                          ; 0x07dd
    mov ax, 5                        ; 0x07de
    push ax                          ; 0x07e1
    mov ax, 0xa                      ; 0x07e2
    imul word [bp + 0x4]             ; 0x07e5
    mov cx, ax                       ; 0x07e8
    mov ax, 0                        ; 0x07ea
    cmp word [bp + 0x6], byte 0      ; 0x07ed
    je short @..api_idx_0018_TROH.l7 ; 0x07f1
    mov ax, 5                        ; 0x07f3
@..api_idx_0018_TROH.l7:
    add cx, ax                       ; 0x07f6
    mov ax, word [bp - 0x0008]       ; 0x07f8
    sub ax, cx                       ; 0x07fb
    push ax                          ; 0x07fd
    call clamp_between               ; 0x07fe
    add sp, byte 6                   ; 0x0801
    mov word [bp - 0x0008], ax       ; 0x0804
@..api_idx_0018_TROH.l8:
    mov ax, word [bp + 0xe]          ; 0x0807
    dec ax                           ; 0x080a
    push ax                          ; 0x080b
    mov ax, 0                        ; 0x080c
    push ax                          ; 0x080f
    mov ax, 0x15e                    ; 0x0810
    imul word [bp - 0x0002]          ; 0x0813
    push ax                          ; 0x0816
    mov ax, word [bp - 0x0004]       ; 0x0817
    mov cx, 2                        ; 0x081a
    cwd                              ; 0x081d
    idiv cx                          ; 0x081e
    mov cx, dx                       ; 0x0820
    pop ax                           ; 0x0822
    add ax, cx                       ; 0x0823
    mov cx, word [bp - 0x0006]       ; 0x0825
    shl cx, 1                        ; 0x0828
    add ax, cx                       ; 0x082a
    mov bx, ax                       ; 0x082c
    mov al, byte [bx + 0x6a52]       ; 0x082e
    sub ah, ah                       ; 0x0832
    push ax                          ; 0x0834
    mov ax, 0x15e                    ; 0x0835
    imul word [bp - 0x0002]          ; 0x0838
    mov cx, word [bp + 0x6]          ; 0x083b
    shl cx, 1                        ; 0x083e
    add ax, cx                       ; 0x0840
    mov bx, ax                       ; 0x0842
    mov al, byte [bx + 0x6b60]       ; 0x0844
    cbw                              ; 0x0848
    mov cx, ax                       ; 0x0849
    pop ax                           ; 0x084b
    add ax, cx                       ; 0x084c
    push ax                          ; 0x084e
    call clamp_between               ; 0x084f
    add sp, byte 6                   ; 0x0852
    mov word [bp - 0x000a], ax       ; 0x0855
    mov ax, 0x15e                    ; 0x0858
    imul word [bp - 0x0002]          ; 0x085b
    add ax, word [bp - 0x0006]       ; 0x085e
    mov bx, ax                       ; 0x0861
    mov al, byte [bx + 0x6a9b]       ; 0x0863
    sub ah, ah                       ; 0x0867
    push ax                          ; 0x0869
    mov ax, 0x15e                    ; 0x086a
    imul word [bp - 0x0002]          ; 0x086d
    mov cx, word [bp + 0x6]          ; 0x0870
    shl cx, 1                        ; 0x0873
    add ax, cx                       ; 0x0875
    mov bx, ax                       ; 0x0877
    mov al, byte [bx + 0x6b61]       ; 0x0879
    cbw                              ; 0x087d
    mov cx, ax                       ; 0x087e
    pop ax                           ; 0x0880
    add ax, cx                       ; 0x0881
    mov word [bp - 0x000c], ax       ; 0x0883
    mov bx, word [bp - 0x0002]       ; 0x0886
    cmp byte [bx + 0x5b48], 0x18     ; 0x0889
    jne short @..api_idx_0018_TROH.l9 ; 0x088e
    cmp word [bss_9134], byte 1      ; 0x0890
    jne short @..api_idx_0018_TROH.l9 ; 0x0895
    cmp byte [bp - 0x0018], 4        ; 0x0897
    jne short @..api_idx_0018_TROH.l9 ; 0x089b
    mov ax, 3                        ; 0x089d
    push ax                          ; 0x08a0
    call random_below                ; 0x08a1
    pop cx                           ; 0x08a4
    add ax, word [bp - 0x000a]       ; 0x08a5
    dec ax                           ; 0x08a8
    mov word [bp - 0x000a], ax       ; 0x08a9
    mov ax, 2                        ; 0x08ac
    push ax                          ; 0x08af
    call random_below                ; 0x08b0
    pop cx                           ; 0x08b3
    add word [bp - 0x000c], ax       ; 0x08b4
@..api_idx_0018_TROH.l9:
    mov ax, 0xa0                     ; 0x08b7
    sub ax, word [bp - 0x000a]       ; 0x08ba
    imul word [bp + 0xa]             ; 0x08bd
    mov cx, 0x64                     ; 0x08c0
    cwd                              ; 0x08c3
    idiv cx                          ; 0x08c4
    add word [bp - 0x000a], ax       ; 0x08c6
    mov ax, word [bp - 0x0004]       ; 0x08c9
    mov cx, 2                        ; 0x08cc
    cwd                              ; 0x08cf
    idiv cx                          ; 0x08d0
    mov ax, dx                       ; 0x08d2
    test ax, ax                      ; 0x08d4
    je short @..api_idx_0018_TROH.l10 ; 0x08d6
    mov ax, 0x15e                    ; 0x08d8
    imul word [bp - 0x0002]          ; 0x08db
    mov cx, ax                       ; 0x08de
    mov ax, word [bp - 0x0004]       ; 0x08e0
    mov bx, 2                        ; 0x08e3
    cwd                              ; 0x08e6
    idiv bx                          ; 0x08e7
    mov ax, dx                       ; 0x08e9
    add cx, ax                       ; 0x08eb
    mov ax, cx                       ; 0x08ed
    mov cx, word [bp - 0x0006]       ; 0x08ef
    shl cx, 1                        ; 0x08f2
    add ax, cx                       ; 0x08f4
    mov bx, ax                       ; 0x08f6
    mov al, byte [bx + 0x6a52]       ; 0x08f8
    sub ah, ah                       ; 0x08fc
    mov cx, ax                       ; 0x08fe
    mov ax, 0xa0                     ; 0x0900
    sub ax, cx                       ; 0x0903
    shl ax, 1                        ; 0x0905
    imul word [bp + 0xa]             ; 0x0907
    mov cx, 0x64                     ; 0x090a
    cwd                              ; 0x090d
    idiv cx                          ; 0x090e
    sub word [bp - 0x000a], ax       ; 0x0910
@..api_idx_0018_TROH.l10:
    mov ax, word [bp + 0xe]          ; 0x0913
    dec ax                           ; 0x0916
    push ax                          ; 0x0917
    mov ax, 0                        ; 0x0918
    push ax                          ; 0x091b
    mov ax, word [bp - 0x000a]       ; 0x091c
    add ax, word [bp + 0x8]          ; 0x091f
    push ax                          ; 0x0922
    call clamp_between               ; 0x0923
    add sp, byte 6                   ; 0x0926
    mov word [bp - 0x000a], ax       ; 0x0929
    mov ax, 0x3d                     ; 0x092c
    sub ax, word [bp - 0x000c]       ; 0x092f
    imul word [bp + 0xa]             ; 0x0932
    mov cx, 0x64                     ; 0x0935
    cwd                              ; 0x0938
    idiv cx                          ; 0x0939
    add word [bp - 0x000c], ax       ; 0x093b
    lea ax, word [bp - 0x0018]       ; 0x093e
    push ax                          ; 0x0941
    push word [bp + 0xa]             ; 0x0942
    push word [bp - 0x0004]          ; 0x0945
    push word [bp + 0xe]             ; 0x0948
    push word [bp + 0xc]             ; 0x094b
    push word [bp - 0x000c]          ; 0x094e
    push word [bp - 0x000a]          ; 0x0951
    push word [bp - 0x0002]          ; 0x0954
    push word [bp - 0x0008]          ; 0x0957
    call api_idx_0004_SMTU           ; 0x095a
    add sp, byte 0x12                ; 0x095d
    ret                              ; 0x0960
