; auto-generated
leaf_loc_IQGS:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov word [bp - 0x0004], bx
    mov ax, word [cs:bx + 0x2]
    sub word [cs:maze_paras_used - IMAGE_BASE], ax
    mov word [bp - 0x0006], ax
@..leaf_loc_IQGS.l1:
    mov bx, word [bp - 0x0004]
    mov dx, word [cs:bx]
    add dx, word [cs:maze_mem_seg - IMAGE_BASE]
    mov es, dx
    mov dx, word [cs:bx + 0x4]
    add dx, word [cs:maze_mem_seg - IMAGE_BASE]
    mov ds, dx
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    je short @..leaf_loc_IQGS.l3
@..leaf_loc_IQGS.l2:
    push cx
    mov cx, 0x10
    xor si, si
    xor di, di
    rep movsb
    mov cx, ds
    inc cx
    mov ds, cx
    mov cx, es
    inc cx
    mov es, cx
    pop cx
    loop @..leaf_loc_IQGS.l2
    mov bx, word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    mov ax, word [cs:bx + 0x4]
    sub ax, cx
    mov word [cs:bx], ax
    add ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x4], ax
    mov ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x2], ax
    add bx, byte 4
    mov word [bp - 0x0004], bx
    jmp short @..leaf_loc_IQGS.l1
@..leaf_loc_IQGS.l3:
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
