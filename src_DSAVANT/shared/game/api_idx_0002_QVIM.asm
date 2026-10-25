; auto-generated
api_idx_0002_QVIM:
    mov ax, 0xfffe
    call aztec_csav
    mov al, byte [bp + 0x4]
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    mov bx, ax
    pop ax
    mov byte [bx + bss_84a6], al
    mov byte [bx + bss_84a6 + rec_84a6.f_0001], 0
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, slot_records + slot_record.f_0019 + 0x1
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, slot_records + slot_record.f_0019 + 0x9
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov word [bp - 0x0002], 0
@..api_idx_0002_QVIM.l1:
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp - 0x0002]
    add ax, slot_records + slot_record.f_0019 + 0x3
    push ax
    call set_bitmap_bit
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x16
    jl short @..api_idx_0002_QVIM.l1
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x4]
    add ax, slot_records + slot_record.f_0019 + 0x3
    push ax
    call set_bitmap_bit
    add sp, byte 6
    cmp word [bp + 0x6], byte 0xff
    je short @..api_idx_0002_QVIM.l2
    mov ax, 0
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, slot_records + slot_record.f_0019 + 0x1
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp + 0x8]
    mov ax, 0x26
    imul word [bp + 0x6]
    add ax, slot_records + slot_record.f_0019 + 0x3
    push ax
    call set_bitmap_bit
    add sp, byte 6
@..api_idx_0002_QVIM.l2:
    ret
