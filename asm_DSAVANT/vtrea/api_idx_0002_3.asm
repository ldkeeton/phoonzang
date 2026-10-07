api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x5689
    call ds_dispatch_f40b            ; 0x568c
@..api_idx_0002_3.l1:
    mov ax, 0x2f                     ; 0x568f
    push ax                          ; 0x5692
    push word [bp + 0x4]             ; 0x5693
    call ds_dispatch_ee4a            ; 0x5696
    add sp, byte 4                   ; 0x5699
    mov word [bp - 0x0002], ax       ; 0x569c
    cmp ax, strict word 0xffff       ; 0x569f
    je short @..api_idx_0002_3.l2    ; 0x56a2
    mov bx, word [bp + 0x4]          ; 0x56a4
    mov si, ax                       ; 0x56a7
    mov byte [bx + si], 0x20         ; 0x56a9
    jmp short @..api_idx_0002_3.l1   ; 0x56ac
@..api_idx_0002_3.l2:
    ret                              ; 0x56ae
