; auto-generated
mouse_glide_to:
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
    je short @..mouse_glide_to.l1
    jmp near @..mouse_glide_to.l8
@..mouse_glide_to.l1:
    mov byte [cs:mouse_glide_active - IMAGE_BASE], 1
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    mov ax, 3
    int 0x33 ; BIOS mouse
    and cx, strict word 0xfffe
    mov word [bp - 0x0006], cx
    mov word [bp - 0x0008], dx
@..mouse_glide_to.l2:
    mov cx, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    cmp cx, word [bp - 0x0002]
    jne short @..mouse_glide_to.l3
    cmp dx, word [bp - 0x0004]
    jne short @..mouse_glide_to.l3
    jmp short @..mouse_glide_to.l8
@..mouse_glide_to.l3:
    cmp cx, word [bp - 0x0002]
    je short @..mouse_glide_to.l5
    js short @..mouse_glide_to.l4
    sub word [bp - 0x0006], byte 2
    jmp short @..mouse_glide_to.l5
@..mouse_glide_to.l4:
    add word [bp - 0x0006], byte 2
@..mouse_glide_to.l5:
    mov cx, word [bp - 0x0006]
    cmp dx, word [bp - 0x0004]
    je short @..mouse_glide_to.l7
    js short @..mouse_glide_to.l6
    sub word [bp - 0x0008], byte 1
    jmp short @..mouse_glide_to.l7
@..mouse_glide_to.l6:
    add word [bp - 0x0008], byte 1
@..mouse_glide_to.l7:
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
    je short @..mouse_glide_to.l2
    push ax
    call far [cs:mouse_glide_to.cseg1 - IMAGE_BASE]
    pop ax
    jmp short @..mouse_glide_to.l2
@..mouse_glide_to.l8:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
