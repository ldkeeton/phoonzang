; auto-generated
api_idx_0006_LJUS:
    mov ax, 0xfffa
    call aztec_csav
    mov ax, word [bss_845e]
    jmp near .forward5
.back1:
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call call_show_area
    add sp, byte 8
    jmp near .forward9
.back2:
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
    mov ax, word [screen_cache_index]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [screen_cache_index], dx
.forward3:
    mov ax, 0
    push ax
    push ax
    mov ax, word [screen_cache_index]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + screen_cache_0_seg]
    push word [bx + screen_cache]
    call call_restore_screen
    add sp, byte 8
    mov word [bp - 2], 0
.back3:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + overlay_list + 0x2]
    mov byte [bx + overlay_list_rec.f_0014], 0xff
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 0xc
    jl short .back3
    mov word [overlay_list], 0
    jmp near .forward9
.back4:
    call loc_KRMP
    mov word [bp - 6], ax
    mov word [bp - 2], 0
.back5:
    mov word [bp - 4], 0
.back6:
    push word [bp - 6]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 6
    imul word [bp - 2]
    mov cx, word [bp - 4]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x580]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push word [bp - 4]
    push word [bp - 2]
    call queue_cell_action_overlay
    add sp, byte 0xe
    inc word [bp - 4]
    mov ax, word [bp - 4]
    cmp ax, strict word 3
    jl short .back6
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 3
    jl short .back5
    call queue_marker_overlay
    cmp word [bp - 6], byte 0
    je short .forward4
    mov ax, word [party_status_frame]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [party_status_frame], dx
.forward4:
    call draw_party_status_glyphs
    jmp short .forward9
.back7:
    push word [bss_845e]
    call loc_SSIO
    pop cx
    jmp short .forward9
.forward5:
    cmp ax, strict word 0xfffd
    jne short .forward6
    jmp near .back1
.forward6:
    cmp ax, strict word 0xfffe
    jne short .forward7
    jmp near .back2
.forward7:
    cmp ax, strict word 0xffff
    jne short .forward8
    jmp near .back4
.forward8:
    jmp short .back7
.forward9:
    inc word [bss_845e]
    mov ax, word [bss_845e]
    cmp ax, strict word 0xc
    jne short .return1
    mov word [bss_845e], 0xfffd
.return1:
    ret
