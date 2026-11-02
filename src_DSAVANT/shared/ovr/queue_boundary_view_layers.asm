; auto-generated
queue_boundary_view_layers:
    mov ax, 0xffee
    call aztec_csav
    mov word [bp - 4], 0xffff
    mov word [bp - 6], 0xffff
    mov ax, word [bp + 6]
    jmp near .forward34
jumptable_4404_case_8:
    cmp word [bp + 0x26], byte -1
    jne short queue_boundary_view_layers.forward1
    jmp near jumptable_4404_case_3
queue_boundary_view_layers.forward1:
    cmp word [bp + 4], byte 0
    je short queue_boundary_view_layers.forward2
    jmp near jumptable_4404_case_3
queue_boundary_view_layers.forward2:
    cmp word [bp + 6], byte 8
    jne short queue_boundary_view_layers.forward3
    mov ax, word [bp + 0x26]
    inc ax
    jmp short queue_boundary_view_layers.forward4
queue_boundary_view_layers.forward3:
    mov ax, word [bp + 0x26]
    inc ax
    inc ax
    inc ax
queue_boundary_view_layers.forward4:
    mov word [bp - 2], ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, 0xffff
    cmp word [bp + 8], byte 2
    jge short queue_boundary_view_layers.forward5
    mov ax, word [bp - 2]
    inc ax
queue_boundary_view_layers.forward5:
    push ax
    mov ax, 0xffff
    cmp word [bp + 8], byte 2
    jge short queue_boundary_view_layers.forward6
    mov ax, word [bp - 2]
queue_boundary_view_layers.forward6:
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    cmp word [bp + 6], byte 8
    jne short queue_boundary_view_layers.forward7
    cmp word [bp + 8], byte 2
    jg short queue_boundary_view_layers.forward8
queue_boundary_view_layers.forward7:
    cmp word [bp + 6], byte 9
    jne short queue_boundary_view_layers.forward9
    cmp word [bp + 8], byte 2
    jge short queue_boundary_view_layers.forward9
queue_boundary_view_layers.forward8:
    mov ax, word [bp - 2]
    inc ax
    jmp short queue_boundary_view_layers.forward10
queue_boundary_view_layers.forward9:
    mov ax, 0xffff
queue_boundary_view_layers.forward10:
    push ax
    push word [bp - 2]
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
jumptable_4404_case_3:
    cmp word [bp + 6], byte 3
    je short queue_boundary_view_layers.forward12
    jmp near queue_boundary_view_layers.forward15
queue_boundary_view_layers.forward12:
    cmp word [bp + 4], byte 4
    jl short queue_boundary_view_layers.forward13
    jmp near queue_boundary_view_layers.forward15
queue_boundary_view_layers.forward13:
    cmp word [bp + 0x34], byte -1
    je short queue_boundary_view_layers.forward14
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x34]
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
    mov ax, word [bp + 0x36]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward14:
    mov ax, word [bp + 0x32]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    mov word [bp - 4], ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    mov word [bp - 6], ax
queue_boundary_view_layers.forward15:
    cmp word [bp + 6], byte 6
    jne short jumptable_4404_case_1
    cmp word [bp + 4], byte 4
    jge short jumptable_4404_case_1
    mov ax, word [bp + 0x24]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    mov word [bp - 4], ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    mov word [bp - 6], ax
jumptable_4404_case_1:
    cmp word [boundary_wall_variant], byte 0
    jne short queue_boundary_view_layers.forward18
    cmp word [bp + 4], byte 4
    jge short queue_boundary_view_layers.forward17
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    push word [bp - 6]
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 4]
    mov ax, word [bp + 0x20]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward17:
    jmp short queue_boundary_view_layers.forward19
queue_boundary_view_layers.forward18:
    cmp word [boundary_wall_variant], byte 2
    jne short queue_boundary_view_layers.forward19
    cmp word [bp + 4], byte 5
    jge short queue_boundary_view_layers.forward19
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    push word [bp - 6]
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 4]
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward19:
    cmp word [bp + 0x26], byte -1
    je short queue_boundary_view_layers.forward22
    cmp word [bp + 4], byte 0
    jne short queue_boundary_view_layers.forward22
    cmp word [bp + 6], byte 8
    je short queue_boundary_view_layers.forward20
    cmp word [bp + 6], byte 9
    jne short queue_boundary_view_layers.forward22
queue_boundary_view_layers.forward20:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    cmp word [bp + 8], byte 2
    jge short queue_boundary_view_layers.forward21
    mov ax, word [bp + 0x26]
queue_boundary_view_layers.forward21:
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp + 0x26]
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward22:
    jmp near jumptable_4404_case_0
jumptable_4404_case_7:
    cmp word [bp + 4], byte 4
    jge short jumptable_4404_case_2
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    mov word [bp - 4], ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    mov word [bp - 6], ax
jumptable_4404_case_2:
    cmp word [boundary_wall_variant], byte 0
    jne short queue_boundary_view_layers.forward25
    cmp word [bp + 4], byte 4
    jge short queue_boundary_view_layers.forward24
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    push word [bp - 6]
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call wall_overlay_when_enabled
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 4]
    mov ax, word [bp + 0x18]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward24:
    jmp near queue_boundary_view_layers.forward31
queue_boundary_view_layers.forward25:
    cmp word [boundary_wall_variant], byte 3
    jl short queue_boundary_view_layers.forward26
    cmp word [boundary_wall_variant], byte 5
    je short queue_boundary_view_layers.forward26
    jmp near queue_boundary_view_layers.forward30
queue_boundary_view_layers.forward26:
    cmp word [bp + 4], byte 5
    jl short queue_boundary_view_layers.forward27
    jmp near queue_boundary_view_layers.forward29
queue_boundary_view_layers.forward27:
    cmp word [boundary_wall_variant], byte 2
    jne short queue_boundary_view_layers.forward28
    cmp word [bp - 4], byte -1
    je short queue_boundary_view_layers.forward28
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push word [bp - 6]
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 4]
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward28:
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
    mov ax, word [bp + 0x28]
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
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward29:
    jmp short queue_boundary_view_layers.forward31
queue_boundary_view_layers.forward30:
    cmp word [boundary_wall_variant], byte 5
    jge short queue_boundary_view_layers.forward31
    cmp word [bp + 4], byte 4
    jge short queue_boundary_view_layers.forward31
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x14]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x3c]
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
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward31:
    jmp near jumptable_4404_case_0
jumptable_4404_case_4:
    cmp word [bp + 4], byte 4
    jge short queue_boundary_view_layers.forward32
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xc]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1a]
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
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 4]
    push ax
    call select_floor_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfb
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward32:
    jmp near jumptable_4404_case_0
jumptable_4404_case_5:
    cmp word [bp + 4], byte 4
    jge short queue_boundary_view_layers.forward33
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x12]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x40]
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
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 4]
    push ax
    call select_wall_face_index
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.forward33:
    jmp short jumptable_4404_case_0
jumptable_4404:
    dw jumptable_4404_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_7 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4404_case_2 - IMAGE_BASE + __zres_end
queue_boundary_view_layers.forward34:
    cmp ax, strict word 0x10
    jae short jumptable_4404_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_4404 - IMAGE_BASE + __zres_end]
jumptable_4404_case_0:
    cmp word [bp + 4], byte 4
    jl short queue_boundary_view_layers.forward36
    jmp near queue_boundary_view_layers.return1
queue_boundary_view_layers.forward36:
    cmp word [bp + 8], byte 1
    je short queue_boundary_view_layers.forward37
    cmp word [bp + 8], byte 3
    jne short queue_boundary_view_layers.forward38
queue_boundary_view_layers.forward37:
    mov ax, 0
    jmp short queue_boundary_view_layers.forward39
queue_boundary_view_layers.forward38:
    mov ax, 1
queue_boundary_view_layers.forward39:
    mov word [bp - 0x12], ax
    mov ax, 0
    cmp word [bp + 8], byte 2
    jle short queue_boundary_view_layers.forward40
    mov ax, 1
queue_boundary_view_layers.forward40:
    mov word [bp - 6], ax
    mov word [bp - 0xc], 0xffff
    mov ax, word [bp + 6]
    jmp near queue_boundary_view_layers.forward49
jumptable_4607_case_0:
    mov word [bp - 0xc], 9
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x3e6]
    mov word [bp - 0xe], ax
    mov ax, word [bx + 0x3e8]
    mov word [bp - 0x10], ax
    mov word [bp - 8], 4
    mov ax, word [party_status_frame]
    add ax, strict word 5
    mov word [bp - 0xa], ax
    jmp near queue_boundary_view_layers.forward50
jumptable_4607_case_1:
    mov word [bp - 0xc], 9
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + view_geometry + view_geometry_rec_size*5 + view_geometry_rec.f_000a]
    mov word [bp - 0xe], ax
    mov ax, word [bx + view_geometry + view_geometry_rec_size*5 + view_geometry_rec.f_000c]
    mov word [bp - 0x10], ax
    mov word [bp - 8], 9
    mov ax, 0
    cmp word [party_status_frame], byte 0
    je short queue_boundary_view_layers.forward41
    mov ax, 0xa
queue_boundary_view_layers.forward41:
    mov word [bp - 0xa], ax
    jmp near queue_boundary_view_layers.forward50
jumptable_4607_case_2:
    mov word [bp - 0xc], 0xa
    cmp word [boundary_wall_variant], byte 0
    jne short queue_boundary_view_layers.forward42
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + view_geometry + view_geometry_rec_size*10 + view_geometry_rec.f_000a]
    jmp short queue_boundary_view_layers.forward43
queue_boundary_view_layers.forward42:
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + view_geometry + view_geometry_rec_size*15 + view_geometry_rec.f_000a]
queue_boundary_view_layers.forward43:
    mov word [bp - 0xe], ax
    cmp word [boundary_wall_variant], byte 0
    jne short queue_boundary_view_layers.forward44
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + view_geometry + view_geometry_rec_size*10 + view_geometry_rec.f_000c]
    jmp short queue_boundary_view_layers.forward45
queue_boundary_view_layers.forward44:
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + view_geometry + view_geometry_rec_size*15 + view_geometry_rec.f_000c]
queue_boundary_view_layers.forward45:
    mov word [bp - 0x10], ax
    mov ax, 7
    cmp word [boundary_wall_variant], byte 0
    jne short queue_boundary_view_layers.forward46
    mov ax, 3
queue_boundary_view_layers.forward46:
    mov cx, 0
    cmp word [bp + 6], byte 0xd
    jne short queue_boundary_view_layers.forward47
    mov cx, 1
queue_boundary_view_layers.forward47:
    add ax, cx
    mov word [bp - 8], ax
    mov word [bp - 0xa], 0
    jmp short queue_boundary_view_layers.forward50
jumptable_4607_case_4:
    mov word [bp - 0xc], 0xa
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + view_geometry + view_geometry_rec_size*20 + view_geometry_rec.f_000a]
    mov word [bp - 0xe], ax
    mov ax, word [bx + view_geometry + view_geometry_rec_size*20 + view_geometry_rec.f_000c]
    mov word [bp - 0x10], ax
    mov word [bp - 8], 0xc
    mov ax, 0xe
    cmp word [bp + 6], byte 0xe
    jne short queue_boundary_view_layers.forward48
    mov ax, 0xd
queue_boundary_view_layers.forward48:
    mov word [bp - 0xa], ax
    jmp short queue_boundary_view_layers.forward50
jumptable_4607:
    dw jumptable_4607_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_4607_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_4607_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4607_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_4607_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_4607_case_4 - IMAGE_BASE + __zres_end
queue_boundary_view_layers.forward49:
    sub ax, strict word 0xa
    cmp ax, strict word 6
    jae short queue_boundary_view_layers.forward50
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_4607 - IMAGE_BASE + __zres_end]
queue_boundary_view_layers.forward50:
    cmp word [bp - 0xc], byte -1
    je short queue_boundary_view_layers.return1
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    push word [bp - 6]
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
    push word [bp - 0xa]
    push word [bp - 8]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    call queue_slot_glyph_render
    add sp, byte 0x1c
queue_boundary_view_layers.return1:
    ret
