api_idx_0004_4:
    mov ax, 0xfffc                   ; 0x17ee
    call ds_dispatch_f40b            ; 0x17f1
    mov word [data_91ac], 0x7e4      ; 0x17f4
    mov ax, word [data_82ee]         ; 0x17fa
    add ax, word [bp + 0x4]          ; 0x17fd
    add ax, strict word 4            ; 0x1800
    mov cx, 4                        ; 0x1803
    cwd                              ; 0x1806
    idiv cx                          ; 0x1807
    mov word [bp - 0x0004], dx       ; 0x1809
    push word [data_8f44]            ; 0x180c
    push word [data_8f46]            ; 0x1810
    push word [data_8f40]            ; 0x1814
    push word [data_8f42]            ; 0x1818
    push word [data_8f3e]            ; 0x181c
    push dx                          ; 0x1820
    call loc_1165                    ; 0x1821
    add sp, byte 0x0c                ; 0x1824
    mov word [bp - 0x0002], ax       ; 0x1827
    mov ax, word [bp - 0x0004]       ; 0x182a
    shl ax, 1                        ; 0x182d
    mov bx, ax                       ; 0x182f
    mov ax, word [bx - 0x7302]       ; 0x1831
    jmp near @..api_idx_0004_4.l16   ; 0x1835
@..api_idx_0004_4.l1:
    cmp word [bp - 0x0002], byte 2   ; 0x1838
    jl short @..api_idx_0004_4.l2    ; 0x183c
    cmp word [bp - 0x0002], byte 5   ; 0x183e
    jne short @..api_idx_0004_4.l4   ; 0x1842
@..api_idx_0004_4.l2:
    push word [bp - 0x0004]          ; 0x1844
    call api_idx_000e                ; 0x1847
    pop cx                           ; 0x184a
    test ax, ax                      ; 0x184b
    je short @..api_idx_0004_4.l3    ; 0x184d
    ret                              ; 0x184f
