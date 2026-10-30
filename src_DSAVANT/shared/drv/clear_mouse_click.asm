; auto-generated
clear_mouse_click:
    mov word [cs:mouse_click_pending - IMAGE_BASE], 0
    ret
