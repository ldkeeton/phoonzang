; auto-generated
api_idx_0012_PGSL:
    mov ax, 0xffee
    call aztec_csav
    mov word [bp - 0x000e], 0
    mov word [bp - 0x000c], 0
    mov word [bp - 0x000a], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + member_state + 0xd]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx + member_state + 0xe]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 9
    mov ax, word [bx + pc_records + 0x4]
    mov bx, 0x64
    imul bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + pc_records + 0x6]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call aztec_ldv
    mov word [bp - 0x0010], dx
    mov word [bp - 0x0012], ax
    cmp dx, byte 0
    jg short @..api_idx_0012_PGSL.l1
    jne short @..api_idx_0012_PGSL.l2
    cmp ax, strict word 0x32
    jbe short @..api_idx_0012_PGSL.l2
@..api_idx_0012_PGSL.l1:
    jmp short @..api_idx_0012_PGSL.l3
@..api_idx_0012_PGSL.l2:
    jmp near @..api_idx_0012_PGSL.l17
@..api_idx_0012_PGSL.l3:
    cmp dx, byte 0
    jg short @..api_idx_0012_PGSL.l4
    jne short @..api_idx_0012_PGSL.l5
    cmp ax, strict word 0x42
    jbe short @..api_idx_0012_PGSL.l5
@..api_idx_0012_PGSL.l4:
    jmp short @..api_idx_0012_PGSL.l8
@..api_idx_0012_PGSL.l5:
    mov word [bp - 0x000c], 5
    mov word [bp - 0x000a], 0xa
    cmp word [bp - 0x0008], byte 3
    jle short @..api_idx_0012_PGSL.l6
    mov word [bp - 0x0008], 3
@..api_idx_0012_PGSL.l6:
    cmp word [bp - 0x0006], byte 3
    jle short @..api_idx_0012_PGSL.l7
    mov word [bp - 0x0006], 3
@..api_idx_0012_PGSL.l7:
    jmp near @..api_idx_0012_PGSL.l17
@..api_idx_0012_PGSL.l8:
    cmp dx, byte 0
    jg short @..api_idx_0012_PGSL.l9
    jne short @..api_idx_0012_PGSL.l10
    cmp ax, strict word 0x4b
    jbe short @..api_idx_0012_PGSL.l10
@..api_idx_0012_PGSL.l9:
    jmp short @..api_idx_0012_PGSL.l13
@..api_idx_0012_PGSL.l10:
    mov word [bp - 0x000e], 1
    mov word [bp - 0x000c], 0xa
    mov word [bp - 0x000a], 0x14
    cmp word [bp - 0x0008], byte 2
    jle short @..api_idx_0012_PGSL.l11
    mov word [bp - 0x0008], 2
@..api_idx_0012_PGSL.l11:
    cmp word [bp - 0x0006], byte 2
    jle short @..api_idx_0012_PGSL.l12
    mov word [bp - 0x0006], 2
@..api_idx_0012_PGSL.l12:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + pc_records + 0x2]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x83
    jmp short @..api_idx_0012_PGSL.l17
@..api_idx_0012_PGSL.l13:
    cmp word [bp - 0x0010], byte 0
    jg short @..api_idx_0012_PGSL.l14
    jne short @..api_idx_0012_PGSL.l15
    cmp word [bp - 0x0012], byte 0x5a
    jbe short @..api_idx_0012_PGSL.l15
@..api_idx_0012_PGSL.l14:
    jmp short @..api_idx_0012_PGSL.l16
@..api_idx_0012_PGSL.l15:
    mov word [bp - 0x000e], 2
    mov word [bp - 0x000c], 0x14
    mov word [bp - 0x000a], 0x28
    mov word [bp - 0x0008], 1
    mov word [bp - 0x0006], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + pc_records + 0x2]
    mov cx, 0x32
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x54
    jmp short @..api_idx_0012_PGSL.l17
@..api_idx_0012_PGSL.l16:
    mov word [bp - 0x000e], 4
    mov word [bp - 0x000c], 0x28
    mov word [bp - 0x000a], 0x50
    mov word [bp - 0x0008], 1
    mov word [bp - 0x0006], 1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + pc_records + 0x2]
    mov cx, 0x19
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0x16
@..api_idx_0012_PGSL.l17:
    lea si, word [bp - 0x000e]
    mov di, window_record
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov ax, window_record
    ret
