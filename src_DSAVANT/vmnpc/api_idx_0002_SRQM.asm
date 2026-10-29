; auto-generated
api_idx_0002_SRQM:
    mov ax, 0xfffe                   ; 0x86a4
    call aztec_csav                  ; 0x86a7
    mov word [bp - 2], 0             ; 0x86aa
    jmp short .forward1              ; 0x86af
.back1:
    mov bx, word [bp + 4]            ; 0x86b1
    mov si, word [bp - 2]            ; 0x86b4
    mov byte [bx + si], 0x78         ; 0x86b7
    inc word [bp - 2]                ; 0x86ba
.forward1:
    mov ax, word [bp - 2]            ; 0x86bd
    cmp ax, word [bp + 6]            ; 0x86c0
    jl short .back1                  ; 0x86c3
    ret                              ; 0x86c5
