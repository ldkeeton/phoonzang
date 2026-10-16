; auto-generated
; asm only
loc_MNRN:
    mov ax, 0                        ; 0x168e
    ret                              ; 0x1691
@..loc_QKKR_1683.l1:
    mov cx, 0x26                     ; 0x1692
    call leaf_loc_RJLR               ; 0x1695
jumptable_1698:
    dw 0x001c                                  ; 0x1698 ; literal
    dw 0x0026                                  ; 0x169a ; literal
    dw 0x0036                                  ; 0x169c ; literal
    dw 0x0038                                  ; 0x169e ; literal
    dw 0x0039                                  ; 0x16a0 ; literal
    dw 0x003d                                  ; 0x16a2 ; literal
    dw 0x0042                                  ; 0x16a4 ; literal
    dw 0x0043                                  ; 0x16a6 ; literal
    dw 0x0046                                  ; 0x16a8 ; literal
    dw 0x0047                                  ; 0x16aa ; literal
    dw 0x0048                                  ; 0x16ac ; literal
    dw 0x0049                                  ; 0x16ae ; literal
    dw 0x004a                                  ; 0x16b0 ; literal
    dw 0x004e                                  ; 0x16b2 ; literal
    dw 0x004f                                  ; 0x16b4 ; literal
    dw 0x0052                                  ; 0x16b6 ; literal
    dw 0x0054                                  ; 0x16b8 ; literal
    dw 0x005a                                  ; 0x16ba ; literal
    dw 0x005c                                  ; 0x16bc ; literal
    dw 0x0062                                  ; 0x16be ; literal
    dw 0x0064                                  ; 0x16c0 ; literal
    dw 0x0065                                  ; 0x16c2 ; literal
    dw 0x0075                                  ; 0x16c4 ; literal
    dw 0x0076                                  ; 0x16c6 ; literal
    dw 0x0077                                  ; 0x16c8 ; literal
    dw 0x0097                                  ; 0x16ca ; literal
    dw 0x00ae                                  ; 0x16cc ; literal
    dw 0x00b2                                  ; 0x16ce ; literal
    dw 0x00b5                                  ; 0x16d0 ; literal
    dw 0x00bd                                  ; 0x16d2 ; literal
    dw 0x00c2                                  ; 0x16d4 ; literal
    dw 0x00c5                                  ; 0x16d6 ; literal
    dw 0x00ca                                  ; 0x16d8 ; literal
    dw 0x00cb                                  ; 0x16da ; literal
    dw 0x00d2                                  ; 0x16dc ; literal
    dw 0x00d3                                  ; 0x16de ; literal
    dw 0x014b                                  ; 0x16e0 ; literal
    dw 0x66d5                                  ; 0x16e2 ; literal
    dw 0x66d5                                  ; 0x16e4 ; literal
    aad 0x66                         ; 0x16e6
    aad 0x66                         ; 0x16e8
    aad 0x66                         ; 0x16ea
    aad 0x66                         ; 0x16ec
    aad 0x66                         ; 0x16ee
    aad 0x66                         ; 0x16f0
    aad 0x66                         ; 0x16f2
    aad 0x66                         ; 0x16f4
    aad 0x66                         ; 0x16f6
    aad 0x66                         ; 0x16f8
    aad 0x66                         ; 0x16fa
    aad 0x66                         ; 0x16fc
    aad 0x66                         ; 0x16fe
    aad 0x66                         ; 0x1700
    aad 0x66                         ; 0x1702
    aad 0x66                         ; 0x1704
    aad 0x66                         ; 0x1706
    aad 0x66                         ; 0x1708
    aad 0x66                         ; 0x170a
    aad 0x66                         ; 0x170c
    aad 0x66                         ; 0x170e
    aad 0x66                         ; 0x1710
    aad 0x66                         ; 0x1712
    aad 0x66                         ; 0x1714
    aad 0x66                         ; 0x1716
    aad 0x66                         ; 0x1718
    aad 0x66                         ; 0x171a
    aad 0x66                         ; 0x171c
    aad 0x66                         ; 0x171e
    aad 0x66                         ; 0x1720
    aad 0x66                         ; 0x1722
    aad 0x66                         ; 0x1724
    aad 0x66                         ; 0x1726
    aad 0x66                         ; 0x1728
    aad 0x66                         ; 0x172a
    jne short loc_1795               ; 0x172c
    cmp word [bp + 0x4], byte 0x3c   ; 0x172e
    jl short @..loc_16e6.l1          ; 0x1732
    cmp word [bp + 0x4], byte 0x78   ; 0x1734
    jge short @..loc_16e6.l1         ; 0x1738
    mov ax, 0                        ; 0x173a
    sub ax, word [bp + 0x4]          ; 0x173d
    ret                              ; 0x1740
@..loc_16e6.l1:
    cmp word [bp + 0x4], strict word 0xb8 ; 0x1741
    jl short @..loc_16e6.l2          ; 0x1746
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1748
    jge short @..loc_16e6.l2         ; 0x174d
    mov ax, 0                        ; 0x174f
    sub ax, word [bp + 0x4]          ; 0x1752
    ret                              ; 0x1755
@..loc_16e6.l2:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1756
    jge short @..loc_16e6.l3         ; 0x175b
    mov ax, word [bp + 0x4]          ; 0x175d
    ret                              ; 0x1760
@..loc_16e6.l3:
    cmp word [bp + 0x4], strict word 0x145 ; 0x1761
    jne short @..loc_16e6.l4         ; 0x1766
    mov ax, 0x13a                    ; 0x1768
    ret                              ; 0x176b
@..loc_16e6.l4:
    cmp word [bp + 0x4], strict word 0x146 ; 0x176c
    jne short @..loc_16e6.l5         ; 0x1771
    mov ax, 0x14b                    ; 0x1773
    ret                              ; 0x1776
@..loc_16e6.l5:
    cmp word [bp + 0x4], strict word 0x13c ; 0x1777
    jl short @..loc_16e6.l6          ; 0x177c
    cmp word [bp + 0x4], strict word 0x14c ; 0x177e
    jg short @..loc_16e6.l6          ; 0x1783
    mov ax, word [bp + 0x4]          ; 0x1785
    ret                              ; 0x1788
@..loc_16e6.l6:
    cmp word [bp + 0x4], strict word 0x1ab ; 0x1789
    jne short @..loc_16e6.l7         ; 0x178e
    mov ax, 0xffae                   ; 0x1790
    ret                              ; 0x1793
@..loc_16e6.l7:
    cmp word [bp + 0x4], strict word 0x1d8 ; 0x1794
    jne short @..loc_16e6.l8         ; 0x1799
