; auto-generated
loc_TTSP:
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
    mov word [bss_908c], dx
    mov word [bss_908a], ax
    mov ax, word [loc_TTSP.bss2]
    inc ax
    mov cx, 3
    cwd
    idiv cx
    mov word [loc_TTSP.bss2], dx
    push dx
    call api_idx_000a_TITQ
    pop cx
    mov ax, 0x41
    push ax
    mov ax, 0x65
    push ax
    mov ax, 0x19
    push ax
    mov ax, 0x5a
    push ax
    call thunk_4
    add sp, byte 8
    mov ax, 0xffff
    push ax
    call api_idx_0002_TIUI
    pop cx
    push word [bp + 0x4]
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
    call thunk_4
    add sp, byte 8
@..loc_TTSP.l3:
    ret
