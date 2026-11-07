; auto-generated
wait_for_party_screen_animation:
    mov ax, 0                        ; 0x108d
    call $csav                  ; 0x1090
.back1:
    cmp word [party_screen_animation_state], byte -2 ; 0x1093
    je short .return1                ; 0x1098
    call step_party_screen_animation ; 0x109a
    jmp short .back1                 ; 0x109d
.return1:
    ret                              ; 0x109f
