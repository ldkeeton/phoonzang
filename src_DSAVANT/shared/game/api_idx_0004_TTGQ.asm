; auto-generated
api_idx_0004_TTGQ:
    mov ax, 0xfffc
    call aztec_csav
    call flush_keyboard
    mov ax, word [bp + 4]
    cwd
    les bx, word [tick_counter_ptr]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 2]
    add ax, cx
    adc dx, bx
    mov word [bp - 2], dx
    mov word [bp - 4], ax
.back1:
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 2]
    cmp dx, word [bp - 2]
    jg short .forward1
    jne short .forward2
    cmp ax, word [bp - 4]
    jb short .forward2
.forward1:
    jmp short .return1
.forward2:
    call poll_fullscreen_hotspot
    test ax, ax
    je short .forward3
    ret
.forward3:
    call api_idx_0004_TTGQ.loc1
    jmp short .back1
.return1:
    ret
