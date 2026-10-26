; auto-generated
api_idx_0002_SLKJ:
    mov ax, 0xfffe                   ; 0x4ade
    call aztec_csav                  ; 0x4ae1
    mov word [bp - 2], 0             ; 0x4ae4
.back1:
    mov ax, 9                        ; 0x4ae9
    push ax                          ; 0x4aec
    push word [bp - 2]               ; 0x4aed
    push word [bp + 4]               ; 0x4af0
    call loc_RPNT                    ; 0x4af3
    add sp, byte 6                   ; 0x4af6
    inc word [bp - 2]                ; 0x4af9
    mov ax, word [bp - 2]            ; 0x4afc
    cmp ax, strict word 0x60         ; 0x4aff
    jl short .back1                  ; 0x4b02
    ret                              ; 0x4b04
