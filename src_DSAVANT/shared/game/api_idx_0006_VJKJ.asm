; auto-generated
api_idx_0006_VJKJ:
    mov ax, 0xfffa
    call aztec_csav
    mov word [bp - 0x0002], 0
@..api_idx_0006_VJKJ.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.prev], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_cap]
    push ax
    mov al, byte [bx + party_records + pc_rec.power_floor]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..api_idx_0006_VJKJ.l2
    mov ax, cx
    jmp short @..api_idx_0006_VJKJ.l3
@..api_idx_0006_VJKJ.l2:
    mov ax, word [bx + party_records + pc_rec.power_cap]
@..api_idx_0006_VJKJ.l3:
    mov word [bp - 0x0006], ax
    mov ax, 0x10
    cmp word [bp - 0x0006], byte 0x10
    jg short @..api_idx_0006_VJKJ.l4
    mov ax, word [bp - 0x0006]
    dec ax
@..api_idx_0006_VJKJ.l4:
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    cbw
    add ax, strict word 0xffd0
    imul word [bp - 0x0006]
    push ax
    mov bx, word [bp + 0x6]
    mov al, byte [bx + si]
    cbw
    mov cx, ax
    shl ax, 1
    shl ax, 1
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0xfefc
    mov word [bp - 0x0004], ax
    push ax
    push si
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call loc_NJOH
    add sp, byte 8
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xe
    jge short @..api_idx_0006_VJKJ.l5
    jmp near @..api_idx_0006_VJKJ.l1
@..api_idx_0006_VJKJ.l5:
    ret
