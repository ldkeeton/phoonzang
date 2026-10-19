; auto-generated
api_idx_002e_ILPL:
    mov ax, 0xffd2                   ; 0x390b
    call aztec_csav                  ; 0x390e
    mov ax, 0                        ; 0x3911
    push ax                          ; 0x3914
    mov ax, 0x16                     ; 0x3915
    push ax                          ; 0x3918
    call gfx_entry_12                ; 0x3919
    add sp, byte 4                   ; 0x391c
    mov ax, 0xae                     ; 0x391f
    push ax                          ; 0x3922
    mov ax, 6                        ; 0x3923
    push ax                          ; 0x3926
    call gfx_entry_13                ; 0x3927
    add sp, byte 4                   ; 0x392a
    mov ax, 0                        ; 0x392d
    push ax                          ; 0x3930
    mov ax, bss_95dc                 ; 0x3931
    push ax                          ; 0x3934
    call ds_string_loc_QRJV          ; 0x3935
    add sp, byte 4                   ; 0x3938
    mov word [bp - 0x0004], 0        ; 0x393b
    mov word [bp - 0x0006], 0        ; 0x3940
    mov word [bp - 0x0002], 0        ; 0x3945
@..api_idx_002e_ILPL.l1:
    mov ax, 0xa                      ; 0x394a
    imul word [bp - 0x0002]          ; 0x394d
    mov bx, ax                       ; 0x3950
    add bx, bp                       ; 0x3952
    mov byte [bx - 0x002e], 0        ; 0x3954
    mov ax, word [bp - 0x0002]       ; 0x3958
    cmp ax, word [bp + 0x4]          ; 0x395b
    je short @..api_idx_002e_ILPL.l4 ; 0x395e
    shl ax, 1                        ; 0x3960
    mov bx, ax                       ; 0x3962
    cmp word [bx - 0x6a10], byte 0   ; 0x3964
    jg short @..api_idx_002e_ILPL.l2 ; 0x3969
    mov ax, word [bp - 0x0002]       ; 0x396b
    cmp ax, strict word 2            ; 0x396e
    je short @..api_idx_002e_ILPL.l4 ; 0x3971
@..api_idx_002e_ILPL.l2:
    cmp word [bp - 0x0006], byte 0   ; 0x3973
    je short @..api_idx_002e_ILPL.l3 ; 0x3977
    inc word [bp - 0x0004]           ; 0x3979
@..api_idx_002e_ILPL.l3:
    mov ax, 0xa                      ; 0x397c
    imul word [bp - 0x0002]          ; 0x397f
    lea cx, word [bp - 0x002e]       ; 0x3982
    add ax, cx                       ; 0x3985
    push ax                          ; 0x3987
    push word [bx - 0x6a10]          ; 0x3988
    call ds_app_OLKR                 ; 0x398c
    add sp, byte 4                   ; 0x398f
    mov word [bp - 0x0006], 1        ; 0x3992
    jmp short @..api_idx_002e_ILPL.l6 ; 0x3997
@..api_idx_002e_ILPL.l4:
    mov ax, word [bp - 0x0002]       ; 0x3999
    cmp ax, word [bp + 0x4]          ; 0x399c
    jne short @..api_idx_002e_ILPL.l6 ; 0x399f
    cmp word [bp - 0x0006], byte 0   ; 0x39a1
    je short @..api_idx_002e_ILPL.l5 ; 0x39a5
    inc word [bp - 0x0004]           ; 0x39a7
@..api_idx_002e_ILPL.l5:
    mov cx, 0xa                      ; 0x39aa
    imul cx                          ; 0x39ad
    lea cx, word [bp - 0x002e]       ; 0x39af
    add ax, cx                       ; 0x39b2
    push ax                          ; 0x39b4
    push word [bp + 0x6]             ; 0x39b5
    call ds_app_OLKR                 ; 0x39b8
    add sp, byte 4                   ; 0x39bb
    mov word [bp - 0x0006], 1        ; 0x39be
@..api_idx_002e_ILPL.l6:
    mov ax, 0xa                      ; 0x39c3
    imul word [bp - 0x0002]          ; 0x39c6
    lea cx, word [bp - 0x002e]       ; 0x39c9
    add ax, cx                       ; 0x39cc
    push ax                          ; 0x39ce
    call aztec_strlen                ; 0x39cf
    pop cx                           ; 0x39d2
    add word [bp - 0x0004], ax       ; 0x39d3
    inc word [bp - 0x0002]           ; 0x39d6
    mov ax, word [bp - 0x0002]       ; 0x39d9
    cmp ax, strict word 4            ; 0x39dc
    jge short @..api_idx_002e_ILPL.l7 ; 0x39df
    jmp near @..api_idx_002e_ILPL.l1 ; 0x39e1
@..api_idx_002e_ILPL.l7:
    mov ax, 0xae                     ; 0x39e4
    push ax                          ; 0x39e7
    mov ax, 0x1a                     ; 0x39e8
    sub ax, word [bp - 0x0004]       ; 0x39eb
    mov cx, 6                        ; 0x39ee
    imul cx                          ; 0x39f1
    add ax, strict word 0xfffb       ; 0x39f3
    push ax                          ; 0x39f6
    call gfx_entry_13                ; 0x39f7
    add sp, byte 4                   ; 0x39fa
    mov word [bp - 0x0006], 0        ; 0x39fd
    mov word [bp - 0x0002], 0        ; 0x3a02
@..api_idx_002e_ILPL.l8:
    mov ax, 0xa                      ; 0x3a07
    imul word [bp - 0x0002]          ; 0x3a0a
    lea cx, word [bp - 0x002e]       ; 0x3a0d
    add ax, cx                       ; 0x3a10
    push ax                          ; 0x3a12
    call aztec_strlen                ; 0x3a13
    pop cx                           ; 0x3a16
    cmp ax, strict word 0            ; 0x3a17
    jle short @..api_idx_002e_ILPL.l10 ; 0x3a1a
    cmp word [bp - 0x0006], byte 0   ; 0x3a1c
    je short @..api_idx_002e_ILPL.l9 ; 0x3a20
    mov ax, 0                        ; 0x3a22
    push ax                          ; 0x3a25
    mov ax, 1                        ; 0x3a26
    push ax                          ; 0x3a29
    call gfx_entry_12                ; 0x3a2a
    add sp, byte 4                   ; 0x3a2d
    mov ax, 0                        ; 0x3a30
    push ax                          ; 0x3a33
    mov ax, 0x2f                     ; 0x3a34
    push ax                          ; 0x3a37
    call ds_loc_TJTV                 ; 0x3a38
    add sp, byte 4                   ; 0x3a3b
@..api_idx_002e_ILPL.l9:
    mov ax, 0                        ; 0x3a3e
    push ax                          ; 0x3a41
    mov ax, word [bp - 0x0002]       ; 0x3a42
    shl ax, 1                        ; 0x3a45
    mov bx, ax                       ; 0x3a47
    push word [word bx + 0x30]       ; 0x3a49
    call gfx_entry_12                ; 0x3a4d
    add sp, byte 4                   ; 0x3a50
    mov ax, 0                        ; 0x3a53
    push ax                          ; 0x3a56
    mov ax, 0xa                      ; 0x3a57
    imul word [bp - 0x0002]          ; 0x3a5a
    lea cx, word [bp - 0x002e]       ; 0x3a5d
    add ax, cx                       ; 0x3a60
    push ax                          ; 0x3a62
    call ds_string_loc_QRJV          ; 0x3a63
    add sp, byte 4                   ; 0x3a66
    mov word [bp - 0x0006], 1        ; 0x3a69
@..api_idx_002e_ILPL.l10:
    inc word [bp - 0x0002]           ; 0x3a6e
    mov ax, word [bp - 0x0002]       ; 0x3a71
    cmp ax, strict word 4            ; 0x3a74
    jl short @..api_idx_002e_ILPL.l8 ; 0x3a77
    ret                              ; 0x3a79
