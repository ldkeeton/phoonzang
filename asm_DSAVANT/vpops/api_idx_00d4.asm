api_idx_00d4:
    mov ax, 0xff2c                   ; 0x3710
    call ds_dispatch_f40b            ; 0x3713
    lea ax, word [bp - 0x00d4]       ; 0x3716
    push ax                          ; 0x371a
    mov ax, 0xdaf                    ; 0x371b
    push ax                          ; 0x371e
    call ds_dispatch_b53b            ; 0x371f
    add sp, byte 4                   ; 0x3722
    mov word [bp - 0x0006], 0        ; 0x3725
    jmp near @..api_idx_00d4.l11     ; 0x372a
@..api_idx_00d4.l1:
    mov ax, 0x2c                     ; 0x372d
    imul word [bp - 0x0006]          ; 0x3730
    mov cx, ax                       ; 0x3733
    mov ax, word [data_8482]         ; 0x3735
    add ax, cx                       ; 0x3738
    mov word [bp - 0x00aa], ax       ; 0x373a
    mov ax, 0xa                      ; 0x373e
    push ax                          ; 0x3741
    call ds_dispatch_b7a9            ; 0x3742
    pop cx                           ; 0x3745
    push ax                          ; 0x3746
    mov ax, 0x248                    ; 0x3747
    imul word [bp - 0x0006]          ; 0x374a
    mov bx, ax                       ; 0x374d
    mov al, byte [bx + 0x5e39]       ; 0x374f
    sub ah, ah                       ; 0x3753
    mov cx, ax                       ; 0x3755
    pop ax                           ; 0x3757
    add ax, cx                       ; 0x3758
    push ax                          ; 0x375a
    mov ax, 0x2c                     ; 0x375b
    imul word [bp - 0x0006]          ; 0x375e
    mov si, ax                       ; 0x3761
    mov bx, word [data_8482]         ; 0x3763
    mov al, byte [bx + si + 0x29]    ; 0x3767
    cbw                              ; 0x376a
    mov cx, ax                       ; 0x376b
    pop ax                           ; 0x376d
    add ax, cx                       ; 0x376e
    mov word [bp - 0x00a4], ax       ; 0x3770
    cmp ax, strict word 1            ; 0x3774
    jge short @..api_idx_00d4.l2     ; 0x3777
    mov word [bp - 0x00a4], 1        ; 0x3779
@..api_idx_00d4.l2:
    cmp word [bp - 0x00a4], byte 0x64 ; 0x377f
    jle short @..api_idx_00d4.l3     ; 0x3784
    mov word [bp - 0x00a4], 0x64     ; 0x3786
@..api_idx_00d4.l3:
    mov ax, 0x248                    ; 0x378c
    imul word [bp - 0x0006]          ; 0x378f
    mov bx, ax                       ; 0x3792
    mov al, byte [bx + 0x5e38]       ; 0x3794
    sub ah, ah                       ; 0x3798
    mov cx, ax                       ; 0x379a
    mov ax, word [bp - 0x00a4]       ; 0x379c
    cwd                              ; 0x37a0
    idiv cx                          ; 0x37a1
    mov word [bp - 0x00a6], ax       ; 0x37a3
    mov bx, word [bp - 0x00aa]       ; 0x37a7
    cmp byte [bx + 0x24], 0          ; 0x37ab
    jbe short @..api_idx_00d4.l4     ; 0x37af
    mov ax, word [bp - 0x00a4]       ; 0x37b1
    mov cx, data_0002                ; 0x37b5
    cwd                              ; 0x37b8
    idiv cx                          ; 0x37b9
    push ax                          ; 0x37bb
    call ds_dispatch_b7a9            ; 0x37bc
    pop cx                           ; 0x37bf
    push ax                          ; 0x37c0
    mov ax, 0x14                     ; 0x37c1
    push ax                          ; 0x37c4
    call ds_dispatch_b7a9            ; 0x37c5
    pop cx                           ; 0x37c8
    mov cx, ax                       ; 0x37c9
    pop ax                           ; 0x37cb
    add ax, cx                       ; 0x37cc
    push ax                          ; 0x37ce
    mov ax, word [bp - 0x00a4]       ; 0x37cf
    mov cx, data_0002                ; 0x37d3
    cwd                              ; 0x37d6
    idiv cx                          ; 0x37d7
    mov cx, ax                       ; 0x37d9
    pop ax                           ; 0x37db
    add ax, cx                       ; 0x37dc
    mov bx, word [bp - 0x00aa]       ; 0x37de
    mov byte [bx + 0x25], al         ; 0x37e2
@..api_idx_00d4.l4:
    mov bx, word [bp - 0x00aa]       ; 0x37e5
    mov byte [bx + 0x21], 0          ; 0x37e9
    mov bx, word [bp - 0x00aa]       ; 0x37ed
    mov byte [bx + 0x1c], 0          ; 0x37f1
    mov bx, word [bp - 0x00aa]       ; 0x37f5
    mov byte [bx + 0x1d], 1          ; 0x37f9
    mov ax, 0x248                    ; 0x37fd
    imul word [bp - 0x0006]          ; 0x3800
    mov bx, ax                       ; 0x3803
    mov al, byte [bx + 0x5e38]       ; 0x3805
    sub ah, ah                       ; 0x3809
    push ax                          ; 0x380b
    mov ax, 0x2c                     ; 0x380c
    imul word [bp - 0x0006]          ; 0x380f
    mov si, ax                       ; 0x3812
    mov bx, word [data_8482]         ; 0x3814
    mov al, byte [bx + si + 0x29]    ; 0x3818
    cbw                              ; 0x381b
    mov cx, 0xa                      ; 0x381c
    cwd                              ; 0x381f
    idiv cx                          ; 0x3820
    mov cx, ax                       ; 0x3822
    pop ax                           ; 0x3824
    add ax, cx                       ; 0x3825
    mov word [bp - 0x00a8], ax       ; 0x3827
    cmp ax, strict word 1            ; 0x382b
    jge short @..api_idx_00d4.l5     ; 0x382e
    mov word [bp - 0x00a8], 1        ; 0x3830
@..api_idx_00d4.l5:
    cmp word [bp - 0x00a8], byte 4   ; 0x3836
    jle short @..api_idx_00d4.l6     ; 0x383b
    mov word [bp - 0x00a8], 4        ; 0x383d
@..api_idx_00d4.l6:
    mov word [bp - 0x00a2], 0        ; 0x3843
@..api_idx_00d4.l7:
    mov ax, word [bp - 0x00a2]       ; 0x3849
    cmp ax, word [bp - 0x00a8]       ; 0x384d
    jge short @..api_idx_00d4.l8     ; 0x3851
    mov ax, 0x248                    ; 0x3853
    imul word [bp - 0x0006]          ; 0x3856
    mov bx, ax                       ; 0x3859
    cmp byte [bx + 0x5e2f], data_0002 ; 0x385b
    jae short @..api_idx_00d4.l8     ; 0x3860
    cmp byte [bx + 0x5d5d], 0        ; 0x3862
    ja short @..api_idx_00d4.l8      ; 0x3867
    cmp byte [bx + 0x5d5c], 0        ; 0x3869
    jbe short @..api_idx_00d4.l9     ; 0x386e
@..api_idx_00d4.l8:
    mov bx, word [bp - 0x00aa]       ; 0x3870
    mov si, word [bp - 0x00a2]       ; 0x3874
    mov byte [bx + si + 0x18], 0     ; 0x3878
    jmp short @..api_idx_00d4.l10    ; 0x387c
@..api_idx_00d4.l9:
    mov al, byte [bp - 0x00a4]       ; 0x387e
    mov bx, word [bp - 0x00aa]       ; 0x3882
    mov si, word [bp - 0x00a2]       ; 0x3886
    mov byte [bx + si + 0x18], al    ; 0x388a
    mov ax, word [bp - 0x00a6]       ; 0x388d
    sub word [bp - 0x00a4], ax       ; 0x3891
@..api_idx_00d4.l10:
    inc word [bp - 0x00a2]           ; 0x3895
    mov ax, word [bp - 0x00a2]       ; 0x3899
    cmp ax, strict word 4            ; 0x389d
    jl short @..api_idx_00d4.l7      ; 0x38a0
    inc word [bp - 0x0006]           ; 0x38a2
@..api_idx_00d4.l11:
    mov ax, word [bp - 0x0006]       ; 0x38a5
    cmp ax, word [data_69c8]         ; 0x38a8
    jge short @..api_idx_00d4.l12    ; 0x38ac
    jmp near @..api_idx_00d4.l1      ; 0x38ae
@..api_idx_00d4.l12:
    mov ax, 0                        ; 0x38b1
    push ax                          ; 0x38b4
    mov ax, 0x2d                     ; 0x38b5
    push ax                          ; 0x38b8
    mov ax, 0x90d8                   ; 0x38b9
    push ax                          ; 0x38bc
    call ds_dispatch_f306            ; 0x38bd
    add sp, byte 6                   ; 0x38c0
    mov word [bp - 0x00b4], 0        ; 0x38c3
    call ds_dispatch_ec17            ; 0x38c9
    mov word [bp - 0x0006], 0        ; 0x38cc
@..api_idx_00d4.l13:
    mov ax, word [bp - 0x0006]       ; 0x38d1
    cmp ax, word [data_69c8]         ; 0x38d4
    jl short @..api_idx_00d4.l14     ; 0x38d8
    jmp near @..api_idx_00d4.l73     ; 0x38da
@..api_idx_00d4.l14:
    push ax                          ; 0x38dd
    call ds_dispatch_ca85            ; 0x38de
    pop cx                           ; 0x38e1
    test ax, ax                      ; 0x38e2
    jne short @..api_idx_00d4.l15    ; 0x38e4
    jmp near @..api_idx_00d4.l59     ; 0x38e6
@..api_idx_00d4.l15:
    mov ax, word [bp - 0x0006]       ; 0x38e9
    mov cx, word [bp - 0x00b4]       ; 0x38ec
    shl cx, 1                        ; 0x38f0
    mov bx, cx                       ; 0x38f2
    add bx, bp                       ; 0x38f4
    mov word [bx - 0x00c0], ax       ; 0x38f6
    inc word [bp - 0x00b4]           ; 0x38fa
    mov cx, 0x2c                     ; 0x38fe
    imul cx                          ; 0x3901
    mov cx, ax                       ; 0x3903
    mov ax, word [data_8482]         ; 0x3905
    add ax, cx                       ; 0x3908
    mov word [bp - 0x00aa], ax       ; 0x390a
