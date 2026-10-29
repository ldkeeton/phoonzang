; auto-generated
mouse_init:
    push bp                          ; 0x1719
    mov bp, sp                       ; 0x171a
    sub sp, byte 4                   ; 0x171c
    push es                          ; 0x171f
    mov ax, ds                       ; 0x1720
    mov es, ax                       ; 0x1722
    cmp byte [cs:cseg_0105 - IMAGE_BASE], 0 ; 0x1724
    jne short .forward1              ; 0x172a
    jmp near .forward2               ; 0x172c
.forward1:
    push ds                          ; 0x172f
    push si                          ; 0x1730
    mov si, 0x259e                   ; 0x1731
    mov ax, cs                       ; 0x1734
    mov ds, ax                       ; 0x1736
    call string_loc_TPVR             ; 0x1738
    pop si                           ; 0x173b
    pop ds                           ; 0x173c
    mov ax, 0                        ; 0x173d
    int 0x33 ; BIOS mouse
    mov ax, 7                        ; 0x1742
    xor cx, cx                       ; 0x1745
    mov dx, 0x27f                    ; 0x1747
    int 0x33 ; BIOS mouse
    mov ax, 8                        ; 0x174c
    xor cx, cx                       ; 0x174f
    mov dx, 0xc7                     ; 0x1751
    int 0x33 ; BIOS mouse
    mov ax, 4                        ; 0x1756
    xor cx, cx                       ; 0x1759
    xor dx, dx                       ; 0x175b
    int 0x33 ; BIOS mouse
    mov ax, 3                        ; 0x175f
    int 0x33 ; BIOS mouse
    shr cx, 1                        ; 0x1764
    mov word [cs:cseg_1aeb - IMAGE_BASE], cx ; 0x1766
    mov word [cs:cseg_1aed - IMAGE_BASE], dx ; 0x176b
    push ds                          ; 0x1770
    push es                          ; 0x1771
    push di                          ; 0x1772
    push si                          ; 0x1773
    mov ax, cs                       ; 0x1774
    push ax                          ; 0x1776
    mov ax, 0xffff                   ; 0x1777
    mov word [cs:mouse_drawn_y - IMAGE_BASE], ax ; 0x177a
    call io_loc_UQHG                 ; 0x177e
    pop si                           ; 0x1781
    pop di                           ; 0x1782
    pop es                           ; 0x1783
    pop ds                           ; 0x1784
    mov byte [cs:mouse_present - IMAGE_BASE], 1 ; 0x1785
    push es                          ; 0x178b
    mov ax, 0x14                     ; 0x178c
    mov bx, cs                       ; 0x178f
    mov es, bx                       ; 0x1791
    mov cx, 0xb                      ; 0x1793
    mov dx, 0x2b09                   ; 0x1796
    int 0x33 ; BIOS mouse
    pop es                           ; 0x179b
.forward2:
    pop es                           ; 0x179c
    mov sp, bp                       ; 0x179d
    pop bp                           ; 0x179f
    ret                              ; 0x17a0
