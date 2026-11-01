; auto-generated
api_idx_0030_KNRH:
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
    call call_fill_area
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
    call api_idx_0024_NUGL
.forward7:
    call draw_party_status_glyphs
    ret
.forward8:
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0030_KNRH_bss714
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0012_KQTQ_bss1037
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0012_KQTQ_bss2257
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0030_KNRH_bss789
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0012_KQTQ_bss4209
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, api_idx_0012_KQTQ_bss2817
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x19
    push ax
    mov ax, api_idx_0012_KQTQ_bss3553
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, api_idx_0012_KQTQ_bss2803
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, api_idx_0012_KQTQ_bss149
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x32
    push ax
    mov ax, api_idx_0012_KQTQ_bss135
    push ax
    call aztec_setmem
    add sp, byte 6
    mov ax, 0
    push ax
    mov ax, 0x7f8
    push ax
    mov ax, api_idx_0004_OVUO_bss367
    push ax
    call aztec_setmem
    add sp, byte 6
    mov word [api_idx_0004_OVUO_bss26], 0
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
    mov word [api_idx_0030_KNRH_bss1076], 5
    mov ax, word [party_world_x]
    add ax, word [party_world_y]
    add ax, word [party_tag]
    mov cx, 2
    cwd
    idiv cx
    mov word [loc_LPLI_2ec0_bss20], dx
    mov word [boundary_wall_variant], 0
    mov ax, word [maze_variant]
    jmp near .forward24
jumptable_59e2_case_1:
    mov word [boundary_wall_variant], 0
    cmp word [game_state_arg], byte 0x1e
    jne short api_idx_0030_KNRH.forward9
    cmp word [party_map_piece], byte 8
    jne short api_idx_0030_KNRH.forward9
    jmp short api_idx_0030_KNRH.forward10
api_idx_0030_KNRH.forward9:
    mov ax, 0x1f
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x1f
    push ax
    push ax
    call loc_LPLI_2ec0
    add sp, byte 4
    push ax
    mov ax, 0
    push ax
    call call_draw_maze_piece
    add sp, byte 8
api_idx_0030_KNRH.forward10:
    mov ax, 0x20
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    push ax
    call loc_LPLI_2ec0
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
    call api_idx_0024_NUGL
    mov ax, 4
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_LPLI_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    mov ax, 0x3e
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call loc_LPLI_2ec0
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
    call api_idx_0024_NUGL
    cmp word [game_state_arg], byte 0xe
    jne short api_idx_0030_KNRH.forward12
    cmp word [party_map_piece], byte 9
    jle short api_idx_0030_KNRH.forward12
    cmp word [party_map_piece], byte 0xa
    jg short api_idx_0030_KNRH.forward11
    mov ax, word [party_tag]
    cmp ax, strict word 2
    je short api_idx_0030_KNRH.forward11
    cmp word [party_tag], byte 0
    je short api_idx_0030_KNRH.forward12
    cmp word [party_cell_y], byte 5
    jge short api_idx_0030_KNRH.forward12
api_idx_0030_KNRH.forward11:
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
    jmp short api_idx_0030_KNRH.forward13
api_idx_0030_KNRH.forward12:
    mov ax, 4
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_LPLI_2ec0
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    mov ax, 0xad
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0xad
    push ax
    push ax
    call loc_LPLI_2ec0
    add sp, byte 4
    push ax
    mov ax, 2
    push ax
    call call_draw_maze_piece
    add sp, byte 8
api_idx_0030_KNRH.forward13:
    jmp near jumptable_59e2_case_0
jumptable_59e2_case_4:
    mov word [boundary_wall_variant], 3
    mov ax, 0xff
    push ax
    mov ax, 0x48
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_KNRH.forward14
    mov ax, 0x8e
api_idx_0030_KNRH.forward14:
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
    call api_idx_0024_NUGL
    mov ax, 4
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_LPLI_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    cmp word [boundary_wall_open], byte 0
    jne short api_idx_0030_KNRH.forward15
    mov ax, 0x2a
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call loc_LPLI_2ec0
    add sp, byte 4
    push ax
    mov ax, 4
    push ax
    call call_draw_maze_piece
    add sp, byte 8
api_idx_0030_KNRH.forward15:
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
    call call_fill_area
    add sp, byte 0xa
    mov ax, 0x2a
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x2a
    push ax
    push ax
    call loc_LPLI_2ec0
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
    call api_idx_0024_NUGL
    mov ax, 0x3e
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 0
    push ax
    mov ax, 0x3e
    push ax
    push ax
    call loc_LPLI_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
    cmp word [game_state_arg], byte 8
    jne short api_idx_0030_KNRH.forward20
    cmp word [party_map_piece], byte 6
    jne short api_idx_0030_KNRH.forward20
    cmp word [party_cell_y], byte 4
    jne short api_idx_0030_KNRH.forward20
    mov ax, word [party_cell_x]
    cmp ax, strict word 2
    je short api_idx_0030_KNRH.forward16
    cmp ax, strict word 1
    jne short api_idx_0030_KNRH.forward17
api_idx_0030_KNRH.forward16:
    mov ax, word [party_tag]
    cmp ax, strict word 1
    je short api_idx_0030_KNRH.forward19
api_idx_0030_KNRH.forward17:
    mov ax, word [party_cell_x]
    cmp ax, strict word 5
    je short api_idx_0030_KNRH.forward18
    cmp ax, strict word 6
    jne short api_idx_0030_KNRH.forward20
api_idx_0030_KNRH.forward18:
    mov ax, word [party_tag]
    cmp ax, strict word 3
    jne short api_idx_0030_KNRH.forward20
api_idx_0030_KNRH.forward19:
    jmp short api_idx_0030_KNRH.forward21
api_idx_0030_KNRH.forward20:
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
api_idx_0030_KNRH.forward21:
    cmp word [game_state_arg], byte 8
    je short api_idx_0030_KNRH.forward22
    cmp word [game_state_arg], byte 0xb
    jne short api_idx_0030_KNRH.forward23
    cmp word [party_map_piece], byte 6
    jne short api_idx_0030_KNRH.forward23
    cmp word [party_cell_y], byte 3
    jle short api_idx_0030_KNRH.forward23
api_idx_0030_KNRH.forward22:
    mov ax, 4
    push ax
    call loc_UMHI_2eac
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, 4
    push ax
    push ax
    call loc_LPLI_2ec0
    add sp, byte 4
    push ax
    mov ax, 1
    push ax
    call call_draw_maze_piece
    add sp, byte 8
api_idx_0030_KNRH.forward23:
    jmp short jumptable_59e2_case_0
jumptable_59e2:
    dw jumptable_59e2_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_59e2_case_6 - IMAGE_BASE + __zres_end
api_idx_0030_KNRH.forward24:
    cmp ax, strict word 7
    jae short jumptable_59e2_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_59e2 - IMAGE_BASE + __zres_end]
jumptable_59e2_case_0:
    mov word [cell_wall_override_disabled], 0
api_idx_0030_KNRH.back1:
    mov ax, word [cell_wall_override_disabled]
    cmp ax, word [api_idx_0030_KNRH_bss1076]
    jl short api_idx_0030_KNRH.forward26
    jmp near api_idx_0030_KNRH.forward38
api_idx_0030_KNRH.forward26:
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
    mov word [loc_LPLI_2e98_bss20], dx
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
    je short api_idx_0030_KNRH.forward33
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    jne short api_idx_0030_KNRH.forward31
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 5
    je short api_idx_0030_KNRH.forward29
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_KNRH.forward27
    mov word [api_idx_0030_KNRH_bss2708], 0
    jmp short api_idx_0030_KNRH.forward28
api_idx_0030_KNRH.forward27:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    mov bx, ax
    mov byte [bx + api_idx_0008_PGTT_bss177], 1
    mov word [api_idx_0030_KNRH_bss2708], 4
api_idx_0030_KNRH.forward28:
    jmp short api_idx_0030_KNRH.forward30
api_idx_0030_KNRH.forward29:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    mov bx, ax
    mov byte [bx + api_idx_0008_PGTT_bss177], 3
    mov word [api_idx_0030_KNRH_bss2708], 0
api_idx_0030_KNRH.forward30:
    jmp short api_idx_0030_KNRH.forward32
api_idx_0030_KNRH.forward31:
    mov word [api_idx_0030_KNRH_bss2708], 2
api_idx_0030_KNRH.forward32:
    mov ax, word [api_idx_0030_KNRH_bss2708]
    mov word [api_idx_0030_KNRH_bss2817], ax
    mov word [api_idx_0030_KNRH_bss2824], ax
    jmp short api_idx_0030_KNRH.forward34
api_idx_0030_KNRH.forward33:
    mov ax, 0
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0008_PGTT
    add sp, byte 0xc
    mov word [api_idx_0030_KNRH_bss2708], ax
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
    mov word [api_idx_0030_KNRH_bss2817], ax
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
    mov word [api_idx_0030_KNRH_bss2824], ax
api_idx_0030_KNRH.forward34:
    mov ax, 0xffff
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0008_PGTT
    add sp, byte 0xc
    mov word [api_idx_0030_KNRH_bss3062], ax
    mov ax, 1
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0008_PGTT
    add sp, byte 0xc
    mov word [api_idx_0030_KNRH_bss3117], ax
    cmp word [cell_wall_override_disabled], byte 1
    jle short api_idx_0030_KNRH.forward35
    mov ax, 0xfffe
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0008_PGTT
    add sp, byte 0xc
    mov word [api_idx_0030_KNRH_bss3184], ax
    mov ax, 2
    push ax
    push word [bp - 0x12]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    push word [bp - 0xa]
    call api_idx_0008_PGTT
    add sp, byte 0xc
    mov word [api_idx_0030_KNRH_bss3239], ax
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
    mov word [api_idx_0030_KNRH_bss3300], ax
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
    mov word [api_idx_0030_KNRH_bss3361], ax
    jmp short api_idx_0030_KNRH.forward36
api_idx_0030_KNRH.forward35:
    mov word [api_idx_0030_KNRH_bss3184], 0
    mov word [api_idx_0030_KNRH_bss3239], 0
    mov word [api_idx_0030_KNRH_bss3300], 0
    mov word [api_idx_0030_KNRH_bss3361], 0
api_idx_0030_KNRH.forward36:
    cmp word [api_idx_0030_KNRH_bss2708], byte 0
    jne short api_idx_0030_KNRH.forward37
    mov ax, word [requested_row_limit]
    cmp ax, word [cell_wall_override_disabled]
    jne short api_idx_0030_KNRH.forward37
    inc word [requested_row_limit]
api_idx_0030_KNRH.forward37:
    mov ax, word [loc_LPLI_2e98_bss20]
    mov word [api_idx_0010_KRNM_bss1234], ax
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
    push word [api_idx_0030_KNRH_bss2708]
    push word [cell_wall_override_disabled]
    call api_idx_0010_KRNM
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
    call api_idx_0012_KQTQ
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
    push word [api_idx_0030_KNRH_bss2817]
    push word [cell_wall_override_disabled]
    call api_idx_0012_PNUU
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
    push word [api_idx_0030_KNRH_bss2824]
    push word [cell_wall_override_disabled]
    call api_idx_0012_PNUU
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
    push word [api_idx_0030_KNRH_bss3300]
    push word [cell_wall_override_disabled]
    call api_idx_0012_PNUU
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
    push word [api_idx_0030_KNRH_bss3361]
    push word [cell_wall_override_disabled]
    call api_idx_0012_PNUU
    add sp, byte 0x40
    mov ax, word [loc_LPLI_2e98_bss20]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [api_idx_0010_KRNM_bss1234], dx
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
    push word [api_idx_0030_KNRH_bss3062]
    push word [cell_wall_override_disabled]
    call api_idx_0010_KRNM
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
    call api_idx_0012_KQTQ
    add sp, byte 0x40
    mov ax, word [loc_LPLI_2e98_bss20]
    mov word [api_idx_0010_KRNM_bss1234], ax
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
    push word [api_idx_0030_KNRH_bss3184]
    push word [cell_wall_override_disabled]
    call api_idx_0010_KRNM
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
    call api_idx_0012_KQTQ
    add sp, byte 0x40
    mov ax, word [loc_LPLI_2e98_bss20]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [api_idx_0010_KRNM_bss1234], dx
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
    push word [api_idx_0030_KNRH_bss3117]
    push word [cell_wall_override_disabled]
    call api_idx_0010_KRNM
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
    call api_idx_0012_KQTQ
    add sp, byte 0x40
    mov ax, word [loc_LPLI_2e98_bss20]
    mov word [api_idx_0010_KRNM_bss1234], ax
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
    push word [api_idx_0030_KNRH_bss3239]
    push word [cell_wall_override_disabled]
    call api_idx_0010_KRNM
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
    call api_idx_0012_KQTQ
    add sp, byte 0x40
    inc word [cell_wall_override_disabled]
    jmp near api_idx_0030_KNRH.back1
api_idx_0030_KNRH.forward38:
    mov ax, word [api_idx_0030_KNRH_bss1076]
    dec ax
    mov word [cell_wall_override_disabled], ax
    jmp near api_idx_0030_KNRH.forward84
api_idx_0030_KNRH.back2:
    mov word [bp - 4], 0xff
api_idx_0030_KNRH.back3:
    mov ax, word [api_idx_0004_OVUO_bss26]
    dec ax
    mov word [bp - 2], ax
    jmp short api_idx_0030_KNRH.forward41
api_idx_0030_KNRH.back4:
    mov ax, 0x11
    imul word [bp - 2]
    add ax, api_idx_0004_OVUO_bss367
    mov word [bp - 0x26], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [cell_wall_override_disabled]
    jne short api_idx_0030_KNRH.forward40
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, word [bp - 4]
    jne short api_idx_0030_KNRH.forward40
    cmp word [bx], byte -1
    je short api_idx_0030_KNRH.forward39
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
api_idx_0030_KNRH.forward39:
    mov bx, word [bp - 0x26]
    cmp word [bx + 2], byte -1
    je short api_idx_0030_KNRH.forward40
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
api_idx_0030_KNRH.forward40:
    dec word [bp - 2]
api_idx_0030_KNRH.forward41:
    cmp word [bp - 2], byte 0
    jge short api_idx_0030_KNRH.back4
    mov ax, 0
    cmp word [bp - 4], strict word 0xff
    je short api_idx_0030_KNRH.forward42
    mov ax, 0xffff
    cmp word [bp - 4], strict word 0xfb
    jne short api_idx_0030_KNRH.forward42
    mov ax, 1
api_idx_0030_KNRH.forward42:
    mov word [bp - 0x18], ax
    cmp ax, strict word 0xffff
    jne short api_idx_0030_KNRH.forward43
    jmp near api_idx_0030_KNRH.forward49
api_idx_0030_KNRH.forward43:
    mov ax, word [api_idx_0004_OVUO_bss26]
    dec ax
    mov word [bp - 2], ax
    jmp near api_idx_0030_KNRH.forward48
api_idx_0030_KNRH.back5:
    mov ax, 0x11
    imul word [bp - 2]
    add ax, api_idx_0004_OVUO_bss367
    mov word [bp - 0x26], ax
    mov bx, ax
    mov al, byte [bx + 0xd]
    sub ah, ah
    cmp ax, word [cell_wall_override_disabled]
    je short api_idx_0030_KNRH.forward44
    jmp near api_idx_0030_KNRH.forward47
api_idx_0030_KNRH.forward44:
    mov al, byte [bx + 0xc]
    sub ah, ah
    cmp ax, 0xfa
    jl short api_idx_0030_KNRH.forward45
    jmp near api_idx_0030_KNRH.forward47
api_idx_0030_KNRH.forward45:
    mov al, byte [bx + 0x10]
    sub ah, ah
    cmp ax, word [bp - 0x18]
    jne short api_idx_0030_KNRH.forward47
    cmp byte [bx + 0xc], 4
    jne short api_idx_0030_KNRH.forward46
    cmp byte [bx + 9], 1
    jne short api_idx_0030_KNRH.forward46
    push bx
    call api_idx_0016_LHKK
    pop cx
    jmp short api_idx_0030_KNRH.forward47
api_idx_0030_KNRH.forward46:
    mov word [bp - 6], 0
api_idx_0030_KNRH.back6:
    mov bx, word [bp - 0x26]
    mov si, word [bp - 6]
    mov al, byte [bx + si + 8]
    mov bx, si
    add bx, bp
    mov byte [bx - 0x30], al
    inc word [bp - 6]
    mov ax, word [bp - 6]
    cmp ax, strict word 4
    jl short api_idx_0030_KNRH.back6
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
api_idx_0030_KNRH.forward47:
    dec word [bp - 2]
api_idx_0030_KNRH.forward48:
    cmp word [bp - 2], byte 0
    jl short api_idx_0030_KNRH.forward49
    jmp near api_idx_0030_KNRH.back5
api_idx_0030_KNRH.forward49:
    dec word [bp - 4]
    mov ax, word [bp - 4]
    cmp ax, 0xfb
    jl short api_idx_0030_KNRH.forward50
    jmp near api_idx_0030_KNRH.back3
api_idx_0030_KNRH.forward50:
    mov al, byte [bss_5b55]
    sub ah, ah
    cmp ax, 0xff
    jne short api_idx_0030_KNRH.forward51
    jmp near api_idx_0030_KNRH.forward70
api_idx_0030_KNRH.forward51:
    cmp word [cell_wall_override_disabled], byte 0
    je short api_idx_0030_KNRH.forward52
    jmp near api_idx_0030_KNRH.forward70
api_idx_0030_KNRH.forward52:
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0030_KNRH.forward53
    cmp byte [api_idx_0030_KNRH_bss6993], 3
    jne short api_idx_0030_KNRH.forward53
    jmp near api_idx_0030_KNRH.forward70
api_idx_0030_KNRH.forward53:
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short api_idx_0030_KNRH.forward54
    cmp word [requested_row_limit], byte 1
    jg short api_idx_0030_KNRH.forward54
    jmp near api_idx_0030_KNRH.forward70
api_idx_0030_KNRH.forward54:
    mov word [bp - 6], 0
api_idx_0030_KNRH.back7:
    mov ax, word [bp - 6]
    shl ax, 1
    mov bx, ax
    cmp word [bx + api_idx_0030_KNRH_bss7087], byte 0
    jg short api_idx_0030_KNRH.forward55
    jmp near api_idx_0030_KNRH.forward59
api_idx_0030_KNRH.forward55:
    mov al, byte [bx + api_idx_0030_KNRH_bss7087]
    mov byte [bp - 0x30], al
    mov byte [bp - 0x2f], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x30]
    push ax
    push word [bx + api_idx_0030_KNRH_bss7154]
    mov ax, 0x90
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov bx, word [bx + api_idx_0030_KNRH_bss7087]
    mov al, byte [bx + bss_7b05 + 0x15c]
    sub ah, ah
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    add ax, word [bx + api_idx_0030_KNRH_bss7228]
    push ax
    mov ax, word [bx + api_idx_0030_KNRH_bss7087]
    shl ax, 1
    add ax, word [bx + api_idx_0030_KNRH_bss7154]
    mov bx, ax
    mov al, byte [bx + bss_7b05 + 0x113]
    sub ah, ah
    mov bx, cx
    add ax, word [bx + api_idx_0030_KNRH_bss7284]
    push ax
    mov ax, 0xd
    push ax
    call call_draw_text
    add sp, byte 0x16
    mov ax, word [bp - 6]
    shl ax, 1
    mov bx, ax
    cmp word [bx + api_idx_0030_KNRH_bss7323], byte 0
    je short api_idx_0030_KNRH.forward56
    dec word [bx + api_idx_0030_KNRH_bss7087]
    jmp short api_idx_0030_KNRH.forward57
api_idx_0030_KNRH.forward56:
    inc word [bx + api_idx_0030_KNRH_bss7087]
api_idx_0030_KNRH.forward57:
    mov al, byte [bss_7d3c]
    sub ah, ah
    cmp ax, word [bx + api_idx_0030_KNRH_bss7087]
    jge short api_idx_0030_KNRH.forward58
    mov word [bx + api_idx_0030_KNRH_bss7087], 0
api_idx_0030_KNRH.forward58:
    jmp near api_idx_0030_KNRH.forward69
api_idx_0030_KNRH.forward59:
    cmp word [bss_8f22], byte 0
    je short api_idx_0030_KNRH.forward60
    jmp near api_idx_0030_KNRH.forward69
api_idx_0030_KNRH.forward60:
    mov ax, 0x64
    push ax
    call random_below
    pop cx
    cmp ax, word [bp - 6]
    jle short api_idx_0030_KNRH.forward61
    jmp near api_idx_0030_KNRH.forward69
api_idx_0030_KNRH.forward61:
    mov ax, 2
    push ax
    call random_below
    pop cx
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0030_KNRH_bss7154], ax
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short api_idx_0030_KNRH.forward62
    push cx
    call random_below
    pop cx
    jmp short api_idx_0030_KNRH.forward63
api_idx_0030_KNRH.forward62:
    mov ax, 0
api_idx_0030_KNRH.forward63:
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0030_KNRH_bss7323], ax
    mov ax, 1
    cmp word [bx + api_idx_0030_KNRH_bss7323], byte 0
    je short api_idx_0030_KNRH.forward64
    mov al, byte [bss_7d3c]
    sub ah, ah
api_idx_0030_KNRH.forward64:
    mov word [bx + api_idx_0030_KNRH_bss7087], ax
    mov ax, word [boundary_wall_variant]
    mov cx, 1
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short api_idx_0030_KNRH.forward65
    mov ax, 0x1e
    jmp short api_idx_0030_KNRH.forward66
api_idx_0030_KNRH.forward65:
    mov ax, 0xa
api_idx_0030_KNRH.forward66:
    mov word [bp - 2], ax
    cmp word [bx + api_idx_0030_KNRH_bss7154], byte 0
    je short api_idx_0030_KNRH.forward67
    push ax
    call random_below
    pop cx
    jmp short api_idx_0030_KNRH.forward68
api_idx_0030_KNRH.forward67:
    push word [bp - 2]
    call random_below
    pop cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
api_idx_0030_KNRH.forward68:
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0030_KNRH_bss7284], ax
    mov ax, 5
    push ax
    call random_below
    pop cx
    mov cx, word [bp - 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + api_idx_0030_KNRH_bss7228], ax
api_idx_0030_KNRH.forward69:
    inc word [bp - 6]
    mov ax, word [bp - 6]
    cmp ax, strict word 3
    jge short api_idx_0030_KNRH.forward70
    jmp near api_idx_0030_KNRH.back7
api_idx_0030_KNRH.forward70:
    cmp word [boundary_wall_variant], byte 0
    je short api_idx_0030_KNRH.forward71
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 2
    jg short api_idx_0030_KNRH.forward71
    jmp near api_idx_0030_KNRH.forward83
api_idx_0030_KNRH.forward71:
    mov word [bp - 0x14], 0
api_idx_0030_KNRH.back8:
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
    mov al, byte [bx + api_idx_0030_KNRH_bss714]
    sub ah, ah
    mov word [bp - 0x1a], ax
    test ax, ax
    jne short api_idx_0030_KNRH.forward72
    jmp near api_idx_0030_KNRH.forward82
api_idx_0030_KNRH.forward72:
    mov ax, 0x28
    imul word [cell_wall_override_disabled]
    mov cx, word [bp - 2]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + 0x2a6], byte 0
    jne short api_idx_0030_KNRH.forward73
    jmp near api_idx_0030_KNRH.forward82
api_idx_0030_KNRH.forward73:
    cmp word [bp - 0x1a], byte 1
    je short api_idx_0030_KNRH.forward74
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_KNRH.forward76
api_idx_0030_KNRH.forward74:
    mov ax, 0
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_KNRH.forward75
    mov ax, 0xff
api_idx_0030_KNRH.forward75:
    push ax
    push word [bx + 0x2ac]
    push word [bx + 0x2aa]
    push word [bx + 0x2a8]
    push word [bx + 0x2a6]
    call call_fill_area
    add sp, byte 0xa
    jmp near api_idx_0030_KNRH.forward81
api_idx_0030_KNRH.forward76:
    cmp word [cell_wall_override_disabled], byte 0
    jg short api_idx_0030_KNRH.forward77
    jmp near api_idx_0030_KNRH.forward81
api_idx_0030_KNRH.forward77:
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    add ax, word [cell_wall_override_disabled]
    shl ax, 1
    mov bx, ax
    cmp byte [bx + glyph_y_table + 0x7eb], 0
    jne short api_idx_0030_KNRH.forward78
    jmp near api_idx_0030_KNRH.forward81
api_idx_0030_KNRH.forward78:
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
    mov word [loc_LPLI_2e98_bss20], dx
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
    jne short api_idx_0030_KNRH.forward80
    mov ax, 0xffee
    cmp word [loc_LPLI_2e98_bss20], byte 0
    je short api_idx_0030_KNRH.forward79
    mov ax, 0xffea
api_idx_0030_KNRH.forward79:
    mov word [bp - 6], ax
api_idx_0030_KNRH.forward80:
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
    call call_draw_text
    add sp, byte 0x16
api_idx_0030_KNRH.forward81:
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0030_KNRH.forward82
    call draw_clock_marker_glyph
    call api_idx_0024_NUGL
api_idx_0030_KNRH.forward82:
    inc word [bp - 0x14]
    mov ax, word [bp - 0x14]
    cmp ax, strict word 5
    jge short api_idx_0030_KNRH.forward83
    jmp near api_idx_0030_KNRH.back8
api_idx_0030_KNRH.forward83:
    dec word [cell_wall_override_disabled]
api_idx_0030_KNRH.forward84:
    cmp word [cell_wall_override_disabled], byte 0
    jl short api_idx_0030_KNRH.forward85
    jmp near api_idx_0030_KNRH.back2
api_idx_0030_KNRH.forward85:
    call draw_party_status_glyphs
    ret
