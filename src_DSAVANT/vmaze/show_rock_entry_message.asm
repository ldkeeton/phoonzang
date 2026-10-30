; auto-generated
show_rock_entry_message:
    mov ax, 0xfffe                   ; 0x110e
    call aztec_csav                  ; 0x1111
    call redraw_maze_view            ; 0x1114
    push word [bp + 4]               ; 0x1117
    call show_message                ; 0x111a
    pop cx                           ; 0x111d
    mov word [bp - 2], 0             ; 0x111e
    jmp short .forward1              ; 0x1123
.back1:
    mov ax, 2                        ; 0x1125
    push ax                          ; 0x1128
    push word [bp - 2]               ; 0x1129
    call loc_QTKU                    ; 0x112c
    add sp, byte 4                   ; 0x112f
    inc word [bp - 2]                ; 0x1132
.forward1:
    mov ax, word [bp - 2]            ; 0x1135
    cmp ax, word [party_char_count]  ; 0x1138
    jl short .back1                  ; 0x113c
    mov ax, word [message_delay]     ; 0x113e
    shl ax, 1                        ; 0x1141
    push ax                          ; 0x1143
    call wait_ticks_or_key           ; 0x1144
    pop cx                           ; 0x1147
    mov ax, 0x98                     ; 0x1148
    push ax                          ; 0x114b
    mov ax, 0x13f                    ; 0x114c
    push ax                          ; 0x114f
    mov ax, 0x92                     ; 0x1150
    push ax                          ; 0x1153
    mov ax, 0                        ; 0x1154
    push ax                          ; 0x1157
    call call_show_area              ; 0x1158
    add sp, byte 8                   ; 0x115b
    mov word [game_state], 8         ; 0x115e
    ret                              ; 0x1164
