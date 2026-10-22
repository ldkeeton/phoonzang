; auto-generated
cache_maze:
    push bp
    mov bp, sp
    sub sp, byte 0x14
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    test ah, 0x80
    je short @..cache_maze.l1
    dec word [cs:ems_block_count - IMAGE_BASE]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, cseg_01c3 - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_MIUO
    call loc_KLNH
    jmp near cache_maze_restore_and_return
@..cache_maze.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..cache_maze.l2
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call dos_file_loc_MUHV
    jmp near cache_maze_restore_and_return
@..cache_maze.l2:
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, cseg_01c3 - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..cache_maze.l3
    jmp near cache_maze_slot_in_use
@..cache_maze.l3:
    inc word [cs:ems_block_count - IMAGE_BASE]
    mov ax, word [cs:ems_block_count - IMAGE_BASE]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, ems_blocks - IMAGE_BASE
    add bx, ax
    mov word [bp - 0x0002], bx
    mov ax, word [cs:ems_paras_used - IMAGE_BASE]
    mov word [cs:bx], ax
    mov ax, word [cs:scratch_buf_seg - IMAGE_BASE]
    mov ds, ax
    xor dx, dx
    mov cx, 0x1000
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    int 0x21 ; DOS read file (handle)
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, ax
    sub bx, byte 6
    mov cl, byte [bx + 0x5]
    mov al, byte [bx + 0x4]
    mul cl
    mov cl, 3
    shl ax, cl
    mov cx, word [bx + 0x2]
    add ax, cx
    push ax
    xor dx, dx
    mov ax, word [bx]
    mov cx, 0x10
    mul cx
    pop cx
    add cx, byte 0x0f
    add ax, cx
    adc dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov cx, 0x10
    div cx
    mov di, word [cs:ems_paras_used - IMAGE_BASE]
    mov bx, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    add word [cs:ems_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:ems_paras_used - IMAGE_BASE]
    cmp ax, word [cs:ems_para_limit - IMAGE_BASE]
    jbe short @..cache_maze.l4
    jmp near cache_maze.dos_con_loc1
@..cache_maze.l4:
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:ems_cur_page - IMAGE_BASE], ax
    call ems_map_pages
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    xor si, si
    mov ax, word [cs:scratch_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov ax, word [cs:ems_frame_seg - IMAGE_BASE]
    mov es, ax
    mov cx, 0x1000
    rep movsb
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    sub ax, 0x1000
    sbb dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
@..cache_maze.l5:
    mov dx, di
    test dx, 0xc000
    je short @..cache_maze.l6
    sub di, strict word 0x4000
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
@..cache_maze.l6:
    mov ax, word [bp - 0x0006]
    mov dx, word [bp - 0x0008]
    or ax, dx
    je short cache_maze_restore_and_return
    mov cx, 0x1000
    mov ax, word [bp - 0x0006]
    or dx, dx
    jne short @..cache_maze.l7
    cmp ax, cx
    jae short @..cache_maze.l7
    mov cx, ax
@..cache_maze.l7:
    sub ax, cx
    sbb dx, byte 0
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], dx
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21 ; DOS read file (handle)
    pop cx
    mov si, 0
    rep movsb
    jmp short @..cache_maze.l5
