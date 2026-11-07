; auto-generated
run_combat_screen_animation:
    mov ax, 0                        ; 0x1a35
    call $csav                  ; 0x1a38
    mov word [party_screen_animation_state], 0xfffe ; 0x1a3b
.back1:
    call step_combat_screen_animation ; 0x1a41
    cmp word [party_screen_animation_state], byte -2 ; 0x1a44
    jne short .back1                 ; 0x1a49
    ret                              ; 0x1a4b
