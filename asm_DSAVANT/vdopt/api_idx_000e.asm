api_idx_000e:
    mov ax, 0xfff2                   ; 0x06e8
    call ds_dispatch_f40b            ; 0x06eb
    call api_idx_0002_3              ; 0x06ee
    mov word [bp - 0x000e], ax       ; 0x06f1
    cmp ax, strict word 0xffff       ; 0x06f4
    jne short @..api_idx_000e.l1     ; 0x06f7
    mov ax, 0xffff                   ; 0x06f9
    ret                              ; 0x06fc
@..api_idx_000e.l1:
    mov ax, word [bp - 0x000e]       ; 0x06fd
    shl ax, 1                        ; 0x0700
    mov si, ax                       ; 0x0702
    mov bx, word [data_0e12]         ; 0x0704
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
    call ds_dispatch_ed3a            ; 0x0726
    add sp, byte 6                   ; 0x0729
    mov word [bp - 0x0004], ax       ; 0x072c
    mov word [bp - 0x000a], 0        ; 0x072f
    mov ax, word [bp - 0x000e]       ; 0x0734
    shl ax, 1                        ; 0x0737
    mov si, ax                       ; 0x0739
    mov bx, word [data_0e12]         ; 0x073b
    mov ax, word [bx + si + 0x3c0]   ; 0x073f
    mov word [bp - 0x0002], ax       ; 0x0743
    mov ax, data_0002                ; 0x0746
    push ax                          ; 0x0749
    mov ax, word [data_82ee]         ; 0x074a
    shl ax, 1                        ; 0x074d
    push ax                          ; 0x074f
    push word [bp - 0x0002]          ; 0x0750
    call ds_dispatch_ed3a            ; 0x0753
    add sp, byte 6                   ; 0x0756
    cmp ax, strict word 2            ; 0x0759
    jne short @..api_idx_000e.l2     ; 0x075c
    cmp word [bp - 0x0004], byte 0   ; 0x075e
    jne short @..api_idx_000e.l2     ; 0x0762
    mov word [bp - 0x000a], 1        ; 0x0764
@..api_idx_000e.l2:
    mov word [bp - 0x000c], 0        ; 0x0769
    mov ax, word [bp + 0x4]          ; 0x076e
    shl ax, 1                        ; 0x0771
    push ax                          ; 0x0773
    call ds_dispatch_b7a9            ; 0x0774
    pop cx                           ; 0x0777
    push ax                          ; 0x0778
    mov ax, word [bp + 0x4]          ; 0x0779
    shl ax, 1                        ; 0x077c
    push ax                          ; 0x077e
    call ds_dispatch_b7a9            ; 0x077f
    pop cx                           ; 0x0782
    mov cx, ax                       ; 0x0783
    pop ax                           ; 0x0785
    add ax, cx                       ; 0x0786
    push ax                          ; 0x0788
    mov ax, word [bp + 0x4]          ; 0x0789
    shl ax, 1                        ; 0x078c
    push ax                          ; 0x078e
    call ds_dispatch_b7a9            ; 0x078f
    pop cx                           ; 0x0792
    mov cx, ax                       ; 0x0793
    pop ax                           ; 0x0795
    add ax, cx                       ; 0x0796
    inc ax                           ; 0x0798
    inc ax                           ; 0x0799
    inc ax                           ; 0x079a
    mov cx, data_0002                ; 0x079b
    cwd                              ; 0x079e
    idiv cx                          ; 0x079f
    mov word [bp - 0x0008], ax       ; 0x07a1
    cmp ax, word [bp - 0x0004]       ; 0x07a4
    jge short @..api_idx_000e.l3     ; 0x07a7
    mov word [bp - 0x000c], 1        ; 0x07a9
@..api_idx_000e.l3:
    cmp word [bp - 0x000a], byte 0   ; 0x07ae
    je short @..api_idx_000e.l4      ; 0x07b2
    mov word [bp - 0x000c], data_0002 ; 0x07b4
@..api_idx_000e.l4:
    cmp word [bp - 0x000c], byte 0   ; 0x07b9
    jne short @..api_idx_000e.l5     ; 0x07bd
    push word [bp - 0x000e]          ; 0x07bf
    call loc_04b7                    ; 0x07c2
    pop cx                           ; 0x07c5
@..api_idx_000e.l5:
    mov ax, word [bp - 0x000c]       ; 0x07c6
    add ax, 0x841                    ; 0x07c9
    mov word [data_90b6], ax         ; 0x07cc
    mov ax, word [bp - 0x000c]       ; 0x07cf
    mov word [data_90b8], ax         ; 0x07d2
    mov ax, 0                        ; 0x07d5
    ret                              ; 0x07d8
loc_07d9:
    mov ax, 0                        ; 0x07d9
    call ds_dispatch_f40b            ; 0x07dc
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
    call api_idx_0004                ; 0x07f3
    add sp, byte 0x0a                ; 0x07f6
    test ax, ax                      ; 0x07f9
    je short @..local.l8             ; 0x07fb
    mov ax, word [data_5b6e]         ; 0x07fd
    mov cx, data_0002                ; 0x0800
    cwd                              ; 0x0803
    idiv cx                          ; 0x0804
    mov ax, dx                       ; 0x0806
    test ax, ax                      ; 0x0808
    je short @..local.l6             ; 0x080a
    mov ax, cx                       ; 0x080c
    jmp short @..local.l7            ; 0x080e
@..local.l6:
    mov ax, 4                        ; 0x0810
    mov cx, word [data_5b6e]         ; 0x0813
    cmp cx, byte 6                   ; 0x0817
    jne short @..local.l7            ; 0x081a
    mov ax, 0                        ; 0x081c
@..local.l7:
    ret                              ; 0x081f
@..local.l8:
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
    mov ax, word [data_0e14]         ; 0x083b
    add ax, 0x90                     ; 0x083e
    push ax                          ; 0x0841
    call ds_dispatch_ecf6            ; 0x0842
    add sp, byte 6                   ; 0x0845
    ret                              ; 0x0848
loc_0849:
    mov ax, 0                        ; 0x0849
    call ds_dispatch_f40b            ; 0x084c
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
    call api_idx_0004                ; 0x0863
    add sp, byte 0x0a                ; 0x0866
    test ax, ax                      ; 0x0869
    je short @..local.l11            ; 0x086b
    mov ax, word [data_5b6e]         ; 0x086d
    mov cx, data_0002                ; 0x0870
    cwd                              ; 0x0873
    idiv cx                          ; 0x0874
    mov ax, dx                       ; 0x0876
    test ax, ax                      ; 0x0878
    je short @..local.l9             ; 0x087a
    mov ax, cx                       ; 0x087c
    jmp short @..local.l10           ; 0x087e
@..local.l9:
    mov ax, 4                        ; 0x0880
    mov cx, word [data_5b6e]         ; 0x0883
    cmp cx, byte 6                   ; 0x0887
    jne short @..local.l10           ; 0x088a
    mov ax, 0                        ; 0x088c
@..local.l10:
    ret                              ; 0x088f
@..local.l11:
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
    mov ax, word [data_0e14]         ; 0x08ab
    add ax, 0x290                    ; 0x08ae
    push ax                          ; 0x08b1
    call ds_dispatch_ecf6            ; 0x08b2
    add sp, byte 6                   ; 0x08b5
    ret                              ; 0x08b8
loc_08b9:
    mov ax, 0                        ; 0x08b9
    call ds_dispatch_f40b            ; 0x08bc
    mov ax, word [bp + 0x4]          ; 0x08bf
    jmp short @..local.l16           ; 0x08c2
@..local.l12:
    mov ax, 4                        ; 0x08c4
    push ax                          ; 0x08c7
    mov ax, word [bp + 0x6]          ; 0x08c8
    mov cx, 6                        ; 0x08cb
    shl ax, cl                       ; 0x08ce
    mov cx, word [bp + 0xa]          ; 0x08d0
    shl cx, 1                        ; 0x08d3
    shl cx, 1                        ; 0x08d5
    shl cx, 1                        ; 0x08d7
    add ax, cx                       ; 0x08d9
    add ax, word [bp + 0x8]          ; 0x08db
    push ax                          ; 0x08de
    mov ax, word [data_0e14]         ; 0x08df
    add ax, 0x90                     ; 0x08e2
    push ax                          ; 0x08e5
    call ds_dispatch_ecf6            ; 0x08e6
    add sp, byte 6                   ; 0x08e9
    ret                              ; 0x08ec
@..local.l13:
    mov ax, 4                        ; 0x08ed
    push ax                          ; 0x08f0
    mov ax, word [bp + 0x6]          ; 0x08f1
    mov cx, 6                        ; 0x08f4
    shl ax, cl                       ; 0x08f7
    mov cx, word [bp + 0xa]          ; 0x08f9
    shl cx, 1                        ; 0x08fc
    shl cx, 1                        ; 0x08fe
    shl cx, 1                        ; 0x0900
    add ax, cx                       ; 0x0902
    add ax, word [bp + 0x8]          ; 0x0904
    push ax                          ; 0x0907
    mov ax, word [data_0e14]         ; 0x0908
    add ax, 0x290                    ; 0x090b
    push ax                          ; 0x090e
    call ds_dispatch_ecf6            ; 0x090f
    add sp, byte 6                   ; 0x0912
    ret                              ; 0x0915
@..local.l14:
    push word [bp + 0x6]             ; 0x0916
    push word [bp + 0xa]             ; 0x0919
    push word [bp + 0x8]             ; 0x091c
    push word [bp + 0xe]             ; 0x091f
    push word [bp + 0xc]             ; 0x0922
    call loc_07d9                    ; 0x0925
    add sp, byte 0x0a                ; 0x0928
    ret                              ; 0x092b
@..local.l15:
    push word [bp + 0x6]             ; 0x092c
    push word [bp + 0xa]             ; 0x092f
    push word [bp + 0x8]             ; 0x0932
    push word [bp + 0xe]             ; 0x0935
    push word [bp + 0xc]             ; 0x0938
    call loc_0849                    ; 0x093b
    add sp, byte 0x0a                ; 0x093e
    ret                              ; 0x0941
@..local.l16:
    cmp ax, strict word 0            ; 0x0942
    jne short @..local.l17           ; 0x0945
    jmp near @..local.l12            ; 0x0947
@..local.l17:
    cmp ax, strict word 1            ; 0x094a
    je short @..local.l13            ; 0x094d
    cmp ax, strict word 2            ; 0x094f
    je short @..local.l14            ; 0x0952
    cmp ax, strict word 3            ; 0x0954
    je short @..local.l15            ; 0x0957
    ret                              ; 0x0959
loc_095a:
    mov ax, 0                        ; 0x095a
    call ds_dispatch_f40b            ; 0x095d
    mov ax, word [bp + 0x4]          ; 0x0960
    jmp short @..local.l22           ; 0x0963
@..local.l18:
    dec word [bp + 0xa]              ; 0x0965
    jmp short @..local.l23           ; 0x0968
@..local.l19:
    inc word [bp + 0x8]              ; 0x096a
    jmp short @..local.l23           ; 0x096d
@..local.l20:
    inc word [bp + 0xa]              ; 0x096f
    jmp short @..local.l23           ; 0x0972
@..local.l21:
    dec word [bp + 0x8]              ; 0x0974
    jmp short @..local.l23           ; 0x0977
@..local.l22:
    cmp ax, strict word 0            ; 0x0979
    je short @..local.l18            ; 0x097c
    cmp ax, strict word 1            ; 0x097e
    je short @..local.l19            ; 0x0981
    cmp ax, strict word 2            ; 0x0983
    je short @..local.l20            ; 0x0986
    cmp ax, strict word 3            ; 0x0988
    je short @..local.l21            ; 0x098b
@..local.l23:
    cmp word [bp + 0x8], byte 0      ; 0x098d
    jl short @..local.l24            ; 0x0991
    cmp word [bp + 0x8], byte 0x11   ; 0x0993
    jge short @..local.l24           ; 0x0997
    cmp word [bp + 0xa], byte 0      ; 0x0999
    jl short @..local.l24            ; 0x099d
    cmp word [bp + 0xa], byte 0x11   ; 0x099f
    jge short @..local.l24           ; 0x09a3
    mov ax, word [bp + 0x6]          ; 0x09a5
    push ax                          ; 0x09a8
    mov ax, 0x24                     ; 0x09a9
    imul word [bp + 0x8]             ; 0x09ac
    mov cx, ax                       ; 0x09af
    mov dx, word [bp + 0xa]          ; 0x09b1
    shl dx, 1                        ; 0x09b4
    add ax, dx                       ; 0x09b6
    mov bx, ax                       ; 0x09b8
    pop ax                           ; 0x09ba
    mov word [bx - 0x6f46], ax       ; 0x09bb
@..local.l24:
    ret                              ; 0x09bf
