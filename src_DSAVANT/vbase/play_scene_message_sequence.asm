; auto-generated
play_scene_message_sequence:
    mov ax, 0xfefa                   ; 0x6f79
    call aztec_csav                  ; 0x6f7c
    call clear_scene_message_area    ; 0x6f7f
    mov word [scene_running], 0      ; 0x6f82
    mov word [scene_message_previous_x], 0xc ; 0x6f88
    mov word [scene_message_row], 0  ; 0x6f8e
    mov byte [scene_message_line_buffer], 0 ; 0x6f94
.back1:
    lea ax, word [bp - 0x105]        ; 0x6f99
    push ax                          ; 0x6f9d
    push word [bp + 4]               ; 0x6f9e
    call load_message_string         ; 0x6fa1
    add sp, byte 4                   ; 0x6fa4
    cmp word [message_not_found], byte 0 ; 0x6fa7
    jne short .forward1              ; 0x6fac
    lea ax, word [bp - 0x105]        ; 0x6fae
    push ax                          ; 0x6fb2
    call process_scene_message_words ; 0x6fb3
    pop cx                           ; 0x6fb6
    inc word [bp + 4]                ; 0x6fb7
.forward1:
    cmp word [message_not_found], byte 0 ; 0x6fba
    je short .back1                  ; 0x6fbf
    cmp byte [scene_message_line_buffer], 0 ; 0x6fc1
    je short .forward2               ; 0x6fc6
    mov ax, scene_message_line_buffer ; 0x6fc8
    push ax                          ; 0x6fcb
    call draw_scene_message_line     ; 0x6fcc
    pop cx                           ; 0x6fcf
.forward2:
    cmp word [bp + 6], byte 0        ; 0x6fd0
    je short .return1                ; 0x6fd4
    call wait_and_clear_scene_messages ; 0x6fd6
.return1:
    ret                              ; 0x6fd9
