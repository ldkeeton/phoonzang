api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x36bb
    call ds_aztec_csav               ; 0x36be
    mov ax, 0                        ; 0x36c1
    push ax                          ; 0x36c4
    call api_idx_0008_2              ; 0x36c5
    pop cx                           ; 0x36c8
    mov word [bp - 0x0002], ax       ; 0x36c9
    cmp ax, strict word 0xffff       ; 0x36cc
    jne short @..api_idx_0004_5.l4   ; 0x36cf
    cmp word [bss_5910], byte 0x7f   ; 0x36d1
    jl short @..api_idx_0004_5.l3    ; 0x36d6
    mov ax, 1                        ; 0x36d8
    push ax                          ; 0x36db
    call api_idx_0008_2              ; 0x36dc
    pop cx                           ; 0x36df
    mov word [bp - 0x0002], ax       ; 0x36e0
    cmp ax, strict word 0xffff       ; 0x36e3
    jne short @..api_idx_0004_5.l2   ; 0x36e6
@..api_idx_0004_5.l1:
    mov ax, 0                        ; 0x36e8
    push ax                          ; 0x36eb
    call ds_app_0a27                 ; 0x36ec
    pop cx                           ; 0x36ef
    jmp short @..api_idx_0004_5.l1   ; 0x36f0
@..api_idx_0004_5.l2:
    jmp short @..api_idx_0004_5.l4   ; 0x36f2
@..api_idx_0004_5.l3:
    mov ax, word [bss_5910]          ; 0x36f4
    mov word [bp - 0x0002], ax       ; 0x36f7
    inc word [bss_5910]              ; 0x36fa
@..api_idx_0004_5.l4:
    mov cx, word [bp - 0x0002]       ; 0x36fe
    shl cx, 1                        ; 0x3701
    shl cx, 1                        ; 0x3703
    shl cx, 1                        ; 0x3705
    mov ax, word [bss_0e0e]          ; 0x3707
    add ax, cx                       ; 0x370a
    mov word [bp - 0x0004], ax       ; 0x370c
    mov al, byte [bss_830c]          ; 0x370f
    mov bx, word [bp - 0x0004]       ; 0x3712
    mov byte [bx], al                ; 0x3715
    mov bx, word [bp + 0x4]          ; 0x3717
    mov al, byte [bx + 0x7]          ; 0x371a
    mov bx, word [bp - 0x0004]       ; 0x371d
    mov byte [bx + 0x1], al          ; 0x3720
    mov ax, word [bss_8f3e]          ; 0x3723
    xchg al, ah                      ; 0x3726
    sub al, al                       ; 0x3728
    mov dx, word [bss_8f42]          ; 0x372a
    mov cx, 4                        ; 0x372e
    shl dx, cl                       ; 0x3731
    mov cx, dx                       ; 0x3733
    add ax, cx                       ; 0x3735
    add ax, word [bss_8f40]          ; 0x3737
    mov bx, word [bp - 0x0004]       ; 0x373b
    mov word [bx + 0x2], ax          ; 0x373e
    mov bx, word [bp + 0x4]          ; 0x3741
    mov ax, word [bx]                ; 0x3744
    mov bx, word [bp - 0x0004]       ; 0x3746
    mov word [bx + 0x4], ax          ; 0x3749
    mov bx, word [bp + 0x4]          ; 0x374c
    mov al, byte [bx + 0x5]          ; 0x374f
    mov bx, word [bp - 0x0004]       ; 0x3752
    mov byte [bx + 0x7], al          ; 0x3755
    mov bx, word [bp + 0x4]          ; 0x3758
    mov al, byte [bx + 0x6]          ; 0x375b
    mov bx, word [bp - 0x0004]       ; 0x375e
    mov byte [bx + 0x6], al          ; 0x3761
    mov ax, 1                        ; 0x3764
    push ax                          ; 0x3767
    mov ax, word [bss_8f3e]          ; 0x3768
    mov cx, 6                        ; 0x376b
    shl ax, cl                       ; 0x376e
    mov cx, word [bss_8f40]          ; 0x3770
    shl cx, 1                        ; 0x3774
    shl cx, 1                        ; 0x3776
    shl cx, 1                        ; 0x3778
    add ax, cx                       ; 0x377a
    add ax, word [bss_8f42]          ; 0x377c
    push ax                          ; 0x3780
    mov ax, 0x8bfe                   ; 0x3781
    push ax                          ; 0x3784
    call ds_leaf_loc_3e88            ; 0x3785
    add sp, byte 6                   ; 0x3788
    ret                              ; 0x378b
