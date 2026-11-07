; auto-generated
check_party_redraw_interval:
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
    jmp short .forward3
.forward2:
    mov ax, word [party_redraw_current_tick]
    mov dx, word [party_redraw_current_tick_hi]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov ax, 1
    ret
.forward3:
    mov ax, 0
    ret
