api_idx_0002:
    mov ax, 0xfffe                   ; 0x019b
    call ds_dispatch_f40b            ; 0x019e
    mov ax, word [bp + 0xa]          ; 0x01a1
    mov word [bp - 0x0002], ax       ; 0x01a4
    jmp short @..api_idx_0002.l4     ; 0x01a7
@..api_idx_0002.l1:
    mov bx, word [data_0e12]         ; 0x01a9
    mov si, word [bp - 0x0002]       ; 0x01ad
    mov al, byte [bx + si + 0x870]   ; 0x01b0
    sub ah, ah                       ; 0x01b4
    cmp ax, word [bp + 0x8]          ; 0x01b6
    je short @..api_idx_0002.l2      ; 0x01b9
    mov ax, 0xffff                   ; 0x01bb
    ret                              ; 0x01be
