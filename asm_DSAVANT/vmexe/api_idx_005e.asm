api_idx_005e:
    mov ax, 0xffa2                   ; 0x34bc
    call ds_dispatch_f40b            ; 0x34bf
    mov word [bp - 0x0002], 0xf      ; 0x34c2
@..api_idx_005e.l1:
    mov bx, word [bp - 0x0002]       ; 0x34c7
    mov al, byte [bx + 0x5b48]       ; 0x34ca
    sub ah, ah                       ; 0x34ce
    cmp ax, word [bp + 0x4]          ; 0x34d0
    jne short @..api_idx_005e.l2     ; 0x34d3
    mov ax, 0                        ; 0x34d5
    ret                              ; 0x34d8
