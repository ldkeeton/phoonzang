; auto-generated
api_idx_0002_TSRO:
    mov ax, 0xfffe                   ; 0x86a4
    call aztec_csav                  ; 0x86a7
    mov word [bp - 0x0002], 0        ; 0x86aa
    jmp short @..api_idx_0002_TSRO.l2 ; 0x86af
@..api_idx_0002_TSRO.l1:
    mov bx, word [bp + 0x4]          ; 0x86b1
    mov si, word [bp - 0x0002]       ; 0x86b4
    mov byte [bx + si], 0x78         ; 0x86b7
    inc word [bp - 0x0002]           ; 0x86ba
@..api_idx_0002_TSRO.l2:
    mov ax, word [bp - 0x0002]       ; 0x86bd
    cmp ax, word [bp + 0x6]          ; 0x86c0
    jl short @..api_idx_0002_TSRO.l1 ; 0x86c3
    ret                              ; 0x86c5
