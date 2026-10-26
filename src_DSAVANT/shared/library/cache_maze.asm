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
    je short .forward1
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
.forward1:
    mov word [bp - 2], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short .forward2
    mov ax, word [bp + 0xe]
    mov word [bp - 4], ax
    call dos_file_loc_MUHV
    jmp near cache_maze_restore_and_return
.forward2:
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, cseg_01c3 - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short .forward3
    jmp near cache_maze_slot_in_use
.forward3:
    inc word [cs:ems_block_count - IMAGE_BASE]
    mov ax, word [cs:ems_block_count - IMAGE_BASE]
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, ems_blocks - IMAGE_BASE
    add bx, ax
    mov word [bp - 2], bx
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
    mov cl, byte [bx + 5]
    mov al, byte [bx + 4]
    mul cl
    mov cl, 3
    shl ax, cl
    mov cx, word [bx + 2]
    add ax, cx
    push ax
    xor dx, dx
    mov ax, word [bx]
    mov cx, 0x10
    mul cx
    pop cx
    add cx, byte 0xf
    add ax, cx
    adc dx, byte 0
    mov word [bp - 6], ax
    mov word [bp - 8], dx
    mov cx, 0x10
    div cx
    mov di, word [cs:ems_paras_used - IMAGE_BASE]
    mov bx, word [bp - 2]
    mov word [cs:bx + 2], ax
    add word [cs:ems_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:ems_paras_used - IMAGE_BASE]
    cmp ax, word [cs:ems_para_limit - IMAGE_BASE]
    jbe short .forward4
    jmp near cache_maze.dos_con_loc1
.forward4:
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
    mov ax, word [bp - 6]
    mov dx, word [bp - 8]
    sub ax, 0x1000
    sbb dx, byte 0
    mov word [bp - 6], ax
    mov word [bp - 8], dx
.back1:
    mov dx, di
    test dx, 0xc000
    je short .forward5
    sub di, strict word 0x4000
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
.forward5:
    mov ax, word [bp - 6]
    mov dx, word [bp - 8]
    or ax, dx
    je short cache_maze_restore_and_return
    mov cx, 0x1000
    mov ax, word [bp - 6]
    or dx, dx
    jne short .forward6
    cmp ax, cx
    jae short .forward6
    mov cx, ax
.forward6:
    sub ax, cx
    sbb dx, byte 0
    mov word [bp - 6], ax
    mov word [bp - 8], dx
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21 ; DOS read file (handle)
    pop cx
    mov si, 0
    rep movsb
    jmp short .back1
