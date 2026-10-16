; auto-generated
api_idx_0002_RUKQ:
    mov ax, 0xfffe                   ; 0x65fc
    call aztec_csav                  ; 0x65ff
    mov word [bp - 0x0002], 0        ; 0x6602
    jmp short @..api_idx_0002_RUKQ.l3 ; 0x6607
@..api_idx_0002_RUKQ.l1:
    mov bx, word [bp - 0x0002]       ; 0x6609
    cmp byte [bx - 0x6f8a], 0        ; 0x660c
    jne short @..api_idx_0002_RUKQ.l2 ; 0x6611
    mov ax, bx                       ; 0x6613
    ret                              ; 0x6615
@..api_idx_0002_RUKQ.l2:
    inc word [bp - 0x0002]           ; 0x6616
@..api_idx_0002_RUKQ.l3:
    mov ax, word [bp - 0x0002]       ; 0x6619
    cmp ax, word [bss_9070]          ; 0x661c
    jl short @..api_idx_0002_RUKQ.l1 ; 0x6620
    mov ax, 0xffff                   ; 0x6622
    ret                              ; 0x6625
