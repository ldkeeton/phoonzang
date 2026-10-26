; auto-generated
add_overlay_item:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 2], 0
@..add_overlay_item.l1:
    mov ax, word [bp - 2]
    cmp ax, word [overlay_list]
    jge short @..add_overlay_item.l2
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + overlay_list + 0x2]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, word [bp + 4]
    jg short @..add_overlay_item.l2
    inc word [bp - 2]
    jmp short @..add_overlay_item.l1
@..add_overlay_item.l2:
    mov ax, word [overlay_list]
    mov word [bp - 4], ax
    jmp short @..add_overlay_item.l4
@..add_overlay_item.l3:
    mov ax, word [bp - 4]
    shl ax, 1
    mov bx, ax
    mov si, word [bx + overlay_list]
    mov di, word [bx + overlay_list + 0x2]
    mov cx, ds
    mov es, cx
    mov cx, 0xc
    rep movsw
    dec word [bp - 4]
@..add_overlay_item.l4:
    mov ax, word [bp - 4]
    cmp ax, word [bp - 2]
    jg short @..add_overlay_item.l3
    cmp word [bp - 2], byte 0xc
    jl short @..add_overlay_item.l6
@..add_overlay_item.l5:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
    jmp short @..add_overlay_item.l5
@..add_overlay_item.l6:
    mov al, byte [bp + 4]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx + overlay_list + 0x2]
    mov byte [bx + overlay_list_rec.f_0014], al
    mov al, byte [bp + 6]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx + overlay_list + 0x2]
    mov byte [bx + overlay_list_rec.f_0015], al
    mov ax, word [bp + 8]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx + overlay_list + 0x2]
    mov word [bx], ax
    mov ax, word [bp + 0xa]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx + overlay_list + 0x2]
    mov word [bx + overlay_list_rec.f_0002], ax
    mov ax, word [bp + 0xc]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx + overlay_list + 0x2]
    mov word [bx + overlay_list_rec.f_0004], ax
    mov ax, word [bp + 0xe]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx + overlay_list + 0x2]
    mov word [bx + overlay_list_rec.f_0006], ax
    mov al, byte [bp + 0x10]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx + overlay_list + 0x2]
    mov byte [bx + overlay_list_rec.f_0016], al
    mov al, byte [bp + 0x12]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov bx, word [bx + overlay_list + 0x2]
    mov byte [bx + overlay_list_rec.f_0017], al
    push word [bp + 0x14]
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + overlay_list + 0x2]
    add ax, strict word 8
    push ax
    call aztec_strcpy
    add sp, byte 4
    inc word [overlay_list]
    ret
