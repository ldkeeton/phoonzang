; auto-generated
periodic_party_redraw:
    mov ax, 0
    call aztec_csav
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 2]
    mov word [bss_9090], dx
    mov word [bss_908e], ax
    mov ax, word [bss_908e]
    mov dx, word [bss_9090]
    sub ax, word [party_redraw_last_tick]
    sbb dx, word [party_redraw_last_tick_hi]
    mov word [bss_9094], dx
    mov word [bss_9092], ax
    mov ax, word [periodic_party_redraw.party_redraw_mode1]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [bss_9092]
    mov dx, word [bss_9094]
    cmp bx, dx
    jg short .forward1
    jne short .forward2
    cmp cx, ax
    jbe short .forward2
.forward1:
    jmp short .return1
.forward2:
    mov ax, word [bss_908e]
    mov dx, word [bss_9090]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    call draw_marker_glyph
    push word [bp + 4]
    call periodic_party_redraw.draw_realm_spell_points1
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
    call gfx_show_area
    add sp, byte 8
.return1:
    ret
