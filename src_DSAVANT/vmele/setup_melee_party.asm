; auto-generated
setup_melee_party:
    mov ax, 0xfffc                   ; 0x3390
    call aztec_csav                  ; 0x3393
    mov word [battle_experience_hi], 0 ; 0x3396
    mov word [battle_experience], 0  ; 0x339c
    cmp word [npc_id], strict word 0xe1 ; 0x33a2
    jne short .forward1              ; 0x33a8
    mov word [party_entry_flag], 1   ; 0x33aa
.forward1:
    call reset_battle_groups         ; 0x33b0
    mov ax, 1                        ; 0x33b3
    push ax                          ; 0x33b6
    push word [npc_id]               ; 0x33b7
    call add_monster_group           ; 0x33bb
    add sp, byte 4                   ; 0x33be
    mov bx, word [battle_group_ext_1] ; 0x33c1
    mov si, word [party_entry_mode]  ; 0x33c5
    mov al, byte [bx + si + 0xa8]    ; 0x33c9
    sub ah, ah                       ; 0x33cd
    mov word [selected_item_record], ax ; 0x33cf
    mov word [selected_item_slot], 0xffff ; 0x33d2
    call identify_monster_groups     ; 0x33d8
    call load_party_battle_group     ; 0x33db
    ret                              ; 0x33de
