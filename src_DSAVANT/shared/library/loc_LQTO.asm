; auto-generated
loc_LQTO:
    mov ax, word [bp + 0xc]
    shl ax, 1
    mov si, cseg_01c3 - IMAGE_BASE
    add si, ax
    mov ax, word [cs:si]
    dec ax
    mov cl, 2
    shl ax, cl
    mov di, ems_blocks - IMAGE_BASE
    add di, ax
    mov si, word [cs:di]
    mov ax, word [cs:di + 2]
    mov word [cs:bx + 2], ax
    mov word [bp - 4], ax
    mov dx, word [cs:maze_mem_seg - IMAGE_BASE]
    add dx, word [cs:maze_paras_used - IMAGE_BASE]
    mov word [bp - 0xa], dx
    mov es, dx
    add word [cs:maze_paras_used - IMAGE_BASE], ax
    mov ax, word [cs:ems_frame_seg - IMAGE_BASE]
    mov ds, ax
    mov ax, si
    mov cl, 0xa
    shr ax, cl
    mov word [cs:ems_cur_page - IMAGE_BASE], ax
    call ems_map_pages
    and si, strict word 0x3ff
    mov cl, 4
    shl si, cl
loc_SMRK:
    test si, 0xc000
    je short loc_IGPS
    inc word [cs:ems_cur_page - IMAGE_BASE]
    mov ax, word [cs:ems_cur_page - IMAGE_BASE]
    call ems_map_pages
    sub si, strict word 0x4000
loc_IGPS:
    xor di, di
    mov cx, 0x10
    rep movsb
    mov ax, es
    inc ax
    mov es, ax
    dec word [bp - 4]
    jne short loc_SMRK
    mov ax, word [bp - 0xa]
    mov ds, ax
    mov bx, 0
    mov ax, word [bx]
    mov cx, 6
    mul cx
    add ax, strict word 4
    mov bx, word [bp - 8]
    add bx, strict word 0x27d
    mov word [cs:bx], ax
    jmp near loc_JKVR
