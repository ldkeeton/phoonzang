; auto-generated
api_idx_0004_VSSI:
    mov ax, 0xfffc                   ; 0x1447
    call aztec_csav                  ; 0x144a
    mov word [bp - 4], 0             ; 0x144d
.back1:
    push word [party_char_count]     ; 0x1452
    call random_below                ; 0x1456
    pop cx                           ; 0x1459
    mov word [bp - 2], ax            ; 0x145a
    inc word [bp - 4]                ; 0x145d
    cmp word [bp - 4], byte 0x18     ; 0x1460
    jge short .forward1              ; 0x1464
    mov ax, word [bp - 2]            ; 0x1466
    shl ax, 1                        ; 0x1469
    mov si, ax                       ; 0x146b
    mov bx, word [bp + 4]            ; 0x146d
    cmp word [bx + si], byte 0       ; 0x1470
    jne short .back1                 ; 0x1473
.forward1:
    mov ax, word [bp - 2]            ; 0x1475
    shl ax, 1                        ; 0x1478
    mov si, ax                       ; 0x147a
    mov bx, word [bp + 4]            ; 0x147c
    cmp word [bx + si], byte 0       ; 0x147f
    je short .forward2               ; 0x1482
    mov ax, 0xffff                   ; 0x1484
    jmp short .return1               ; 0x1487
.forward2:
    mov ax, word [bp - 2]            ; 0x1489
.return1:
    ret                              ; 0x148c
