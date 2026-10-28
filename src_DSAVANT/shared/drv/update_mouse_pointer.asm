; auto-generated
update_mouse_pointer:
    push ds
    push es
    push si
    push di
    cmp byte [cs:mouse_glide_active - IMAGE_BASE], 1
    je short .forward1
    cmp byte [cs:mouse_present - IMAGE_BASE], 1
    je short .forward2
.forward1:
    jmp near .forward4
.forward2:
    mov ax, 3
    int 0x33 ; BIOS mouse
    shr cx, 1
    cmp word [cs:mouse_drawn_x - IMAGE_BASE], cx
    jne short .forward3
    cmp word [cs:mouse_drawn_y - IMAGE_BASE], dx
    je short .forward4
.forward3:
    shl cx, 1
    mov ax, cs
    push ax
    call draw_mouse_pointer_at
.forward4:
    mov byte [cs:mouse_redraw_pending - IMAGE_BASE], 0
    pop di
    pop si
    pop es
    pop ds
    ret
