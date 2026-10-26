; auto-generated
move_party_to_dest:
    mov ax, 0xfffc                   ; 0x72a6
    call aztec_csav                  ; 0x72a9
    call check_at_saved_location     ; 0x72ac
    mov ax, word [bp + 4]            ; 0x72af
    shl ax, 1                        ; 0x72b2
    mov si, ax                       ; 0x72b4
    mov bx, word [maze_tables]       ; 0x72b6
    mov ax, word [bx + si + maze_tables_rec.f_03c0] ; 0x72ba
    mov word [bp - 2], ax            ; 0x72be
    mov ax, 2                        ; 0x72c1
    push ax                          ; 0x72c4
    mov ax, 0xa                      ; 0x72c5
    push ax                          ; 0x72c8
    push word [bp - 2]               ; 0x72c9
    call get_bits                    ; 0x72cc
    add sp, byte 6                   ; 0x72cf
    push ax                          ; 0x72d2
    call mark_region_bits            ; 0x72d3
    pop cx                           ; 0x72d6
    mov ax, 3                        ; 0x72d7
    push ax                          ; 0x72da
    mov ax, 0                        ; 0x72db
    push ax                          ; 0x72de
    push word [bp - 2]               ; 0x72df
    call get_bits                    ; 0x72e2
    add sp, byte 6                   ; 0x72e5
    mov word [party_cell_x], ax      ; 0x72e8
    mov ax, 3                        ; 0x72eb
    push ax                          ; 0x72ee
    push ax                          ; 0x72ef
    push word [bp - 2]               ; 0x72f0
    call get_bits                    ; 0x72f3
    add sp, byte 6                   ; 0x72f6
    mov word [party_cell_y], ax      ; 0x72f9
    mov ax, 4                        ; 0x72fc
    push ax                          ; 0x72ff
    mov ax, 6                        ; 0x7300
    push ax                          ; 0x7303
    push word [bp - 2]               ; 0x7304
    call get_bits                    ; 0x7307
    add sp, byte 6                   ; 0x730a
    mov word [party_map_piece], ax   ; 0x730d
    mov bx, word [maze_tables]       ; 0x7310
    mov si, word [bp + 4]            ; 0x7314
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x7317
    sub ah, ah                       ; 0x731b
    mov word [bp - 4], ax            ; 0x731d
    mov word [dest_alt_arg], 0       ; 0x7320
    cmp ax, strict word 0x63         ; 0x7326
    jne short .forward1              ; 0x7329
    shl si, 1                        ; 0x732b
    mov ax, word [bx + si + 0x1e0]   ; 0x732d
    mov word [dest_alt_arg], ax      ; 0x7331
    mov word [bp - 4], 0xffff        ; 0x7334
.forward1:
    cmp word [save_location_flag], byte 0 ; 0x7339
    je short .forward2               ; 0x733e
    mov ax, word [bp - 4]            ; 0x7340
    mov word [saved_level], ax       ; 0x7343
    mov ax, word [party_map_piece]   ; 0x7346
    mov word [saved_map_piece], ax   ; 0x7349
    mov ax, word [party_cell_x]      ; 0x734c
    mov word [saved_cell_x], ax      ; 0x734f
    mov ax, word [party_cell_y]      ; 0x7352
    mov word [saved_cell_y], ax      ; 0x7355
.forward2:
    mov bx, word [maze_data]         ; 0x7358
    mov si, word [party_map_piece]   ; 0x735c
    mov al, byte [bx + si + 0x490]   ; 0x7360
    sub ah, ah                       ; 0x7364
    add ax, word [party_cell_x]      ; 0x7366
    mov word [party_world_x], ax     ; 0x736a
    mov al, byte [bx + si + 0x4a0]   ; 0x736d
    sub ah, ah                       ; 0x7371
    add ax, word [party_cell_y]      ; 0x7373
    mov word [party_world_y], ax     ; 0x7377
    mov bx, word [maze_tables]       ; 0x737a
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x737e
    sub ah, ah                       ; 0x7382
    mov word [party_region], ax      ; 0x7384
    mov word [region_step_flag], 0   ; 0x7387
    mov ax, word [bp - 4]            ; 0x738d
    cmp ax, word [game_state_arg]    ; 0x7390
    jne short .forward3              ; 0x7394
    call redraw_maze_view            ; 0x7396
    jmp short .forward4              ; 0x7399
.forward3:
    call save_level_state            ; 0x739b
    push word [bp - 4]               ; 0x739e
    call enter_level                 ; 0x73a1
    pop cx                           ; 0x73a4
    cmp word [game_state_arg], byte 0 ; 0x73a5
    jl short .forward4               ; 0x73aa
    call redraw_maze_view            ; 0x73ac
.forward4:
    mov word [location_changed], 1   ; 0x73af
    ret                              ; 0x73b5
