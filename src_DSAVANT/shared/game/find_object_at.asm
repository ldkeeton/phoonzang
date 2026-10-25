; auto-generated
find_object_at:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    jmp short @..find_object_at.l4
@..find_object_at.l1:
    mov bx, word [maze_tables]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si + spell_table + spell_table_rec_size*98 + spell_table_rec.f_0004]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    je short @..find_object_at.l2
    mov ax, 0xffff
    ret
@..find_object_at.l2:
    mov al, byte [bx + si + spell_table + spell_table_rec_size*18 + spell_table_rec.f_0004]
    sub ah, ah
    cmp ax, word [bp + 0x4]
    jne short @..find_object_at.l3
    mov al, byte [bx + si + spell_table + spell_table_rec_size*58 + spell_table_rec.f_0004]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..find_object_at.l3
    cmp byte [bx + si + 0x5a0], 0
    jbe short @..find_object_at.l3
    mov al, byte [bx + si + spell_table + spell_table_rec_size*138 + spell_table_rec.f_0004]
    sub ah, ah
    push ax
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, party_region + 0x2
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    jne short @..find_object_at.l3
    mov ax, word [bp - 0x0002]
    ret
@..find_object_at.l3:
    inc word [bp - 0x0002]
@..find_object_at.l4:
    cmp word [bp - 0x0002], strict word 0xf0
    jl short @..find_object_at.l1
    mov ax, 0xffff
    ret
