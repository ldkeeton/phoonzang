; auto-generated
api_idx_0008_HUTJ:
    mov ax, 0xfff8                   ; 0x3900
    call aztec_csav                  ; 0x3903
    mov ax, word [bp + 0x6]          ; 0x3906
    jmp near @..api_idx_0008_HUTJ.l9 ; 0x3909
@..api_idx_0008_HUTJ.l1:
    push word [bp + 0x8]             ; 0x390c
    mov ax, 1                        ; 0x390f
    push ax                          ; 0x3912
    mov ax, 0x248                    ; 0x3913
    imul word [bp + 0x4]             ; 0x3916
    mov bx, ax                       ; 0x3919
    mov ax, word [bx + 0x5c18]       ; 0x391b
    push ax                          ; 0x391f
    mov al, byte [bss_91c5]          ; 0x3920
    sub ah, ah                       ; 0x3923
    mov cx, ax                       ; 0x3925
    pop ax                           ; 0x3927
    sub ax, cx                       ; 0x3928
    mov cx, 2                        ; 0x392a
    cwd                              ; 0x392d
    idiv cx                          ; 0x392e
    add ax, word [bp + 0x8]          ; 0x3930
    push ax                          ; 0x3933
    call clamp_between               ; 0x3934
    add sp, byte 6                   ; 0x3937
    mov word [bp + 0x8], ax          ; 0x393a
    mov al, byte [bss_91cb]          ; 0x393d
    sub ah, ah                       ; 0x3940
    test ax, 4                       ; 0x3942
    jne short @..api_idx_0008_HUTJ.l2 ; 0x3945
    mov ax, word [bp + 0x8]          ; 0x3947
    inc ax                           ; 0x394a
    push ax                          ; 0x394b
    call ds_app_PUNN                 ; 0x394c
    pop cx                           ; 0x394f
    test ax, ax                      ; 0x3950
    jne short @..api_idx_0008_HUTJ.l3 ; 0x3952
@..api_idx_0008_HUTJ.l2:
    mov ax, 0x41                     ; 0x3954
    push ax                          ; 0x3957
    mov ax, 0                        ; 0x3958
    push ax                          ; 0x395b
    mov ax, 1                        ; 0x395c
    push ax                          ; 0x395f
    mov ax, 0x608                    ; 0x3960
    push ax                          ; 0x3963
    call api_idx_0050_TJLH           ; 0x3964
    add sp, byte 8                   ; 0x3967
    jmp short @..api_idx_0008_HUTJ.l4 ; 0x396a
@..api_idx_0008_HUTJ.l3:
    mov ax, 0x41                     ; 0x396c
    push ax                          ; 0x396f
    mov ax, 0                        ; 0x3970
    push ax                          ; 0x3973
    mov ax, 1                        ; 0x3974
    push ax                          ; 0x3977
    mov ax, 0x607                    ; 0x3978
    push ax                          ; 0x397b
    call api_idx_0050_TJLH           ; 0x397c
    add sp, byte 8                   ; 0x397f
    mov ax, word [bp + 0x8]          ; 0x3982
    shl ax, 1                        ; 0x3985
    push ax                          ; 0x3987
    mov ax, 6                        ; 0x3988
    push ax                          ; 0x398b
    mov ax, word [bp + 0x8]          ; 0x398c
    shl ax, 1                        ; 0x398f
    push ax                          ; 0x3991
    call ds_app_HGSV                 ; 0x3992
    add sp, byte 6                   ; 0x3995
    mov cx, ax                       ; 0x3998
    sub sp, byte 4                   ; 0x399a
    mov ax, sp                       ; 0x399d
    mov dx, ss                       ; 0x399f
    mov es, dx                       ; 0x39a1
    mov si, cx                       ; 0x39a3
    mov di, ax                       ; 0x39a5
    movsw                            ; 0x39a7
    movsw                            ; 0x39a8
    call ds_app_QSQR                 ; 0x39a9
    add sp, byte 4                   ; 0x39ac
    add word [bss_964e], ax          ; 0x39af
@..api_idx_0008_HUTJ.l4:
    jmp near @..api_idx_0008_HUTJ.l11 ; 0x39b3
@..api_idx_0008_HUTJ.l5:
    mov al, byte [bss_91cb]          ; 0x39b6
    sub ah, ah                       ; 0x39b9
    test ax, 8                       ; 0x39bb
    jne short @..api_idx_0008_HUTJ.l6 ; 0x39be
    cmp word [bss_91a8], byte 0      ; 0x39c0
    je short @..api_idx_0008_HUTJ.l6 ; 0x39c5
    mov ax, 0x248                    ; 0x39c7
    imul word [bp + 0x4]             ; 0x39ca
    mov bx, ax                       ; 0x39cd
    mov ax, word [bx + 0x5c18]       ; 0x39cf
    push ax                          ; 0x39d3
    mov ax, 3                        ; 0x39d4
    imul word [bp + 0x8]             ; 0x39d7
    mov cx, ax                       ; 0x39da
    pop ax                           ; 0x39dc
    add ax, cx                       ; 0x39dd
    push ax                          ; 0x39df
    call ds_app_PUNN                 ; 0x39e0
    pop cx                           ; 0x39e3
    add ax, word [bp + 0x8]          ; 0x39e4
    push ax                          ; 0x39e7
    mov al, byte [bss_91c5]          ; 0x39e8
    sub ah, ah                       ; 0x39eb
    mov cx, ax                       ; 0x39ed
    pop ax                           ; 0x39ef
    cmp ax, cx                       ; 0x39f0
    jge short @..api_idx_0008_HUTJ.l7 ; 0x39f2
@..api_idx_0008_HUTJ.l6:
    mov ax, bss_95fa                 ; 0x39f4
    push ax                          ; 0x39f7
    mov ax, 0x609                    ; 0x39f8
    push ax                          ; 0x39fb
    call ds_app_mem_TIMR             ; 0x39fc
    add sp, byte 4                   ; 0x39ff
    mov ax, 0x41                     ; 0x3a02
    push ax                          ; 0x3a05
    mov ax, 0                        ; 0x3a06
    push ax                          ; 0x3a09
    mov ax, 1                        ; 0x3a0a
    push ax                          ; 0x3a0d
    mov ax, bss_95fa                 ; 0x3a0e
    push ax                          ; 0x3a11
    call loc_MLKO                    ; 0x3a12
    add sp, byte 8                   ; 0x3a15
    mov ax, 0                        ; 0x3a18
    push ax                          ; 0x3a1b
    mov ax, 0x48                     ; 0x3a1c
    push ax                          ; 0x3a1f
    call api_idx_0004_GRRG           ; 0x3a20
    add sp, byte 4                   ; 0x3a23
    ret                              ; 0x3a26
@..api_idx_0008_HUTJ.l7:
    mov ax, 2                        ; 0x3a27
    push ax                          ; 0x3a2a
    call ds_app_PUNN                 ; 0x3a2b
    pop cx                           ; 0x3a2e
    test ax, ax                      ; 0x3a2f
    je short @..api_idx_0008_HUTJ.l8 ; 0x3a31
    mov ax, 1                        ; 0x3a33
    push ax                          ; 0x3a36
    push ax                          ; 0x3a37
    mov ax, 0xffff                   ; 0x3a38
    push ax                          ; 0x3a3b
    call api_idx_0038_POGI           ; 0x3a3c
    add sp, byte 6                   ; 0x3a3f
    test ax, ax                      ; 0x3a42
    jne short @..api_idx_0008_HUTJ.l8 ; 0x3a44
    ret                              ; 0x3a46
@..api_idx_0008_HUTJ.l8:
    mov ax, 1                        ; 0x3a47
    push ax                          ; 0x3a4a
    mov ax, bss_95a8                 ; 0x3a4b
    push ax                          ; 0x3a4e
    call api_idx_0084_VMPP           ; 0x3a4f
    add sp, byte 4                   ; 0x3a52
    mov ax, bss_95fa                 ; 0x3a55
    push ax                          ; 0x3a58
    mov ax, 0x60a                    ; 0x3a59
    push ax                          ; 0x3a5c
    call ds_app_mem_TIMR             ; 0x3a5d
    add sp, byte 4                   ; 0x3a60
    mov ax, 0x5e                     ; 0x3a63
    push ax                          ; 0x3a66
    mov ax, 0x95a8                   ; 0x3a67
    push ax                          ; 0x3a6a
    mov ax, bss_95fa                 ; 0x3a6b
    push ax                          ; 0x3a6e
    call ds_app_string_HHIL          ; 0x3a6f
    add sp, byte 6                   ; 0x3a72
    mov ax, 1                        ; 0x3a75
    push ax                          ; 0x3a78
    mov ax, bss_95fa                 ; 0x3a79
    push ax                          ; 0x3a7c
    call loc_LRGG                    ; 0x3a7d
    add sp, byte 4                   ; 0x3a80
    jmp short @..api_idx_0008_HUTJ.l11 ; 0x3a83
@..api_idx_0008_HUTJ.l9:
    cmp ax, strict word 0x3c         ; 0x3a85
    jne short @..api_idx_0008_HUTJ.l10 ; 0x3a88
    jmp near @..api_idx_0008_HUTJ.l1 ; 0x3a8a
@..api_idx_0008_HUTJ.l10:
    cmp ax, strict word 0x44         ; 0x3a8d
    jne short @..api_idx_0008_HUTJ.l11 ; 0x3a90
    jmp near @..api_idx_0008_HUTJ.l5 ; 0x3a92
@..api_idx_0008_HUTJ.l11:
    ret                              ; 0x3a95
