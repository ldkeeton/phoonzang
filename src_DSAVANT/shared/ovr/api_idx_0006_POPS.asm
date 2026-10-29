; auto-generated
api_idx_0006_POPS:
    mov ax, 0xfffa
    call aztec_csav
    mov ax, word [bp + 8]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov word [bp - 4], ax
    mov ax, word [runtime_buffer_3k]
    mov word [bp - 6], ax
    mov word [bp - 2], 0
    jmp short .forward4
.back1:
    mov bx, word [bp - 6]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [bp + 4]
    jne short .forward3
    mov al, byte [bx + 1]
    sub ah, ah
    cmp ax, word [bp + 6]
    jne short .forward3
    cmp word [bp + 6], byte 6
    jne short .forward2
    mov ax, word [bx + 2]
    cmp ax, word [bp + 8]
    jne short .forward1
    mov ax, word [bp - 2]
    ret
.forward1:
    jmp short .forward3
.forward2:
    mov ax, word [bx + 2]
    cmp ax, word [bp - 4]
    jne short .forward3
    mov ax, word [bp - 2]
    ret
.forward3:
    add word [bp - 6], byte 6
    inc word [bp - 2]
.forward4:
    mov ax, word [bp - 2]
    cmp ax, word [runtime_six_byte_count]
    jl short .back1
    mov ax, 0xffff
    ret
