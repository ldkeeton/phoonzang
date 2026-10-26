; auto-generated
leaf_loc_JRKU:
    push ax
    mov bx, sound_slots - IMAGE_BASE
    mov cx, 0x14
.back1:
    cmp ax, word [cs:bx]
    jae short .forward1
    dec word [cs:bx]
.forward1:
    add bx, byte 4
    loop .back1
    pop ax
    ret
