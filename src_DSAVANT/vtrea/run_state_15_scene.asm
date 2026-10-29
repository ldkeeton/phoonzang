; auto-generated
run_state_15_scene:
    mov ax, 0                        ; 0x809e
    call aztec_csav                  ; 0x80a1
    mov word [selected_item_slot], 0xffff ; 0x80a4
    mov ax, MSG_A_CHEST              ; 0x80aa
    push ax                          ; 0x80ad
    call loc_SNOI                    ; 0x80ae
    pop cx                           ; 0x80b1
    mov ax, 0                        ; 0x80b2
    push ax                          ; 0x80b5
    call redraw_treasure_caption     ; 0x80b6
    pop cx                           ; 0x80b9
    cmp word [selected_item_record], byte -1 ; 0x80ba
    je short .forward2               ; 0x80bf
    call score_music_enabled         ; 0x80c1
    mov word [bss_8450], ax          ; 0x80c4
    test ax, ax                      ; 0x80c7
    je short .forward1               ; 0x80c9
    mov ax, 1                        ; 0x80cb
    push ax                          ; 0x80ce
    mov ax, 2                        ; 0x80cf
    push ax                          ; 0x80d2
    call load_score_files            ; 0x80d3
    add sp, byte 4                   ; 0x80d6
    mov ax, word [file_param_word]   ; 0x80d9
    mov word [bss_844e], ax          ; 0x80dc
    mov ax, 1                        ; 0x80df
    push ax                          ; 0x80e2
    push word [bss_844e]             ; 0x80e3
    push ax                          ; 0x80e7
    call ds_app_UKGP                 ; 0x80e8
    add sp, byte 6                   ; 0x80eb
    mov word [bss_844c], ax          ; 0x80ee
.forward1:
    mov word [party_return_state], 0x15 ; 0x80f1
    call loc_HUIS                    ; 0x80f7
    cmp word [bss_8450], byte 0      ; 0x80fa
    je short .forward2               ; 0x80ff
    push word [bss_844c]             ; 0x8101
    push word [bss_844e]             ; 0x8105
    call fade_out_music              ; 0x8109
    add sp, byte 4                   ; 0x810c
    mov ax, 1                        ; 0x810f
    push ax                          ; 0x8112
    call free_loaded_score           ; 0x8113
    pop cx                           ; 0x8116
.forward2:
    inc word [party_region]          ; 0x8117
    call loc_VSIT                    ; 0x811b
    ret                              ; 0x811e
