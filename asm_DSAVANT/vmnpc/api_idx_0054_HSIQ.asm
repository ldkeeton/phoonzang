; auto-generated
api_idx_0054_HSIQ:
    mov ax, 0xffac                   ; 0x128c
    call aztec_csav                  ; 0x128f
    lea ax, word [bp - 0x0054]       ; 0x1292
    push ax                          ; 0x1295
    push word [bp + 0x4]             ; 0x1296
    call ds_app_mem_VKHV             ; 0x1299
    add sp, byte 4                   ; 0x129c
    lea ax, word [bp - 0x0054]       ; 0x129f
    push ax                          ; 0x12a2
    call aztec_strlen                ; 0x12a3
    pop cx                           ; 0x12a6
    mov cx, 6                        ; 0x12a7
    imul cx                          ; 0x12aa
    mov cx, 2                        ; 0x12ac
    cwd                              ; 0x12af
    idiv cx                          ; 0x12b0
    mov cx, ax                       ; 0x12b2
    mov ax, word [bp + 0x6]          ; 0x12b4
    sub ax, cx                       ; 0x12b7
    mov word [bp - 0x0002], ax       ; 0x12b9
    lea ax, word [bp - 0x0054]       ; 0x12bc
    push ax                          ; 0x12bf
    call aztec_strlen                ; 0x12c0
    pop cx                           ; 0x12c3
    mov cx, 6                        ; 0x12c4
    imul cx                          ; 0x12c7
    mov cx, ax                       ; 0x12c9
    mov ax, word [bp - 0x0002]       ; 0x12cb
    add cx, ax                       ; 0x12ce
    mov word [bp - 0x0004], cx       ; 0x12d0
    lea ax, word [bp - 0x0054]       ; 0x12d3
    push ax                          ; 0x12d6
    mov ax, 0xc2                     ; 0x12d7
    push ax                          ; 0x12da
    push ax                          ; 0x12db
    mov ax, 1                        ; 0x12dc
    push ax                          ; 0x12df
    push word [bp + 0x8]             ; 0x12e0
    push word [bp - 0x0002]          ; 0x12e3
    mov ax, word [bp + 0x8]          ; 0x12e6
    add ax, strict word 6            ; 0x12e9
    push ax                          ; 0x12ec
    push cx                          ; 0x12ed
    push word [bp + 0x8]             ; 0x12ee
    push word [bp - 0x0002]          ; 0x12f1
    call api_idx_0004_LGVO           ; 0x12f4
    add sp, byte 0x14                ; 0x12f7
    mov ax, 0                        ; 0x12fa
    push ax                          ; 0x12fd
    call ds_app_IPOK                 ; 0x12fe
    pop cx                           ; 0x1301
    push word [bss_905a]             ; 0x1302
    call ds_app_MIKI                 ; 0x1306
    pop cx                           ; 0x1309
    ret                              ; 0x130a
loc_130b:
    mov ax, 0                        ; 0x130b
    call aztec_csav                  ; 0x130e
    mov ax, 3                        ; 0x1311
    push ax                          ; 0x1314
    call api_idx_0006_NSNR           ; 0x1315
    pop cx                           ; 0x1318
    mov ax, 3                        ; 0x1319
    push ax                          ; 0x131c
    call loc_0c96                    ; 0x131d
    pop cx                           ; 0x1320
    mov ax, 0                        ; 0x1321
    push ax                          ; 0x1324
    push word [bp + 0xa]             ; 0x1325
    call thunk_3                     ; 0x1328
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
    call thunk                       ; 0x1352
    add sp, byte 4                   ; 0x1355
    mov ax, 0                        ; 0x1358
    push ax                          ; 0x135b
    push word [bp + 0x4]             ; 0x135c
    call ds_string_loc_PTIK          ; 0x135f
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
    call thunk_4                     ; 0x1381
    add sp, byte 8                   ; 0x1384
    cmp word [bp + 0x8], byte 0      ; 0x1387
    je short @..loc_130b.l1          ; 0x138b
    mov ax, 0                        ; 0x138d
    push ax                          ; 0x1390
    call ds_app_IPOK                 ; 0x1391
    pop cx                           ; 0x1394
@..loc_130b.l1:
    mov ax, 0                        ; 0x1395
    push ax                          ; 0x1398
    push word [bss_905a]             ; 0x1399
    call api_idx_0004_HTKK           ; 0x139d
    add sp, byte 4                   ; 0x13a0
    mov ax, 3                        ; 0x13a3
    push ax                          ; 0x13a6
    call api_idx_0006_NSNR           ; 0x13a7
    pop cx                           ; 0x13aa
    mov ax, 3                        ; 0x13ab
    push ax                          ; 0x13ae
    call loc_0c96                    ; 0x13af
    pop cx                           ; 0x13b2
    ret                              ; 0x13b3
