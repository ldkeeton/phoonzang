api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x1819
    call aztec_csav                  ; 0x181c
    mov word [bp - 0x0002], 0        ; 0x181f
@..api_idx_0002_3.l1:
    cmp word [bp + 0x4], byte 0      ; 0x1824
    jl short @..api_idx_0002_3.l2    ; 0x1828
    mov ax, word [bp - 0x0002]       ; 0x182a
    cmp ax, word [bp + 0x4]          ; 0x182d
    jne short @..api_idx_0002_3.l3   ; 0x1830
@..api_idx_0002_3.l2:
    mov ax, word [bp - 0x0002]       ; 0x1832
    shl ax, 1                        ; 0x1835
    mov bx, ax                       ; 0x1837
    inc word [bx - 0x7cf2]           ; 0x1839
@..api_idx_0002_3.l3:
    mov ax, 0x14                     ; 0x183d
    imul word [bp - 0x0002]          ; 0x1840
    mov cx, word [bp - 0x0002]       ; 0x1843
    shl cx, 1                        ; 0x1846
    mov bx, cx                       ; 0x1848
    mov cx, word [bx - 0x7cf2]       ; 0x184a
    shl cx, 1                        ; 0x184e
    add ax, cx                       ; 0x1850
    mov bx, ax                       ; 0x1852
    cmp word [bx + 0x1d4], byte 0xff ; 0x1854
    jne short @..api_idx_0002_3.l4   ; 0x1859
    mov ax, word [bp - 0x0002]       ; 0x185b
    shl ax, 1                        ; 0x185e
    mov bx, ax                       ; 0x1860
    mov word [bx - 0x7cf2], 0        ; 0x1862
@..api_idx_0002_3.l4:
    inc word [bp - 0x0002]           ; 0x1868
    mov ax, word [bp - 0x0002]       ; 0x186b
    cmp ax, strict word 6            ; 0x186e
    jl short @..api_idx_0002_3.l1    ; 0x1871
    ret                              ; 0x1873
