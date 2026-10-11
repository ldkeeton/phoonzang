api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x1447
    call ds_dispatch_f40b            ; 0x144a
    mov word [bp - 0x0004], 0        ; 0x144d
@..api_idx_0004_5.l1:
    push word [bss_69c8]             ; 0x1452
    call ds_dispatch_b7a9            ; 0x1456
    pop cx                           ; 0x1459
    mov word [bp - 0x0002], ax       ; 0x145a
    inc word [bp - 0x0004]           ; 0x145d
    cmp word [bp - 0x0004], byte 0x18 ; 0x1460
    jge short @..api_idx_0004_5.l2   ; 0x1464
    mov ax, word [bp - 0x0002]       ; 0x1466
    shl ax, 1                        ; 0x1469
    mov si, ax                       ; 0x146b
    mov bx, word [bp + 0x4]          ; 0x146d
    cmp word [bx + si], byte 0       ; 0x1470
    jne short @..api_idx_0004_5.l1   ; 0x1473
@..api_idx_0004_5.l2:
    mov ax, word [bp - 0x0002]       ; 0x1475
    shl ax, 1                        ; 0x1478
    mov si, ax                       ; 0x147a
    mov bx, word [bp + 0x4]          ; 0x147c
    cmp word [bx + si], byte 0       ; 0x147f
    je short @..api_idx_0004_5.l3    ; 0x1482
    mov ax, 0xffff                   ; 0x1484
    jmp short @..api_idx_0004_5.l4   ; 0x1487
@..api_idx_0004_5.l3:
    mov ax, word [bp - 0x0002]       ; 0x1489
@..api_idx_0004_5.l4:
    ret                              ; 0x148c
