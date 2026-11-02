; auto-generated
queue_slot_glyph_render:
    mov ax, 0xfffc
    call aztec_csav
    mov al, byte [bp + 4]
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    pop ax
    mov byte [bx + queued_slot_index], al
    mov al, byte [bp + 0x18]
    mov byte [bx + queued_slot_scale], al
    cmp word [bp + 4], strict word 0xfa
    jl short .forward1
    jmp near .forward13
.forward1:
    mov ax, 0x15e
    imul word [bp + 4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_x]
    sub ah, ah
    mov word [bp - 2], ax
    mov ax, 0x15e
    imul word [bp + 4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_y]
    sub ah, ah
    mov word [bp - 4], ax
    cmp word [bp + 0x18], byte 0
    jg short .forward2
    jmp near .forward11
.forward2:
    cmp word [bp + 0x1e], byte 0
    jg short .forward3
    jmp near .forward11
.forward3:
    mov ax, 0x64
    sub ax, word [bp + 0x18]
    mov cx, 0x64
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    pop ax
    mov byte [bx + queued_slot_scale], al
    cmp word [bp + 0x1e], byte 1
    je short .forward4
    jmp near .forward6
.forward4:
    mov ax, word [view_column_x]
    sub ax, word [bp - 2]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 6]
    sub ax, cx
    mov word [bx + queued_slot_x], ax
    cmp word [bp + 0x1a], byte 0
    je short .forward5
    mov ax, 0x15e
    imul word [bp + 4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_x]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    mov al, byte [bx + queued_slot_scale]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx + queued_slot_x], ax
.forward5:
    mov ax, word [view_depth_y]
    sub ax, word [bp - 4]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    mov cx, 0x64
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 8]
    sub ax, cx
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    pop ax
    mov word [bx + queued_slot_y], ax
    jmp near .forward10
.forward6:
    cmp word [bp + 0x1e], byte 2
    je short .forward7
    jmp near .forward9
.forward7:
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    mov al, byte [bx + queued_slot_scale]
    sub ah, ah
    mov cx, 0xa0
    sub cx, word [bp - 2]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 2]
    add ax, word [bp + 6]
    mov word [bx + queued_slot_x], ax
    cmp word [bp + 0x1a], byte 0
    je short .forward8
    mov ax, 0x15e
    imul word [bp + 4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_x]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    mov al, byte [bx + queued_slot_scale]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx + queued_slot_x], ax
.forward8:
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    mov al, byte [bx + queued_slot_scale]
    sub ah, ah
    mov cx, 0x42
    sub cx, word [bp - 4]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 4]
    add ax, word [bp + 8]
    mov word [bx + queued_slot_y], ax
    jmp short .forward10
.forward9:
    cmp word [bp + 0x1e], byte 3
    jne short .forward10
    mov ax, word [bp + 6]
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    pop ax
    mov word [bx + queued_slot_x], ax
    mov ax, word [bp + 8]
    mov word [bx + queued_slot_y], ax
.forward10:
    jmp short .forward12
.forward11:
    mov ax, word [bp - 2]
    add ax, word [bp + 6]
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    pop ax
    mov word [bx + queued_slot_x], ax
    mov ax, word [bp - 4]
    add ax, word [bp + 8]
    mov word [bx + queued_slot_y], ax
.forward12:
    jmp short .forward14
.forward13:
    mov ax, word [bp + 6]
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    pop ax
    mov word [bx + queued_slot_x], ax
    mov ax, word [bp + 8]
    mov word [bx + queued_slot_y], ax
.forward14:
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 0x11
    imul word [render_queue_count]
    mov bx, ax
    pop ax
    mov byte [bx + queued_slot_glyph_entry], al
    mov al, byte [bp + 0xc]
    mov byte [bx + queued_slot_parameter_1], al
    mov al, byte [bp + 0xe]
    mov byte [bx + queued_slot_parameter_2], al
    mov al, byte [bp + 0x10]
    mov byte [bx + queued_slot_parameter_3], al
    mov ax, word [bp + 0x12]
    mov word [bx + queued_slot_parameter_4], ax
    mov ax, word [bp + 0x14]
    mov word [bx + queued_slot_parameter_5], ax
    mov al, byte [bp + 0x16]
    mov byte [bx + queued_slot_depth], al
    mov al, byte [bp + 0x1a]
    mov byte [bx + queued_slot_glyph_column], al
    mov al, byte [bp + 0x1c]
    mov byte [bx + queued_slot_parameter_13], al
    inc word [render_queue_count]
    mov ax, word [render_queue_count]
    cmp ax, strict word 0x78
    jl short .return1
.back1:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
    jmp short .back1
.return1:
    ret
