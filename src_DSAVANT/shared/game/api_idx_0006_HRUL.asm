; auto-generated
api_idx_0006_HRUL:
    mov ax, 0xfffa
    call aztec_csav
    mov ax, word [bss_845e]
    jmp near @..api_idx_0006_HRUL.l12
@..api_idx_0006_HRUL.l1:
    mov ax, 0x8f
    push ax
    mov ax, 0xf7
    push ax
    mov ax, 0x20
    push ax
    mov ax, 0x48
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near @..api_idx_0006_HRUL.l16
@..api_idx_0006_HRUL.l2:
    les bx, word [tick_counter_ptr]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    sub ax, word [party_redraw_last_tick]
    sbb dx, word [bss_908c]
    push ax
    push dx
    mov ax, word [api_idx_0006_HRUL.bss1]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    cmp dx, bx
    jl short @..api_idx_0006_HRUL.l3
    jne short @..api_idx_0006_HRUL.l4
    cmp ax, cx
    jae short @..api_idx_0006_HRUL.l4
@..api_idx_0006_HRUL.l3:
    jmp short @..api_idx_0006_HRUL.l5
@..api_idx_0006_HRUL.l4:
    mov ax, word [bss_906c]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bss_906c], dx
@..api_idx_0006_HRUL.l5:
    mov ax, 0
    push ax
    push ax
    mov ax, word [bss_906c]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + bss_9062]
    push word [bx + bss_9060]
    call gfx_restore_screen
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_0006_HRUL.l6:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx - 0x7b96]
    mov byte [bx + 0x14], 0xff
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xc
    jl short @..api_idx_0006_HRUL.l6
    mov word [bss_8468], 0
    jmp near @..api_idx_0006_HRUL.l16
@..api_idx_0006_HRUL.l7:
    call loc_KRMP
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
@..api_idx_0006_HRUL.l8:
    mov word [bp - 0x0004], 0
@..api_idx_0006_HRUL.l9:
    push word [bp - 0x0006]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov cx, word [bx + 0x580]
    mov ax, 0x64
    sub ax, cx
    push ax
    mov ax, 0
    push ax
    push word [bp - 0x0004]
    push word [bp - 0x0002]
    call api_idx_001c_VLRT
    add sp, byte 0x0e
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 3
    jl short @..api_idx_0006_HRUL.l9
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_0006_HRUL.l8
    call api_idx_0006_HRUL.api_idx1
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_0006_HRUL.l10
    mov ax, word [bss_82e8]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bss_82e8], dx
@..api_idx_0006_HRUL.l10:
    call ds_app_JKOJ
    jmp short @..api_idx_0006_HRUL.l16
@..api_idx_0006_HRUL.l11:
    push word [bss_845e]
    call loc_SSIO
    pop cx
    jmp short @..api_idx_0006_HRUL.l16
@..api_idx_0006_HRUL.l12:
    cmp ax, strict word 0xfffd
    jne short @..api_idx_0006_HRUL.l13
    jmp near @..api_idx_0006_HRUL.l1
@..api_idx_0006_HRUL.l13:
    cmp ax, strict word 0xfffe
    jne short @..api_idx_0006_HRUL.l14
    jmp near @..api_idx_0006_HRUL.l2
@..api_idx_0006_HRUL.l14:
    cmp ax, strict word 0xffff
    jne short @..api_idx_0006_HRUL.l15
    jmp near @..api_idx_0006_HRUL.l7
@..api_idx_0006_HRUL.l15:
    jmp short @..api_idx_0006_HRUL.l11
@..api_idx_0006_HRUL.l16:
    inc word [bss_845e]
    mov ax, word [bss_845e]
    cmp ax, strict word 0xc
    jne short @..api_idx_0006_HRUL.l17
    mov word [bss_845e], 0xfffd
@..api_idx_0006_HRUL.l17:
    ret
