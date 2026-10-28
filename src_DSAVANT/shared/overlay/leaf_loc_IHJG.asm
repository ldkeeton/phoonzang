; auto-generated
leaf_loc_IHJG:
    push ax
    mov bx, picture_slots - IMAGE_BASE
    mov cx, 0x14
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
