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
    jg short @..loc_KRMP.l1
    jne short @..loc_KRMP.l2
    cmp cx, ax
    jbe short @..loc_KRMP.l2
@..loc_KRMP.l1:
    jmp short @..loc_KRMP.l3
@..loc_KRMP.l2:
    mov ax, word [bss_908e]
    mov dx, word [bss_9090]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov ax, 1
    ret
@..loc_KRMP.l3:
    mov ax, 0
    ret
