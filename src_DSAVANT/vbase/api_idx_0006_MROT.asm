; auto-generated
api_idx_0006_MROT:
    mov ax, 0xfffa                   ; 0x61db
    call aztec_csav                  ; 0x61de
    mov ax, word [bp + 4]            ; 0x61e1
    shl ax, 1                        ; 0x61e4
    mov bx, ax                       ; 0x61e6
    mov bx, word [bx + member_roster_index + 0x2] ; 0x61e8
    mov byte [bx + pc_file_record_base_hi + 0x2], 1 ; 0x61ec
    dec word [party_char_count]      ; 0x61f1
    mov ax, word [bp + 4]            ; 0x61f5
    mov word [bp - 2], ax            ; 0x61f8
    jmp short @..api_idx_0006_MROT.l2 ; 0x61fb
@..api_idx_0006_MROT.l1:
    mov ax, 0x248                    ; 0x61fd
    imul word [bp - 2]               ; 0x6200
    mov si, ax                       ; 0x6203
    add ax, party_records + pc_rec_size*1 ; 0x6205
    mov si, ax                       ; 0x6208
    mov ax, 0x248                    ; 0x620a
    imul word [bp - 2]               ; 0x620d
    mov di, ax                       ; 0x6210
    add ax, party_records            ; 0x6212
    mov di, ax                       ; 0x6215
    mov cx, ds                       ; 0x6217
    mov es, cx                       ; 0x6219
    mov cx, 0x124                    ; 0x621b
    rep movsw                        ; 0x621e
    mov ax, word [bp - 2]            ; 0x6220
    shl ax, 1                        ; 0x6223
    mov bx, ax                       ; 0x6225
    mov ax, word [bx + member_roster_index + 0x4] ; 0x6227
    mov word [bx + member_roster_index + 0x2], ax ; 0x622b
    mov ax, word [bx + member_icon + 0x2] ; 0x622f
    mov word [bx + member_icon], ax  ; 0x6233
    inc word [bp - 2]                ; 0x6237
@..api_idx_0006_MROT.l2:
    mov ax, word [bp - 2]            ; 0x623a
    cmp ax, word [party_char_count]  ; 0x623d
    jl short @..api_idx_0006_MROT.l1 ; 0x6241
    mov word [bp - 2], 0             ; 0x6243
    jmp short @..api_idx_0006_MROT.l4 ; 0x6248
@..api_idx_0006_MROT.l3:
    mov ax, 1                        ; 0x624a
    push ax                          ; 0x624d
    push word [bp - 2]               ; 0x624e
    call draw_party_member_panel     ; 0x6251
    add sp, byte 4                   ; 0x6254
    inc word [bp - 2]                ; 0x6257
@..api_idx_0006_MROT.l4:
    mov ax, word [bp - 2]            ; 0x625a
    cmp ax, word [party_char_count]  ; 0x625d
    jl short @..api_idx_0006_MROT.l3 ; 0x6261
    mov ax, 0                        ; 0x6263
    push ax                          ; 0x6266
    mov ax, word [party_char_count]  ; 0x6267
    shl ax, 1                        ; 0x626a
    shl ax, 1                        ; 0x626c
    mov bx, ax                       ; 0x626e
    push word [bx + panel_area + 0x2] ; 0x6270
    push word [bx + panel_area]      ; 0x6274
    call gfx_restore_area            ; 0x6278
    add sp, byte 6                   ; 0x627b
    cmp word [bp + 6], byte 0        ; 0x627e
    je short @..api_idx_0006_MROT.l5 ; 0x6282
    mov ax, word [party_char_count]  ; 0x6284
    mov cx, 2                        ; 0x6287
    cwd                              ; 0x628a
    idiv cx                          ; 0x628b
    mov ax, dx                       ; 0x628d
    mov cx, 0xfc                     ; 0x628f
    imul cx                          ; 0x6292
    add ax, strict word 5            ; 0x6294
    mov word [bp - 4], ax            ; 0x6297
    mov ax, word [party_char_count]  ; 0x629a
    mov cx, 2                        ; 0x629d
    cwd                              ; 0x62a0
    idiv cx                          ; 0x62a1
    mov cx, 0x2d                     ; 0x62a3
    imul cx                          ; 0x62a6
    add ax, strict word 0x12         ; 0x62a8
    mov word [bp - 6], ax            ; 0x62ab
    add ax, strict word 0x2b         ; 0x62ae
    push ax                          ; 0x62b1
    mov ax, word [bp - 4]            ; 0x62b2
    add ax, strict word 0x3b         ; 0x62b5
    push ax                          ; 0x62b8
    push word [bp - 6]               ; 0x62b9
    push word [bp - 4]               ; 0x62bc
    call gfx_show_area               ; 0x62bf
    add sp, byte 8                   ; 0x62c2
@..api_idx_0006_MROT.l5:
    ret                              ; 0x62c5
