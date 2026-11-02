; auto-generated
refresh_title_and_member_panel:
    mov ax, 0
    call aztec_csav
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 2]
    mov word [party_redraw_current_tick_hi], dx
    mov word [party_redraw_current_tick], ax
    mov ax, word [party_redraw_current_tick]
    mov dx, word [party_redraw_current_tick_hi]
    sub ax, word [party_redraw_last_tick]
    sbb dx, word [party_redraw_last_tick_hi]
    mov word [party_redraw_elapsed_ticks_hi], dx
    mov word [party_redraw_elapsed_ticks], ax
    mov ax, word [party_redraw_interval]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [party_redraw_elapsed_ticks]
    mov dx, word [party_redraw_elapsed_ticks_hi]
    cmp bx, dx
    jg short .forward1
    jne short .forward2
    cmp cx, ax
    jbe short .forward2
.forward1:
    jmp short .return1
.forward2:
    mov ax, word [party_redraw_current_tick]
    mov dx, word [party_redraw_current_tick_hi]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov ax, word [banner_animation_frame]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [banner_animation_frame], dx
    push dx
    call draw_title_banner
    pop cx
    mov ax, 0x41
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x5a
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, 0xffff
    push ax
    call advance_party_slot_frames
    pop cx
    push word [bp + 4]
    call draw_member_realm_points
    pop cx
    mov ax, 0xbf
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0xb8
    push ax
    call call_show_area
    add sp, byte 8
.return1:
    ret
