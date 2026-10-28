; auto-generated
loc_KRMP:
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
    mov ax, word [loc_KRMP.panel_redraw_ticks1]
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
    jmp short .forward3
.forward2:
    mov ax, word [bss_908e]
    mov dx, word [bss_9090]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov ax, 1
    ret
.forward3:
    mov ax, 0
    ret
