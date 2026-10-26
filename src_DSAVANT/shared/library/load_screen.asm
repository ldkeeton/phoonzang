; auto-generated
load_screen:
    push bp
    mov bp, sp
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    cmp ax, strict word 2
    je short .forward2
    cmp ax, strict word 1
    je short .forward1
    jmp near .forward3
.forward1:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, screen_maze_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    mov bx, word [cs:maze_mem_seg - IMAGE_BASE]
    add bx, ax
    mov ds, bx
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov es, ax
    xor di, di
    xor si, si
    mov cx, 0xfa00
    rep movsb
    jmp short .forward4
.forward2:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, screen_ems_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, ems_blocks - IMAGE_BASE
    add bx, ax
    mov si, word [cs:bx]
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:ems_cur_page - IMAGE_BASE], ax
    call ems_map_pages
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov bx, word [cs:ems_frame_seg - IMAGE_BASE]
    mov ds, bx
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov es, ax
    xor di, di
    mov cx, 3
.back1:
    push cx
    mov cx, 0x4000
    rep movsb
    and si, strict word 0x3fff
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
    pop cx
    loop .back1
    mov cx, 0x3a00
    rep movsb
    jmp short .forward4
.forward3:
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    xor dx, dx
    mov bx, word [bp + 0xc]
    mov cx, 0xfa00
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
.forward4:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
