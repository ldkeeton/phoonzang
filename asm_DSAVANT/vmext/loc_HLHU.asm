; auto-generated
loc_HLHU:
    mov ax, 0                        ; 0x1823
    call aztec_csav                  ; 0x1826
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
    call api_idx_0004_HROJ           ; 0x183d
    add sp, byte 0x0a                ; 0x1840
    test ax, ax                      ; 0x1843
    je short @..loc_HLHU.l5          ; 0x1845
    mov ax, word [bss_5b6e]          ; 0x1847
    mov cx, 2                        ; 0x184a
    cwd                              ; 0x184d
    idiv cx                          ; 0x184e
    mov ax, dx                       ; 0x1850
    test ax, ax                      ; 0x1852
    je short @..loc_HLHU.l1          ; 0x1854
    mov ax, cx                       ; 0x1856
    jmp short @..loc_HLHU.l4         ; 0x1858
@..loc_HLHU.l1:
    mov ax, word [bss_5b6e]          ; 0x185a
    cmp ax, strict word 6            ; 0x185d
    je short @..loc_HLHU.l2          ; 0x1860
    cmp word [bss_9188], byte 0      ; 0x1862
    je short @..loc_HLHU.l3          ; 0x1867
@..loc_HLHU.l2:
    mov ax, 0                        ; 0x1869
    jmp short @..loc_HLHU.l4         ; 0x186c
@..loc_HLHU.l3:
    mov ax, 4                        ; 0x186e
@..loc_HLHU.l4:
    ret                              ; 0x1871
@..loc_HLHU.l5:
    mov ax, 4                        ; 0x1872
    push ax                          ; 0x1875
    mov ax, word [bp + 0xc]          ; 0x1876
    mov cx, 6                        ; 0x1879
    shl ax, cl                       ; 0x187c
    mov cx, word [bp + 0xa]          ; 0x187e
    shl cx, 1                        ; 0x1881
    shl cx, 1                        ; 0x1883
    shl cx, 1                        ; 0x1885
    add ax, cx                       ; 0x1887
    add ax, word [bp + 0x8]          ; 0x1889
    push ax                          ; 0x188c
    mov ax, word [bss_0e14]          ; 0x188d
    add ax, 0x90                     ; 0x1890
    push ax                          ; 0x1893
    call ds_leaf_loc_JIKQ            ; 0x1894
    add sp, byte 6                   ; 0x1897
    ret                              ; 0x189a
