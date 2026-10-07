dos_print_str:
    push bp                          ; 0x14d8
    mov bp, sp                       ; 0x14d9
    sub sp, byte 0x0e                ; 0x14db
    push ds                          ; 0x14de
    push es                          ; 0x14df
    push di                          ; 0x14e0
    push si                          ; 0x14e1
    mov ax, ds                       ; 0x14e2
    mov es, ax                       ; 0x14e4
    cld                              ; 0x14e6
    mov ax, word [bp + 0xc]          ; 0x14e7
    shl ax, 1                        ; 0x14ea
    mov word [bp - 0x0004], ax       ; 0x14ec
    mov bx, 0x10e7                   ; 0x14ef
    add bx, ax                       ; 0x14f2
    mov bx, word [cs:bx]             ; 0x14f4
    or bx, bx                        ; 0x14f7
    jne short @..dos_print_str.l1    ; 0x14f9
    mov ax, cs                       ; 0x14fb
    mov ds, ax                       ; 0x14fd
    mov dx, 0x160b                   ; 0x14ff
    mov ah, 9                        ; 0x1502
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x1506
    int 0x21 ; DOS function dispatcher
    or ax, 0x70a                     ; 0x150b
    dec bp                           ; 0x150e
    inc cx                           ; 0x150f
    pop dx                           ; 0x1510
    inc bp                           ; 0x1511
    and byte [bp + di + 0x45], dl    ; 0x1512
    push sp                          ; 0x1515
    and byte [di + 0x52], al         ; 0x1516
    push dx                          ; 0x1519
    dec di                           ; 0x151a
    push dx                          ; 0x151b
    add byte [cs:bp + si], cl        ; 0x151c
    db 0x24
@..dos_print_str.l1:
    db 0x4b
    mov cl, 2                        ; 0x1521
    shl bx, cl                       ; 0x1523
    add bx, strict word 0x10fb       ; 0x1525
    mov ax, word [cs:bx]             ; 0x1529
    mov word [bp - 0x0002], ax       ; 0x152c
    mov ax, word [bp + 0x12]         ; 0x152f
    cmp ax, strict word 0xffff       ; 0x1532
    je short @..dos_print_str.l2     ; 0x1535
    jmp near @..dos_print_str.l12    ; 0x1537
@..dos_print_str.l2:
    mov bx, word [bp + 0xe]          ; 0x153a
    mov ax, 5                        ; 0x153d
    mul bx                           ; 0x1540
    mov bx, word [bp - 0x0004]       ; 0x1542
    add bx, strict word 0x27d        ; 0x1545
    add ax, word [cs:bx]             ; 0x1549
    mov si, ax                       ; 0x154c
    mov ax, word [cs:data_01e5]      ; 0x154e
    mov es, ax                       ; 0x1552
    mov ax, word [cs:data_01e1]      ; 0x1554
    add ax, word [bp - 0x0002]       ; 0x1558
    mov ds, ax                       ; 0x155b
    xor ah, ah                       ; 0x155d
    mov al, byte [si + 0x4]          ; 0x155f
    or ax, ax                        ; 0x1562
    jne short @..dos_print_str.l3    ; 0x1564
    jmp near @..local.l42            ; 0x1566
@..dos_print_str.l3:
    mov cl, data_0003                ; 0x1569
    shl ax, cl                       ; 0x156b
    mov word [bp - 0x0004], ax       ; 0x156d
    mov al, byte [si + 0x1]          ; 0x1570
    cbw                              ; 0x1573
    mov bl, byte [si + 0x3]          ; 0x1574
    xor bh, bh                       ; 0x1577
    add ax, bx                       ; 0x1579
    mov cl, data_0003                ; 0x157b
    shl ax, cl                       ; 0x157d
    mov di, ax                       ; 0x157f
    mov al, byte [si + 0x2]          ; 0x1581
    mov cx, 0x140                    ; 0x1584
    mul cx                           ; 0x1587
    add di, ax                       ; 0x1589
    mov al, byte [si]                ; 0x158b
    mov bl, 6                        ; 0x158d
    mul bl                           ; 0x158f
    add ax, word [cs:data_027b]      ; 0x1591
    mov bx, ax                       ; 0x1596
    xor ax, ax                       ; 0x1598
    mov al, byte [bx + 0x4]          ; 0x159a
    mov cl, data_0003                ; 0x159d
    shl ax, cl                       ; 0x159f
    mov word [bp - 0x0006], ax       ; 0x15a1
    mov ax, word [bx + 0x2]          ; 0x15a4
    mov dl, byte [si + 0x3]          ; 0x15a7
    xor dh, dh                       ; 0x15aa
    shl dx, 1                        ; 0x15ac
    shl dx, 1                        ; 0x15ae
    shl dx, 1                        ; 0x15b0
    add ax, dx                       ; 0x15b2
    xor cx, cx                       ; 0x15b4
    mov cl, byte [bx + 0x5]          ; 0x15b6
    mov dx, ds                       ; 0x15b9
    add dx, word [bx]                ; 0x15bb
    mov ds, dx                       ; 0x15bd
@..dos_print_str.l4:
    push cx                          ; 0x15bf
    mov cx, word [bp - 0x0004]       ; 0x15c0
    push si                          ; 0x15c3
    push ax                          ; 0x15c4
    push di                          ; 0x15c5
    xchg si, ax                      ; 0x15c6
    xor ah, ah                       ; 0x15c7
    cmp word [bp + 0x10], byte 0     ; 0x15c9
    je short @..dos_print_str.l10    ; 0x15cd
    cmp word [bp + 0x10], byte 2     ; 0x15cf
    je short @..dos_print_str.l8     ; 0x15d3
    cmp word [bp + 0x10], byte 3     ; 0x15d5
    je short @..dos_print_str.l6     ; 0x15d9
@..dos_print_str.l5:
    lodsb                            ; 0x15db
    or al, byte [es:di]              ; 0x15dc
    stosb                            ; 0x15df
    loop @..dos_print_str.l5         ; 0x15e0
    jmp short @..dos_print_str.l11   ; 0x15e2
@..dos_print_str.l6:
    lodsb                            ; 0x15e4
    cmp al, 0xff                     ; 0x15e5
    je short @..dos_print_str.l7     ; 0x15e7
    mov byte [es:di], ah             ; 0x15e9
@..dos_print_str.l7:
    inc di                           ; 0x15ec
    loop @..dos_print_str.l6         ; 0x15ed
    jmp short @..dos_print_str.l11   ; 0x15ef
@..dos_print_str.l8:
    lodsb                            ; 0x15f1
    cmp al, 0xff                     ; 0x15f2
    je short @..dos_print_str.l9     ; 0x15f4
    mov byte [es:di], al             ; 0x15f6
@..dos_print_str.l9:
    inc di                           ; 0x15f9
    loop @..dos_print_str.l8         ; 0x15fa
    jmp short @..dos_print_str.l11   ; 0x15fc
@..dos_print_str.l10:
    rep movsb                        ; 0x15fe
@..dos_print_str.l11:
    pop di                           ; 0x1600
    add di, strict word 0x140        ; 0x1601
    pop ax                           ; 0x1605
    mov dx, word [bp - 0x0006]       ; 0x1606
    add ax, dx                       ; 0x1609
    pop si                           ; 0x160b
    pop cx                           ; 0x160c
    loop @..dos_print_str.l4         ; 0x160d
    jmp near @..local.l42            ; 0x160f
@..dos_print_str.l12:
    mov bx, word [bp + 0xe]          ; 0x1612
    mov ax, 5                        ; 0x1615
    mul bx                           ; 0x1618
    mov bx, word [bp - 0x0004]       ; 0x161a
    add bx, strict word 0x27d        ; 0x161d
    add ax, word [cs:bx]             ; 0x1621
    mov si, ax                       ; 0x1624
    mov ax, word [cs:data_01e5]      ; 0x1626
    mov es, ax                       ; 0x162a
    mov ax, word [cs:data_01e1]      ; 0x162c
    add ax, word [bp - 0x0002]       ; 0x1630
    mov ds, ax                       ; 0x1633
    mov al, byte [si]                ; 0x1635
    mov bl, 6                        ; 0x1637
    mul bl                           ; 0x1639
    add ax, word [cs:data_027b]      ; 0x163b
    mov word [bp - 0x0002], ax       ; 0x1640
    mov ax, word [bp + 0x12]         ; 0x1643
    mov bx, 5                        ; 0x1646
    mul bx                           ; 0x1649
    mov bx, word [bp - 0x0004]       ; 0x164b
    add bx, strict word 0x27d        ; 0x164e
    add ax, word [cs:bx]             ; 0x1652
    mov si, ax                       ; 0x1655
    xor ah, ah                       ; 0x1657
    mov al, byte [si + 0x4]          ; 0x1659
    or ax, ax                        ; 0x165c
    jne short @..dos_print_str.l13   ; 0x165e
    jmp near @..local.l42            ; 0x1660
@..dos_print_str.l13:
    mov cl, data_0003                ; 0x1663
    shl ax, cl                       ; 0x1665
    mov word [bp - 0x0004], ax       ; 0x1667
    mov al, byte [si + 0x1]          ; 0x166a
    cbw                              ; 0x166d
    mov bl, byte [si + 0x3]          ; 0x166e
    xor bh, bh                       ; 0x1671
    add ax, bx                       ; 0x1673
    mov cl, data_0003                ; 0x1675
    shl ax, cl                       ; 0x1677
    mov di, ax                       ; 0x1679
    mov al, byte [si + 0x2]          ; 0x167b
    mov cx, 0x140                    ; 0x167e
    mul cx                           ; 0x1681
    add di, ax                       ; 0x1683
    mov bx, word [bp - 0x0002]       ; 0x1685
    xor ax, ax                       ; 0x1688
    mov al, byte [bx + 0x4]          ; 0x168a
    mov cl, data_0003                ; 0x168d
    shl ax, cl                       ; 0x168f
    mov word [bp - 0x0006], ax       ; 0x1691
    mov cl, data_0003                ; 0x1694
    mov ax, word [bx + 0x2]          ; 0x1696
    xor dh, dh                       ; 0x1699
    mov dl, byte [bx + 0x4]          ; 0x169b
    shl dx, cl                       ; 0x169e
    dec dx                           ; 0x16a0
    add ax, dx                       ; 0x16a1
    xor dx, dx                       ; 0x16a3
    mov dl, byte [si + 0x3]          ; 0x16a5
    shl dx, cl                       ; 0x16a8
    sub ax, dx                       ; 0x16aa
    xor cx, cx                       ; 0x16ac
    mov cl, byte [bx + 0x5]          ; 0x16ae
    mov dx, ds                       ; 0x16b1
    add dx, word [bx]                ; 0x16b3
    mov ds, dx                       ; 0x16b5
@..dos_print_str.l14:
    push cx                          ; 0x16b7
    mov cx, word [bp - 0x0004]       ; 0x16b8
    push si                          ; 0x16bb
    push ax                          ; 0x16bc
    push di                          ; 0x16bd
    xchg si, ax                      ; 0x16be
    xor ah, ah                       ; 0x16bf
    cmp word [bp + 0x10], byte 0     ; 0x16c1
    je short @..dos_con_loc_1501.l5  ; 0x16c5
    cmp word [bp + 0x10], byte 2     ; 0x16c7
    je short @..dos_con_loc_1501.l3  ; 0x16cb
    cmp word [bp + 0x10], byte 3     ; 0x16cd
    je short @..dos_con_loc_1501.l1  ; 0x16d1
@..dos_print_str.l15:
    mov al, byte [si]                ; 0x16d3
    dec si                           ; 0x16d5
