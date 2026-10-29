; auto-generated
party_redraw_interval_elapsed:
    mov ax, 0
    call aztec_csav
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 2]
    sub ax, word [party_redraw_last_tick]
    sbb dx, word [party_redraw_last_tick_hi]
    push ax
    push dx
    mov ax, word [party_redraw_interval]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short .forward1
    jne short .forward2
    cmp ax, cx
    jae short .forward2
.forward1:
    jmp short .forward3
.forward2:
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 2]
    mov word [party_redraw_last_tick_hi], dx
    mov word [party_redraw_last_tick], ax
    mov ax, 1
    ret
.forward3:
    mov ax, 0
    ret
