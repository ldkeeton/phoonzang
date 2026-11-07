; auto-generated
log_maze_change:
    mov ax, 0xfffc
    call $csav
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 4]
    call find_maze_change
    add sp, byte 0xa
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    jne short .forward1
    mov ax, word [maze_change_count]
    mov word [bp - 2], ax
    inc word [maze_change_count]
    mov ax, word [maze_change_count]
    cmp ax, 0x200
    jl short .forward1
.back1:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
    jmp short .back1
.forward1:
    mov ax, 6
    imul word [bp - 2]
    mov cx, ax
    mov ax, word [maze_change_log]
    add ax, cx
    mov word [bp - 4], ax
    mov al, byte [bp + 4]
    mov bx, word [bp - 4]
    mov byte [bx], al
    mov al, byte [bp + 6]
    mov bx, word [bp - 4]
    mov byte [bx + 1], al
    mov ax, word [bp + 8]
    xchg ah, al
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov bx, word [bp - 4]
    mov word [bx + 2], ax
    mov ax, word [bp + 6]
    jmp short .forward2
jumptable_0457_case_0:
    mov ax, word [bp + 0xe]
    mov cx, 4
    shl ax, cl
    add ax, word [bp + 0x10]
    xchg ah, al
    sub al, al
    mov dx, word [bp + 0x12]
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0x14]
    mov bx, word [bp - 4]
    mov word [bx + 4], ax
    jmp short log_maze_change.return1
jumptable_0457_case_1:
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 4]
    mov word [bx + 4], ax
    jmp short log_maze_change.return1
jumptable_0457_case_5:
    mov ax, word [bp + 0xe]
    xchg ah, al
    sub al, al
    add ax, word [bp + 0x10]
    mov bx, word [bp - 4]
    mov word [bx + 4], ax
    jmp short log_maze_change.return1
jumptable_0457_case_6:
    mov ax, word [bp + 8]
    mov bx, word [bp - 4]
    mov word [bx + 2], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp - 4]
    mov word [bx + 4], ax
    jmp short log_maze_change.return1
jumptable_0457:
    dw jumptable_0457_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_0457_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_0457_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_0457_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_0457_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_0457_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_0457_case_6 - IMAGE_BASE + __zres_end
log_maze_change.forward2:
    cmp ax, strict word 7
    jae short log_maze_change.return1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_0457 - IMAGE_BASE + __zres_end]
log_maze_change.return1:
    ret
