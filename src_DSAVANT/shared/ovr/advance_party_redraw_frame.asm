; auto-generated
advance_party_redraw_frame:
    mov ax, 0
    call aztec_csav
    call party_redraw_interval_elapsed
    test ax, ax
    je short .forward1
    mov ax, word [party_status_frame]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [party_status_frame], dx
    call redraw_maze_view
    mov ax, 1
    ret
.forward1:
    mov ax, 0
    ret
