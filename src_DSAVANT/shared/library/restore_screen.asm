; auto-generated
restore_screen:
    push bp
    mov bp, sp
    sub sp, byte 0xe
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    cmp word [bp + 0xe], byte 3
    jne short .forward1
    lea bx, word [bp - 0xa]
    mov dx, bx
    mov ax, ss
    mov ds, ax
    mov cx, 0xa
    mov bx, word [bp + 0x12]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov cx, word [bp - 4]
.back1:
    push cx
    mov dx, word [bp - 2]
    add word [bp - 2], strict word 0x140
    mov cx, word [bp - 6]
    mov bx, word [bp + 0x12]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    pop cx
    loop .back1
    jmp near .forward6
.forward1:
    cmp word [bp + 0xe], byte 2
    je short .forward2
    jmp near .forward4
.forward2:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, maze_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov ds, ax
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov es, ax
    xor si, si
    lodsw
    mov word [bp - 2], ax
    lodsw
    lodsw
    mov word [bp - 4], ax
    lodsw
    mov word [bp - 6], ax
    lodsw
    lodsw
.back2:
    mov di, word [bp - 2]
    add word [bp - 2], strict word 0x140
    mov cx, word [bp - 6]
    rep movsb
    dec word [bp - 4]
    jne short .back2
    cmp word [bp + 0x10], byte 0
    je short .forward3
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, maze_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    dec word [cs:maze_block_count - IMAGE_BASE]
    call loc_PPJL
.forward3:
    jmp near .forward6
.forward4:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, ems_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, ems_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    mov word [bp - 2], ax
    mov cl, 0xa
    shr ax, cl
    mov word [cs:ems_cur_page - IMAGE_BASE], ax
    call ems_map_pages
    mov si, word [bp - 2]
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [cs:ems_frame_seg - IMAGE_BASE]
    mov ds, ax
    lodsw
    mov word [bp - 2], ax
    lodsw
    lodsw
    mov word [bp - 4], ax
    lodsw
    mov word [bp - 6], ax
    lodsw
    lodsw
.back3:
    mov di, word [bp - 2]
    add word [bp - 2], strict word 0x140
    mov cx, word [bp - 6]
    rep movsb
    test si, 0xc000
    je short .forward5
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
    and si, strict word 0x3fff
.forward5:
    dec word [bp - 4]
    jne short .back3
    cmp word [bp + 0x10], byte 0
    je short .forward6
    mov cx, word [cs:ems_block_count - IMAGE_BASE]
    dec cx
    mov word [cs:ems_block_count - IMAGE_BASE], cx
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov bx, ems_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_MIUO
    call loc_KLNH
.forward6:
    pop si
    pop di
    pop ds
    pop es
    mov sp, bp
    pop bp
    ret
