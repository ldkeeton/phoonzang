; auto-generated
loc_QQOI:
    mov ax, 0
    call aztec_csav
    call loc_HVLG
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
