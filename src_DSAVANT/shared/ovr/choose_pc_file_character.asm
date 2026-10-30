; auto-generated
choose_pc_file_character:
    mov ax, 0xfd40
    call aztec_csav
    mov word [bp - 8], 0
    mov word [bp - 2], 0
    jmp near .forward4
.back1:
    mov bx, word [bp - 2]
    cmp byte [bx + pc_file_record_base_hi + 0x2], 1
    je short .forward1
    jmp near .forward3
.forward1:
    mov ax, 0
    push ax
    push bx
    lea ax, word [bp - 0x250]
    push ax
    call transfer_pc_file_record
    add sp, byte 6
    lea ax, word [bp - 0x250]
    push ax
    mov ax, 0x14
    imul word [bp - 8]
    add ax, known_spell_names
    push ax
    call aztec_strcpy
    add sp, byte 4
    mov ax, 0x14
    imul word [bp - 8]
    add ax, known_spell_names
    push ax
    call aztec_strlen
    pop cx
    mov word [bp - 4], ax
.back2:
    cmp word [bp - 4], byte 0xa
    jge short .forward2
    mov ax, 0x14
    imul word [bp - 8]
    add ax, word [bp - 4]
    mov bx, ax
    mov byte [bx + known_spell_names], 0x20
    inc word [bp - 4]
    jmp short .back2
.forward2:
    lea ax, word [bp - 0x2a0]
    push ax
    mov al, byte [bp - 0x18]
    sub ah, ah
    add ax, MSG_MALE
    push ax
    call load_message_string
    add sp, byte 4
    mov al, byte [bp - 0x2a0]
    push ax
    mov ax, 0x14
    imul word [bp - 8]
    mov bx, ax
    pop ax
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000a], al
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000b], 0x2d
    lea ax, word [bp - 0x2a0]
    push ax
    mov al, byte [bp - 0x17]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call load_message_string
    add sp, byte 4
    mov word [bp - 4], 0
.back3:
    mov bx, word [bp - 4]
    add bx, bp
    mov al, byte [bx - 0x2a0]
    push ax
    mov ax, 0x14
    imul word [bp - 8]
    mov cx, ax
    add ax, word [bp - 4]
    mov bx, ax
    pop ax
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000c], al
    inc word [bp - 4]
    mov ax, word [bp - 4]
    cmp ax, strict word 3
    jl short .back3
    mov ax, 0x14
    imul word [bp - 8]
    mov bx, ax
    mov byte [bx + known_spell_names + known_spell_names_rec.f_000f], 0
    mov ax, word [bp - 2]
    mov cx, word [bp - 8]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x2c0], ax
    inc word [bp - 8]
.forward3:
    inc word [bp - 2]
.forward4:
    mov ax, word [bp - 2]
    cmp ax, word [pc_file_record_count]
    jge short .forward5
    jmp near .back1
.forward5:
    cmp word [bp - 8], byte 0
    jle short .forward6
    push word [bp - 8]
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    push word [bp + 4]
    call choose_pc_file_character.api_idx1
    add sp, byte 0xa
    cmp ax, strict word 1
    jne short .forward6
    mov ax, word [spell_dialog_result]
    mov word [bp - 6], ax
    cmp ax, strict word 0xffff
    je short .forward6
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x2c0]
    ret
.forward6:
    mov ax, 0xffff
    ret
