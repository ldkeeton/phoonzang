; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_906a], byte 0      ; 0x0014
    je short @..ovmain.l1            ; 0x0019
    mov ax, 1                        ; 0x001b
    push ax                          ; 0x001e
    push word [bss_9068]             ; 0x001f
    call restore_saved_screen        ; 0x0023
    add sp, byte 4                   ; 0x0026
    mov word [bss_906a], 0           ; 0x0029
@..ovmain.l1:
    mov word [pending_event], 0      ; 0x002f
    mov word [pending_event_hi], 0   ; 0x0035
    cmp word [game_state], byte 0x13 ; 0x003b
    jne short @..ovmain.l2           ; 0x0040
    mov ax, 0xe                      ; 0x0042
    push ax                          ; 0x0045
    call free_picture_slot           ; 0x0046
    pop cx                           ; 0x0049
    mov ax, 1                        ; 0x004a
    push ax                          ; 0x004d
    mov ax, 2                        ; 0x004e
    push ax                          ; 0x0051
    call load_monster_picture        ; 0x0052
    add sp, byte 4                   ; 0x0055
    mov ax, 2                        ; 0x0058
    push ax                          ; 0x005b
    mov ax, 3                        ; 0x005c
    push ax                          ; 0x005f
    call load_monster_picture        ; 0x0060
    add sp, byte 4                   ; 0x0063
    push word [bss_8af0]             ; 0x0066
    call cast_spell_from_menu        ; 0x006a
    pop cx                           ; 0x006d
    mov ax, 1                        ; 0x006e
    push ax                          ; 0x0071
    call free_picture_slot           ; 0x0072
    pop cx                           ; 0x0075
    mov ax, 2                        ; 0x0076
    push ax                          ; 0x0079
    call free_picture_slot           ; 0x007a
    pop cx                           ; 0x007d
    mov ax, 0xe                      ; 0x007e
    push ax                          ; 0x0081
    mov ax, 0                        ; 0x0082
    push ax                          ; 0x0085
    call load_monster_picture        ; 0x0086
    add sp, byte 4                   ; 0x0089
@..ovmain.l2:
    cmp word [game_state], byte 0x14 ; 0x008c
    jne short @..ovmain.l3           ; 0x0091
    push word [bss_8af0]             ; 0x0093
    call api_idx_0094_LUVH           ; 0x0097
    pop cx                           ; 0x009a
@..ovmain.l3:
    mov word [game_state], 5         ; 0x009b
    mov ax, 0                        ; 0x00a1
    ret                              ; 0x00a4
