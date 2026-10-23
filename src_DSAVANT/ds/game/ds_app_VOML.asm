; auto-generated
ds_app_VOML: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x1741
    call aztec_csav                  ; 0x1744
    mov ax, 0x248                    ; 0x1747
    imul word [bp + 0x4]             ; 0x174a
    push ax                          ; 0x174d
    mov ax, 0x78                     ; 0x174e
    imul word [bp + 0x6]             ; 0x1751
    mov cx, ax                       ; 0x1754
    pop ax                           ; 0x1756
    add ax, cx                       ; 0x1757
    push ax                          ; 0x1759
    mov ax, 0xc                      ; 0x175a
    imul word [bp + 0x8]             ; 0x175d
    mov cx, ax                       ; 0x1760
    pop ax                           ; 0x1762
    add ax, cx                       ; 0x1763
    mov bx, ax                       ; 0x1765
    mov al, byte [bx + cell_key_grid + 0x4] ; 0x1767
    sub ah, ah                       ; 0x176b
    mov bx, ax                       ; 0x176d
    cmp byte [bx + 0x60e], 1         ; 0x176f
    jne short @..ds_app_VOML.l1      ; 0x1774
    mov ax, 0x248                    ; 0x1776
    imul word [bp + 0x4]             ; 0x1779
    push ax                          ; 0x177c
    mov ax, 0x78                     ; 0x177d
    imul word [bp + 0x6]             ; 0x1780
    mov cx, ax                       ; 0x1783
    pop ax                           ; 0x1785
    add ax, cx                       ; 0x1786
    push ax                          ; 0x1788
    mov ax, 0xc                      ; 0x1789
    imul word [bp + 0x8]             ; 0x178c
    mov cx, ax                       ; 0x178f
    pop ax                           ; 0x1791
    add ax, cx                       ; 0x1792
    mov bx, ax                       ; 0x1794
    mov al, byte [bx + cell_key_grid + 0x6] ; 0x1796
    sub ah, ah                       ; 0x179a
    jmp short @..ds_app_VOML.l2      ; 0x179c
@..ds_app_VOML.l1:
    mov ax, 1                        ; 0x179e
@..ds_app_VOML.l2:
    mov word [bp - 0x0002], ax       ; 0x17a1
    cmp ax, strict word 1            ; 0x17a4
    jge short @..ds_app_VOML.l3      ; 0x17a7
    mov word [bp - 0x0002], 1        ; 0x17a9
@..ds_app_VOML.l3:
    mov ax, 0x248                    ; 0x17ae
    imul word [bp + 0x4]             ; 0x17b1
    push ax                          ; 0x17b4
    mov ax, 0x78                     ; 0x17b5
    imul word [bp + 0x6]             ; 0x17b8
    mov cx, ax                       ; 0x17bb
    pop ax                           ; 0x17bd
    add ax, cx                       ; 0x17be
    push ax                          ; 0x17c0
    mov ax, 0xc                      ; 0x17c1
    imul word [bp + 0x8]             ; 0x17c4
    mov cx, ax                       ; 0x17c7
    pop ax                           ; 0x17c9
    add ax, cx                       ; 0x17ca
    mov bx, ax                       ; 0x17cc
    mov ax, word [bx + cell_key_grid + 0x2] ; 0x17ce
    imul word [bp - 0x0002]          ; 0x17d2
    ret                              ; 0x17d5
