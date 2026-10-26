; auto-generated
free_sound:
    push bp
    mov bp, sp
    sub sp, byte 0xa
    push ds
    push es
    push si
    push di
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xc]
    cmp ax, strict word 0x14
    jb short .forward1
    jmp near .forward3
.forward1:
    shl ax, 1
    shl ax, 1
    mov bx, sound_slots - IMAGE_BASE
    add bx, ax
    mov ax, word [cs:bx]
    or ax, ax
    jne short .forward2
    jmp near .forward3
.forward2:
    mov word [cs:bx], 0
    mov cx, word [cs:maze_block_count - IMAGE_BASE]
    dec cx
    mov word [cs:maze_block_count - IMAGE_BASE], cx
    call loc_PPJL
.forward3:
    pop di
    pop si
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
loc_PPJL:
    call free_sound.leaf_loc1
    call leaf_loc_IHJG
    call leaf_loc_USQQ
    call leaf_loc_MGRH
    call free_sound.leaf_loc2
    call free_sound.dos_con_loc1
    call free_sound.leaf_loc3
    ret
