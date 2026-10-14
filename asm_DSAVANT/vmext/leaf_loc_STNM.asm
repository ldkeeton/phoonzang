; auto-generated
leaf_loc_STNM:
    cmp word [bp - 0x0006], byte 0x0e ; 0x1db4
    je short @..leaf_loc_STNM.l1     ; 0x1db8
    mov ax, 0xa                      ; 0x1dba
    imul word [bss_91aa]             ; 0x1dbd
    mov cx, word [bp + 0xe]          ; 0x1dc1
    shl cx, 1                        ; 0x1dc4
    add ax, cx                       ; 0x1dc6
    mov bx, ax                       ; 0x1dc8
    mov word [bx - 0x6d3c], 1        ; 0x1dca
@..leaf_loc_STNM.l1:
    jmp short loc_1e16               ; 0x1dd0
