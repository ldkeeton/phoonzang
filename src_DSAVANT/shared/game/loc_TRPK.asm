; auto-generated
loc_TRPK:
    mov ax, 0xfe56
    call aztec_csav
    mov ax, word [bp + 0x14]
    dec ax
    cwd
    idiv word [bp + 0x12]
    inc ax
    imul word [bp + 0xe]
    add ax, word [bp + 8]
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    mov dx, ax
    mov cx, word [bp + 0xe]
    sub cx, ax
    pop ax
    sub ax, cx
    mov word [bp - 6], ax
    mov ax, word [bp + 0x10]
    imul word [bp + 0x12]
    add ax, word [bp + 0xa]
    mov cx, word [bp + 0x10]
    add cx, byte 0xf7
    sub ax, cx
    mov word [bp - 8], ax
    cmp word [bp + 6], byte 0
    jne short @..loc_TRPK.l1
    jmp near @..loc_TRPK.l2
@..loc_TRPK.l1:
    mov ax, loc_TRPK.dseg1
    push ax
    mov ax, word [bp - 8]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 8]
    add ax, strict word 0xfffa
    push ax
    call save_screen_area
    add sp, byte 0xa
    mov word [bp - 0x1a8], ax
    mov ax, word [bp - 8]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffec
    push ax
    mov ax, word [bp + 8]
    add ax, strict word 0xfffb
    push ax
    call draw_dialog_box
    add sp, byte 8
    lea ax, word [bp - 0x1a6]
    push ax
    push word [bp + 6]
    call load_message_string
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x1a6]
    push ax
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x1a6]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    jmp short @..loc_TRPK.l3
@..loc_TRPK.l2:
    mov ax, loc_TRPK.dseg2
    push ax
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 8]
    dec ax
    push ax
    call save_screen_area
    add sp, byte 0xa
    mov word [bp - 0x1a8], ax
@..loc_TRPK.l3:
    mov word [bp - 2], 0
    mov word [bp - 4], 0
@..loc_TRPK.l4:
    mov ax, word [bp - 4]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0x1c]
    cmp word [bx + si], byte 0xff
    jne short @..loc_TRPK.l5
    jmp near @..loc_TRPK.l9
@..loc_TRPK.l5:
    cmp word [bx + si], byte 1
    je short @..loc_TRPK.l6
    jmp near @..loc_TRPK.l8
@..loc_TRPK.l6:
    mov ax, 0x14
    imul word [bp - 2]
    lea cx, word [bp - 0x156]
    add ax, cx
    push ax
    mov ax, word [bp + 4]
    add ax, word [bp - 4]
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, word [bp - 2]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0xa], ax
    mov ax, word [bp - 2]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0xc], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    call draw_bevel_frame
    add sp, byte 0xa
    mov ax, 0xc0
    push ax
    mov ax, word [bp + 0x16]
    mov cx, word [bp - 4]
    cmp cx, word [bp + 0x18]
    jne short @..loc_TRPK.l7
    mov ax, 0x1a
@..loc_TRPK.l7:
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    inc ax
    inc ax
    push ax
    mov ax, 0x14
    imul word [bp - 2]
    lea cx, word [bp - 0x156]
    add ax, cx
    push ax
    call aztec_strlen
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xc]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 8]
    add ax, word [bp - 0xa]
    inc ax
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 2]
    lea cx, word [bp - 0x156]
    add ax, cx
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    push word [bp - 2]
    call set_hotspot
    add sp, byte 0xe
    mov ax, word [bp - 4]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x2a], ax
    inc word [bp - 2]
@..loc_TRPK.l8:
    inc word [bp - 4]
    jmp near @..loc_TRPK.l4
@..loc_TRPK.l9:
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 2]
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call gfx_show_area
    add sp, byte 8
    cmp word [mouse_active], byte 0
    je short @..loc_TRPK.l11
@..loc_TRPK.l10:
    mov ax, hotspot_rects
    push ax
    call poll_hotspots
    pop cx
    mov word [bp - 4], ax
    cmp word [hotspot_hit], byte 0
    je short @..loc_TRPK.l10
    jmp near @..loc_TRPK.l25
@..loc_TRPK.l11:
    mov word [bp - 4], 0
@..loc_TRPK.l12:
    mov ax, word [bp - 4]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0xa], ax
    mov ax, word [bp - 4]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0xc], ax
    mov ax, 0x16
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    call loc_MNNG
    add sp, byte 0xa
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 8]
    dec ax
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    call loc_MNNG
    add sp, byte 0xa
@..loc_TRPK.l13:
    mov ax, 1
    push ax
    call poll_filtered_key
    pop cx
    test ax, ax
    jne short @..loc_TRPK.l14
    jmp short @..loc_TRPK.l13
@..loc_TRPK.l14:
    mov ax, 1
    push ax
    call get_filtered_key
    pop cx
    sub ah, ah
    mov word [bp - 0x1aa], ax
    mov ax, word [bp - 4]
    cwd
    idiv word [bp + 0x12]
    mov word [bp - 0xa], ax
    mov ax, word [bp - 2]
    dec ax
    cwd
    idiv word [bp + 0x12]
    inc ax
    mov word [bp - 0xc], ax
@..loc_TRPK.l15:
    mov ax, word [bp - 0x1aa]
    jmp near @..loc_TRPK.l20
@..loc_TRPK.l16:
    mov ax, word [bp - 4]
    add ax, word [bp + 0x12]
    dec ax
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0xa]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 4], ax
    jmp near @..loc_TRPK.l22
@..loc_TRPK.l17:
    mov ax, word [bp - 4]
    inc ax
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0xa]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 4], ax
    jmp short @..loc_TRPK.l22
@..loc_TRPK.l18:
    mov ax, word [bp - 0xa]
    add ax, word [bp - 0xc]
    dec ax
    cwd
    idiv word [bp - 0xc]
    mov word [bp - 0xa], dx
    mov ax, word [bp - 4]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0xa]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 4], ax
    jmp short @..loc_TRPK.l22
@..loc_TRPK.l19:
    mov ax, word [bp - 0xa]
    inc ax
    cwd
    idiv word [bp - 0xc]
    mov word [bp - 0xa], dx
    mov ax, word [bp - 4]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    push ax
    mov ax, word [bp - 0xa]
    imul word [bp + 0x12]
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 4], ax
    jmp short @..loc_TRPK.l22
@..loc_TRPK.l20:
    cmp ax, strict word 8
    je short @..loc_TRPK.l18
    cmp ax, strict word 9
    jne short @..loc_TRPK.l21
    jmp near @..loc_TRPK.l16
@..loc_TRPK.l21:
    cmp ax, strict word 0xa
    je short @..loc_TRPK.l19
    cmp ax, strict word 0xb
    je short @..loc_TRPK.l17
@..loc_TRPK.l22:
    mov ax, word [bp - 4]
    cmp ax, word [bp - 2]
    jl short @..loc_TRPK.l23
    jmp near @..loc_TRPK.l15
@..loc_TRPK.l23:
    cmp word [bp - 0x1aa], byte 0xd
    je short @..loc_TRPK.l24
    jmp near @..loc_TRPK.l12
@..loc_TRPK.l24:
    inc word [bp - 4]
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 8]
    dec ax
    push ax
    call gfx_show_area
    add sp, byte 8
@..loc_TRPK.l25:
    dec word [bp - 4]
    mov ax, word [bp - 4]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 0xa], ax
    mov ax, word [bp - 4]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 0xc], ax
    mov ax, 1
    push ax
    push ax
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    add ax, word [bp - 0xc]
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 0xa]
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 1
    push ax
    push word [bp - 0x1a8]
    call restore_saved_screen
    add sp, byte 4
    cmp word [bp + 0x1a], byte 0
    je short @..loc_TRPK.l27
    cmp word [bp + 6], byte 0
    je short @..loc_TRPK.l26
    mov ax, word [bp - 8]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0xa]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 8]
    add ax, strict word 0xfffa
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp short @..loc_TRPK.l27
@..loc_TRPK.l26:
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 8]
    dec ax
    push ax
    call gfx_show_area
    add sp, byte 8
@..loc_TRPK.l27:
    mov ax, word [bp - 4]
    mov word [bss_9052], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x2a]
    ret
