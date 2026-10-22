; auto-generated
log_maze_change:
    mov ax, 0xfffc
    call aztec_csav
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0006_POPS
    add sp, byte 0x0a
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..log_maze_change.l2
    mov ax, word [bss_590e]
    mov word [bp - 0x0002], ax
    inc word [bss_590e]
    mov ax, word [bss_590e]
    cmp ax, 0x200
    jl short @..log_maze_change.l2
@..log_maze_change.l1:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
    jmp short @..log_maze_change.l1
@..log_maze_change.l2:
    mov ax, 6
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bss_0e10]
    add ax, cx
    mov word [bp - 0x0004], ax
    mov al, byte [bp + 0x4]
    mov bx, word [bp - 0x0004]
    mov byte [bx], al
    mov al, byte [bp + 0x6]
    mov bx, word [bp - 0x0004]
    mov byte [bx + 0x1], al
    mov ax, word [bp + 0x8]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0x6]
    jmp short @..log_maze_change.l3
log_maze_change.jumptable_case1:
    mov ax, word [bp + 0xe]
    mov cx, 4
    shl ax, cl
    add ax, word [bp + 0x10]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0x12]
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0x14]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..log_maze_change.l4
log_maze_change.jumptable_case2:
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..log_maze_change.l4
log_maze_change.jumptable_case3:
    mov ax, word [bp + 0xe]
    xchg al, ah
    sub al, al
    add ax, word [bp + 0x10]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..log_maze_change.l4
log_maze_change.jumptable_case4:
    mov ax, word [bp + 0x8]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x2], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 0x0004]
    mov word [bx + 0x4], ax
    jmp short @..log_maze_change.l4
log_maze_change.jumptable1:
    dw log_maze_change.jumptable_case1 - IMAGE_BASE + __zres_end
    dw log_maze_change.jumptable_case2 - IMAGE_BASE + __zres_end
    dw log_maze_change.jumptable_case2 - IMAGE_BASE + __zres_end
    dw log_maze_change.jumptable_case2 - IMAGE_BASE + __zres_end
    dw log_maze_change.jumptable_case2 - IMAGE_BASE + __zres_end
    dw log_maze_change.jumptable_case3 - IMAGE_BASE + __zres_end
    dw log_maze_change.jumptable_case4 - IMAGE_BASE + __zres_end
@..log_maze_change.l3:
    cmp ax, strict word 7
    jae short @..log_maze_change.l4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + log_maze_change.jumptable1 - IMAGE_BASE + __zres_end]
@..log_maze_change.l4:
    ret
