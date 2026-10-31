; auto-generated
roll_slot_values:
    mov ax, 0xffe4
    call aztec_csav
    mov ax, word [bp + 6]
    mov word [bp - 0xc], ax
    mov ax, word [bp + 8]
    mov word [bp - 0xa], ax
    mov word [bp - 8], 0
    mov ax, word [bp + 0xa]
    mov word [bp - 6], ax
    mov word [bp - 0x1c], 0
    mov word [bp - 0x1a], 5
    mov word [bp - 0x18], 3
    mov word [bp - 0x16], 4
    mov word [bp - 0x14], 0
    mov word [bp - 0x12], 0
    mov word [bp - 0x10], 1
    mov word [bp - 0xe], 2
    mov word [bp - 2], 0
.back1:
    cmp word [bp - 2], byte 2
    jne short .forward1
    jmp near .forward3
.forward1:
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 2]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x1c]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.stat]
    sub ah, ah
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 2]
    shl cx, 1
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0x1a]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.stat]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 6
    cwd
    idiv cx
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov cx, word [bx - 0xc]
    add ax, cx
    dec ax
    dec ax
    dec ax
    mov word [bx - 0xc], ax
    cmp word [bx - 0xc], byte 1
    jge short .forward2
    mov word [bx - 0xc], 1
.forward2:
    mov ax, word [bx - 0xc]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 4], ax
    mov cx, word [bx - 0xc]
    sub cx, ax
    mov ax, cx
    inc ax
    push ax
    call random_below
    pop cx
    mov cx, ax
    mov ax, word [bp - 4]
    add cx, ax
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    mov word [bx + slot_value], cx
.forward3:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 4
    jge short .forward4
    jmp near .back1
.forward4:
    mov word [slot_value2], 0
    mov ax, word [index_range2_first]
    mov word [bp - 2], ax
    jmp short .forward6
.back2:
    mov ax, 0x248
    imul word [bp + 4]
    add ax, word [bp - 2]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.skills], 0
    jbe short .forward5
    mov ax, 2
    push ax
    call random_below
    pop cx
    add ax, word [slot_value2]
    inc ax
    mov word [slot_value2], ax
.forward5:
    inc word [bp - 2]
.forward6:
    mov ax, word [bp - 2]
    cmp ax, word [index_range2_last]
    jle short .back2
    ret
