; auto-generated
request_mouse_redraw:
    cmp byte [cs:mouse_present - IMAGE_BASE], 1
    jne short @..request_mouse_redraw.l1
    mov byte [cs:mouse_redraw_pending - IMAGE_BASE], 1
@..request_mouse_redraw.l1:
    ret
