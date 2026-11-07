; auto-generated
wait_for_npc_screen_animation:
    mov ax, 0                        ; 0x10b6
    call $csav                  ; 0x10b9
.back1:
    cmp word [party_screen_animation_state], byte -2 ; 0x10bc
    je short .return1                ; 0x10c1
    call step_npc_screen_animation   ; 0x10c3
    jmp short .back1                 ; 0x10c6
.return1:
    ret                              ; 0x10c8
