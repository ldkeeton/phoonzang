; auto-generated
api_idx_004c_MUGV:
    mov ax, 0xffb4                   ; 0x156e
    call aztec_csav                  ; 0x1571
    mov ax, 0                        ; 0x1574
    push ax                          ; 0x1577
    push word [bp + 0x6]             ; 0x1578
    lea ax, word [bp - 0x004c]       ; 0x157b
    push ax                          ; 0x157e
    mov ax, 1                        ; 0x157f
    push ax                          ; 0x1582
    call ds_app_file_MPPM            ; 0x1583
    add sp, byte 8                   ; 0x1586
    cmp word [bp + 0xa], byte 0xfe   ; 0x1589
    jne short @..api_idx_004c_MUGV.l1 ; 0x158d
    mov al, byte [bp - 0x0030]       ; 0x158f
    sub ah, ah                       ; 0x1592
    push ax                          ; 0x1594
    mov al, byte [bp - 0x002f]       ; 0x1595
    sub ah, ah                       ; 0x1598
    mov cx, ax                       ; 0x159a
    pop ax                           ; 0x159c
    imul cx                          ; 0x159d
    add ax, word [bp - 0x0032]       ; 0x159f
    mov bx, word [bp + 0x8]          ; 0x15a2
    mov byte [bx + 0x6], al          ; 0x15a5
    jmp short @..api_idx_004c_MUGV.l3 ; 0x15a8
@..api_idx_004c_MUGV.l1:
    cmp word [bp + 0xa], byte 0xff   ; 0x15aa
    jne short @..api_idx_004c_MUGV.l2 ; 0x15ae
    push word [bp - 0x0030]          ; 0x15b0
    push word [bp - 0x0032]          ; 0x15b3
    call ds_app_QSQR                 ; 0x15b6
    add sp, byte 4                   ; 0x15b9
    mov bx, word [bp + 0x8]          ; 0x15bc
    mov byte [bx + 0x6], al          ; 0x15bf
    jmp short @..api_idx_004c_MUGV.l3 ; 0x15c2
@..api_idx_004c_MUGV.l2:
    mov al, byte [bp + 0xa]          ; 0x15c4
    mov bx, word [bp + 0x8]          ; 0x15c7
    mov byte [bx + 0x6], al          ; 0x15ca
@..api_idx_004c_MUGV.l3:
    mov ax, word [bp + 0x6]          ; 0x15cd
    mov bx, word [bp + 0x8]          ; 0x15d0
    mov word [bx], ax                ; 0x15d3
    mov al, byte [bp - 0x0014]       ; 0x15d5
    mov bx, word [bp + 0x8]          ; 0x15d8
    mov byte [bx + 0x4], al          ; 0x15db
    mov al, byte [bp - 0x0013]       ; 0x15de
    mov bx, word [bp + 0x8]          ; 0x15e1
    mov byte [bx + 0x5], al          ; 0x15e4
    mov ax, word [bp - 0x0028]       ; 0x15e7
    mov bx, word [bp + 0x8]          ; 0x15ea
    mov word [bx + 0x2], ax          ; 0x15ed
    mov al, byte [bp - 0x0024]       ; 0x15f0
    mov bx, word [bp + 0x8]          ; 0x15f3
    mov byte [bx + 0x8], al          ; 0x15f6
    mov al, byte [bp - 0x0023]       ; 0x15f9
    mov bx, word [bp + 0x8]          ; 0x15fc
    mov byte [bx + 0x9], al          ; 0x15ff
    mov al, byte [bp - 0x0010]       ; 0x1602
    mov bx, word [bp + 0x8]          ; 0x1605
    mov byte [bx + 0xa], al          ; 0x1608
    mov al, byte [bp - 0x000c]       ; 0x160b
    mov bx, word [bp + 0x8]          ; 0x160e
    mov byte [bx + 0xb], al          ; 0x1611
    mov ax, 0                        ; 0x1614
    cmp word [bp + 0xc], byte 0      ; 0x1617
    je short @..api_idx_004c_MUGV.l4 ; 0x161b
    mov ax, 0x80                     ; 0x161d
@..api_idx_004c_MUGV.l4:
    mov bx, word [bp + 0x8]          ; 0x1620
    mov byte [bx + 0x7], al          ; 0x1623
    mov al, byte [bp - 0x0015]       ; 0x1626
    sub ah, ah                       ; 0x1629
    test ax, 8                       ; 0x162b
    je short @..api_idx_004c_MUGV.l5 ; 0x162e
    mov bx, word [bp + 0x8]          ; 0x1630
    or byte [bx + 0x7], 4            ; 0x1633
@..api_idx_004c_MUGV.l5:
    mov al, byte [bp - 0x0015]       ; 0x1637
    sub ah, ah                       ; 0x163a
    test ax, 4                       ; 0x163c
    je short @..api_idx_004c_MUGV.l6 ; 0x163f
    mov bx, word [bp + 0x8]          ; 0x1641
    or byte [bx + 0x7], 8            ; 0x1644
@..api_idx_004c_MUGV.l6:
    mov al, byte [bp - 0x0015]       ; 0x1648
    sub ah, ah                       ; 0x164b
    test ax, 0x10                    ; 0x164d
    je short @..api_idx_004c_MUGV.l7 ; 0x1650
    mov bx, word [bp + 0x8]          ; 0x1652
    or byte [bx + 0x7], 0x10         ; 0x1655
@..api_idx_004c_MUGV.l7:
    mov al, byte [bp - 0x0015]       ; 0x1659
    sub ah, ah                       ; 0x165c
    test ax, 0x20                    ; 0x165e
    je short @..api_idx_004c_MUGV.l8 ; 0x1661
    mov bx, word [bp + 0x8]          ; 0x1663
    or byte [bx + 0x7], 0x20         ; 0x1666
@..api_idx_004c_MUGV.l8:
    mov al, byte [bp - 0x0015]       ; 0x166a
    sub ah, ah                       ; 0x166d
    test ax, 2                       ; 0x166f
    je short @..api_idx_004c_MUGV.l9 ; 0x1672
    mov bx, word [bp + 0x8]          ; 0x1674
    or byte [bx + 0x7], 0x40         ; 0x1677
@..api_idx_004c_MUGV.l9:
    push word [bp + 0x4]             ; 0x167b
    call ds_app_OOUT                 ; 0x167e
    pop cx                           ; 0x1681
    ret                              ; 0x1682
