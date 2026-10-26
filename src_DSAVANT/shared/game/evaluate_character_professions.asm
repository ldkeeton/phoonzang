; auto-generated
evaluate_character_professions:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 0x0002], 0
@..evaluate_character_professions.l1:
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call evaluate_character_professions.check_profession_requirements1
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xd
    jle short @..evaluate_character_professions.l1
    ret
