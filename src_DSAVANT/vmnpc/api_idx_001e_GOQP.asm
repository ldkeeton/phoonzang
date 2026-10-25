; auto-generated
api_idx_001e_GOQP:
    mov ax, 0xffe2                   ; 0x70b7
    call aztec_csav                  ; 0x70ba
    mov word [game_state], 5         ; 0x70bd
    cmp word [loaded_score_num], byte 0xff ; 0x70c3
    je short @..api_idx_001e_GOQP.l3 ; 0x70c8
@..api_idx_001e_GOQP.l1:
    call gfx_is_music_playing        ; 0x70ca
    test ax, ax                      ; 0x70cd
    je short @..api_idx_001e_GOQP.l2 ; 0x70cf
    jmp short @..api_idx_001e_GOQP.l1 ; 0x70d1
@..api_idx_001e_GOQP.l2:
    mov ax, 0                        ; 0x70d3
    push ax                          ; 0x70d6
    call app_gfx_free_score          ; 0x70d7
    pop cx                           ; 0x70da
@..api_idx_001e_GOQP.l3:
    call free_current_maze           ; 0x70db
    mov ax, 0                        ; 0x70de
    push ax                          ; 0x70e1
    mov ax, 2                        ; 0x70e2
    push ax                          ; 0x70e5
    mov ax, 0x8f                     ; 0x70e6
    push ax                          ; 0x70e9
    mov ax, 0xf7                     ; 0x70ea
    push ax                          ; 0x70ed
    mov ax, 0x21                     ; 0x70ee
    push ax                          ; 0x70f1
    mov ax, 0x48                     ; 0x70f2
    push ax                          ; 0x70f5
    call gfx_cache_area              ; 0x70f6
    add sp, byte 0x0c                ; 0x70f9
    mov word [screen_cache_0_seg], dx ; 0x70fc
    mov word [screen_cache], ax      ; 0x7100
    cmp word [saved_screen_pending], byte 0 ; 0x7103
    je short @..api_idx_001e_GOQP.l4 ; 0x7108
    mov ax, 1                        ; 0x710a
    push ax                          ; 0x710d
    push word [saved_screen_slot]    ; 0x710e
    call restore_saved_screen        ; 0x7112
    add sp, byte 4                   ; 0x7115
    mov word [saved_screen_pending], 0 ; 0x7118
@..api_idx_001e_GOQP.l4:
    mov ax, 0                        ; 0x711e
    push ax                          ; 0x7121
    mov ax, 2                        ; 0x7122
    push ax                          ; 0x7125
    mov ax, 0x8f                     ; 0x7126
    push ax                          ; 0x7129
    mov ax, 0xf7                     ; 0x712a
    push ax                          ; 0x712d
    mov ax, 0x21                     ; 0x712e
    push ax                          ; 0x7131
    mov ax, 0x48                     ; 0x7132
    push ax                          ; 0x7135
    call gfx_cache_area              ; 0x7136
    add sp, byte 0x0c                ; 0x7139
    mov word [screen_cache_1_seg], dx ; 0x713c
    mov word [screen_cache_1_off], ax ; 0x7140
    mov word [bp - 0x0002], 0        ; 0x7143
@..api_idx_001e_GOQP.l5:
    mov ax, 0x18                     ; 0x7148
    push ax                          ; 0x714b
    call aztec_malloc                ; 0x714c
    pop cx                           ; 0x714f
    mov cx, word [bp - 0x0002]       ; 0x7150
    shl cx, 1                        ; 0x7153
    mov bx, cx                       ; 0x7155
    mov word [bx + overlay_list + 0x2], ax ; 0x7157
    cmp word [bx + overlay_list + 0x2], byte 0 ; 0x715b
    jne short @..api_idx_001e_GOQP.l6 ; 0x7160
    mov ax, 0x1d                     ; 0x7162
    push ax                          ; 0x7165
    call release_and_exit            ; 0x7166
    pop cx                           ; 0x7169
@..api_idx_001e_GOQP.l6:
    mov ax, word [bp - 0x0002]       ; 0x716a
    shl ax, 1                        ; 0x716d
    mov bx, ax                       ; 0x716f
    mov bx, word [bx + overlay_list + 0x2] ; 0x7171
    mov byte [bx + overlay_list_rec.f_0014], 0xff ; 0x7175
    inc word [bp - 0x0002]           ; 0x7179
    mov ax, word [bp - 0x0002]       ; 0x717c
    cmp ax, strict word 0xc          ; 0x717f
    jl short @..api_idx_001e_GOQP.l5 ; 0x7182
    mov word [overlay_list], 0       ; 0x7184
    mov word [bss_845e], 0xfffe      ; 0x718a
    mov ax, 0                        ; 0x7190
    push ax                          ; 0x7193
    mov ax, 0x12                     ; 0x7194
    push ax                          ; 0x7197
    mov ax, cell_slot_ref            ; 0x7198
    push ax                          ; 0x719b
    call aztec_setmem                ; 0x719c
    add sp, byte 6                   ; 0x719f
    mov ax, 0                        ; 0x71a2
    push ax                          ; 0x71a5
    mov ax, 0x12                     ; 0x71a6
    push ax                          ; 0x71a9
    mov ax, bss_93dc                 ; 0x71aa
    push ax                          ; 0x71ad
    call aztec_setmem                ; 0x71ae
    add sp, byte 6                   ; 0x71b1
    mov word [bp - 0x0002], 0xf      ; 0x71b4
@..api_idx_001e_GOQP.l7:
    mov bx, word [bp - 0x0002]       ; 0x71b9
    mov byte [bx + picture_slot_number], 0xff ; 0x71bc
    mov byte [bx + picture_slot_used], 0 ; 0x71c1
    inc word [bp - 0x0002]           ; 0x71c6
    mov ax, word [bp - 0x0002]       ; 0x71c9
    cmp ax, strict word 0x12         ; 0x71cc
    jl short @..api_idx_001e_GOQP.l7 ; 0x71cf
    les bx, word [tick_counter_ptr]  ; 0x71d1
    mov ax, word [es:bx]             ; 0x71d5
    mov dx, word [es:bx + 0x2]       ; 0x71d8
    mov word [party_redraw_last_tick_hi], dx ; 0x71dc
    mov word [party_redraw_last_tick], ax ; 0x71e0
    mov word [bss_93d6], 5           ; 0x71e3
    mov ax, 0xc6                     ; 0x71e9
    push ax                          ; 0x71ec
    mov ax, 0x13a                    ; 0x71ed
    push ax                          ; 0x71f0
    mov ax, 0xa5                     ; 0x71f1
    push ax                          ; 0x71f4
    mov ax, 8                        ; 0x71f5
    push ax                          ; 0x71f8
    call gfx_save_area               ; 0x71f9
    add sp, byte 8                   ; 0x71fc
    mov word [saved_area_a_hi], dx   ; 0x71ff
    mov word [saved_area_a], ax      ; 0x7203
    mov ax, 0xa4                     ; 0x7206
    push ax                          ; 0x7209
    mov ax, 0xff                     ; 0x720a
    push ax                          ; 0x720d
    mov ax, 0x92                     ; 0x720e
    push ax                          ; 0x7211
    mov ax, 0x41                     ; 0x7212
    push ax                          ; 0x7215
    call gfx_save_area               ; 0x7216
    add sp, byte 8                   ; 0x7219
    mov word [saved_area_b_hi], dx   ; 0x721c
    mov word [saved_area_b], ax      ; 0x7220
    mov ax, 1                        ; 0x7223
    push ax                          ; 0x7226
    mov ax, 2                        ; 0x7227
    push ax                          ; 0x722a
    call load_monster_picture        ; 0x722b
    add sp, byte 4                   ; 0x722e
    mov ax, 2                        ; 0x7231
    push ax                          ; 0x7234
    mov ax, 3                        ; 0x7235
    push ax                          ; 0x7238
    call load_monster_picture        ; 0x7239
    add sp, byte 4                   ; 0x723c
    mov ax, 0xc                      ; 0x723f
    push ax                          ; 0x7242
    mov ax, 0x52                     ; 0x7243
    push ax                          ; 0x7246
    call load_monster_picture        ; 0x7247
    add sp, byte 4                   ; 0x724a
    mov ax, 0                        ; 0x724d
    push ax                          ; 0x7250
    call redraw_glyph_strip          ; 0x7251
    pop cx                           ; 0x7254
    mov word [bss_93ee], 1           ; 0x7255
    mov word [bss_9134], 0           ; 0x725b
    mov word [bss_9d68], 0           ; 0x7261
    mov word [bss_9d6a], 0           ; 0x7267
    mov word [bss_9d66], 0xffff      ; 0x726d
    mov ax, 0                        ; 0x7273
    push ax                          ; 0x7276
    push word [bss_9136]             ; 0x7277
    mov ax, bss_9138                 ; 0x727b
    push ax                          ; 0x727e
    mov ax, 5                        ; 0x727f
    push ax                          ; 0x7282
    call data_record_io              ; 0x7283
    add sp, byte 8                   ; 0x7286
    mov ax, 2                        ; 0x7289
    push ax                          ; 0x728c
    mov ax, bss_95f8                 ; 0x728d
    push ax                          ; 0x7290
    mov ax, word [bss_9136]          ; 0x7291
    shl ax, 1                        ; 0x7294
    add ax, action_bitmap + 0xc      ; 0x7296
    push ax                          ; 0x7299
    call aztec_movmem                ; 0x729a
    add sp, byte 6                   ; 0x729d
    mov word [bss_964c], 0           ; 0x72a0
    mov word [bss_964a], 0           ; 0x72a6
    mov ax, 0                        ; 0x72ac
    push ax                          ; 0x72af
    mov ax, 0x6e                     ; 0x72b0
    push ax                          ; 0x72b3
    mov ax, bss_94f0                 ; 0x72b4
    push ax                          ; 0x72b7
    call aztec_setmem                ; 0x72b8
    add sp, byte 6                   ; 0x72bb
    ret                              ; 0x72be
