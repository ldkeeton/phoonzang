; auto-generated
queue_marker_overlay:
    mov ax, 0xfff2
    call aztec_csav
    cmp word [marker_mode], byte 0
    jg short @..queue_marker_overlay.l1
    jmp near @..queue_marker_overlay.l8
@..queue_marker_overlay.l1:
    mov ax, word [party_tag]
    mov cx, word [marker_mode]
    dec cx
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp short @..queue_marker_overlay.l6
@..queue_marker_overlay.l2:
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short @..queue_marker_overlay.l3
    mov ax, 4
@..queue_marker_overlay.l3:
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short @..queue_marker_overlay.l7
@..queue_marker_overlay.l4:
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..queue_marker_overlay.l5
    mov ax, 1
@..queue_marker_overlay.l5:
    mov word [bp - 0x0004], ax
    jmp short @..queue_marker_overlay.l7
@..queue_marker_overlay.l6:
    cmp ax, strict word 0
    je short @..queue_marker_overlay.l2
    cmp ax, strict word 1
    je short @..queue_marker_overlay.l4
    cmp ax, strict word 2
    je short @..queue_marker_overlay.l2
    cmp ax, strict word 3
    je short @..queue_marker_overlay.l4
@..queue_marker_overlay.l7:
    lea ax, word [bp - 0x000e]
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [bp - 0x000e]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + glyph_y_table]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov ax, bx
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + glyph_x_table]
    sub ah, ah
    inc ax
    push ax
    mov ax, 3
    push ax
    mov ax, 0x1b
    push ax
    call add_overlay_item
    add sp, byte 0x12
@..queue_marker_overlay.l8:
    cmp word [marker_mode], byte 0xff
    jne short @..queue_marker_overlay.l9
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 0
    lea ax, word [bp - 0x000e]
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [marker_y]
    sub ah, ah
    push ax
    mov al, byte [marker_x]
    sub ah, ah
    push ax
    mov ax, 0xc
    push ax
    mov ax, 0x1c
    push ax
    call add_overlay_item
    add sp, byte 0x12
@..queue_marker_overlay.l9:
    ret
