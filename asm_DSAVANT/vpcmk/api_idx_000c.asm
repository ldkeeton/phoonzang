api_idx_000c:
    mov ax, 0xfff4                   ; 0x16ea
    call ds_aztec_csav               ; 0x16ed
    mov word [bp - 0x0002], 0        ; 0x16f0
@..api_idx_000c.l1:
    mov ax, 0x14                     ; 0x16f5
    imul word [bp - 0x0002]          ; 0x16f8
    mov cx, word [bp - 0x0002]       ; 0x16fb
    shl cx, 1                        ; 0x16fe
    mov bx, cx                       ; 0x1700
    mov cx, word [bx - 0x7cf2]       ; 0x1702
    shl cx, 1                        ; 0x1706
    add ax, cx                       ; 0x1708
    mov bx, ax                       ; 0x170a
    mov al, byte [bx + 0x1d4]        ; 0x170c
    mov byte [bp - 0x000c], al       ; 0x1710
    mov byte [bp - 0x000b], 0        ; 0x1713
    mov ax, 0                        ; 0x1717
    push ax                          ; 0x171a
    push ax                          ; 0x171b
    lea ax, word [bp - 0x000c]       ; 0x171c
    push ax                          ; 0x171f
    mov ax, 0                        ; 0x1720
    push ax                          ; 0x1723
    mov ax, 0xc7                     ; 0x1724
    push ax                          ; 0x1727
    mov ax, 0                        ; 0x1728
    push ax                          ; 0x172b
    mov ax, 0x13f                    ; 0x172c
    push ax                          ; 0x172f
    mov ax, 0                        ; 0x1730
    push ax                          ; 0x1733
    mov ax, 0xc                      ; 0x1734
    imul word [bp + 0x8]             ; 0x1737
    mov cx, word [bp - 0x0002]       ; 0x173a
    shl cx, 1                        ; 0x173d
    add ax, cx                       ; 0x173f
    mov bx, ax                       ; 0x1741
    mov ax, word [bx + 0x1bc]        ; 0x1743
    add ax, word [bp + 0x6]          ; 0x1747
    push ax                          ; 0x174a
    mov ax, word [bx + 0x1a4]        ; 0x174b
    add ax, word [bp + 0x4]          ; 0x174f
    push ax                          ; 0x1752
    mov ax, 2                        ; 0x1753
    push ax                          ; 0x1756
    call ds_loc_4218                 ; 0x1757
    add sp, byte 0x16                ; 0x175a
    inc word [bp - 0x0002]           ; 0x175d
    mov ax, word [bp - 0x0002]       ; 0x1760
    cmp ax, strict word 6            ; 0x1763
    jl short @..api_idx_000c.l1      ; 0x1766
    ret                              ; 0x1768
