; auto-generated
leaf_loc_RSTT:
    cmp word [bp + 0x4], byte 4
    jl short @..leaf_loc_RSTT.l34
    jmp near leaf_loc_RSTT.loc1
@..leaf_loc_RSTT.l34:
    cmp word [bp + 0x8], byte 1
    je short @..leaf_loc_RSTT.l35
    cmp word [bp + 0x8], byte 3
    jne short @..leaf_loc_RSTT.l36
@..leaf_loc_RSTT.l35:
    mov ax, 0
    jmp short @..leaf_loc_RSTT.l37
@..leaf_loc_RSTT.l36:
    mov ax, 1
@..leaf_loc_RSTT.l37:
    mov word [bp - 0x0012], ax
    mov ax, 0
    cmp word [bp + 0x8], byte 2
    jle short @..leaf_loc_RSTT.l38
    mov ax, 1
@..leaf_loc_RSTT.l38:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x000c], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..leaf_loc_RSTT.l39
