api_idx_0006:
    mov ax, 0xfffa                   ; 0x1713
    call ds_aztec_csav               ; 0x1716
    mov word [bp - 0x0002], 1        ; 0x1719
    jmp near @..api_idx_0006.l6      ; 0x171e
@..api_idx_0006.l1:
    mov word [bp - 0x0004], 0        ; 0x1721
    jmp short @..api_idx_0006.l5     ; 0x1726
@..api_idx_0006.l2:
    mov ax, 0x64                     ; 0x1728
    push ax                          ; 0x172b
    call ds_app_09f0                 ; 0x172c
    pop cx                           ; 0x172f
    mov word [bp - 0x0006], ax       ; 0x1730
    mov ax, word [bp - 0x0002]       ; 0x1733
    shl ax, 1                        ; 0x1736
    mov bx, ax                       ; 0x1738
    mov bx, word [bx - 0x7b7e]       ; 0x173a
    cmp byte [bx + 0x1a0], 1         ; 0x173e
    jne short @..api_idx_0006.l4     ; 0x1743
    mov ax, 0x248                    ; 0x1745
    imul word [bp - 0x0004]          ; 0x1748
    mov bx, ax                       ; 0x174b
    mov al, byte [bx + 0x5d85]       ; 0x174d
    sub ah, ah                       ; 0x1751
    push ax                          ; 0x1753
    mov ax, 3                        ; 0x1754
    imul word [bss_830c]             ; 0x1757
    mov cx, ax                       ; 0x175b
    pop ax                           ; 0x175d
    sub ax, cx                       ; 0x175e
    cmp ax, word [bp - 0x0006]       ; 0x1760
    jg short @..api_idx_0006.l3      ; 0x1763
    mov al, byte [bx + 0x5d65]       ; 0x1765
    sub ah, ah                       ; 0x1769
    cmp ax, word [bp - 0x0006]       ; 0x176b
    jle short @..api_idx_0006.l4     ; 0x176e
@..api_idx_0006.l3:
    mov ax, word [bp - 0x0002]       ; 0x1770
    shl ax, 1                        ; 0x1773
    mov bx, ax                       ; 0x1775
    mov bx, word [bx - 0x7b7e]       ; 0x1777
    mov byte [bx + 0x1a0], 0         ; 0x177b
    mov ax, 0                        ; 0x1780
    push ax                          ; 0x1783
    mov ax, 0x19                     ; 0x1784
    push ax                          ; 0x1787
    push word [bp - 0x0004]          ; 0x1788
    call loc_16d1                    ; 0x178b
    add sp, byte 6                   ; 0x178e
@..api_idx_0006.l4:
    inc word [bp - 0x0004]           ; 0x1791
@..api_idx_0006.l5:
    mov ax, word [bp - 0x0004]       ; 0x1794
    cmp ax, word [bss_69c8]          ; 0x1797
    jl short @..api_idx_0006.l2      ; 0x179b
    inc word [bp - 0x0002]           ; 0x179d
@..api_idx_0006.l6:
    mov ax, word [bp - 0x0002]       ; 0x17a0
    cmp ax, word [bss_8466]          ; 0x17a3
    jg short @..api_idx_0006.l7      ; 0x17a7
    jmp near @..api_idx_0006.l1      ; 0x17a9
@..api_idx_0006.l7:
    ret                              ; 0x17ac
