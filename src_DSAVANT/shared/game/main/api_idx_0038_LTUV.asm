; auto-generated
api_idx_0038_LTUV:
    mov ax, 0xffc8
    call aztec_csav
    mov word [spell_dialog_result], 0xffff
    mov word [bp - 0x0004], 0x37
    mov word [bp - 0x0006], 0x8f
    mov word [bp - 0x0008], 0x108
    mov word [bp - 0x000a], 0xc5
    mov word [bp - 0x0012], 0x16
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short @..api_idx_0038_LTUV.l1
    mov ax, word [bp + 0xc]
@..api_idx_0038_LTUV.l1:
    mov word [bp - 0x0022], ax
    mov ax, api_idx_0038_LTUV.dseg1
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
    mov word [bp - 0x0038], ax
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    push word [bp - 0x0004]
    call draw_dialog_box
    add sp, byte 8
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x4]
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0x8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0x0c
    lea ax, word [bp - 0x0036]
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x0036]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0x0c
    mov word [bp - 0x0016], 0
    mov word [bp - 0x0020], 0xffff
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0x0e
    mov word [bp - 0x0010], 0
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call draw_scrollbar
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
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
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
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
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 2
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 4
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    mov ax, 5
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 7
    cmp word [bp + 0xc], byte 7
    jge short @..api_idx_0038_LTUV.l2
    mov ax, word [bp + 0xc]
@..api_idx_0038_LTUV.l2:
    mov word [bp - 0x001e], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0038_LTUV.l4
@..api_idx_0038_LTUV.l3:
    mov ax, 0
    push ax
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xb9
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 6
    push ax
    call set_hotspot
    add sp, byte 0x0e
    inc word [bp - 0x0002]
@..api_idx_0038_LTUV.l4:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x001e]
    jl short @..api_idx_0038_LTUV.l3
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 0x001e]
    add ax, strict word 6
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
    mov word [bp - 0x001a], 1
@..api_idx_0038_LTUV.l5:
    mov ax, 0x59fe
    push ax
    call poll_hotspots
    pop cx
    dec ax
    mov word [bp - 0x0018], ax
    cmp word [space_key_hit], byte 0
    je short @..api_idx_0038_LTUV.l9
    mov ax, word [bp - 0x0020]
    cmp ax, word [bp - 0x0016]
    jl short @..api_idx_0038_LTUV.l6
    inc word [bp - 0x0020]
@..api_idx_0038_LTUV.l6:
    mov ax, word [bp - 0x0020]
    cmp ax, strict word 0xffff
    je short @..api_idx_0038_LTUV.l7
    cmp ax, word [bp - 0x0016]
    jl short @..api_idx_0038_LTUV.l7
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x001e]
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [bp - 0x0020]
    cmp cx, ax
    jge short @..api_idx_0038_LTUV.l8
@..api_idx_0038_LTUV.l7:
    mov ax, word [bp - 0x0016]
    mov word [bp - 0x0020], ax
@..api_idx_0038_LTUV.l8:
    mov word [hotspot_hit], 1
    mov ax, word [bp - 0x0020]
    sub ax, word [bp - 0x0016]
    add ax, strict word 6
    mov word [bp - 0x0018], ax
@..api_idx_0038_LTUV.l9:
    cmp word [hotspot_hit], byte 1
    je short @..api_idx_0038_LTUV.l10
    jmp near @..api_idx_0038_LTUV.l24
@..api_idx_0038_LTUV.l10:
    mov ax, word [bp - 0x0018]
    jmp near @..api_idx_0038_LTUV.l22
api_idx_0038_LTUV.jumptable_case1:
    lea ax, word [bp - 0x000e]
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call gfx_get_mouse
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    mov cx, word [bp - 0x0006]
    add cx, word [bp - 0x0010]
    add cx, byte 0x0e
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x0014], ax
@..api_idx_0038_LTUV.l11:
    lea ax, word [bp - 0x000e]
    push ax
    lea ax, word [bp - 0x000c]
    push ax
    call gfx_get_mouse
    add sp, byte 4
    mov word [bp - 0x001c], ax
    push word [bp - 0x0012]
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000e]
    mov cx, word [bp - 0x0006]
    add cx, byte 0x0e
    sub ax, cx
    sub ax, word [bp - 0x0014]
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x0010], ax
    cmp word [bp + 0xc], byte 7
    jle short @..api_idx_0038_LTUV.l12
    mov cx, 0x64
    imul cx
    push ax
    mov ax, word [bp - 0x0012]
    imul cx
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    add cx, byte 0xfa
    cwd
    idiv cx
    mov cx, ax
    pop ax
    cwd
    idiv cx
    mov word [bp - 0x0016], ax
@..api_idx_0038_LTUV.l12:
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0x0e
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call draw_scrollbar
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call gfx_show_area
    add sp, byte 8
    cmp word [bp - 0x001c], byte 0
    je short @..api_idx_0038_LTUV.l13
    jmp near @..api_idx_0038_LTUV.l11
@..api_idx_0038_LTUV.l13:
    jmp near @..api_idx_0038_LTUV.l24
api_idx_0038_LTUV.jumptable_case2:
    cmp word [bp - 0x0018], byte 1
    jne short @..api_idx_0038_LTUV.l15
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0xc
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call flash_area
    add sp, byte 0x0a
    cmp word [bp - 0x0016], byte 0
    jle short @..api_idx_0038_LTUV.l14
    dec word [bp - 0x0016]
@..api_idx_0038_LTUV.l14:
    jmp short @..api_idx_0038_LTUV.l16
@..api_idx_0038_LTUV.l15:
    mov ax, 1
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x2a
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call flash_area
    add sp, byte 0x0a
    mov ax, word [bp + 0xc]
    add ax, strict word 0xfff9
    cmp ax, word [bp - 0x0016]
    jle short @..api_idx_0038_LTUV.l16
    inc word [bp - 0x0016]
@..api_idx_0038_LTUV.l16:
    cmp word [bp + 0xc], byte 7
    jle short @..api_idx_0038_LTUV.l17
    push word [bp - 0x0012]
    mov ax, 0
    push ax
    mov ax, 0x64
    imul word [bp - 0x0012]
    add ax, strict word 0x64
    mov cx, word [bp + 0xc]
    add cx, byte 0xf9
    cwd
    idiv cx
    imul word [bp - 0x0016]
    mov cx, 0x64
    cwd
    idiv cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0x0010], ax
@..api_idx_0038_LTUV.l17:
    push word [bp - 0x0022]
    push word [bp - 0x0020]
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0x0e
    push word [bp - 0x0010]
    mov ax, 7
    push ax
    mov ax, 8
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    call draw_scrollbar
    add sp, byte 0x0a
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0x12
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, word [bp - 0x0010]
    add ax, strict word 0xe
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc1
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xc9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near @..api_idx_0038_LTUV.l24
api_idx_0038_LTUV.jumptable_case3:
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0038_LTUV.l18
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0x0a
    mov word [spell_dialog_button], 0
    mov word [bp - 0x001a], 0
@..api_idx_0038_LTUV.l18:
    jmp near @..api_idx_0038_LTUV.l24
api_idx_0038_LTUV.jumptable_case4:
    cmp word [bp + 0x8], byte 0
    je short @..api_idx_0038_LTUV.l19
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0x0a
    mov word [spell_dialog_button], 1
    mov word [bp - 0x001a], 0
@..api_idx_0038_LTUV.l19:
    jmp near @..api_idx_0038_LTUV.l24
api_idx_0038_LTUV.jumptable_case5:
    cmp word [bp + 0xa], byte 0
    je short @..api_idx_0038_LTUV.l20
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0x0a
    mov word [spell_dialog_button], 2
    mov word [bp - 0x001a], 0
@..api_idx_0038_LTUV.l20:
    jmp short @..api_idx_0038_LTUV.l24
@..api_idx_0038_LTUV.l21:
    mov ax, word [bp - 0x0016]
    add ax, word [bp - 0x0018]
    add ax, strict word 0xfffa
    mov word [bp - 0x0020], ax
    push word [bp - 0x0022]
    push ax
    push word [bp - 0x0016]
    mov ax, 7
    push ax
    mov ax, 0xf
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0x0e
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x30
    push ax
    mov ax, word [bp - 0x0004]
    add ax, 0xb9
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 0x5d
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp short @..api_idx_0038_LTUV.l24
api_idx_0038_LTUV.jumptable1:
    dw api_idx_0038_LTUV.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0038_LTUV.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0038_LTUV.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0038_LTUV.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0038_LTUV.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0038_LTUV.jumptable_case5 - IMAGE_BASE + __zres_end
@..api_idx_0038_LTUV.l22:
    cmp ax, strict word 6
    jae short @..api_idx_0038_LTUV.l23
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0038_LTUV.jumptable1 - IMAGE_BASE + __zres_end]
@..api_idx_0038_LTUV.l23:
    jmp short @..api_idx_0038_LTUV.l21
@..api_idx_0038_LTUV.l24:
    cmp word [bp - 0x001a], byte 0
    je short @..api_idx_0038_LTUV.l25
    jmp near @..api_idx_0038_LTUV.l5
@..api_idx_0038_LTUV.l25:
    mov ax, 1
    push ax
    push word [bp - 0x0038]
    call restore_saved_screen
    add sp, byte 4
    mov ax, word [bp - 0x0020]
    mov word [spell_dialog_result], ax
    mov ax, word [spell_dialog_button]
    ret
