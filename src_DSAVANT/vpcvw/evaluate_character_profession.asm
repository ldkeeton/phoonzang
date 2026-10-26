; auto-generated
evaluate_character_profession:
    mov ax, 0                        ; 0x902e
    call aztec_csav                  ; 0x9031
    mov ax, word [bp + 6]            ; 0x9034
    jmp near @..evaluate_character_profession.l3 ; 0x9037
jumptable_9188_case_0:
    push word [bp + 8]               ; 0x903a
    mov ax, profession_0_stat_requirements ; 0x903d
    push ax                          ; 0x9040
    push word [bp + 6]               ; 0x9041
    push word [bp + 4]               ; 0x9044
    call evaluate_profession_stat_minimums ; 0x9047
    add sp, byte 8                   ; 0x904a
    jmp near @..evaluate_character_profession.l4 ; 0x904d
jumptable_9188_case_1:
    push word [bp + 8]               ; 0x9050
    mov ax, profession_1_stat_requirements ; 0x9053
    push ax                          ; 0x9056
    push word [bp + 6]               ; 0x9057
    push word [bp + 4]               ; 0x905a
    call evaluate_profession_stat_minimums ; 0x905d
    add sp, byte 8                   ; 0x9060
    jmp near @..evaluate_character_profession.l4 ; 0x9063
jumptable_9188_case_2:
    push word [bp + 8]               ; 0x9066
    mov ax, profession_2_stat_requirements ; 0x9069
    push ax                          ; 0x906c
    push word [bp + 6]               ; 0x906d
    push word [bp + 4]               ; 0x9070
    call evaluate_profession_stat_minimums ; 0x9073
    add sp, byte 8                   ; 0x9076
    jmp near @..evaluate_character_profession.l4 ; 0x9079
jumptable_9188_case_3:
    push word [bp + 8]               ; 0x907c
    mov ax, profession_3_stat_requirements ; 0x907f
    push ax                          ; 0x9082
    push word [bp + 6]               ; 0x9083
    push word [bp + 4]               ; 0x9086
    call evaluate_profession_stat_minimums ; 0x9089
    add sp, byte 8                   ; 0x908c
    jmp near @..evaluate_character_profession.l4 ; 0x908f
jumptable_9188_case_4:
    push word [bp + 8]               ; 0x9092
    mov ax, profession_4_stat_requirements ; 0x9095
    push ax                          ; 0x9098
    push word [bp + 6]               ; 0x9099
    push word [bp + 4]               ; 0x909c
    call evaluate_profession_stat_minimums ; 0x909f
    add sp, byte 8                   ; 0x90a2
    jmp near @..evaluate_character_profession.l4 ; 0x90a5
jumptable_9188_case_5:
    push word [bp + 8]               ; 0x90a8
    mov ax, profession_5_stat_requirements ; 0x90ab
    push ax                          ; 0x90ae
    push word [bp + 6]               ; 0x90af
    push word [bp + 4]               ; 0x90b2
    call evaluate_profession_stat_minimums ; 0x90b5
    add sp, byte 8                   ; 0x90b8
    jmp near @..evaluate_character_profession.l4 ; 0x90bb
jumptable_9188_case_6:
    push word [bp + 8]               ; 0x90be
    mov ax, profession_6_stat_requirements ; 0x90c1
    push ax                          ; 0x90c4
    push word [bp + 6]               ; 0x90c5
    push word [bp + 4]               ; 0x90c8
    call evaluate_profession_stat_minimums ; 0x90cb
    add sp, byte 8                   ; 0x90ce
    jmp near @..evaluate_character_profession.l4 ; 0x90d1
jumptable_9188_case_7:
    push word [bp + 8]               ; 0x90d4
    mov ax, profession_7_stat_requirements ; 0x90d7
    push ax                          ; 0x90da
    push word [bp + 6]               ; 0x90db
    push word [bp + 4]               ; 0x90de
    call evaluate_profession_stat_minimums ; 0x90e1
    add sp, byte 8                   ; 0x90e4
    jmp near @..evaluate_character_profession.l4 ; 0x90e7
jumptable_9188_case_8:
    mov ax, 0x248                    ; 0x90ea
    imul word [bp + 4]               ; 0x90ed
    mov bx, ax                       ; 0x90f0
    cmp byte [bx + party_records + pc_rec.gender], 1 ; 0x90f2
    jne short @..evaluate_character_profession.l1 ; 0x90f7
    push word [bp + 8]               ; 0x90f9
    mov ax, profession_8_stat_requirements ; 0x90fc
    push ax                          ; 0x90ff
    push word [bp + 6]               ; 0x9100
    push word [bp + 4]               ; 0x9103
    call evaluate_profession_stat_minimums ; 0x9106
    add sp, byte 8                   ; 0x9109
    jmp short @..evaluate_character_profession.l2 ; 0x910c
@..evaluate_character_profession.l1:
    mov ax, word [bp + 6]            ; 0x910e
    shl ax, 1                        ; 0x9111
    mov bx, ax                       ; 0x9113
    mov word [bx + profession_eligible], 0 ; 0x9115
@..evaluate_character_profession.l2:
    jmp near @..evaluate_character_profession.l4 ; 0x911b
jumptable_9188_case_9:
    push word [bp + 8]               ; 0x911e
    mov ax, profession_9_stat_requirements ; 0x9121
    push ax                          ; 0x9124
    push word [bp + 6]               ; 0x9125
    push word [bp + 4]               ; 0x9128
    call evaluate_profession_stat_minimums ; 0x912b
    add sp, byte 8                   ; 0x912e
    jmp near @..evaluate_character_profession.l4 ; 0x9131
jumptable_9188_case_10:
    push word [bp + 8]               ; 0x9134
    mov ax, profession_10_stat_requirements ; 0x9137
    push ax                          ; 0x913a
    push word [bp + 6]               ; 0x913b
    push word [bp + 4]               ; 0x913e
    call evaluate_profession_stat_minimums ; 0x9141
    add sp, byte 8                   ; 0x9144
    jmp short @..evaluate_character_profession.l4 ; 0x9147
jumptable_9188_case_11:
    push word [bp + 8]               ; 0x9149
    mov ax, profession_11_stat_requirements ; 0x914c
    push ax                          ; 0x914f
    push word [bp + 6]               ; 0x9150
    push word [bp + 4]               ; 0x9153
    call evaluate_profession_stat_minimums ; 0x9156
    add sp, byte 8                   ; 0x9159
    jmp short @..evaluate_character_profession.l4 ; 0x915c
jumptable_9188_case_12:
    push word [bp + 8]               ; 0x915e
    mov ax, profession_12_stat_requirements ; 0x9161
    push ax                          ; 0x9164
    push word [bp + 6]               ; 0x9165
    push word [bp + 4]               ; 0x9168
    call evaluate_profession_stat_minimums ; 0x916b
    add sp, byte 8                   ; 0x916e
    jmp short @..evaluate_character_profession.l4 ; 0x9171
jumptable_9188_case_13:
    push word [bp + 8]               ; 0x9173
    mov ax, profession_13_stat_requirements ; 0x9176
    push ax                          ; 0x9179
    push word [bp + 6]               ; 0x917a
    push word [bp + 4]               ; 0x917d
    call evaluate_profession_stat_minimums ; 0x9180
    add sp, byte 8                   ; 0x9183
    jmp short @..evaluate_character_profession.l4 ; 0x9186
jumptable_9188:
    dw jumptable_9188_case_0 - IMAGE_BASE + __zres_end ; 0x9188
    dw jumptable_9188_case_1 - IMAGE_BASE + __zres_end ; 0x918a
    dw jumptable_9188_case_2 - IMAGE_BASE + __zres_end ; 0x918c
    dw jumptable_9188_case_3 - IMAGE_BASE + __zres_end ; 0x918e
    dw jumptable_9188_case_4 - IMAGE_BASE + __zres_end ; 0x9190
    dw jumptable_9188_case_5 - IMAGE_BASE + __zres_end ; 0x9192
    dw jumptable_9188_case_6 - IMAGE_BASE + __zres_end ; 0x9194
    dw jumptable_9188_case_7 - IMAGE_BASE + __zres_end ; 0x9196
    dw jumptable_9188_case_8 - IMAGE_BASE + __zres_end ; 0x9198
    dw jumptable_9188_case_9 - IMAGE_BASE + __zres_end ; 0x919a
    dw jumptable_9188_case_10 - IMAGE_BASE + __zres_end ; 0x919c
    dw jumptable_9188_case_11 - IMAGE_BASE + __zres_end ; 0x919e
    dw jumptable_9188_case_12 - IMAGE_BASE + __zres_end ; 0x91a0
    dw jumptable_9188_case_13 - IMAGE_BASE + __zres_end ; 0x91a2
@..evaluate_character_profession.l3:
    cmp ax, strict word 0xe          ; 0x91a4
    jae short @..evaluate_character_profession.l4 ; 0x91a7
    xchg bx, ax                      ; 0x91a9
    shl bx, 1                        ; 0x91aa
    jmp [cs:bx + jumptable_9188 - IMAGE_BASE + __zres_end] ; 0x91ac
@..evaluate_character_profession.l4:
    ret                              ; 0x91b1
