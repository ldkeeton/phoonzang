; auto-generated
show_maze_message_sequence:
    mov ax, 0xfefa                   ; 0x6f14
    call aztec_csav                  ; 0x6f17
    mov word [maze_message_state], 0 ; 0x6f1a
    mov ax, 0xc6                     ; 0x6f20
    push ax                          ; 0x6f23
    mov ax, 0x109                    ; 0x6f24
    push ax                          ; 0x6f27
    mov ax, 0x92                     ; 0x6f28
    push ax                          ; 0x6f2b
    mov ax, 0x37                     ; 0x6f2c
    push ax                          ; 0x6f2f
    call call_save_area              ; 0x6f30
    add sp, byte 8                   ; 0x6f33
    mov word [saved_area_a_hi], dx   ; 0x6f36
    mov word [saved_area_a], ax      ; 0x6f3a
    call restore_area_a_draw_glyph   ; 0x6f3d
    mov word [maze_message_previous_x], 0x44 ; 0x6f40
    mov word [maze_message_row], 0   ; 0x6f46
    mov byte [maze_message_glyph_buffer], 0 ; 0x6f4c
.back1:
    lea ax, word [bp - 0x105]        ; 0x6f51
    push ax                          ; 0x6f55
    push word [bp + 4]               ; 0x6f56
    call load_message_string         ; 0x6f59
    add sp, byte 4                   ; 0x6f5c
    cmp word [message_not_found], byte 0 ; 0x6f5f
    jne short .forward2              ; 0x6f64
    cmp word [maze_message_state], byte 0 ; 0x6f66
    jne short .forward1              ; 0x6f6b
    lea ax, word [bp - 0x105]        ; 0x6f6d
    push ax                          ; 0x6f71
    call process_scene_message_words ; 0x6f72
    pop cx                           ; 0x6f75
.forward1:
    inc word [bp + 4]                ; 0x6f76
.forward2:
    cmp word [message_not_found], byte 0 ; 0x6f79
    je short .back1                  ; 0x6f7e
    cmp byte [maze_message_glyph_buffer], 0 ; 0x6f80
    je short .forward3               ; 0x6f85
    mov ax, maze_message_glyph_buffer ; 0x6f87
    push ax                          ; 0x6f8a
    call flush_glyph_buffer          ; 0x6f8b
    pop cx                           ; 0x6f8e
.forward3:
    push word [bp + 6]               ; 0x6f8f
    call wait_for_maze_input_or_refresh ; 0x6f92
    pop cx                           ; 0x6f95
    mov ax, 1                        ; 0x6f96
    push ax                          ; 0x6f99
    push word [saved_area_a_hi]      ; 0x6f9a
    push word [saved_area_a]         ; 0x6f9e
    call call_restore_area           ; 0x6fa2
    add sp, byte 6                   ; 0x6fa5
    mov ax, 0xc6                     ; 0x6fa8
    push ax                          ; 0x6fab
    mov ax, 0x109                    ; 0x6fac
    push ax                          ; 0x6faf
    mov ax, 0x92                     ; 0x6fb0
    push ax                          ; 0x6fb3
    mov ax, 0x37                     ; 0x6fb4
    push ax                          ; 0x6fb7
    call dissolve_or_show_area       ; 0x6fb8
    add sp, byte 8                   ; 0x6fbb
    ret                              ; 0x6fbe
