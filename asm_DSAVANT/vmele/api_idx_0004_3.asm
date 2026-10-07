api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x03b9
    call ds_dispatch_f40b            ; 0x03bc
    mov word [bp - 0x0004], 0xffff   ; 0x03bf
    mov word [bp - 0x0002], 0xf      ; 0x03c4
@..api_idx_0004_3.l1:
    mov bx, word [bp - 0x0002]       ; 0x03c9
    mov al, byte [bx + 0x5b48]       ; 0x03cc
    sub ah, ah                       ; 0x03d0
    cmp ax, word [bp + 0x4]          ; 0x03d2
    jne short @..api_idx_0004_3.l2   ; 0x03d5
    mov byte [bx + 0x5b5a], 1        ; 0x03d7
    mov ax, bx                       ; 0x03dc
    ret                              ; 0x03de
