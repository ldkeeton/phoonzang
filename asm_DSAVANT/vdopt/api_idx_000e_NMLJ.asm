; auto-generated
api_idx_000e_NMLJ:
    mov ax, 0xfff2                   ; 0x06e8
    call aztec_csav                  ; 0x06eb
    call api_idx_0002_TPQM           ; 0x06ee
    mov word [bp - 0x000e], ax       ; 0x06f1
    cmp ax, strict word 0xffff       ; 0x06f4
    jne short @..api_idx_000e_NMLJ.l1 ; 0x06f7
    mov ax, 0xffff                   ; 0x06f9
    ret                              ; 0x06fc
@..api_idx_000e_NMLJ.l1:
    mov ax, word [bp - 0x000e]       ; 0x06fd
    shl ax, 1                        ; 0x0700
    mov si, ax                       ; 0x0702
    mov bx, word [bss_0e12]          ; 0x0704
    mov ax, word [bx + si + 0x1e0]   ; 0x0708
    mov word [bp - 0x0006], ax       ; 0x070c
    mov si, word [bp - 0x000e]       ; 0x070f
    mov al, byte [bx + si + 0xa50]   ; 0x0712
    sub ah, ah                       ; 0x0716
    mov word [bp - 0x0002], ax       ; 0x0718
    mov ax, 5                        ; 0x071b
    push ax                          ; 0x071e
    mov ax, 0                        ; 0x071f
    push ax                          ; 0x0722
    push word [bp - 0x0002]          ; 0x0723
    call ds_dos_con_loc_QJHU         ; 0x0726
    add sp, byte 6                   ; 0x0729
    mov word [bp - 0x0004], ax       ; 0x072c
    mov word [bp - 0x000a], 0        ; 0x072f
    mov ax, word [bp - 0x000e]       ; 0x0734
    shl ax, 1                        ; 0x0737
    mov si, ax                       ; 0x0739
    mov bx, word [bss_0e12]          ; 0x073b
    mov ax, word [bx + si + 0x3c0]   ; 0x073f
    mov word [bp - 0x0002], ax       ; 0x0743
    mov ax, 2                        ; 0x0746
    push ax                          ; 0x0749
    mov ax, word [bss_82ee]          ; 0x074a
    shl ax, 1                        ; 0x074d
    push ax                          ; 0x074f
    push word [bp - 0x0002]          ; 0x0750
    call ds_dos_con_loc_QJHU         ; 0x0753
    add sp, byte 6                   ; 0x0756
    cmp ax, strict word 2            ; 0x0759
    jne short @..api_idx_000e_NMLJ.l2 ; 0x075c
    cmp word [bp - 0x0004], byte 0   ; 0x075e
    jne short @..api_idx_000e_NMLJ.l2 ; 0x0762
    mov word [bp - 0x000a], 1        ; 0x0764
@..api_idx_000e_NMLJ.l2:
    mov word [bp - 0x000c], 0        ; 0x0769
    mov ax, word [bp + 0x4]          ; 0x076e
    shl ax, 1                        ; 0x0771
    push ax                          ; 0x0773
    call ds_app_PUNN                 ; 0x0774
    pop cx                           ; 0x0777
    push ax                          ; 0x0778
    mov ax, word [bp + 0x4]          ; 0x0779
    shl ax, 1                        ; 0x077c
    push ax                          ; 0x077e
    call ds_app_PUNN                 ; 0x077f
    pop cx                           ; 0x0782
    mov cx, ax                       ; 0x0783
    pop ax                           ; 0x0785
    add ax, cx                       ; 0x0786
    push ax                          ; 0x0788
    mov ax, word [bp + 0x4]          ; 0x0789
    shl ax, 1                        ; 0x078c
    push ax                          ; 0x078e
    call ds_app_PUNN                 ; 0x078f
    pop cx                           ; 0x0792
    mov cx, ax                       ; 0x0793
    pop ax                           ; 0x0795
    add ax, cx                       ; 0x0796
    inc ax                           ; 0x0798
    inc ax                           ; 0x0799
    inc ax                           ; 0x079a
    mov cx, 2                        ; 0x079b
    cwd                              ; 0x079e
    idiv cx                          ; 0x079f
    mov word [bp - 0x0008], ax       ; 0x07a1
    cmp ax, word [bp - 0x0004]       ; 0x07a4
    jge short @..api_idx_000e_NMLJ.l3 ; 0x07a7
    mov word [bp - 0x000c], 1        ; 0x07a9
@..api_idx_000e_NMLJ.l3:
    cmp word [bp - 0x000a], byte 0   ; 0x07ae
    je short @..api_idx_000e_NMLJ.l4 ; 0x07b2
    mov word [bp - 0x000c], 2        ; 0x07b4
@..api_idx_000e_NMLJ.l4:
    cmp word [bp - 0x000c], byte 0   ; 0x07b9
    jne short @..api_idx_000e_NMLJ.l5 ; 0x07bd
    push word [bp - 0x000e]          ; 0x07bf
    call loc_HHMH                    ; 0x07c2
    pop cx                           ; 0x07c5
@..api_idx_000e_NMLJ.l5:
    mov ax, word [bp - 0x000c]       ; 0x07c6
    add ax, 0x841                    ; 0x07c9
    mov word [bss_90b6], ax          ; 0x07cc
    mov ax, word [bp - 0x000c]       ; 0x07cf
    mov word [bss_90b8], ax          ; 0x07d2
    mov ax, 0                        ; 0x07d5
    ret                              ; 0x07d8
loc_UOPP:
    mov ax, 0                        ; 0x07d9
    call aztec_csav                  ; 0x07dc
    mov ax, word [bp + 0x6]          ; 0x07df
    dec ax                           ; 0x07e2
    push ax                          ; 0x07e3
    push word [bp + 0x4]             ; 0x07e4
    lea ax, word [bp + 0xc]          ; 0x07e7
    push ax                          ; 0x07ea
    lea ax, word [bp + 0xa]          ; 0x07eb
    push ax                          ; 0x07ee
    lea ax, word [bp + 0x8]          ; 0x07ef
    push ax                          ; 0x07f2
    call api_idx_0004_QVPP           ; 0x07f3
    add sp, byte 0x0a                ; 0x07f6
    test ax, ax                      ; 0x07f9
    je short @..loc_UOPP.l3          ; 0x07fb
    mov ax, word [bss_5b6e]          ; 0x07fd
    mov cx, 2                        ; 0x0800
    cwd                              ; 0x0803
    idiv cx                          ; 0x0804
    mov ax, dx                       ; 0x0806
    test ax, ax                      ; 0x0808
    je short @..loc_UOPP.l1          ; 0x080a
    mov ax, cx                       ; 0x080c
    jmp short @..loc_UOPP.l2         ; 0x080e
@..loc_UOPP.l1:
    mov ax, 4                        ; 0x0810
    mov cx, word [bss_5b6e]          ; 0x0813
    cmp cx, byte 6                   ; 0x0817
    jne short @..loc_UOPP.l2         ; 0x081a
    mov ax, 0                        ; 0x081c
@..loc_UOPP.l2:
    ret                              ; 0x081f
@..loc_UOPP.l3:
    mov ax, 4                        ; 0x0820
    push ax                          ; 0x0823
    mov ax, word [bp + 0xc]          ; 0x0824
    mov cx, 6                        ; 0x0827
    shl ax, cl                       ; 0x082a
    mov cx, word [bp + 0xa]          ; 0x082c
    shl cx, 1                        ; 0x082f
    shl cx, 1                        ; 0x0831
    shl cx, 1                        ; 0x0833
    add ax, cx                       ; 0x0835
    add ax, word [bp + 0x8]          ; 0x0837
    push ax                          ; 0x083a
    mov ax, word [bss_0e14]          ; 0x083b
    add ax, 0x90                     ; 0x083e
    push ax                          ; 0x0841
    call ds_leaf_loc_NPSL            ; 0x0842
    add sp, byte 6                   ; 0x0845
    ret                              ; 0x0848
loc_KHGO:
    mov ax, 0                        ; 0x0849
    call aztec_csav                  ; 0x084c
    push word [bp + 0x6]             ; 0x084f
    mov ax, word [bp + 0x4]          ; 0x0852
    dec ax                           ; 0x0855
    push ax                          ; 0x0856
    lea ax, word [bp + 0xc]          ; 0x0857
    push ax                          ; 0x085a
    lea ax, word [bp + 0xa]          ; 0x085b
    push ax                          ; 0x085e
    lea ax, word [bp + 0x8]          ; 0x085f
    push ax                          ; 0x0862
    call api_idx_0004_QVPP           ; 0x0863
    add sp, byte 0x0a                ; 0x0866
    test ax, ax                      ; 0x0869
    je short @..loc_KHGO.l3          ; 0x086b
    mov ax, word [bss_5b6e]          ; 0x086d
    mov cx, 2                        ; 0x0870
    cwd                              ; 0x0873
    idiv cx                          ; 0x0874
    mov ax, dx                       ; 0x0876
    test ax, ax                      ; 0x0878
    je short @..loc_KHGO.l1          ; 0x087a
    mov ax, cx                       ; 0x087c
    jmp short @..loc_KHGO.l2         ; 0x087e
@..loc_KHGO.l1:
    mov ax, 4                        ; 0x0880
    mov cx, word [bss_5b6e]          ; 0x0883
    cmp cx, byte 6                   ; 0x0887
    jne short @..loc_KHGO.l2         ; 0x088a
    mov ax, 0                        ; 0x088c
@..loc_KHGO.l2:
    ret                              ; 0x088f
@..loc_KHGO.l3:
    mov ax, 4                        ; 0x0890
    push ax                          ; 0x0893
    mov ax, word [bp + 0xc]          ; 0x0894
    mov cx, 6                        ; 0x0897
    shl ax, cl                       ; 0x089a
    mov cx, word [bp + 0xa]          ; 0x089c
    shl cx, 1                        ; 0x089f
    shl cx, 1                        ; 0x08a1
    shl cx, 1                        ; 0x08a3
    add ax, cx                       ; 0x08a5
    add ax, word [bp + 0x8]          ; 0x08a7
    push ax                          ; 0x08aa
    mov ax, word [bss_0e14]          ; 0x08ab
    add ax, 0x290                    ; 0x08ae
    push ax                          ; 0x08b1
    call ds_leaf_loc_NPSL            ; 0x08b2
    add sp, byte 6                   ; 0x08b5
    ret                              ; 0x08b8
