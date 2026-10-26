; auto-generated
collect_known_spells:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 4], 0
    mov word [bp - 2], 0
.back1:
    mov ax, 6
    imul word [bp - 2]
    mov bx, ax
    mov al, byte [bx + spell_table]
    sub ah, ah
    cmp ax, word [bp + 6]
    jne short .forward1
    push word [bp - 2]
    mov ax, 0x248
    imul word [bp + 4]
    add ax, party_records + pc_rec.pad_01be + 0x60
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short .forward1
    mov ax, 0x14
    imul word [bp - 4]
    add ax, known_spell_names
    push ax
    mov ax, word [bp - 2]
    add ax, MSG_SPELL_NAME_BASE
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, word [bp - 2]
    mov cx, word [bp - 4]
    shl cx, 1
    mov bx, cx
    mov word [bx + known_spell_ids], ax
    inc word [bp - 4]
.forward1:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 0x66
    jl short .back1
    mov ax, word [bp - 4]
    ret
