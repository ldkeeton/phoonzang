; auto-generated
advance_melee_turn:
    mov ax, 0xffaa                   ; 0x31a1
    call aztec_csav                  ; 0x31a4
    call advance_melee_item_slots    ; 0x31a7
    call api_idx_0014_LJNT           ; 0x31aa
    mov ax, 6                        ; 0x31ad
    push ax                          ; 0x31b0
    call advance_member_item_actions ; 0x31b1
    pop cx                           ; 0x31b4
    call spend_action_slot_charge    ; 0x31b5
    mov word [bp - 0x0002], 0        ; 0x31b8
    jmp short @..advance_melee_turn.l4 ; 0x31bd
@..advance_melee_turn.l1:
    mov ax, 0x2c                     ; 0x31bf
    imul word [bp - 0x0002]          ; 0x31c2
    mov si, ax                       ; 0x31c5
    mov bx, word [party_char]        ; 0x31c7
    cmp byte [bx + si + member_rec.f_001f], 1 ; 0x31cb
    jb short @..advance_melee_turn.l2 ; 0x31cf
    mov al, byte [bx + si + 0x1f]    ; 0x31d1
    sub ah, ah                       ; 0x31d4
    cmp ax, word [party_member_count] ; 0x31d6
    jle short @..advance_melee_turn.l3 ; 0x31da
@..advance_melee_turn.l2:
    mov byte [bx + si + 0x1f], 1     ; 0x31dc
@..advance_melee_turn.l3:
    inc word [bp - 0x0002]           ; 0x31e0
@..advance_melee_turn.l4:
    mov ax, word [bp - 0x0002]       ; 0x31e3
    cmp ax, word [party_char_count]  ; 0x31e6
    jl short @..advance_melee_turn.l1 ; 0x31ea
    mov ax, 1                        ; 0x31ec
    push ax                          ; 0x31ef
    call restore_areas_redraw_glyph  ; 0x31f0
    pop cx                           ; 0x31f3
    cmp word [party_screen_done], byte 1 ; 0x31f4
    je short @..advance_melee_turn.l5 ; 0x31f9
    jmp near @..advance_melee_turn.l15 ; 0x31fb
@..advance_melee_turn.l5:
    mov word [bp - 0x0002], 0        ; 0x31fe
    jmp near @..advance_melee_turn.l13 ; 0x3203
@..advance_melee_turn.l6:
    cmp word [party_return_state], byte 0x0f ; 0x3206
    je short @..advance_melee_turn.l7 ; 0x320b
    jmp near @..advance_melee_turn.l11 ; 0x320d
@..advance_melee_turn.l7:
    cmp word [e1_event_flag], byte 1 ; 0x3210
    je short @..advance_melee_turn.l8 ; 0x3215
    jmp near @..advance_melee_turn.l11 ; 0x3217
@..advance_melee_turn.l8:
    cmp word [character_record_index], strict word 0xe1 ; 0x321a
    je short @..advance_melee_turn.l9 ; 0x3220
    jmp near @..advance_melee_turn.l11 ; 0x3222
@..advance_melee_turn.l9:
    mov ax, 0x2c                     ; 0x3225
    imul word [bp - 0x0002]          ; 0x3228
    mov si, ax                       ; 0x322b
    mov bx, word [party_char]        ; 0x322d
    mov byte [bx + si + member_rec.item_state], 0 ; 0x3231
    mov ax, 0x2c                     ; 0x3235
    imul word [bp - 0x0002]          ; 0x3238
    mov si, ax                       ; 0x323b
    mov bx, word [party_char]        ; 0x323d
    mov ax, word [bx + si + member_rec.item_timer_max] ; 0x3241
    mov word [bx + si + member_rec.item_timer], ax ; 0x3244
    mov ax, 0x2c                     ; 0x3247
    imul word [bp - 0x0002]          ; 0x324a
    mov si, ax                       ; 0x324d
    mov bx, word [party_char]        ; 0x324f
    mov ax, word [bx + si + member_rec.item_charge_cap] ; 0x3253
    mov word [bx + si + member_rec.item_charges], ax ; 0x3256
    mov word [bp - 0x0004], 0        ; 0x3259
@..advance_melee_turn.l10:
    mov ax, 0x2c                     ; 0x325e
    imul word [bp - 0x0002]          ; 0x3261
    add ax, word [bp - 0x0004]       ; 0x3264
    mov si, ax                       ; 0x3267
    mov bx, word [party_char]        ; 0x3269
    mov byte [bx + si + member_rec.item_counter], 0 ; 0x326d
    inc word [bp - 0x0004]           ; 0x3271
    mov ax, word [bp - 0x0004]       ; 0x3274
    cmp ax, strict word 0xa          ; 0x3277
    jl short @..advance_melee_turn.l10 ; 0x327a
    mov ax, 0x248                    ; 0x327c
    imul word [bp - 0x0002]          ; 0x327f
    add ax, party_records            ; 0x3282
    push ax                          ; 0x3285
    lea ax, word [bp - 0x0056]       ; 0x3286
    push ax                          ; 0x3289
    call aztec_strcpy                ; 0x328a
    add sp, byte 4                   ; 0x328d
    lea ax, word [bp - 0x0056]       ; 0x3290
    push ax                          ; 0x3293
    call titlecase_string            ; 0x3294
    pop cx                           ; 0x3297
    lea ax, word [bp - 0x0056]       ; 0x3298
    push ax                          ; 0x329b
    call aztec_strlen                ; 0x329c
    pop cx                           ; 0x329f
    mov word [bp - 0x0006], ax       ; 0x32a0
    mov bx, ax                       ; 0x32a3
    add bx, bp                       ; 0x32a5
    mov byte [bx - 0x0056], 0x20     ; 0x32a7
    lea cx, word [bp - 0x0055]       ; 0x32ab
    add ax, cx                       ; 0x32ae
    push ax                          ; 0x32b0
    mov ax, MSG_BLESSED_AGAIN        ; 0x32b1
    push ax                          ; 0x32b4
    call load_message_string         ; 0x32b5
    add sp, byte 4                   ; 0x32b8
    push word [bp - 0x0002]          ; 0x32bb
    call copy_member_party_record    ; 0x32be
    pop cx                           ; 0x32c1
    mov ax, 1                        ; 0x32c2
    push ax                          ; 0x32c5
    push word [bp - 0x0002]          ; 0x32c6
    call draw_party_member_panel     ; 0x32c9
    add sp, byte 4                   ; 0x32cc
    mov ax, 0xa                      ; 0x32cf
    push ax                          ; 0x32d2
    lea ax, word [bp - 0x0056]       ; 0x32d3
    push ax                          ; 0x32d6
    call show_centered_message       ; 0x32d7
    add sp, byte 4                   ; 0x32da
    push word [message_delay]        ; 0x32dd
    call wait_ticks_with_events      ; 0x32e1
    pop cx                           ; 0x32e4
    jmp short @..advance_melee_turn.l12 ; 0x32e5
@..advance_melee_turn.l11:
    push word [bp - 0x0002]          ; 0x32e7
    call copy_member_party_record    ; 0x32ea
    pop cx                           ; 0x32ed
    mov ax, 1                        ; 0x32ee
    push ax                          ; 0x32f1
    push word [bp - 0x0002]          ; 0x32f2
    call draw_party_member_panel     ; 0x32f5
    add sp, byte 4                   ; 0x32f8
@..advance_melee_turn.l12:
    inc word [bp - 0x0002]           ; 0x32fb
@..advance_melee_turn.l13:
    mov ax, word [bp - 0x0002]       ; 0x32fe
    cmp ax, word [party_char_count]  ; 0x3301
    jge short @..advance_melee_turn.l14 ; 0x3305
    jmp near @..advance_melee_turn.l6 ; 0x3307
@..advance_melee_turn.l14:
    call close_party_screen          ; 0x330a
    mov ax, word [party_return_state] ; 0x330d
    mov word [game_state], ax        ; 0x3310
    jmp short @..advance_melee_turn.l16 ; 0x3313
@..advance_melee_turn.l15:
    mov word [game_state], 0xb       ; 0x3315
@..advance_melee_turn.l16:
    ret                              ; 0x331b
