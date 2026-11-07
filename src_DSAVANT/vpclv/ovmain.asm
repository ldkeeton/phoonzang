; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call $csav                  ; 0x0011
    cmp word [game_state], byte 0x16 ; 0x0014
    jne short .forward1              ; 0x0019
    call show_level_up_sequence      ; 0x001b
.forward1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
