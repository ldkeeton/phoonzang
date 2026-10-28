; auto-generated
decrement_cached_slot_ids:
    push ax
    mov bx, ems_slots - IMAGE_BASE
    mov cx, 0x14
.back1:
    cmp ax, word [cs:bx]
    jae short .forward1
    dec word [cs:bx]
.forward1:
    inc bx
    inc bx
    loop .back1
    mov bx, cseg_01c3 - IMAGE_BASE
    mov cx, 0xa
.back2:
    cmp ax, word [cs:bx]
    jae short .forward2
    dec word [cs:bx]
.forward2:
    inc bx
    inc bx
    loop .back2
    mov bx, screen_ems_slots - IMAGE_BASE
    mov cx, 0xa
.back3:
    cmp ax, word [cs:bx]
    jae short .forward3
    dec word [cs:bx]
.forward3:
    inc bx
    inc bx
    loop .back3
    pop ax
    ret
