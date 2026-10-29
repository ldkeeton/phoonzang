; auto-generated
api_idx_0054_OQIS:
    mov ax, 0xffac                   ; 0x8a81
    call aztec_csav                  ; 0x8a84
    mov word [bp - 2], 0             ; 0x8a87
    jmp near .forward4               ; 0x8a8c
.back1:
    mov byte [bp - 0x52], 0          ; 0x8a8f
    mov ax, word [bp + 6]            ; 0x8a93
    jmp near .forward1               ; 0x8a96
jumptable_8b35_case_1:
    mov ax, 0xa                      ; 0x8a99
    imul word [bp - 2]               ; 0x8a9c
    add ax, bss_a658                 ; 0x8a9f
    push ax                          ; 0x8aa2
    lea ax, word [bp - 0x52]         ; 0x8aa3
    push ax                          ; 0x8aa6
    call aztec_strcpy                ; 0x8aa7
    add sp, byte 4                   ; 0x8aaa
    jmp near jumptable_8b35_case_0   ; 0x8aad
jumptable_8b35_case_2:
    mov ax, 0xa                      ; 0x8ab0
    imul word [bp - 2]               ; 0x8ab3
    add ax, bss_a6bc                 ; 0x8ab6
    push ax                          ; 0x8ab9
    lea ax, word [bp - 0x52]         ; 0x8aba
    push ax                          ; 0x8abd
    call aztec_strcpy                ; 0x8abe
    add sp, byte 4                   ; 0x8ac1
    jmp near jumptable_8b35_case_0   ; 0x8ac4
jumptable_8b35_case_3:
    mov ax, 0xa                      ; 0x8ac7
    imul word [bp - 2]               ; 0x8aca
    add ax, bss_a702                 ; 0x8acd
    push ax                          ; 0x8ad0
    lea ax, word [bp - 0x52]         ; 0x8ad1
    push ax                          ; 0x8ad4
    call aztec_strcpy                ; 0x8ad5
    add sp, byte 4                   ; 0x8ad8
    jmp short jumptable_8b35_case_0  ; 0x8adb
jumptable_8b35_case_4:
    mov ax, 0xa                      ; 0x8add
    imul word [bp - 2]               ; 0x8ae0
    add ax, bss_a766                 ; 0x8ae3
    push ax                          ; 0x8ae6
    lea ax, word [bp - 0x52]         ; 0x8ae7
    push ax                          ; 0x8aea
    call aztec_strcpy                ; 0x8aeb
    add sp, byte 4                   ; 0x8aee
    jmp short jumptable_8b35_case_0  ; 0x8af1
jumptable_8b35_case_7:
    mov ax, 0x14                     ; 0x8af3
    imul word [bp - 2]               ; 0x8af6
    add ax, bss_a7ac                 ; 0x8af9
    push ax                          ; 0x8afc
    lea ax, word [bp - 0x52]         ; 0x8afd
    push ax                          ; 0x8b00
    call aztec_strcpy                ; 0x8b01
    add sp, byte 4                   ; 0x8b04
    jmp short jumptable_8b35_case_0  ; 0x8b07
jumptable_8b35_case_8:
    mov ax, 0xa                      ; 0x8b09
    imul word [bp - 2]               ; 0x8b0c
    add ax, bss_a810                 ; 0x8b0f
    push ax                          ; 0x8b12
    lea ax, word [bp - 0x52]         ; 0x8b13
    push ax                          ; 0x8b16
    call aztec_strcpy                ; 0x8b17
    add sp, byte 4                   ; 0x8b1a
    jmp short jumptable_8b35_case_0  ; 0x8b1d
jumptable_8b35_case_9:
    mov ax, 0xa                      ; 0x8b1f
    imul word [bp - 2]               ; 0x8b22
    add ax, bss_a856                 ; 0x8b25
    push ax                          ; 0x8b28
    lea ax, word [bp - 0x52]         ; 0x8b29
    push ax                          ; 0x8b2c
    call aztec_strcpy                ; 0x8b2d
    add sp, byte 4                   ; 0x8b30
    jmp short jumptable_8b35_case_0  ; 0x8b33
jumptable_8b35:
    dw jumptable_8b35_case_0 - IMAGE_BASE + __zres_end ; 0x8b35
    dw jumptable_8b35_case_1 - IMAGE_BASE + __zres_end ; 0x8b37
    dw jumptable_8b35_case_2 - IMAGE_BASE + __zres_end ; 0x8b39
    dw jumptable_8b35_case_3 - IMAGE_BASE + __zres_end ; 0x8b3b
    dw jumptable_8b35_case_4 - IMAGE_BASE + __zres_end ; 0x8b3d
    dw jumptable_8b35_case_0 - IMAGE_BASE + __zres_end ; 0x8b3f
    dw jumptable_8b35_case_0 - IMAGE_BASE + __zres_end ; 0x8b41
    dw jumptable_8b35_case_7 - IMAGE_BASE + __zres_end ; 0x8b43
    dw jumptable_8b35_case_8 - IMAGE_BASE + __zres_end ; 0x8b45
    dw jumptable_8b35_case_9 - IMAGE_BASE + __zres_end ; 0x8b47
api_idx_0054_OQIS.forward1:
    cmp ax, strict word 0xa          ; 0x8b49
    jae short jumptable_8b35_case_0  ; 0x8b4c
    xchg bx, ax                      ; 0x8b4e
    shl bx, 1                        ; 0x8b4f
    jmp [cs:bx + jumptable_8b35 - IMAGE_BASE + __zres_end] ; 0x8b51
jumptable_8b35_case_0:
    lea ax, word [bp - 0x52]         ; 0x8b56
    push ax                          ; 0x8b59
    call aztec_strlen                ; 0x8b5a
    pop cx                           ; 0x8b5d
    mov word [bp - 0x54], ax         ; 0x8b5e
    mov bx, ax                       ; 0x8b61
    add bx, bp                       ; 0x8b63
    mov byte [bx - 0x52], 0x20       ; 0x8b65
    mov byte [bx - 0x51], 0          ; 0x8b69
    lea ax, word [bp - 0x52]         ; 0x8b6d
    push ax                          ; 0x8b70
    call aztec_strlen                ; 0x8b71
    pop cx                           ; 0x8b74
    push ax                          ; 0x8b75
    lea ax, word [bp - 0x52]         ; 0x8b76
    push ax                          ; 0x8b79
    push word [bp + 4]               ; 0x8b7a
    call aztec_strncmp               ; 0x8b7d
    add sp, byte 6                   ; 0x8b80
    test ax, ax                      ; 0x8b83
    jne short api_idx_0054_OQIS.forward3 ; 0x8b85
    lea ax, word [bp - 0x52]         ; 0x8b87
    push ax                          ; 0x8b8a
    call aztec_strlen                ; 0x8b8b
    pop cx                           ; 0x8b8e
    dec ax                           ; 0x8b8f
    push ax                          ; 0x8b90
    push word [bp + 4]               ; 0x8b91
    call api_idx_0002_SRQM           ; 0x8b94
    add sp, byte 4                   ; 0x8b97
    mov ax, word [bp - 2]            ; 0x8b9a
    ret                              ; 0x8b9d
api_idx_0054_OQIS.forward3:
    inc word [bp - 2]                ; 0x8b9e
api_idx_0054_OQIS.forward4:
    mov ax, word [bp - 2]            ; 0x8ba1
    cmp ax, word [bp + 8]            ; 0x8ba4
    jge short api_idx_0054_OQIS.forward5 ; 0x8ba7
    jmp near api_idx_0054_OQIS.back1 ; 0x8ba9
api_idx_0054_OQIS.forward5:
    mov ax, 0xffff                   ; 0x8bac
    ret                              ; 0x8baf
