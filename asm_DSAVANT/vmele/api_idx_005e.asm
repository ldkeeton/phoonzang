api_idx_005e:
    mov ax, 0xffa2                   ; 0x0649
    call ds_dispatch_f40b            ; 0x064c
    mov word [bp - 0x0002], 0xf      ; 0x064f
@..api_idx_005e.l1:
    mov bx, word [bp - 0x0002]       ; 0x0654
    mov al, byte [bx + 0x5b48]       ; 0x0657
    sub ah, ah                       ; 0x065b
    cmp ax, word [bp + 0x4]          ; 0x065d
    jne short @..api_idx_005e.l2     ; 0x0660
    mov ax, 0                        ; 0x0662
    ret                              ; 0x0665
