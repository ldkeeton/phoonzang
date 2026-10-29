; auto-generated
api_idx_0038_IPTM:
    mov ax, 0xffc8
    call aztec_csav
    mov word [spell_dialog_result], 0xffff
    mov word [bp - 4], 0x37
    mov word [bp - 6], 0x8f
    mov word [bp - 8], 0x108
    mov word [bp - 0xa], 0xc5
    mov word [bp - 0x12], 0x16
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short .forward1
    mov ax, word [bp + 0xc]
.forward1:
    mov word [bp - 0x22], ax
    mov ax, api_idx_0038_IPTM.dseg1
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
    mov word [bp - 0x38], ax
    push word [bp - 0xa]
    push word [bp - 8]
    push word [bp - 6]
    push word [bp - 4]
    call draw_dialog_box
    add sp, byte 8
    lea ax, word [bp - 0x36]
    push ax
    push word [bp + 4]
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x36]
    push ax
    push word [bp + 6]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0xc
    lea ax, word [bp - 0x36]
    push ax
    mov ax, word [bp + 4]
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x36]
    push ax
    push word [bp + 8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0xc
    lea ax, word [bp - 0x36]
    push ax
    mov ax, word [bp + 4]
    inc ax
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x36]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0xc
    mov word [bp - 0x16], 0
    mov word [bp - 0x20], 0xffff
    push word [bp - 0x22]
    push word [bp - 0x20]
    push word [bp - 0x16]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov word [bp - 0x10], 0
    push word [bp - 0x10]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
    push ax
    call draw_scrollbar
    add sp, byte 0xa
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x10]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x10]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
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
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
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
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
    push ax
    mov ax, 2
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    mov ax, 5
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short .forward2
    mov ax, word [bp + 0xc]
.forward2:
    mov word [bp - 0x1e], ax
    mov word [bp - 2], 0
    jmp short .forward3
.back1:
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    imul word [bp - 2]
    add ax, word [bp - 6]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, 0xb9
    push ax
    mov ax, 6
    imul word [bp - 2]
    add ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 6
    push ax
    call set_hotspot
    add sp, byte 0xe
    inc word [bp - 2]
.forward3:
    mov ax, word [bp - 2]
    cmp ax, word [bp - 0x1e]
    jl short .back1
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x1e]
    add ax, strict word 6
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
    call call_show_area
    add sp, byte 8
    mov word [bp - 0x1a], 1
.back2:
    mov ax, hotspot_rects
    push ax
    call poll_hotspots
    pop cx
    dec ax
    mov word [bp - 0x18], ax
    cmp word [space_key_hit], byte 0
    je short .forward7
    mov ax, word [bp - 0x20]
    cmp ax, word [bp - 0x16]
    jl short .forward4
    inc word [bp - 0x20]
.forward4:
    mov ax, word [bp - 0x20]
    cmp ax, strict word 0xffff
    je short .forward5
    cmp ax, word [bp - 0x16]
    jl short .forward5
    mov ax, word [bp - 0x16]
    add ax, word [bp - 0x1e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x20]
    cmp cx, ax
    jge short .forward6
.forward5:
    mov ax, word [bp - 0x16]
    mov word [bp - 0x20], ax
.forward6:
    mov word [hotspot_hit], 1
    mov ax, word [bp - 0x20]
    sub ax, word [bp - 0x16]
    add ax, strict word 6
    mov word [bp - 0x18], ax
.forward7:
    cmp word [hotspot_hit], byte 1
    je short .forward8
    jmp near .forward20
.forward8:
    mov ax, word [bp - 0x18]
    jmp near .forward18
api_idx_0038_IPTM.jumptable_case1:
    lea ax, word [bp - 0xe]
    push ax
    lea ax, word [bp - 0xc]
    push ax
    call call_get_mouse
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0xe]
    mov cx, word [bp - 6]
    add cx, word [bp - 0x10]
    add cx, byte 0xe
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x14], ax
api_idx_0038_IPTM.back3:
    lea ax, word [bp - 0xe]
    push ax
    lea ax, word [bp - 0xc]
    push ax
    call call_get_mouse
    add sp, byte 4
    mov word [bp - 0x1c], ax
    push word [bp - 0x12]
    mov ax, 0
    push ax
    mov ax, word [bp - 0xe]
    mov cx, word [bp - 6]
    add cx, byte 0xe
    sub ax, cx
    sub ax, word [bp - 0x14]
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x10], ax
    cmp word [bp + 0xc], byte 7
    jle short api_idx_0038_IPTM.forward9
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x12]
    imul cx
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    add cx, byte -6
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x16], ax
api_idx_0038_IPTM.forward9:
    push word [bp - 0x22]
    push word [bp - 0x20]
    push word [bp - 0x16]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0xe
    push word [bp - 0x10]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
    push ax
    call draw_scrollbar
    add sp, byte 0xa
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x10]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x10]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, word [bp - 6]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x5d
    push ax
    call call_show_area
    add sp, byte 8
    cmp word [bp - 0x1c], byte 0
    je short api_idx_0038_IPTM.forward10
    jmp near api_idx_0038_IPTM.back3
api_idx_0038_IPTM.forward10:
    jmp near api_idx_0038_IPTM.forward20
api_idx_0038_IPTM.jumptable_case2:
    cmp word [bp - 0x18], byte 1
    jne short api_idx_0038_IPTM.forward12
    mov ax, 1
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
    push ax
    call flash_area
    add sp, byte 0xa
    cmp word [bp - 0x16], byte 0
    jle short api_idx_0038_IPTM.forward11
    dec word [bp - 0x16]
api_idx_0038_IPTM.forward11:
    jmp short api_idx_0038_IPTM.forward13
api_idx_0038_IPTM.forward12:
    mov ax, 1
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
    push ax
    call flash_area
    add sp, byte 0xa
    mov ax, word [bp + 0xc]
    add ax, strict word 0xfff9
    cmp ax, word [bp - 0x16]
    jle short api_idx_0038_IPTM.forward13
    inc word [bp - 0x16]
api_idx_0038_IPTM.forward13:
    cmp word [bp + 0xc], byte 7
    jle short api_idx_0038_IPTM.forward14
    push word [bp - 0x12]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x12]
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    add cx, byte -7
    cwd
    idiv cx
    imul word [bp - 0x16]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x10], ax
api_idx_0038_IPTM.forward14:
    push word [bp - 0x22]
    push word [bp - 0x20]
    push word [bp - 0x16]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0xe
    push word [bp - 0x10]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
    push ax
    call draw_scrollbar
    add sp, byte 0xa
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x10]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp - 0x10]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, word [bp - 6]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 4]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x5d
    push ax
    call call_show_area
    add sp, byte 8
    jmp near api_idx_0038_IPTM.forward20
api_idx_0038_IPTM.jumptable_case3:
    cmp word [bp + 6], byte 0
    je short api_idx_0038_IPTM.forward15
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov word [spell_dialog_button], 0
    mov word [bp - 0x1a], 0
api_idx_0038_IPTM.forward15:
    jmp near api_idx_0038_IPTM.forward20
api_idx_0038_IPTM.jumptable_case4:
    cmp word [bp + 8], byte 0
    je short api_idx_0038_IPTM.forward16
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov word [spell_dialog_button], 1
    mov word [bp - 0x1a], 0
api_idx_0038_IPTM.forward16:
    jmp near api_idx_0038_IPTM.forward20
api_idx_0038_IPTM.jumptable_case5:
    cmp word [bp + 0xa], byte 0
    je short api_idx_0038_IPTM.forward17
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov word [spell_dialog_button], 2
    mov word [bp - 0x1a], 0
api_idx_0038_IPTM.forward17:
    jmp short api_idx_0038_IPTM.forward20
api_idx_0038_IPTM.back4:
    mov ax, word [bp - 0x16]
    add ax, word [bp - 0x18]
    add ax, strict word 0xfffa
    mov word [bp - 0x20], ax
    push word [bp - 0x22]
    push ax
    push word [bp - 0x16]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov ax, word [bp - 6]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 4]
    add ax, 0xb9
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x5d
    push ax
    call call_show_area
    add sp, byte 8
    jmp short api_idx_0038_IPTM.forward20
api_idx_0038_IPTM.jumptable1:
    dw api_idx_0038_IPTM.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0038_IPTM.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0038_IPTM.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0038_IPTM.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0038_IPTM.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0038_IPTM.jumptable_case5 - IMAGE_BASE + __zres_end
api_idx_0038_IPTM.forward18:
    cmp ax, strict word 6
    jae short api_idx_0038_IPTM.forward19
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0038_IPTM.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0038_IPTM.forward19:
    jmp short api_idx_0038_IPTM.back4
api_idx_0038_IPTM.forward20:
    cmp word [bp - 0x1a], byte 0
    je short api_idx_0038_IPTM.forward21
    jmp near api_idx_0038_IPTM.back2
api_idx_0038_IPTM.forward21:
    mov ax, 1
    push ax
    push word [bp - 0x38]
    call restore_saved_screen
    add sp, byte 4
    mov ax, word [bp - 0x20]
    mov word [spell_dialog_result], ax
    mov ax, word [spell_dialog_button]
    ret
