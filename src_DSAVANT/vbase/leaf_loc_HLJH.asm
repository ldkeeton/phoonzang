; auto-generated
leaf_loc_HLJH:
    cmp word [bp + 0x4], byte 0x3c   ; 0x172e
    jl short @..leaf_loc_HLJH.l1     ; 0x1732
    cmp word [bp + 0x4], byte 0x78   ; 0x1734
    jge short @..leaf_loc_HLJH.l1    ; 0x1738
    mov ax, 0                        ; 0x173a
    sub ax, word [bp + 0x4]          ; 0x173d
    ret                              ; 0x1740
@..leaf_loc_HLJH.l1:
    cmp word [bp + 0x4], strict word 0xb8 ; 0x1741
    jl short @..leaf_loc_HLJH.l2     ; 0x1746
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1748
    jge short @..leaf_loc_HLJH.l2    ; 0x174d
    mov ax, 0                        ; 0x174f
    sub ax, word [bp + 0x4]          ; 0x1752
    ret                              ; 0x1755
@..leaf_loc_HLJH.l2:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x1756
    jge short @..leaf_loc_HLJH.l3    ; 0x175b
    mov ax, word [bp + 0x4]          ; 0x175d
    ret                              ; 0x1760
@..leaf_loc_HLJH.l3:
    cmp word [bp + 0x4], strict word 0x145 ; 0x1761
    jne short @..leaf_loc_HLJH.l4    ; 0x1766
    mov ax, 0x13a                    ; 0x1768
    ret                              ; 0x176b
@..leaf_loc_HLJH.l4:
    cmp word [bp + 0x4], strict word 0x146 ; 0x176c
    jne short @..leaf_loc_HLJH.l5    ; 0x1771
    mov ax, 0x14b                    ; 0x1773
    ret                              ; 0x1776
@..leaf_loc_HLJH.l5:
    cmp word [bp + 0x4], strict word 0x13c ; 0x1777
    jl short @..leaf_loc_HLJH.l6     ; 0x177c
    cmp word [bp + 0x4], strict word 0x14c ; 0x177e
    jg short @..leaf_loc_HLJH.l6     ; 0x1783
    mov ax, word [bp + 0x4]          ; 0x1785
    ret                              ; 0x1788
@..leaf_loc_HLJH.l6:
    cmp word [bp + 0x4], strict word 0x1ab ; 0x1789
    jne short @..leaf_loc_HLJH.l7    ; 0x178e
    mov ax, 0xffae                   ; 0x1790
    ret                              ; 0x1793
@..leaf_loc_HLJH.l7:
    cmp word [bp + 0x4], strict word 0x1d8 ; 0x1794
    jne short @..leaf_loc_HLJH.l8    ; 0x1799
    mov ax, 0xf5                     ; 0x179b
    ret                              ; 0x179e
@..leaf_loc_HLJH.l8:
    cmp word [bp + 0x4], strict word 0x1d9 ; 0x179f
    jne short @..leaf_loc_HLJH.l9    ; 0x17a4
    mov ax, 0xf4                     ; 0x17a6
    ret                              ; 0x17a9
@..leaf_loc_HLJH.l9:
    mov ax, word [bp + 0x4]          ; 0x17aa
    jmp short @..leaf_loc_HLJH.l11   ; 0x17ad
loc_OTKL:
    cmp word [bp + 0x4], strict word 0xe3 ; 0x17af
    jl short @..leaf_loc_HLJH.l10    ; 0x17b4
    cmp word [bp + 0x4], strict word 0xfe ; 0x17b6
    jge short @..leaf_loc_HLJH.l10   ; 0x17bb
    mov ax, 0                        ; 0x17bd
    sub ax, word [bp + 0x4]          ; 0x17c0
    ret                              ; 0x17c3
@..leaf_loc_HLJH.l10:
    mov ax, word [bp + 0x4]          ; 0x17c4
    ret                              ; 0x17c7
@..leaf_loc_HLJH.l11:
    mov cx, 0x14                     ; 0x17c8
    call leaf_loc_RJLR               ; 0x17cb
jumptable_17ce:
    dw 0x00ea                                  ; 0x17ce ; literal
    dw 0x00ec                                  ; 0x17d0 ; literal
    dw 0x00f1                                  ; 0x17d2 ; literal
    dw 0x00f5                                  ; 0x17d4 ; literal
    dw 0x00fc                                  ; 0x17d6 ; literal
    dw 0x00fd                                  ; 0x17d8 ; literal
    dw 0x0104                                  ; 0x17da ; literal
    dw 0x0105                                  ; 0x17dc ; literal
    dw 0x0106                                  ; 0x17de ; literal
    dw 0x0107                                  ; 0x17e0 ; literal
    dw 0x0116                                  ; 0x17e2 ; literal
    dw 0x011c                                  ; 0x17e4 ; literal
    dw 0x012d                                  ; 0x17e6 ; literal
    dw 0x0131                                  ; 0x17e8 ; literal
    dw 0x0132                                  ; 0x17ea ; literal
    dw 0x0133                                  ; 0x17ec ; literal
    dw 0x0134                                  ; 0x17ee ; literal
    dw 0x0135                                  ; 0x17f0 ; literal
    dw 0x0139                                  ; 0x17f2 ; literal
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x17f4
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x17f6
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x17f8
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x17fa
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x17fc
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x17fe
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1800
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1802
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1804
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1806
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1808
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x180a
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x180c
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x180e
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1810
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1812
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1814
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1816
    dw loc_OTKL - IMAGE_BASE + 0x5055          ; 0x1818
    dw loc_PKOU_181c - IMAGE_BASE + 0x5055     ; 0x181a
loc_PKOU_181c:
    mov ax, 0                        ; 0x181c
    ret                              ; 0x181f
