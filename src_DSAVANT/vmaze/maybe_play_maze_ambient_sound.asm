; auto-generated
maybe_play_maze_ambient_sound:
    mov ax, 0xfffe                   ; 0x0106
    call aztec_csav                  ; 0x0109
    cmp word [game_state_arg], byte 0x17 ; 0x010c
    jne short .forward1              ; 0x0111
    cmp word [party_map_piece], byte 0xf ; 0x0113
    jne short .forward1              ; 0x0118
    ret                              ; 0x011a
.forward1:
    mov ax, 3                        ; 0x011b
    push ax                          ; 0x011e
    call random_below                ; 0x011f
    pop cx                           ; 0x0122
    cmp ax, strict word 2            ; 0x0123
    jne short .forward2              ; 0x0126
    cmp word [maze_sound_slot_f], byte 0 ; 0x0128
    je short .forward2               ; 0x012d
    mov ax, 0xf                      ; 0x012f
    jmp short .forward3              ; 0x0132
.forward2:
    mov ax, 0xe                      ; 0x0134
.forward3:
    mov word [bp - 2], ax            ; 0x0137
    push ax                          ; 0x013a
    call play_sound_effect           ; 0x013b
    pop cx                           ; 0x013e
    ret                              ; 0x013f
