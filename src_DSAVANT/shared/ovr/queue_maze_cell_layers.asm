; auto-generated
queue_maze_cell_layers:
    mov ax, 0xfff0
    call $csav
    mov ax, 4
    cmp word [boundary_wall_variant], byte 0
    jne short .forward1
    mov ax, 3
.forward1:
    mov word [bp - 0xa], ax
    mov word [bp - 2], 0xffff
    mov word [bp - 4], 0xffff
    cmp word [boundary_wall_variant], byte 0
    jg short .forward2
    jmp near .forward11
.forward2:
    cmp word [bp + 4], byte 3
    je short .forward3
    jmp near .forward11
.forward3:
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 3
    jl short .forward4
    cmp ax, strict word 5
    jne short .forward5
.forward4:
    mov ax, 0x15
    jmp short .forward6
.forward5:
    mov ax, 0x14
.forward6:
    mov word [bp - 0xc], ax
    cmp word [boundary_wall_variant], byte 3
    jl short .forward7
    cmp word [boundary_wall_variant], byte 5
    jne short .forward8
.forward7:
    mov ax, 0x16
    jmp short .forward9
.forward8:
    mov ax, 0x15
.forward9:
    mov word [bp - 0xe], ax
    cmp word [bp + 8], byte 0
    jne short .forward10
    push ax
    push word [bp - 0xc]
    call select_floor_face_index
    add sp, byte 4
    mov word [bp - 2], ax
    push word [bp - 0xc]
    call floor_overlay_when_enabled
    pop cx
    mov word [bp - 4], ax
    jmp short .forward11
.forward10:
    cmp word [bp + 8], byte 4
    jne short .forward11
    push word [bp - 0xc]
    push word [bp - 0xe]
    call select_floor_face_index
    add sp, byte 4
    mov word [bp - 2], ax
    push word [bp - 0xe]
    call floor_overlay_when_enabled
    pop cx
    mov word [bp - 4], ax
.forward11:
    mov ax, word [bp + 6]
    jmp near .forward25
jumptable_3a86_case_1:
    cmp word [bp - 2], byte -1
    je short queue_maze_cell_layers.forward13
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x10]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push word [bp - 4]
    mov ax, 0
    push ax
    push ax
    push ax
    cmp word [bp + 4], byte 1
    jne short queue_maze_cell_layers.forward12
    mov ax, 2
queue_maze_cell_layers.forward12:
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 2]
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward13:
    jmp near jumptable_3a86_case_0
jumptable_3a86_case_5:
    cmp word [bp - 2], byte -1
    je short queue_maze_cell_layers.forward14
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x14]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push word [bp - 4]
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 2]
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward14:
    jmp near jumptable_3a86_case_0
jumptable_3a86_case_2:
    cmp word [boundary_wall_variant], byte 0
    jne short queue_maze_cell_layers.forward17
    cmp word [bp + 4], byte 3
    jge short queue_maze_cell_layers.forward16
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov cx, word [bp + 4]
    cmp cx, byte 1
    jne short queue_maze_cell_layers.forward15
    mov ax, 2
queue_maze_cell_layers.forward15:
    push ax
    mov ax, 0xffff
    push ax
    add cx, word [bp + 0x18]
    mov ax, cx
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward16:
    jmp near queue_maze_cell_layers.forward21
queue_maze_cell_layers.forward17:
    cmp word [boundary_wall_variant], byte 3
    jl short queue_maze_cell_layers.forward18
    cmp word [boundary_wall_variant], byte 5
    jne short queue_maze_cell_layers.forward20
queue_maze_cell_layers.forward18:
    cmp word [bp + 4], byte 4
    jge short queue_maze_cell_layers.forward19
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x10]
    push word [bp + 4]
    push word [bp - 4]
    mov ax, word [bp + 0x32]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 2]
    mov ax, word [bp + 0x34]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x32]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward19:
    jmp short queue_maze_cell_layers.forward21
queue_maze_cell_layers.forward20:
    cmp word [boundary_wall_variant], byte 5
    jge short queue_maze_cell_layers.forward21
    cmp word [bp + 4], byte 4
    jge short queue_maze_cell_layers.forward21
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x14]
    push word [bp + 4]
    push word [bp - 4]
    mov ax, word [bp + 0x46]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 2]
    mov ax, word [bp + 0x48]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x46]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward21:
    jmp near jumptable_3a86_case_0
jumptable_3a86_case_4:
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    jne short queue_maze_cell_layers.forward24
    cmp word [bp + 4], byte 4
    jge short queue_maze_cell_layers.forward24
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push cx
    mov ax, 0xffff
    push ax
    cmp word [maze_gate_glyph_variant], byte 0
    je short queue_maze_cell_layers.forward22
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 4]
    jmp short queue_maze_cell_layers.forward23
queue_maze_cell_layers.forward22:
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 4]
queue_maze_cell_layers.forward23:
    push ax
    mov ax, 0xfc
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward24:
    jmp short jumptable_3a86_case_0
jumptable_3a86:
    dw jumptable_3a86_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
queue_maze_cell_layers.forward25:
    cmp ax, strict word 0x10
    jae short jumptable_3a86_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3a86 - IMAGE_BASE + __zres_end]
jumptable_3a86_case_0:
    mov word [bp - 2], 0xffff
    mov word [bp - 4], 0xffff
    mov ax, word [bp + 4]
    cmp ax, word [bp - 0xa]
    jl short queue_maze_cell_layers.forward27
    jmp near queue_maze_cell_layers.return1
queue_maze_cell_layers.forward27:
    mov word [bp - 0x10], 0xffff
    mov ax, word [bp + 6]
    jmp near queue_maze_cell_layers.forward47
jumptable_3ed8_case_8:
    mov ax, word [bp + 0x2e]
    cmp word [bp + 6], byte 8
    jne short queue_maze_cell_layers.forward28
    mov ax, word [bp + 0x2a]
queue_maze_cell_layers.forward28:
    mov word [bp - 6], ax
    mov ax, word [bp + 0x30]
    cmp word [bp + 6], byte 8
    jne short queue_maze_cell_layers.forward29
    mov ax, word [bp + 0x2c]
queue_maze_cell_layers.forward29:
    mov word [bp - 8], ax
    mov ax, word [bp - 6]
    add ax, word [bp + 4]
    inc ax
    inc ax
    inc ax
    mov word [bp - 2], ax
    mov word [bp - 4], 0xffff
jumptable_3ed8_case_7:
    cmp word [bp + 6], byte 7
    jne short jumptable_3ed8_case_1
    mov ax, word [bp + 0x44]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    mov word [bp - 2], ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    mov word [bp - 4], ax
jumptable_3ed8_case_1:
    cmp word [boundary_wall_variant], byte 0
    jne short queue_maze_cell_layers.forward31
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    push word [bp - 4]
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 2]
    mov ax, word [bp + 0x20]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    jmp short queue_maze_cell_layers.forward32
queue_maze_cell_layers.forward31:
    cmp word [boundary_wall_variant], byte 2
    jne short queue_maze_cell_layers.forward32
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    push word [bp - 4]
    mov ax, word [bp + 0x36]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 2]
    mov ax, word [bp + 0x38]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x36]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward32:
    cmp word [bp + 6], byte 3
    je short queue_maze_cell_layers.forward33
    jmp near queue_maze_cell_layers.forward36
queue_maze_cell_layers.forward33:
    cmp word [maze_gate_frame], byte 0
    je short queue_maze_cell_layers.forward34
    cmp word [bp + 4], byte 0
    jne short queue_maze_cell_layers.forward34
    cmp word [bp + 8], byte 2
    jne short queue_maze_cell_layers.forward34
    mov ax, 0
    push ax
    push ax
    push ax
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
    mov ax, word [maze_gate_frame]
    add ax, strict word 0xc
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + maze_cell_x_offset]
    mov ax, 5
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    jmp near queue_maze_cell_layers.forward35
queue_maze_cell_layers.forward34:
    mov ax, 0
    push ax
    push ax
    push word [floor_checker_parity]
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
    mov ax, word [bp + 4]
    shl ax, 1
    add ax, word [floor_checker_parity]
    add ax, strict word 5
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + maze_cell_x_offset]
    mov ax, 5
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    mov ax, 0
    push ax
    push ax
    push word [floor_checker_parity]
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
    mov ax, word [bp + 4]
    inc ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + maze_cell_x_offset]
    mov ax, 5
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward35:
    jmp short queue_maze_cell_layers.forward37
queue_maze_cell_layers.forward36:
    cmp word [bp + 6], byte 6
    jne short queue_maze_cell_layers.forward37
    mov ax, 0
    push ax
    push ax
    push word [floor_checker_parity]
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
    mov ax, word [bp + 4]
    inc ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + maze_cell_x_offset]
    mov ax, 5
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward37:
    cmp word [boundary_wall_variant], byte 0
    jne short queue_maze_cell_layers.forward38
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, word [bp + 0x26]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x26]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
    jmp short queue_maze_cell_layers.forward39
queue_maze_cell_layers.forward38:
    cmp word [boundary_wall_variant], byte 2
    jne short queue_maze_cell_layers.forward39
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    call floor_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward39:
    cmp word [bp + 6], byte 8
    je short queue_maze_cell_layers.forward40
    cmp word [bp + 6], byte 9
    jne short queue_maze_cell_layers.forward41
queue_maze_cell_layers.forward40:
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp + 4]
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward41:
    jmp near jumptable_3ed8_case_0
jumptable_3ed8_case_5:
    cmp word [bp + 4], byte 4
    jge short queue_maze_cell_layers.forward42
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x12]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4a]
    add ax, word [bp + 4]
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
    mov ax, word [bp + 0x4c]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x4a]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.forward42:
    jmp near jumptable_3ed8_case_0
jumptable_3ed8_case_10:
    mov word [bp - 0x10], 9
    mov word [bp - 0xc], 1
    mov ax, word [party_status_frame]
    inc ax
    inc ax
    mov word [bp - 0xe], ax
    jmp near jumptable_3ed8_case_0
jumptable_3ed8_case_11:
    mov word [bp - 0x10], 9
    mov word [bp - 0xc], 7
    mov ax, 0
    cmp word [party_status_frame], byte 0
    je short queue_maze_cell_layers.forward43
    mov ax, 8
queue_maze_cell_layers.forward43:
    mov word [bp - 0xe], ax
    jmp short jumptable_3ed8_case_0
jumptable_3ed8_case_12:
    mov word [bp - 0x10], 0xa
    mov ax, 5
    cmp word [boundary_wall_variant], byte 0
    jne short queue_maze_cell_layers.forward44
    mov ax, 1
queue_maze_cell_layers.forward44:
    mov cx, 0
    cmp word [bp + 6], byte 0xd
    jne short queue_maze_cell_layers.forward45
    mov cx, 1
queue_maze_cell_layers.forward45:
    add ax, cx
    mov word [bp - 0xc], ax
    mov word [bp - 0xe], 0
    jmp short jumptable_3ed8_case_0
jumptable_3ed8_case_14:
    mov word [bp - 0x10], 0xa
    mov word [bp - 0xc], 9
    mov ax, 0xb
    cmp word [bp + 6], byte 0xe
    jne short queue_maze_cell_layers.forward46
    mov ax, 0xa
queue_maze_cell_layers.forward46:
    mov word [bp - 0xe], ax
    jmp short jumptable_3ed8_case_0
jumptable_3ed8:
    dw jumptable_3ed8_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_7 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_10 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_11 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_12 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_12 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_14 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_14 - IMAGE_BASE + __zres_end
queue_maze_cell_layers.forward47:
    cmp ax, strict word 0x10
    jae short jumptable_3ed8_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3ed8 - IMAGE_BASE + __zres_end]
jumptable_3ed8_case_0:
    cmp word [bp - 0x10], byte -1
    je short queue_maze_cell_layers.return1
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [floor_checker_parity]
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
    push word [bp - 0xe]
    push word [bp - 0xc]
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + maze_cell_x_offset]
    push word [bp - 0x10]
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_maze_cell_layers.return1:
    ret
