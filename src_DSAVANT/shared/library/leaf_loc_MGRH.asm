; auto-generated
leaf_loc_MGRH:
    push ax
    mov bx, maze_slots - IMAGE_BASE
    mov cx, 0x10
.back1:
    cmp ax, word [cs:bx]
    jae short .forward1
    dec word [cs:bx]
.forward1:
    inc bx
    inc bx
    loop .back1
    pop ax
    ret
