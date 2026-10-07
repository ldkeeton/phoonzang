api_idx_000e:
    mov ax, 0xfff2                   ; 0x162b
    call ds_dispatch_f40b            ; 0x162e
    call math_loc_13c0               ; 0x1631
    call loc_12a2                    ; 0x1634
    mov ax, word [data_8f3e]         ; 0x1637
    mov cx, 6                        ; 0x163a
    shl ax, cl                       ; 0x163d
    mov cx, word [data_8f40]         ; 0x163f
    shl cx, 1                        ; 0x1643
    shl cx, 1                        ; 0x1645
    shl cx, 1                        ; 0x1647
    add ax, cx                       ; 0x1649
    add ax, word [data_8f42]         ; 0x164b
    mov word [bp - 0x0002], ax       ; 0x164f
    mov word [data_91aa], 1          ; 0x1652
    lea ax, word [bp - 0x000c]       ; 0x1658
    push ax                          ; 0x165b
    lea ax, word [bp - 0x000a]       ; 0x165c
    push ax                          ; 0x165f
    push word [bp - 0x0002]          ; 0x1660
    call loc_2f55                    ; 0x1663
    add sp, byte 6                   ; 0x1666
    cmp word [bp - 0x000a], byte 1   ; 0x1669
    je short @..api_idx_000e.l1      ; 0x166d
    cmp word [bp - 0x000a], byte 2   ; 0x166f
    jne short @..api_idx_000e.l2     ; 0x1673
@..api_idx_000e.l1:
    mov ax, word [bp - 0x000c]       ; 0x1675
    cmp ax, word [bp + 0x4]          ; 0x1678
    jne short @..api_idx_000e.l2     ; 0x167b
    mov word [data_91aa], 0          ; 0x167d
@..api_idx_000e.l2:
    mov ax, 1                        ; 0x1683
    push ax                          ; 0x1686
    push word [bp + 0x4]             ; 0x1687
    call loc_1240                    ; 0x168a
    add sp, byte 4                   ; 0x168d
    push word [data_8f44]            ; 0x1690
    push word [data_8f46]            ; 0x1694
    mov ax, data_8f3e                ; 0x1698
    push ax                          ; 0x169b
    mov ax, data_8f40                ; 0x169c
    push ax                          ; 0x169f
    mov ax, data_8f42                ; 0x16a0
    push ax                          ; 0x16a3
    call api_idx_0004_6              ; 0x16a4
    add sp, byte 0x0a                ; 0x16a7
    test ax, ax                      ; 0x16aa
    je short @..api_idx_000e.l3      ; 0x16ac
    mov ax, 4                        ; 0x16ae
    push ax                          ; 0x16b1
    mov ax, 0x7e6                    ; 0x16b2
    push ax                          ; 0x16b5
    call api_idx_0002_9              ; 0x16b6
    add sp, byte 4                   ; 0x16b9
    mov ax, 1                        ; 0x16bc
    ret                              ; 0x16bf
