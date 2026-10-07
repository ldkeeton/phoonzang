api_idx_0014:
    mov ax, 0xffec                   ; 0x06da
    call ds_dispatch_f40b            ; 0x06dd
    mov ax, word [data_0e10]         ; 0x06e0
    mov word [bp - 0x0004], ax       ; 0x06e3
    mov word [bp - 0x0002], 0        ; 0x06e6
    jmp near @..api_idx_0014.l6      ; 0x06eb
@..api_idx_0014.l1:
    mov bx, word [bp - 0x0004]       ; 0x06ee
    mov al, byte [bx]                ; 0x06f1
    sub ah, ah                       ; 0x06f3
    cmp ax, word [data_830c]         ; 0x06f5
    je short @..api_idx_0014.l2      ; 0x06f9
    jmp near @..api_idx_0014.l5      ; 0x06fb
@..api_idx_0014.l2:
    cmp byte [bx + 0x1], 6           ; 0x06fe
    jne short @..api_idx_0014.l3     ; 0x0702
    mov ax, word [bx + 0x4]          ; 0x0704
    mov cx, word [bx + 0x2]          ; 0x0707
    shl cx, 1                        ; 0x070a
    mov si, cx                       ; 0x070c
    mov bx, word [data_0e12]         ; 0x070e
    mov word [bx + si + 0x3c0], ax   ; 0x0712
    jmp near @..api_idx_0014.l5      ; 0x0716
@..api_idx_0014.l3:
    mov bx, word [bp - 0x0004]       ; 0x0719
    mov ax, word [bx + 0x2]          ; 0x071c
    mov cx, 0x100                    ; 0x071f
    cwd                              ; 0x0722
    idiv cx                          ; 0x0723
    mov word [bp - 0x0010], ax       ; 0x0725
    mov ax, word [bx + 0x2]          ; 0x0728
    cwd                              ; 0x072b
    idiv cx                          ; 0x072c
    mov word [bp - 0x0012], dx       ; 0x072e
    mov ax, word [bp - 0x0010]       ; 0x0731
    mov word [bp - 0x0006], ax       ; 0x0734
    mov ax, dx                       ; 0x0737
    mov cx, 0x10                     ; 0x0739
    cwd                              ; 0x073c
    idiv cx                          ; 0x073d
    mov word [bp - 0x0008], ax       ; 0x073f
    mov word [bp - 0x000a], dx       ; 0x0742
    mov ax, word [bp - 0x0006]       ; 0x0745
    mov cx, 6                        ; 0x0748
    shl ax, cl                       ; 0x074b
    shl dx, 1                        ; 0x074d
    shl dx, 1                        ; 0x074f
    shl dx, 1                        ; 0x0751
    mov cx, dx                       ; 0x0753
    add ax, cx                       ; 0x0755
    mov cx, ax                       ; 0x0757
    mov ax, word [bp - 0x0008]       ; 0x0759
    add cx, ax                       ; 0x075c
    mov word [bp - 0x0014], cx       ; 0x075e
    mov ax, word [bx + 0x4]          ; 0x0761
    mov cx, 0x100                    ; 0x0764
    cwd                              ; 0x0767
    idiv cx                          ; 0x0768
    mov word [bp - 0x0010], ax       ; 0x076a
    mov ax, word [bx + 0x4]          ; 0x076d
    cwd                              ; 0x0770
    idiv cx                          ; 0x0771
    mov word [bp - 0x0012], dx       ; 0x0773
    mov bx, word [data_0e14]         ; 0x0776
    mov si, word [bp - 0x0006]       ; 0x077a
    mov al, byte [bx + si + 0x490]   ; 0x077d
    sub ah, ah                       ; 0x0781
    add ax, word [bp - 0x0008]       ; 0x0783
    mov word [bp - 0x000c], ax       ; 0x0786
    mov al, byte [bx + si + 0x4a0]   ; 0x0789
    sub ah, ah                       ; 0x078d
    add ax, word [bp - 0x000a]       ; 0x078f
    mov word [bp - 0x000e], ax       ; 0x0792
    mov bx, word [bp - 0x0004]       ; 0x0795
    mov al, byte [bx + 0x1]          ; 0x0798
    sub ah, ah                       ; 0x079b
    jmp near @..api_idx_0014.l4      ; 0x079d
    mov ax, word [bp - 0x0010]       ; 0x07a0
    mov cx, 0x10                     ; 0x07a3
    cwd                              ; 0x07a6
    idiv cx                          ; 0x07a7
    push ax                          ; 0x07a9
    mov ax, 4                        ; 0x07aa
    push ax                          ; 0x07ad
    push word [bp - 0x0014]          ; 0x07ae
    mov ax, word [data_0e14]         ; 0x07b1
    add ax, 0x90                     ; 0x07b4
    push ax                          ; 0x07b7
    db 0xe8, 0xe9, 0xe4 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x07bb
    mov ax, word [bp - 0x0010]       ; 0x07be
    mov cx, 0x10                     ; 0x07c1
    cwd                              ; 0x07c4
    idiv cx                          ; 0x07c5
    db 0x8b, 0xc2 ; mov ax, dx
    push ax                          ; 0x07c9
    mov ax, 4                        ; 0x07ca
    push ax                          ; 0x07cd
    push word [bp - 0x0014]          ; 0x07ce
    mov ax, word [data_0e14]         ; 0x07d1
    add ax, 0x290                    ; 0x07d4
    push ax                          ; 0x07d7
    db 0xe8, 0xc9, 0xe4 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x07db
    mov ax, word [bp - 0x000e]       ; 0x07de
    dec ax                           ; 0x07e1
    push ax                          ; 0x07e2
    push word [bp - 0x000c]          ; 0x07e3
    lea ax, word [bp - 0x0006]       ; 0x07e6
    push ax                          ; 0x07e9
    lea ax, word [bp - 0x000a]       ; 0x07ea
    push ax                          ; 0x07ed
    lea ax, word [bp - 0x0008]       ; 0x07ee
    push ax                          ; 0x07f1
    call api_idx_0004_6              ; 0x07f2
    add sp, byte 0x0a                ; 0x07f5
    test ax, ax                      ; 0x07f8
    jne short loc_0833               ; 0x07fa
    mov ax, word [bp - 0x0006]       ; 0x07fc
    mov cx, 6                        ; 0x07ff
    shl ax, cl                       ; 0x0802
    mov cx, word [bp - 0x000a]       ; 0x0804
    shl cx, 1                        ; 0x0807
    shl cx, 1                        ; 0x0809
    shl cx, 1                        ; 0x080b
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0008]       ; 0x080f
    mov word [bp - 0x0014], ax       ; 0x0812
    mov ax, word [bp - 0x0012]       ; 0x0815
    mov cx, 0x10                     ; 0x0818
    cwd                              ; 0x081b
    idiv cx                          ; 0x081c
    push ax                          ; 0x081e
    mov ax, 4                        ; 0x081f
    push ax                          ; 0x0822
    push word [bp - 0x0014]          ; 0x0823
    mov ax, word [data_0e14]         ; 0x0826
    add ax, 0x90                     ; 0x0829
    push ax                          ; 0x082c
    db 0xe8, 0x74, 0xe4 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x0830
    push word [bp - 0x000e]          ; 0x0833
    mov ax, word [bp - 0x000c]       ; 0x0836
    dec ax                           ; 0x0839
    push ax                          ; 0x083a
    lea ax, word [bp - 0x0006]       ; 0x083b
    push ax                          ; 0x083e
    lea ax, word [bp - 0x000a]       ; 0x083f
    push ax                          ; 0x0842
    lea ax, word [bp - 0x0008]       ; 0x0843
    push ax                          ; 0x0846
    call api_idx_0004_6              ; 0x0847
    add sp, byte 0x0a                ; 0x084a
    test ax, ax                      ; 0x084d
    jne short loc_088a               ; 0x084f
    mov ax, word [bp - 0x0006]       ; 0x0851
    mov cx, 6                        ; 0x0854
    shl ax, cl                       ; 0x0857
    mov cx, word [bp - 0x000a]       ; 0x0859
    shl cx, 1                        ; 0x085c
    shl cx, 1                        ; 0x085e
    shl cx, 1                        ; 0x0860
    db 0x03, 0xc1 ; add ax, cx
    add ax, word [bp - 0x0008]       ; 0x0864
    db 0x89, 0x46
loc_0869:
    in al, dx                        ; 0x0869
    mov ax, word [bp - 0x0012]       ; 0x086a
    mov cx, 0x10                     ; 0x086d
    cwd                              ; 0x0870
    idiv cx                          ; 0x0871
    mov ax, dx                       ; 0x0873
    push ax                          ; 0x0875
    mov ax, 4                        ; 0x0876
    push ax                          ; 0x0879
    push word [bp - 0x0014]          ; 0x087a
    mov ax, word [data_0e14]         ; 0x087d
    add ax, 0x290                    ; 0x0880
    push ax                          ; 0x0883
    call ds_dispatch_eca4            ; 0x0884
    add sp, byte 8                   ; 0x0887
    jmp near @..api_idx_0014.l5      ; 0x088a
    mov bx, word [bp - 0x0004]       ; 0x088d
    push word [bx + 0x4]             ; 0x0890
    mov ax, 4                        ; 0x0893
    push ax                          ; 0x0896
    push word [bp - 0x0014]          ; 0x0897
    mov ax, word [data_0e14]         ; 0x089a
    add ax, 0x90                     ; 0x089d
    push ax                          ; 0x08a0
    db 0xe8, 0x00, 0xe4 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x08a4
    jmp near @..api_idx_0014.l5      ; 0x08a7
    mov bx, word [bp - 0x0004]       ; 0x08aa
    push word [bx + 0x4]             ; 0x08ad
    mov ax, 4                        ; 0x08b0
    push ax                          ; 0x08b3
    push word [bp - 0x0014]          ; 0x08b4
    mov ax, word [data_0e14]         ; 0x08b7
    add ax, 0x290                    ; 0x08ba
    push ax                          ; 0x08bd
    db 0xe8, 0xe3, 0xe3 ; call ds_dispatch_eca4
    add sp, byte 8                   ; 0x08c1
    jmp near @..api_idx_0014.l5      ; 0x08c4
    mov ax, word [bp - 0x000e]       ; 0x08c7
    dec ax                           ; 0x08ca
    push ax                          ; 0x08cb
    push word [bp - 0x000c]          ; 0x08cc
    lea ax, word [bp - 0x0006]       ; 0x08cf
    push ax                          ; 0x08d2
    lea ax, word [bp - 0x000a]       ; 0x08d3
    push ax                          ; 0x08d6
    lea ax, word [bp - 0x0008]       ; 0x08d7
