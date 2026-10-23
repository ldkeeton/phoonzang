; auto-generated
api_idx_000c_QNKI:
    mov ax, 0xfff4                   ; 0x11b0
    call aztec_csav                  ; 0x11b3
    mov word [bp - 0x0002], 0        ; 0x11b6
    jmp near @..api_idx_000c_QNKI.l4 ; 0x11bb
@..api_idx_000c_QNKI.l1:
    mov ax, 0x2c                     ; 0x11be
    imul word [bp - 0x0002]          ; 0x11c1
    mov si, ax                       ; 0x11c4
    mov ax, word [bp + 0x4]          ; 0x11c6
    shl ax, 1                        ; 0x11c9
    mov bx, ax                       ; 0x11cb
    mov bx, word [bx + party_char]   ; 0x11cd
    mov al, byte [bx + si + 0x2a]    ; 0x11d1
    cbw                              ; 0x11d4
    mov word [bp - 0x0004], ax       ; 0x11d5
    cmp ax, strict word 0xffff       ; 0x11d8
    jne short @..api_idx_000c_QNKI.l2 ; 0x11db
    jmp near @..api_idx_000c_QNKI.l3 ; 0x11dd
@..api_idx_000c_QNKI.l2:
    mov cx, 0xa                      ; 0x11e0
    cwd                              ; 0x11e3
    idiv cx                          ; 0x11e4
    mov word [bp - 0x0006], ax       ; 0x11e6
    mov word [bp - 0x0008], dx       ; 0x11e9
    mov cx, 6                        ; 0x11ec
    imul cx                          ; 0x11ef
    mov cx, word [bp - 0x0008]       ; 0x11f1
    shl cx, 1                        ; 0x11f4
    add ax, cx                       ; 0x11f6
    mov bx, ax                       ; 0x11f8
    mov word [bx + bss_843a], 0      ; 0x11fa
    mov ax, word [bp + 0x4]          ; 0x1200
    shl ax, 1                        ; 0x1203
    mov bx, ax                       ; 0x1205
    mov bx, word [bx + party_char]   ; 0x1207
    mov byte [bx + si + 0x2a], 0xff  ; 0x120b
    mov ax, 6                        ; 0x120f
    imul word [bp - 0x0006]          ; 0x1212
    mov cx, word [bp - 0x0008]       ; 0x1215
    shl cx, 1                        ; 0x1218
    add ax, cx                       ; 0x121a
    mov bx, ax                       ; 0x121c
    mov ax, word [bx + 0x5ec]        ; 0x121e
    mov cx, 0xa                      ; 0x1222
    cwd                              ; 0x1225
    idiv cx                          ; 0x1226
    mov word [bp - 0x000a], ax       ; 0x1228
    mov word [bp - 0x000c], dx       ; 0x122b
    mov cx, 6                        ; 0x122e
    imul cx                          ; 0x1231
    mov cx, word [bp - 0x000c]       ; 0x1233
    shl cx, 1                        ; 0x1236
    add ax, cx                       ; 0x1238
    mov bx, ax                       ; 0x123a
    cmp word [bx + bss_843a], byte 0 ; 0x123c
    jne short @..api_idx_000c_QNKI.l3 ; 0x1241
    mov ax, 0xa                      ; 0x1243
    imul word [bp + 0x4]             ; 0x1246
    add ax, word [bp - 0x0002]       ; 0x1249
    mov word [bx + bss_843a], ax     ; 0x124c
    mov ax, 0xa                      ; 0x1250
    imul word [bp - 0x000a]          ; 0x1253
    add ax, word [bp - 0x000c]       ; 0x1256
    push ax                          ; 0x1259
    mov ax, 0x2c                     ; 0x125a
    imul word [bp - 0x0002]          ; 0x125d
    mov si, ax                       ; 0x1260
    mov ax, word [bp + 0x4]          ; 0x1262
    shl ax, 1                        ; 0x1265
    mov bx, ax                       ; 0x1267
    mov bx, word [bx + party_char]   ; 0x1269
    pop ax                           ; 0x126d
    mov byte [bx + si + 0x2a], al    ; 0x126e
    mov ax, 0xffff                   ; 0x1271
    push ax                          ; 0x1274
    push word [bp - 0x000c]          ; 0x1275
    push word [bp - 0x000a]          ; 0x1278
    push word [bp + 0x4]             ; 0x127b
    call fill_action_slot_table_alt  ; 0x127e
    add sp, byte 8                   ; 0x1281
@..api_idx_000c_QNKI.l3:
    inc word [bp - 0x0002]           ; 0x1284
@..api_idx_000c_QNKI.l4:
    mov ax, word [bp + 0x4]          ; 0x1287
    shl ax, 1                        ; 0x128a
    mov bx, ax                       ; 0x128c
    mov bx, word [bx + party_char]   ; 0x128e
    mov al, byte [bx + 0x1a1]        ; 0x1292
    sub ah, ah                       ; 0x1296
    cmp ax, word [bp - 0x0002]       ; 0x1298
    jle short @..api_idx_000c_QNKI.l5 ; 0x129b
    jmp near @..api_idx_000c_QNKI.l1 ; 0x129d
@..api_idx_000c_QNKI.l5:
    call loc_RPUI                    ; 0x12a0
    mov ax, 4                        ; 0x12a3
    push ax                          ; 0x12a6
    call api_idx_0004_RGUG           ; 0x12a7
    pop cx                           ; 0x12aa
    ret                              ; 0x12ab
