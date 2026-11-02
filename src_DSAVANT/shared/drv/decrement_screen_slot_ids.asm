; auto-generated
decrement_screen_slot_ids:
    push ax
    mov bx, screen_maze_slots - IMAGE_BASE
    mov cx, 5
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
