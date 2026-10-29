; auto-generated
leaf_loc_HLKP:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov word [bp - 4], bx
    mov ax, word [cs:bx + 2]
    sub word [cs:maze_paras_used - IMAGE_BASE], ax
    mov word [bp - 6], ax
.back1:
    mov bx, word [bp - 4]
    mov dx, word [cs:bx]
    add dx, word [cs:maze_mem_seg - IMAGE_BASE]
    mov es, dx
    mov dx, word [cs:bx + 4]
    add dx, word [cs:maze_mem_seg - IMAGE_BASE]
    mov ds, dx
    mov cx, word [cs:bx + 6]
    or cx, cx
    je short .forward1
.back2:
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
    loop .back2
    mov bx, word [bp - 4]
    mov cx, word [bp - 6]
    mov ax, word [cs:bx + 4]
    sub ax, cx
    mov word [cs:bx], ax
    add ax, word [cs:bx + 6]
    mov word [cs:bx + 4], ax
    mov ax, word [cs:bx + 6]
    mov word [cs:bx + 2], ax
    add bx, byte 4
    mov word [bp - 4], bx
    jmp short .back1
.forward1:
    mov bx, word [bp - 4]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 2], ax
    ret
