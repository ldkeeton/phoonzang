; auto-generated
mark_region_bits:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 4], byte 0
    jle short @..mark_region_bits.l1
    mov bx, word [maze_tables]
    mov si, word [party_region]
    cmp byte [bx + si + spell_table + spell_table_rec_size*138 + spell_table_rec.f_0004], 0
    jbe short @..mark_region_bits.l1
    mov ax, 1
    push ax
    mov al, byte [bx + si + spell_table + spell_table_rec_size*138 + spell_table_rec.f_0004]
    sub ah, ah
    push ax
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, party_region + 0x2
    push ax
    call set_bitmap_bit
    add sp, byte 6
    cmp word [bp + 4], byte 1
    jle short @..mark_region_bits.l1
    mov ax, 1
    push ax
    mov bx, word [maze_tables]
    mov si, word [party_region]
    mov al, byte [bx + si + spell_table + spell_table_rec_size*138 + spell_table_rec.f_0004]
    sub ah, ah
    push ax
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, bss_5642
    push ax
    call set_bitmap_bit
    add sp, byte 6
@..mark_region_bits.l1:
    ret
