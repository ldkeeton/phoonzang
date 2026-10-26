; auto-generated
loc_TTSP:
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
    mov ax, word [loc_TTSP.bss1]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [bss_9092]
    mov dx, word [bss_9094]
    cmp bx, dx
    jg short @..loc_TTSP.l1
    jne short @..loc_TTSP.l2
    cmp cx, ax
    jbe short @..loc_TTSP.l2
@..loc_TTSP.l1:
    jmp short @..loc_TTSP.l3
@..loc_TTSP.l2:
    mov ax, word [bss_908e]
    mov dx, word [bss_9090]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov ax, word [loc_TTSP.bss2]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [loc_TTSP.bss2], dx
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
    call gfx_show_area
    add sp, byte 8
    mov ax, 0xffff
    push ax
    call advance_party_slot_frames
    pop cx
    push word [bp + 4]
    call api_idx_0004_RMVO
    pop cx
    mov ax, 0xbf
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x7e
    push ax
    mov ax, 0xb8
    push ax
    call gfx_show_area
    add sp, byte 8
@..loc_TTSP.l3:
    ret
