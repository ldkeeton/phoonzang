; auto-generated
mouse_glide_to:
    push bp
    mov bp, sp
    sub sp, byte 0xa
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    cmp byte [cs:mouse_present - IMAGE_BASE], 1
    je short .forward1
    jmp near .forward7
.forward1:
    mov byte [cs:mouse_glide_active - IMAGE_BASE], 1
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov word [bp - 2], ax
    mov ax, word [bp + 0xe]
    mov word [bp - 4], ax
    mov ax, 3
    int 0x33 ; BIOS mouse
    and cx, strict word 0xfffe
    mov word [bp - 6], cx
    mov word [bp - 8], dx
.back1:
    mov cx, word [bp - 6]
    mov dx, word [bp - 8]
    cmp cx, word [bp - 2]
    jne short .forward2
    cmp dx, word [bp - 4]
    jne short .forward2
    jmp short .forward7
.forward2:
    cmp cx, word [bp - 2]
    je short .forward4
    js short .forward3
    sub word [bp - 6], byte 2
    jmp short .forward4
.forward3:
    add word [bp - 6], byte 2
.forward4:
    mov cx, word [bp - 6]
    cmp dx, word [bp - 4]
    je short .forward6
    js short .forward5
    sub word [bp - 8], byte 1
    jmp short .forward6
.forward5:
    add word [bp - 8], byte 1
.forward6:
    mov dx, word [bp - 8]
    mov ax, cs
    push ax
    mov ax, 0
    call draw_mouse_pointer_at
    mov cx, word [bp - 6]
    mov dx, word [bp - 8]
    mov ax, 4
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]
    or ax, ax
    je short .back1
    push ax
    call far [cs:delay_hook - IMAGE_BASE]
    pop ax
    jmp short .back1
.forward7:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
