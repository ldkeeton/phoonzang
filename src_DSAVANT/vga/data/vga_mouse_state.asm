; auto-generated
mouse_read_x:
    db 0x00, 0x00
mouse_read_y:
    db 0x00, 0x00
mouse_saved_background_offset:
    dw __zcp_14c4 - IMAGE_BASE                 ; 0x14b4
mouse_redraw_background_offset:
    dw __zcp_18c4 - IMAGE_BASE                 ; 0x14b6
mouse_drawn_width:
    db 0x00, 0x00
mouse_drawn_height:
    db 0x00, 0x00
mouse_screen_offset:
    db 0x00, 0x00
mouse_cursor_width:
    db 0x00, 0x00
mouse_cursor_height:
    db 0x00, 0x00
mouse_cursor_screen_offset:
    db 0x00, 0x00
__zcp_14c4:

    times 1024 db 0

__zcp_18c4:

    times 1024 db 0

__zdata_1dc4:
cseg_1cc4:

    times 136 db 0

__zdata_1e4c:
cseg_1d4c:

    times 16 db 0

__zdata_1e5c:
mouse_image_stride:
    db 0x0a, 0x00
mouse_image_height:
    db 0x0a, 0x00
mouse_default_cursor_dimensions:
    db 0x0a, 0x00, 0x0a, 0x00
mouse_image_offset:
    db 0x00, 0x00
mouse_image_segment:
    db 0x00, 0x00
