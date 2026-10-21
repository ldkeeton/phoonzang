; auto-generated
api_idx_0004_QSNR:
    mov ax, 0xfffc                   ; 0x16c1
    call aztec_csav                  ; 0x16c4
    mov bx, word [bp + 0x8]          ; 0x16c7
    cmp byte [bx], 0                 ; 0x16ca
    je short @..api_idx_0004_QSNR.l1 ; 0x16cd
    mov ax, 1                        ; 0x16cf
    jmp short @..api_idx_0004_QSNR.l2 ; 0x16d2
@..api_idx_0004_QSNR.l1:
    mov ax, 0                        ; 0x16d4
@..api_idx_0004_QSNR.l2:
    mov bx, word [bp + 0xa]          ; 0x16d7
    cmp byte [bx], 0                 ; 0x16da
    je short @..api_idx_0004_QSNR.l3 ; 0x16dd
    mov cx, 1                        ; 0x16df
    jmp short @..api_idx_0004_QSNR.l4 ; 0x16e2
@..api_idx_0004_QSNR.l3:
    mov cx, 0                        ; 0x16e4
@..api_idx_0004_QSNR.l4:
    add ax, cx                       ; 0x16e7
    mov word [bp - 0x0004], ax       ; 0x16e9
    push word [bp + 0x6]             ; 0x16ec
    call aztec_strlen                ; 0x16ef
    pop cx                           ; 0x16f2
    push ax                          ; 0x16f3
    push word [bp + 0x8]             ; 0x16f4
    call aztec_strlen                ; 0x16f7
    pop cx                           ; 0x16fa
    mov cx, ax                       ; 0x16fb
    pop ax                           ; 0x16fd
    add ax, cx                       ; 0x16fe
    push ax                          ; 0x1700
    push word [bp + 0xa]             ; 0x1701
    call aztec_strlen                ; 0x1704
    pop cx                           ; 0x1707
    mov cx, ax                       ; 0x1708
    pop ax                           ; 0x170a
    add ax, cx                       ; 0x170b
    mov cx, ax                       ; 0x170d
    mov ax, word [bp - 0x0004]       ; 0x170f
    add cx, ax                       ; 0x1712
    mov ax, cx                       ; 0x1714
    mov cx, 6                        ; 0x1716
    imul cx                          ; 0x1719
    mov cx, 2                        ; 0x171b
    cwd                              ; 0x171e
    idiv cx                          ; 0x171f
    mov cx, ax                       ; 0x1721
    mov ax, 0xa0                     ; 0x1723
    sub ax, cx                       ; 0x1726
    mov word [bp - 0x0002], ax       ; 0x1728
    push word [bp + 0x4]             ; 0x172b
    push ax                          ; 0x172e
    call loc_SKIP                    ; 0x172f
    add sp, byte 4                   ; 0x1732
    mov bx, word [bp + 0x6]          ; 0x1735
    cmp byte [bx], 0                 ; 0x1738
    je short @..api_idx_0004_QSNR.l5 ; 0x173b
    push word [bp + 0xc]             ; 0x173d
    push bx                          ; 0x1740
    call loc_PHIP                    ; 0x1741
    add sp, byte 4                   ; 0x1744
@..api_idx_0004_QSNR.l5:
    mov bx, word [bp + 0x8]          ; 0x1747
    cmp byte [bx], 0                 ; 0x174a
    je short @..api_idx_0004_QSNR.l6 ; 0x174d
    push word [bp + 0xe]             ; 0x174f
    push bx                          ; 0x1752
    call loc_PHIP                    ; 0x1753
    add sp, byte 4                   ; 0x1756
@..api_idx_0004_QSNR.l6:
    mov bx, word [bp + 0xa]          ; 0x1759
    cmp byte [bx], 0                 ; 0x175c
    je short @..api_idx_0004_QSNR.l7 ; 0x175f
    push word [bp + 0x10]            ; 0x1761
    push bx                          ; 0x1764
    call loc_PHIP                    ; 0x1765
    add sp, byte 4                   ; 0x1768
@..api_idx_0004_QSNR.l7:
    mov ax, 7                        ; 0x176b
    imul word [bp + 0x4]             ; 0x176e
    add ax, 0xa2                     ; 0x1771
    push ax                          ; 0x1774
    mov ax, 0x13a                    ; 0x1775
    push ax                          ; 0x1778
    mov ax, 7                        ; 0x1779
    imul word [bp + 0x4]             ; 0x177c
    add ax, 0x9c                     ; 0x177f
    push ax                          ; 0x1782
    mov ax, 8                        ; 0x1783
    push ax                          ; 0x1786
    call gfx_show_area               ; 0x1787
    add sp, byte 8                   ; 0x178a
    ret                              ; 0x178d
