; auto-generated
loc_IVLM:
    mov ax, 0
    call aztec_csav
    mov ax, word [party_world_x]
    mov word [bss_8f3a], ax
    mov ax, word [party_world_y]
    mov word [bss_8f38], ax
    mov ax, word [party_cell_x]
    mov word [bss_8f36], ax
    mov ax, word [party_cell_y]
    mov word [bss_8f34], ax
    mov ax, word [party_map_piece]
    mov word [bss_8f32], ax
    mov ax, word [game_state_arg]
    mov word [bss_8f3c], ax
    mov ax, word [party_tag]
    mov word [bss_8f30], ax
    ret
