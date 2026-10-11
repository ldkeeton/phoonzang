api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x1504
    call ds_dispatch_f40b            ; 0x1507
    mov ax, word [dseg_8f3e]         ; 0x150a
    mov cx, 6                        ; 0x150d
    shl ax, cl                       ; 0x1510
    mov cx, word [dseg_8f40]         ; 0x1512
    shl cx, 1                        ; 0x1516
    shl cx, 1                        ; 0x1518
    shl cx, 1                        ; 0x151a
    add ax, cx                       ; 0x151c
    add ax, word [dseg_8f42]         ; 0x151e
    mov word [bp - 0x0002], ax       ; 0x1522
    mov word [bp - 0x0004], 0        ; 0x1525
    push ax                          ; 0x152a
    mov ax, word [dseg_0e14]         ; 0x152b
    add ax, 0x9b0                    ; 0x152e
    push ax                          ; 0x1531
    call ds_dispatch_ec74            ; 0x1532
    add sp, byte 4                   ; 0x1535
    test ax, ax                      ; 0x1538
    je short @..api_idx_0004_3.l2    ; 0x153a
    mov ax, word [dseg_830c]         ; 0x153c
    jmp short @..api_idx_0004_3.l1   ; 0x153f
    cmp word [data_8f3e], byte 0x0c  ; 0x1541
    jle short loc_154d               ; 0x1546
    mov word [bp - 0x0004], 1        ; 0x1548
    jmp short @..api_idx_0004_3.l2   ; 0x154d
    mov word [bp - 0x0004], 1        ; 0x154f
    jmp short @..api_idx_0004_3.l2   ; 0x1554
    xchg si, ax                      ; 0x1556
    db 0x65, 0xcd, 0x65 ; int 0x65
    xchg si, ax                      ; 0x155a
    db 0x65, 0xcd, 0x65 ; int 0x65
    int 0x65                         ; 0x155e
    int 0x65                         ; 0x1560
    int 0x65                         ; 0x1562
    xchg si, ax                      ; 0x1564
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0x96 ; xchg si, ax
    db 0x65, 0xcd, 0x65 ; int 0x65
    int 0x65                         ; 0x1570
    mov byte [di - 0x006a], ah       ; 0x1572
    db 0x65
@..api_idx_0004_3.l1:
    sub ax, strict word 0xf          ; 0x1576
    cmp ax, strict word 0x10         ; 0x1579
    jae short @..api_idx_0004_3.l2   ; 0x157c
    xchg bx, ax                      ; 0x157e
    shl bx, 1                        ; 0x157f
    jmp [cs:bx + 0x659d]             ; 0x1581
@..api_idx_0004_3.l2:
    push word [bp - 0x0002]          ; 0x1586
    mov ax, word [dseg_0e14]         ; 0x1589
    add ax, 0x8b0                    ; 0x158c
    push ax                          ; 0x158f
    call ds_dispatch_ec74            ; 0x1590
    add sp, byte 4                   ; 0x1593
    test ax, ax                      ; 0x1596
    je short @..api_idx_0004_3.l6    ; 0x1598
    mov ax, word [dseg_830c]         ; 0x159a
    jmp short @..api_idx_0004_3.l5   ; 0x159d
@..api_idx_0004_3.l3:
    mov word [bp - 0x0004], 1        ; 0x159f
    jmp short @..api_idx_0004_3.l6   ; 0x15a4
@..api_idx_0004_3.l4:
    mov word [bp - 0x0004], 2        ; 0x15a6
    jmp short @..api_idx_0004_3.l6   ; 0x15ab
@..api_idx_0004_3.l5:
    cmp ax, strict word 8            ; 0x15ad
    je short @..api_idx_0004_3.l3    ; 0x15b0
    cmp ax, strict word 9            ; 0x15b2
    je short @..api_idx_0004_3.l3    ; 0x15b5
    cmp ax, strict word 0xa          ; 0x15b7
    je short @..api_idx_0004_3.l3    ; 0x15ba
    cmp ax, strict word 0xb          ; 0x15bc
    je short @..api_idx_0004_3.l3    ; 0x15bf
    cmp ax, strict word 0xc          ; 0x15c1
    je short @..api_idx_0004_3.l3    ; 0x15c4
    cmp ax, strict word 0x1b         ; 0x15c6
    je short @..api_idx_0004_3.l4    ; 0x15c9
@..api_idx_0004_3.l6:
    push word [bp - 0x0002]          ; 0x15cb
    mov ax, word [dseg_0e14]         ; 0x15ce
    add ax, 0x930                    ; 0x15d1
    push ax                          ; 0x15d4
    call ds_dispatch_ec74            ; 0x15d5
    add sp, byte 4                   ; 0x15d8
    test ax, ax                      ; 0x15db
    je short @..api_idx_0004_3.l13   ; 0x15dd
    mov ax, word [dseg_830c]         ; 0x15df
    jmp short @..api_idx_0004_3.l12  ; 0x15e2
@..api_idx_0004_3.l7:
    mov word [bp - 0x0004], 3        ; 0x15e4
    jmp short @..api_idx_0004_3.l13  ; 0x15e9
@..api_idx_0004_3.l8:
    jmp short @..api_idx_0004_3.l13  ; 0x15eb
@..api_idx_0004_3.l9:
    mov word [bp - 0x0004], 1        ; 0x15ed
    jmp short @..api_idx_0004_3.l13  ; 0x15f2
@..api_idx_0004_3.l10:
    mov word [bp - 0x0004], 2        ; 0x15f4
    jmp short @..api_idx_0004_3.l13  ; 0x15f9
@..api_idx_0004_3.l11:
    mov word [bp - 0x0004], 4        ; 0x15fb
    jmp short @..api_idx_0004_3.l13  ; 0x1600
@..api_idx_0004_3.l12:
    cmp ax, strict word 0            ; 0x1602
    je short @..api_idx_0004_3.l7    ; 0x1605
    cmp ax, strict word 0xa          ; 0x1607
    je short @..api_idx_0004_3.l8    ; 0x160a
    cmp ax, strict word 0xe          ; 0x160c
    je short @..api_idx_0004_3.l9    ; 0x160f
    cmp ax, strict word 0x13         ; 0x1611
    je short @..api_idx_0004_3.l9    ; 0x1614
    cmp ax, strict word 0x17         ; 0x1616
    je short @..api_idx_0004_3.l10   ; 0x1619
    cmp ax, strict word 0x19         ; 0x161b
    je short @..api_idx_0004_3.l8    ; 0x161e
    cmp ax, strict word 0x1f         ; 0x1620
    je short @..api_idx_0004_3.l9    ; 0x1623
    jmp short @..api_idx_0004_3.l11  ; 0x1625
@..api_idx_0004_3.l13:
    mov ax, word [bp - 0x0004]       ; 0x1627
    ret                              ; 0x162a
