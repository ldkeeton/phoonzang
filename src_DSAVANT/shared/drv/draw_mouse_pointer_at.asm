; auto-generated
draw_mouse_pointer_at:
    cmp byte [cs:cursor_draw_busy - IMAGE_BASE], 0
    je short .forward1
    retf
.forward1:
    mov al, 0xff
    mov byte [cs:cursor_draw_busy - IMAGE_BASE], al
    shr cx, 1
    mov word [cs:mouse_read_x - IMAGE_BASE], cx
    mov word [cs:mouse_read_y - IMAGE_BASE], dx
