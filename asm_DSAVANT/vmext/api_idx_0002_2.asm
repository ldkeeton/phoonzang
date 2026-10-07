api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x01ac
    call ds_dispatch_f40b            ; 0x01af
    mov ax, word [bp + 0xa]          ; 0x01b2
    mov word [bp - 0x0002], ax       ; 0x01b5
    jmp short @..api_idx_0002_2.l4   ; 0x01b8
@..api_idx_0002_2.l1:
    mov bx, word [data_0e12]         ; 0x01ba
    mov si, word [bp - 0x0002]       ; 0x01be
    mov al, byte [bx + si + 0x870]   ; 0x01c1
    sub ah, ah                       ; 0x01c5
    cmp ax, word [bp + 0x8]          ; 0x01c7
    je short @..api_idx_0002_2.l2    ; 0x01ca
    mov ax, 0xffff                   ; 0x01cc
    ret                              ; 0x01cf
