; auto-generated
initialize_new_member_record:
    mov ax, 0xfffe                   ; 0x626e
    call aztec_csav                  ; 0x6271
    mov ax, 0x248                    ; 0x6274
    imul word [bp + 4]               ; 0x6277
    mov bx, ax                       ; 0x627a
    mov byte [bx + party_records + pc_rec.level_scaled_percent], 0x64 ; 0x627c
    push word [bp + 4]               ; 0x6281
    call initialize_new_member_basics ; 0x6284
    pop cx                           ; 0x6287
    push word [bp + 4]               ; 0x6288
    call draw_member_panel_glyphs    ; 0x628b
    pop cx                           ; 0x628e
    mov ax, 0x248                    ; 0x628f
    imul word [bp + 4]               ; 0x6292
    mov bx, ax                       ; 0x6295
    mov byte [bx + party_records + pc_rec.hp_regen], 0 ; 0x6297
    mov byte [bx + party_records + pc_rec.hp_drain], 0 ; 0x629c
    mov byte [bx + party_records + pc_rec.stamina_drain], 0 ; 0x62a1
    mov byte [bx + party_records + pc_rec.rank], 0 ; 0x62a6
    mov word [bx + party_records + pc_rec.level], 1 ; 0x62ab
    mov word [bx + party_records + pc_rec.deaths], 1 ; 0x62b1
    mov word [bp - 2], 0             ; 0x62b7
.back1:
    mov ax, 0x248                    ; 0x62bc
    imul word [bp + 4]               ; 0x62bf
    add ax, word [bp - 2]            ; 0x62c2
    mov bx, ax                       ; 0x62c5
    mov byte [bx + party_records + pc_rec.equipped], 0xff ; 0x62c7
    inc word [bp - 2]                ; 0x62cc
    mov ax, word [bp - 2]            ; 0x62cf
    cmp ax, strict word 8            ; 0x62d2
    jl short .back1                  ; 0x62d5
    push word [bp + 4]               ; 0x62d7
    call initialize_member_profession ; 0x62da
    pop cx                           ; 0x62dd
    mov ax, 0x248                    ; 0x62de
    imul word [bp + 4]               ; 0x62e1
    mov bx, ax                       ; 0x62e4
    mov byte [bx + party_records + pc_rec.adjusted_stat4], 1 ; 0x62e6
    mov byte [bx + party_records + pc_rec.adjusted_stat5], 1 ; 0x62eb
    mov al, byte [bx + party_records + pc_rec.stat + 0x5] ; 0x62f0
    inc al                           ; 0x62f4
    mov byte [bx + party_records + pc_rec.stat5_plus_power], al ; 0x62f6
    ret                              ; 0x62fa
