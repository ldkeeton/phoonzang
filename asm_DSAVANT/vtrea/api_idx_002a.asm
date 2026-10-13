; auto-generated
api_idx_002a:
    mov ax, 0xffd6                   ; 0x8200
    call aztec_csav                  ; 0x8203
    mov ax, 0                        ; 0x8206
    push ax                          ; 0x8209
    mov ax, 0x28                     ; 0x820a
    push ax                          ; 0x820d
    lea ax, word [bp - 0x002a]       ; 0x820e
    push ax                          ; 0x8211
    call aztec_setmem                ; 0x8212
    add sp, byte 6                   ; 0x8215
    push word [bp + 0x4]             ; 0x8218
    lea ax, word [bp - 0x002a]       ; 0x821b
    push ax                          ; 0x821e
    call aztec_strcpy                ; 0x821f
    add sp, byte 4                   ; 0x8222
    mov ax, 0x2f                     ; 0x8225
    push ax                          ; 0x8228
    lea ax, word [bp - 0x002a]       ; 0x8229
    push ax                          ; 0x822c
    call strlen                      ; 0x822d
    add sp, byte 4                   ; 0x8230
    mov word [bp - 0x0002], ax       ; 0x8233
    cmp ax, strict word 0xffff       ; 0x8236
    jne short @..api_idx_002a.l1     ; 0x8239
    lea ax, word [bp - 0x002a]       ; 0x823b
    push ax                          ; 0x823e
    call aztec_strlen                ; 0x823f
    pop cx                           ; 0x8242
    mov word [bp - 0x0002], ax       ; 0x8243
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x8246
    jle short @..api_idx_002a.l2     ; 0x824a
    mov word [bp - 0x0002], 0xa      ; 0x824c
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x8251
    add bx, bp                       ; 0x8254
    mov byte [bx - 0x002a], 0        ; 0x8256
    mov byte [bx - 0x001f], 0        ; 0x825a
    mov ax, 0                        ; 0x825e
    push ax                          ; 0x8261
    push word [bp + 0xa]             ; 0x8262
    call ds_loc_3a6a                 ; 0x8265
    add sp, byte 4                   ; 0x8268
    push word [bp + 0x8]             ; 0x826b
    push word [bp + 0x6]             ; 0x826e
    call ds_loc_3a50                 ; 0x8271
    add sp, byte 4                   ; 0x8274
    mov ax, 0                        ; 0x8277
    push ax                          ; 0x827a
    lea ax, word [bp - 0x002a]       ; 0x827b
    push ax                          ; 0x827e
    call ds_string_loc_3a95          ; 0x827f
    add sp, byte 4                   ; 0x8282
    mov ax, word [bp + 0x8]          ; 0x8285
    add ax, strict word 6            ; 0x8288
    push ax                          ; 0x828b
    push word [bp + 0x6]             ; 0x828c
    call ds_loc_3a50                 ; 0x828f
    add sp, byte 4                   ; 0x8292
    mov ax, 0                        ; 0x8295
    push ax                          ; 0x8298
    mov ax, word [bp - 0x0002]       ; 0x8299
    lea cx, word [bp - 0x0029]       ; 0x829c
    add ax, cx                       ; 0x829f
    push ax                          ; 0x82a1
    call ds_string_loc_3a95          ; 0x82a2
    add sp, byte 4                   ; 0x82a5
    ret                              ; 0x82a8
loc_82a9:
    mov ax, 0                        ; 0x82a9
    call aztec_csav                  ; 0x82ac
    mov ax, 0xa                      ; 0x82af
    push ax                          ; 0x82b2
    call ds_leaf_loc_36d0            ; 0x82b3
    pop cx                           ; 0x82b6
    ret                              ; 0x82b7
