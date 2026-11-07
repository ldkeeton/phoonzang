; auto-generated
periodic_party_redraw:
    mov ax, 0
    call $csav
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
    call draw_marker_glyph
    push word [bp + 4]
    call draw_realm_spell_points
    pop cx
    push word [bp + 6]
    call advance_party_slot_frames
    pop cx
    mov ax, 1
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call draw_party_slot_letters
    add sp, byte 6
    mov ax, 0xc5
    push ax
    mov ax, 0x93
    push ax
    mov ax, 0x73
    push ax
    mov ax, 0x32
    push ax
    call call_show_area
    add sp, byte 8
.return1:
    ret
