; auto-generated
loc_GPUL:
    mov ax, 0                        ; 0x2963
    call aztec_csav                  ; 0x2966
    mov ax, 1                        ; 0x2969
    push ax                          ; 0x296c
    call gfx_wait_sound              ; 0x296d
    pop cx                           ; 0x2970
    cmp word [bp + 0x4], byte 0      ; 0x2971
    je short @..loc_GPUL.l1          ; 0x2975
    mov ax, 0x55                     ; 0x2977
    push ax                          ; 0x297a
    mov ax, 1                        ; 0x297b
    push ax                          ; 0x297e
    push ax                          ; 0x297f
    mov ax, MSG_ATTACKS              ; 0x2980
    push ax                          ; 0x2983
    call api_idx_0050_TJLH           ; 0x2984
    add sp, byte 8                   ; 0x2987
@..loc_GPUL.l1:
    mov al, byte [bss_91c2]          ; 0x298a
    sub ah, ah                       ; 0x298d
    mov word [character_record_index], ax ; 0x298f
    mov word [party_entry_mode], 1   ; 0x2992
    mov word [party_entry_flag], 0   ; 0x2998
    mov word [bss_95a6], 0           ; 0x299e
    mov word [game_state], 0xa       ; 0x29a4
    mov word [party_return_state], 0x12 ; 0x29aa
    ret                              ; 0x29b0
