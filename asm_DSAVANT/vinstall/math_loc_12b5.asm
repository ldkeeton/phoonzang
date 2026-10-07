math_loc_12b5:
    push bp                          ; 0x12b5
    mov bp, sp                       ; 0x12b6
    add sp, strict word 0xfd28       ; 0x12b8
    call loc_0927                    ; 0x12bc
    mov word [bp - 0x01c8], 0x78     ; 0x12bf
    call loc_0443                    ; 0x12c5
    mov ax, 0x1732                   ; 0x12c8
    push ax                          ; 0x12cb
    mov ax, 0xe                      ; 0x12cc
    push ax                          ; 0x12cf
    mov ax, 0                        ; 0x12d0
    push ax                          ; 0x12d3
    call loc_040f                    ; 0x12d4
    add sp, byte 6                   ; 0x12d7
    mov ax, 0x1767                   ; 0x12da
    push ax                          ; 0x12dd
    mov ax, 0xe                      ; 0x12de
    push ax                          ; 0x12e1
    mov ax, 1                        ; 0x12e2
    push ax                          ; 0x12e5
    call loc_040f                    ; 0x12e6
    add sp, byte 6                   ; 0x12e9
    mov ax, 0x179c                   ; 0x12ec
    push ax                          ; 0x12ef
    mov ax, 0xe                      ; 0x12f0
    push ax                          ; 0x12f3
    mov ax, data_0002                ; 0x12f4
    push ax                          ; 0x12f7
    call loc_040f                    ; 0x12f8
    add sp, byte 6                   ; 0x12fb
    mov ax, 0x17d1                   ; 0x12fe
    push ax                          ; 0x1301
    mov ax, 0xe                      ; 0x1302
    push ax                          ; 0x1305
    mov ax, 3                        ; 0x1306
    push ax                          ; 0x1309
    call loc_040f                    ; 0x130a
    add sp, byte 6                   ; 0x130d
    mov ax, 0x1806                   ; 0x1310
    push ax                          ; 0x1313
    mov ax, 0xe                      ; 0x1314
    push ax                          ; 0x1317
    mov ax, data_0004                ; 0x1318
    push ax                          ; 0x131b
    call loc_040f                    ; 0x131c
    add sp, byte 6                   ; 0x131f
    mov ax, word [bp - 0x01c8]       ; 0x1322
    mov cx, 0x64                     ; 0x1326
    cwd                              ; 0x1329
    idiv cx                          ; 0x132a
    push ax                          ; 0x132c
    mov ax, 0x3b                     ; 0x132d
    push ax                          ; 0x1330
    mov ax, 3                        ; 0x1331
    push ax                          ; 0x1334
    call loc_03b3                    ; 0x1335
    add sp, byte 6                   ; 0x1338
    mov ax, 0x183b                   ; 0x133b
    push ax                          ; 0x133e
    call bios_video_loc_2621         ; 0x133f
    pop cx                           ; 0x1342
    lea ax, word [bp - 0x02d6]       ; 0x1343
    push ax                          ; 0x1347
    mov ax, word [bp - 0x01c8]       ; 0x1348
    mov cx, 0x64                     ; 0x134c
    cwd                              ; 0x134f
    idiv cx                          ; 0x1350
    mov ax, dx                       ; 0x1352
    push ax                          ; 0x1354
    call math_loc_02b2               ; 0x1355
    add sp, byte 4                   ; 0x1358
    lea ax, word [bp - 0x02d6]       ; 0x135b
    push ax                          ; 0x135f
    call strlen_3                    ; 0x1360
    pop cx                           ; 0x1363
    cmp ax, strict word 1            ; 0x1364
    jne short @..math_loc_12b5.l1    ; 0x1367
    mov al, byte [bp - 0x02d6]       ; 0x1369
    mov byte [bp - 0x02d5], al       ; 0x136d
    mov byte [bp - 0x02d6], data_0030 ; 0x1371
    mov byte [bp - 0x02d4], 0        ; 0x1376
@..math_loc_12b5.l1:
    lea ax, word [bp - 0x02d6]       ; 0x137b
    push ax                          ; 0x137f
    call bios_video_loc_2621         ; 0x1380
    pop cx                           ; 0x1383
    mov ax, 0x183d                   ; 0x1384
    push ax                          ; 0x1387
    mov ax, data_0005                ; 0x1388
    push ax                          ; 0x138b
    mov ax, 7                        ; 0x138c
    push ax                          ; 0x138f
    call loc_040f                    ; 0x1390
    add sp, byte 6                   ; 0x1393
    mov ax, 0x1882                   ; 0x1396
    push ax                          ; 0x1399
    mov ax, data_0005                ; 0x139a
    push ax                          ; 0x139d
    mov ax, 8                        ; 0x139e
    push ax                          ; 0x13a1
    call loc_040f                    ; 0x13a2
    add sp, byte 6                   ; 0x13a5
    mov ax, 0x18b2                   ; 0x13a8
    push ax                          ; 0x13ab
    mov ax, data_0005                ; 0x13ac
    push ax                          ; 0x13af
    mov ax, 0xa                      ; 0x13b0
    push ax                          ; 0x13b3
    call loc_040f                    ; 0x13b4
    add sp, byte 6                   ; 0x13b7
    mov ax, 0x18f6                   ; 0x13ba
    push ax                          ; 0x13bd
    mov ax, data_0005                ; 0x13be
    push ax                          ; 0x13c1
    mov ax, 0xb                      ; 0x13c2
    push ax                          ; 0x13c5
    call loc_040f                    ; 0x13c6
    add sp, byte 6                   ; 0x13c9
    mov ax, 0x1911                   ; 0x13cc
    push ax                          ; 0x13cf
    mov ax, data_0005                ; 0x13d0
    push ax                          ; 0x13d3
    mov ax, 0xd                      ; 0x13d4
    push ax                          ; 0x13d7
    call loc_040f                    ; 0x13d8
    add sp, byte 6                   ; 0x13db
    mov ax, 0x1957                   ; 0x13de
    push ax                          ; 0x13e1
    mov ax, data_0005                ; 0x13e2
    push ax                          ; 0x13e5
    mov ax, 0xe                      ; 0x13e6
    push ax                          ; 0x13e9
    call loc_040f                    ; 0x13ea
    add sp, byte 6                   ; 0x13ed
    mov ax, 0x199e                   ; 0x13f0
    push ax                          ; 0x13f3
    mov ax, data_0005                ; 0x13f4
    push ax                          ; 0x13f7
    mov ax, 0xf                      ; 0x13f8
    push ax                          ; 0x13fb
    call loc_040f                    ; 0x13fc
    add sp, byte 6                   ; 0x13ff
    mov ax, 0x19e4                   ; 0x1402
    push ax                          ; 0x1405
    mov ax, data_0005                ; 0x1406
    push ax                          ; 0x1409
    mov ax, 0x10                     ; 0x140a
    push ax                          ; 0x140d
    call loc_040f                    ; 0x140e
    add sp, byte 6                   ; 0x1411
    mov ax, 0x1a2b                   ; 0x1414
    push ax                          ; 0x1417
    mov ax, data_0005                ; 0x1418
    push ax                          ; 0x141b
    mov ax, 0x11                     ; 0x141c
    push ax                          ; 0x141f
    call loc_040f                    ; 0x1420
    add sp, byte 6                   ; 0x1423
    mov ax, 0x1a72                   ; 0x1426
    push ax                          ; 0x1429
    mov ax, data_0005                ; 0x142a
    push ax                          ; 0x142d
    mov ax, 0x12                     ; 0x142e
    push ax                          ; 0x1431
    call loc_040f                    ; 0x1432
    add sp, byte 6                   ; 0x1435
    mov ax, 0x1a91                   ; 0x1438
    push ax                          ; 0x143b
    mov ax, 0x2648                   ; 0x143c
    push ax                          ; 0x143f
    call strlen_2                    ; 0x1440
    add sp, byte 4                   ; 0x1443
    mov ax, 0x1a92                   ; 0x1446
    push ax                          ; 0x1449
    call math_loc_0992               ; 0x144a
    pop cx                           ; 0x144d
    call loc_0443                    ; 0x144e
    mov ax, 0x1ac1                   ; 0x1451
    push ax                          ; 0x1454
    mov ax, 0xe                      ; 0x1455
    push ax                          ; 0x1458
    mov ax, 0                        ; 0x1459
    push ax                          ; 0x145c
    call loc_040f                    ; 0x145d
    add sp, byte 6                   ; 0x1460
    mov ax, 0x1af6                   ; 0x1463
    push ax                          ; 0x1466
    mov ax, 0xe                      ; 0x1467
    push ax                          ; 0x146a
    mov ax, 1                        ; 0x146b
    push ax                          ; 0x146e
    call loc_040f                    ; 0x146f
    add sp, byte 6                   ; 0x1472
    mov ax, 0x1b2b                   ; 0x1475
    push ax                          ; 0x1478
    mov ax, 0xe                      ; 0x1479
    push ax                          ; 0x147c
    mov ax, data_0002                ; 0x147d
    push ax                          ; 0x1480
    call loc_040f                    ; 0x1481
    add sp, byte 6                   ; 0x1484
    mov ax, 0x1b60                   ; 0x1487
    push ax                          ; 0x148a
    mov ax, 0xe                      ; 0x148b
    push ax                          ; 0x148e
    mov ax, 3                        ; 0x148f
    push ax                          ; 0x1492
    call loc_040f                    ; 0x1493
    add sp, byte 6                   ; 0x1496
    mov ax, 0x1b95                   ; 0x1499
    push ax                          ; 0x149c
    mov ax, 0xe                      ; 0x149d
    push ax                          ; 0x14a0
    mov ax, data_0004                ; 0x14a1
    push ax                          ; 0x14a4
    call loc_040f                    ; 0x14a5
    add sp, byte 6                   ; 0x14a8
    call loc_245e                    ; 0x14ab
    mov word [bp - 0x0006], ax       ; 0x14ae
