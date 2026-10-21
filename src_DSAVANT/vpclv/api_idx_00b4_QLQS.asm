; auto-generated
api_idx_00b4_QLQS:
    mov ax, 0xff4c                   ; 0x4cc5
    call aztec_csav                  ; 0x4cc8
    mov word [bp - 0x0002], 0        ; 0x4ccb
@..api_idx_00b4_QLQS.l1:
    mov ax, word [bp - 0x0002]       ; 0x4cd0
    shl ax, 1                        ; 0x4cd3
    mov bx, ax                       ; 0x4cd5
    add bx, bp                       ; 0x4cd7
    mov word [bx - 0x0014], 0        ; 0x4cd9
    inc word [bp - 0x0002]           ; 0x4cde
    mov ax, word [bp - 0x0002]       ; 0x4ce1
    cmp ax, strict word 8            ; 0x4ce4
    jl short @..api_idx_00b4_QLQS.l1 ; 0x4ce7
@..api_idx_00b4_QLQS.l2:
    mov word [bp - 0x0004], 0        ; 0x4ce9
@..api_idx_00b4_QLQS.l3:
    mov ax, 7                        ; 0x4cee
    push ax                          ; 0x4cf1
    call random_below                ; 0x4cf2
    pop cx                           ; 0x4cf5
    mov word [bp - 0x0002], ax       ; 0x4cf6
    inc word [bp - 0x0004]           ; 0x4cf9
    mov ax, 0x248                    ; 0x4cfc
    imul word [bp + 0x4]             ; 0x4cff
    add ax, word [bp - 0x0002]       ; 0x4d02
    mov bx, ax                       ; 0x4d05
    cmp byte [bx + 0x5d64], 0x12     ; 0x4d07
    jae short @..api_idx_00b4_QLQS.l4 ; 0x4d0c
    mov ax, word [bp - 0x0002]       ; 0x4d0e
    shl ax, 1                        ; 0x4d11
    mov bx, ax                       ; 0x4d13
    add bx, bp                       ; 0x4d15
    cmp word [bx - 0x0014], byte 0   ; 0x4d17
    je short @..api_idx_00b4_QLQS.l5 ; 0x4d1b
@..api_idx_00b4_QLQS.l4:
    cmp word [bp - 0x0004], byte 3   ; 0x4d1d
    jl short @..api_idx_00b4_QLQS.l3 ; 0x4d21
@..api_idx_00b4_QLQS.l5:
    mov ax, 0x248                    ; 0x4d23
    imul word [bp + 0x4]             ; 0x4d26
    add ax, word [bp - 0x0002]       ; 0x4d29
    mov bx, ax                       ; 0x4d2c
    cmp byte [bx + 0x5d64], 0x12     ; 0x4d2e
    jb short @..api_idx_00b4_QLQS.l6 ; 0x4d33
    jmp near @..api_idx_00b4_QLQS.l8 ; 0x4d35
@..api_idx_00b4_QLQS.l6:
    mov ax, word [bp - 0x0002]       ; 0x4d38
    shl ax, 1                        ; 0x4d3b
    mov bx, ax                       ; 0x4d3d
    add bx, bp                       ; 0x4d3f
    cmp word [bx - 0x0014], byte 0   ; 0x4d41
    je short @..api_idx_00b4_QLQS.l7 ; 0x4d45
    jmp near @..api_idx_00b4_QLQS.l8 ; 0x4d47
@..api_idx_00b4_QLQS.l7:
    mov word [bx - 0x0014], 1        ; 0x4d4a
    mov ax, 0x248                    ; 0x4d4f
    imul word [bp + 0x4]             ; 0x4d52
    add ax, word [bp - 0x0002]       ; 0x4d55
    mov bx, ax                       ; 0x4d58
    inc byte [bx + 0x5d64]           ; 0x4d5a
    mov ax, 1                        ; 0x4d5e
    push ax                          ; 0x4d61
    mov ax, 0x18                     ; 0x4d62
    push ax                          ; 0x4d65
    mov ax, dseg_93ef                ; 0x4d66
    push ax                          ; 0x4d69
    mov ax, dseg_93ee                ; 0x4d6a
    push ax                          ; 0x4d6d
    mov ax, word [bp - 0x0002]       ; 0x4d6e
    add ax, 0xcc                     ; 0x4d71
    push ax                          ; 0x4d74
    mov ax, 0                        ; 0x4d75
    push ax                          ; 0x4d78
    mov al, byte [bx + 0x5d64]       ; 0x4d79
    sub ah, ah                       ; 0x4d7d
    push ax                          ; 0x4d7f
    mov ax, 6                        ; 0x4d80
    imul word [bp - 0x0002]          ; 0x4d83
    add ax, strict word 0x23         ; 0x4d86
    push ax                          ; 0x4d89
    mov ax, 0x73                     ; 0x4d8a
    push ax                          ; 0x4d8d
    mov ax, 1                        ; 0x4d8e
    push ax                          ; 0x4d91
    call api_idx_0020_ORSV           ; 0x4d92
    add sp, byte 0x14                ; 0x4d95
    lea ax, word [bp - 0x0064]       ; 0x4d98
    push ax                          ; 0x4d9b
    mov ax, 0x1396                   ; 0x4d9c
    push ax                          ; 0x4d9f
    call ds_app_mem_TIMR             ; 0x4da0
    add sp, byte 4                   ; 0x4da3
    lea ax, word [bp - 0x00b4]       ; 0x4da6
    push ax                          ; 0x4daa
    mov ax, word [bp - 0x0002]       ; 0x4dab
    add ax, 0x13ba                   ; 0x4dae
    push ax                          ; 0x4db1
    call ds_app_mem_TIMR             ; 0x4db2
    add sp, byte 4                   ; 0x4db5
    mov ax, 0x24                     ; 0x4db8
    push ax                          ; 0x4dbb
    lea ax, word [bp - 0x00b4]       ; 0x4dbc
    push ax                          ; 0x4dc0
    lea ax, word [bp - 0x0064]       ; 0x4dc1
    push ax                          ; 0x4dc4
    call str_subst_char              ; 0x4dc5
    add sp, byte 6                   ; 0x4dc8
    mov ax, 1                        ; 0x4dcb
    push ax                          ; 0x4dce
    lea ax, word [bp - 0x0064]       ; 0x4dcf
    push ax                          ; 0x4dd2
    call api_idx_0004_PMIU           ; 0x4dd3
    add sp, byte 4                   ; 0x4dd6
    push word [bp + 0x4]             ; 0x4dd9
    call api_idx_007c_MOJH           ; 0x4ddc
    pop cx                           ; 0x4ddf
    mov ax, 0x67                     ; 0x4de0
    push ax                          ; 0x4de3
    mov ax, 0xa2                     ; 0x4de4
    push ax                          ; 0x4de7
    mov ax, 6                        ; 0x4de8
    push ax                          ; 0x4deb
    push ax                          ; 0x4dec
    call gfx_show_area               ; 0x4ded
    add sp, byte 8                   ; 0x4df0
@..api_idx_00b4_QLQS.l8:
    mov ax, 2                        ; 0x4df3
    push ax                          ; 0x4df6
    call random_below                ; 0x4df7
    pop cx                           ; 0x4dfa
    test ax, ax                      ; 0x4dfb
    je short @..api_idx_00b4_QLQS.l9 ; 0x4dfd
    jmp near @..api_idx_00b4_QLQS.l2 ; 0x4dff
@..api_idx_00b4_QLQS.l9:
    ret                              ; 0x4e02
