; auto-generated
collect_known_spells:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0002], 0
@..collect_known_spells.l1:
    mov ax, 6
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + spell_table]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jne short @..collect_known_spells.l2
    push word [bp - 0x0002]
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, party_records + pc_rec.pad_01be + 0x60
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short @..collect_known_spells.l2
    mov ax, 0x14
    imul word [bp - 0x0004]
    add ax, known_spell_names
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xfa0
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x0004]
    shl cx, 1
    mov bx, cx
    mov word [bx + collect_known_spells.known_spell_list1], ax
    inc word [bp - 0x0004]
@..collect_known_spells.l2:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x66
    jl short @..collect_known_spells.l1
    mov ax, word [bp - 0x0004]
    ret
