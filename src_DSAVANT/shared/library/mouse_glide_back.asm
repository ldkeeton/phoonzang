; auto-generated
mouse_glide_back:
    push bp
    mov bp, sp
    sub sp, byte 0x0a
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp byte [cs:mouse_present - IMAGE_BASE], 1
    je short @..mouse_glide_back.l1
    jmp near @..mouse_glide_back.l9
@..mouse_glide_back.l1:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov cx, word [cs:mouse_drawn_x - IMAGE_BASE]
    shl cx, 1
    mov dx, word [cs:mouse_drawn_y - IMAGE_BASE]
    mov word [bp - 0x0006], cx
    mov word [bp - 0x0008], dx
@..mouse_glide_back.l2:
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short @..mouse_glide_back.l3
    cmp dx, word [bp - 0x0004]
    jne short @..mouse_glide_back.l3
    jmp short @..mouse_glide_back.l8
@..mouse_glide_back.l3:
    cmp cx, word [bp - 0x0002]
    je short @..mouse_glide_back.l5
    js short @..mouse_glide_back.l4
    sub word [bp - 0x0006], byte 2
    jmp short @..mouse_glide_back.l5
@..mouse_glide_back.l4:
    add word [bp - 0x0006], byte 2
@..mouse_glide_back.l5:
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short @..mouse_glide_back.l7
    js short @..mouse_glide_back.l6
    sub word [bp - 0x0008], byte 1
    jmp short @..mouse_glide_back.l7
@..mouse_glide_back.l6:
    add word [bp - 0x0008], byte 1
@..mouse_glide_back.l7:
    mov dx, word [bp - 0x0008]
    mov ax, cs
    push ax
    mov ax, 0
    call draw_mouse_pointer_at
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..mouse_glide_back.l2
    push ax
    call far [cs:mouse_glide_back.cseg1 - IMAGE_BASE]
    pop ax
    jmp short @..mouse_glide_back.l2
@..mouse_glide_back.l8:
    mov cx, word [bp - 0x0002]
    mov dx, word [bp - 0x0004]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov byte [cs:mouse_glide_active - IMAGE_BASE], 0
@..mouse_glide_back.l9:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
