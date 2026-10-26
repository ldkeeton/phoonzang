; auto-generated
loc_VMSS:
    mov ax, 0xfefa                   ; 0x6dd9
    call aztec_csav                  ; 0x6ddc
.back1:
    mov bx, word [bp + 4]            ; 0x6ddf
    mov al, byte [bx]                ; 0x6de2
    sub ah, ah                       ; 0x6de4
    push ax                          ; 0x6de6
    mov ax, dseg_9114                ; 0x6de7
    push ax                          ; 0x6dea
    call strpos                      ; 0x6deb
    add sp, byte 4                   ; 0x6dee
    mov word [bp - 4], ax            ; 0x6df1
    cmp ax, strict word 0            ; 0x6df4
    jge short .forward1              ; 0x6df7
    jmp near .forward5               ; 0x6df9
.forward1:
    jmp near .forward3               ; 0x6dfc
jumptable_6e77_case_0:
    inc word [bp + 4]                ; 0x6dff
    mov ax, bss_a4aa                 ; 0x6e02
    push ax                          ; 0x6e05
    call api_idx_0004_RLUP           ; 0x6e06
    pop cx                           ; 0x6e09
    jmp near loc_VMSS.forward4       ; 0x6e0a
jumptable_6e77_case_1:
    inc word [bp + 4]                ; 0x6e0d
    mov bx, word [bp + 4]            ; 0x6e10
    mov al, byte [bx]                ; 0x6e13
    sub ah, ah                       ; 0x6e15
    mov word [bp - 6], ax            ; 0x6e17
    mov cx, 0x12                     ; 0x6e1a
    imul cx                          ; 0x6e1d
    push ax                          ; 0x6e1f
    call api_idx_0004_TTGQ           ; 0x6e20
    pop cx                           ; 0x6e23
    inc word [bp + 4]                ; 0x6e24
    jmp short loc_VMSS.forward4      ; 0x6e27
jumptable_6e77_case_2:
    inc word [bp + 4]                ; 0x6e29
    mov ax, bss_a4aa                 ; 0x6e2c
    push ax                          ; 0x6e2f
    call api_idx_0004_RLUP           ; 0x6e30
    pop cx                           ; 0x6e33
    call loc_QSOL                    ; 0x6e34
    jmp short loc_VMSS.forward4      ; 0x6e37
jumptable_6e77_case_3:
    inc word [bp + 4]                ; 0x6e39
    call loc_SVUQ                    ; 0x6e3c
    mov word [bss_a4a6], 0           ; 0x6e3f
    jmp short loc_VMSS.forward4      ; 0x6e45
jumptable_6e77_case_4:
    inc word [bp + 4]                ; 0x6e47
    mov ax, bss_a4aa                 ; 0x6e4a
    push ax                          ; 0x6e4d
    call api_idx_0004_RLUP           ; 0x6e4e
    pop cx                           ; 0x6e51
    call api_idx_0004_MIQG           ; 0x6e52
    jmp short loc_VMSS.forward4      ; 0x6e55
jumptable_6e77_case_5:
    inc word [bp + 4]                ; 0x6e57
    inc word [scene_tick]            ; 0x6e5a
    jmp short loc_VMSS.forward4      ; 0x6e5e
jumptable_6e77_case_6:
    inc word [bp + 4]                ; 0x6e60
    mov word [scene_running], 1      ; 0x6e63
loc_VMSS.back2:
    cmp word [scene_running], byte 0 ; 0x6e69
    je short loc_VMSS.forward2       ; 0x6e6e
    call loc_TJHG                    ; 0x6e70
    jmp short loc_VMSS.back2         ; 0x6e73
loc_VMSS.forward2:
    jmp short loc_VMSS.forward4      ; 0x6e75
jumptable_6e77:
    dw jumptable_6e77_case_0 - IMAGE_BASE + __zres_end ; 0x6e77
    dw jumptable_6e77_case_1 - IMAGE_BASE + __zres_end ; 0x6e79
    dw jumptable_6e77_case_2 - IMAGE_BASE + __zres_end ; 0x6e7b
    dw jumptable_6e77_case_3 - IMAGE_BASE + __zres_end ; 0x6e7d
    dw jumptable_6e77_case_4 - IMAGE_BASE + __zres_end ; 0x6e7f
    dw jumptable_6e77_case_5 - IMAGE_BASE + __zres_end ; 0x6e81
    dw jumptable_6e77_case_6 - IMAGE_BASE + __zres_end ; 0x6e83
loc_VMSS.forward3:
    cmp ax, strict word 7            ; 0x6e85
    jae short loc_VMSS.forward4      ; 0x6e88
    xchg bx, ax                      ; 0x6e8a
    shl bx, 1                        ; 0x6e8b
    jmp [cs:bx + jumptable_6e77 - IMAGE_BASE + __zres_end] ; 0x6e8d
loc_VMSS.forward4:
    jmp near loc_VMSS.back1          ; 0x6e92
loc_VMSS.forward5:
    cmp byte [bss_a4aa], 0           ; 0x6e95
    je short loc_VMSS.forward6       ; 0x6e9a
    mov ax, bss_a4aa                 ; 0x6e9c
    push ax                          ; 0x6e9f
    lea ax, word [bp - 0x105]        ; 0x6ea0
    push ax                          ; 0x6ea4
    call aztec_strcpy                ; 0x6ea5
    add sp, byte 4                   ; 0x6ea8
    mov ax, dseg_911c                ; 0x6eab
    push ax                          ; 0x6eae
    lea ax, word [bp - 0x105]        ; 0x6eaf
    push ax                          ; 0x6eb3
    call aztec_strcat                ; 0x6eb4
    add sp, byte 4                   ; 0x6eb7
    push word [bp + 4]               ; 0x6eba
    lea ax, word [bp - 0x105]        ; 0x6ebd
    push ax                          ; 0x6ec1
    call aztec_strcat                ; 0x6ec2
    add sp, byte 4                   ; 0x6ec5
    jmp short loc_VMSS.forward7      ; 0x6ec8
loc_VMSS.forward6:
    push word [bp + 4]               ; 0x6eca
    lea ax, word [bp - 0x105]        ; 0x6ecd
    push ax                          ; 0x6ed1
    call aztec_strcpy                ; 0x6ed2
    add sp, byte 4                   ; 0x6ed5
loc_VMSS.forward7:
    mov ax, 2                        ; 0x6ed8
    push ax                          ; 0x6edb
    lea ax, word [bp - 0x105]        ; 0x6edc
    push ax                          ; 0x6ee0
    call measure_text_width          ; 0x6ee1
    add sp, byte 4                   ; 0x6ee4
    mov word [bp - 2], ax            ; 0x6ee7
    cmp ax, 0x127                    ; 0x6eea
    jle short loc_VMSS.forward8      ; 0x6eed
    mov ax, bss_a4aa                 ; 0x6eef
    push ax                          ; 0x6ef2
    call api_idx_0004_RLUP           ; 0x6ef3
    pop cx                           ; 0x6ef6
    push word [bp + 4]               ; 0x6ef7
    mov ax, bss_a4aa                 ; 0x6efa
    push ax                          ; 0x6efd
    call aztec_strcpy                ; 0x6efe
    add sp, byte 4                   ; 0x6f01
    jmp short loc_VMSS.return1       ; 0x6f04
loc_VMSS.forward8:
    lea ax, word [bp - 0x105]        ; 0x6f06
    push ax                          ; 0x6f0a
    mov ax, bss_a4aa                 ; 0x6f0b
    push ax                          ; 0x6f0e
    call aztec_strcpy                ; 0x6f0f
    add sp, byte 4                   ; 0x6f12
loc_VMSS.return1:
    ret                              ; 0x6f15
