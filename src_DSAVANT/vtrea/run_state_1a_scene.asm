; auto-generated
run_state_1a_scene:
    mov ax, 0                        ; 0x811f
    call aztec_csav                  ; 0x8122
    mov ax, MSG_LOCKED_DOOR          ; 0x8125
    cmp word [maze_variant], byte 1  ; 0x8128
    jne short .forward1              ; 0x812d
    mov ax, MSG_LOCKED_GATE          ; 0x812f
.forward1:
    push ax                          ; 0x8132
    call loc_SNOI                    ; 0x8133
    pop cx                           ; 0x8136
    mov ax, 0                        ; 0x8137
    push ax                          ; 0x813a
    call redraw_treasure_caption     ; 0x813b
    pop cx                           ; 0x813e
    mov ax, 0xc6                     ; 0x813f
    push ax                          ; 0x8142
    mov ax, 0x109                    ; 0x8143
    push ax                          ; 0x8146
    mov ax, 0x92                     ; 0x8147
    push ax                          ; 0x814a
    mov ax, 0x37                     ; 0x814b
    push ax                          ; 0x814e
    call call_show_area              ; 0x814f
    add sp, byte 8                   ; 0x8152
    call score_music_enabled         ; 0x8155
    mov word [bss_8450], ax          ; 0x8158
    test ax, ax                      ; 0x815b
    je short .forward2               ; 0x815d
    mov ax, 1                        ; 0x815f
    push ax                          ; 0x8162
    mov ax, 2                        ; 0x8163
    push ax                          ; 0x8166
    call load_score_files            ; 0x8167
    add sp, byte 4                   ; 0x816a
    mov ax, word [file_param_word]   ; 0x816d
    mov word [bss_844e], ax          ; 0x8170
    mov ax, 1                        ; 0x8173
    push ax                          ; 0x8176
    push word [bss_844e]             ; 0x8177
    push ax                          ; 0x817b
    call ds_app_UKGP                 ; 0x817c
    add sp, byte 6                   ; 0x817f
    mov word [bss_844c], ax          ; 0x8182
.forward2:
    push word [selected_item_record] ; 0x8185
    call api_idx_0072_LQIT           ; 0x8189
    pop cx                           ; 0x818c
    mov ax, 1                        ; 0x818d
    push ax                          ; 0x8190
    call redraw_treasure_caption     ; 0x8191
    pop cx                           ; 0x8194
    cmp word [bss_8450], byte 0      ; 0x8195
    je short .forward3               ; 0x819a
    push word [bss_844c]             ; 0x819c
    push word [bss_844e]             ; 0x81a0
    call fade_out_music              ; 0x81a4
    add sp, byte 4                   ; 0x81a7
    mov ax, 1                        ; 0x81aa
    push ax                          ; 0x81ad
    call free_loaded_score           ; 0x81ae
    pop cx                           ; 0x81b1
.forward3:
    call loc_VSIT                    ; 0x81b2
    ret                              ; 0x81b5
