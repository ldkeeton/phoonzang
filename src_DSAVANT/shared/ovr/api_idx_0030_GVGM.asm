; auto-generated
api_idx_0030_GVGM:
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
    mov word [bss_8f48], 0
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
    call gfx_fill_area
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
    cmp word [game_state_arg], byte 0xa
    je short .forward1
    cmp word [game_state_arg], byte 0x19
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
    call gfx_fill_area
    add sp, byte 0xa
    mov ax, word [game_state_arg]
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
    cmp word [bss_8f22], byte 0
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
    mov al, byte [bss_7b05]
    sub ah, ah
    inc ax
    push ax
    mov al, byte [bss_7abe]
    sub ah, ah
    inc ax
    push ax
    mov ax, 0xc
    push ax
    call gfx_draw_text
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
    call gfx_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call api_idx_0024_NUGL
.forward7:
    call draw_party_status_glyphs
    ret
.forward8:
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0030_GVGM.bss1
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0030_GVGM.bss2
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0030_GVGM.bss3
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0030_GVGM.bss4
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0030_GVGM.bss5
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, api_idx_0030_GVGM.bss6
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0030_GVGM.bss7
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, api_idx_0030_GVGM.bss8
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, api_idx_0030_GVGM.bss9
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, api_idx_0030_GVGM.bss10
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x7f8
    push ax
    mov ax, api_idx_0030_GVGM.bss11
    push ax
    call aztec_setmem
    add sp, byte 6
    mov word [api_idx_0030_GVGM.bss12], 0
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
    mov word [api_idx_0030_GVGM.bss13], 5
    mov ax, word [party_world_x]
    add ax, word [party_world_y]
    add ax, word [party_tag]
    mov cx, 2
    cwd
    idiv cx
    mov word [api_idx_0030_GVGM.bss14], dx
    mov word [boundary_wall_variant], 0
    mov ax, word [maze_variant]
    jmp near .forward24
api_idx_0030_GVGM.jumptable_case1:
    mov word [boundary_wall_variant], 0
    cmp word [game_state_arg], byte 0x1e
    jne short api_idx_0030_GVGM.forward9
    cmp word [party_map_piece], byte 8
    jne short api_idx_0030_GVGM.forward9
    jmp short api_idx_0030_GVGM.forward10
api_idx_0030_GVGM.forward9:
    mov ax, 0x1f
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1f
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
api_idx_0030_GVGM.forward10:
    mov ax, 0x20
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
    jmp near api_idx_0030_GVGM.jumptable_case2
api_idx_0030_GVGM.jumptable_case3:
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
    call gfx_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call api_idx_0024_NUGL
    mov ax, 4
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
    mov ax, 0x3e
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
    jmp near api_idx_0030_GVGM.jumptable_case2
api_idx_0030_GVGM.jumptable_case4:
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
    call gfx_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call api_idx_0024_NUGL
    cmp word [game_state_arg], byte 0xe
    jne short api_idx_0030_GVGM.forward12
    cmp word [party_map_piece], byte 9
    jle short api_idx_0030_GVGM.forward12
    cmp word [party_map_piece], byte 0xa
    jg short api_idx_0030_GVGM.forward11
    mov ax, word [party_tag]
    cmp ax, strict word 2
    je short api_idx_0030_GVGM.forward11
    cmp word [party_tag], byte 0
    je short api_idx_0030_GVGM.forward12
    cmp word [party_cell_y], byte 5
    jge short api_idx_0030_GVGM.forward12
api_idx_0030_GVGM.forward11:
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x48
    push ax
    push ax
    call gfx_fill_area
    add sp, byte 0xa
    jmp short api_idx_0030_GVGM.forward13
api_idx_0030_GVGM.forward12:
    mov ax, 4
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
    mov ax, 0xad
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0xad
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 2
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
api_idx_0030_GVGM.forward13:
    jmp near api_idx_0030_GVGM.jumptable_case2
api_idx_0030_GVGM.jumptable_case5:
    mov word [boundary_wall_variant], 3
    mov ax, 0xff
    push ax
    mov ax, 0x48
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_GVGM.forward14
    mov ax, 0x8e
api_idx_0030_GVGM.forward14:
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0x48
    push ax
    call gfx_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call api_idx_0024_NUGL
    mov ax, 4
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
    cmp word [boundary_wall_open], byte 0
    jne short api_idx_0030_GVGM.forward15
    mov ax, 0x2a
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
api_idx_0030_GVGM.forward15:
    jmp near api_idx_0030_GVGM.jumptable_case2
api_idx_0030_GVGM.jumptable_case6:
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
    call gfx_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call api_idx_0024_NUGL
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
    call gfx_fill_area
    add sp, byte 0xa
    mov ax, 0x2a
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
    jmp near api_idx_0030_GVGM.jumptable_case2
api_idx_0030_GVGM.jumptable_case7:
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
    call gfx_fill_area
    add sp, byte 0xa
    call draw_clock_marker_glyph
    call api_idx_0024_NUGL
    mov ax, 0x3e
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
    cmp word [game_state_arg], byte 8
    jne short api_idx_0030_GVGM.forward20
    cmp word [party_map_piece], byte 6
    jne short api_idx_0030_GVGM.forward20
    cmp word [party_cell_y], byte 4
    jne short api_idx_0030_GVGM.forward20
    mov ax, word [party_cell_x]
    cmp ax, strict word 2
    je short api_idx_0030_GVGM.forward16
    cmp ax, strict word 1
    jne short api_idx_0030_GVGM.forward17
api_idx_0030_GVGM.forward16:
    mov ax, word [party_tag]
    cmp ax, strict word 1
    je short api_idx_0030_GVGM.forward19
api_idx_0030_GVGM.forward17:
    mov ax, word [party_cell_x]
    cmp ax, strict word 5
    je short api_idx_0030_GVGM.forward18
    cmp ax, strict word 6
    jne short api_idx_0030_GVGM.forward20
api_idx_0030_GVGM.forward18:
    mov ax, word [party_tag]
    cmp ax, strict word 3
    jne short api_idx_0030_GVGM.forward20
api_idx_0030_GVGM.forward19:
    jmp short api_idx_0030_GVGM.forward21
api_idx_0030_GVGM.forward20:
    mov ax, 0
    push ax
    mov ax, 0x50
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x48
    push ax
    push ax
    call gfx_fill_area
    add sp, byte 0xa
api_idx_0030_GVGM.forward21:
    cmp word [game_state_arg], byte 8
    je short api_idx_0030_GVGM.forward22
    cmp word [game_state_arg], byte 0xb
    jne short api_idx_0030_GVGM.forward23
    cmp word [party_map_piece], byte 6
    jne short api_idx_0030_GVGM.forward23
    cmp word [party_cell_y], byte 3
    jle short api_idx_0030_GVGM.forward23
api_idx_0030_GVGM.forward22:
    mov ax, 4
    push ax
    call api_idx_0030_GVGM.loc1
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call api_idx_0030_GVGM.loc2
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
api_idx_0030_GVGM.forward23:
    jmp short api_idx_0030_GVGM.jumptable_case2
api_idx_0030_GVGM.jumptable1:
    dw api_idx_0030_GVGM.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0030_GVGM.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0030_GVGM.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0030_GVGM.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0030_GVGM.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0030_GVGM.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0030_GVGM.jumptable_case7 - IMAGE_BASE + __zres_end
api_idx_0030_GVGM.forward24:
    cmp ax, strict word 7
    jae short api_idx_0030_GVGM.jumptable_case2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0030_GVGM.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0030_GVGM.jumptable_case2:
    mov word [cell_wall_override_disabled], 0
api_idx_0030_GVGM.back1:
    mov ax, word [cell_wall_override_disabled]
    cmp ax, word [api_idx_0030_GVGM.bss13]
    jl short api_idx_0030_GVGM.forward26
    jmp near api_idx_0030_GVGM.forward38
api_idx_0030_GVGM.forward26:
    mov ax, word [party_world_x]
    add ax, word [party_world_y]
    add ax, word [party_tag]
    mov cx, ax
    mov ax, word [cell_wall_override_disabled]
    add cx, ax
    mov ax, cx
    mov cx, 2
    cwd
    idiv cx
    mov word [api_idx_0030_GVGM.bss15], dx
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
    je short api_idx_0030_GVGM.forward33
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    jne short api_idx_0030_GVGM.forward31
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 5
    je short api_idx_0030_GVGM.forward29
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_GVGM.forward27
    mov word [api_idx_0030_GVGM.bss16], 0
    jmp short api_idx_0030_GVGM.forward28
api_idx_0030_GVGM.forward27:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    mov bx, ax
    mov byte [bx + api_idx_0030_GVGM.bss17], 1
    mov word [api_idx_0030_GVGM.bss16], 4
api_idx_0030_GVGM.forward28:
    jmp short api_idx_0030_GVGM.forward30
api_idx_0030_GVGM.forward29:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    mov bx, ax
    mov byte [bx + api_idx_0030_GVGM.bss17], 3
    mov word [api_idx_0030_GVGM.bss16], 0
api_idx_0030_GVGM.forward30:
    jmp short api_idx_0030_GVGM.forward32
api_idx_0030_GVGM.forward31:
    mov word [api_idx_0030_GVGM.bss16], 2
api_idx_0030_GVGM.forward32:
    mov ax, word [api_idx_0030_GVGM.bss16]
    mov word [api_idx_0030_GVGM.bss18], ax
    mov word [api_idx_0030_GVGM.bss19], ax
    jmp short api_idx_0030_GVGM.forward34
api_idx_0030_GVGM.forward33:
    mov ax, 0
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0030_GVGM.api_idx1
    add sp, byte 0xc
    mov word [api_idx_0030_GVGM.bss16], ax
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
    mov word [api_idx_0030_GVGM.bss18], ax
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
    mov word [api_idx_0030_GVGM.bss19], ax
api_idx_0030_GVGM.forward34:
    mov ax, 0xffff
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0030_GVGM.api_idx1
    add sp, byte 0xc
    mov word [api_idx_0030_GVGM.bss20], ax
    mov ax, 1
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0030_GVGM.api_idx1
    add sp, byte 0xc
    mov word [api_idx_0030_GVGM.bss21], ax
    cmp word [cell_wall_override_disabled], byte 1
    jle short api_idx_0030_GVGM.forward35
    mov ax, 0xfffe
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0030_GVGM.api_idx1
    add sp, byte 0xc
    mov word [api_idx_0030_GVGM.bss22], ax
    mov ax, 2
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0030_GVGM.api_idx1
    add sp, byte 0xc
    mov word [api_idx_0030_GVGM.bss23], ax
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
    mov word [api_idx_0030_GVGM.bss24], ax
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
    mov word [api_idx_0030_GVGM.bss25], ax
    jmp short api_idx_0030_GVGM.forward36
api_idx_0030_GVGM.forward35:
    mov word [api_idx_0030_GVGM.bss22], 0
    mov word [api_idx_0030_GVGM.bss23], 0
    mov word [api_idx_0030_GVGM.bss24], 0
    mov word [api_idx_0030_GVGM.bss25], 0
api_idx_0030_GVGM.forward36:
    cmp word [api_idx_0030_GVGM.bss16], byte 0
    jne short api_idx_0030_GVGM.forward37
    mov ax, word [requested_row_limit]
    cmp ax, word [cell_wall_override_disabled]
    jne short api_idx_0030_GVGM.forward37
    inc word [requested_row_limit]
api_idx_0030_GVGM.forward37:
    mov ax, word [api_idx_0030_GVGM.bss15]
    mov word [api_idx_0030_GVGM.bss26], ax
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
    push word [api_idx_0030_GVGM.bss16]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx2
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
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx3
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
    push word [api_idx_0030_GVGM.bss18]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx4
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
    push word [api_idx_0030_GVGM.bss19]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx4
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
    push word [api_idx_0030_GVGM.bss24]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx4
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
    push word [api_idx_0030_GVGM.bss25]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx4
    add sp, byte 0x40
    mov ax, word [api_idx_0030_GVGM.bss15]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [api_idx_0030_GVGM.bss26], dx
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
    push word [api_idx_0030_GVGM.bss20]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx2
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
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx3
    add sp, byte 0x40
    mov ax, word [api_idx_0030_GVGM.bss15]
    mov word [api_idx_0030_GVGM.bss26], ax
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
    push word [api_idx_0030_GVGM.bss22]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx2
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
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx3
    add sp, byte 0x40
    mov ax, word [api_idx_0030_GVGM.bss15]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [api_idx_0030_GVGM.bss26], dx
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
    push word [api_idx_0030_GVGM.bss21]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx2
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
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx3
    add sp, byte 0x40
    mov ax, word [api_idx_0030_GVGM.bss15]
    mov word [api_idx_0030_GVGM.bss26], ax
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
    push word [api_idx_0030_GVGM.bss23]
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx2
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
    push word [cell_wall_override_disabled]
    call api_idx_0030_GVGM.api_idx3
    add sp, byte 0x40
    inc word [cell_wall_override_disabled]
    jmp near api_idx_0030_GVGM.back1
api_idx_0030_GVGM.forward38:
    mov ax, word [api_idx_0030_GVGM.bss13]
    dec ax
    mov word [cell_wall_override_disabled], ax
    jmp near api_idx_0030_GVGM.forward84
api_idx_0030_GVGM.back2:
    mov word [bp - 4], 0xff
api_idx_0030_GVGM.back3:
    mov ax, word [api_idx_0030_GVGM.bss12]
    dec ax
    mov word [bp - 2], ax
    jmp short api_idx_0030_GVGM.forward41
api_idx_0030_GVGM.back4:
    mov ax, 0x11
    imul word [bp - 2]
    add ax, api_idx_0030_GVGM.bss11
    mov word [bp - 0x26], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [cell_wall_override_disabled]
    jne short api_idx_0030_GVGM.forward40
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, word [bp - 4]
    jne short api_idx_0030_GVGM.forward40
    cmp word [bx], byte -1
    je short api_idx_0030_GVGM.forward39
    push word [bx + 4]
    mov al, byte [bx + 8]
    sub ah, ah
    push ax
    push word [bx]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
api_idx_0030_GVGM.forward39:
    mov bx, word [bp - 0x26]
    cmp word [bx + 2], byte -1
    je short api_idx_0030_GVGM.forward40
    push word [bx + 6]
    mov al, byte [bx + 9]
    sub ah, ah
    push ax
    push word [bx + 2]
    mov al, byte [bx + 0xe]
    sub ah, ah
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
api_idx_0030_GVGM.forward40:
    dec word [bp - 2]
api_idx_0030_GVGM.forward41:
    cmp word [bp - 2], byte 0
    jge short api_idx_0030_GVGM.back4
    mov ax, 0
    cmp word [bp - 4], strict word 0xff
    je short api_idx_0030_GVGM.forward42
    mov ax, 0xffff
    cmp word [bp - 4], strict word 0xfb
    jne short api_idx_0030_GVGM.forward42
    mov ax, 1
api_idx_0030_GVGM.forward42:
    mov word [bp - 0x18], ax
    cmp ax, strict word 0xffff
    jne short api_idx_0030_GVGM.forward43
    jmp near api_idx_0030_GVGM.forward49
api_idx_0030_GVGM.forward43:
    mov ax, word [api_idx_0030_GVGM.bss12]
    dec ax
    mov word [bp - 2], ax
    jmp near api_idx_0030_GVGM.forward48
api_idx_0030_GVGM.back5:
    mov ax, 0x11
    imul word [bp - 2]
    add ax, api_idx_0030_GVGM.bss11
    mov word [bp - 0x26], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [cell_wall_override_disabled]
    je short api_idx_0030_GVGM.forward44
    jmp near api_idx_0030_GVGM.forward47
api_idx_0030_GVGM.forward44:
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, 0xfa
    jl short api_idx_0030_GVGM.forward45
    jmp near api_idx_0030_GVGM.forward47
api_idx_0030_GVGM.forward45:
    mov al, byte [bx + 0x10]
    sub ah, ah
    cmp ax, word [bp - 0x18]
    jne short api_idx_0030_GVGM.forward47
    cmp byte [bx + 0xc], 4
    jne short api_idx_0030_GVGM.forward46
    cmp byte [bx + 9], 1
    jne short api_idx_0030_GVGM.forward46
    push bx
    call api_idx_0016_LHKK
    pop cx
    jmp short api_idx_0030_GVGM.forward47
api_idx_0030_GVGM.forward46:
    mov word [bp - 6], 0
api_idx_0030_GVGM.back6:
    mov bx, word [bp - 0x26]
    mov si, word [bp - 6]
    mov al, byte [bx + si + 8]
    mov bx, si
    add bx, bp
    mov byte [bx - 0x30], al
    inc word [bp - 6]
    mov ax, word [bp - 6]
    cmp ax, strict word 4
    jl short api_idx_0030_GVGM.back6
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
    call gfx_draw_text
    add sp, byte 0x16
api_idx_0030_GVGM.forward47:
    dec word [bp - 2]
api_idx_0030_GVGM.forward48:
    cmp word [bp - 2], byte 0
    jl short api_idx_0030_GVGM.forward49
    jmp near api_idx_0030_GVGM.back5
api_idx_0030_GVGM.forward49:
    dec word [bp - 4]
    mov ax, word [bp - 4]
    cmp ax, 0xfb
    jl short api_idx_0030_GVGM.forward50
    jmp near api_idx_0030_GVGM.back3
api_idx_0030_GVGM.forward50:
    mov al, byte [bss_5b55]
    sub ah, ah
    cmp ax, 0xff
    jne short api_idx_0030_GVGM.forward51
    jmp near api_idx_0030_GVGM.forward70
api_idx_0030_GVGM.forward51:
    cmp word [cell_wall_override_disabled], byte 0
    je short api_idx_0030_GVGM.forward52
    jmp near api_idx_0030_GVGM.forward70
api_idx_0030_GVGM.forward52:
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0030_GVGM.forward53
    cmp byte [api_idx_0030_GVGM.bss27], 3
    jne short api_idx_0030_GVGM.forward53
    jmp near api_idx_0030_GVGM.forward70
api_idx_0030_GVGM.forward53:
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short api_idx_0030_GVGM.forward54
    cmp word [requested_row_limit], byte 1
    jg short api_idx_0030_GVGM.forward54
    jmp near api_idx_0030_GVGM.forward70
api_idx_0030_GVGM.forward54:
    mov word [bp - 6], 0
api_idx_0030_GVGM.back7:
    mov ax, word [bp - 6]
    shl ax, 1
    mov bx, ax
    cmp word [bx + api_idx_0030_GVGM.bss28], byte 0
    jg short api_idx_0030_GVGM.forward55
    jmp near api_idx_0030_GVGM.forward59
api_idx_0030_GVGM.forward55:
    mov al, byte [bx + api_idx_0030_GVGM.bss28]
    mov byte [bp - 0x30], al
    mov byte [bp - 0x2f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x30]
    push ax
    push word [bx + api_idx_0030_GVGM.bss29]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov bx, word [bx + api_idx_0030_GVGM.bss28]
    mov al, byte [bx + bss_7b05 + 0x15c]
    sub ah, ah
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    add ax, word [bx + api_idx_0030_GVGM.bss30]
    push ax
    mov ax, word [bx + api_idx_0030_GVGM.bss28]
    shl ax, 1
    add ax, word [bx + api_idx_0030_GVGM.bss29]
    mov bx, ax
    mov al, byte [bx + bss_7b05 + 0x113]
    sub ah, ah
    mov bx, cx
    add ax, word [bx + api_idx_0030_GVGM.bss31]
    push ax
    mov ax, 0xd
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    mov ax, word [bp - 6]
    shl ax, 1
    mov bx, ax
    cmp word [bx + api_idx_0030_GVGM.bss32], byte 0
    je short api_idx_0030_GVGM.forward56
    dec word [bx + api_idx_0030_GVGM.bss28]
    jmp short api_idx_0030_GVGM.forward57
api_idx_0030_GVGM.forward56:
    inc word [bx + api_idx_0030_GVGM.bss28]
api_idx_0030_GVGM.forward57:
    mov al, byte [bss_7d3c]
    sub ah, ah
    cmp ax, word [bx + api_idx_0030_GVGM.bss28]
    jge short api_idx_0030_GVGM.forward58
    mov word [bx + api_idx_0030_GVGM.bss28], 0
api_idx_0030_GVGM.forward58:
    jmp near api_idx_0030_GVGM.forward69
api_idx_0030_GVGM.forward59:
    cmp word [bss_8f22], byte 0
    je short api_idx_0030_GVGM.forward60
    jmp near api_idx_0030_GVGM.forward69
api_idx_0030_GVGM.forward60:
    mov ax, 0x64
    push ax
    call random_below
    pop cx
    cmp ax, word [bp - 6]
    jle short api_idx_0030_GVGM.forward61
    jmp near api_idx_0030_GVGM.forward69
api_idx_0030_GVGM.forward61:
    mov ax, 2
    push ax
    call random_below
    pop cx
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0030_GVGM.bss29], ax
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short api_idx_0030_GVGM.forward62
    push cx
    call random_below
    pop cx
    jmp short api_idx_0030_GVGM.forward63
api_idx_0030_GVGM.forward62:
    mov ax, 0
api_idx_0030_GVGM.forward63:
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0030_GVGM.bss32], ax
    mov ax, 1
    cmp word [bx + api_idx_0030_GVGM.bss32], byte 0
    je short api_idx_0030_GVGM.forward64
    mov al, byte [bss_7d3c]
    sub ah, ah
api_idx_0030_GVGM.forward64:
    mov word [bx + api_idx_0030_GVGM.bss28], ax
    mov ax, word [boundary_wall_variant]
    mov cx, 1
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short api_idx_0030_GVGM.forward65
    mov ax, 0x1e
    jmp short api_idx_0030_GVGM.forward66
api_idx_0030_GVGM.forward65:
    mov ax, 0xa
api_idx_0030_GVGM.forward66:
    mov word [bp - 2], ax
    cmp word [bx + api_idx_0030_GVGM.bss29], byte 0
    je short api_idx_0030_GVGM.forward67
    push ax
    call random_below
    pop cx
    jmp short api_idx_0030_GVGM.forward68
api_idx_0030_GVGM.forward67:
    push word [bp - 2]
    call random_below
    pop cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
api_idx_0030_GVGM.forward68:
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0030_GVGM.bss31], ax
    mov ax, 5
    push ax
    call random_below
    pop cx
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0030_GVGM.bss30], ax
api_idx_0030_GVGM.forward69:
    inc word [bp - 6]
    mov ax, word [bp - 6]
    cmp ax, strict word 3
    jge short api_idx_0030_GVGM.forward70
    jmp near api_idx_0030_GVGM.back7
api_idx_0030_GVGM.forward70:
    cmp word [boundary_wall_variant], byte 0
    je short api_idx_0030_GVGM.forward71
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 2
    jg short api_idx_0030_GVGM.forward71
    jmp near api_idx_0030_GVGM.forward83
api_idx_0030_GVGM.forward71:
    mov word [bp - 0x14], 0
api_idx_0030_GVGM.back8:
    mov ax, word [bp - 0x14]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x24]
    mov word [bp - 2], ax
    mov ax, 5
    imul word [cell_wall_override_disabled]
    mov cx, ax
    mov ax, word [bp - 2]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + api_idx_0030_GVGM.bss1]
    sub ah, ah
    mov word [bp - 0x1a], ax
    test ax, ax
    jne short api_idx_0030_GVGM.forward72
    jmp near api_idx_0030_GVGM.forward82
api_idx_0030_GVGM.forward72:
    mov ax, 0x28
    imul word [cell_wall_override_disabled]
    mov cx, word [bp - 2]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x2a6], byte 0
    jne short api_idx_0030_GVGM.forward73
    jmp near api_idx_0030_GVGM.forward82
api_idx_0030_GVGM.forward73:
    cmp word [bp - 0x1a], byte 1
    je short api_idx_0030_GVGM.forward74
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_GVGM.forward76
api_idx_0030_GVGM.forward74:
    mov ax, 0
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_GVGM.forward75
    mov ax, 0xff
api_idx_0030_GVGM.forward75:
    push ax
    push word [bx + 0x2ac]
    push word [bx + 0x2aa]
    push word [bx + 0x2a8]
    push word [bx + 0x2a6]
    call gfx_fill_area
    add sp, byte 0xa
    jmp near api_idx_0030_GVGM.forward81
api_idx_0030_GVGM.forward76:
    cmp word [cell_wall_override_disabled], byte 0
    jg short api_idx_0030_GVGM.forward77
    jmp near api_idx_0030_GVGM.forward81
api_idx_0030_GVGM.forward77:
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    add ax, word [cell_wall_override_disabled]
    shl ax, 1
    mov bx, ax
    cmp byte [bx + glyph_y_table + 0x7eb], 0
    jne short api_idx_0030_GVGM.forward78
    jmp near api_idx_0030_GVGM.forward81
api_idx_0030_GVGM.forward78:
    mov ax, 2
    push ax
    call random_below
    pop cx
    add ax, word [party_world_x]
    add ax, word [party_world_y]
    add ax, word [party_tag]
    add ax, word [cell_wall_override_disabled]
    mov cx, 2
    cwd
    idiv cx
    mov word [api_idx_0030_GVGM.bss15], dx
    mov al, byte [cell_wall_override_disabled]
    mov byte [bp - 0x30], al
    mov byte [bp - 0x2f], 0
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    add ax, word [cell_wall_override_disabled]
    shl ax, 1
    add ax, dx
    mov bx, ax
    mov al, byte [bx + glyph_y_table + 0x7eb]
    sub ah, ah
    mov word [bp - 6], ax
    cmp ax, 0xff
    jne short api_idx_0030_GVGM.forward80
    mov ax, 0xffee
    cmp word [api_idx_0030_GVGM.bss15], byte 0
    je short api_idx_0030_GVGM.forward79
    mov ax, 0xffea
api_idx_0030_GVGM.forward79:
    mov word [bp - 6], ax
api_idx_0030_GVGM.forward80:
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
    add ax, word [cell_wall_override_disabled]
    mov bx, ax
    mov al, byte [bx + glyph_y_table + 0x834]
    sub ah, ah
    push ax
    push word [bp - 6]
    mov ax, 9
    push ax
    call gfx_draw_text
    add sp, byte 0x16
api_idx_0030_GVGM.forward81:
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_GVGM.forward82
    call draw_clock_marker_glyph
    call api_idx_0024_NUGL
api_idx_0030_GVGM.forward82:
    inc word [bp - 0x14]
    mov ax, word [bp - 0x14]
    cmp ax, strict word 5
    jge short api_idx_0030_GVGM.forward83
    jmp near api_idx_0030_GVGM.back8
api_idx_0030_GVGM.forward83:
    dec word [cell_wall_override_disabled]
api_idx_0030_GVGM.forward84:
    cmp word [cell_wall_override_disabled], byte 0
    jl short api_idx_0030_GVGM.forward85
    jmp near api_idx_0030_GVGM.back2
api_idx_0030_GVGM.forward85:
    call draw_party_status_glyphs
    ret
