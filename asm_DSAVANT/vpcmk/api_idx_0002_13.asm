api_idx_0002_13:
    mov ax, 0xfffe                   ; 0x65fc
    call ds_dispatch_f40b            ; 0x65ff
    mov word [bp - 0x0002], 0        ; 0x6602
    jmp short @..api_idx_0002_13.l3  ; 0x6607
@..api_idx_0002_13.l1:
    mov bx, word [bp - 0x0002]       ; 0x6609
    cmp byte [bx - 0x6f8a], 0        ; 0x660c
    jne short @..api_idx_0002_13.l2  ; 0x6611
    mov ax, bx                       ; 0x6613
    ret                              ; 0x6615
