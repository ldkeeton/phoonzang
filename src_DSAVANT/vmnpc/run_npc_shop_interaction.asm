; auto-generated
run_npc_shop_interaction:
    mov ax, 0                        ; 0x7400
    call $csav                  ; 0x7403
    mov word [npc_dialog_shop_mode], 3 ; 0x7406
    mov word [npc_area_bottom], 0x8f ; 0x740c
    mov word [npc_negotiation_tactic], 3 ; 0x7412
    call prepare_npc_interaction_screen ; 0x7418
    call prepare_npc_encounter_scene ; 0x741b
    call build_npc_item_list_for_shop ; 0x741e
    call init_npc_dialog_text        ; 0x7421
    call draw_npc_gold_frame         ; 0x7424
    call run_npc_dialog_turn         ; 0x7427
    call restore_npc_interaction_screen ; 0x742a
    ret                              ; 0x742d
