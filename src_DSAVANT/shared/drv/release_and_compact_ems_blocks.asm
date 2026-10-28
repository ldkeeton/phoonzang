; auto-generated
release_and_compact_ems_blocks:
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, ems_blocks - IMAGE_BASE
    add bx, ax
    mov word [bp - 4], bx
    mov ax, word [cs:bx + 2]
    sub word [cs:ems_paras_used - IMAGE_BASE], ax
    mov word [bp - 6], ax
.back1:
    mov bx, word [bp - 4]
    mov di, word [cs:bx]
    mov dx, word [cs:ems_frame_seg - IMAGE_BASE]
    mov es, dx
    mov ds, dx
    mov si, word [cs:bx + 4]
    add dx, word [cs:maze_mem_seg - IMAGE_BASE]
    mov cx, word [cs:bx + 6]
    or cx, cx
    jne short .forward1
    jmp near .forward6
.forward1:
    push cx
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:release_and_compact_ems_blocks.cseg1 - IMAGE_BASE], ax
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:release_and_compact_ems_blocks.cseg2 - IMAGE_BASE], ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    call leaf_loc_TPOL
    pop cx
.back2:
    push cx
    mov cx, 0x10
    rep movsb
    xor dx, dx
    cmp di, strict word 0x4000
    jne short .forward2
    inc word [cs:release_and_compact_ems_blocks.cseg2 - IMAGE_BASE]
    inc dx
.forward2:
    cmp si, strict word 0x4000
    je short .forward3
    cmp si, strict word 0x8000
    jne short .forward4
.forward3:
    inc word [cs:release_and_compact_ems_blocks.cseg1 - IMAGE_BASE]
    inc dx
.forward4:
    or dx, dx
    je short .forward5
    call leaf_loc_TPOL
.forward5:
    pop cx
    loop .back2
    mov bx, word [bp - 4]
    mov cx, word [bp - 6]
    mov ax, word [cs:bx + 4]
    sub ax, cx
    mov word [cs:bx], ax
    add ax, word [cs:bx + 6]
    mov word [cs:bx + 4], ax
    mov ax, word [cs:bx + 6]
    mov word [cs:bx + 2], ax
    add bx, byte 4
    mov word [bp - 4], bx
    jmp near .back1
.forward6:
    mov bx, word [bp - 4]
    xor ax, ax
    mov word [cs:bx], ax
    mov word [cs:bx + 2], ax
    ret
