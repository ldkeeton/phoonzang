; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call $csav                  ; 0x0011
    call manage_character_files      ; 0x0014
    mov word [game_state], 4         ; 0x0017
    mov ax, 0                        ; 0x001d
    ret                              ; 0x0020
