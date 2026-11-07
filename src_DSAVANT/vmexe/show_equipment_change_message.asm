; auto-generated
show_equipment_change_message:
    mov ax, 0                        ; 0x9842
    call $csav                  ; 0x9845
    push word [acting_unit]          ; 0x9848
    push word [acting_group]         ; 0x984c
    mov ax, combat_action_name_buffer ; 0x9850
    push ax                          ; 0x9853
    call copy_combatant_name         ; 0x9854
    add sp, byte 6                   ; 0x9857
    mov ax, combat_action_message_buffer ; 0x985a
    push ax                          ; 0x985d
    mov ax, MSG_CHANGES_EQUIPMENT    ; 0x985e
    push ax                          ; 0x9861
    call load_message_string         ; 0x9862
    add sp, byte 4                   ; 0x9865
    mov byte [combat_action_suffix_buffer], 0 ; 0x9868
    mov ax, 0x43                     ; 0x986d
    push ax                          ; 0x9870
    push ax                          ; 0x9871
    mov ax, 1                        ; 0x9872
    push ax                          ; 0x9875
    mov ax, combat_action_suffix_buffer ; 0x9876
    push ax                          ; 0x9879
    mov ax, combat_action_message_buffer ; 0x987a
    push ax                          ; 0x987d
    mov ax, combat_action_name_buffer ; 0x987e
    push ax                          ; 0x9881
    mov ax, 0                        ; 0x9882
    push ax                          ; 0x9885
    call draw_centered_text_fragments ; 0x9886
    add sp, byte 0xe                 ; 0x9889
    mov ax, word [startup_option]    ; 0x988c
    mov cx, 2                        ; 0x988f
    cwd                              ; 0x9892
    idiv cx                          ; 0x9893
    push ax                          ; 0x9895
    call wait_for_combat_input       ; 0x9896
    pop cx                           ; 0x9899
    ret                              ; 0x989a
