; auto-generated
request_mouse_redraw:
    cmp byte [cs:mouse_present - IMAGE_BASE], 1
    jne short .return1
    mov byte [cs:mouse_redraw_pending - IMAGE_BASE], 1
.return1:
    ret
