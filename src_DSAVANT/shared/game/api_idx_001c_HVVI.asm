; auto-generated
api_idx_001c_HVVI:
    mov ax, 0xffe4
    call aztec_csav
    mov ax, word [bp + 0x6]
    mov word [bp - 0x000c], ax
    mov ax, word [bp + 0x8]
    mov word [bp - 0x000a], ax
    mov word [bp - 0x0008], 0
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x001c], 0
    mov word [bp - 0x001a], 5
    mov word [bp - 0x0018], 3
    mov word [bp - 0x0016], 4
    mov word [bp - 0x0014], 0
    mov word [bp - 0x0012], 0
    mov word [bp - 0x0010], 1
    mov word [bp - 0x000e], 2
    mov word [bp - 0x0002], 0
@..api_idx_001c_HVVI.l1:
    cmp word [bp - 0x0002], byte 2
    jne short @..api_idx_001c_HVVI.l2
    jmp near @..api_idx_001c_HVVI.l4
@..api_idx_001c_HVVI.l2:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x001c]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x001a]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 6
    cwd
    idiv cx
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x000c]
    add ax, cx
    dec ax
    dec ax
    dec ax
    mov word [bx - 0x000c], ax
    cmp word [bx - 0x000c], byte 1
    jge short @..api_idx_001c_HVVI.l3
    mov word [bx - 0x000c], 1
@..api_idx_001c_HVVI.l3:
    mov ax, word [bx - 0x000c]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov cx, word [bx - 0x000c]
    sub cx, ax
    mov ax, cx
    inc ax
    push ax
    call random_below
    pop cx
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx + slot_value], cx
@..api_idx_001c_HVVI.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short @..api_idx_001c_HVVI.l5
    jmp near @..api_idx_001c_HVVI.l1
@..api_idx_001c_HVVI.l5:
    mov word [api_idx_001c_HVVI.bss1], 0
    mov ax, word [dseg_0040]
    mov word [bp - 0x0002], ax
    jmp short @..api_idx_001c_HVVI.l8
@..api_idx_001c_HVVI.l6:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0
    jbe short @..api_idx_001c_HVVI.l7
    mov ax, 2
    push ax
    call random_below
    pop cx
    add ax, word [api_idx_001c_HVVI.bss1]
    inc ax
    mov word [api_idx_001c_HVVI.bss1], ax
@..api_idx_001c_HVVI.l7:
    inc word [bp - 0x0002]
@..api_idx_001c_HVVI.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [dseg_0042]
    jle short @..api_idx_001c_HVVI.l6
    ret
