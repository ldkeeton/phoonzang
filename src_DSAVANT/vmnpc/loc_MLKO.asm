; auto-generated
loc_MLKO:
    mov ax, 0                        ; 0x130b
    call aztec_csav                  ; 0x130e
    mov ax, 3                        ; 0x1311
    push ax                          ; 0x1314
    call api_idx_0006_SHUK           ; 0x1315
    pop cx                           ; 0x1318
    mov ax, 3                        ; 0x1319
    push ax                          ; 0x131c
    call loc_HTQP                    ; 0x131d
    pop cx                           ; 0x1320
    mov ax, 0                        ; 0x1321
    push ax                          ; 0x1324
    push word [bp + 0xa]             ; 0x1325
    call gfx_entry_12                ; 0x1328
    add sp, byte 4                   ; 0x132b
    mov ax, 7                        ; 0x132e
    imul word [bp + 0x6]             ; 0x1331
    add ax, 0x9c                     ; 0x1334
    push ax                          ; 0x1337
    push word [bp + 0x4]             ; 0x1338
    call aztec_strlen                ; 0x133b
    pop cx                           ; 0x133e
    mov cx, 6                        ; 0x133f
    imul cx                          ; 0x1342
    mov cx, 2                        ; 0x1344
    cwd                              ; 0x1347
    idiv cx                          ; 0x1348
    mov cx, ax                       ; 0x134a
    mov ax, 0xa0                     ; 0x134c
    sub ax, cx                       ; 0x134f
    push ax                          ; 0x1351
    call gfx_entry_13                ; 0x1352
    add sp, byte 4                   ; 0x1355
    mov ax, 0                        ; 0x1358
    push ax                          ; 0x135b
    push word [bp + 0x4]             ; 0x135c
    call ds_string_loc_QRJV          ; 0x135f
    add sp, byte 4                   ; 0x1362
    mov ax, 7                        ; 0x1365
    imul word [bp + 0x6]             ; 0x1368
    add ax, 0xa2                     ; 0x136b
    push ax                          ; 0x136e
    mov ax, 0x127                    ; 0x136f
    push ax                          ; 0x1372
    mov ax, 7                        ; 0x1373
    imul word [bp + 0x6]             ; 0x1376
    add ax, 0x9c                     ; 0x1379
    push ax                          ; 0x137c
    mov ax, 0x19                     ; 0x137d
    push ax                          ; 0x1380
    call gfx_entry_16                ; 0x1381
    add sp, byte 8                   ; 0x1384
    cmp word [bp + 0x8], byte 0      ; 0x1387
    je short @..loc_MLKO.l1          ; 0x138b
    mov ax, 0                        ; 0x138d
    push ax                          ; 0x1390
    call ds_app_HKIJ                 ; 0x1391
    pop cx                           ; 0x1394
@..loc_MLKO.l1:
    mov ax, 0                        ; 0x1395
    push ax                          ; 0x1398
    push word [bss_905a]             ; 0x1399
    call api_idx_0004_GRRG           ; 0x139d
    add sp, byte 4                   ; 0x13a0
    mov ax, 3                        ; 0x13a3
    push ax                          ; 0x13a6
    call api_idx_0006_SHUK           ; 0x13a7
    pop cx                           ; 0x13aa
    mov ax, 3                        ; 0x13ab
    push ax                          ; 0x13ae
    call loc_HTQP                    ; 0x13af
    pop cx                           ; 0x13b2
    ret                              ; 0x13b3
