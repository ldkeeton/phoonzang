; auto-generated
prepare_skill_list:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.profession]
    sub ah, ah
    jmp near .forward1
jumptable_3797_case_0:
    mov ax, fighter_academia_skills
    push ax
    mov ax, fighter_personal_skills
    push ax
    mov ax, fighter_physical_skills
    push ax
    mov ax, fighter_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_1:
    mov ax, mage_academia_skills
    push ax
    mov ax, mage_personal_skills
    push ax
    mov ax, mage_physical_skills
    push ax
    mov ax, mage_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_2:
    mov ax, priest_academia_skills
    push ax
    mov ax, priest_personal_skills
    push ax
    mov ax, priest_physical_skills
    push ax
    mov ax, priest_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_3:
    mov ax, thief_academia_skills
    push ax
    mov ax, thief_personal_skills
    push ax
    mov ax, thief_physical_skills
    push ax
    mov ax, thief_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_4:
    mov ax, ranger_academia_skills
    push ax
    mov ax, ranger_personal_skills
    push ax
    mov ax, ranger_physical_skills
    push ax
    mov ax, ranger_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_5:
    mov ax, alchemist_academia_skills
    push ax
    mov ax, alchemist_personal_skills
    push ax
    mov ax, alchemist_physical_skills
    push ax
    mov ax, alchemist_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_6:
    mov ax, bard_academia_skills
    push ax
    mov ax, bard_personal_skills
    push ax
    mov ax, bard_physical_skills
    push ax
    mov ax, bard_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_7:
    mov ax, psionic_academia_skills
    push ax
    mov ax, psionic_personal_skills
    push ax
    mov ax, psionic_physical_skills
    push ax
    mov ax, psionic_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_8:
    mov ax, valkyrie_academia_skills
    push ax
    mov ax, valkyrie_personal_skills
    push ax
    mov ax, valkyrie_physical_skills
    push ax
    mov ax, valkyrie_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_9:
    mov ax, bishop_academia_skills
    push ax
    mov ax, bishop_personal_skills
    push ax
    mov ax, bishop_physical_skills
    push ax
    mov ax, bishop_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp near prepare_skill_list.forward2
jumptable_3797_case_10:
    mov ax, lord_academia_skills
    push ax
    mov ax, lord_personal_skills
    push ax
    mov ax, lord_physical_skills
    push ax
    mov ax, lord_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp short prepare_skill_list.forward2
jumptable_3797_case_11:
    mov ax, samurai_academia_skills
    push ax
    mov ax, samurai_personal_skills
    push ax
    mov ax, samurai_physical_skills
    push ax
    mov ax, samurai_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp short prepare_skill_list.forward2
jumptable_3797_case_12:
    mov ax, monk_academia_skills
    push ax
    mov ax, monk_personal_skills
    push ax
    mov ax, monk_physical_skills
    push ax
    mov ax, monk_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp short prepare_skill_list.forward2
jumptable_3797_case_13:
    mov ax, ninja_academia_skills
    push ax
    mov ax, ninja_personal_skills
    push ax
    mov ax, ninja_physical_skills
    push ax
    mov ax, ninja_weaponry_skills
    push ax
    push word [bp + 4]
    call set_party_skill_flags
    add sp, byte 0xa
    jmp short prepare_skill_list.forward2
jumptable_3797:
    dw jumptable_3797_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_6 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_7 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_9 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_10 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_11 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_12 - IMAGE_BASE + __zres_end
    dw jumptable_3797_case_13 - IMAGE_BASE + __zres_end
prepare_skill_list.forward1:
    cmp ax, strict word 0xe
    jae short prepare_skill_list.forward2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3797 - IMAGE_BASE + __zres_end]
prepare_skill_list.forward2:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.stat + 0x1], 0xd
    jbe short prepare_skill_list.forward3
    cmp byte [bx + party_records + pc_rec.stat + 0x6], 0xd
    jbe short prepare_skill_list.forward3
    mov word [both_high_stats_flag], 1
prepare_skill_list.forward3:
    mov word [bp - 4], 0
    mov ax, word [bp + 6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [word bx + 0x38]
    mov word [bp - 2], ax
    jmp short prepare_skill_list.forward5
prepare_skill_list.back1:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    cmp word [bx + skill_availability_flags], byte 1
    jne short prepare_skill_list.forward4
    mov ax, 0x14
    imul word [bp - 4]
    add ax, list_entry_text
    push ax
    mov ax, word [bp - 2]
    add ax, MSG_WAND_DAGGER
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, word [bp - 2]
    mov cx, word [bp - 4]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 8]
    mov word [bx + si], ax
    inc word [bp - 4]
prepare_skill_list.forward4:
    inc word [bp - 2]
prepare_skill_list.forward5:
    mov ax, word [bp + 6]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [word bx + 0x3a]
    cmp ax, word [bp - 2]
    jge short prepare_skill_list.back1
    mov ax, skill_points_label
    push ax
    mov ax, MSG_SKILL_POINTS
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, word [bp - 4]
    ret
