; auto-generated
loc_KLNH:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, cseg_01eb - IMAGE_BASE
    add bx, ax
    mov word [bp - 0x0004], bx
    mov ax, word [cs:bx + 0x2]
    sub word [cs:cseg_0291 - IMAGE_BASE], ax
    mov word [bp - 0x0006], ax
@..loc_KLNH.l1:
    mov bx, word [bp - 0x0004]
    mov di, word [cs:bx]
    mov dx, word [cs:cseg_0103 - IMAGE_BASE]
    mov es, dx
    mov ds, dx
    mov si, word [cs:bx + 0x4]
    add dx, word [cs:cseg_00e1 - IMAGE_BASE]
    mov cx, word [cs:bx + 0x6]
    or cx, cx
    jne short @..loc_KLNH.l2
    jmp near @..loc_KLNH.l8
@..loc_KLNH.l2:
    push cx
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:loc_KLNH.cseg1 - IMAGE_BASE], ax
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:loc_KLNH.cseg2 - IMAGE_BASE], ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    call loc_KLNH.leaf_loc1
    pop cx
@..loc_KLNH.l3:
    push cx
    mov cx, 0x10
    rep movsb
    xor dx, dx
    cmp di, strict word 0x4000
    jne short @..loc_KLNH.l4
    inc word [cs:loc_KLNH.cseg2 - IMAGE_BASE]
    inc dx
@..loc_KLNH.l4:
    cmp si, strict word 0x4000
    je short @..loc_KLNH.l5
    cmp si, strict word 0x8000
    jne short @..loc_KLNH.l6
@..loc_KLNH.l5:
    inc word [cs:loc_KLNH.cseg1 - IMAGE_BASE]
    inc dx
@..loc_KLNH.l6:
    or dx, dx
    je short @..loc_KLNH.l7
    call loc_KLNH.leaf_loc1
@..loc_KLNH.l7:
    pop cx
    loop @..loc_KLNH.l3
    mov bx, word [bp - 0x0004]
    mov cx, word [bp - 0x0006]
    mov ax, word [cs:bx + 0x4]
    sub ax, cx
    mov word [cs:bx], ax
    add ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x4], ax
    mov ax, word [cs:bx + 0x6]
    mov word [cs:bx + 0x2], ax
    add bx, byte 4
    mov word [bp - 0x0004], bx
    jmp near @..loc_KLNH.l1
@..loc_KLNH.l8:
    mov bx, word [bp - 0x0004]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 0x2], ax
    ret
