; auto-generated
api_idx_0002_LMTG:
    mov ax, 0xfffe                   ; 0x02da
    call aztec_csav                  ; 0x02dd
    mov word [bp - 2], 0             ; 0x02e0
.back1:
    mov ax, word [bp - 2]            ; 0x02e5
    shl ax, 1                        ; 0x02e8
    mov bx, ax                       ; 0x02ea
    mov word [bx + bss_91a0], 0      ; 0x02ec
    inc word [bp - 2]                ; 0x02f2
    mov ax, word [bp - 2]            ; 0x02f5
    cmp ax, strict word 3            ; 0x02f8
    jl short .back1                  ; 0x02fb
    ret                              ; 0x02fd
