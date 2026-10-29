; auto-generated
loc_IVLM:
    mov ax, 0
    call aztec_csav
    mov ax, word [party_world_x]
    mov word [previous_party_world_x], ax
    mov ax, word [party_world_y]
    mov word [previous_party_world_y], ax
    mov ax, word [party_cell_x]
    mov word [previous_party_cell_x], ax
    mov ax, word [party_cell_y]
    mov word [previous_party_cell_y], ax
    mov ax, word [party_map_piece]
    mov word [previous_party_map_piece], ax
    mov ax, word [game_state_arg]
    mov word [previous_game_state_arg], ax
    mov ax, word [party_tag]
    mov word [previous_party_tag], ax
    ret
