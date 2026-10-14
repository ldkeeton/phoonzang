; auto-generated
api_idx_000e:
    mov ax, 0xfff2                   ; 0x162b
    call aztec_csav                  ; 0x162e
    call loc_13c0                    ; 0x1631
    call loc_12a2                    ; 0x1634
    mov ax, word [bss_8f3e]          ; 0x1637
    mov cx, 6                        ; 0x163a
    shl ax, cl                       ; 0x163d
    mov cx, word [bss_8f40]          ; 0x163f
    shl cx, 1                        ; 0x1643
    shl cx, 1                        ; 0x1645
    shl cx, 1                        ; 0x1647
    add ax, cx                       ; 0x1649
    add ax, word [bss_8f42]          ; 0x164b
    mov word [bp - 0x0002], ax       ; 0x164f
    mov word [bss_91aa], 1           ; 0x1652
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
    mov word [bss_91aa], 0           ; 0x167d
@..api_idx_000e.l2:
    mov ax, 1                        ; 0x1683
    push ax                          ; 0x1686
    push word [bp + 0x4]             ; 0x1687
    call loc_1240                    ; 0x168a
    add sp, byte 4                   ; 0x168d
    push word [bss_8f44]             ; 0x1690
    push word [bss_8f46]             ; 0x1694
    mov ax, 0x8f3e                   ; 0x1698
    push ax                          ; 0x169b
    mov ax, 0x8f40                   ; 0x169c
    push ax                          ; 0x169f
    mov ax, 0x8f42                   ; 0x16a0
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
@..api_idx_000e.l3:
    cmp word [bss_919e], byte 0      ; 0x16c0
    jne short @..api_idx_000e.l4     ; 0x16c5
    call loc_13c0                    ; 0x16c7
@..api_idx_000e.l4:
    call api_idx_0004_3              ; 0x16ca
    jmp near @..api_idx_000e.l13     ; 0x16cd
@..api_idx_000e.l5:
    call api_idx_0004_2              ; 0x16d0
    jmp near @..api_idx_000e.l17     ; 0x16d3
@..api_idx_000e.l6:
    mov ax, 4                        ; 0x16d6
    push ax                          ; 0x16d9
    mov ax, 0x809                    ; 0x16da
    push ax                          ; 0x16dd
    call api_idx_0002_9              ; 0x16de
    add sp, byte 4                   ; 0x16e1
    mov ax, 1                        ; 0x16e4
    ret                              ; 0x16e7
@..api_idx_000e.l7:
    mov word [bp - 0x000e], 0        ; 0x16e8
    jmp near @..api_idx_000e.l10     ; 0x16ed
@..api_idx_000e.l8:
    mov ax, 0x248                    ; 0x16f0
    imul word [bp - 0x000e]          ; 0x16f3
    mov bx, ax                       ; 0x16f6
    cmp byte [bx + 0x5e2f], 0        ; 0x16f8
    jne short @..api_idx_000e.l9     ; 0x16fd
    cmp byte [bx + 0x5d83], 0        ; 0x16ff
    jne short @..api_idx_000e.l9     ; 0x1704
    mov ax, 0x64                     ; 0x1706
    push ax                          ; 0x1709
    call ds_app_09f0                 ; 0x170a
    pop cx                           ; 0x170d
    push ax                          ; 0x170e
    mov ax, 0x248                    ; 0x170f
    imul word [bp - 0x000e]          ; 0x1712
    mov bx, ax                       ; 0x1715
    mov al, byte [bx + 0x5da5]       ; 0x1717
    sub ah, ah                       ; 0x171b
    mov cx, ax                       ; 0x171d
    pop ax                           ; 0x171f
    cmp ax, cx                       ; 0x1720
    jle short @..api_idx_000e.l9     ; 0x1722
    mov ax, 0xfa                     ; 0x1724
    push ax                          ; 0x1727
    mov ax, 0                        ; 0x1728
    push ax                          ; 0x172b
    mov ax, 5                        ; 0x172c
    push ax                          ; 0x172f
    call ds_app_09f0                 ; 0x1730
    pop cx                           ; 0x1733
    push ax                          ; 0x1734
    mov ax, 0x248                    ; 0x1735
    imul word [bp - 0x000e]          ; 0x1738
    mov bx, ax                       ; 0x173b
    mov al, byte [bx + 0x5d5c]       ; 0x173d
    sub ah, ah                       ; 0x1741
    mov cx, ax                       ; 0x1743
    pop ax                           ; 0x1745
    add ax, cx                       ; 0x1746
    add ax, strict word 5            ; 0x1748
    push ax                          ; 0x174b
    call clamp                       ; 0x174c
    add sp, byte 6                   ; 0x174f
    push ax                          ; 0x1752
    mov ax, 0x248                    ; 0x1753
    imul word [bp - 0x000e]          ; 0x1756
    mov bx, ax                       ; 0x1759
    pop ax                           ; 0x175b
    mov byte [bx + 0x5d5c], al       ; 0x175c
    mov ax, 1                        ; 0x1760
    push ax                          ; 0x1763
    push word [bp - 0x000e]          ; 0x1764
    call ds_app_1d81                 ; 0x1767
    add sp, byte 4                   ; 0x176a
@..api_idx_000e.l9:
    inc word [bp - 0x000e]           ; 0x176d
@..api_idx_000e.l10:
    mov ax, word [bp - 0x000e]       ; 0x1770
    cmp ax, word [bss_69c8]          ; 0x1773
    jge short @..api_idx_000e.l11    ; 0x1777
    jmp near @..api_idx_000e.l8      ; 0x1779
@..api_idx_000e.l11:
    jmp short @..api_idx_000e.l17    ; 0x177c
@..api_idx_000e.l12:
    mov ax, 4                        ; 0x177e
    push ax                          ; 0x1781
    mov ax, 0x7e6                    ; 0x1782
    push ax                          ; 0x1785
    call api_idx_0002_9              ; 0x1786
    add sp, byte 4                   ; 0x1789
    mov ax, 1                        ; 0x178c
    ret                              ; 0x178f
@..api_idx_000e.l13:
    cmp ax, strict word 1            ; 0x1790
    jne short @..api_idx_000e.l14    ; 0x1793
    jmp near @..api_idx_000e.l5      ; 0x1795
@..api_idx_000e.l14:
    cmp ax, strict word 2            ; 0x1798
    jne short @..api_idx_000e.l15    ; 0x179b
    jmp near @..api_idx_000e.l6      ; 0x179d
@..api_idx_000e.l15:
    cmp ax, strict word 3            ; 0x17a0
    jne short @..api_idx_000e.l16    ; 0x17a3
    jmp near @..api_idx_000e.l7      ; 0x17a5
@..api_idx_000e.l16:
    cmp ax, strict word 4            ; 0x17a8
    je short @..api_idx_000e.l12     ; 0x17ab
@..api_idx_000e.l17:
    mov ax, word [bss_8f3e]          ; 0x17ad
    mov cx, 6                        ; 0x17b0
    shl ax, cl                       ; 0x17b3
    mov cx, word [bss_8f40]          ; 0x17b5
    shl cx, 1                        ; 0x17b9
    shl cx, 1                        ; 0x17bb
    shl cx, 1                        ; 0x17bd
    add ax, cx                       ; 0x17bf
    add ax, word [bss_8f42]          ; 0x17c1
    mov word [bp - 0x0002], ax       ; 0x17c5
    mov ax, 1                        ; 0x17c8
    push ax                          ; 0x17cb
    push word [bp - 0x0002]          ; 0x17cc
    mov ax, 0x8afe                   ; 0x17cf
    push ax                          ; 0x17d2
    call set_bitmap_bit              ; 0x17d3
    add sp, byte 6                   ; 0x17d6
    mov bx, word [bss_0e12]          ; 0x17d9
    mov si, word [bss_8f3e]          ; 0x17dd
    mov al, byte [bx + si + 0xb40]   ; 0x17e1
    sub ah, ah                       ; 0x17e5
    mov word [bss_8d12], ax          ; 0x17e7
    mov ax, 0                        ; 0x17ea
    ret                              ; 0x17ed
