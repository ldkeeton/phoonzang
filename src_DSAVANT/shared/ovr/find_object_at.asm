; auto-generated
find_object_at:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, word [bp + 0xa]
    mov word [bp - 2], ax
    jmp short .forward3
.back1:
    mov bx, word [maze_tables]
    mov si, word [bp - 2]
    mov al, byte [bx + si + spell_table + spell_table_rec_size*98 + spell_table_rec.f_0004]
    sub ah, ah
    cmp ax, word [bp + 8]
    je short .forward1
    mov ax, 0xffff
    ret
.forward1:
    mov al, byte [bx + si + spell_table + spell_table_rec_size*18 + spell_table_rec.f_0004]
    sub ah, ah
    cmp ax, word [bp + 4]
    jne short .forward2
    mov al, byte [bx + si + spell_table + spell_table_rec_size*58 + spell_table_rec.f_0004]
    sub ah, ah
    cmp ax, word [bp + 6]
    jne short .forward2
    cmp byte [bx + si + 0x5a0], 0
    jbe short .forward2
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
    jne short .forward2
    mov ax, word [bp - 2]
    ret
.forward2:
    inc word [bp - 2]
.forward3:
    cmp word [bp - 2], strict word 0xf0
    jl short .back1
    mov ax, 0xffff
    ret
