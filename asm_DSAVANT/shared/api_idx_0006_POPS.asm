; auto-generated
api_idx_0006_POPS:
    mov ax, 0xfffa
    call aztec_csav
    mov ax, word [bp + 0x8]
    xchg al, ah
    sub al, al
    mov dx, word [bp + 0xa]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0004], ax
    mov ax, word [bss_0e10]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0006_POPS.l5
@..api_idx_0006_POPS.l1:
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_0006_POPS.l4
    mov al, byte [bx + 0x1]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0006_POPS.l4
    cmp word [bp + 0x6], byte 6
    jne short @..api_idx_0006_POPS.l3
    mov ax, word [bx + 0x2]
    cmp ax, word [bp + 0x8]
    jne short @..api_idx_0006_POPS.l2
    mov ax, word [bp - 0x0002]
    ret
@..api_idx_0006_POPS.l2:
    jmp short @..api_idx_0006_POPS.l4
@..api_idx_0006_POPS.l3:
    mov ax, word [bx + 0x2]
    cmp ax, word [bp - 0x0004]
    jne short @..api_idx_0006_POPS.l4
    mov ax, word [bp - 0x0002]
    ret
@..api_idx_0006_POPS.l4:
    add word [bp - 0x0006], byte 6
    inc word [bp - 0x0002]
@..api_idx_0006_POPS.l5:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bss_590e]
    jl short @..api_idx_0006_POPS.l1
    mov ax, 0xffff
    ret
