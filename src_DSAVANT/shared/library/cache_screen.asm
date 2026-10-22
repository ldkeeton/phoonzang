; auto-generated
cache_screen:
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
    je short @..cache_screen.l1
    dec word [cs:ems_block_count - IMAGE_BASE]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, cache_screen.screen_slots1 - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_MIUO
    call loc_KLNH
    jmp near cache_screen_restore_and_return
@..cache_screen.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short @..cache_screen.l2
    mov ax, word [bp + 0xe]
    mov word [bp - 0x0004], ax
    call dos_file_loc_MUHV
    jmp near cache_screen_restore_and_return
@..cache_screen.l2:
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, cache_screen.screen_slots1 - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short @..cache_screen.l3
    jmp near cache_screen_slot_in_use
@..cache_screen.l3:
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
    mov ax, 0xfa0
    mov word [cs:bx + 0x2], ax
    mov di, word [cs:ems_paras_used - IMAGE_BASE]
    add word [cs:ems_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:ems_paras_used - IMAGE_BASE]
    cmp ax, word [cs:ems_para_limit - IMAGE_BASE]
    jbe short @..cache_screen.l4
    jmp near cache_screen_out_of_ems
@..cache_screen.l4:
    mov ax, 0xfa00
    mov word [bp - 0x0006], ax
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:ems_cur_page - IMAGE_BASE], ax
    call ems_map_pages
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
@..cache_screen.l5:
    mov dx, di
    test dx, 0xc000
    je short @..cache_screen.l6
    sub di, strict word 0x4000
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
@..cache_screen.l6:
    mov ax, word [bp - 0x0006]
    or ax, ax
    je short cache_screen_restore_and_return
    mov cx, 0x1000
    cmp ax, cx
    jae short @..cache_screen.l7
    mov cx, ax
@..cache_screen.l7:
    sub ax, cx
    mov word [bp - 0x0006], ax
    mov ax, word [cs:ems_frame_seg - IMAGE_BASE]
    mov es, ax
    mov ax, word [cs:scratch_buf_seg - IMAGE_BASE]
    mov ds, ax
    mov dx, 0
    mov bx, word [bp + 0xc]
    mov ah, 0x3f
    push cx
    int 0x21 ; DOS read file (handle)
    pop cx
    mov si, 0
    rep movsb
    jmp short @..cache_screen.l5
