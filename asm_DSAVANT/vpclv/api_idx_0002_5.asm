api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x3851
    call aztec_csav                  ; 0x3854
    mov ax, 0                        ; 0x3857
    push ax                          ; 0x385a
    push ax                          ; 0x385b
    push word [bss_9420]             ; 0x385c
    push word [bss_941e]             ; 0x3860
    call ds_loc_3b89                 ; 0x3864
    add sp, byte 8                   ; 0x3867
    mov word [bp - 0x0002], 0        ; 0x386a
    jmp near @..api_idx_0002_5.l2    ; 0x386f
@..api_idx_0002_5.l1:
    mov ax, 0                        ; 0x3872
    push ax                          ; 0x3875
    mov ax, word [bp + 0x6]          ; 0x3876
    shl ax, 1                        ; 0x3879
    mov bx, ax                       ; 0x387b
    push word [word bx + 0x30]       ; 0x387d
    call ds_loc_3a6a                 ; 0x3881
    add sp, byte 4                   ; 0x3884
    mov ax, 6                        ; 0x3887
    imul word [bp - 0x0002]          ; 0x388a
    add ax, strict word 0x72         ; 0x388d
    push ax                          ; 0x3890
    mov ax, 6                        ; 0x3891
    push ax                          ; 0x3894
    call ds_loc_3a50                 ; 0x3895
    add sp, byte 4                   ; 0x3898
    mov ax, 0                        ; 0x389b
    push ax                          ; 0x389e
    mov ax, 0x14                     ; 0x389f
    imul word [bp - 0x0002]          ; 0x38a2
    add ax, 0xe38                    ; 0x38a5
    push ax                          ; 0x38a8
    call ds_string_loc_3a95          ; 0x38a9
    add sp, byte 4                   ; 0x38ac
    mov ax, 6                        ; 0x38af
    imul word [bp - 0x0002]          ; 0x38b2
    add ax, strict word 0x72         ; 0x38b5
    push ax                          ; 0x38b8
    mov ax, 0x85                     ; 0x38b9
    push ax                          ; 0x38bc
    call ds_loc_3a50                 ; 0x38bd
    add sp, byte 4                   ; 0x38c0
    mov ax, 0                        ; 0x38c3
    push ax                          ; 0x38c6
    mov ax, 1                        ; 0x38c7
    push ax                          ; 0x38ca
    call ds_loc_3a6a                 ; 0x38cb
    add sp, byte 4                   ; 0x38ce
    mov ax, 0                        ; 0x38d1
    push ax                          ; 0x38d4
    mov ax, 3                        ; 0x38d5
    push ax                          ; 0x38d8
    mov ax, 0x248                    ; 0x38d9
    imul word [bp + 0x4]             ; 0x38dc
    mov cx, word [bp - 0x0002]       ; 0x38df
    shl cx, 1                        ; 0x38e2
    mov si, cx                       ; 0x38e4
    mov bx, word [bp + 0xa]          ; 0x38e6
    mov cx, word [bx + si]           ; 0x38e9
    add ax, cx                       ; 0x38eb
    mov bx, ax                       ; 0x38ed
    mov al, byte [bx + 0x5d6c]       ; 0x38ef
    sub ah, ah                       ; 0x38f3
    push ax                          ; 0x38f5
    call ds_app_052e                 ; 0x38f6
    add sp, byte 6                   ; 0x38f9
    inc word [bp - 0x0002]           ; 0x38fc
@..api_idx_0002_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x38ff
    cmp ax, word [bp + 0x8]          ; 0x3902
    jge short @..api_idx_0002_5.l3   ; 0x3905
    jmp near @..api_idx_0002_5.l1    ; 0x3907
@..api_idx_0002_5.l3:
    ret                              ; 0x390a
