; auto-generated
leaf_loc_PMVP:
    cmp word [bp - 0x0006], byte 0x0e ; 0x3325
    je short @..leaf_loc_PMVP.l1     ; 0x3329
    mov ax, 0xa                      ; 0x332b
    imul word [bss_91d6]             ; 0x332e
    mov cx, word [bp + 0xe]          ; 0x3332
    shl cx, 1                        ; 0x3335
    add ax, cx                       ; 0x3337
    mov bx, ax                       ; 0x3339
    mov word [bx - 0x6d10], 1        ; 0x333b
@..leaf_loc_PMVP.l1:
    jmp short loc_3387               ; 0x3341
