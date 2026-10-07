math_loc_1823:
    mov ax, 0                        ; 0x1823
    call ds_dispatch_f40b            ; 0x1826
    mov ax, word [bp + 0x6]          ; 0x1829
    dec ax                           ; 0x182c
    push ax                          ; 0x182d
    push word [bp + 0x4]             ; 0x182e
    lea ax, word [bp + 0xc]          ; 0x1831
    push ax                          ; 0x1834
    lea ax, word [bp + 0xa]          ; 0x1835
    push ax                          ; 0x1838
    lea ax, word [bp + 0x8]          ; 0x1839
    push ax                          ; 0x183c
    call api_idx_0004                ; 0x183d
    add sp, byte 0x0a                ; 0x1840
    test ax, ax                      ; 0x1843
    je short @..math_loc_1823.l5     ; 0x1845
    mov ax, word [data_5b6e]         ; 0x1847
    mov cx, 2                        ; 0x184a
    cwd                              ; 0x184d
    idiv cx                          ; 0x184e
    mov ax, dx                       ; 0x1850
    test ax, ax                      ; 0x1852
    je short @..math_loc_1823.l1     ; 0x1854
    mov ax, cx                       ; 0x1856
    jmp short @..math_loc_1823.l4    ; 0x1858
@..math_loc_1823.l1:
    mov ax, word [data_5b6e]         ; 0x185a
    cmp ax, strict word 6            ; 0x185d
    je short @..math_loc_1823.l2     ; 0x1860
    cmp word [data_9188], byte 0     ; 0x1862
    je short @..math_loc_1823.l3     ; 0x1867
@..math_loc_1823.l2:
    mov ax, 0                        ; 0x1869
    jmp short @..math_loc_1823.l4    ; 0x186c
@..math_loc_1823.l3:
    mov ax, 4                        ; 0x186e
@..math_loc_1823.l4:
    ret                              ; 0x1871
