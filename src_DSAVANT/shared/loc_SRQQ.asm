; auto-generated
loc_SRQQ:
    mov ax, 0
    call aztec_csav
    les bx, word [dseg_0002]
    mov ax, word [es:bx]
    mov dx, word [es:bx + 0x2]
    mov word [bss_9090], dx
    mov word [bss_908e], ax
    mov ax, word [bss_908e]
    mov dx, word [bss_9090]
    sub ax, word [bss_908a]
    sbb dx, word [bss_908c]
    mov word [bss_9094], dx
    mov word [bss_9092], ax
    mov ax, word [loc_SRQQ.bss1]
    cwd
    mov cx, ax
    mov bx, dx
    mov ax, word [bss_9092]
    mov dx, word [bss_9094]
    cmp bx, dx
    jg short @..loc_SRQQ.l1
    jne short @..loc_SRQQ.l2
    cmp cx, ax
    jbe short @..loc_SRQQ.l2
@..loc_SRQQ.l1:
    jmp short @..loc_SRQQ.l3
@..loc_SRQQ.l2:
    mov ax, word [bss_908e]
    mov dx, word [bss_9090]
    mov word [bss_908c], dx
    mov word [bss_908a], ax
    call loc_SRQQ.api_idx1
    push word [bp + 0x4]
    call loc_SRQQ.api_idx2
    pop cx
    push word [bp + 0x6]
    call api_idx_0002_TIUI
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
@..loc_SRQQ.l3:
    ret
