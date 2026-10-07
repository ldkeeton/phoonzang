api_idx_0004:
    mov ax, 0xfffc                   ; 0x0102
    call ds_dispatch_f40b            ; 0x0105
    call ds_dispatch_ec17            ; 0x0108
    mov ax, word [bp + 0x4]          ; 0x010b
    cwd                              ; 0x010e
    les bx, word [data_0002]         ; 0x010f
    mov cx, word [es:bx]             ; 0x0113
    mov bx, word [es:bx + 0x2]       ; 0x0116
    add ax, cx                       ; 0x011a
    adc dx, bx                       ; 0x011c
    mov word [bp - 0x0002], dx       ; 0x011e
    mov word [bp - 0x0004], ax       ; 0x0121
@..api_idx_0004.l1:
    les bx, word [data_0002]         ; 0x0124
    mov ax, word [es:bx]             ; 0x0128
    mov dx, word [es:bx + 0x2]       ; 0x012b
    cmp dx, word [bp - 0x0002]       ; 0x012f
    jg short @..api_idx_0004.l2      ; 0x0132
    jne short @..api_idx_0004.l3     ; 0x0134
    cmp ax, word [bp - 0x0004]       ; 0x0136
    jb short @..api_idx_0004.l3      ; 0x0139
@..api_idx_0004.l2:
    jmp short @..api_idx_0004.l6     ; 0x013b
@..api_idx_0004.l3:
    call ds_dispatch_baef            ; 0x013d
    test ax, ax                      ; 0x0140
    je short @..api_idx_0004.l4      ; 0x0142
    ret                              ; 0x0144
