; auto-generated
leaf_loc_LSPM:
    mov ax, 5                        ; 0x1b7f
    imul word [bss_91aa]             ; 0x1b82
    add ax, word [bp + 0xe]          ; 0x1b86
    mov bx, ax                       ; 0x1b89
    mov byte [bx - 0x6e20], 1        ; 0x1b8b
    cmp word [bss_91aa], byte 4      ; 0x1b90
    jge short @..leaf_loc_LSPM.l1    ; 0x1b95
    mov byte [bx - 0x6e1b], 1        ; 0x1b97
@..leaf_loc_LSPM.l1:
    mov ax, 0                        ; 0x1b9c
    ret                              ; 0x1b9f
jumptable_1ba0:
    dw leaf_loc_LSPM - IMAGE_BASE + __zres_end ; 0x1ba0
    dw leaf_loc_OKKG - IMAGE_BASE + __zres_end ; 0x1ba2
    dw leaf_loc_NTJN - IMAGE_BASE + __zres_end ; 0x1ba4
    dw leaf_loc_LSPM - IMAGE_BASE + __zres_end ; 0x1ba6
    dw leaf_loc_NTJN - IMAGE_BASE + __zres_end ; 0x1ba8
    dw leaf_loc_KOGU_1b6c - IMAGE_BASE + __zres_end ; 0x1baa
