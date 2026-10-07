api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x1a5f
    call ds_dispatch_f40b            ; 0x1a62
    mov word [data_90e4], 1          ; 0x1a65
    call ds_dispatch_ec17            ; 0x1a6b
    mov ax, word [bp + 0x4]          ; 0x1a6e
    cwd                              ; 0x1a71
    les bx, word [0x0002]            ; 0x1a72
    mov cx, word [es:bx]             ; 0x1a76
    mov bx, word [es:bx + 0x2]       ; 0x1a79
    add ax, cx                       ; 0x1a7d
    adc dx, bx                       ; 0x1a7f
    mov word [bp - 0x0002], dx       ; 0x1a81
    mov word [bp - 0x0004], ax       ; 0x1a84
@..api_idx_0004_5.l1:
    les bx, word [0x0002]            ; 0x1a87
    mov ax, word [es:bx]             ; 0x1a8b
    mov dx, word [es:bx + 0x2]       ; 0x1a8e
    cmp dx, word [bp - 0x0002]       ; 0x1a92
    jg short @..api_idx_0004_5.l2    ; 0x1a95
    jne short @..api_idx_0004_5.l3   ; 0x1a97
    cmp ax, word [bp - 0x0004]       ; 0x1a99
    jb short @..api_idx_0004_5.l3    ; 0x1a9c
@..api_idx_0004_5.l2:
    jmp short @..api_idx_0004_5.l6   ; 0x1a9e
@..api_idx_0004_5.l3:
    call ds_dispatch_baef            ; 0x1aa0
    test ax, ax                      ; 0x1aa3
    je short @..api_idx_0004_5.l4    ; 0x1aa5
    ret                              ; 0x1aa7
