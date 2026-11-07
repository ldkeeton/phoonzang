; auto-generated
resolve_npc_dialog_reaction:
    mov ax, 0                        ; 0x9a04
    call $csav                  ; 0x9a07
    mov word [npc_dialog_primary_choice], 0xffff ; 0x9a0a
    mov word [npc_dialog_choice_index], 0xffff ; 0x9a10
    mov word [npc_dialog_choice_auxiliary], 0 ; 0x9a16
    mov ax, word [npc_dialog_choice_code] ; 0x9a1c
    jmp near .forward4               ; 0x9a1f
jumptable_9baa_case_0:
    mov ax, 0x90f8                   ; 0x9a22
    push ax                          ; 0x9a25
    push word [npc_dialog_response_name] ; 0x9a26
    call append_npc_message_text     ; 0x9a2a
    add sp, byte 4                   ; 0x9a2d
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9a30
jumptable_9baa_case_1:
    cmp word [npc_dialog_response_wait], byte 0 ; 0x9a33
    jle short resolve_npc_dialog_reaction.forward1 ; 0x9a38
    mov ax, 0x90f9                   ; 0x9a3a
    push ax                          ; 0x9a3d
    push word [npc_dialog_response_wait] ; 0x9a3e
    call append_npc_message_text     ; 0x9a42
    add sp, byte 4                   ; 0x9a45
    mov ax, 0                        ; 0x9a48
    push ax                          ; 0x9a4b
    push word [message_delay]        ; 0x9a4c
    call wait_ticks_abortable        ; 0x9a50
    add sp, byte 4                   ; 0x9a53
resolve_npc_dialog_reaction.forward1:
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9a56
jumptable_9baa_case_2:
    mov ax, 0x90fa                   ; 0x9a59
    push ax                          ; 0x9a5c
    mov ax, MSG_VERY_WELL_THEN       ; 0x9a5d
    push ax                          ; 0x9a60
    call append_npc_message_text     ; 0x9a61
    add sp, byte 4                   ; 0x9a64
    mov ax, word [npc_dialog_choice_backup] ; 0x9a67
    mov word [npc_dialog_primary_choice], ax ; 0x9a6a
    mov ax, word [npc_dialog_default_choice_index] ; 0x9a6d
    mov word [npc_dialog_choice_index], ax ; 0x9a70
    mov ax, word [npc_dialog_default_choice_value] ; 0x9a73
    mov word [npc_dialog_choice_auxiliary], ax ; 0x9a76
    mov word [npc_dialog_response_active], 1 ; 0x9a79
    push word [npc_dialog_response_value] ; 0x9a7f
    call reset_npc_dialog_response   ; 0x9a83
    pop cx                           ; 0x9a86
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9a87
jumptable_9baa_case_3:
    mov ax, 0x90fb                   ; 0x9a8a
    push ax                          ; 0x9a8d
    mov ax, MSG_SO_BE_IT_1609        ; 0x9a8e
    push ax                          ; 0x9a91
    call append_npc_message_text     ; 0x9a92
    add sp, byte 4                   ; 0x9a95
    mov word [npc_dialog_response_value], 0xffff ; 0x9a98
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9a9e
jumptable_9baa_case_4:
    mov ax, 0x90fc                   ; 0x9aa1
    push ax                          ; 0x9aa4
    mov ax, MSG_I_AM_WAITING         ; 0x9aa5
    push ax                          ; 0x9aa8
    call append_npc_message_text     ; 0x9aa9
    add sp, byte 4                   ; 0x9aac
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9aaf
jumptable_9baa_case_5:
    mov ax, 0x90fd                   ; 0x9ab2
    push ax                          ; 0x9ab5
    mov ax, MSG_DON_T_MENTION_IT     ; 0x9ab6
    push ax                          ; 0x9ab9
    call append_npc_message_text     ; 0x9aba
    add sp, byte 4                   ; 0x9abd
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9ac0
jumptable_9baa_case_6:
    mov ax, 0x90fe                   ; 0x9ac3
    push ax                          ; 0x9ac6
    mov ax, MSG_SAME_TO_YOU          ; 0x9ac7
    push ax                          ; 0x9aca
    call append_npc_message_text     ; 0x9acb
    add sp, byte 4                   ; 0x9ace
    mov ax, 0                        ; 0x9ad1
    push ax                          ; 0x9ad4
    mov ax, 5                        ; 0x9ad5
    push ax                          ; 0x9ad8
    call random_below                ; 0x9ad9
    pop cx                           ; 0x9adc
    mov cx, ax                       ; 0x9add
    inc ax                           ; 0x9adf
    mov cx, ax                       ; 0x9ae0
    mov ax, 0                        ; 0x9ae2
    sub ax, cx                       ; 0x9ae5
    push ax                          ; 0x9ae7
    push word [npc_member_index]     ; 0x9ae8
    call adjust_npc_attitudes        ; 0x9aec
    add sp, byte 6                   ; 0x9aef
    mov ax, 2                        ; 0x9af2
    push ax                          ; 0x9af5
    call random_below                ; 0x9af6
    pop cx                           ; 0x9af9
    cmp ax, strict word 1            ; 0x9afa
    jne short resolve_npc_dialog_reaction.forward2 ; 0x9afd
    mov word [npc_response_flag_1], 1 ; 0x9aff
resolve_npc_dialog_reaction.forward2:
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9b05
jumptable_9baa_case_7:
    mov ax, 0x90ff                   ; 0x9b08
    push ax                          ; 0x9b0b
    mov ax, MSG_CONSIDER_IT_FORGOTTEN ; 0x9b0c
    push ax                          ; 0x9b0f
    call append_npc_message_text     ; 0x9b10
    add sp, byte 4                   ; 0x9b13
    mov word [npc_dialog_choice_index], 0xffff ; 0x9b16
    mov word [npc_dialog_choice_auxiliary], 0 ; 0x9b1c
    mov word [npc_dialog_primary_choice], 0xffff ; 0x9b22
    mov word [npc_dialog_default_choice_index], 0xffff ; 0x9b28
    mov word [npc_dialog_default_choice_value], 0 ; 0x9b2e
    mov word [npc_dialog_choice_backup], 0xffff ; 0x9b34
    mov word [npc_dialog_response_value], 0xffff ; 0x9b3a
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9b40
jumptable_9baa_case_8:
    mov ax, 0x9100                   ; 0x9b43
    push ax                          ; 0x9b46
    mov ax, MSG_HELP_WITH_WHAT       ; 0x9b47
    push ax                          ; 0x9b4a
    call append_npc_message_text     ; 0x9b4b
    add sp, byte 4                   ; 0x9b4e
    jmp near resolve_npc_dialog_reaction.return1 ; 0x9b51
jumptable_9baa_case_9:
    mov ax, 0x9101                   ; 0x9b54
    push ax                          ; 0x9b57
    mov ax, MSG_HA_HA_HA_1615        ; 0x9b58
    push ax                          ; 0x9b5b
    call append_npc_message_text     ; 0x9b5c
    add sp, byte 4                   ; 0x9b5f
    cmp word [npc_dialog_secondary_state], byte 0 ; 0x9b62
    jne short resolve_npc_dialog_reaction.forward3 ; 0x9b67
    mov ax, 2                        ; 0x9b69
    push ax                          ; 0x9b6c
    call random_below                ; 0x9b6d
    pop cx                           ; 0x9b70
    cmp ax, strict word 1            ; 0x9b71
    jne short resolve_npc_dialog_reaction.forward3 ; 0x9b74
    mov ax, 0x248                    ; 0x9b76
    imul word [npc_member_index]     ; 0x9b79
    add ax, word [npc_record_index]  ; 0x9b7d
    mov bx, ax                       ; 0x9b81
    cmp byte [bx + party_records + pc_rec.pad_01be], 0x32 ; 0x9b83
    jge short resolve_npc_dialog_reaction.forward3 ; 0x9b88
    mov ax, 0                        ; 0x9b8a
    push ax                          ; 0x9b8d
    mov ax, 3                        ; 0x9b8e
    push ax                          ; 0x9b91
    call random_below                ; 0x9b92
    pop cx                           ; 0x9b95
    inc ax                           ; 0x9b96
    push ax                          ; 0x9b97
    push word [npc_member_index]     ; 0x9b98
    call adjust_npc_attitudes        ; 0x9b9c
    add sp, byte 6                   ; 0x9b9f
    mov word [npc_dialog_secondary_state], 1 ; 0x9ba2
resolve_npc_dialog_reaction.forward3:
    jmp short resolve_npc_dialog_reaction.return1 ; 0x9ba8
jumptable_9baa:
    dw jumptable_9baa_case_0 - IMAGE_BASE + __zres_end ; 0x9baa
    dw jumptable_9baa_case_1 - IMAGE_BASE + __zres_end ; 0x9bac
    dw jumptable_9baa_case_2 - IMAGE_BASE + __zres_end ; 0x9bae
    dw jumptable_9baa_case_3 - IMAGE_BASE + __zres_end ; 0x9bb0
    dw jumptable_9baa_case_4 - IMAGE_BASE + __zres_end ; 0x9bb2
    dw jumptable_9baa_case_5 - IMAGE_BASE + __zres_end ; 0x9bb4
    dw jumptable_9baa_case_6 - IMAGE_BASE + __zres_end ; 0x9bb6
    dw jumptable_9baa_case_7 - IMAGE_BASE + __zres_end ; 0x9bb8
    dw jumptable_9baa_case_8 - IMAGE_BASE + __zres_end ; 0x9bba
    dw jumptable_9baa_case_9 - IMAGE_BASE + __zres_end ; 0x9bbc
resolve_npc_dialog_reaction.forward4:
    cmp ax, strict word 0xa          ; 0x9bbe
    jae short resolve_npc_dialog_reaction.return1 ; 0x9bc1
    xchg bx, ax                      ; 0x9bc3
    shl bx, 1                        ; 0x9bc4
    jmp [cs:bx + jumptable_9baa - IMAGE_BASE + __zres_end] ; 0x9bc6
resolve_npc_dialog_reaction.return1:
    ret                              ; 0x9bcb
