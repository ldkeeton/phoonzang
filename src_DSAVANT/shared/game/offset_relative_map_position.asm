; auto-generated
offset_relative_map_position:
    mov ax, 0
    call aztec_csav
    mov ax, word [party_tag]
    jmp short @..offset_relative_map_position.l5
@..offset_relative_map_position.l1:
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short @..offset_relative_map_position.l6
@..offset_relative_map_position.l2:
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    add word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short @..offset_relative_map_position.l6
@..offset_relative_map_position.l3:
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x6]
    sub word [bx], ax
    jmp short @..offset_relative_map_position.l6
@..offset_relative_map_position.l4:
    mov ax, word [bp + 0x10]
    mov bx, word [bp + 0x4]
    sub word [bx], ax
    mov ax, word [bp + 0xe]
    mov bx, word [bp + 0x6]
    add word [bx], ax
    jmp short @..offset_relative_map_position.l6
@..offset_relative_map_position.l5:
    cmp ax, strict word 0
    je short @..offset_relative_map_position.l1
    cmp ax, strict word 1
    je short @..offset_relative_map_position.l2
    cmp ax, strict word 2
    je short @..offset_relative_map_position.l3
    cmp ax, strict word 3
    je short @..offset_relative_map_position.l4
@..offset_relative_map_position.l6:
    mov bx, word [bp + 0x6]
    push word [bx]
    mov bx, word [bp + 0x4]
    push word [bx]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    call find_map_piece
    add sp, byte 0x0a
    ret
