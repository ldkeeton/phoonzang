; auto-generated
check_at_saved_location:
    mov ax, 0
    call aztec_csav
    mov word [save_location_flag], 0
    mov ax, word [game_state_arg]
    cmp ax, word [saved_level]
    jne short .return1
    mov ax, word [party_map_piece]
    cmp ax, word [saved_map_piece]
    jne short .return1
    mov ax, word [party_cell_x]
    cmp ax, word [saved_cell_x]
    jne short .return1
    mov ax, word [party_cell_y]
    cmp ax, word [saved_cell_y]
    jne short .return1
    mov word [save_location_flag], 1
.return1:
    ret
