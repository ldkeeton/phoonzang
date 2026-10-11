api_idx_0054_2:
    mov ax, 0xffac                   ; 0x128c
    db 0xe8, 0x79, 0xe1 ; call 0xf40b
    lea ax, word [bp - 0x0054]       ; 0x1292
    push ax                          ; 0x1295
    push word [bp + 0x4]             ; 0x1296
    call 0xb53b                      ; 0x1299
    add sp, byte 4                   ; 0x129c
    lea ax, word [bp - 0x0054]       ; 0x129f
    push ax                          ; 0x12a2
    db 0xe8, 0xea, 0xe7 ; call 0xfa90
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
    db 0xe8, 0xcd, 0xe7 ; call 0xfa90
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
    call api_idx_0004_3              ; 0x12f4
    add sp, byte 0x14                ; 0x12f7
    mov ax, 0                        ; 0x12fa
    push ax                          ; 0x12fd
    db 0xe8, 0xdf, 0xa4 ; call 0xb7e0
    pop cx                           ; 0x1301
    push word [dseg_905a]            ; 0x1302
    call 0xb75e                      ; 0x1306
    pop cx                           ; 0x1309
    ret                              ; 0x130a
loc_130b:
    mov ax, 0                        ; 0x130b
    db 0xe8, 0xfa, 0xe0 ; call 0xf40b
    mov ax, 3                        ; 0x1311
    push ax                          ; 0x1314
    call api_idx_0006                ; 0x1315
    pop cx                           ; 0x1318
    mov ax, 3                        ; 0x1319
    push ax                          ; 0x131c
    call loc_0c96                    ; 0x131d
    pop cx                           ; 0x1320
    mov ax, 0                        ; 0x1321
    push ax                          ; 0x1324
    push word [bp + 0xa]             ; 0x1325
    db 0xe8, 0xf8, 0xd4 ; call 0xe823
    add sp, byte 4                   ; 0x132b
    mov ax, 7                        ; 0x132e
    imul word [bp + 0x6]             ; 0x1331
    add ax, 0x9c                     ; 0x1334
    push ax                          ; 0x1337
    push word [bp + 0x4]             ; 0x1338
    db 0xe8, 0x52, 0xe7 ; call 0xfa90
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
    db 0xe8, 0xb4, 0xd4 ; call 0xe809
    add sp, byte 4                   ; 0x1355
    mov ax, 0                        ; 0x1358
    push ax                          ; 0x135b
    push word [bp + 0x4]             ; 0x135c
    db 0xe8, 0xec, 0xd4 ; call 0xe84e
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
    db 0xe8, 0x56, 0xd5 ; call 0xe8da
    add sp, byte 8                   ; 0x1384
    cmp word [bp + 0x8], byte 0      ; 0x1387
    je short @..local.l15            ; 0x138b
    mov ax, 0                        ; 0x138d
    push ax                          ; 0x1390
    db 0xe8, 0x4c, 0xa4 ; call 0xb7e0
    pop cx                           ; 0x1394
@..local.l15:
    mov ax, 0                        ; 0x1395
    push ax                          ; 0x1398
    push word [dseg_905a]            ; 0x1399
    call api_idx_0004_5              ; 0x139d
    add sp, byte 4                   ; 0x13a0
    mov ax, 3                        ; 0x13a3
    push ax                          ; 0x13a6
    call api_idx_0006                ; 0x13a7
    pop cx                           ; 0x13aa
    mov ax, 3                        ; 0x13ab
    push ax                          ; 0x13ae
    call loc_0c96                    ; 0x13af
    pop cx                           ; 0x13b2
    ret                              ; 0x13b3
