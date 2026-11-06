; auto-generated
dispatch_npc_effect_message:
    mov ax, 0                        ; 0x9c7a
    call aztec_csav                  ; 0x9c7d
    mov ax, npc_effect_message_buffer ; 0x9c80
    push ax                          ; 0x9c83
    push word [bp + 4]               ; 0x9c84
    call load_message_string         ; 0x9c87
    add sp, byte 4                   ; 0x9c8a
    mov ax, npc_substitution_text    ; 0x9c8d
    push ax                          ; 0x9c90
    push word [bp + 6]               ; 0x9c91
    call load_message_string         ; 0x9c94
    add sp, byte 4                   ; 0x9c97
    cmp byte [npc_effect_message_buffer], 0 ; 0x9c9a
    jne short .forward1              ; 0x9c9f
    mov ax, 0x9d10                   ; 0x9ca1
    push ax                          ; 0x9ca4
    mov ax, MSG_I_DON_T_KNOW_1616    ; 0x9ca5
    push ax                          ; 0x9ca8
    call append_npc_message_text     ; 0x9ca9
    add sp, byte 4                   ; 0x9cac
    jmp short .return1               ; 0x9caf
.forward1:
    cmp byte [npc_effect_message_buffer], 0x24 ; 0x9cb1
    jne short .forward3              ; 0x9cb6
    mov al, byte [npc_effect_message_value] ; 0x9cb8
    sub ah, ah                       ; 0x9cbb
    push ax                          ; 0x9cbd
    push word [npc_member_index]     ; 0x9cbe
    call run_npc_action_record       ; 0x9cc2
    add sp, byte 4                   ; 0x9cc5
    cmp ax, strict word 1            ; 0x9cc8
    jne short .forward2              ; 0x9ccb
    mov word [npc_response_flag_1], 1 ; 0x9ccd
.forward2:
    jmp short .return1               ; 0x9cd3
.forward3:
    cmp byte [npc_effect_message_buffer], 0x26 ; 0x9cd5
    jne short .forward4              ; 0x9cda
    mov al, byte [npc_effect_message_value] ; 0x9cdc
    sub ah, ah                       ; 0x9cdf
    dec ax                           ; 0x9ce1
    push ax                          ; 0x9ce2
    call show_faction_attitude_message ; 0x9ce3
    pop cx                           ; 0x9ce6
    jmp short .return1               ; 0x9ce7
.forward4:
    cmp byte [npc_effect_message_buffer], 0x2d ; 0x9ce9
    jne short .forward5              ; 0x9cee
    mov al, byte [npc_effect_message_value] ; 0x9cf0
    sub ah, ah                       ; 0x9cf3
    sub word [bp + 4], ax            ; 0x9cf5
.forward5:
    mov ax, 0x9102                   ; 0x9cf8
    push ax                          ; 0x9cfb
    push word [bp + 4]               ; 0x9cfc
    call append_npc_message_text     ; 0x9cff
    add sp, byte 4                   ; 0x9d02
.return1:
    ret                              ; 0x9d05
