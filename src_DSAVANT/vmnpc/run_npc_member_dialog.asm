; auto-generated
run_npc_member_dialog:
    mov ax, 0xff96                   ; 0xab8d
    call aztec_csav                  ; 0xab90
    mov ax, word [bp + 4]            ; 0xab93
    mov word [npc_member_index], ax  ; 0xab96
    mov word [npc_message_ready], 0  ; 0xab99
    mov ax, 0                        ; 0xab9f
    push ax                          ; 0xaba2
    mov ax, 0x42                     ; 0xaba3
    push ax                          ; 0xaba6
    mov ax, npc_dialog_choice_index  ; 0xaba7
    push ax                          ; 0xabaa
    call aztec_setmem                ; 0xabab
    add sp, byte 6                   ; 0xabae
    mov word [npc_dialog_default_choice_index], 0xffff ; 0xabb1
    mov word [npc_dialog_default_choice_value], 0 ; 0xabb7
    mov word [npc_dialog_choice_backup], 0xffff ; 0xabbd
    mov word [npc_dialog_response_value], 0xffff ; 0xabc3
    mov word [text_line_index], 0    ; 0xabc9
.back1:
    mov ax, word [text_line_index]   ; 0xabcf
    mov cx, 7                        ; 0xabd2
    shl ax, cl                       ; 0xabd5
    mov bx, ax                       ; 0xabd7
    mov byte [bx + text_line_buffer], 0 ; 0xabd9
    mov ax, word [text_line_index]   ; 0xabde
    shl ax, 1                        ; 0xabe1
    mov bx, ax                       ; 0xabe3
    mov word [bx + text_line_color], 0 ; 0xabe5
    inc word [text_line_index]       ; 0xabeb
    mov ax, word [text_line_index]   ; 0xabef
    cmp ax, strict word 4            ; 0xabf2
    jl short .back1                  ; 0xabf5
    mov word [text_line_index], 0    ; 0xabf7
    lea ax, word [bp - 0x6a]         ; 0xabfd
    push ax                          ; 0xac00
    mov ax, MSG_1513                 ; 0xac01
    push ax                          ; 0xac04
    call load_message_string         ; 0xac05
    add sp, byte 4                   ; 0xac08
    mov ax, 0x5e                     ; 0xac0b
    push ax                          ; 0xac0e
    mov ax, 0x248                    ; 0xac0f
    imul word [bp + 4]               ; 0xac12
    add ax, party_records            ; 0xac15
    push ax                          ; 0xac18
    lea ax, word [bp - 0x6a]         ; 0xac19
    push ax                          ; 0xac1c
    call str_subst_char              ; 0xac1d
    add sp, byte 6                   ; 0xac20
    push word [mouse_pointer_shape_seg] ; 0xac23
    push word [mouse_pointer_shape]  ; 0xac27
    call set_mouse_pointer_shape     ; 0xac2b
    add sp, byte 4                   ; 0xac2e
    mov ax, 0                        ; 0xac31
    push ax                          ; 0xac34
    mov ax, 0xa4                     ; 0xac35
    push ax                          ; 0xac38
    mov ax, 0x12e                    ; 0xac39
    push ax                          ; 0xac3c
    call call_mouse_glide_to         ; 0xac3d
    add sp, byte 6                   ; 0xac40
    mov ax, 3                        ; 0xac43
    push ax                          ; 0xac46
    call redraw_area_set             ; 0xac47
    pop cx                           ; 0xac4a
    mov ax, 3                        ; 0xac4b
    push ax                          ; 0xac4e
    call show_area_set               ; 0xac4f
    pop cx                           ; 0xac52
.back2:
    lea ax, word [bp - 0x6a]         ; 0xac53
    push ax                          ; 0xac56
    lea ax, word [bp - 0x56]         ; 0xac57
    push ax                          ; 0xac5a
    call edit_npc_dialog_text_line   ; 0xac5b
    add sp, byte 4                   ; 0xac5e
    lea ax, word [bp - 0x56]         ; 0xac61
    push ax                          ; 0xac64
    call normalize_npc_dialog_text   ; 0xac65
    pop cx                           ; 0xac68
    lea ax, word [bp - 0x56]         ; 0xac69
    push ax                          ; 0xac6c
    call aztec_strlen                ; 0xac6d
    pop cx                           ; 0xac70
    mov word [bp - 2], ax            ; 0xac71
    mov bx, ax                       ; 0xac74
    add bx, bp                       ; 0xac76
    mov byte [bx - 0x56], 0x20       ; 0xac78
    mov byte [bx - 0x55], 0          ; 0xac7c
    mov ax, 9                        ; 0xac80
    push ax                          ; 0xac83
    mov ax, npc_dialog_phoonzang_prefix ; 0xac84
    push ax                          ; 0xac87
    lea ax, word [bp - 0x56]         ; 0xac88
    push ax                          ; 0xac8b
    call aztec_strncmp               ; 0xac8c
    add sp, byte 6                   ; 0xac8f
    test ax, ax                      ; 0xac92
    je short .forward1               ; 0xac94
    mov ax, 0                        ; 0xac96
    jmp short .forward2              ; 0xac99
.forward1:
    mov ax, 1                        ; 0xac9b
.forward2:
    mov word [bp - 6], ax            ; 0xac9e
    lea ax, word [bp - 0x56]         ; 0xaca1
    push ax                          ; 0xaca4
    call expand_npc_dialog_text      ; 0xaca5
    pop cx                           ; 0xaca8
    mov word [bp - 2], 0             ; 0xaca9
    mov word [npc_dialog_choice_index], 0xffff ; 0xacae
    mov word [npc_dialog_choice_auxiliary], 0 ; 0xacb4
    mov word [npc_dialog_primary_choice], 0xffff ; 0xacba
    mov word [npc_dialog_choice_code], 0xffff ; 0xacc0
    mov word [npc_dialog_topic_0_enabled], 0 ; 0xacc6
    mov word [npc_dialog_topic_1_enabled], 0 ; 0xaccc
    mov word [npc_dialog_topic_2_enabled], 0 ; 0xacd2
    mov word [npc_dialog_topic_3_enabled], 0 ; 0xacd8
    mov word [npc_dialog_topic_4_enabled], 0 ; 0xacde
    mov word [npc_dialog_topic_5_enabled], 0 ; 0xace4
    mov word [npc_dialog_topic_6_enabled], 0 ; 0xacea
    mov word [npc_dialog_empty_choice_seen], 0 ; 0xacf0
    mov ax, word [npc_dialog_text_has_question] ; 0xacf6
    mov word [npc_dialog_response_active], ax ; 0xacf9
    mov word [npc_dialog_mode7_seen], 0 ; 0xacfc
    mov word [npc_dialog_prefix_matched], 0 ; 0xad02
    mov word [npc_response_flag_2], 0 ; 0xad08
    mov word [npc_response_flag_3], 0 ; 0xad0e
    mov word [npc_response_flag_4], 0 ; 0xad14
    mov word [npc_response_flag_0], 0 ; 0xad1a
    mov word [npc_response_flag_1], 0 ; 0xad20
    mov word [npc_dialog_response_state_extra], 0 ; 0xad26
    mov word [npc_response_flag_5], 0 ; 0xad2c
    mov word [npc_response_flag_6], 0 ; 0xad32
    mov word [npc_dialog_choice_value_a], 0 ; 0xad38
    mov word [npc_dialog_choice_value_b], 1 ; 0xad3e
    mov word [npc_dialog_latest_choice], 0xffff ; 0xad44
    mov word [npc_alt_choice_index], 0xffff ; 0xad4a
    mov word [npc_alt_choice_value], 0 ; 0xad50
    mov word [npc_dialog_secondary_choice], 0xffff ; 0xad56
    mov word [npc_dialog_mode], 0xa  ; 0xad5c
.back3:
    mov bx, word [bp - 2]            ; 0xad62
    add bx, bp                       ; 0xad65
    cmp byte [bx - 0x56], 0x20       ; 0xad67
    jne short .forward3              ; 0xad6b
    inc word [bp - 2]                ; 0xad6d
    jmp short .back3                 ; 0xad70
.forward3:
    mov ax, word [bp - 2]            ; 0xad72
    lea cx, word [bp - 0x56]         ; 0xad75
    add ax, cx                       ; 0xad78
    push ax                          ; 0xad7a
    call process_npc_dialog_response ; 0xad7b
    pop cx                           ; 0xad7e
    mov word [npc_dialog_mode], ax   ; 0xad7f
    push word [bp - 2]               ; 0xad82
    lea ax, word [bp - 0x56]         ; 0xad85
    push ax                          ; 0xad88
    call word_end_index              ; 0xad89
    add sp, byte 4                   ; 0xad8c
    mov word [bp - 2], ax            ; 0xad8f
    cmp ax, strict word 0xffff       ; 0xad92
    jne short .back3                 ; 0xad95
    mov ax, word [npc_record_index]  ; 0xad97
    cmp ax, strict word 0x2d         ; 0xad9a
    je short .forward4               ; 0xad9d
    cmp ax, strict word 0x51         ; 0xad9f
    je short .forward4               ; 0xada2
    cmp ax, strict word 0x53         ; 0xada4
    je short .forward4               ; 0xada7
    cmp ax, strict word 0x4d         ; 0xada9
    jne short .forward5              ; 0xadac
    cmp word [bp - 6], byte 0        ; 0xadae
    jne short .forward5              ; 0xadb2
.forward4:
    mov byte [bp - 0x56], 0          ; 0xadb4
.forward5:
    lea ax, word [bp - 0x56]         ; 0xadb8
    push ax                          ; 0xadbb
    call aztec_strlen                ; 0xadbc
    pop cx                           ; 0xadbf
    cmp ax, strict word 0            ; 0xadc0
    jle short .forward6              ; 0xadc3
    call build_npc_dialog_choice_reply ; 0xadc5
    test ax, ax                      ; 0xadc8
    jne short .forward6              ; 0xadca
    call save_npc_dialog_default_choice ; 0xadcc
.forward6:
    cmp word [npc_response_flag_1], byte 1 ; 0xadcf
    je short .forward7               ; 0xadd4
    jmp near .back2                  ; 0xadd6
.forward7:
    mov ax, 3                        ; 0xadd9
    push ax                          ; 0xaddc
    call redraw_area_set             ; 0xaddd
    pop cx                           ; 0xade0
    mov ax, 3                        ; 0xade1
    push ax                          ; 0xade4
    call show_area_set               ; 0xade5
    pop cx                           ; 0xade8
    mov ax, 0                        ; 0xade9
    push ax                          ; 0xadec
    mov ax, 0xa4                     ; 0xaded
    push ax                          ; 0xadf0
    mov ax, 0x12e                    ; 0xadf1
    push ax                          ; 0xadf4
    call call_mouse_glide_back       ; 0xadf5
    add sp, byte 6                   ; 0xadf8
    mov ax, 0                        ; 0xadfb
    mov dx, 0                        ; 0xadfe
    push dx                          ; 0xae01
    push ax                          ; 0xae02
    call set_mouse_pointer_shape     ; 0xae03
    add sp, byte 4                   ; 0xae06
    mov word [npc_message_ready], 1  ; 0xae09
    ret                              ; 0xae0f
