api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x02da
    call aztec_csav                  ; 0x02dd
    mov word [bp - 0x0002], 0        ; 0x02e0
@..api_idx_0002_3.l1:
    mov ax, word [bp - 0x0002]       ; 0x02e5
    shl ax, 1                        ; 0x02e8
    mov bx, ax                       ; 0x02ea
    mov word [bx - 0x6e60], 0        ; 0x02ec
    inc word [bp - 0x0002]           ; 0x02f2
    mov ax, word [bp - 0x0002]       ; 0x02f5
    cmp ax, strict word 3            ; 0x02f8
    jl short @..api_idx_0002_3.l1    ; 0x02fb
    ret                              ; 0x02fd
