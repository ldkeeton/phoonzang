; auto-generated
advance_member_cell_actions:
    mov ax, 0xfff4                   ; 0x11b0
    call aztec_csav                  ; 0x11b3
    mov word [bp - 2], 0             ; 0x11b6
    jmp near .forward3               ; 0x11bb
.back1:
    mov ax, 0x2c                     ; 0x11be
    imul word [bp - 2]               ; 0x11c1
    mov si, ax                       ; 0x11c4
    mov ax, word [bp + 4]            ; 0x11c6
    shl ax, 1                        ; 0x11c9
    mov bx, ax                       ; 0x11cb
    mov bx, word [bx + party_char]   ; 0x11cd
    mov al, byte [bx + si + member_rec.item_cell] ; 0x11d1
    cbw                              ; 0x11d4
    mov word [bp - 4], ax            ; 0x11d5
    cmp ax, strict word 0xffff       ; 0x11d8
    jne short .forward1              ; 0x11db
    jmp near .forward2               ; 0x11dd
.forward1:
    mov cx, 0xa                      ; 0x11e0
    cwd                              ; 0x11e3
    idiv cx                          ; 0x11e4
    mov word [bp - 6], ax            ; 0x11e6
    mov word [bp - 8], dx            ; 0x11e9
    mov cx, 6                        ; 0x11ec
    imul cx                          ; 0x11ef
    mov cx, word [bp - 8]            ; 0x11f1
    shl cx, 1                        ; 0x11f4
    add ax, cx                       ; 0x11f6
    mov bx, ax                       ; 0x11f8
    mov word [bx + cell_slot_ref], 0 ; 0x11fa
    mov ax, word [bp + 4]            ; 0x1200
    shl ax, 1                        ; 0x1203
    mov bx, ax                       ; 0x1205
    mov bx, word [bx + party_char]   ; 0x1207
    mov byte [bx + si + 0x2a], 0xff  ; 0x120b
    mov ax, 6                        ; 0x120f
    imul word [bp - 6]               ; 0x1212
    mov cx, word [bp - 8]            ; 0x1215
    shl cx, 1                        ; 0x1218
    add ax, cx                       ; 0x121a
    mov bx, ax                       ; 0x121c
    mov ax, word [bx + cell_overlay_code + 0x36] ; 0x121e
    mov cx, 0xa                      ; 0x1222
    cwd                              ; 0x1225
    idiv cx                          ; 0x1226
    mov word [bp - 0xa], ax          ; 0x1228
    mov word [bp - 0xc], dx          ; 0x122b
    mov cx, 6                        ; 0x122e
    imul cx                          ; 0x1231
    mov cx, word [bp - 0xc]          ; 0x1233
    shl cx, 1                        ; 0x1236
    add ax, cx                       ; 0x1238
    mov bx, ax                       ; 0x123a
    cmp word [bx + cell_slot_ref], byte 0 ; 0x123c
    jne short .forward2              ; 0x1241
    mov ax, 0xa                      ; 0x1243
    imul word [bp + 4]               ; 0x1246
    add ax, word [bp - 2]            ; 0x1249
    mov word [bx + cell_slot_ref], ax ; 0x124c
    mov ax, 0xa                      ; 0x1250
    imul word [bp - 0xa]             ; 0x1253
    add ax, word [bp - 0xc]          ; 0x1256
    push ax                          ; 0x1259
    mov ax, 0x2c                     ; 0x125a
    imul word [bp - 2]               ; 0x125d
    mov si, ax                       ; 0x1260
    mov ax, word [bp + 4]            ; 0x1262
    shl ax, 1                        ; 0x1265
    mov bx, ax                       ; 0x1267
    mov bx, word [bx + party_char]   ; 0x1269
    pop ax                           ; 0x126d
    mov byte [bx + si + member_rec.item_cell], al ; 0x126e
    mov ax, 0xffff                   ; 0x1271
    push ax                          ; 0x1274
    push word [bp - 0xc]             ; 0x1275
    push word [bp - 0xa]             ; 0x1278
    push word [bp + 4]               ; 0x127b
    call fill_action_slot_table_vmnpc ; 0x127e
    add sp, byte 8                   ; 0x1281
.forward2:
    inc word [bp - 2]                ; 0x1284
.forward3:
    mov ax, word [bp + 4]            ; 0x1287
    shl ax, 1                        ; 0x128a
    mov bx, ax                       ; 0x128c
    mov bx, word [bx + party_char]   ; 0x128e
    mov al, byte [bx + member_rec.item_count] ; 0x1292
    sub ah, ah                       ; 0x1296
    cmp ax, word [bp - 2]            ; 0x1298
    jle short .forward4              ; 0x129b
    jmp near .back1                  ; 0x129d
.forward4:
    call run_party_screen_animation  ; 0x12a0
    mov ax, 4                        ; 0x12a3
    push ax                          ; 0x12a6
    call wait_ticks_with_events      ; 0x12a7
    pop cx                           ; 0x12aa
    ret                              ; 0x12ab
