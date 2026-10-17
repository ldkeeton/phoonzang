; auto-generated
api_idx_0006_ILTI:
    mov ax, 0xfffa                   ; 0x4e03
    call aztec_csav                  ; 0x4e06
    mov word [bp - 0x0004], 0        ; 0x4e09
    mov word [bp - 0x0002], 0        ; 0x4e0e
@..api_idx_0006_ILTI.l1:
    mov ax, word [bp - 0x0002]       ; 0x4e13
    jmp short @..api_idx_0006_ILTI.l2 ; 0x4e16
leaf_loc_4e18:
    mov word [bp - 0x0006], 2        ; 0x4e18
    jmp short @..api_idx_0006_ILTI.l3 ; 0x4e1d
leaf_loc_4e1f:
    mov word [bp - 0x0006], 4        ; 0x4e1f
    jmp short @..api_idx_0006_ILTI.l3 ; 0x4e24
loc_HVTM:
    mov word [bp - 0x0006], 7        ; 0x4e26
    jmp short @..api_idx_0006_ILTI.l3 ; 0x4e2b
loc_GHGM:
    mov word [bp - 0x0006], 0xa      ; 0x4e2d
    jmp short @..api_idx_0006_ILTI.l3 ; 0x4e32
loc_TIJR:
    mov word [bp - 0x0006], 0xe      ; 0x4e34
    jmp short @..api_idx_0006_ILTI.l3 ; 0x4e39
loc_KVSM:
    mov word [bp - 0x0006], 0x12     ; 0x4e3b
    jmp short @..api_idx_0006_ILTI.l3 ; 0x4e40
loc_VNVG:
    mov word [bp - 0x0006], 0x18     ; 0x4e42
    jmp short @..api_idx_0006_ILTI.l3 ; 0x4e47
jumptable_4e49:
    dw leaf_loc_4e18 - IMAGE_BASE + __zres_end ; 0x4e49
    dw leaf_loc_4e1f - IMAGE_BASE + __zres_end ; 0x4e4b
    dw loc_HVTM - IMAGE_BASE + __zres_end      ; 0x4e4d
    dw loc_GHGM - IMAGE_BASE + __zres_end      ; 0x4e4f
    dw loc_TIJR - IMAGE_BASE + __zres_end      ; 0x4e51
    dw loc_KVSM - IMAGE_BASE + __zres_end      ; 0x4e53
    dw loc_VNVG - IMAGE_BASE + __zres_end      ; 0x4e55
@..api_idx_0006_ILTI.l2:
    cmp ax, strict word 7            ; 0x4e57
    jae short @..api_idx_0006_ILTI.l3 ; 0x4e5a
    xchg bx, ax                      ; 0x4e5c
    shl bx, 1                        ; 0x4e5d
    jmp [cs:bx + jumptable_4e49 - IMAGE_BASE + __zres_end] ; 0x4e5f
@..api_idx_0006_ILTI.l3:
    mov ax, 0x248                    ; 0x4e64
    imul word [bp + 0x4]             ; 0x4e67
    mov bx, ax                       ; 0x4e6a
    mov ax, word [bx + 0x5c18]       ; 0x4e6c
    cmp ax, word [bp - 0x0006]       ; 0x4e70
    jl short @..api_idx_0006_ILTI.l4 ; 0x4e73
    inc word [bp - 0x0004]           ; 0x4e75
@..api_idx_0006_ILTI.l4:
    inc word [bp - 0x0002]           ; 0x4e78
    mov ax, word [bp - 0x0002]       ; 0x4e7b
    cmp ax, strict word 7            ; 0x4e7e
    jl short @..api_idx_0006_ILTI.l1 ; 0x4e81
    mov ax, 0x248                    ; 0x4e83
    imul word [bp + 0x4]             ; 0x4e86
    mov bx, ax                       ; 0x4e89
    mov al, byte [bx + 0x5e2e]       ; 0x4e8b
    sub ah, ah                       ; 0x4e8f
    cmp ax, word [bp - 0x0004]       ; 0x4e91
    jge short @..api_idx_0006_ILTI.l5 ; 0x4e94
    mov al, byte [bp - 0x0004]       ; 0x4e96
    mov byte [bx + 0x5e2e], al       ; 0x4e99
@..api_idx_0006_ILTI.l5:
    ret                              ; 0x4e9d
