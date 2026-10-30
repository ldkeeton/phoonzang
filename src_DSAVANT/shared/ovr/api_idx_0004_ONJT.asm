; auto-generated
api_idx_0004_ONJT:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 2], 0
.back1:
    mov word [bp - 4], 0
.back2:
    mov ax, 0x248
    imul word [bp + 4]
    push ax
    mov ax, 0x78
    imul word [bp - 2]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 4]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + party_records + pc_rec.item_slots], byte 0
    jne short .forward1
    mov ax, word [bp - 2]
    xchg al, ah
    sub al, al
    add ax, word [bp - 4]
    ret
.forward1:
    inc word [bp - 4]
    mov ax, word [bp - 4]
    cmp ax, strict word 0xa
    jl short .back2
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 2
    jl short .back1
    mov ax, 0xffff
    ret
