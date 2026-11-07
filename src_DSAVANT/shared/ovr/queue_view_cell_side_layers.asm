; auto-generated
queue_view_cell_side_layers:
    mov ax, 0xffee
    call $csav
    cmp word [bp + 4], byte 4
    jge short .forward1
    cmp word [bp + 6], byte 0
    jle short .forward1
    cmp word [bp + 6], byte 4
    jge short .forward1
    mov ax, 1
    jmp short .forward2
.forward1:
    mov ax, 0
.forward2:
    mov word [bp - 0x12], ax
    cmp word [bp - 0x12], byte 0
    jne short .forward3
    jmp near .forward20
.forward3:
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + near_wall_object_ids], byte 0
    jne short .forward4
    cmp word [bx + near_wall_overlay_ids], byte 0
    jne short .forward4
    jmp near .forward20
.forward4:
    cmp word [bp + 6], byte 2
    jne short .forward5
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x20]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x20]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    jmp short .forward9
.forward5:
    cmp word [bp + 4], byte 0
    jle short .forward9
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    cmp word [bp + 6], byte 3
    jne short .forward6
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 4]
.forward6:
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    cmp word [bp + 6], byte 3
    jne short .forward7
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 4]
    jmp short .forward8
.forward7:
    mov ax, word [bp + 0x28]
    add ax, word [bp + 4]
.forward8:
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
.forward9:
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + near_wall_object_ids], byte 0
    jne short .forward10
    jmp near .forward20
.forward10:
    mov cx, word [bx + near_wall_object_ids]
    dec cx
    mov ax, word [party_facing]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 2], dx
    mov word [bp - 4], 0
    mov ax, dx
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short .forward11
    cmp word [bp + 4], byte 0
    jg short .forward12
.forward11:
    cmp word [bp + 6], byte 2
    jne short .forward15
.forward12:
    test ax, ax
    je short .forward13
    mov ax, 3
    jmp short .forward14
.forward13:
    mov ax, 0
.forward14:
    mov cx, word [bp + 4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 4], ax
    mov ax, word [floor_checker_parity]
    mov word [bp - 6], ax
    mov ax, word [bx + shape_column_x]
    mov word [bp - 8], ax
    jmp short .forward17
.forward15:
    cmp word [bp + 4], byte 0
    jle short .forward17
    mov ax, word [bp + 4]
    add ax, strict word 0x20
    mov word [bp - 4], ax
    mov ax, 0
    cmp word [bp + 6], byte 3
    jne short .forward16
    mov ax, 1
.forward16:
    mov word [bp - 6], ax
    mov word [bp - 8], 0
.forward17:
    cmp word [bp - 4], byte 0
    je short .forward20
    mov ax, 0
    push ax
    push ax
    push word [bp - 6]
    push ax
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    push word [bp + 6]
    mov ax, word [bp + 6]
    cmp ax, strict word 2
    je short .forward18
    cmp dx, byte 1
    jne short .forward18
    mov ax, 1
    jmp short .forward19
.forward18:
    mov ax, 0
.forward19:
    push ax
    mov ax, 1
    push ax
    push word [bp - 4]
    mov ax, 0
    push ax
    push word [bp - 8]
    mov ax, 4
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
.forward20:
    mov ax, 5
    imul word [bp + 4]
    add ax, word [bp + 6]
    mov bx, ax
    mov al, byte [bx + near_wall_layer_flags]
    sub ah, ah
    jmp near .forward35
.back1:
    cmp word [boundary_wall_variant], byte 2
    je short .forward21
    jmp near .forward31
.forward21:
    cmp word [bp + 4], byte 5
    jl short .forward22
    jmp near .forward30
.forward22:
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x18]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x18]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    mov word [bp - 0xe], 0xffff
    mov word [bp - 0xa], 0xffff
    mov word [bp - 0x10], 0xffff
    mov word [bp - 0xc], 0xffff
    cmp word [bp + 0x40], byte -1
    je short .forward23
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    mov word [bp - 0xe], ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    mov word [bp - 0x10], ax
.forward23:
    cmp word [bp + 4], byte 0
    jle short .forward24
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 4]
    dec ax
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 4]
    dec ax
    push ax
    call select_floor_face_index
    add sp, byte 4
    mov word [bp - 0xa], ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 4]
    dec ax
    push ax
    call floor_overlay_when_enabled
    pop cx
    mov word [bp - 0xc], ax
.forward24:
    cmp word [bp - 0xa], byte -1
    jne short .forward25
    cmp word [bp - 0xe], byte -1
    jne short .forward25
    jmp near .forward30
.forward25:
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 4]
    push word [bp - 0xc]
    push word [bp - 0x10]
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0xa]
    push word [bp - 0xe]
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    cmp word [bp - 0xa], byte -1
    jne short .forward26
    jmp near .forward30
.forward26:
    cmp word [boundary_wall_variant], byte 0
    jne short .forward27
    jmp near .forward30
.forward27:
    mov ax, word [bp + 4]
    cmp ax, strict word 4
    je short .forward28
    jmp near .forward30
.forward28:
    cmp word [bp + 6], byte 0
    jne short .forward29
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, 0xc2
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xc3
    push ax
    mov ax, 0xc2
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    jmp short .forward30
.forward29:
    cmp word [bp + 6], byte 4
    jne short .forward30
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, 0xc3
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0xc3
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
.forward30:
    jmp near .forward34
.forward31:
    cmp word [boundary_wall_variant], byte 4
    je short .forward32
    jmp near .forward34
.forward32:
    cmp word [bp + 4], byte 4
    jl short .forward33
    jmp near .forward34
.forward33:
    mov ax, word [bp + 0x38]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    push word [bp + 0x10]
    call call_draw_maze_piece
    add sp, byte 8
    mov ax, word [bp + 4]
    cmp ax, strict word 2
    jge short .forward34
    cmp word [bp + 6], byte 2
    jne short .forward34
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x10]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 4]
    add ax, strict word 0x19
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 4]
    add ax, strict word 0x19
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfe
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
.forward34:
    jmp short .forward36
.forward35:
    cmp ax, strict word 1
    jne short .forward36
    jmp near .back1
.forward36:
    mov ax, 5
    imul word [bp + 4]
    add ax, word [bp + 6]
    mov bx, ax
    mov al, byte [bx + side_wall_layer_flags]
    sub ah, ah
    jmp near .forward44
jumptable_4b6b_case_1:
    cmp word [bp + 4], byte 5
    jge short queue_view_cell_side_layers.forward37
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    push word [bp + 0xa]
    call call_draw_maze_piece
    add sp, byte 8
queue_view_cell_side_layers.forward37:
    jmp near queue_view_cell_side_layers.forward45
jumptable_4b6b_case_2:
    cmp word [bp + 4], byte 5
    jge short queue_view_cell_side_layers.forward38
    mov ax, word [bp + 0x30]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x32]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    push word [bp + 0x16]
    call call_draw_maze_piece
    add sp, byte 8
queue_view_cell_side_layers.forward38:
    jmp short queue_view_cell_side_layers.forward45
jumptable_4b6b_case_3:
    cmp word [bp + 4], byte 5
    jge short queue_view_cell_side_layers.forward43
    mov ax, word [side_wall_animation_phase]
    add ax, word [party_status_frame]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short queue_view_cell_side_layers.forward39
    mov ax, word [bp + 0x34]
    add ax, word [bp + 4]
    jmp short queue_view_cell_side_layers.forward40
queue_view_cell_side_layers.forward39:
    mov ax, 0xffff
queue_view_cell_side_layers.forward40:
    push ax
    push cx
    test dx, dx
    je short queue_view_cell_side_layers.forward41
    mov ax, word [bp + 0x36]
    add ax, word [bp + 4]
    jmp short queue_view_cell_side_layers.forward42
queue_view_cell_side_layers.forward41:
    mov ax, word [bp + 0x34]
    add ax, word [bp + 4]
queue_view_cell_side_layers.forward42:
    push ax
    push word [bp + 0x14]
    call call_draw_maze_piece
    add sp, byte 8
queue_view_cell_side_layers.forward43:
    jmp short queue_view_cell_side_layers.forward45
jumptable_4b6b_case_4:
    jmp short queue_view_cell_side_layers.forward45
jumptable_4b6b_case_0:
    jmp short queue_view_cell_side_layers.forward45
jumptable_4b6b:
    dw jumptable_4b6b_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_4b6b_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_4b6b_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4b6b_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_4b6b_case_4 - IMAGE_BASE + __zres_end
queue_view_cell_side_layers.forward44:
    cmp ax, strict word 5
    jae short queue_view_cell_side_layers.forward45
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_4b6b - IMAGE_BASE + __zres_end]
queue_view_cell_side_layers.forward45:
    cmp word [bp - 0x12], byte 0
    jne short queue_view_cell_side_layers.forward46
    jmp near queue_view_cell_side_layers.forward59
queue_view_cell_side_layers.forward46:
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + far_wall_object_ids], byte 0
    jne short queue_view_cell_side_layers.forward47
    cmp word [bx + far_wall_overlay_ids], byte 0
    jne short queue_view_cell_side_layers.forward47
    jmp near queue_view_cell_side_layers.forward59
queue_view_cell_side_layers.forward47:
    cmp word [bp + 6], byte 2
    jne short queue_view_cell_side_layers.forward48
    mov ax, word [bp + 0x24]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x26]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 3
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    jmp short queue_view_cell_side_layers.forward52
queue_view_cell_side_layers.forward48:
    cmp word [bp + 4], byte 0
    jle short queue_view_cell_side_layers.forward52
    mov ax, 0xffff
    cmp word [bp + 6], byte 3
    jne short queue_view_cell_side_layers.forward49
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 4]
queue_view_cell_side_layers.forward49:
    push ax
    mov ax, 2
    push ax
    cmp word [bp + 6], byte 3
    jne short queue_view_cell_side_layers.forward50
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 4]
    jmp short queue_view_cell_side_layers.forward51
queue_view_cell_side_layers.forward50:
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 4]
queue_view_cell_side_layers.forward51:
    push ax
    mov ax, 3
    push ax
    call call_draw_maze_piece
    add sp, byte 8
queue_view_cell_side_layers.forward52:
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + far_wall_object_ids], byte 0
    jne short queue_view_cell_side_layers.forward53
    jmp near queue_view_cell_side_layers.forward59
queue_view_cell_side_layers.forward53:
    mov cx, word [bx + far_wall_object_ids]
    dec cx
    mov ax, word [party_facing]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 2], dx
    mov word [bp - 4], 0
    mov ax, dx
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short queue_view_cell_side_layers.forward54
    cmp word [bp + 4], byte 0
    jg short queue_view_cell_side_layers.forward55
queue_view_cell_side_layers.forward54:
    cmp word [bp + 6], byte 2
    jne short queue_view_cell_side_layers.forward56
queue_view_cell_side_layers.forward55:
    mov cx, word [bp + 4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    mov word [bp - 4], ax
    mov ax, word [floor_checker_parity]
    mov word [bp - 6], ax
    mov ax, word [bx + shape_column_x]
    mov word [bp - 8], ax
    jmp short queue_view_cell_side_layers.forward58
queue_view_cell_side_layers.forward56:
    cmp word [bp + 4], byte 0
    jle short queue_view_cell_side_layers.forward58
    mov ax, word [bp + 4]
    add ax, strict word 0x20
    mov word [bp - 4], ax
    mov ax, 0
    cmp word [bp + 6], byte 3
    jne short queue_view_cell_side_layers.forward57
    mov ax, 1
queue_view_cell_side_layers.forward57:
    mov word [bp - 6], ax
    mov word [bp - 8], 0
queue_view_cell_side_layers.forward58:
    cmp word [bp - 4], byte 0
    je short queue_view_cell_side_layers.forward59
    mov ax, 0
    push ax
    push ax
    push word [bp - 6]
    push ax
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp - 4]
    push ax
    push word [bp - 8]
    mov ax, 4
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_view_cell_side_layers.forward59:
    cmp word [bp + 4], byte 4
    jl short queue_view_cell_side_layers.forward60
    jmp near queue_view_cell_side_layers.return1
queue_view_cell_side_layers.forward60:
    mov ax, 5
    imul word [bp + 4]
    add ax, word [bp + 6]
    mov bx, ax
    cmp byte [bx + view_marker_kinds], 3
    je short queue_view_cell_side_layers.forward61
    jmp near queue_view_cell_side_layers.forward67
queue_view_cell_side_layers.forward61:
    mov ax, word [bp + 4]
    cmp ax, strict word 0
    jg short queue_view_cell_side_layers.forward62
    mov ax, word [bp + 6]
    cmp ax, strict word 2
    je short queue_view_cell_side_layers.forward62
    jmp near queue_view_cell_side_layers.forward67
queue_view_cell_side_layers.forward62:
    cmp word [bp + 4], byte 0
    jne short queue_view_cell_side_layers.forward63
    mov ax, word [bp + 6]
    cmp ax, strict word 2
    jne short queue_view_cell_side_layers.forward63
    cmp word [capture_center_marker_mode], byte 0
    je short queue_view_cell_side_layers.forward63
    mov word [marker_mode], 0xffff
queue_view_cell_side_layers.forward63:
    cmp word [bp + 4], byte 0
    jne short queue_view_cell_side_layers.forward64
    mov ax, word [bp + 6]
    cmp ax, strict word 2
    jne short queue_view_cell_side_layers.forward64
    mov ax, 2
    jmp short queue_view_cell_side_layers.forward65
queue_view_cell_side_layers.forward64:
    mov ax, 1
queue_view_cell_side_layers.forward65:
    mov word [bp - 4], ax
    mov ax, word [bp + 4]
    cmp word [bp - 4], byte 2
    je short queue_view_cell_side_layers.forward66
    dec ax
queue_view_cell_side_layers.forward66:
    mov word [bp - 8], ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 8]
    shl ax, 1
    mov bx, ax
    push word [bx + view_depth_scale]
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp - 4]
    push word [bx + view_geometry]
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xc
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_view_cell_side_layers.forward67:
    mov ax, 5
    imul word [bp + 4]
    add ax, word [bp + 6]
    mov bx, ax
    cmp byte [bx + view_marker_kinds], 1
    je short queue_view_cell_side_layers.forward68
    cmp byte [bx + view_marker_kinds], 2
    jne short queue_view_cell_side_layers.forward70
queue_view_cell_side_layers.forward68:
    mov ax, word [bp + 4]
    cmp ax, strict word 0
    jg short queue_view_cell_side_layers.forward69
    mov ax, word [bp + 6]
    cmp ax, strict word 2
    jne short queue_view_cell_side_layers.forward70
queue_view_cell_side_layers.forward69:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    push word [bx + view_depth_scale]
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 5
    imul word [bp + 4]
    add ax, word [bp + 6]
    mov bx, ax
    mov al, byte [bx + view_marker_kinds]
    sub ah, ah
    push ax
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    push word [bx + view_geometry]
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xb
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_view_cell_side_layers.forward70:
    mov ax, 5
    imul word [bp + 4]
    add ax, word [bp + 6]
    mov bx, ax
    cmp byte [bx + view_marker_ids], 0
    jne short queue_view_cell_side_layers.forward71
    jmp near queue_view_cell_side_layers.return1
queue_view_cell_side_layers.forward71:
    cmp word [bp + 4], byte 0
    jne short queue_view_cell_side_layers.forward72
    mov ax, word [bp + 6]
    cmp ax, strict word 2
    jne short queue_view_cell_side_layers.forward72
    cmp word [capture_center_marker_mode], byte 0
    je short queue_view_cell_side_layers.forward72
    mov al, byte [bx + view_marker_ids]
    sub ah, ah
    mov word [marker_mode], ax
    jmp near queue_view_cell_side_layers.return1
queue_view_cell_side_layers.forward72:
    mov ax, word [bp + 4]
    cmp ax, strict word 0
    jg short queue_view_cell_side_layers.forward73
    mov ax, word [bp + 6]
    cmp ax, strict word 2
    je short queue_view_cell_side_layers.forward73
    jmp near queue_view_cell_side_layers.return1
queue_view_cell_side_layers.forward73:
    mov al, byte [bx + view_marker_ids]
    sub ah, ah
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [party_facing]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 2], dx
    mov ax, dx
    jmp near queue_view_cell_side_layers.forward76
queue_view_cell_side_layers.back2:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    push word [bx + view_depth_scale]
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    cmp word [bp - 2], byte 0
    jne short queue_view_cell_side_layers.forward74
    mov ax, 4
queue_view_cell_side_layers.forward74:
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    push word [bx + view_geometry]
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    jmp short queue_view_cell_side_layers.return1
queue_view_cell_side_layers.back3:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    cmp word [bp - 2], byte 3
    jne short queue_view_cell_side_layers.forward75
    mov ax, 1
queue_view_cell_side_layers.forward75:
    push ax
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    push word [bx + view_depth_scale]
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bx + view_geometry]
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    jmp short queue_view_cell_side_layers.return1
queue_view_cell_side_layers.forward76:
    cmp ax, strict word 0
    jne short queue_view_cell_side_layers.forward77
    jmp near queue_view_cell_side_layers.back2
queue_view_cell_side_layers.forward77:
    cmp ax, strict word 1
    je short queue_view_cell_side_layers.back3
    cmp ax, strict word 2
    jne short queue_view_cell_side_layers.forward78
    jmp near queue_view_cell_side_layers.back2
queue_view_cell_side_layers.forward78:
    cmp ax, strict word 3
    je short queue_view_cell_side_layers.back3
queue_view_cell_side_layers.return1:
    ret
