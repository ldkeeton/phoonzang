; auto-generated
advance_party_slot_frames:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 0x0002], 0
@..advance_party_slot_frames.l1:
    cmp word [bp + 0x4], byte 0
    jl short @..advance_party_slot_frames.l2
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..advance_party_slot_frames.l3
@..advance_party_slot_frames.l2:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    inc word [bx + party_slot_frame]
@..advance_party_slot_frames.l3:
    mov ax, 0x14
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx + party_slot_frame]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + party_slot_glyphs], byte 0xff
    jne short @..advance_party_slot_frames.l4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx + party_slot_frame], 0
@..advance_party_slot_frames.l4:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..advance_party_slot_frames.l1
    ret
