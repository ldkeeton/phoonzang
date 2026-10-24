; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [panel_redraw_ticks], 5 ; 0x0014
    mov word [show_melee_result], 0  ; 0x001a
    mov word [npc_melee], 0          ; 0x0020
    mov word [battle_setup_done], 0  ; 0x0026
    cmp word [game_state], byte 0x0a ; 0x002c
    jne short @..ovmain.l1           ; 0x0031
    call start_melee_battle          ; 0x0033
@..ovmain.l1:
    cmp word [game_state], byte 0x0e ; 0x0036
    jne short @..ovmain.l2           ; 0x003b
    call advance_melee_turn          ; 0x003d
@..ovmain.l2:
    cmp word [game_state], byte 0x0b ; 0x0040
    jne short @..ovmain.l3           ; 0x0045
    call redraw_party_before_battle  ; 0x0047
@..ovmain.l3:
    mov ax, 0                        ; 0x004a
    ret                              ; 0x004d
