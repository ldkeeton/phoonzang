; auto-generated
api_idx_0004_LNTS:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0
    push ax
    call api_idx_0008_IMMI
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_LNTS.l4
    cmp word [bss_5910], byte 0x7f
    jl short @..api_idx_0004_LNTS.l3
    mov ax, 1
    push ax
    call api_idx_0008_IMMI
    pop cx
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_0004_LNTS.l2
@..api_idx_0004_LNTS.l1:
    mov ax, 0
    push ax
    call ds_app_IPOK
    pop cx
    jmp short @..api_idx_0004_LNTS.l1
@..api_idx_0004_LNTS.l2:
    jmp short @..api_idx_0004_LNTS.l4
@..api_idx_0004_LNTS.l3:
    mov ax, word [bss_5910]
    mov word [bp - 0x0002], ax
    inc word [bss_5910]
@..api_idx_0004_LNTS.l4:
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    mov ax, word [bss_0e0e]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [bss_830c]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x7]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [bss_8f3e]
    xchg al, ah
    sub al, al
    mov dx, word [bss_8f42]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bss_8f40]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov bx, word [bp + 0x4]
    mov ax, word [bx]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x5]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x7], al
    mov bx, word [bp + 0x4]
    mov al, byte [bx + 0x6]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x6], al
    mov ax, 1
    push ax
    mov ax, word [bss_8f3e]
    mov cx, 6
    shl ax, cl
    mov cx, word [bss_8f40]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bss_8f42]
    push ax
    mov ax, 0x8bfe
    push ax
    call set_bitmap_bit
    add sp, byte 6
    ret
