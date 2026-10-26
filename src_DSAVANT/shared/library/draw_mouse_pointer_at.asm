; auto-generated
draw_mouse_pointer_at:
    cmp byte [cs:draw_mouse_pointer_at.cseg1 - IMAGE_BASE], 0
    je short .forward1
    retf
.forward1:
    mov al, 0xff
    mov byte [cs:draw_mouse_pointer_at.cseg1 - IMAGE_BASE], al
    shr cx, 1
    mov word [cs:draw_mouse_pointer_at.cseg2 - IMAGE_BASE], cx
    mov word [cs:draw_mouse_pointer_at.cseg3 - IMAGE_BASE], dx
