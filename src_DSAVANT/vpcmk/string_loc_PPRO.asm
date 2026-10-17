; auto-generated
string_loc_PPRO:
    mov ax, 4                        ; 0x5a0b
    push ax                          ; 0x5a0e
    mov ax, 7                        ; 0x5a0f
    push ax                          ; 0x5a12
    mov ax, 8                        ; 0x5a13
    push ax                          ; 0x5a16
    push word [bp + 0x4]             ; 0x5a17
    call api_idx_001c_ITKQ           ; 0x5a1a
    add sp, byte 8                   ; 0x5a1d
    mov ax, 2                        ; 0x5a20
    push ax                          ; 0x5a23
    mov ax, 0                        ; 0x5a24
    push ax                          ; 0x5a27
    push word [bp + 0x4]             ; 0x5a28
    call api_idx_0002_USJO           ; 0x5a2b
    add sp, byte 6                   ; 0x5a2e
    push ax                          ; 0x5a31
    mov ax, 0x248                    ; 0x5a32
    imul word [bp + 0x4]             ; 0x5a35
    mov bx, ax                       ; 0x5a38
    pop ax                           ; 0x5a3a
    mov byte [bx + 0x5d75], al       ; 0x5a3b
    mov ax, 2                        ; 0x5a3f
    push ax                          ; 0x5a42
    mov ax, 1                        ; 0x5a43
    push ax                          ; 0x5a46
    push word [bp + 0x4]             ; 0x5a47
    call api_idx_0002_USJO           ; 0x5a4a
    add sp, byte 6                   ; 0x5a4d
    push ax                          ; 0x5a50
    mov ax, 0x248                    ; 0x5a51
    imul word [bp + 0x4]             ; 0x5a54
    mov bx, ax                       ; 0x5a57
    pop ax                           ; 0x5a59
    mov byte [bx + 0x5d7d], al       ; 0x5a5a
    jmp short loc_PLIR               ; 0x5a5e
jumptable_5a60:
    dw jumptable_5a60_case_0 - IMAGE_BASE + 0x5055 ; 0x5a60
    dw jumptable_5a60_case_1 - IMAGE_BASE + 0x5055 ; 0x5a62
    dw jumptable_5a60_case_2 - IMAGE_BASE + 0x5055 ; 0x5a64
    dw jumptable_5a60_case_3 - IMAGE_BASE + 0x5055 ; 0x5a66
    dw jumptable_5a60_case_4 - IMAGE_BASE + 0x5055 ; 0x5a68
    dw jumptable_5a60_case_5 - IMAGE_BASE + 0x5055 ; 0x5a6a
    dw jumptable_5a60_case_6 - IMAGE_BASE + 0x5055 ; 0x5a6c
    dw jumptable_5a60_case_7 - IMAGE_BASE + 0x5055 ; 0x5a6e
    dw jumptable_5a60_case_8 - IMAGE_BASE + 0x5055 ; 0x5a70
    dw jumptable_5a60_case_9 - IMAGE_BASE + 0x5055 ; 0x5a72
    dw jumptable_5a60_case_10 - IMAGE_BASE + 0x5055 ; 0x5a74
    dw jumptable_5a60_case_11 - IMAGE_BASE + 0x5055 ; 0x5a76
    dw jumptable_5a60_case_12 - IMAGE_BASE + 0x5055 ; 0x5a78
    dw string_loc_PPRO - IMAGE_BASE + 0x5055   ; 0x5a7a
loc_5a7c:
    cmp ax, strict word 0xe          ; 0x5a7c
    jae short loc_PLIR               ; 0x5a7f
    xchg bx, ax                      ; 0x5a81
    shl bx, 1                        ; 0x5a82
    jmp [cs:bx - 0x5559]             ; 0x5a84
loc_PLIR:
    ret                              ; 0x5a89
