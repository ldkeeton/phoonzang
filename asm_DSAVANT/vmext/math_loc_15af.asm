math_loc_15af:
    mov ax, 0xfdae                   ; 0x15af
    call ds_dispatch_f40b            ; 0x15b2
    mov ax, word [bp + 0x4]          ; 0x15b5
    mov cx, 2                        ; 0x15b8
    cwd                              ; 0x15bb
    idiv cx                          ; 0x15bc
    mov ax, dx                       ; 0x15be
    mov cx, 0xfc                     ; 0x15c0
    imul cx                          ; 0x15c3
    add ax, strict word 5            ; 0x15c5
    mov word [bp - 0x0250], ax       ; 0x15c8
    mov ax, word [bp + 0x4]          ; 0x15cc
    mov cx, 2                        ; 0x15cf
    cwd                              ; 0x15d2
    idiv cx                          ; 0x15d3
    mov cx, 0x2d                     ; 0x15d5
    imul cx                          ; 0x15d8
    add ax, strict word 0x12         ; 0x15da
    mov word [bp - 0x0252], ax       ; 0x15dd
    mov ax, 0x17                     ; 0x15e1
    push ax                          ; 0x15e4
    mov ax, word [bp - 0x0252]       ; 0x15e5
    add ax, strict word 0x24         ; 0x15e9
    push ax                          ; 0x15ec
    mov ax, 0x248                    ; 0x15ed
    imul word [bp + 0x4]             ; 0x15f0
    add ax, 0x5bf4                   ; 0x15f3
    push ax                          ; 0x15f6
    call ds_dispatch_fa90            ; 0x15f7
    pop cx                           ; 0x15fa
    mov cx, 6                        ; 0x15fb
    imul cx                          ; 0x15fe
    add ax, word [bp - 0x0250]       ; 0x1600
    inc ax                           ; 0x1604
    inc ax                           ; 0x1605
    inc ax                           ; 0x1606
    push ax                          ; 0x1607
    mov ax, word [bp - 0x0252]       ; 0x1608
    add ax, strict word 0x20         ; 0x160c
    push ax                          ; 0x160f
    mov ax, word [bp - 0x0250]       ; 0x1610
    inc ax                           ; 0x1614
    inc ax                           ; 0x1615
    inc ax                           ; 0x1616
    push ax                          ; 0x1617
    call ds_dispatch_e901            ; 0x1618
    add sp, byte 0x0a                ; 0x161b
    mov ax, 0x17                     ; 0x161e
    push ax                          ; 0x1621
    mov ax, 1                        ; 0x1622
    push ax                          ; 0x1625
    call ds_dispatch_e823            ; 0x1626
    add sp, byte 4                   ; 0x1629
    mov ax, word [bp - 0x0252]       ; 0x162c
    add ax, strict word 0x20         ; 0x1630
    push ax                          ; 0x1633
    mov ax, word [bp - 0x0250]       ; 0x1634
    add ax, strict word 4            ; 0x1638
    push ax                          ; 0x163b
    call ds_dispatch_e809            ; 0x163c
    add sp, byte 4                   ; 0x163f
    mov ax, 0                        ; 0x1642
    push ax                          ; 0x1645
    mov ax, 0x248                    ; 0x1646
    imul word [bp + 0x4]             ; 0x1649
    add ax, 0x5bf4                   ; 0x164c
    push ax                          ; 0x164f
    call ds_dispatch_e84e            ; 0x1650
    add sp, byte 4                   ; 0x1653
    mov ax, word [bp - 0x0252]       ; 0x1656
    add ax, strict word 0x24         ; 0x165a
    push ax                          ; 0x165d
    mov ax, word [bp - 0x0250]       ; 0x165e
    add ax, strict word 0x2d         ; 0x1662
    push ax                          ; 0x1665
    mov ax, word [bp - 0x0252]       ; 0x1666
    add ax, strict word 0x20         ; 0x166a
    push ax                          ; 0x166d
    mov ax, word [bp - 0x0250]       ; 0x166e
    inc ax                           ; 0x1672
    inc ax                           ; 0x1673
    inc ax                           ; 0x1674
    push ax                          ; 0x1675
    call ds_dispatch_e8da            ; 0x1676
    add sp, byte 8                   ; 0x1679
    call ds_dispatch_ceb1            ; 0x167c
    mov word [bp - 0x0002], ax       ; 0x167f
    cmp ax, strict word 0xffff       ; 0x1682
    je short @..math_loc_15af.l1     ; 0x1685
    cmp ax, word [bp + 0x4]          ; 0x1687
    jne short @..math_loc_15af.l2    ; 0x168a
@..math_loc_15af.l1:
    mov ax, 1                        ; 0x168c
    push ax                          ; 0x168f
    push word [bp + 0x4]             ; 0x1690
    call ds_dispatch_cb3a            ; 0x1693
    add sp, byte 4                   ; 0x1696
    ret                              ; 0x1699
