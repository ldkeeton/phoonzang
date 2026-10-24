; auto-generated
api_idx_0004_TTGQ:
    mov ax, 0xfffc
    call aztec_csav
    call flush_keyboard
    mov ax, word [bp + 0x4]
    cwd
    les bx, word [tick_counter_ptr]
    mov cx, word [es:bx]
    mov bx, word [es:bx + 0x2]
    add ax, cx
    adc dx, bx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], ax
@..api_idx_0004_TTGQ.l1:
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    cmp dx, word [bp - 0x0002]
    jg short @..api_idx_0004_TTGQ.l2
    jne short @..api_idx_0004_TTGQ.l3
    cmp ax, word [bp - 0x0004]
    jb short @..api_idx_0004_TTGQ.l3
@..api_idx_0004_TTGQ.l2:
    jmp short @..api_idx_0004_TTGQ.l5
@..api_idx_0004_TTGQ.l3:
    call poll_fullscreen_hotspot
    test ax, ax
    je short @..api_idx_0004_TTGQ.l4
    ret
@..api_idx_0004_TTGQ.l4:
    call api_idx_0004_TTGQ.loc1
    jmp short @..api_idx_0004_TTGQ.l1
@..api_idx_0004_TTGQ.l5:
    ret
