; auto-generated
show_spell_effect_message:
    mov ax, 0                        ; 0x3aa3
    call aztec_csav                  ; 0x3aa6
    mov ax, word [startup_option]    ; 0x3aa9
    mov cx, 4                        ; 0x3aac
    cwd                              ; 0x3aaf
    idiv cx                          ; 0x3ab0
    push ax                          ; 0x3ab2
    call wait_for_combat_input       ; 0x3ab3
    pop cx                           ; 0x3ab6
    push word [bp + 6]               ; 0x3ab7
    push word [bp + 4]               ; 0x3aba
    mov ax, combat_action_name_buffer ; 0x3abd
    push ax                          ; 0x3ac0
    call copy_combatant_name         ; 0x3ac1
    add sp, byte 6                   ; 0x3ac4
    mov ax, combat_action_message_buffer ; 0x3ac7
    push ax                          ; 0x3aca
    push word [bp + 8]               ; 0x3acb
    call load_message_string         ; 0x3ace
    add sp, byte 4                   ; 0x3ad1
    mov ax, 0                        ; 0x3ad4
    push ax                          ; 0x3ad7
    push word [bp + 0xa]             ; 0x3ad8
    mov ax, 0x43                     ; 0x3adb
    cmp word [bp + 4], byte 0        ; 0x3ade
    jne short .forward1              ; 0x3ae2
    mov ax, 1                        ; 0x3ae4
.forward1:
    push ax                          ; 0x3ae7
    mov ax, empty_text_fragment      ; 0x3ae8
    push ax                          ; 0x3aeb
    mov ax, combat_action_message_buffer ; 0x3aec
    push ax                          ; 0x3aef
    mov ax, combat_action_name_buffer ; 0x3af0
    push ax                          ; 0x3af3
    mov ax, 2                        ; 0x3af4
    push ax                          ; 0x3af7
    call draw_centered_text_fragments ; 0x3af8
    add sp, byte 0xe                 ; 0x3afb
    push word [startup_option]       ; 0x3afe
    call wait_for_combat_input       ; 0x3b02
    pop cx                           ; 0x3b05
    ret                              ; 0x3b06
