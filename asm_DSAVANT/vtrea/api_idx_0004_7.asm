api_idx_0004_7:
    mov ax, 0xfffc                   ; 0x38b3
    call ds_dispatch_f40b            ; 0x38b6
    mov word [bp - 0x0002], 0        ; 0x38b9
    jmp near @..api_idx_0004_7.l8    ; 0x38be
@..api_idx_0004_7.l1:
    mov ax, word [bp + 0xc]          ; 0x38c1
    add ax, word [bp - 0x0002]       ; 0x38c4
    cmp ax, word [bp + 0xe]          ; 0x38c7
    jne short @..api_idx_0004_7.l2   ; 0x38ca
    mov ax, 1                        ; 0x38cc
    push ax                          ; 0x38cf
    mov ax, 0xe                      ; 0x38d0
    imul word [bp - 0x0002]          ; 0x38d3
    add ax, word [bp + 0x6]          ; 0x38d6
    add ax, strict word 0xd          ; 0x38d9
    push ax                          ; 0x38dc
    mov ax, 6                        ; 0x38dd
    imul word [bp + 0x8]             ; 0x38e0
    add ax, word [bp + 0x4]          ; 0x38e3
    inc ax                           ; 0x38e6
    inc ax                           ; 0x38e7
    push ax                          ; 0x38e8
    mov ax, 0xe                      ; 0x38e9
    imul word [bp - 0x0002]          ; 0x38ec
    add ax, word [bp + 0x6]          ; 0x38ef
    inc ax                           ; 0x38f2
    push ax                          ; 0x38f3
    mov ax, word [bp + 0x4]          ; 0x38f4
    add ax, strict word 0x1c         ; 0x38f7
    push ax                          ; 0x38fa
    call ds_dispatch_e901            ; 0x38fb
    add sp, byte 0x0a                ; 0x38fe
    mov word [bp - 0x0004], 0        ; 0x3901
    jmp short @..api_idx_0004_7.l3   ; 0x3906
@..api_idx_0004_7.l2:
    mov word [bp - 0x0004], 0xb4     ; 0x3908
@..api_idx_0004_7.l3:
    mov ax, 0xe                      ; 0x390d
    imul word [bp - 0x0002]          ; 0x3910
    add ax, word [bp + 0x6]          ; 0x3913
    inc ax                           ; 0x3916
    push ax                          ; 0x3917
    mov ax, word [bp + 0x4]          ; 0x3918
    inc ax                           ; 0x391b
    inc ax                           ; 0x391c
    push ax                          ; 0x391d
    call ds_dispatch_e809            ; 0x391e
    add sp, byte 4                   ; 0x3921
    mov ax, word [bp + 0xc]          ; 0x3924
    add ax, word [bp - 0x0002]       ; 0x3927
    shl ax, 1                        ; 0x392a
    mov bx, ax                       ; 0x392c
    cmp word [bx - 0x6c52], byte 0   ; 0x392e
    je short @..api_idx_0004_7.l4    ; 0x3933
    mov ax, 4                        ; 0x3935
    push ax                          ; 0x3938
    mov ax, 0x63                     ; 0x3939
    push ax                          ; 0x393c
    call ds_dispatch_e830            ; 0x393d
    add sp, byte 4                   ; 0x3940
@..api_idx_0004_7.l4:
    mov ax, 0xe                      ; 0x3943
    imul word [bp - 0x0002]          ; 0x3946
    add ax, word [bp + 0x6]          ; 0x3949
    inc ax                           ; 0x394c
    push ax                          ; 0x394d
    mov ax, word [bp + 0x4]          ; 0x394e
    add ax, strict word 0xf          ; 0x3951
    push ax                          ; 0x3954
    call ds_dispatch_e809            ; 0x3955
    add sp, byte 4                   ; 0x3958
    mov ax, 4                        ; 0x395b
    push ax                          ; 0x395e
    mov ax, word [bp + 0xc]          ; 0x395f
    add ax, word [bp - 0x0002]       ; 0x3962
    shl ax, 1                        ; 0x3965
    mov bx, ax                       ; 0x3967
    mov al, byte [bx - 0x6c2a]       ; 0x3969
    sub ah, ah                       ; 0x396d
    push ax                          ; 0x396f
    call ds_dispatch_e830            ; 0x3970
    add sp, byte 4                   ; 0x3973
    push word [bp - 0x0004]          ; 0x3976
    mov ax, 0xe                      ; 0x3979
    imul word [bp - 0x0002]          ; 0x397c
    add ax, word [bp + 0x6]          ; 0x397f
    inc ax                           ; 0x3982
    inc ax                           ; 0x3983
    push ax                          ; 0x3984
    mov ax, word [bp + 0x4]          ; 0x3985
    add ax, strict word 0x1d         ; 0x3988
    push ax                          ; 0x398b
    mov ax, word [bp + 0xc]          ; 0x398c
    add ax, word [bp - 0x0002]       ; 0x398f
    mov cx, 0x16                     ; 0x3992
    imul cx                          ; 0x3995
    add ax, 0x93fe                   ; 0x3997
    push ax                          ; 0x399a
    call api_idx_002a                ; 0x399b
    add sp, byte 8                   ; 0x399e
    mov ax, word [bp + 0xc]          ; 0x39a1
    add ax, word [bp - 0x0002]       ; 0x39a4
    shl ax, 1                        ; 0x39a7
    mov bx, ax                       ; 0x39a9
    cmp word [bx - 0x6a4a], byte 0   ; 0x39ab
    jle short @..api_idx_0004_7.l7   ; 0x39b0
    mov ax, 0xe                      ; 0x39b2
    imul word [bp - 0x0002]          ; 0x39b5
    add ax, word [bp + 0x6]          ; 0x39b8
    add ax, strict word 8            ; 0x39bb
    push ax                          ; 0x39be
    mov ax, word [bp + 0x4]          ; 0x39bf
    add ax, strict word 0x47         ; 0x39c2
    push ax                          ; 0x39c5
    call ds_dispatch_e809            ; 0x39c6
    add sp, byte 4                   ; 0x39c9
    mov ax, 0                        ; 0x39cc
    push ax                          ; 0x39cf
    mov ax, word [bp + 0xc]          ; 0x39d0
    add ax, word [bp - 0x0002]       ; 0x39d3
    cmp ax, word [bp + 0xe]          ; 0x39d6
    jne short @..api_idx_0004_7.l5   ; 0x39d9
    mov ax, word [bp - 0x0004]       ; 0x39db
    jmp short @..api_idx_0004_7.l6   ; 0x39de
@..api_idx_0004_7.l5:
    mov ax, data_0002                ; 0x39e0
@..api_idx_0004_7.l6:
    push ax                          ; 0x39e3
    call ds_dispatch_e823            ; 0x39e4
    add sp, byte 4                   ; 0x39e7
    mov ax, 0                        ; 0x39ea
    push ax                          ; 0x39ed
    mov ax, 3                        ; 0x39ee
    push ax                          ; 0x39f1
    mov ax, word [bp + 0xc]          ; 0x39f2
    add ax, word [bp - 0x0002]       ; 0x39f5
    shl ax, 1                        ; 0x39f8
    mov bx, ax                       ; 0x39fa
    push word [bx - 0x6a4a]          ; 0x39fc
    call ds_dispatch_b2e7            ; 0x3a00
    add sp, byte 6                   ; 0x3a03
@..api_idx_0004_7.l7:
    inc word [bp - 0x0002]           ; 0x3a06
@..api_idx_0004_7.l8:
    mov ax, word [bp - 0x0002]       ; 0x3a09
    cmp ax, word [bp + 0xa]          ; 0x3a0c
    jge short @..api_idx_0004_7.l9   ; 0x3a0f
    jmp near @..api_idx_0004_7.l1    ; 0x3a11
@..api_idx_0004_7.l9:
    ret                              ; 0x3a14
loc_3a15:
    mov ax, 0                        ; 0x3a15
    call ds_dispatch_f40b            ; 0x3a18
    mov ax, 6                        ; 0x3a1b
    imul word [bp + 0xa]             ; 0x3a1e
    add ax, word [bp + 0x6]          ; 0x3a21
    push ax                          ; 0x3a24
    mov ax, 6                        ; 0x3a25
    imul word [bp + 0x8]             ; 0x3a28
    add ax, word [bp + 0x4]          ; 0x3a2b
    inc ax                           ; 0x3a2e
    inc ax                           ; 0x3a2f
    push ax                          ; 0x3a30
    push word [bp + 0x6]             ; 0x3a31
    push word [bp + 0x4]             ; 0x3a34
    call ds_dispatch_bd98            ; 0x3a37
    add sp, byte 8                   ; 0x3a3a
    push word [bp + 0xe]             ; 0x3a3d
    push word [bp + 0xc]             ; 0x3a40
    push word [bp + 0x10]            ; 0x3a43
    push word [bp + 0x8]             ; 0x3a46
    push word [bp + 0x6]             ; 0x3a49
    push word [bp + 0x4]             ; 0x3a4c
    call api_idx_0004_7              ; 0x3a4f
    add sp, byte 0x0c                ; 0x3a52
    ret                              ; 0x3a55
