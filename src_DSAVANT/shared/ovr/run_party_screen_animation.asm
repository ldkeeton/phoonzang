; auto-generated
run_party_screen_animation:
    mov ax, 0
    call $csav
    mov word [party_screen_animation_state], 0xfffe
.back1:
    call step_party_screen_animation
    cmp word [party_screen_animation_state], byte -2
    jne short .back1
    ret
