; auto-generated
cache_area:
    push bp
    mov bp, sp
    sub sp, byte 0xe
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    cmp word [bp + 0x14], byte 3
    jne short .forward4
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 6], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 4], bx
    mul bx
    mov word [bp - 8], ax
    mov word [bp - 0xa], dx
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 2], ax
    lea bx, word [bp - 0xa]
    mov dx, bx
    mov ax, ss
    mov ds, ax
    mov cx, 0xa
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jae short .forward1
    jmp near cache_area_disk_error
.forward1:
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov cx, word [bp - 4]
.back1:
    push cx
    mov dx, word [bp - 2]
    add word [bp - 2], strict word 0x140
    mov cx, word [bp - 6]
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jae short .forward2
    jmp near cache_area_disk_error
.forward2:
    cmp ax, word [bp - 6]
    je short .forward3
    jmp near cache_area_disk_error
.forward3:
    pop cx
    loop .back1
    xor ax, ax
    mov dx, word [bp + 0x14]
    jmp near cache_area_restore_and_return
.forward4:
    cmp word [bp + 0x14], byte 2
    je short .forward5
    jmp near .forward8
.forward5:
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 6], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 4], bx
    mul bx
    mov word [bp - 8], ax
    mov word [bp - 0xa], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 2], ax
    add ax, word [cs:maze_paras_used - IMAGE_BASE]
    cmp ax, 0x4180
    jbe short .forward6
    jmp near cache_area_maze_mem_full
.forward6:
    mov bx, word [cs:maze_paras_used - IMAGE_BASE]
    mov word [bp - 0xe], bx
    mov word [cs:maze_paras_used - IMAGE_BASE], ax
    mov bx, maze_slots - IMAGE_BASE
    mov cx, 0x10
    xor dx, dx
.back2:
    mov ax, word [cs:bx]
    or ax, ax
    je short .forward7
    inc dx
    add bx, byte 2
    loop .back2
    jmp near cache_area_maze_slots_full
.forward7:
    mov word [bp - 0xc], dx
    mov ax, word [cs:maze_block_count - IMAGE_BASE]
    inc ax
    mov word [cs:maze_block_count - IMAGE_BASE], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [bp - 0xe]
    mov word [cs:bx], ax
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [bp - 2]
    mov word [cs:bx + 2], ax
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 2], ax
    xor di, di
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 4]
    stosw
    mov ax, word [bp - 6]
    stosw
    mov ax, word [bp - 8]
    stosw
    mov ax, word [bp - 0xa]
    stosw
.back3:
    mov si, word [bp - 2]
    add word [bp - 2], strict word 0x140
    mov cx, word [bp - 6]
    rep movsb
    dec word [bp - 4]
    jne short .back3
    mov ax, word [bp - 0xc]
    mov dx, word [bp + 0x14]
    jmp near cache_area_restore_and_return
.forward8:
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 6], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 4], bx
    mul bx
    mov word [bp - 8], ax
    mov word [bp - 0xa], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 2], ax
    add ax, word [cs:ems_paras_used - IMAGE_BASE]
    cmp ax, word [cs:ems_para_limit - IMAGE_BASE]
    jbe short .forward9
    jmp near cache_area_out_of_ems
.forward9:
    mov bx, word [cs:ems_paras_used - IMAGE_BASE]
    mov word [bp - 0xe], bx
    mov word [cs:ems_paras_used - IMAGE_BASE], ax
    mov bx, ems_slots - IMAGE_BASE
    mov cx, 0x14
    xor dx, dx
.back4:
    mov ax, word [cs:bx]
    or ax, ax
    je short .forward10
    inc dx
    add bx, byte 2
    loop .back4
    jmp near cache_area_ems_slots_full
.forward10:
    mov word [bp - 0xc], dx
    mov ax, word [cs:ems_block_count - IMAGE_BASE]
    inc ax
    mov word [cs:ems_block_count - IMAGE_BASE], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, ems_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [bp - 0xe]
    mov word [cs:bx], ax
    mov ax, word [bp - 2]
    mov word [cs:bx + 2], ax
    mov ax, word [cs:ems_frame_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [bp - 0xe]
    mov di, ax
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
    mov cl, 0xa
    shr ax, cl
    mov word [cs:ems_cur_page - IMAGE_BASE], ax
    call ems_map_pages
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 2], ax
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 4]
    stosw
    mov ax, word [bp - 6]
    stosw
    mov ax, word [bp - 8]
    stosw
    mov ax, word [bp - 0xa]
    stosw
.back5:
    mov si, word [bp - 2]
    add word [bp - 2], strict word 0x140
    mov cx, word [bp - 6]
    rep movsb
    test di, 0xc000
    je short .forward11
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
    and di, strict word 0x3fff
.forward11:
    dec word [bp - 4]
    jne short .back5
    mov ax, word [bp - 0xc]
    mov dx, word [bp + 0x14]
    jmp near cache_area_restore_and_return
