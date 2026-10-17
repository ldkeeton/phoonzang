; auto-generated
leaf_loc_JNNQ:
    mov word [bp - 0x000c], 9
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x436]
    mov word [bp - 0x000e], ax
    mov ax, word [bx + 0x438]
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0008], 9
    mov ax, 0
    cmp word [bss_82e8], byte 0
    je short @..leaf_loc_JNNQ.l1
    mov ax, 0xa
@..leaf_loc_JNNQ.l1:
    mov word [bp - 0x000a], ax
    jmp near loc_LIQJ
