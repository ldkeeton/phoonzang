; auto-generated
redraw_party_before_battle:
    mov ax, 0xfffe                   ; 0x36b8
    call aztec_csav                  ; 0x36bb
    mov word [panel_redraw_ticks], 5 ; 0x36be
    mov word [bp - 0x0002], 0        ; 0x36c4
    jmp short @..redraw_party_before_battle.l2 ; 0x36c9
@..redraw_party_before_battle.l1:
    push word [bp - 0x0002]          ; 0x36cb
    call copy_member_party_record    ; 0x36ce
    pop cx                           ; 0x36d1
    mov ax, 1                        ; 0x36d2
    push ax                          ; 0x36d5
    push word [bp - 0x0002]          ; 0x36d6
    call draw_active_member_panel    ; 0x36d9
    add sp, byte 4                   ; 0x36dc
    inc word [bp - 0x0002]           ; 0x36df
@..redraw_party_before_battle.l2:
    mov ax, word [bp - 0x0002]       ; 0x36e2
    cmp ax, word [party_char_count]  ; 0x36e5
    jl short @..redraw_party_before_battle.l1 ; 0x36e9
    call fill_row_action_slots       ; 0x36eb
    mov ax, 0                        ; 0x36ee
    push ax                          ; 0x36f1
    call play_action_overlays        ; 0x36f2
    pop cx                           ; 0x36f5
    call run_party_screen_animation  ; 0x36f6
    cmp word [battle_setup_done], byte 0 ; 0x36f9
    jne short @..redraw_party_before_battle.l3 ; 0x36fe
    call party_screen                ; 0x3700
@..redraw_party_before_battle.l3:
    mov word [battle_setup_done], 0  ; 0x3703
    mov word [game_state], 0xc       ; 0x3709
    ret                              ; 0x370f
