api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x146b
    call ds_dispatch_f40b            ; 0x146e
    mov word [bp - 0x0002], 0        ; 0x1471
@..api_idx_0004_4.l1:
    mov word [bp - 0x0004], 0        ; 0x1476
@..api_idx_0004_4.l2:
    mov ax, 0x248                    ; 0x147b
    imul word [bp + 0x4]             ; 0x147e
    push ax                          ; 0x1481
    mov ax, 0x78                     ; 0x1482
    imul word [bp - 0x0002]          ; 0x1485
    mov cx, ax                       ; 0x1488
    pop ax                           ; 0x148a
    add ax, cx                       ; 0x148b
    push ax                          ; 0x148d
    mov ax, 0xc                      ; 0x148e
    imul word [bp - 0x0004]          ; 0x1491
    mov cx, ax                       ; 0x1494
    pop ax                           ; 0x1496
    add ax, cx                       ; 0x1497
    mov bx, ax                       ; 0x1499
    cmp word [bx + 0x5c34], byte 0   ; 0x149b
    jne short @..api_idx_0004_4.l3   ; 0x14a0
    mov ax, word [bp - 0x0002]       ; 0x14a2
    xchg al, ah                      ; 0x14a5
    sub al, al                       ; 0x14a7
    add ax, word [bp - 0x0004]       ; 0x14a9
    ret                              ; 0x14ac
