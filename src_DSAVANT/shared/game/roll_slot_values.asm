; auto-generated
roll_slot_values:
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
@..roll_slot_values.l1:
    cmp word [bp - 0x0002], byte 2
    jne short @..roll_slot_values.l2
    jmp near @..roll_slot_values.l4
@..roll_slot_values.l2:
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
    mov al, byte [bx + cell_key_grid + 0x130]
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
    mov al, byte [bx + cell_key_grid + 0x130]
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
    jge short @..roll_slot_values.l3
    mov word [bx - 0x000c], 1
@..roll_slot_values.l3:
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
@..roll_slot_values.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short @..roll_slot_values.l5
    jmp near @..roll_slot_values.l1
@..roll_slot_values.l5:
    mov word [slot_value2], 0
    mov ax, word [index_range2_first]
    mov word [bp - 0x0002], ax
    jmp short @..roll_slot_values.l8
@..roll_slot_values.l6:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + cell_key_grid + 0x138], 0
    jbe short @..roll_slot_values.l7
    mov ax, 2
    push ax
    call random_below
    pop cx
    add ax, word [slot_value2]
    inc ax
    mov word [slot_value2], ax
@..roll_slot_values.l7:
    inc word [bp - 0x0002]
@..roll_slot_values.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [index_range2_last]
    jle short @..roll_slot_values.l6
    ret
