; auto-generated
pick_spell_dialog:
    mov ax, 0xffbc
    call aztec_csav
    mov word [bp - 2], 0
.back1:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    mov word [bx + party_slot_frame], 0
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 6
    jl short .back1
    mov word [spell_dialog_result], 0xffff
    mov word [bp - 4], 0x32
    mov word [bp - 6], 0x73
    mov word [bp - 8], 0x10d
    mov word [bp - 0xa], 0xc5
    mov word [bp - 0xc], 0x95
    mov word [bp - 0x14], 0x16
    mov ax, spell_screen_temp_file
    push ax
    mov ax, word [bp - 0xa]
    inc ax
    push ax
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    dec ax
    push ax
    mov ax, word [bp - 4]
    dec ax
    push ax
    call save_screen_area
    add sp, byte 0xa
    mov word [bp - 0x3a], ax
    push word [bp - 0xa]
    push word [bp - 8]
    push word [bp - 6]
    push word [bp - 4]
    call draw_dialog_box
    add sp, byte 8
    push word [bp - 0xa]
    push word [bp - 8]
    push word [bp - 6]
    mov ax, 0x95
    push ax
    call draw_dialog_box
    add sp, byte 8
    call draw_marker_glyph
    push word [bp + 4]
    call draw_realm_spell_points
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call draw_party_slot_letters
    add sp, byte 6
    lea ax, word [bp - 0x38]
    push ax
    push word [bp + 6]
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x38]
    push ax
    push word [bp + 8]
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call draw_button
    add sp, byte 0xc
    lea ax, word [bp - 0x38]
    push ax
    mov ax, word [bp + 6]
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x38]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x42
    push ax
    call draw_button
    add sp, byte 0xc
    mov ax, word [bp - 6]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x48
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xcd
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, 0xa
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov word [bp - 0x3c], 0xffff
    mov word [bp - 0x3e], 0
    mov word [bp - 0x40], 0
    mov word [bp - 2], 0
.back2:
    mov ax, 0
    mov cx, word [bp - 2]
    cmp cx, word [bp - 0x3e]
    jne short .forward1
    mov ax, 1
.forward1:
    push ax
    push cx
    mov ax, word [bp - 6]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0xc
    push ax
    call draw_power_digit
    add sp, byte 8
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 7
    jl short .back2
    mov word [bp - 0x42], 0
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x42]
    mov ax, word [bp - 6]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x5e
    push ax
    call draw_spell_cost
    add sp, byte 0xa
    push word [bp - 0x42]
    push word [bp + 4]
    call collect_known_spells
    add sp, byte 4
    mov word [bp - 0x44], ax
    mov ax, 7
    cmp word [bp - 0x44], byte 7
    jge short .forward2
    mov ax, word [bp - 0x44]
.forward2:
    mov word [bp - 0x24], ax
    mov word [bp - 0x18], 0
    mov word [bp - 0x22], 0xffff
    push ax
    push word [bp - 0x22]
    push word [bp - 0x18]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov word [bp - 0x12], 0
    push word [bp - 0x12]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    call draw_scrollbar
    add sp, byte 0xa
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x12]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x12]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    mov ax, 1
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0xb
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x46
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    mov ax, 2
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x36
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    mov ax, 3
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x42
    push ax
    mov ax, 4
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov word [bp - 2], 0
.back3:
    mov ax, 0
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x1b
    push ax
    mov ax, 0xa
    imul word [bp - 2]
    add ax, word [bp - 0xc]
    add ax, strict word 0x13
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x14
    push ax
    mov ax, 0xa
    imul word [bp - 2]
    add ax, word [bp - 0xc]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 5
    push ax
    call set_hotspot
    add sp, byte 0xe
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 7
    jl short .back3
    mov ax, 0
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0x87
    push ax
    mov ax, 0x52
    push ax
    mov ax, 0x74
    push ax
    mov ax, 0x46
    push ax
    mov ax, 0xc
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x57
    push ax
    mov ax, 0x9d
    push ax
    mov ax, 0x4b
    push ax
    mov ax, 0x90
    push ax
    mov ax, 0x32
    push ax
    mov ax, 0xd
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x41
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 0x5f
    push ax
    mov ax, 0xa5
    push ax
    mov ax, 0x43
    push ax
    mov ax, 0xe
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x45
    push ax
    mov ax, 0x89
    push ax
    mov ax, 0x87
    push ax
    mov ax, 0x77
    push ax
    mov ax, 0x6c
    push ax
    mov ax, 0xf
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x4d
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x91
    push ax
    mov ax, 0x7f
    push ax
    mov ax, 0x10
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x44
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x81
    push ax
    mov ax, 0xa6
    push ax
    mov ax, 0x71
    push ax
    mov ax, 0x11
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 7
    cmp word [bp - 0x44], byte 7
    jge short .forward3
    mov ax, word [bp - 0x44]
.forward3:
    mov word [bp - 0x20], ax
    mov word [bp - 2], 0
.back4:
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    imul word [bp - 2]
    add ax, word [bp - 6]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x62
    push ax
    mov ax, 6
    imul word [bp - 2]
    add ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x12
    push ax
    call set_hotspot
    add sp, byte 0xe
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 7
    jl short .back4
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0x19
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, word [bp - 0xa]
    inc ax
    push ax
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    dec ax
    push ax
    mov ax, word [bp - 4]
    dec ax
    push ax
    call gfx_show_area
    add sp, byte 8
    mov word [party_redraw_interval], 5
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 2]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov word [bp - 0x1c], 1
.back5:
    push word [bp - 0x42]
    push word [bp + 4]
    call periodic_party_redraw
    add sp, byte 4
    mov ax, hotspot_rects
    push ax
    call poll_hotspots
    pop cx
    dec ax
    mov word [bp - 0x1a], ax
    cmp word [space_key_hit], byte 0
    je short .forward7
    mov ax, word [bp - 0x22]
    cmp ax, word [bp - 0x18]
    jl short .forward4
    inc word [bp - 0x22]
.forward4:
    mov ax, word [bp - 0x22]
    cmp ax, strict word 0xffff
    je short .forward5
    cmp ax, word [bp - 0x18]
    jl short .forward5
    mov ax, word [bp - 0x18]
    add ax, word [bp - 0x20]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x22]
    cmp cx, ax
    jge short .forward6
.forward5:
    mov ax, word [bp - 0x18]
    mov word [bp - 0x22], ax
.forward6:
    mov word [hotspot_hit], 1
    mov ax, word [bp - 0x22]
    sub ax, word [bp - 0x18]
    add ax, strict word 0x12
    mov word [bp - 0x1a], ax
.forward7:
    cmp word [hotspot_hit], byte 1
    je short .forward8
    jmp near .forward43
.forward8:
    mov ax, word [bp - 0x1a]
    jmp near .forward41
pick_spell_dialog.jumptable_case1:
    lea ax, word [bp - 0x10]
    push ax
    lea ax, word [bp - 0xe]
    push ax
    call gfx_get_mouse
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x10]
    mov cx, word [bp - 6]
    add cx, word [bp - 0x12]
    add cx, byte 0x2a
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x16], ax
pick_spell_dialog.back6:
    lea ax, word [bp - 0x10]
    push ax
    lea ax, word [bp - 0xe]
    push ax
    call gfx_get_mouse
    add sp, byte 4
    mov word [bp - 0x1e], ax
    push word [bp - 0x14]
    mov ax, 0
    push ax
    mov ax, word [bp - 0x10]
    mov cx, word [bp - 6]
    add cx, byte 0x2a
    sub ax, cx
    sub ax, word [bp - 0x16]
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x12], ax
    cmp word [bp - 0x44], byte 7
    jle short pick_spell_dialog.forward9
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x14]
    imul cx
    add ax, strict word 0x64
    mov cx, word [bp - 0x44]
    add cx, byte -6
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x18], ax
pick_spell_dialog.forward9:
    push word [bp - 0x24]
    push word [bp - 0x22]
    push word [bp - 0x18]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0xe
    push word [bp - 0x12]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    call draw_scrollbar
    add sp, byte 0xa
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x12]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x12]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, word [bp - 6]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call gfx_show_area
    add sp, byte 8
    cmp word [bp - 0x1e], byte 0
    je short pick_spell_dialog.forward10
    jmp near pick_spell_dialog.back6
pick_spell_dialog.forward10:
    jmp near pick_spell_dialog.forward43
pick_spell_dialog.jumptable_case2:
    cmp word [bp - 0x1a], byte 1
    jne short pick_spell_dialog.forward12
    mov ax, 1
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    call flash_area
    add sp, byte 0xa
    cmp word [bp - 0x18], byte 0
    jle short pick_spell_dialog.forward11
    dec word [bp - 0x18]
pick_spell_dialog.forward11:
    jmp short pick_spell_dialog.forward13
pick_spell_dialog.forward12:
    mov ax, 1
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x46
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    call flash_area
    add sp, byte 0xa
    mov ax, word [bp - 0x44]
    add ax, strict word 0xfff9
    cmp ax, word [bp - 0x18]
    jle short pick_spell_dialog.forward13
    inc word [bp - 0x18]
pick_spell_dialog.forward13:
    cmp word [bp - 0x44], byte 7
    jle short pick_spell_dialog.forward14
    push word [bp - 0x14]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x14]
    add ax, strict word 0x64
    mov cx, word [bp - 0x44]
    add cx, byte -7
    cwd
    idiv cx
    imul word [bp - 0x18]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x12], ax
pick_spell_dialog.forward14:
    push word [bp - 0x24]
    push word [bp - 0x22]
    push word [bp - 0x18]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0xe
    push word [bp - 0x12]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    call draw_scrollbar
    add sp, byte 0xa
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x12]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x12]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, word [bp - 6]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near pick_spell_dialog.forward43
pick_spell_dialog.jumptable_case3:
    cmp word [bp + 8], byte 0
    jne short pick_spell_dialog.forward15
    jmp near pick_spell_dialog.forward20
pick_spell_dialog.forward15:
    cmp word [bp - 0x3c], byte 0
    jge short pick_spell_dialog.forward16
    jmp near pick_spell_dialog.forward19
pick_spell_dialog.forward16:
    cmp word [bp + 0xa], byte 0
    je short pick_spell_dialog.forward18
    mov ax, word [bp - 0x3e]
    cmp ax, word [bp - 0x40]
    jle short pick_spell_dialog.forward17
    jmp near pick_spell_dialog.forward19
pick_spell_dialog.forward17:
    mov ax, 6
    imul word [bp - 0x3c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x3e]
    inc cx
    imul cx
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, ax
    mov dx, word [bp - 0x42]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    mov cx, word [bx + party_records + pc_rec.realm_points]
    pop ax
    cmp ax, cx
    jg short pick_spell_dialog.forward19
pick_spell_dialog.forward18:
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call flash_button
    add sp, byte 0xa
    mov word [spell_dialog_button], 0
    mov word [bp - 0x1c], 0
pick_spell_dialog.forward19:
    cmp word [bp - 0x1c], byte 0
    je short pick_spell_dialog.forward20
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
pick_spell_dialog.forward20:
    jmp near pick_spell_dialog.forward43
pick_spell_dialog.jumptable_case4:
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x42
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x42
    push ax
    call flash_button
    add sp, byte 0xa
    mov word [spell_dialog_button], 1
    mov word [bp - 0x1c], 0
    jmp near pick_spell_dialog.forward43
pick_spell_dialog.back7:
    cmp word [bp - 0x1a], byte 5
    jge short pick_spell_dialog.forward21
    jmp near pick_spell_dialog.forward29
pick_spell_dialog.forward21:
    cmp word [bp - 0x1a], byte 0xb
    jle short pick_spell_dialog.forward22
    jmp near pick_spell_dialog.forward29
pick_spell_dialog.forward22:
    mov ax, 0
    push ax
    push word [bp - 0x3e]
    mov ax, word [bp - 6]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0xc
    push ax
    call draw_power_digit
    add sp, byte 8
    mov ax, word [bp - 0x1a]
    add ax, strict word 0xfffb
    mov word [bp - 0x3e], ax
    mov ax, 1
    push ax
    push word [bp - 0x3e]
    mov ax, word [bp - 6]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0xc
    push ax
    call draw_power_digit
    add sp, byte 8
    cmp word [bp - 0x3c], byte 0
    jge short pick_spell_dialog.forward23
    jmp near pick_spell_dialog.forward27
pick_spell_dialog.forward23:
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_cap]
    push ax
    mov ax, 6
    imul word [bp - 0x3c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0001]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x40], ax
    mov ax, 6
    imul word [bp - 0x3c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x40]
    inc cx
    imul cx
    mov word [bp - 2], ax
    cmp word [bp + 0xa], byte 0
    jne short pick_spell_dialog.forward24
    mov ax, 0x3e7
    jmp short pick_spell_dialog.forward26
pick_spell_dialog.forward24:
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 0x42]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.realm_points]
    cmp ax, word [bp - 2]
    jge short pick_spell_dialog.forward25
    jmp short pick_spell_dialog.forward26
pick_spell_dialog.forward25:
    mov ax, word [bp - 2]
pick_spell_dialog.forward26:
    push ax
    mov ax, 6
    imul word [bp - 0x3c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x3e]
    inc cx
    imul cx
    push ax
    push word [bp - 0x42]
    mov ax, word [bp - 6]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x5e
    push ax
    call draw_spell_cost
    add sp, byte 0xa
    jmp short pick_spell_dialog.forward28
pick_spell_dialog.forward27:
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x42]
    mov ax, word [bp - 6]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x5e
    push ax
    call draw_spell_cost
    add sp, byte 0xa
pick_spell_dialog.forward28:
    mov ax, word [bp - 6]
    add ax, strict word 0x1c
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x56
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0xb
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, word [bp - 6]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x5e
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near pick_spell_dialog.forward40
pick_spell_dialog.forward29:
    cmp word [bp - 0x1a], byte 0xc
    jge short pick_spell_dialog.forward30
    jmp near pick_spell_dialog.forward34
pick_spell_dialog.forward30:
    cmp word [bp - 0x1a], byte 0x11
    jle short pick_spell_dialog.forward31
    jmp near pick_spell_dialog.forward34
pick_spell_dialog.forward31:
    mov ax, word [bp - 0x1a]
    add ax, strict word 0xfff4
    mov word [bp - 0x42], ax
    mov word [bp - 0x3c], 0xffff
    push ax
    push word [bp + 4]
    call collect_known_spells
    add sp, byte 4
    mov word [bp - 0x44], ax
    mov ax, 7
    cmp word [bp - 0x44], byte 7
    jge short pick_spell_dialog.forward32
    mov ax, word [bp - 0x44]
pick_spell_dialog.forward32:
    mov word [bp - 0x24], ax
    mov ax, 7
    cmp word [bp - 0x44], byte 7
    jge short pick_spell_dialog.forward33
    mov ax, word [bp - 0x44]
pick_spell_dialog.forward33:
    mov word [bp - 0x20], ax
    mov word [bp - 0x18], 0
    mov word [bp - 0x22], 0xffff
    push word [bp - 0x24]
    push word [bp - 0x22]
    push word [bp - 0x18]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov word [bp - 0x12], 0
    push word [bp - 0x12]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    call draw_scrollbar
    add sp, byte 0xa
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x12]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x12]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x42]
    mov ax, word [bp - 6]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x5e
    push ax
    call draw_spell_cost
    add sp, byte 0xa
    mov ax, word [bp - 6]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, word [bp - 6]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x5e
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near pick_spell_dialog.forward40
pick_spell_dialog.forward34:
    cmp word [bp - 0x1a], byte 0x12
    jge short pick_spell_dialog.forward35
    jmp near pick_spell_dialog.forward40
pick_spell_dialog.forward35:
    mov ax, word [bp - 0x20]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x1a]
    jg short pick_spell_dialog.forward36
    jmp near pick_spell_dialog.forward40
pick_spell_dialog.forward36:
    mov ax, word [bp - 0x18]
    add ax, word [bp - 0x1a]
    add ax, strict word 0xffee
    mov word [bp - 0x22], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + known_spell_ids]
    mov word [bp - 0x3c], ax
    push word [bp - 0x24]
    push word [bp - 0x22]
    push word [bp - 0x18]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_cap]
    push ax
    mov ax, 6
    imul word [bp - 0x3c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0001]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x40], ax
    mov ax, 6
    imul word [bp - 0x3c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x40]
    inc cx
    imul cx
    mov word [bp - 2], ax
    cmp word [bp + 0xa], byte 0
    jne short pick_spell_dialog.forward37
    mov ax, 0x3e7
    jmp short pick_spell_dialog.forward39
pick_spell_dialog.forward37:
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 0x42]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.realm_points]
    cmp ax, word [bp - 2]
    jge short pick_spell_dialog.forward38
    jmp short pick_spell_dialog.forward39
pick_spell_dialog.forward38:
    mov ax, word [bp - 2]
pick_spell_dialog.forward39:
    push ax
    mov ax, 6
    imul word [bp - 0x3c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x3e]
    inc cx
    imul cx
    push ax
    push word [bp - 0x42]
    mov ax, word [bp - 6]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x5e
    push ax
    call draw_spell_cost
    add sp, byte 0xa
    mov ax, word [bp - 6]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 6
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, word [bp - 6]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0xc]
    add ax, strict word 0x5e
    push ax
    call gfx_show_area
    add sp, byte 8
pick_spell_dialog.forward40:
    jmp short pick_spell_dialog.forward43
pick_spell_dialog.jumptable1:
    dw pick_spell_dialog.jumptable_case1 - IMAGE_BASE + __zres_end
    dw pick_spell_dialog.jumptable_case2 - IMAGE_BASE + __zres_end
    dw pick_spell_dialog.jumptable_case2 - IMAGE_BASE + __zres_end
    dw pick_spell_dialog.jumptable_case3 - IMAGE_BASE + __zres_end
    dw pick_spell_dialog.jumptable_case4 - IMAGE_BASE + __zres_end
pick_spell_dialog.forward41:
    cmp ax, strict word 5
    jae short pick_spell_dialog.forward42
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + pick_spell_dialog.jumptable1 - IMAGE_BASE + __zres_end]
pick_spell_dialog.forward42:
    jmp near pick_spell_dialog.back7
pick_spell_dialog.forward43:
    cmp word [bp - 0x1c], byte 0
    je short pick_spell_dialog.forward44
    jmp near pick_spell_dialog.back5
pick_spell_dialog.forward44:
    mov ax, 1
    push ax
    push word [bp - 0x3a]
    call restore_saved_screen
    add sp, byte 4
    mov ax, word [bp - 0xa]
    inc ax
    push ax
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    dec ax
    push ax
    mov ax, word [bp - 4]
    dec ax
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, word [bp - 0x3e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x3c]
    add ax, 0x100
    mov word [spell_dialog_result], ax
    mov ax, word [spell_dialog_button]
    ret
