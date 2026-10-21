; auto-generated
check_at_saved_location:
    mov ax, 0
    call aztec_csav
    mov word [check_at_saved_location.save_location_flag1], 0
    mov ax, word [game_state_arg]
    cmp ax, word [saved_level]
    jne short @..check_at_saved_location.l1
    mov ax, word [party_map_piece]
    cmp ax, word [saved_map_piece]
    jne short @..check_at_saved_location.l1
    mov ax, word [party_cell_x]
    cmp ax, word [saved_cell_x]
    jne short @..check_at_saved_location.l1
    mov ax, word [party_cell_y]
    cmp ax, word [saved_cell_y]
    jne short @..check_at_saved_location.l1
    mov word [check_at_saved_location.save_location_flag1], 1
@..check_at_saved_location.l1:
    ret
