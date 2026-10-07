api_idx_005e:
    mov ax, 0xffa2                   ; 0x13ed
    db 0xe8, 0x18, 0xe0 ; call 0xf40b
    mov word [bp - 0x000e], 0        ; 0x13f3
    mov word [bp - 0x0004], 0        ; 0x13f8
@..api_idx_005e.l1:
    mov word [bp - 0x0006], 0        ; 0x13fd
@..api_idx_005e.l2:
    mov ax, 6                        ; 0x1402
    imul word [bp - 0x0004]          ; 0x1405
    mov cx, word [bp - 0x0006]       ; 0x1408
    shl cx, 1                        ; 0x140b
    add ax, cx                       ; 0x140d
    mov bx, ax                       ; 0x140f
    cmp word [bx - 0x7bc6], byte 0   ; 0x1411
    je short @..api_idx_005e.l3      ; 0x1416
    mov word [bp - 0x000e], 1        ; 0x1418
@..api_idx_005e.l3:
    inc word [bp - 0x0006]           ; 0x141d
    mov ax, word [bp - 0x0006]       ; 0x1420
    cmp ax, strict word 3            ; 0x1423
    jl short @..api_idx_005e.l2      ; 0x1426
    inc word [bp - 0x0004]           ; 0x1428
    mov ax, word [bp - 0x0004]       ; 0x142b
    cmp ax, strict word 3            ; 0x142e
    jl short @..api_idx_005e.l1      ; 0x1431
    cmp word [bp - 0x000e], byte 0   ; 0x1433
    jne short @..api_idx_005e.l5     ; 0x1437
    cmp word [bp + 0x6], byte 0      ; 0x1439
    je short @..api_idx_005e.l4      ; 0x143d
    mov ax, 0xc6                     ; 0x143f
    push ax                          ; 0x1442
    mov ax, 0x109                    ; 0x1443
    push ax                          ; 0x1446
    mov ax, 0x92                     ; 0x1447
    push ax                          ; 0x144a
    mov ax, 0x37                     ; 0x144b
    push ax                          ; 0x144e
    db 0xe8, 0x88, 0xd4 ; call 0xe8da
    add sp, byte 8                   ; 0x1452
@..api_idx_005e.l4:
    call loc_109f                    ; 0x1455
    ret                              ; 0x1458
