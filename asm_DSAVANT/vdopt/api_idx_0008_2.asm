api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x362f
    call ds_dispatch_f40b            ; 0x3632
    mov word [bp - 0x0006], 0xffff   ; 0x3635
    mov word [bp - 0x0008], 0xffff   ; 0x363a
    mov ax, word [data_0e0e]         ; 0x363f
    mov word [bp - 0x0004], ax       ; 0x3642
    mov word [bp - 0x0002], 0        ; 0x3645
    jmp short @..api_idx_0008_2.l6   ; 0x364a
@..api_idx_0008_2.l1:
    mov bx, word [bp - 0x0004]       ; 0x364c
    mov al, byte [bx]                ; 0x364f
    sub ah, ah                       ; 0x3651
    cmp ax, 0xff                     ; 0x3653
    jne short @..api_idx_0008_2.l2   ; 0x3656
    mov ax, word [bp - 0x0002]       ; 0x3658
    ret                              ; 0x365b
