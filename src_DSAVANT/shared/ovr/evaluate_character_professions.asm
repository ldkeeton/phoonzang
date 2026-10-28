; auto-generated
evaluate_character_professions:
    mov ax, 0xfffe
    call aztec_csav
    mov word [bp - 2], 0
.back1:
    mov ax, 0
    push ax
    push word [bp - 2]
    push word [bp + 4]
    call evaluate_character_profession
    add sp, byte 6
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 0xd
    jle short .back1
    ret
