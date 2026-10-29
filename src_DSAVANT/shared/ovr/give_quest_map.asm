; auto-generated
give_quest_map:
    mov ax, 0xfffe
    call aztec_csav
    mov al, byte [bp + 4]
    push ax
    mov ax, 6
    imul word [bp + 8]
    mov bx, ax
    pop ax
    mov byte [bx + quest_maps], al
    mov byte [bx + quest_maps + quest_map.status], 0
    mov ax, 1
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp + 4]
    add ax, slot_records + slot_record.held_maps
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp + 4]
    add ax, slot_records + slot_record.map_history
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov word [bp - 2], 0
.back1:
    mov ax, 0
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp - 2]
    add ax, slot_records + slot_record.known_maps
    push ax
    call set_bitmap_bit
    add sp, byte 6
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 0x16
    jl short .back1
    mov ax, 1
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp + 4]
    add ax, slot_records + slot_record.known_maps
    push ax
    call set_bitmap_bit
    add sp, byte 6
    cmp word [bp + 6], byte -1
    je short .return1
    mov ax, 0
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp + 6]
    add ax, slot_records + slot_record.held_maps
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp + 6]
    add ax, slot_records + slot_record.known_maps
    push ax
    call set_bitmap_bit
    add sp, byte 6
.return1:
    ret
