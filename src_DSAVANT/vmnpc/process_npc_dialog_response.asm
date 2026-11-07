; auto-generated
process_npc_dialog_response:
    mov ax, 0xfffc                   ; 0x8f85
    call $csav                  ; 0x8f88
    mov ax, 7                        ; 0x8f8b
    push ax                          ; 0x8f8e
    mov ax, 2                        ; 0x8f8f
    push ax                          ; 0x8f92
    push word [bp + 4]               ; 0x8f93
    call find_npc_dialog_option      ; 0x8f96
    add sp, byte 6                   ; 0x8f99
    mov word [bp - 2], ax            ; 0x8f9c
    cmp ax, strict word 0xffff       ; 0x8f9f
    je short .forward1               ; 0x8fa2
    mov ax, 2                        ; 0x8fa4
    ret                              ; 0x8fa7
.forward1:
    mov ax, 0xa                      ; 0x8fa8
    push ax                          ; 0x8fab
    mov ax, 3                        ; 0x8fac
    push ax                          ; 0x8faf
    push word [bp + 4]               ; 0x8fb0
    call find_npc_dialog_option      ; 0x8fb3
    add sp, byte 6                   ; 0x8fb6
    mov word [bp - 2], ax            ; 0x8fb9
    cmp ax, strict word 0xffff       ; 0x8fbc
    je short .forward4               ; 0x8fbf
    mov word [npc_dialog_choice_code], ax ; 0x8fc1
    jmp short .forward2              ; 0x8fc4
jumptable_8ffe_case_0:
    mov word [npc_response_flag_0], 1 ; 0x8fc6
    jmp short process_npc_dialog_response.forward3 ; 0x8fcc
jumptable_8ffe_case_1:
    mov word [npc_response_flag_1], 1 ; 0x8fce
    jmp short process_npc_dialog_response.forward3 ; 0x8fd4
jumptable_8ffe_case_2:
    mov word [npc_response_flag_2], 1 ; 0x8fd6
    jmp short process_npc_dialog_response.forward3 ; 0x8fdc
jumptable_8ffe_case_3:
    mov word [npc_response_flag_3], 1 ; 0x8fde
    jmp short process_npc_dialog_response.forward3 ; 0x8fe4
jumptable_8ffe_case_4:
    mov word [npc_response_flag_4], 1 ; 0x8fe6
    jmp short process_npc_dialog_response.forward3 ; 0x8fec
jumptable_8ffe_case_5:
    mov word [npc_response_flag_5], 1 ; 0x8fee
    jmp short process_npc_dialog_response.forward3 ; 0x8ff4
jumptable_8ffe_case_6:
    mov word [npc_response_flag_6], 1 ; 0x8ff6
    jmp short process_npc_dialog_response.forward3 ; 0x8ffc
jumptable_8ffe:
    dw jumptable_8ffe_case_0 - IMAGE_BASE + __zres_end ; 0x8ffe
    dw jumptable_8ffe_case_1 - IMAGE_BASE + __zres_end ; 0x9000
    dw jumptable_8ffe_case_2 - IMAGE_BASE + __zres_end ; 0x9002
    dw jumptable_8ffe_case_3 - IMAGE_BASE + __zres_end ; 0x9004
    dw jumptable_8ffe_case_4 - IMAGE_BASE + __zres_end ; 0x9006
    dw jumptable_8ffe_case_5 - IMAGE_BASE + __zres_end ; 0x9008
    dw jumptable_8ffe_case_6 - IMAGE_BASE + __zres_end ; 0x900a
process_npc_dialog_response.forward2:
    cmp ax, strict word 7            ; 0x900c
    jae short process_npc_dialog_response.forward3 ; 0x900f
    xchg bx, ax                      ; 0x9011
    shl bx, 1                        ; 0x9012
    jmp [cs:bx + jumptable_8ffe - IMAGE_BASE + __zres_end] ; 0x9014
process_npc_dialog_response.forward3:
    mov ax, 3                        ; 0x9019
    ret                              ; 0x901c
process_npc_dialog_response.forward4:
    mov ax, 7                        ; 0x901d
    push ax                          ; 0x9020
    mov ax, 8                        ; 0x9021
    push ax                          ; 0x9024
    push word [bp + 4]               ; 0x9025
    call find_npc_dialog_option      ; 0x9028
    add sp, byte 6                   ; 0x902b
    mov word [bp - 2], ax            ; 0x902e
    cmp ax, strict word 0xffff       ; 0x9031
    je short process_npc_dialog_response.forward5 ; 0x9034
    mov word [npc_dialog_response_active], 1 ; 0x9036
    mov word [npc_dialog_response_value], ax ; 0x903c
    push ax                          ; 0x903f
    call reset_npc_dialog_response   ; 0x9040
    pop cx                           ; 0x9043
    mov word [npc_dialog_primary_choice], 0xffff ; 0x9044
    mov word [npc_dialog_secondary_choice], 0xffff ; 0x904a
    mov ax, 8                        ; 0x9050
    ret                              ; 0x9053
process_npc_dialog_response.forward5:
    mov ax, 7                        ; 0x9054
    push ax                          ; 0x9057
    mov ax, 4                        ; 0x9058
    push ax                          ; 0x905b
    push word [bp + 4]               ; 0x905c
    call find_npc_dialog_option      ; 0x905f
    add sp, byte 6                   ; 0x9062
    mov word [bp - 2], ax            ; 0x9065
    cmp ax, strict word 0xffff       ; 0x9068
    je short process_npc_dialog_response.forward9 ; 0x906b
    cmp word [npc_dialog_mode], byte 7 ; 0x906d
    je short process_npc_dialog_response.forward6 ; 0x9072
    cmp word [npc_dialog_mode], byte 0 ; 0x9074
    jne short process_npc_dialog_response.forward7 ; 0x9079
process_npc_dialog_response.forward6:
    mov word [npc_dialog_mode7_seen], 1 ; 0x907b
    mov ax, word [npc_dialog_latest_choice] ; 0x9081
    mov word [npc_dialog_choice_value_a], ax ; 0x9084
process_npc_dialog_response.forward7:
    cmp word [bp - 2], byte 0        ; 0x9087
    jne short process_npc_dialog_response.forward8 ; 0x908b
    mov word [npc_dialog_empty_choice_seen], 1 ; 0x908d
process_npc_dialog_response.forward8:
    mov ax, 4                        ; 0x9093
    ret                              ; 0x9096
process_npc_dialog_response.forward9:
    mov ax, npc_dialog_not_word      ; 0x9097
    push ax                          ; 0x909a
    push word [bp + 4]               ; 0x909b
    call mask_matching_prefix_with_x ; 0x909e
    add sp, byte 4                   ; 0x90a1
    mov word [bp - 2], ax            ; 0x90a4
    cmp ax, strict word 0xffff       ; 0x90a7
    je short process_npc_dialog_response.forward10 ; 0x90aa
    mov word [npc_dialog_prefix_matched], 1 ; 0x90ac
    mov ax, 5                        ; 0x90b2
    ret                              ; 0x90b5
process_npc_dialog_response.forward10:
    mov ax, 0xa                      ; 0x90b6
    push ax                          ; 0x90b9
    mov ax, 1                        ; 0x90ba
    push ax                          ; 0x90bd
    push word [bp + 4]               ; 0x90be
    call find_npc_dialog_option      ; 0x90c1
    add sp, byte 6                   ; 0x90c4
    mov word [bp - 2], ax            ; 0x90c7
    cmp ax, strict word 0xffff       ; 0x90ca
    je short process_npc_dialog_response.forward15 ; 0x90cd
    cmp word [npc_dialog_mode], byte 6 ; 0x90cf
    jne short process_npc_dialog_response.forward11 ; 0x90d4
    mov word [npc_dialog_primary_choice], 0xffff ; 0x90d6
    mov ax, word [npc_dialog_choice_value_a] ; 0x90dc
    mov word [bp - 4], ax            ; 0x90df
    mov ax, word [npc_dialog_choice_value_b] ; 0x90e2
    mov word [npc_dialog_choice_value_a], ax ; 0x90e5
    mov ax, word [bp - 4]            ; 0x90e8
    mov word [npc_dialog_choice_value_b], ax ; 0x90eb
process_npc_dialog_response.forward11:
    cmp word [npc_dialog_primary_choice], byte -1 ; 0x90ee
    je short process_npc_dialog_response.forward12 ; 0x90f3
    mov ax, word [bp - 2]            ; 0x90f5
    mov word [npc_dialog_secondary_choice], ax ; 0x90f8
    jmp short process_npc_dialog_response.forward13 ; 0x90fb
process_npc_dialog_response.forward12:
    mov ax, word [bp - 2]            ; 0x90fd
    mov word [npc_dialog_primary_choice], ax ; 0x9100
process_npc_dialog_response.forward13:
    cmp word [npc_dialog_mode], byte 7 ; 0x9103
    jne short process_npc_dialog_response.forward14 ; 0x9108
    mov ax, word [npc_dialog_latest_choice] ; 0x910a
    mov word [npc_dialog_choice_value_a], ax ; 0x910d
process_npc_dialog_response.forward14:
    mov ax, 1                        ; 0x9110
    ret                              ; 0x9113
process_npc_dialog_response.forward15:
    mov ax, npc_dialog_to_word       ; 0x9114
    push ax                          ; 0x9117
    push word [bp + 4]               ; 0x9118
    call mask_matching_prefix_with_x ; 0x911b
    add sp, byte 4                   ; 0x911e
    mov word [bp - 2], ax            ; 0x9121
    cmp ax, strict word 0xffff       ; 0x9124
    je short process_npc_dialog_response.forward16 ; 0x9127
    mov ax, 6                        ; 0x9129
    ret                              ; 0x912c
process_npc_dialog_response.forward16:
    mov ax, 0xb                      ; 0x912d
    push ax                          ; 0x9130
    mov ax, 9                        ; 0x9131
    push ax                          ; 0x9134
    push word [bp + 4]               ; 0x9135
    call find_npc_dialog_option      ; 0x9138
    add sp, byte 6                   ; 0x913b
    mov word [bp - 2], ax            ; 0x913e
    cmp ax, strict word 0xffff       ; 0x9141
    je short process_npc_dialog_response.forward20 ; 0x9144
    mov ax, word [npc_dialog_choice_index] ; 0x9146
    cmp ax, strict word 0xffff       ; 0x9149
    je short process_npc_dialog_response.forward17 ; 0x914c
    cmp word [npc_dialog_choice_index], byte 0 ; 0x914e
    je short process_npc_dialog_response.forward17 ; 0x9153
    cmp ax, word [npc_first_choice_count] ; 0x9155
    jne short process_npc_dialog_response.forward18 ; 0x9159
process_npc_dialog_response.forward17:
    mov ax, word [npc_dialog_default_choice_index] ; 0x915b
    mov word [npc_dialog_choice_index], ax ; 0x915e
    mov ax, word [npc_dialog_default_choice_value] ; 0x9161
    mov word [npc_dialog_choice_auxiliary], ax ; 0x9164
    jmp short process_npc_dialog_response.forward19 ; 0x9167
process_npc_dialog_response.forward18:
    mov ax, word [npc_dialog_default_choice_index] ; 0x9169
    cmp ax, word [npc_dialog_choice_index] ; 0x916c
    je short process_npc_dialog_response.forward19 ; 0x9170
    cmp word [npc_dialog_default_choice_index], byte 0 ; 0x9172
    je short process_npc_dialog_response.forward19 ; 0x9177
    cmp ax, word [npc_first_choice_count] ; 0x9179
    je short process_npc_dialog_response.forward19 ; 0x917d
    mov word [npc_alt_choice_index], ax ; 0x917f
    mov ax, word [npc_dialog_default_choice_value] ; 0x9182
    mov word [npc_alt_choice_value], ax ; 0x9185
process_npc_dialog_response.forward19:
    mov ax, 0                        ; 0x9188
    ret                              ; 0x918b
process_npc_dialog_response.forward20:
    mov word [npc_matched_choice_offset], 0 ; 0x918c
    mov ax, npc_matched_choice_offset ; 0x9192
    push ax                          ; 0x9195
    push word [bp + 4]               ; 0x9196
    call find_npc_choice_text_prefix ; 0x9199
    add sp, byte 4                   ; 0x919c
    mov word [bp - 2], ax            ; 0x919f
    cmp ax, strict word 0xffff       ; 0x91a2
    jne short process_npc_dialog_response.forward21 ; 0x91a5
    jmp near process_npc_dialog_response.forward30 ; 0x91a7
process_npc_dialog_response.forward21:
    cmp word [npc_dialog_mode], byte 4 ; 0x91aa
    jne short process_npc_dialog_response.forward23 ; 0x91af
    mov word [npc_dialog_response_active], 1 ; 0x91b1
    cmp word [bp - 2], byte 0        ; 0x91b7
    jne short process_npc_dialog_response.forward22 ; 0x91bb
    mov word [npc_dialog_choice_value_a], 0 ; 0x91bd
process_npc_dialog_response.forward22:
    jmp short process_npc_dialog_response.forward26 ; 0x91c3
process_npc_dialog_response.forward23:
    cmp word [npc_dialog_mode], byte 1 ; 0x91c5
    jne short process_npc_dialog_response.forward25 ; 0x91ca
    cmp word [bp - 2], byte 0        ; 0x91cc
    jne short process_npc_dialog_response.forward24 ; 0x91d0
    mov word [npc_dialog_choice_value_b], 0 ; 0x91d2
process_npc_dialog_response.forward24:
    jmp short process_npc_dialog_response.forward26 ; 0x91d8
process_npc_dialog_response.forward25:
    cmp word [npc_dialog_mode], byte 6 ; 0x91da
    jne short process_npc_dialog_response.forward26 ; 0x91df
    cmp word [bp - 2], byte 0        ; 0x91e1
    jne short process_npc_dialog_response.forward26 ; 0x91e5
    mov word [npc_dialog_choice_value_b], 0 ; 0x91e7
process_npc_dialog_response.forward26:
    cmp word [bp - 2], byte 0        ; 0x91ed
    jne short process_npc_dialog_response.forward27 ; 0x91f1
    mov word [npc_dialog_latest_choice], ax ; 0x91f3
process_npc_dialog_response.forward27:
    mov ax, word [npc_dialog_choice_index] ; 0x91f6
    cmp ax, strict word 0xffff       ; 0x91f9
    je short process_npc_dialog_response.forward28 ; 0x91fc
    cmp word [npc_dialog_choice_index], byte 0 ; 0x91fe
    je short process_npc_dialog_response.forward28 ; 0x9203
    cmp ax, word [npc_first_choice_count] ; 0x9205
    jne short process_npc_dialog_response.forward29 ; 0x9209
process_npc_dialog_response.forward28:
    mov ax, word [bp - 2]            ; 0x920b
    mov word [npc_dialog_choice_index], ax ; 0x920e
    mov ax, word [npc_matched_choice_offset] ; 0x9211
    mov word [npc_dialog_choice_auxiliary], ax ; 0x9214
process_npc_dialog_response.forward29:
    mov ax, 0                        ; 0x9217
    ret                              ; 0x921a
process_npc_dialog_response.forward30:
    mov ax, 5                        ; 0x921b
    push ax                          ; 0x921e
    mov ax, 7                        ; 0x921f
    push ax                          ; 0x9222
    push word [bp + 4]               ; 0x9223
    call find_npc_dialog_option      ; 0x9226
    add sp, byte 6                   ; 0x9229
    mov word [bp - 2], ax            ; 0x922c
    cmp ax, strict word 0xffff       ; 0x922f
    je short process_npc_dialog_response.forward34 ; 0x9232
    cmp word [npc_dialog_mode], byte 4 ; 0x9234
    jne short process_npc_dialog_response.forward31 ; 0x9239
    mov word [npc_dialog_response_active], 1 ; 0x923b
    mov word [npc_dialog_choice_value_a], ax ; 0x9241
    jmp short process_npc_dialog_response.forward33 ; 0x9244
process_npc_dialog_response.forward31:
    cmp word [npc_dialog_mode], byte 1 ; 0x9246
    jne short process_npc_dialog_response.forward32 ; 0x924b
    mov ax, word [bp - 2]            ; 0x924d
    mov word [npc_dialog_choice_value_b], ax ; 0x9250
    jmp short process_npc_dialog_response.forward33 ; 0x9253
process_npc_dialog_response.forward32:
    cmp word [npc_dialog_mode], byte 6 ; 0x9255
    jne short process_npc_dialog_response.forward33 ; 0x925a
    mov ax, word [bp - 2]            ; 0x925c
    mov word [npc_dialog_choice_value_b], ax ; 0x925f
process_npc_dialog_response.forward33:
    mov ax, word [bp - 2]            ; 0x9262
    mov word [npc_dialog_latest_choice], ax ; 0x9265
    mov ax, 7                        ; 0x9268
    ret                              ; 0x926b
process_npc_dialog_response.forward34:
    cmp word [npc_dialog_mode], byte 6 ; 0x926c
    jne short process_npc_dialog_response.forward35 ; 0x9271
    mov word [npc_dialog_primary_choice], 0xffff ; 0x9273
process_npc_dialog_response.forward35:
    mov ax, 0xa                      ; 0x9279
    ret                              ; 0x927c
