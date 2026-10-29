; auto-generated
stop_and_clear_maze_sounds:
    mov ax, 0                        ; 0x0140
    call aztec_csav                  ; 0x0143
    mov ax, 1                        ; 0x0146
    push ax                          ; 0x0149
    call call_wait_sound             ; 0x014a
    pop cx                           ; 0x014d
    cmp word [maze_sound_slot_e], byte 0 ; 0x014e
    je short .forward1               ; 0x0153
    mov ax, 0xe                      ; 0x0155
    push ax                          ; 0x0158
    call wait_and_free_sound         ; 0x0159
    pop cx                           ; 0x015c
.forward1:
    cmp word [maze_sound_slot_f], byte 0 ; 0x015d
    je short .forward2               ; 0x0162
    mov ax, 0xf                      ; 0x0164
    push ax                          ; 0x0167
    call wait_and_free_sound         ; 0x0168
    pop cx                           ; 0x016b
.forward2:
    mov word [maze_sound_slot_e], 0  ; 0x016c
    mov word [maze_sound_slot_f], 0  ; 0x0172
    mov word [maze_sound_pair_state], 0 ; 0x0178
    ret                              ; 0x017e
