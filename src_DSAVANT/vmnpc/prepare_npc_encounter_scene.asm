; auto-generated
prepare_npc_encounter_scene:
    mov ax, 0                        ; 0x6d9d
    call aztec_csav                  ; 0x6da0
    mov word [npc_encounter_sound], 0 ; 0x6da3
    cmp byte [npc_encounter_intro_sound_id], 0 ; 0x6da9
    jle short .forward1              ; 0x6dae
    mov al, byte [npc_encounter_intro_sound_id] ; 0x6db0
    cbw                              ; 0x6db3
    push ax                          ; 0x6db4
    call ensure_sound_loaded         ; 0x6db5
    pop cx                           ; 0x6db8
    mov word [npc_encounter_sound], 0x10 ; 0x6db9
.forward1:
    cmp byte [npc_monster_picture_id], 0 ; 0x6dbf
    je short .forward2               ; 0x6dc4
    mov ax, 0xf                      ; 0x6dc6
    push ax                          ; 0x6dc9
    mov al, byte [npc_monster_picture_id] ; 0x6dca
    sub ah, ah                       ; 0x6dcd
    push ax                          ; 0x6dcf
    call load_monster_picture        ; 0x6dd0
    add sp, byte 4                   ; 0x6dd3
    mov word [cell_slot_ref], 0xf    ; 0x6dd6
    mov ax, 0xffff                   ; 0x6ddc
    push ax                          ; 0x6ddf
    mov ax, 0                        ; 0x6de0
    push ax                          ; 0x6de3
    push ax                          ; 0x6de4
    mov ax, 0xf                      ; 0x6de5
    push ax                          ; 0x6de8
    call fill_npc_action_slots       ; 0x6de9
    add sp, byte 8                   ; 0x6dec
    jmp short .forward3              ; 0x6def
.forward2:
    mov word [cell_slot_ref], 0      ; 0x6df1
.forward3:
    mov word [npc_cell_effect_frame], 1 ; 0x6df7
    mov ax, 1                        ; 0x6dfd
    push ax                          ; 0x6e00
    mov ax, 0                        ; 0x6e01
    push ax                          ; 0x6e04
    call animate_npc_encounter_cells ; 0x6e05
    add sp, byte 4                   ; 0x6e08
    call run_npc_screen_animation    ; 0x6e0b
    ret                              ; 0x6e0e
