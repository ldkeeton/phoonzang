api_idx_0026:
    mov ax, 0xffda                   ; 0x11f4
    call aztec_csav                  ; 0x11f7
    mov word [bss_904e], 0xffff      ; 0x11fa
    mov word [bp - 0x0002], 0x37     ; 0x1200
    mov word [bp - 0x0004], 0x8f     ; 0x1205
    mov word [bp - 0x0006], 0x108    ; 0x120a
    mov word [bp - 0x0008], 0xc5     ; 0x120f
    mov ax, 0x90b5                   ; 0x1214
    push ax                          ; 0x1217
    mov ax, word [bp - 0x0008]       ; 0x1218
    inc ax                           ; 0x121b
    push ax                          ; 0x121c
    mov ax, word [bp - 0x0006]       ; 0x121d
    inc ax                           ; 0x1220
    push ax                          ; 0x1221
    mov ax, word [bp - 0x0004]       ; 0x1222
    dec ax                           ; 0x1225
    push ax                          ; 0x1226
    mov ax, word [bp - 0x0002]       ; 0x1227
    dec ax                           ; 0x122a
    push ax                          ; 0x122b
    call ds_app_file_14ca            ; 0x122c
    add sp, byte 0x0a                ; 0x122f
    mov word [bp - 0x0026], ax       ; 0x1232
    push word [bp - 0x0008]          ; 0x1235
    push word [bp - 0x0006]          ; 0x1238
    push word [bp - 0x0004]          ; 0x123b
    push word [bp - 0x0002]          ; 0x123e
    call ds_app_0ee1                 ; 0x1241
    add sp, byte 8                   ; 0x1244
    lea ax, word [bp - 0x0024]       ; 0x1247
    push ax                          ; 0x124a
    push word [bp + 0x4]             ; 0x124b
    call ds_app_mem_0782             ; 0x124e
    add sp, byte 4                   ; 0x1251
    lea ax, word [bp - 0x0024]       ; 0x1254
    push ax                          ; 0x1257
    push word [bp + 0x6]             ; 0x1258
    mov ax, 1                        ; 0x125b
    push ax                          ; 0x125e
    mov ax, 0x20                     ; 0x125f
    push ax                          ; 0x1262
    mov ax, word [bp - 0x0004]       ; 0x1263
    add ax, strict word 7            ; 0x1266
    push ax                          ; 0x1269
    mov ax, word [bp - 0x0002]       ; 0x126a
    add ax, strict word 8            ; 0x126d
    push ax                          ; 0x1270
    call ds_app_string_1308          ; 0x1271
    add sp, byte 0x0c                ; 0x1274
    lea ax, word [bp - 0x0024]       ; 0x1277
    push ax                          ; 0x127a
    mov ax, word [bp + 0x4]          ; 0x127b
    inc ax                           ; 0x127e
    push ax                          ; 0x127f
    call ds_app_mem_0782             ; 0x1280
    add sp, byte 4                   ; 0x1283
    lea ax, word [bp - 0x0024]       ; 0x1286
    push ax                          ; 0x1289
    push word [bp + 0x8]             ; 0x128a
    mov ax, 1                        ; 0x128d
    push ax                          ; 0x1290
    mov ax, 0xc                      ; 0x1291
    push ax                          ; 0x1294
    mov ax, word [bp - 0x0004]       ; 0x1295
    add ax, strict word 0x17         ; 0x1298
    push ax                          ; 0x129b
    mov ax, word [bp - 0x0002]       ; 0x129c
    add ax, strict word 8            ; 0x129f
    push ax                          ; 0x12a2
    call ds_app_string_1308          ; 0x12a3
    add sp, byte 0x0c                ; 0x12a6
    lea ax, word [bp - 0x0024]       ; 0x12a9
    push ax                          ; 0x12ac
    mov ax, word [bp + 0x4]          ; 0x12ad
    inc ax                           ; 0x12b0
    inc ax                           ; 0x12b1
    push ax                          ; 0x12b2
    call ds_app_mem_0782             ; 0x12b3
    add sp, byte 4                   ; 0x12b6
    lea ax, word [bp - 0x0024]       ; 0x12b9
    push ax                          ; 0x12bc
    push word [bp + 0xa]             ; 0x12bd
    mov ax, 1                        ; 0x12c0
    push ax                          ; 0x12c3
    mov ax, 0xc                      ; 0x12c4
    push ax                          ; 0x12c7
    mov ax, word [bp - 0x0004]       ; 0x12c8
    add ax, strict word 0x27         ; 0x12cb
    push ax                          ; 0x12ce
    mov ax, word [bp - 0x0002]       ; 0x12cf
    add ax, strict word 8            ; 0x12d2
    push ax                          ; 0x12d5
    call ds_app_string_1308          ; 0x12d6
    add sp, byte 0x0c                ; 0x12d9
    lea ax, word [bp - 0x0024]       ; 0x12dc
    push ax                          ; 0x12df
    mov ax, word [bp + 0x4]          ; 0x12e0
    inc ax                           ; 0x12e3
    inc ax                           ; 0x12e4
    inc ax                           ; 0x12e5
    push ax                          ; 0x12e6
    call ds_app_mem_0782             ; 0x12e7
    add sp, byte 4                   ; 0x12ea
    mov ax, 0xc2                     ; 0x12ed
    push ax                          ; 0x12f0
    mov ax, 0x9b                     ; 0x12f1
    push ax                          ; 0x12f4
    call ds_loc_3a6a                 ; 0x12f5
    add sp, byte 4                   ; 0x12f8
    mov ax, word [bp - 0x0004]       ; 0x12fb
    add ax, strict word 0x16         ; 0x12fe
    push ax                          ; 0x1301
    lea ax, word [bp - 0x0024]       ; 0x1302
    push ax                          ; 0x1305
    call aztec_strlen                ; 0x1306
    pop cx                           ; 0x1309
    mov cx, ax                       ; 0x130a
    mov ax, 0x11                     ; 0x130c
    sub ax, cx                       ; 0x130f
    mov cx, 6                        ; 0x1311
    imul cx                          ; 0x1314
    inc ax                           ; 0x1316
    inc ax                           ; 0x1317
    mov cx, 2                        ; 0x1318
    cwd                              ; 0x131b
    idiv cx                          ; 0x131c
    add ax, word [bp - 0x0002]       ; 0x131e
    add ax, strict word 0x5d         ; 0x1321
    push ax                          ; 0x1324
    call ds_loc_3a50                 ; 0x1325
    add sp, byte 4                   ; 0x1328
    mov ax, 0                        ; 0x132b
    push ax                          ; 0x132e
    lea ax, word [bp - 0x0024]       ; 0x132f
    push ax                          ; 0x1332
    call ds_string_loc_3a95          ; 0x1333
    add sp, byte 4                   ; 0x1336
    push word [bp + 0xc]             ; 0x1339
    mov ax, 0xe38                    ; 0x133c
    push ax                          ; 0x133f
    call aztec_strcpy                ; 0x1340
    add sp, byte 4                   ; 0x1343
    mov ax, 1                        ; 0x1346
    push ax                          ; 0x1349
    mov ax, 0                        ; 0x134a
    push ax                          ; 0x134d
    push ax                          ; 0x134e
    mov ax, 1                        ; 0x134f
    push ax                          ; 0x1352
    mov ax, 0x11                     ; 0x1353
    push ax                          ; 0x1356
    mov ax, word [bp - 0x0004]       ; 0x1357
    add ax, strict word 0x1f         ; 0x135a
    push ax                          ; 0x135d
    mov ax, word [bp - 0x0002]       ; 0x135e
    add ax, strict word 0x5d         ; 0x1361
    push ax                          ; 0x1364
    call ds_app_11de                 ; 0x1365
    add sp, byte 0x0e                ; 0x1368
    mov ax, 0                        ; 0x136b
    push ax                          ; 0x136e
    mov ax, 0x20                     ; 0x136f
    push ax                          ; 0x1372
    mov ax, word [bp - 0x0004]       ; 0x1373
    add ax, strict word 0x25         ; 0x1376
    push ax                          ; 0x1379
    mov ax, word [bp - 0x0002]       ; 0x137a
    add ax, 0xc5                     ; 0x137d
    push ax                          ; 0x1380
    mov ax, word [bp - 0x0004]       ; 0x1381
    add ax, strict word 0x1f         ; 0x1384
    push ax                          ; 0x1387
    mov ax, word [bp - 0x0002]       ; 0x1388
    add ax, strict word 0x5d         ; 0x138b
    push ax                          ; 0x138e
    mov ax, 0                        ; 0x138f
    push ax                          ; 0x1392
    call ds_app_0ced                 ; 0x1393
    add sp, byte 0x0e                ; 0x1396
    mov ax, 0                        ; 0x1399
    push ax                          ; 0x139c
    push ax                          ; 0x139d
    mov ax, word [bp - 0x0004]       ; 0x139e
    add ax, strict word 0xf          ; 0x13a1
    push ax                          ; 0x13a4
    mov ax, word [bp - 0x0002]       ; 0x13a5
    add ax, strict word 0x50         ; 0x13a8
    push ax                          ; 0x13ab
    mov ax, word [bp - 0x0004]       ; 0x13ac
    add ax, strict word 7            ; 0x13af
    push ax                          ; 0x13b2
    mov ax, word [bp - 0x0002]       ; 0x13b3
    add ax, strict word 8            ; 0x13b6
    push ax                          ; 0x13b9
    mov ax, 1                        ; 0x13ba
    push ax                          ; 0x13bd
    call ds_app_0ced                 ; 0x13be
    add sp, byte 0x0e                ; 0x13c1
    mov ax, 0                        ; 0x13c4
    push ax                          ; 0x13c7
    mov ax, 0xd                      ; 0x13c8
    push ax                          ; 0x13cb
    mov ax, word [bp - 0x0004]       ; 0x13cc
    add ax, strict word 0x1f         ; 0x13cf
    push ax                          ; 0x13d2
    mov ax, word [bp - 0x0002]       ; 0x13d3
    add ax, strict word 0x50         ; 0x13d6
    push ax                          ; 0x13d9
    mov ax, word [bp - 0x0004]       ; 0x13da
    add ax, strict word 0x17         ; 0x13dd
    push ax                          ; 0x13e0
    mov ax, word [bp - 0x0002]       ; 0x13e1
    add ax, strict word 8            ; 0x13e4
    push ax                          ; 0x13e7
    mov ax, 2                        ; 0x13e8
    push ax                          ; 0x13eb
    call ds_app_0ced                 ; 0x13ec
    add sp, byte 0x0e                ; 0x13ef
    mov ax, 0                        ; 0x13f2
    push ax                          ; 0x13f5
    mov ax, 0x1b                     ; 0x13f6
    push ax                          ; 0x13f9
    mov ax, word [bp - 0x0004]       ; 0x13fa
    add ax, strict word 0x2f         ; 0x13fd
    push ax                          ; 0x1400
    mov ax, word [bp - 0x0002]       ; 0x1401
    add ax, strict word 0x50         ; 0x1404
    push ax                          ; 0x1407
    mov ax, word [bp - 0x0004]       ; 0x1408
    add ax, strict word 0x27         ; 0x140b
    push ax                          ; 0x140e
    mov ax, word [bp - 0x0002]       ; 0x140f
    add ax, strict word 8            ; 0x1412
    push ax                          ; 0x1415
    mov ax, 3                        ; 0x1416
    push ax                          ; 0x1419
    call ds_app_0ced                 ; 0x141a
    add sp, byte 0x0e                ; 0x141d
    mov ax, 0                        ; 0x1420
    push ax                          ; 0x1423
    push ax                          ; 0x1424
    push ax                          ; 0x1425
    push ax                          ; 0x1426
    push ax                          ; 0x1427
    mov ax, 0xffff                   ; 0x1428
    push ax                          ; 0x142b
    mov ax, 4                        ; 0x142c
    push ax                          ; 0x142f
    call ds_app_0ced                 ; 0x1430
    add sp, byte 0x0e                ; 0x1433
    mov ax, word [bp - 0x0008]       ; 0x1436
    inc ax                           ; 0x1439
    push ax                          ; 0x143a
    mov ax, word [bp - 0x0006]       ; 0x143b
    inc ax                           ; 0x143e
    push ax                          ; 0x143f
    mov ax, word [bp - 0x0004]       ; 0x1440
    dec ax                           ; 0x1443
    push ax                          ; 0x1444
    mov ax, word [bp - 0x0002]       ; 0x1445
    dec ax                           ; 0x1448
    push ax                          ; 0x1449
    call ds_loc_3b21                 ; 0x144a
    add sp, byte 8                   ; 0x144d
    call bios_kbd_check              ; 0x1450
    mov ax, 0                        ; 0x1453
    push ax                          ; 0x1456
    mov ax, 1                        ; 0x1457
    push ax                          ; 0x145a
    mov ax, 0                        ; 0x145b
    push ax                          ; 0x145e
    mov ax, 7                        ; 0x145f
    push ax                          ; 0x1462
    mov ax, word [bp - 0x0004]       ; 0x1463
    add ax, strict word 0x20         ; 0x1466
    push ax                          ; 0x1469
    mov ax, word [bp - 0x0002]       ; 0x146a
    add ax, strict word 0x5f         ; 0x146d
    push ax                          ; 0x1470
    mov ax, 0xe38                    ; 0x1471
    push ax                          ; 0x1474
    call api_idx_0008                ; 0x1475
    add sp, byte 0x0e                ; 0x1478
    mov ax, 0xe38                    ; 0x147b
    push ax                          ; 0x147e
    push word [bp + 0xc]             ; 0x147f
    call aztec_strcpy                ; 0x1482
    add sp, byte 4                   ; 0x1485
    mov ax, 1                        ; 0x1488
    push ax                          ; 0x148b
    mov ax, 0xffff                   ; 0x148c
    push ax                          ; 0x148f
    mov ax, 0                        ; 0x1490
    push ax                          ; 0x1493
    mov ax, 1                        ; 0x1494
    push ax                          ; 0x1497
    mov ax, 0x11                     ; 0x1498
    push ax                          ; 0x149b
    mov ax, word [bp - 0x0004]       ; 0x149c
    add ax, strict word 0x1f         ; 0x149f
    push ax                          ; 0x14a2
    mov ax, word [bp - 0x0002]       ; 0x14a3
    add ax, strict word 0x5d         ; 0x14a6
    push ax                          ; 0x14a9
    call ds_app_11de                 ; 0x14aa
    add sp, byte 0x0e                ; 0x14ad
    mov ax, word [bp - 0x0004]       ; 0x14b0
    add ax, strict word 0x26         ; 0x14b3
    push ax                          ; 0x14b6
    mov ax, word [bp - 0x0002]       ; 0x14b7
    add ax, 0xc5                     ; 0x14ba
    push ax                          ; 0x14bd
    mov ax, word [bp - 0x0004]       ; 0x14be
    add ax, strict word 0x1f         ; 0x14c1
    push ax                          ; 0x14c4
    mov ax, word [bp - 0x0002]       ; 0x14c5
    add ax, strict word 0x5d         ; 0x14c8
    push ax                          ; 0x14cb
    call ds_loc_3b21                 ; 0x14cc
    add sp, byte 8                   ; 0x14cf
    mov word [bp - 0x0010], 1        ; 0x14d2
@..api_idx_0026.l1:
    mov ax, 0x59fe                   ; 0x14d7
    push ax                          ; 0x14da
    call ds_app_io_0b54              ; 0x14db
    pop cx                           ; 0x14de
    dec ax                           ; 0x14df
    mov word [bp - 0x000e], ax       ; 0x14e0
    cmp word [bss_5b3e], byte 1      ; 0x14e3
    je short @..api_idx_0026.l2      ; 0x14e8
    jmp near @..api_idx_0026.l14     ; 0x14ea
@..api_idx_0026.l2:
    jmp near @..api_idx_0026.l10     ; 0x14ed
@..api_idx_0026.l3:
    call bios_kbd_check              ; 0x14f0
    mov ax, 1                        ; 0x14f3
    push ax                          ; 0x14f6
    mov ax, 0                        ; 0x14f7
    push ax                          ; 0x14fa
    push ax                          ; 0x14fb
    mov ax, 1                        ; 0x14fc
    push ax                          ; 0x14ff
    mov ax, 0x11                     ; 0x1500
    push ax                          ; 0x1503
    mov ax, word [bp - 0x0004]       ; 0x1504
    add ax, strict word 0x1f         ; 0x1507
    push ax                          ; 0x150a
    mov ax, word [bp - 0x0002]       ; 0x150b
    add ax, strict word 0x5d         ; 0x150e
    push ax                          ; 0x1511
    call ds_app_11de                 ; 0x1512
    add sp, byte 0x0e                ; 0x1515
    mov ax, word [bp - 0x0004]       ; 0x1518
    add ax, strict word 0x26         ; 0x151b
    push ax                          ; 0x151e
    mov ax, word [bp - 0x0002]       ; 0x151f
    add ax, 0xc5                     ; 0x1522
    push ax                          ; 0x1525
    mov ax, word [bp - 0x0004]       ; 0x1526
    add ax, strict word 0x1f         ; 0x1529
    push ax                          ; 0x152c
    mov ax, word [bp - 0x0002]       ; 0x152d
    add ax, strict word 0x5d         ; 0x1530
    push ax                          ; 0x1533
    call ds_loc_3b21                 ; 0x1534
    add sp, byte 8                   ; 0x1537
    mov ax, 0                        ; 0x153a
    push ax                          ; 0x153d
    mov ax, 1                        ; 0x153e
    push ax                          ; 0x1541
    mov ax, 0                        ; 0x1542
    push ax                          ; 0x1545
    mov ax, 7                        ; 0x1546
    push ax                          ; 0x1549
    mov ax, word [bp - 0x0004]       ; 0x154a
    add ax, strict word 0x20         ; 0x154d
    push ax                          ; 0x1550
    mov ax, word [bp - 0x0002]       ; 0x1551
    add ax, strict word 0x5f         ; 0x1554
    push ax                          ; 0x1557
    mov ax, 0xe38                    ; 0x1558
    push ax                          ; 0x155b
    call api_idx_0008                ; 0x155c
    add sp, byte 0x0e                ; 0x155f
    mov ax, 0xe38                    ; 0x1562
    push ax                          ; 0x1565
    push word [bp + 0xc]             ; 0x1566
    call aztec_strcpy                ; 0x1569
    add sp, byte 4                   ; 0x156c
    mov ax, 1                        ; 0x156f
    push ax                          ; 0x1572
    mov ax, 0xffff                   ; 0x1573
    push ax                          ; 0x1576
    mov ax, 0                        ; 0x1577
    push ax                          ; 0x157a
    mov ax, 1                        ; 0x157b
    push ax                          ; 0x157e
    mov ax, 0x11                     ; 0x157f
    push ax                          ; 0x1582
    mov ax, word [bp - 0x0004]       ; 0x1583
    add ax, strict word 0x1f         ; 0x1586
    push ax                          ; 0x1589
    mov ax, word [bp - 0x0002]       ; 0x158a
    add ax, strict word 0x5d         ; 0x158d
    push ax                          ; 0x1590
    call ds_app_11de                 ; 0x1591
    add sp, byte 0x0e                ; 0x1594
    mov ax, word [bp - 0x0004]       ; 0x1597
    add ax, strict word 0x26         ; 0x159a
    push ax                          ; 0x159d
    mov ax, word [bp - 0x0002]       ; 0x159e
    add ax, 0xc5                     ; 0x15a1
    push ax                          ; 0x15a4
    mov ax, word [bp - 0x0004]       ; 0x15a5
    add ax, strict word 0x1f         ; 0x15a8
    push ax                          ; 0x15ab
    mov ax, word [bp - 0x0002]       ; 0x15ac
    add ax, strict word 0x5d         ; 0x15af
    push ax                          ; 0x15b2
    call ds_loc_3b21                 ; 0x15b3
    add sp, byte 8                   ; 0x15b6
    jmp near @..api_idx_0026.l14     ; 0x15b9
@..api_idx_0026.l4:
    cmp word [bp + 0x6], byte 0      ; 0x15bc
    je short @..api_idx_0026.l5      ; 0x15c0
    mov ax, 1                        ; 0x15c2
    push ax                          ; 0x15c5
    push ax                          ; 0x15c6
    mov ax, 0xc                      ; 0x15c7
    push ax                          ; 0x15ca
    mov ax, word [bp - 0x0004]       ; 0x15cb
    add ax, strict word 7            ; 0x15ce
    push ax                          ; 0x15d1
    mov ax, word [bp - 0x0002]       ; 0x15d2
    add ax, strict word 8            ; 0x15d5
    push ax                          ; 0x15d8
    call ds_app_10a6                 ; 0x15d9
    add sp, byte 0x0a                ; 0x15dc
    mov ax, 0                        ; 0x15df
    push ax                          ; 0x15e2
    mov ax, 1                        ; 0x15e3
    push ax                          ; 0x15e6
    mov ax, 0xc                      ; 0x15e7
    push ax                          ; 0x15ea
    mov ax, word [bp - 0x0004]       ; 0x15eb
    add ax, strict word 7            ; 0x15ee
    push ax                          ; 0x15f1
    mov ax, word [bp - 0x0002]       ; 0x15f2
    add ax, strict word 8            ; 0x15f5
    push ax                          ; 0x15f8
    call ds_app_10a6                 ; 0x15f9
    add sp, byte 0x0a                ; 0x15fc
    mov word [bss_9050], 0           ; 0x15ff
    mov word [bp - 0x0010], 0        ; 0x1605
@..api_idx_0026.l5:
    jmp near @..api_idx_0026.l14     ; 0x160a
@..api_idx_0026.l6:
    cmp word [bp + 0x8], byte 0      ; 0x160d
    je short @..api_idx_0026.l7      ; 0x1611
    mov ax, 1                        ; 0x1613
    push ax                          ; 0x1616
    push ax                          ; 0x1617
    mov ax, 0xc                      ; 0x1618
    push ax                          ; 0x161b
    mov ax, word [bp - 0x0004]       ; 0x161c
    add ax, strict word 0x17         ; 0x161f
    push ax                          ; 0x1622
    mov ax, word [bp - 0x0002]       ; 0x1623
    add ax, strict word 8            ; 0x1626
    push ax                          ; 0x1629
    call ds_app_10a6                 ; 0x162a
    add sp, byte 0x0a                ; 0x162d
    mov ax, 0                        ; 0x1630
    push ax                          ; 0x1633
    mov ax, 1                        ; 0x1634
    push ax                          ; 0x1637
    mov ax, 0xc                      ; 0x1638
    push ax                          ; 0x163b
    mov ax, word [bp - 0x0004]       ; 0x163c
    add ax, strict word 0x17         ; 0x163f
    push ax                          ; 0x1642
    mov ax, word [bp - 0x0002]       ; 0x1643
    add ax, strict word 8            ; 0x1646
    push ax                          ; 0x1649
    call ds_app_10a6                 ; 0x164a
    add sp, byte 0x0a                ; 0x164d
    mov word [bss_9050], 1           ; 0x1650
    mov word [bp - 0x0010], 0        ; 0x1656
@..api_idx_0026.l7:
    jmp short @..api_idx_0026.l14    ; 0x165b
@..api_idx_0026.l8:
    cmp word [bp + 0xa], byte 0      ; 0x165d
    je short @..api_idx_0026.l9      ; 0x1661
    mov ax, 1                        ; 0x1663
    push ax                          ; 0x1666
    push ax                          ; 0x1667
    mov ax, 0xc                      ; 0x1668
    push ax                          ; 0x166b
    mov ax, word [bp - 0x0004]       ; 0x166c
    add ax, strict word 0x27         ; 0x166f
    push ax                          ; 0x1672
    mov ax, word [bp - 0x0002]       ; 0x1673
    add ax, strict word 8            ; 0x1676
    push ax                          ; 0x1679
    call ds_app_10a6                 ; 0x167a
    add sp, byte 0x0a                ; 0x167d
    mov ax, 0                        ; 0x1680
    push ax                          ; 0x1683
    mov ax, 1                        ; 0x1684
    push ax                          ; 0x1687
    mov ax, 0xc                      ; 0x1688
    push ax                          ; 0x168b
    mov ax, word [bp - 0x0004]       ; 0x168c
    add ax, strict word 0x27         ; 0x168f
    push ax                          ; 0x1692
    mov ax, word [bp - 0x0002]       ; 0x1693
    add ax, strict word 8            ; 0x1696
    push ax                          ; 0x1699
    call ds_app_10a6                 ; 0x169a
    add sp, byte 0x0a                ; 0x169d
    mov word [bss_9050], 2           ; 0x16a0
    mov word [bp - 0x0010], 0        ; 0x16a6
@..api_idx_0026.l9:
    jmp short @..api_idx_0026.l14    ; 0x16ab
@..api_idx_0026.l10:
    cmp ax, strict word 0            ; 0x16ad
    jne short @..api_idx_0026.l11    ; 0x16b0
    jmp near @..api_idx_0026.l3      ; 0x16b2
@..api_idx_0026.l11:
    cmp ax, strict word 1            ; 0x16b5
    jne short @..api_idx_0026.l12    ; 0x16b8
    jmp near @..api_idx_0026.l4      ; 0x16ba
@..api_idx_0026.l12:
    cmp ax, strict word 2            ; 0x16bd
    jne short @..api_idx_0026.l13    ; 0x16c0
    jmp near @..api_idx_0026.l6      ; 0x16c2
@..api_idx_0026.l13:
    cmp ax, strict word 3            ; 0x16c5
    je short @..api_idx_0026.l8      ; 0x16c8
@..api_idx_0026.l14:
    cmp word [bp - 0x0010], byte 0   ; 0x16ca
    je short @..api_idx_0026.l15     ; 0x16ce
    jmp near @..api_idx_0026.l1      ; 0x16d0
@..api_idx_0026.l15:
    mov ax, 1                        ; 0x16d3
    push ax                          ; 0x16d6
    push word [bp - 0x0026]          ; 0x16d7
    call ds_app_file_16a0            ; 0x16da
    add sp, byte 4                   ; 0x16dd
    mov word [bss_904e], 0xffff      ; 0x16e0
    mov ax, word [bss_9050]          ; 0x16e6
    ret                              ; 0x16e9
