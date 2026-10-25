; auto-generated
api_idx_0050_MINM:
    mov ax, 0xffb0
    call aztec_csav
    mov word [bp - 0x0002], 0
@..api_idx_0050_MINM.l1:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + party_slot_frame]
    add bx, bp
    mov word [bx - 0x0050], ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx + party_slot_frame], 0
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0050_MINM.l1
    mov word [spell_dialog_result], 0xffff
    mov word [bp - 0x0004], 0x32
    mov word [bp - 0x0006], 0x73
    mov word [bp - 0x0008], 0x10d
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x000c], 0x95
    mov word [bp - 0x0014], 0x16
    mov ax, api_idx_0050_MINM.dseg1
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call save_screen_area
    add sp, byte 0x0a
    mov word [bp - 0x003a], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call draw_dialog_box
    add sp, byte 8
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    mov ax, 0x95
    push ax
    call draw_dialog_box
    add sp, byte 8
    call draw_marker_glyph
    push word [bp + 0x4]
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
    lea ax, word [bp - 0x0038]
    push ax
    push word [bp + 0x6]
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call draw_button
    add sp, byte 0x0c
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x0038]
    push ax
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    call draw_button
    add sp, byte 0x0c
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
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
    mov word [bp - 0x003c], 0xffff
    mov word [bp - 0x003e], 0
    mov word [bp - 0x0040], 0
    mov word [bp - 0x0002], 0
@..api_idx_0050_MINM.l2:
    mov ax, 0
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp - 0x003e]
    jne short @..api_idx_0050_MINM.l3
    mov ax, 1
@..api_idx_0050_MINM.l3:
    push ax
    push cx
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call draw_power_digit
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..api_idx_0050_MINM.l2
    mov word [bp - 0x0042], 0
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call api_idx_0050_MINM.loc1
    add sp, byte 0x0a
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call api_idx_0050_MINM.api_idx1
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..api_idx_0050_MINM.l4
    mov ax, word [bp - 0x0044]
@..api_idx_0050_MINM.l4:
    mov word [bp - 0x0024], ax
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0022], 0xffff
    push ax
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0x0e
    mov word [bp - 0x0012], 0
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call draw_scrollbar
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 1
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xb
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x46
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 2
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x36
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, 3
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    mov ax, 4
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov word [bp - 0x0002], 0
@..api_idx_0050_MINM.l5:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x31
    cbw
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000c]
    add ax, strict word 0x13
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    add ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 5
    push ax
    call set_hotspot
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..api_idx_0050_MINM.l5
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
    add sp, byte 0x0e
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
    add sp, byte 0x0e
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
    add sp, byte 0x0e
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
    add sp, byte 0x0e
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
    add sp, byte 0x0e
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
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..api_idx_0050_MINM.l6
    mov ax, word [bp - 0x0044]
@..api_idx_0050_MINM.l6:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0002], 0
@..api_idx_0050_MINM.l7:
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x62
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x12
    push ax
    call set_hotspot
    add sp, byte 0x0e
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jl short @..api_idx_0050_MINM.l7
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
    add sp, byte 0x0e
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call gfx_show_area
    add sp, byte 8
    mov word [api_idx_0050_MINM.bss1], 7
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov word [bp - 0x001c], 1
@..api_idx_0050_MINM.l8:
    push word [bp - 0x0042]
    push word [bp + 0x4]
    call periodic_party_redraw
    add sp, byte 4
    mov ax, hotspot_rects
    push ax
    call poll_hotspots
    pop cx
    dec ax
    mov word [bp - 0x001a], ax
    cmp word [space_key_hit], byte 0
    je short @..api_idx_0050_MINM.l12
    mov ax, word [bp - 0x0022]
    cmp ax, word [bp - 0x0018]
    jl short @..api_idx_0050_MINM.l9
    inc word [bp - 0x0022]
@..api_idx_0050_MINM.l9:
    mov ax, word [bp - 0x0022]
    cmp ax, strict word 0xffff
    je short @..api_idx_0050_MINM.l10
    cmp ax, word [bp - 0x0018]
    jl short @..api_idx_0050_MINM.l10
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x0020]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0022]
    cmp cx, ax
    jge short @..api_idx_0050_MINM.l11
@..api_idx_0050_MINM.l10:
    mov ax, word [bp - 0x0018]
    mov word [bp - 0x0022], ax
@..api_idx_0050_MINM.l11:
    mov word [hotspot_hit], 1
    mov ax, word [bp - 0x0022]
    sub ax, word [bp - 0x0018]
    add ax, strict word 0x12
    mov word [bp - 0x001a], ax
@..api_idx_0050_MINM.l12:
    cmp word [hotspot_hit], byte 1
    je short @..api_idx_0050_MINM.l13
    jmp near @..api_idx_0050_MINM.l50
@..api_idx_0050_MINM.l13:
    mov ax, word [bp - 0x001a]
    jmp near @..api_idx_0050_MINM.l48
api_idx_0050_MINM.jumptable_case1:
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call gfx_get_mouse
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0006]
    add cx, word [bp - 0x0012]
    add cx, byte 0x2a
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x0016], ax
@..api_idx_0050_MINM.l14:
    lea ax, word [bp - 0x0010]
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    call gfx_get_mouse
    add sp, byte 4
    mov word [bp - 0x001e], ax
    push word [bp - 0x0014]
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0010]
    mov cx, word [bp - 0x0006]
    add cx, byte 0x2a
    sub ax, cx
    sub ax, word [bp - 0x0016]
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0044], byte 7
    jle short @..api_idx_0050_MINM.l15
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x0014]
    imul cx
    add ax, strict word 0x64
    mov cx, word [bp - 0x0044]
    add cx, byte 0xfa
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x0018], ax
@..api_idx_0050_MINM.l15:
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0x0e
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call draw_scrollbar
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call gfx_show_area
    add sp, byte 8
    cmp word [bp - 0x001e], byte 0
    je short @..api_idx_0050_MINM.l16
    jmp near @..api_idx_0050_MINM.l14
@..api_idx_0050_MINM.l16:
    jmp near @..api_idx_0050_MINM.l50
api_idx_0050_MINM.jumptable_case2:
    cmp word [bp - 0x001a], byte 1
    jne short @..api_idx_0050_MINM.l18
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x28
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call flash_area
    add sp, byte 0x0a
    cmp word [bp - 0x0018], byte 0
    jle short @..api_idx_0050_MINM.l17
    dec word [bp - 0x0018]
@..api_idx_0050_MINM.l17:
    jmp short @..api_idx_0050_MINM.l19
@..api_idx_0050_MINM.l18:
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x46
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call flash_area
    add sp, byte 0x0a
    mov ax, word [bp - 0x0044]
    add ax, strict word 0xfff9
    cmp ax, word [bp - 0x0018]
    jle short @..api_idx_0050_MINM.l19
    inc word [bp - 0x0018]
@..api_idx_0050_MINM.l19:
    cmp word [bp - 0x0044], byte 7
    jle short @..api_idx_0050_MINM.l20
    push word [bp - 0x0014]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x0014]
    add ax, strict word 0x64
    mov cx, word [bp - 0x0044]
    add cx, byte 0xf9
    cwd
    idiv cx
    imul word [bp - 0x0018]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x0012], ax
@..api_idx_0050_MINM.l20:
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0x0e
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call draw_scrollbar
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near @..api_idx_0050_MINM.l50
api_idx_0050_MINM.jumptable_case3:
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0050_MINM.l21
    jmp near @..api_idx_0050_MINM.l26
@..api_idx_0050_MINM.l21:
    cmp word [bp - 0x003c], byte 0
    jge short @..api_idx_0050_MINM.l22
    jmp near @..api_idx_0050_MINM.l25
@..api_idx_0050_MINM.l22:
    cmp word [bp + 0xa], byte 0
    je short @..api_idx_0050_MINM.l24
    mov ax, word [bp - 0x003e]
    cmp ax, word [bp - 0x0040]
    jle short @..api_idx_0050_MINM.l23
    jmp near @..api_idx_0050_MINM.l25
@..api_idx_0050_MINM.l23:
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov dx, word [bp - 0x0042]
    shl dx, 1
    shl dx, 1
    add ax, dx
    mov bx, ax
    mov cx, word [bx + party_records + pc_rec.realm_points]
    pop ax
    cmp ax, cx
    jg short @..api_idx_0050_MINM.l25
@..api_idx_0050_MINM.l24:
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call flash_button
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call flash_button
    add sp, byte 0x0a
    mov word [spell_dialog_button], 0
    mov word [bp - 0x001c], 0
@..api_idx_0050_MINM.l25:
    cmp word [bp - 0x001c], byte 0
    je short @..api_idx_0050_MINM.l26
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
@..api_idx_0050_MINM.l26:
    jmp near @..api_idx_0050_MINM.l50
api_idx_0050_MINM.jumptable_case4:
    mov ax, 1
    push ax
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    call flash_button
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x42
    push ax
    call flash_button
    add sp, byte 0x0a
    mov word [spell_dialog_button], 1
    mov word [bp - 0x001c], 0
    jmp near @..api_idx_0050_MINM.l50
@..api_idx_0050_MINM.l27:
    cmp word [bp - 0x001a], byte 5
    jge short @..api_idx_0050_MINM.l28
    jmp near @..api_idx_0050_MINM.l36
@..api_idx_0050_MINM.l28:
    cmp word [bp - 0x001a], byte 0x0b
    jle short @..api_idx_0050_MINM.l29
    jmp near @..api_idx_0050_MINM.l36
@..api_idx_0050_MINM.l29:
    mov ax, 0
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call draw_power_digit
    add sp, byte 8
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfffb
    mov word [bp - 0x003e], ax
    mov ax, 1
    push ax
    push word [bp - 0x003e]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xc
    push ax
    call draw_power_digit
    add sp, byte 8
    cmp word [bp - 0x003c], byte 0
    jge short @..api_idx_0050_MINM.l30
    jmp near @..api_idx_0050_MINM.l34
@..api_idx_0050_MINM.l30:
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_cap]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0001]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x0040], ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x0040]
    inc cx
    imul cx
    mov word [bp - 0x0002], ax
    cmp word [bp + 0xa], byte 0
    jne short @..api_idx_0050_MINM.l31
    mov ax, 0x3e7
    jmp short @..api_idx_0050_MINM.l33
@..api_idx_0050_MINM.l31:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.realm_points]
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0050_MINM.l32
    jmp short @..api_idx_0050_MINM.l33
@..api_idx_0050_MINM.l32:
    mov ax, word [bp - 0x0002]
@..api_idx_0050_MINM.l33:
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call api_idx_0050_MINM.loc1
    add sp, byte 0x0a
    jmp short @..api_idx_0050_MINM.l35
@..api_idx_0050_MINM.l34:
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call api_idx_0050_MINM.loc1
    add sp, byte 0x0a
@..api_idx_0050_MINM.l35:
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x56
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x14
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0xb
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near @..api_idx_0050_MINM.l47
@..api_idx_0050_MINM.l36:
    cmp word [bp - 0x001a], byte 0x0c
    jge short @..api_idx_0050_MINM.l37
    jmp near @..api_idx_0050_MINM.l41
@..api_idx_0050_MINM.l37:
    cmp word [bp - 0x001a], byte 0x11
    jle short @..api_idx_0050_MINM.l38
    jmp near @..api_idx_0050_MINM.l41
@..api_idx_0050_MINM.l38:
    mov ax, word [bp - 0x001a]
    add ax, strict word 0xfff4
    mov word [bp - 0x0042], ax
    mov word [bp - 0x003c], 0xffff
    push ax
    push word [bp + 0x4]
    call api_idx_0050_MINM.api_idx1
    add sp, byte 4
    mov word [bp - 0x0044], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..api_idx_0050_MINM.l39
    mov ax, word [bp - 0x0044]
@..api_idx_0050_MINM.l39:
    mov word [bp - 0x0024], ax
    mov ax, 7
    cmp word [bp - 0x0044], byte 7
    jge short @..api_idx_0050_MINM.l40
    mov ax, word [bp - 0x0044]
@..api_idx_0050_MINM.l40:
    mov word [bp - 0x0020], ax
    mov word [bp - 0x0018], 0
    mov word [bp - 0x0022], 0xffff
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0x0e
    mov word [bp - 0x0012], 0
    push word [bp - 0x0012]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    call draw_scrollbar
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2e
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0012]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x6a
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call api_idx_0050_MINM.loc1
    add sp, byte 0x0a
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near @..api_idx_0050_MINM.l47
@..api_idx_0050_MINM.l41:
    cmp word [bp - 0x001a], byte 0x12
    jge short @..api_idx_0050_MINM.l42
    jmp near @..api_idx_0050_MINM.l47
@..api_idx_0050_MINM.l42:
    mov ax, word [bp - 0x0020]
    add ax, strict word 0x12
    cmp ax, word [bp - 0x001a]
    jg short @..api_idx_0050_MINM.l43
    jmp near @..api_idx_0050_MINM.l47
@..api_idx_0050_MINM.l43:
    mov ax, word [bp - 0x0018]
    add ax, word [bp - 0x001a]
    add ax, strict word 0xffee
    mov word [bp - 0x0022], ax
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + known_spell_ids]
    mov word [bp - 0x003c], ax
    push word [bp - 0x0024]
    push word [bp - 0x0022]
    push word [bp - 0x0018]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call draw_text_list
    add sp, byte 0x0e
    mov ax, 6
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_cap]
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0001]
    sub ah, ah
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x0040], ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x0040]
    inc cx
    imul cx
    mov word [bp - 0x0002], ax
    cmp word [bp + 0xa], byte 0
    jne short @..api_idx_0050_MINM.l44
    mov ax, 0x3e7
    jmp short @..api_idx_0050_MINM.l46
@..api_idx_0050_MINM.l44:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0042]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.realm_points]
    cmp ax, word [bp - 0x0002]
    jge short @..api_idx_0050_MINM.l45
    jmp short @..api_idx_0050_MINM.l46
@..api_idx_0050_MINM.l45:
    mov ax, word [bp - 0x0002]
@..api_idx_0050_MINM.l46:
    push ax
    mov ax, 6
    imul word [bp - 0x003c]
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec.f_0002]
    sub ah, ah
    mov cx, word [bp - 0x003e]
    inc cx
    imul cx
    push ax
    push word [bp - 0x0042]
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call api_idx_0050_MINM.loc1
    add sp, byte 0x0a
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x4c
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x22
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 6
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1b
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x72
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x000c]
    add ax, strict word 0x5e
    push ax
    call gfx_show_area
    add sp, byte 8
@..api_idx_0050_MINM.l47:
    jmp short @..api_idx_0050_MINM.l50
api_idx_0050_MINM.jumptable1:
    dw api_idx_0050_MINM.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0050_MINM.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0050_MINM.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0050_MINM.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0050_MINM.jumptable_case4 - IMAGE_BASE + __zres_end
@..api_idx_0050_MINM.l48:
    cmp ax, strict word 5
    jae short @..api_idx_0050_MINM.l49
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0050_MINM.jumptable1 - IMAGE_BASE + __zres_end]
@..api_idx_0050_MINM.l49:
    jmp near @..api_idx_0050_MINM.l27
@..api_idx_0050_MINM.l50:
    cmp word [bp - 0x001c], byte 0
    je short @..api_idx_0050_MINM.l51
    jmp near @..api_idx_0050_MINM.l8
@..api_idx_0050_MINM.l51:
    mov ax, 1
    push ax
    push word [bp - 0x003a]
    call restore_saved_screen
    add sp, byte 4
    mov ax, word [bp - 0x000a]
    inc ax
    push ax
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, word [bp - 0x0006]
    dec ax
    push ax
    mov ax, word [bp - 0x0004]
    dec ax
    push ax
    call gfx_show_area
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_0050_MINM.l52:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0050]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx + party_slot_frame], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_0050_MINM.l52
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov ax, word [bp - 0x003e]
    xchg al, ah
    sub al, al
    add ax, word [bp - 0x003c]
    add ax, 0x100
    mov word [spell_dialog_result], ax
    mov ax, word [spell_dialog_button]
    ret
