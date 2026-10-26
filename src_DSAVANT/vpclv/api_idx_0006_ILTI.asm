; auto-generated
api_idx_0006_ILTI:
    mov ax, 0xfffa                   ; 0x4e03
    call aztec_csav                  ; 0x4e06
    mov word [bp - 4], 0             ; 0x4e09
    mov word [bp - 2], 0             ; 0x4e0e
.back1:
    mov ax, word [bp - 2]            ; 0x4e13
    jmp short .forward1              ; 0x4e16
jumptable_4e49_case_0:
    mov word [bp - 6], 2             ; 0x4e18
    jmp short api_idx_0006_ILTI.forward2 ; 0x4e1d
jumptable_4e49_case_1:
    mov word [bp - 6], 4             ; 0x4e1f
    jmp short api_idx_0006_ILTI.forward2 ; 0x4e24
jumptable_4e49_case_2:
    mov word [bp - 6], 7             ; 0x4e26
    jmp short api_idx_0006_ILTI.forward2 ; 0x4e2b
jumptable_4e49_case_3:
    mov word [bp - 6], 0xa           ; 0x4e2d
    jmp short api_idx_0006_ILTI.forward2 ; 0x4e32
jumptable_4e49_case_4:
    mov word [bp - 6], 0xe           ; 0x4e34
    jmp short api_idx_0006_ILTI.forward2 ; 0x4e39
jumptable_4e49_case_5:
    mov word [bp - 6], 0x12          ; 0x4e3b
    jmp short api_idx_0006_ILTI.forward2 ; 0x4e40
jumptable_4e49_case_6:
    mov word [bp - 6], 0x18          ; 0x4e42
    jmp short api_idx_0006_ILTI.forward2 ; 0x4e47
jumptable_4e49:
    dw jumptable_4e49_case_0 - IMAGE_BASE + __zres_end ; 0x4e49
    dw jumptable_4e49_case_1 - IMAGE_BASE + __zres_end ; 0x4e4b
    dw jumptable_4e49_case_2 - IMAGE_BASE + __zres_end ; 0x4e4d
    dw jumptable_4e49_case_3 - IMAGE_BASE + __zres_end ; 0x4e4f
    dw jumptable_4e49_case_4 - IMAGE_BASE + __zres_end ; 0x4e51
    dw jumptable_4e49_case_5 - IMAGE_BASE + __zres_end ; 0x4e53
    dw jumptable_4e49_case_6 - IMAGE_BASE + __zres_end ; 0x4e55
api_idx_0006_ILTI.forward1:
    cmp ax, strict word 7            ; 0x4e57
    jae short api_idx_0006_ILTI.forward2 ; 0x4e5a
    xchg bx, ax                      ; 0x4e5c
    shl bx, 1                        ; 0x4e5d
    jmp [cs:bx + jumptable_4e49 - IMAGE_BASE + __zres_end] ; 0x4e5f
api_idx_0006_ILTI.forward2:
    mov ax, 0x248                    ; 0x4e64
    imul word [bp + 4]               ; 0x4e67
    mov bx, ax                       ; 0x4e6a
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x4e6c
    cmp ax, word [bp - 6]            ; 0x4e70
    jl short api_idx_0006_ILTI.forward3 ; 0x4e73
    inc word [bp - 4]                ; 0x4e75
api_idx_0006_ILTI.forward3:
    inc word [bp - 2]                ; 0x4e78
    mov ax, word [bp - 2]            ; 0x4e7b
    cmp ax, strict word 7            ; 0x4e7e
    jl short api_idx_0006_ILTI.back1 ; 0x4e81
    mov ax, 0x248                    ; 0x4e83
    imul word [bp + 4]               ; 0x4e86
    mov bx, ax                       ; 0x4e89
    mov al, byte [bx + party_records + pc_rec.f_023a] ; 0x4e8b
    sub ah, ah                       ; 0x4e8f
    cmp ax, word [bp - 4]            ; 0x4e91
    jge short api_idx_0006_ILTI.return1 ; 0x4e94
    mov al, byte [bp - 4]            ; 0x4e96
    mov byte [bx + party_records + pc_rec.f_023a], al ; 0x4e99
api_idx_0006_ILTI.return1:
    ret                              ; 0x4e9d
