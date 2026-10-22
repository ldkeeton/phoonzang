; auto-generated
cache_area:
    push bp
    mov bp, sp
    sub sp, byte 0x0e
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    cmp word [bp + 0x14], byte 3
    jne short @..cache_area.l5
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    lea bx, word [bp - 0x000a]
    mov dx, bx
    mov ax, ss
    mov ds, ax
    mov cx, 0xa
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jae short @..cache_area.l1
    jmp near cache_area_disk_error
@..cache_area.l1:
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov cx, word [bp - 0x0004]
@..cache_area.l2:
    push cx
    mov dx, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    mov bx, word [bp + 0x16]
    mov ah, 0x40
    int 0x21 ; DOS write file (handle)
    jae short @..cache_area.l3
    jmp near cache_area_disk_error
@..cache_area.l3:
    cmp ax, word [bp - 0x0006]
    je short @..cache_area.l4
    jmp near cache_area_disk_error
@..cache_area.l4:
    pop cx
    loop @..cache_area.l2
    xor ax, ax
    mov dx, word [bp + 0x14]
    jmp near cache_area_restore_and_return
@..cache_area.l5:
    cmp word [bp + 0x14], byte 2
    je short @..cache_area.l6
    jmp near @..cache_area.l11
@..cache_area.l6:
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0x0002], ax
    add ax, word [cs:maze_paras_used - IMAGE_BASE]
    cmp ax, 0x4180
    jbe short @..cache_area.l7
    jmp near cache_area_maze_mem_full
@..cache_area.l7:
    mov bx, word [cs:maze_paras_used - IMAGE_BASE]
    mov word [bp - 0x000e], bx
    mov word [cs:maze_paras_used - IMAGE_BASE], ax
    mov bx, maze_slots - IMAGE_BASE
    mov cx, 0x10
    xor dx, dx
@..cache_area.l8:
    mov ax, word [cs:bx]
    or ax, ax
    je short @..cache_area.l9
    inc dx
    add bx, byte 2
    loop @..cache_area.l8
    jmp near cache_area_maze_slots_full
@..cache_area.l9:
    mov word [bp - 0x000c], dx
    mov ax, word [cs:maze_block_count - IMAGE_BASE]
    inc ax
    mov word [cs:maze_block_count - IMAGE_BASE], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, maze_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [bp - 0x000e]
    mov word [cs:bx], ax
    add ax, word [cs:maze_mem_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov word [bp - 0x0002], ax
    xor di, di
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
@..cache_area.l10:
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..cache_area.l10
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near cache_area_restore_and_return
@..cache_area.l11:
    mov ax, word [bp + 0x10]
    sub ax, word [bp + 0xc]
    inc ax
    mov word [bp - 0x0006], ax
    mov bx, word [bp + 0x12]
    sub bx, word [bp + 0xe]
    inc bx
    mov word [bp - 0x0004], bx
    mul bx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], dx
    add ax, strict word 0xc
    add ax, strict word 0xf
    mov cl, 4
    shr ax, cl
    mov word [bp - 0x0002], ax
    add ax, word [cs:ems_paras_used - IMAGE_BASE]
    cmp ax, word [cs:ems_para_limit - IMAGE_BASE]
    jbe short @..cache_area.l12
    jmp near cache_area_out_of_ems
@..cache_area.l12:
    mov bx, word [cs:ems_paras_used - IMAGE_BASE]
    mov word [bp - 0x000e], bx
    mov word [cs:ems_paras_used - IMAGE_BASE], ax
    mov bx, ems_slots - IMAGE_BASE
    mov cx, 0x14
    xor dx, dx
@..cache_area.l13:
    mov ax, word [cs:bx]
    or ax, ax
    je short @..cache_area.l14
    inc dx
    add bx, byte 2
    loop @..cache_area.l13
    jmp near cache_area_ems_slots_full
@..cache_area.l14:
    mov word [bp - 0x000c], dx
    mov ax, word [cs:ems_block_count - IMAGE_BASE]
    inc ax
    mov word [cs:ems_block_count - IMAGE_BASE], ax
    mov word [cs:bx], ax
    dec ax
    mov cl, 2
    shl ax, cl
    mov bx, ems_blocks - IMAGE_BASE
    add bx, ax
    mov ax, word [bp - 0x000e]
    mov word [cs:bx], ax
    mov ax, word [bp - 0x0002]
    mov word [cs:bx + 0x2], ax
    mov ax, word [cs:ems_frame_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [bp - 0x000e]
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
    mov word [bp - 0x0002], ax
    stosw
    xor ax, ax
    stosw
    mov ax, word [bp - 0x0004]
    stosw
    mov ax, word [bp - 0x0006]
    stosw
    mov ax, word [bp - 0x0008]
    stosw
    mov ax, word [bp - 0x000a]
    stosw
@..cache_area.l15:
    mov si, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    test di, 0xc000
    je short @..cache_area.l16
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
    and di, strict word 0x3fff
@..cache_area.l16:
    dec word [bp - 0x0004]
    jne short @..cache_area.l15
    mov ax, word [bp - 0x000c]
    mov dx, word [bp + 0x14]
    jmp near cache_area_restore_and_return
