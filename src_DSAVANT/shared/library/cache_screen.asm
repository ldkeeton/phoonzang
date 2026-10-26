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
    je short .forward1
    dec word [cs:ems_block_count - IMAGE_BASE]
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, screen_ems_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    mov word [cs:bx], 0
    call leaf_loc_MIUO
    call loc_KLNH
    jmp near cache_screen_restore_and_return
.forward1:
    mov word [bp - 2], ax
    mov ax, word [bp + 0x10]
    or ax, ax
    je short .forward2
    mov ax, word [bp + 0xe]
    mov word [bp - 4], ax
    call dos_file_loc_MUHV
    jmp near cache_screen_restore_and_return
.forward2:
    mov ax, word [bp + 0xe]
    shl ax, 1
    mov bx, screen_ems_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    je short .forward3
    jmp near cache_screen_slot_in_use
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
    mov ax, 0xfa0
    mov word [cs:bx + 2], ax
    mov di, word [cs:ems_paras_used - IMAGE_BASE]
    add word [cs:ems_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:ems_paras_used - IMAGE_BASE]
    cmp ax, word [cs:ems_para_limit - IMAGE_BASE]
    jbe short .forward4
    jmp near cache_screen_out_of_ems
.forward4:
    mov ax, 0xfa00
    mov word [bp - 6], ax
    mov ax, di
    mov cl, 0xa
    shr ax, cl
    mov word [cs:ems_cur_page - IMAGE_BASE], ax
    call ems_map_pages
    and di, strict word 0x3ff
    mov cl, 4
    shl di, cl
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
    or ax, ax
    je short cache_screen_restore_and_return
    mov cx, 0x1000
    cmp ax, cx
    jae short .forward6
    mov cx, ax
.forward6:
    sub ax, cx
    mov word [bp - 6], ax
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
    jmp short .back1
