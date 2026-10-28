; auto-generated
advance_party_slot_frames:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 2], 0
.back1:
    cmp word [bp + 4], byte 0
    jl short .forward1
    mov ax, word [bp - 2]
    cmp ax, word [bp + 4]
    jne short .forward2
.forward1:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    inc word [bx + party_slot_frame]
.forward2:
    mov ax, 0x14
    imul word [bp - 2]
    mov cx, word [bp - 2]
    shl cx, 1
    mov bx, cx
    mov cx, word [bx + party_slot_frame]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + party_slot_glyphs], byte -1
    jne short .forward3
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    mov word [bx + party_slot_frame], 0
.forward3:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 6
    jl short .back1
    ret
