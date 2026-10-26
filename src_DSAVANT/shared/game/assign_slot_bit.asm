; auto-generated
assign_slot_bit:
    mov ax, 0xfffe
    call aztec_csav
    mov al, byte [bp + 4]
    push ax
    mov ax, 6
    imul word [bp + 8]
    mov bx, ax
    pop ax
    mov byte [bx + slot_bit_states], al
    mov byte [bx + slot_bit_states + slot_bit_state.status], 0
    mov ax, 1
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp + 4]
    add ax, slot_records + slot_record.assigned_bits
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp + 4]
    add ax, slot_records + slot_record.marked_bits
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
    add ax, slot_records + slot_record.selected_bits
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
    add ax, slot_records + slot_record.selected_bits
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
    add ax, slot_records + slot_record.assigned_bits
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 8]
    mov ax, 0x26
    imul word [bp + 6]
    add ax, slot_records + slot_record.selected_bits
    push ax
    call set_bitmap_bit
    add sp, byte 6
.return1:
    ret
