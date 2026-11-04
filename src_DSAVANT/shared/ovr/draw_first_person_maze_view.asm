; auto-generated
draw_first_person_maze_view:
    mov ax, 0xffd0
    call aztec_csav
    mov word [bp - 0x24], 0
    mov word [bp - 0x22], 4
    mov word [bp - 0x20], 1
    mov word [bp - 0x1e], 3
    mov word [bp - 0x1c], 2
    mov word [marker_mode], 0
    mov ax, word [party_world_x]
    mov word [bp - 0xa], ax
    mov ax, word [party_world_y]
    mov word [bp - 0xc], ax
    mov ax, word [party_cell_x]
    mov word [bp - 0xe], ax
    mov ax, word [party_cell_y]
    mov word [bp - 0x10], ax
    mov ax, word [party_map_piece]
    mov word [bp - 0x12], ax
    mov word [last_map_piece_index], 0
    mov word [requested_row_limit], 0
    mov ax, 0
    push ax
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    mov ax, word [bp - 0x12]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp - 0x10]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp - 0xe]
    mov word [bp - 8], ax
    cmp word [current_level], byte 0xa
    je short .forward1
    cmp word [current_level], byte 0x19
    je short .forward1
    jmp near .forward5
.forward1:
    push ax
    mov ax, word [maze_data]
    add ax, 0x930
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    jne short .forward2
    jmp near .forward5
.forward2:
    mov ax, 0x63
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    mov ax, word [current_level]
    cmp ax, word [saved_level]
    jne short .forward4
    mov ax, word [bp - 0x12]
    cmp ax, word [saved_map_piece]
    jne short .forward4
    mov ax, word [bp - 0xe]
    cmp ax, word [saved_cell_x]
    jne short .forward4
    mov ax, word [bp - 0x10]
    cmp ax, word [saved_cell_y]
    jne short .forward4
    cmp word [capture_center_marker_mode], byte 0
    je short .forward3
    mov word [marker_mode], 0xffff
.forward3:
    mov byte [bp - 0x30], 2
    mov byte [bp - 0x2f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x30]
    push ax
    mov ax, 0
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [slot_recs + slot_rec_size*12 + slot_rec.glyph_y + 0x2]
    sub ah, ah
    inc ax
    push ax
    mov al, byte [slot_recs + slot_rec_size*12 + slot_rec.glyph_x + 0x4]
    sub ah, ah
    inc ax
    push ax
    mov ax, 0xc
    push ax
    call call_draw_text
    add sp, byte 0x16
.forward4:
    call draw_party_status_glyphs
    ret
.forward5:
    cmp word [maze_variant], byte 1
    je short .forward6
    cmp word [boundary_wall_open], byte 0
    je short .forward8
.forward6:
    push word [bp - 8]
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short .forward8
    cmp word [boundary_wall_open], byte 0
    je short .forward7
    mov ax, 0xff
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call draw_moon_glyph
.forward7:
    call draw_party_status_glyphs
    ret
.forward8:
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, boundary_box_faces
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, near_wall_layer_flags
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, side_wall_layer_flags
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, view_layer_scratch
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, view_marker_ids
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, far_wall_overlay_ids
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, view_marker_kinds
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, far_wall_object_ids
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, near_wall_overlay_ids
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, near_wall_object_ids
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x7f8
    push ax
    mov ax, queued_slot_x
    push ax
    call aztec_setmem
    add sp, byte 6
    mov word [render_queue_count], 0
    mov ax, word [bp - 0x12]
    mov word [bp - 0x14], ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x14]
    push ax
    lea ax, word [bp - 0x10]
    push ax
    lea ax, word [bp - 0xe]
    push ax
    lea ax, word [bp - 0xc]
    push ax
    lea ax, word [bp - 0xa]
    push ax
    call offset_relative_map_position
    add sp, byte 0xe
    mov word [view_depth_count], 5
    mov ax, word [party_world_x]
    add ax, word [party_world_y]
    add ax, word [party_facing]
    mov cx, 2
    cwd
    idiv cx
    mov word [side_wall_animation_phase], dx
    mov word [boundary_wall_variant], 0
    mov ax, word [maze_variant]
    jmp near .forward24
jumptable_59e2_case_1:
    mov word [boundary_wall_variant], 0
    cmp word [current_level], byte 0x1e
    jne short draw_first_person_maze_view.forward9
    cmp word [party_map_piece], byte 8
    jne short draw_first_person_maze_view.forward9
    jmp short draw_first_person_maze_view.forward10
draw_first_person_maze_view.forward9:
    mov ax, 0x1f
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1f
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call call_draw_maze_piece
    add sp, byte 8
draw_first_person_maze_view.forward10:
    mov ax, 0x20
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    jmp near jumptable_59e2_case_0
jumptable_59e2_case_2:
    mov word [boundary_wall_variant], 1
    mov ax, 0xff
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call draw_moon_glyph
    mov ax, 4
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    mov ax, 0x3e
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    jmp near jumptable_59e2_case_0
jumptable_59e2_case_3:
    mov word [boundary_wall_variant], 2
    mov ax, 0xff
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call draw_moon_glyph
    cmp word [current_level], byte 0xe
    jne short draw_first_person_maze_view.forward12
    cmp word [party_map_piece], byte 9
    jle short draw_first_person_maze_view.forward12
    cmp word [party_map_piece], byte 0xa
    jg short draw_first_person_maze_view.forward11
    mov ax, word [party_facing]
    cmp ax, strict word 2
    je short draw_first_person_maze_view.forward11
    cmp word [party_facing], byte 0
    je short draw_first_person_maze_view.forward12
    cmp word [party_cell_y], byte 5
    jge short draw_first_person_maze_view.forward12
draw_first_person_maze_view.forward11:
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x48
    push ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    jmp short draw_first_person_maze_view.forward13
draw_first_person_maze_view.forward12:
    mov ax, 4
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    mov ax, 0xad
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0xad
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 2
    push ax
    call call_draw_maze_piece
    add sp, byte 8
draw_first_person_maze_view.forward13:
    jmp near jumptable_59e2_case_0
jumptable_59e2_case_4:
    mov word [boundary_wall_variant], 3
    mov ax, 0xff
    push ax
    mov ax, 0x48
    cmp word [boundary_wall_open], byte 0
    je short draw_first_person_maze_view.forward14
    mov ax, 0x8e
draw_first_person_maze_view.forward14:
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call draw_moon_glyph
    mov ax, 4
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    cmp word [boundary_wall_open], byte 0
    jne short draw_first_person_maze_view.forward15
    mov ax, 0x2a
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call call_draw_maze_piece
    add sp, byte 8
draw_first_person_maze_view.forward15:
    jmp near jumptable_59e2_case_0
jumptable_59e2_case_5:
    mov word [boundary_wall_variant], 4
    mov ax, 0xff
    push ax
    mov ax, 0x38
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call draw_moon_glyph
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    mov ax, 0x2a
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    jmp near jumptable_59e2_case_0
jumptable_59e2_case_6:
    mov word [boundary_wall_variant], 5
    mov ax, 0xff
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call call_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call draw_moon_glyph
    mov ax, 0x3e
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    cmp word [current_level], byte 8
    jne short draw_first_person_maze_view.forward20
    cmp word [party_map_piece], byte 6
    jne short draw_first_person_maze_view.forward20
    cmp word [party_cell_y], byte 4
    jne short draw_first_person_maze_view.forward20
    mov ax, word [party_cell_x]
    cmp ax, strict word 2
    je short draw_first_person_maze_view.forward16
    cmp ax, strict word 1
    jne short draw_first_person_maze_view.forward17
draw_first_person_maze_view.forward16:
    mov ax, word [party_facing]
    cmp ax, strict word 1
    je short draw_first_person_maze_view.forward19
draw_first_person_maze_view.forward17:
    mov ax, word [party_cell_x]
    cmp ax, strict word 5
    je short draw_first_person_maze_view.forward18
    cmp ax, strict word 6
    jne short draw_first_person_maze_view.forward20
draw_first_person_maze_view.forward18:
    mov ax, word [party_facing]
    cmp ax, strict word 3
    jne short draw_first_person_maze_view.forward20
draw_first_person_maze_view.forward19:
    jmp short draw_first_person_maze_view.forward21
draw_first_person_maze_view.forward20:
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x48
    push ax
    push ax
    call call_fill_area
    add sp, byte 0xa
draw_first_person_maze_view.forward21:
    cmp word [current_level], byte 8
    je short draw_first_person_maze_view.forward22
    cmp word [current_level], byte 0xb
    jne short draw_first_person_maze_view.forward23
    cmp word [party_map_piece], byte 6
    jne short draw_first_person_maze_view.forward23
    cmp word [party_cell_y], byte 3
    jle short draw_first_person_maze_view.forward23
draw_first_person_maze_view.forward22:
    mov ax, 4
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
draw_first_person_maze_view.forward23:
    jmp short jumptable_59e2_case_0
jumptable_59e2:
    dw jumptable_59e2_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_6 - IMAGE_BASE + __zres_end
draw_first_person_maze_view.forward24:
    cmp ax, strict word 7
    jae short jumptable_59e2_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_59e2 - IMAGE_BASE + __zres_end]
jumptable_59e2_case_0:
    mov word [view_scan_depth], 0
draw_first_person_maze_view.back1:
    mov ax, word [view_scan_depth]
    cmp ax, word [view_depth_count]
    jl short draw_first_person_maze_view.forward26
    jmp near draw_first_person_maze_view.forward38
draw_first_person_maze_view.forward26:
    mov ax, word [party_world_x]
    add ax, word [party_world_y]
    add ax, word [party_facing]
    mov cx, ax
    mov ax, word [view_scan_depth]
    add cx, ax
    mov ax, cx
    mov cx, 2
    cwd
    idiv cx
    mov word [floor_checker_parity], dx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x12]
    push ax
    lea ax, word [bp - 0x10]
    push ax
    lea ax, word [bp - 0xe]
    push ax
    lea ax, word [bp - 0xc]
    push ax
    lea ax, word [bp - 0xa]
    push ax
    call offset_relative_map_position
    add sp, byte 0xe
    test ax, ax
    je short draw_first_person_maze_view.forward33
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    jne short draw_first_person_maze_view.forward31
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 5
    je short draw_first_person_maze_view.forward29
    cmp word [boundary_wall_open], byte 0
    je short draw_first_person_maze_view.forward27
    mov word [center_cell_wall], 0
    jmp short draw_first_person_maze_view.forward28
draw_first_person_maze_view.forward27:
    mov ax, 5
    imul word [view_scan_depth]
    mov bx, ax
    mov byte [bx + maze_boundary_wall_markers], 1
    mov word [center_cell_wall], 4
draw_first_person_maze_view.forward28:
    jmp short draw_first_person_maze_view.forward30
draw_first_person_maze_view.forward29:
    mov ax, 5
    imul word [view_scan_depth]
    mov bx, ax
    mov byte [bx + maze_boundary_wall_markers], 3
    mov word [center_cell_wall], 0
draw_first_person_maze_view.forward30:
    jmp short draw_first_person_maze_view.forward32
draw_first_person_maze_view.forward31:
    mov word [center_cell_wall], 2
draw_first_person_maze_view.forward32:
    mov ax, word [center_cell_wall]
    mov word [center_left_wall], ax
    mov word [center_right_wall], ax
    jmp short draw_first_person_maze_view.forward34
draw_first_person_maze_view.forward33:
    mov ax, 0
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call resolve_cell_wall_effects
    add sp, byte 0xc
    mov word [center_cell_wall], ax
    mov ax, 0
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    push ax
    call get_relative_cell_wall
    add sp, byte 0xe
    mov word [center_left_wall], ax
    mov ax, 0
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    mov ax, 2
    push ax
    call get_relative_cell_wall
    add sp, byte 0xe
    mov word [center_right_wall], ax
draw_first_person_maze_view.forward34:
    mov ax, 0xffff
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call resolve_cell_wall_effects
    add sp, byte 0xc
    mov word [left_cell_wall], ax
    mov ax, 1
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call resolve_cell_wall_effects
    add sp, byte 0xc
    mov word [right_cell_wall], ax
    cmp word [view_scan_depth], byte 1
    jle short draw_first_person_maze_view.forward35
    mov ax, 0xfffe
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call resolve_cell_wall_effects
    add sp, byte 0xc
    mov word [far_left_cell_wall], ax
    mov ax, 2
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call resolve_cell_wall_effects
    add sp, byte 0xc
    mov word [far_right_cell_wall], ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    mov ax, 0
    push ax
    call get_relative_cell_wall
    add sp, byte 0xe
    mov word [left_cell_side_wall], ax
    mov ax, 1
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    mov ax, 2
    push ax
    call get_relative_cell_wall
    add sp, byte 0xe
    mov word [right_cell_side_wall], ax
    jmp short draw_first_person_maze_view.forward36
draw_first_person_maze_view.forward35:
    mov word [far_left_cell_wall], 0
    mov word [far_right_cell_wall], 0
    mov word [left_cell_side_wall], 0
    mov word [right_cell_side_wall], 0
draw_first_person_maze_view.forward36:
    cmp word [center_cell_wall], byte 0
    jne short draw_first_person_maze_view.forward37
    mov ax, word [requested_row_limit]
    cmp ax, word [view_scan_depth]
    jne short draw_first_person_maze_view.forward37
    inc word [requested_row_limit]
draw_first_person_maze_view.forward37:
    mov ax, word [floor_checker_parity]
    mov word [maze_gate_glyph_variant], ax
    mov ax, 0x1e
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0x85
    push ax
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x21
    push ax
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x19
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0x8c
    push ax
    push ax
    mov ax, 0x6e
    push ax
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x27
    push ax
    push ax
    mov ax, 0x24
    push ax
    mov ax, 0x21
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [center_cell_wall]
    push word [view_scan_depth]
    call queue_maze_cell_layers
    add sp, byte 0x4a
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0xae
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x25
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    push word [view_scan_depth]
    call queue_view_cell_side_layers
    add sp, byte 0x40
    mov ax, 0x39
    push ax
    mov ax, 0x34
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x9e
    push ax
    mov ax, 0x99
    push ax
    mov ax, 0x80
    push ax
    mov ax, 0x7b
    push ax
    mov ax, 0x6d
    push ax
    mov ax, 0x69
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x55
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0xaa
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x5e
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x4e
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x15
    push ax
    mov ax, 0x13
    push ax
    mov ax, 0xf
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [center_left_wall]
    push word [view_scan_depth]
    call queue_boundary_view_layers
    add sp, byte 0x40
    mov ax, 0x34
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x16
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x99
    push ax
    mov ax, 0x9e
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x69
    push ax
    mov ax, 0x6d
    push ax
    mov ax, 0x55
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x1c
    push ax
    mov ax, 0xaf
    push ax
    mov ax, 0x5e
    push ax
    mov ax, 0x62
    push ax
    mov ax, 0x4e
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x15
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0xf
    push ax
    mov ax, 0x13
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [center_right_wall]
    push word [view_scan_depth]
    call queue_boundary_view_layers
    add sp, byte 0x40
    mov ax, 0x43
    push ax
    mov ax, 0x3e
    push ax
    mov ax, 0x25
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x76
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x64
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0x26
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x56
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 0x17
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [left_cell_side_wall]
    push word [view_scan_depth]
    call queue_boundary_view_layers
    add sp, byte 0x40
    mov ax, 0x3e
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x25
    push ax
    mov ax, 0xa3
    push ax
    mov ax, 0xa8
    push ax
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x76
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0x64
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x26
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x66
    push ax
    mov ax, 0x6a
    push ax
    mov ax, 0x56
    push ax
    mov ax, 0x5a
    push ax
    mov ax, 0x1d
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x17
    push ax
    mov ax, 0x1b
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [right_cell_side_wall]
    push word [view_scan_depth]
    call queue_boundary_view_layers
    add sp, byte 0x40
    mov ax, word [floor_checker_parity]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [maze_gate_glyph_variant], dx
    mov ax, 0x22
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x29
    push ax
    mov ax, 0x2d
    push ax
    push ax
    mov ax, 0x29
    push ax
    mov ax, 0x25
    push ax
    push ax
    mov ax, 5
    push ax
    push ax
    mov ax, 0x92
    push ax
    push ax
    mov ax, 0x74
    push ax
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x30
    push ax
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 0x2a
    push ax
    push ax
    mov ax, 0x43
    push ax
    mov ax, 5
    push ax
    mov ax, 3
    push ax
    push ax
    mov ax, 4
    push ax
    push cx
    push ax
    push cx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [left_cell_wall]
    push word [view_scan_depth]
    call queue_maze_cell_layers
    add sp, byte 0x4a
    mov ax, 0xc9
    push ax
    mov ax, 0xc4
    push ax
    mov ax, 0xb2
    push ax
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x34
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [view_scan_depth]
    call queue_view_cell_side_layers
    add sp, byte 0x40
    mov ax, word [floor_checker_parity]
    mov word [maze_gate_glyph_variant], ax
    mov ax, 0x26
    push ax
    push ax
    mov ax, 8
    push ax
    push ax
    mov ax, 0x95
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0x35
    push ax
    mov ax, 0x39
    push ax
    push ax
    mov ax, 0x35
    push ax
    mov ax, 0x31
    push ax
    push ax
    mov ax, 9
    push ax
    push ax
    mov ax, 0x98
    push ax
    push ax
    mov ax, 0x7a
    push ax
    push ax
    mov ax, 0x36
    push ax
    mov ax, 0x39
    push ax
    push ax
    mov ax, 0x36
    push ax
    mov ax, 0x33
    push ax
    push ax
    mov ax, 0x47
    push ax
    mov ax, 9
    push ax
    mov ax, 6
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [far_left_cell_wall]
    push word [view_scan_depth]
    call queue_maze_cell_layers
    add sp, byte 0x4a
    mov ax, 0xd3
    push ax
    mov ax, 0xce
    push ax
    mov ax, 0xb6
    push ax
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0x2f
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    push word [view_scan_depth]
    call queue_view_cell_side_layers
    add sp, byte 0x40
    mov ax, word [floor_checker_parity]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [maze_gate_glyph_variant], dx
    mov ax, 0x2a
    push ax
    push ax
    mov ax, 0xc
    push ax
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x45
    push ax
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0x3d
    push ax
    push ax
    mov ax, 0xd
    push ax
    push ax
    mov ax, 0x9e
    push ax
    push ax
    mov ax, 0x80
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0x42
    push ax
    push ax
    mov ax, 0x3f
    push ax
    mov ax, 0x3c
    push ax
    push ax
    mov ax, 0x4b
    push ax
    mov ax, 0xd
    push ax
    mov ax, 9
    push ax
    push ax
    mov ax, 4
    push ax
    push cx
    push ax
    push cx
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [right_cell_wall]
    push word [view_scan_depth]
    call queue_maze_cell_layers
    add sp, byte 0x4a
    mov ax, 0xc4
    push ax
    mov ax, 0xc9
    push ax
    mov ax, 0xba
    push ax
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x2a
    push ax
    mov ax, 0x34
    push ax
    mov ax, 5
    push ax
    mov ax, 0xf
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [view_scan_depth]
    call queue_view_cell_side_layers
    add sp, byte 0x40
    mov ax, word [floor_checker_parity]
    mov word [maze_gate_glyph_variant], ax
    mov ax, 0x2e
    push ax
    push ax
    mov ax, 0x10
    push ax
    push ax
    mov ax, 0x8d
    push ax
    mov ax, 0x95
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x51
    push ax
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x49
    push ax
    push ax
    mov ax, 0x11
    push ax
    push ax
    mov ax, 0xa4
    push ax
    push ax
    mov ax, 0x86
    push ax
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x4b
    push ax
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0x45
    push ax
    push ax
    mov ax, 0x4f
    push ax
    mov ax, 0x11
    push ax
    mov ax, 0xc
    push ax
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [far_right_cell_wall]
    push word [view_scan_depth]
    call queue_maze_cell_layers
    add sp, byte 0x4a
    mov ax, 0xce
    push ax
    mov ax, 0xd3
    push ax
    mov ax, 0xbe
    push ax
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0xc
    push ax
    mov ax, 8
    push ax
    mov ax, 0x14
    push ax
    mov ax, 0x10
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 4
    push ax
    push ax
    mov ax, 0x2f
    push ax
    mov ax, 0x39
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x14
    push ax
    mov ax, 6
    push ax
    mov ax, 5
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push word [view_scan_depth]
    call queue_view_cell_side_layers
    add sp, byte 0x40
    inc word [view_scan_depth]
    jmp near draw_first_person_maze_view.back1
draw_first_person_maze_view.forward38:
    mov ax, word [view_depth_count]
    dec ax
    mov word [view_scan_depth], ax
    jmp near draw_first_person_maze_view.forward84
draw_first_person_maze_view.back2:
    mov word [bp - 4], 0xff
draw_first_person_maze_view.back3:
    mov ax, word [render_queue_count]
    dec ax
    mov word [bp - 2], ax
    jmp short draw_first_person_maze_view.forward41
draw_first_person_maze_view.back4:
    mov ax, 0x11
    imul word [bp - 2]
    add ax, queued_slot_x
    mov word [bp - 0x26], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [view_scan_depth]
    jne short draw_first_person_maze_view.forward40
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, word [bp - 4]
    jne short draw_first_person_maze_view.forward40
    cmp word [bx], byte -1
    je short draw_first_person_maze_view.forward39
    push word [bx + 4]
    mov al, byte [bx + 8]
    sub ah, ah
    push ax
    push word [bx]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    call call_draw_maze_piece
    add sp, byte 8
draw_first_person_maze_view.forward39:
    mov bx, word [bp - 0x26]
    cmp word [bx + 2], byte -1
    je short draw_first_person_maze_view.forward40
    push word [bx + 6]
    mov al, byte [bx + 9]
    sub ah, ah
    push ax
    push word [bx + 2]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    call call_draw_maze_piece
    add sp, byte 8
draw_first_person_maze_view.forward40:
    dec word [bp - 2]
draw_first_person_maze_view.forward41:
    cmp word [bp - 2], byte 0
    jge short draw_first_person_maze_view.back4
    mov ax, 0
    cmp word [bp - 4], strict word 0xff
    je short draw_first_person_maze_view.forward42
    mov ax, 0xffff
    cmp word [bp - 4], strict word 0xfb
    jne short draw_first_person_maze_view.forward42
    mov ax, 1
draw_first_person_maze_view.forward42:
    mov word [bp - 0x18], ax
    cmp ax, strict word 0xffff
    jne short draw_first_person_maze_view.forward43
    jmp near draw_first_person_maze_view.forward49
draw_first_person_maze_view.forward43:
    mov ax, word [render_queue_count]
    dec ax
    mov word [bp - 2], ax
    jmp near draw_first_person_maze_view.forward48
draw_first_person_maze_view.back5:
    mov ax, 0x11
    imul word [bp - 2]
    add ax, queued_slot_x
    mov word [bp - 0x26], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [view_scan_depth]
    je short draw_first_person_maze_view.forward44
    jmp near draw_first_person_maze_view.forward47
draw_first_person_maze_view.forward44:
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, 0xfa
    jl short draw_first_person_maze_view.forward45
    jmp near draw_first_person_maze_view.forward47
draw_first_person_maze_view.forward45:
    mov al, byte [bx + 0x10]
    sub ah, ah
    cmp ax, word [bp - 0x18]
    jne short draw_first_person_maze_view.forward47
    cmp byte [bx + 0xc], 4
    jne short draw_first_person_maze_view.forward46
    cmp byte [bx + 9], 1
    jne short draw_first_person_maze_view.forward46
    push bx
    call draw_queued_glyph_shape
    pop cx
    jmp short draw_first_person_maze_view.forward47
draw_first_person_maze_view.forward46:
    mov word [bp - 6], 0
draw_first_person_maze_view.back6:
    mov bx, word [bp - 0x26]
    mov si, word [bp - 6]
    mov al, byte [bx + si + 8]
    mov bx, si
    add bx, bp
    mov byte [bx - 0x30], al
    inc word [bp - 6]
    mov ax, word [bp - 6]
    cmp ax, strict word 4
    jl short draw_first_person_maze_view.back6
    mov byte [bp - 0x2c], 0
    mov bx, word [bp - 0x26]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    mov ax, 0
    push ax
    lea ax, word [bp - 0x30]
    push ax
    mov al, byte [bx + 0xf]
    sub ah, ah
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    push word [bx + 6]
    push word [bx + 4]
    push word [bx + 2]
    push word [bx]
    mov al, byte [bx + 0xc]
    sub ah, ah
    push ax
    call call_draw_text
    add sp, byte 0x16
draw_first_person_maze_view.forward47:
    dec word [bp - 2]
draw_first_person_maze_view.forward48:
    cmp word [bp - 2], byte 0
    jl short draw_first_person_maze_view.forward49
    jmp near draw_first_person_maze_view.back5
draw_first_person_maze_view.forward49:
    dec word [bp - 4]
    mov ax, word [bp - 4]
    cmp ax, 0xfb
    jl short draw_first_person_maze_view.forward50
    jmp near draw_first_person_maze_view.back3
draw_first_person_maze_view.forward50:
    mov al, byte [bss_5b55]
    sub ah, ah
    cmp ax, 0xff
    jne short draw_first_person_maze_view.forward51
    jmp near draw_first_person_maze_view.forward70
draw_first_person_maze_view.forward51:
    cmp word [view_scan_depth], byte 0
    je short draw_first_person_maze_view.forward52
    jmp near draw_first_person_maze_view.forward70
draw_first_person_maze_view.forward52:
    cmp word [boundary_wall_variant], byte 0
    jne short draw_first_person_maze_view.forward53
    cmp byte [marker_string_block_mode], 3
    jne short draw_first_person_maze_view.forward53
    jmp near draw_first_person_maze_view.forward70
draw_first_person_maze_view.forward53:
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short draw_first_person_maze_view.forward54
    cmp word [requested_row_limit], byte 1
    jg short draw_first_person_maze_view.forward54
    jmp near draw_first_person_maze_view.forward70
draw_first_person_maze_view.forward54:
    mov word [bp - 6], 0
draw_first_person_maze_view.back7:
    mov ax, word [bp - 6]
    shl ax, 1
    mov bx, ax
    cmp word [bx + marker_string_frames], byte 0
    jg short draw_first_person_maze_view.forward55
    jmp near draw_first_person_maze_view.forward59
draw_first_person_maze_view.forward55:
    mov al, byte [bx + marker_string_frames]
    mov byte [bp - 0x30], al
    mov byte [bp - 0x2f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x30]
    push ax
    push word [bx + marker_string_variants]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov bx, word [bx + marker_string_frames]
    mov al, byte [bx + slot_recs + slot_rec_size*13 + slot_rec.glyph_y]
    sub ah, ah
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    add ax, word [bx + marker_string_y_offsets]
    push ax
    mov ax, word [bx + marker_string_frames]
    shl ax, 1
    add ax, word [bx + marker_string_variants]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec_size*13 + slot_rec.glyph_x]
    sub ah, ah
    mov bx, cx
    add ax, word [bx + marker_string_x_offsets]
    push ax
    mov ax, 0xd
    push ax
    call call_draw_text
    add sp, byte 0x16
    mov ax, word [bp - 6]
    shl ax, 1
    mov bx, ax
    cmp word [bx + marker_string_descending], byte 0
    je short draw_first_person_maze_view.forward56
    dec word [bx + marker_string_frames]
    jmp short draw_first_person_maze_view.forward57
draw_first_person_maze_view.forward56:
    inc word [bx + marker_string_frames]
draw_first_person_maze_view.forward57:
    mov al, byte [slot_recs + slot_rec_size*13 + slot_rec.last_glyph]
    sub ah, ah
    cmp ax, word [bx + marker_string_frames]
    jge short draw_first_person_maze_view.forward58
    mov word [bx + marker_string_frames], 0
draw_first_person_maze_view.forward58:
    jmp near draw_first_person_maze_view.forward69
draw_first_person_maze_view.forward59:
    cmp word [capture_center_marker_mode], byte 0
    je short draw_first_person_maze_view.forward60
    jmp near draw_first_person_maze_view.forward69
draw_first_person_maze_view.forward60:
    mov ax, 0x64
    push ax
    call random_below
    pop cx
    cmp ax, word [bp - 6]
    jle short draw_first_person_maze_view.forward61
    jmp near draw_first_person_maze_view.forward69
draw_first_person_maze_view.forward61:
    mov ax, 2
    push ax
    call random_below
    pop cx
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + marker_string_variants], ax
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short draw_first_person_maze_view.forward62
    push cx
    call random_below
    pop cx
    jmp short draw_first_person_maze_view.forward63
draw_first_person_maze_view.forward62:
    mov ax, 0
draw_first_person_maze_view.forward63:
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + marker_string_descending], ax
    mov ax, 1
    cmp word [bx + marker_string_descending], byte 0
    je short draw_first_person_maze_view.forward64
    mov al, byte [slot_recs + slot_rec_size*13 + slot_rec.last_glyph]
    sub ah, ah
draw_first_person_maze_view.forward64:
    mov word [bx + marker_string_frames], ax
    mov ax, word [boundary_wall_variant]
    mov cx, 1
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short draw_first_person_maze_view.forward65
    mov ax, 0x1e
    jmp short draw_first_person_maze_view.forward66
draw_first_person_maze_view.forward65:
    mov ax, 0xa
draw_first_person_maze_view.forward66:
    mov word [bp - 2], ax
    cmp word [bx + marker_string_variants], byte 0
    je short draw_first_person_maze_view.forward67
    push ax
    call random_below
    pop cx
    jmp short draw_first_person_maze_view.forward68
draw_first_person_maze_view.forward67:
    push word [bp - 2]
    call random_below
    pop cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
draw_first_person_maze_view.forward68:
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + marker_string_x_offsets], ax
    mov ax, 5
    push ax
    call random_below
    pop cx
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + marker_string_y_offsets], ax
draw_first_person_maze_view.forward69:
    inc word [bp - 6]
    mov ax, word [bp - 6]
    cmp ax, strict word 3
    jge short draw_first_person_maze_view.forward70
    jmp near draw_first_person_maze_view.back7
draw_first_person_maze_view.forward70:
    cmp word [boundary_wall_variant], byte 0
    je short draw_first_person_maze_view.forward71
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 2
    jg short draw_first_person_maze_view.forward71
    jmp near draw_first_person_maze_view.forward83
draw_first_person_maze_view.forward71:
    mov word [bp - 0x14], 0
draw_first_person_maze_view.back8:
    mov ax, word [bp - 0x14]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x24]
    mov word [bp - 2], ax
    mov ax, 5
    imul word [view_scan_depth]
    mov cx, ax
    mov ax, word [bp - 2]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + boundary_box_faces]
    sub ah, ah
    mov word [bp - 0x1a], ax
    test ax, ax
    jne short draw_first_person_maze_view.forward72
    jmp near draw_first_person_maze_view.forward82
draw_first_person_maze_view.forward72:
    mov ax, 0x28
    imul word [view_scan_depth]
    mov cx, word [bp - 2]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x2a6], byte 0
    jne short draw_first_person_maze_view.forward73
    jmp near draw_first_person_maze_view.forward82
draw_first_person_maze_view.forward73:
    cmp word [bp - 0x1a], byte 1
    je short draw_first_person_maze_view.forward74
    cmp word [boundary_wall_open], byte 0
    je short draw_first_person_maze_view.forward76
draw_first_person_maze_view.forward74:
    mov ax, 0
    cmp word [boundary_wall_open], byte 0
    je short draw_first_person_maze_view.forward75
    mov ax, 0xff
draw_first_person_maze_view.forward75:
    push ax
    push word [bx + 0x2ac]
    push word [bx + 0x2aa]
    push word [bx + 0x2a8]
    push word [bx + 0x2a6]
    call call_fill_area
    add sp, byte 0xa
    jmp near draw_first_person_maze_view.forward81
draw_first_person_maze_view.forward76:
    cmp word [view_scan_depth], byte 0
    jg short draw_first_person_maze_view.forward77
    jmp near draw_first_person_maze_view.forward81
draw_first_person_maze_view.forward77:
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    add ax, word [view_scan_depth]
    shl ax, 1
    mov bx, ax
    cmp byte [bx + slot_recs + slot_rec_size*9 + slot_rec.glyph_x], 0
    jne short draw_first_person_maze_view.forward78
    jmp near draw_first_person_maze_view.forward81
draw_first_person_maze_view.forward78:
    mov ax, 2
    push ax
    call random_below
    pop cx
    add ax, word [party_world_x]
    add ax, word [party_world_y]
    add ax, word [party_facing]
    add ax, word [view_scan_depth]
    mov cx, 2
    cwd
    idiv cx
    mov word [floor_checker_parity], dx
    mov al, byte [view_scan_depth]
    mov byte [bp - 0x30], al
    mov byte [bp - 0x2f], 0
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    add ax, word [view_scan_depth]
    shl ax, 1
    add ax, dx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec_size*9 + slot_rec.glyph_x]
    sub ah, ah
    mov word [bp - 6], ax
    cmp ax, 0xff
    jne short draw_first_person_maze_view.forward80
    mov ax, 0xffee
    cmp word [floor_checker_parity], byte 0
    je short draw_first_person_maze_view.forward79
    mov ax, 0xffea
draw_first_person_maze_view.forward79:
    mov word [bp - 6], ax
draw_first_person_maze_view.forward80:
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x30]
    push ax
    push dx
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    add ax, word [view_scan_depth]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec_size*9 + slot_rec.glyph_y]
    sub ah, ah
    push ax
    push word [bp - 6]
    mov ax, 9
    push ax
    call call_draw_text
    add sp, byte 0x16
draw_first_person_maze_view.forward81:
    cmp word [boundary_wall_open], byte 0
    je short draw_first_person_maze_view.forward82
    call draw_clock_marker_glyph
    call draw_moon_glyph
draw_first_person_maze_view.forward82:
    inc word [bp - 0x14]
    mov ax, word [bp - 0x14]
    cmp ax, strict word 5
    jge short draw_first_person_maze_view.forward83
    jmp near draw_first_person_maze_view.back8
draw_first_person_maze_view.forward83:
    dec word [view_scan_depth]
draw_first_person_maze_view.forward84:
    cmp word [view_scan_depth], byte 0
    jl short draw_first_person_maze_view.forward85
    jmp near draw_first_person_maze_view.back2
draw_first_person_maze_view.forward85:
    call draw_party_status_glyphs
    ret
