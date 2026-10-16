; auto-generated
leaf_loc_MGPR:
    mov word [bp - 0x000c], 0xa
    cmp word [leaf_loc_MGPR.bss1], byte 0
    jne short @..leaf_loc_MGPR.l1
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
    mov ax, word [bx + 0x486]
    jmp short @..leaf_loc_MGPR.l2
@..leaf_loc_MGPR.l1:
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
    mov ax, word [bx + 0x4d6]
@..leaf_loc_MGPR.l2:
    mov word [bp - 0x000e], ax
    cmp word [leaf_loc_MGPR.bss1], byte 0
    jne short @..leaf_loc_MGPR.l3
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
    mov ax, word [bx + 0x488]
    jmp short @..leaf_loc_MGPR.l4
@..leaf_loc_MGPR.l3:
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
    mov ax, word [bx + 0x4d8]
@..leaf_loc_MGPR.l4:
    mov word [bp - 0x0010], ax
    mov ax, 7
    cmp word [leaf_loc_MGPR.bss1], byte 0
    jne short @..leaf_loc_MGPR.l5
    mov ax, 3
@..leaf_loc_MGPR.l5:
    mov cx, 0
    cmp word [bp + 0x6], byte 0x0d
    jne short @..leaf_loc_MGPR.l6
    mov cx, 1
@..leaf_loc_MGPR.l6:
    add ax, cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 0
    jmp short loc_LIQJ
