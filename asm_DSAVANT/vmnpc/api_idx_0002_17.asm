api_idx_0002_17:
    mov ax, 0xfffe                   ; 0xa411
    db 0xe8, 0xf4, 0x4f ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0xa417
    jmp short @..api_idx_0002_17.l2  ; 0xa41c
@..api_idx_0002_17.l1:
    mov ax, 0x32                     ; 0xa41e
    imul word [bp - 0x0002]          ; 0xa421
    add ax, 0xa8c4                   ; 0xa424
    push ax                          ; 0xa427
    mov ax, word [bp + 0x4]          ; 0xa428
    add ax, word [bp - 0x0002]       ; 0xa42b
    push ax                          ; 0xa42e
    db 0xe8, 0x09, 0x11 ; call 0xb53b
    add sp, byte 4                   ; 0xa432
    inc word [bp - 0x0002]           ; 0xa435
@..api_idx_0002_17.l2:
    mov ax, word [bp - 0x0002]       ; 0xa438
    cmp ax, word [bp + 0x6]          ; 0xa43b
    jl short @..api_idx_0002_17.l1   ; 0xa43e
    ret                              ; 0xa440
