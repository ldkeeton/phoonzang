; auto-generated
process_maze_object_events:
    mov ax, 0                        ; 0x8867
    call aztec_csav                  ; 0x886a
    mov word [object_search_active], 1 ; 0x886d
    mov word [found_object_owner], 0xffff ; 0x8873
.back1:
    push word [party_region]         ; 0x8879
    push word [party_map_piece]      ; 0x887d
    push word [party_cell_y]         ; 0x8881
    push word [party_cell_x]         ; 0x8885
    call find_object_at              ; 0x8889
    add sp, byte 8                   ; 0x888c
    mov word [party_region], ax      ; 0x888f
    cmp ax, strict word 0xffff       ; 0x8892
    jne short .forward1              ; 0x8895
    jmp near .return1                ; 0x8897
.forward1:
    mov word [region_step_flag], 1   ; 0x889a
    mov bx, word [maze_tables]       ; 0x88a0
    mov si, ax                       ; 0x88a4
    mov al, byte [bx + si + 0x5a0]   ; 0x88a6
    sub ah, ah                       ; 0x88aa
    jmp near .forward5               ; 0x88ac
jumptable_8978_case_1:
    call run_region_keyed_action     ; 0x88af
    jmp near jumptable_8978_case_0   ; 0x88b2
jumptable_8978_case_2:
    cmp word [location_changed], byte 0 ; 0x88b5
    je short process_maze_object_events.forward2 ; 0x88ba
    call show_region_message         ; 0x88bc
process_maze_object_events.forward2:
    jmp near jumptable_8978_case_0   ; 0x88bf
jumptable_8978_case_3:
    call check_region_trigger_bit_14 ; 0x88c2
    jmp near jumptable_8978_case_0   ; 0x88c5
jumptable_8978_case_4:
    call advance_maze_region         ; 0x88c8
    jmp near jumptable_8978_case_0   ; 0x88cb
jumptable_8978_case_5:
    call check_region_trigger_bit_2  ; 0x88ce
    jmp near jumptable_8978_case_0   ; 0x88d1
jumptable_8978_case_6:
    call process_region_flag_actions ; 0x88d4
    jmp near jumptable_8978_case_0   ; 0x88d7
jumptable_8978_case_7:
    call collect_region_flag_bits    ; 0x88da
    jmp near jumptable_8978_case_0   ; 0x88dd
jumptable_8978_case_8:
    mov ax, word [party_region]      ; 0x88e0
    shl ax, 1                        ; 0x88e3
    mov si, ax                       ; 0x88e5
    mov bx, word [maze_tables]       ; 0x88e7
    cmp word [bx + si], byte 0       ; 0x88eb
    jle short process_maze_object_events.forward3 ; 0x88ee
    mov ax, 0                        ; 0x88f0
    push ax                          ; 0x88f3
    push word [bx + si]              ; 0x88f4
    call show_maze_message_sequence  ; 0x88f6
    add sp, byte 4                   ; 0x88f9
    jmp short process_maze_object_events.forward4 ; 0x88fc
process_maze_object_events.forward3:
    mov ax, 1                        ; 0x88fe
    push ax                          ; 0x8901
    mov ax, 0xb                      ; 0x8902
    push ax                          ; 0x8905
    mov ax, word [party_region]      ; 0x8906
    shl ax, 1                        ; 0x8909
    mov si, ax                       ; 0x890b
    mov bx, word [maze_tables]       ; 0x890d
    push word [bx + si + 0x3c0]      ; 0x8911
    call get_bits                    ; 0x8915
    add sp, byte 6                   ; 0x8918
    test ax, ax                      ; 0x891b
    je short process_maze_object_events.forward4 ; 0x891d
    call update_party_status_animation ; 0x891f
process_maze_object_events.forward4:
    jmp near jumptable_8978_case_0   ; 0x8922
jumptable_8978_case_9:
    mov word [game_state], 0x1d      ; 0x8925
    jmp near jumptable_8978_case_0   ; 0x892b
jumptable_8978_case_10:
    call handle_region_flag_event    ; 0x892e
    jmp near jumptable_8978_case_0   ; 0x8931
jumptable_8978_case_11:
    call play_region_spell_sound     ; 0x8934
    jmp near jumptable_8978_case_0   ; 0x8937
jumptable_8978_case_12:
    mov word [game_state], 0x1c      ; 0x893a
    jmp near jumptable_8978_case_0   ; 0x8940
jumptable_8978_case_13:
    call handle_region_level_event   ; 0x8943
    jmp short jumptable_8978_case_0  ; 0x8946
jumptable_8978_case_14:
    call update_region_quest_map_flags ; 0x8948
    jmp short jumptable_8978_case_0  ; 0x894b
jumptable_8978_case_15:
    jmp short jumptable_8978_case_0  ; 0x894d
jumptable_8978_case_16:
    call handle_region_object_search ; 0x894f
    jmp short jumptable_8978_case_0  ; 0x8952
jumptable_8978_case_17:
    call handle_region_bit_8_event   ; 0x8954
    jmp short jumptable_8978_case_0  ; 0x8957
jumptable_8978_case_18:
    call store_party_region_level    ; 0x8959
    jmp short jumptable_8978_case_0  ; 0x895c
jumptable_8978_case_19:
    jmp short jumptable_8978_case_0  ; 0x895e
jumptable_8978_case_20:
    jmp short jumptable_8978_case_0  ; 0x8960
jumptable_8978_case_21:
    call decode_region_map_location  ; 0x8962
    jmp short jumptable_8978_case_0  ; 0x8965
jumptable_8978_case_22:
    call wait_then_handle_region_event ; 0x8967
    jmp short jumptable_8978_case_0  ; 0x896a
jumptable_8978_case_23:
    call handle_region_flag_3_event  ; 0x896c
    jmp short jumptable_8978_case_0  ; 0x896f
jumptable_8978_case_24:
    call handle_region_flag_2_event  ; 0x8971
    jmp short jumptable_8978_case_0  ; 0x8974
jumptable_8978_case_25:
    jmp short jumptable_8978_case_0  ; 0x8976
jumptable_8978:
    dw jumptable_8978_case_0 - IMAGE_BASE + __zres_end ; 0x8978
    dw jumptable_8978_case_1 - IMAGE_BASE + __zres_end ; 0x897a
    dw jumptable_8978_case_2 - IMAGE_BASE + __zres_end ; 0x897c
    dw jumptable_8978_case_3 - IMAGE_BASE + __zres_end ; 0x897e
    dw jumptable_8978_case_4 - IMAGE_BASE + __zres_end ; 0x8980
    dw jumptable_8978_case_5 - IMAGE_BASE + __zres_end ; 0x8982
    dw jumptable_8978_case_6 - IMAGE_BASE + __zres_end ; 0x8984
    dw jumptable_8978_case_7 - IMAGE_BASE + __zres_end ; 0x8986
    dw jumptable_8978_case_8 - IMAGE_BASE + __zres_end ; 0x8988
    dw jumptable_8978_case_9 - IMAGE_BASE + __zres_end ; 0x898a
    dw jumptable_8978_case_10 - IMAGE_BASE + __zres_end ; 0x898c
    dw jumptable_8978_case_11 - IMAGE_BASE + __zres_end ; 0x898e
    dw jumptable_8978_case_12 - IMAGE_BASE + __zres_end ; 0x8990
    dw jumptable_8978_case_13 - IMAGE_BASE + __zres_end ; 0x8992
    dw jumptable_8978_case_14 - IMAGE_BASE + __zres_end ; 0x8994
    dw jumptable_8978_case_15 - IMAGE_BASE + __zres_end ; 0x8996
    dw jumptable_8978_case_16 - IMAGE_BASE + __zres_end ; 0x8998
    dw jumptable_8978_case_17 - IMAGE_BASE + __zres_end ; 0x899a
    dw jumptable_8978_case_18 - IMAGE_BASE + __zres_end ; 0x899c
    dw jumptable_8978_case_19 - IMAGE_BASE + __zres_end ; 0x899e
    dw jumptable_8978_case_20 - IMAGE_BASE + __zres_end ; 0x89a0
    dw jumptable_8978_case_21 - IMAGE_BASE + __zres_end ; 0x89a2
    dw jumptable_8978_case_22 - IMAGE_BASE + __zres_end ; 0x89a4
    dw jumptable_8978_case_23 - IMAGE_BASE + __zres_end ; 0x89a6
    dw jumptable_8978_case_24 - IMAGE_BASE + __zres_end ; 0x89a8
    dw jumptable_8978_case_25 - IMAGE_BASE + __zres_end ; 0x89aa
process_maze_object_events.forward5:
    cmp ax, strict word 0x1a         ; 0x89ac
    jae short jumptable_8978_case_0  ; 0x89af
    xchg bx, ax                      ; 0x89b1
    shl bx, 1                        ; 0x89b2
    jmp [cs:bx + jumptable_8978 - IMAGE_BASE + __zres_end] ; 0x89b4
jumptable_8978_case_0:
    cmp word [game_state], byte 5    ; 0x89b9
    je short process_maze_object_events.forward7 ; 0x89be
    ret                              ; 0x89c0
process_maze_object_events.forward7:
    cmp word [region_step_flag], byte 1 ; 0x89c1
    jne short process_maze_object_events.forward8 ; 0x89c6
    inc word [party_region]          ; 0x89c8
process_maze_object_events.forward8:
    jmp near process_maze_object_events.back1 ; 0x89cc
process_maze_object_events.return1:
    ret                              ; 0x89cf
