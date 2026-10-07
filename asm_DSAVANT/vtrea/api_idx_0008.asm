api_idx_0008:
    mov ax, 0xfff8                   ; 0x3552
    call ds_dispatch_f40b            ; 0x3555
    mov word [bp - 0x0006], 0xffff   ; 0x3558
    mov word [bp - 0x0008], 0xffff   ; 0x355d
    mov ax, word [data_0e0e]         ; 0x3562
    mov word [bp - 0x0004], ax       ; 0x3565
    mov word [bp - 0x0002], 0        ; 0x3568
    jmp short @..api_idx_0008.l6     ; 0x356d
@..api_idx_0008.l1:
    mov bx, word [bp - 0x0004]       ; 0x356f
    mov al, byte [bx]                ; 0x3572
    sub ah, ah                       ; 0x3574
    cmp ax, 0xff                     ; 0x3576
    jne short @..api_idx_0008.l2     ; 0x3579
    mov ax, word [bp - 0x0002]       ; 0x357b
    ret                              ; 0x357e
