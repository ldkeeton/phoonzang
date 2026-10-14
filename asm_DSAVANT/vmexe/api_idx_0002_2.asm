; auto-generated
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x1642
    call aztec_csav                  ; 0x1645
    push word [bp + 0x4]             ; 0x1648
    call aztec_strlen                ; 0x164b
    pop cx                           ; 0x164e
    mov cx, 6                        ; 0x164f
    imul cx                          ; 0x1652
    mov cx, 2                        ; 0x1654
    cwd                              ; 0x1657
    idiv cx                          ; 0x1658
    mov cx, ax                       ; 0x165a
    mov ax, 0xa0                     ; 0x165c
    sub ax, cx                       ; 0x165f
    mov word [bp - 0x0002], ax       ; 0x1661
    push word [bp + 0x8]             ; 0x1664
    push ax                          ; 0x1667
    call loc_15f9                    ; 0x1668
    add sp, byte 4                   ; 0x166b
    push word [bp + 0x6]             ; 0x166e
    push word [bp + 0x4]             ; 0x1671
    call loc_1613                    ; 0x1674
    add sp, byte 4                   ; 0x1677
    mov ax, 7                        ; 0x167a
    imul word [bp + 0x8]             ; 0x167d
    add ax, 0xa2                     ; 0x1680
    push ax                          ; 0x1683
    mov ax, 0x13a                    ; 0x1684
    push ax                          ; 0x1687
    mov ax, 7                        ; 0x1688
    imul word [bp + 0x8]             ; 0x168b
    add ax, 0x9c                     ; 0x168e
    push ax                          ; 0x1691
    mov ax, 8                        ; 0x1692
    push ax                          ; 0x1695
    call thunk_4                     ; 0x1696
    add sp, byte 8                   ; 0x1699
    ret                              ; 0x169c
