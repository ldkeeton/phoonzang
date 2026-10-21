; auto-generated
ds_app_string_IIIR: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x1308
    call aztec_csav                  ; 0x130b
    cmp word [bp + 0xc], byte 0      ; 0x130e
    je short @..ds_app_string_IIIR.l1 ; 0x1312
    push word [bp + 0xe]             ; 0x1314
    push word [bp + 0xa]             ; 0x1317
    push word [bp + 0x8]             ; 0x131a
    push word [bp + 0x6]             ; 0x131d
    push word [bp + 0x4]             ; 0x1320
    call ds_app_string_MJQI          ; 0x1323
    add sp, byte 0x0a                ; 0x1326
    jmp short @..ds_app_string_IIIR.l2 ; 0x1329
@..ds_app_string_IIIR.l1:
    mov ax, 0xc2                     ; 0x132b
    push ax                          ; 0x132e
    mov ax, 1                        ; 0x132f
    push ax                          ; 0x1332
    call gfx_entry_12                ; 0x1333
    add sp, byte 4                   ; 0x1336
    mov ax, word [bp + 0x6]          ; 0x1339
    inc ax                           ; 0x133c
    inc ax                           ; 0x133d
    push ax                          ; 0x133e
    push word [bp + 0xe]             ; 0x133f
    call aztec_strlen                ; 0x1342
    pop cx                           ; 0x1345
    mov cx, ax                       ; 0x1346
    mov ax, word [bp + 0x8]          ; 0x1348
    sub ax, cx                       ; 0x134b
    mov cx, 6                        ; 0x134d
    imul cx                          ; 0x1350
    mov cx, 2                        ; 0x1352
    cwd                              ; 0x1355
    idiv cx                          ; 0x1356
    add ax, word [bp + 0x4]          ; 0x1358
    inc ax                           ; 0x135b
    push ax                          ; 0x135c
    call gfx_entry_13                ; 0x135d
    add sp, byte 4                   ; 0x1360
    mov ax, 0                        ; 0x1363
    push ax                          ; 0x1366
    push word [bp + 0xe]             ; 0x1367
    call ds_string_loc_QRJV          ; 0x136a
    add sp, byte 4                   ; 0x136d
@..ds_app_string_IIIR.l2:
    ret                              ; 0x1370
