api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x6882
    call ds_dispatch_f40b            ; 0x6885
    mov ax, word [bp + 0xa]          ; 0x6888
    mov word [bp - 0x0002], ax       ; 0x688b
    jmp short @..api_idx_0002_11.l4  ; 0x688e
@..api_idx_0002_11.l1:
    mov bx, word [data_0e12]         ; 0x6890
    mov si, word [bp - 0x0002]       ; 0x6894
    mov al, byte [bx + si + 0x870]   ; 0x6897
    sub ah, ah                       ; 0x689b
    cmp ax, word [bp + 0x8]          ; 0x689d
    je short @..api_idx_0002_11.l2   ; 0x68a0
    mov ax, 0xffff                   ; 0x68a2
    ret                              ; 0x68a5
