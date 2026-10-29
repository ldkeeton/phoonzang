; auto-generated
configure_story_music:
    mov ax, 0                        ; 0x0b14
    call aztec_csav                  ; 0x0b17
    call stop_and_clear_maze_sounds  ; 0x0b1a
    cmp word [bp + 8], byte 0        ; 0x0b1d
    je short .forward1               ; 0x0b21
    call score_music_enabled         ; 0x0b23
    mov word [story_music_enabled], ax ; 0x0b26
    test ax, ax                      ; 0x0b29
    je short .forward1               ; 0x0b2b
    mov ax, 0                        ; 0x0b2d
    push ax                          ; 0x0b30
    mov ax, 3                        ; 0x0b31
    push ax                          ; 0x0b34
    call load_score_files            ; 0x0b35
    add sp, byte 4                   ; 0x0b38
    mov ax, word [story_score_file_number] ; 0x0b3b
    mov word [story_score_number], ax ; 0x0b3e
    mov ax, 0                        ; 0x0b41
    push ax                          ; 0x0b44
    push word [story_score_number]   ; 0x0b45
    push ax                          ; 0x0b49
    call play_score_at_volume        ; 0x0b4a
    add sp, byte 6                   ; 0x0b4d
    mov word [story_score_volume], ax ; 0x0b50
.forward1:
    mov ax, word [bp + 4]            ; 0x0b53
    mov word [party_entry_mode], ax  ; 0x0b56
    mov ax, word [bp + 6]            ; 0x0b59
    mov word [party_entry_flag], ax  ; 0x0b5c
    mov word [game_state], 0xa       ; 0x0b5f
    ret                              ; 0x0b65
