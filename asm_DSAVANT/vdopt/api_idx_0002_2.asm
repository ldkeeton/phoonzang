api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0473
    call ds_dispatch_f40b            ; 0x0476
    mov ax, word [bp + 0x6]          ; 0x0479
    mov word [bp - 0x0002], ax       ; 0x047c
    jmp short @..api_idx_0002_2.l2   ; 0x047f
@..api_idx_0002_2.l1:
    mov ax, word [bp - 0x0002]       ; 0x0481
    mov cx, 8                        ; 0x0484
    cwd                              ; 0x0487
    idiv cx                          ; 0x0488
    mov si, ax                       ; 0x048a
    mov bx, word [bp + 0x4]          ; 0x048c
    mov al, byte [bx + si]           ; 0x048f
    cbw                              ; 0x0491
    push ax                          ; 0x0492
    mov ax, word [bp - 0x0002]       ; 0x0493
    cwd                              ; 0x0496
    idiv cx                          ; 0x0497
    mov cx, dx                       ; 0x0499
    mov dx, 1                        ; 0x049b
    shl dx, cl                       ; 0x049e
    mov cx, dx                       ; 0x04a0
    not cx                           ; 0x04a2
    pop ax                           ; 0x04a4
    and ax, cx                       ; 0x04a5
    mov byte [bx + si], al           ; 0x04a7
    inc word [bp - 0x0002]           ; 0x04a9
@..api_idx_0002_2.l2:
    mov ax, word [bp + 0x6]          ; 0x04ac
    inc ax                           ; 0x04af
    inc ax                           ; 0x04b0
    cmp ax, word [bp - 0x0002]       ; 0x04b1
    jg short @..api_idx_0002_2.l1    ; 0x04b4
    ret                              ; 0x04b6
