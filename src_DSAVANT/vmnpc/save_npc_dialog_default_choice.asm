; auto-generated
save_npc_dialog_default_choice:
    mov ax, 0                        ; 0xa29f
    call $csav                  ; 0xa2a2
    cmp word [npc_dialog_choice_code], byte -1 ; 0xa2a5
    je short .forward2               ; 0xa2aa
    cmp word [npc_dialog_primary_choice], byte -1 ; 0xa2ac
    je short .forward1               ; 0xa2b1
    cmp word [npc_dialog_choice_index], byte -1 ; 0xa2b3
    jne short .forward2              ; 0xa2b8
.forward1:
    call resolve_npc_dialog_reaction ; 0xa2ba
.forward2:
    cmp word [npc_dialog_primary_choice], byte -1 ; 0xa2bd
    je short .return1                ; 0xa2c2
    cmp word [npc_dialog_choice_index], byte -1 ; 0xa2c4
    je short .return1                ; 0xa2c9
    call handle_npc_dialog_choice    ; 0xa2cb
    mov ax, word [npc_dialog_choice_index] ; 0xa2ce
    mov word [npc_dialog_default_choice_index], ax ; 0xa2d1
    mov ax, word [npc_dialog_choice_auxiliary] ; 0xa2d4
    mov word [npc_dialog_default_choice_value], ax ; 0xa2d7
    mov ax, word [npc_dialog_primary_choice] ; 0xa2da
    mov word [npc_dialog_choice_backup], ax ; 0xa2dd
    mov word [npc_dialog_response_value], 0xffff ; 0xa2e0
.return1:
    ret                              ; 0xa2e6
