; auto-generated
redraw_maze_view:
    mov ax, 0
    call aztec_csav
    call redraw_maze_view.api_idx1
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call gfx_show_area
    add sp, byte 8
    ret
