api_idx_0050:
    mov ax, 0xffb0                   ; 0x1141
    call ds_aztec_csav               ; 0x1144
    mov word [bp - 0x0002], 0        ; 0x1147
@..api_idx_0050.l1:
    mov ax, word [bp - 0x0002]       ; 0x114c
    shl ax, 1                        ; 0x114f
    mov bx, ax                       ; 0x1151
    mov ax, word [bx - 0x7cf2]       ; 0x1153
    add bx, bp                       ; 0x1157
    mov word [bx - 0x0050], ax       ; 0x1159
    mov ax, word [bp - 0x0002]       ; 0x115c
    shl ax, 1                        ; 0x115f
    mov bx, ax                       ; 0x1161
    mov word [bx - 0x7cf2], 0        ; 0x1163
    inc word [bp - 0x0002]           ; 0x1169
    mov ax, word [bp - 0x0002]       ; 0x116c
    cmp ax, strict word 6            ; 0x116f
    jl short @..api_idx_0050.l1      ; 0x1172
    mov word [bss_904e], 0xffff      ; 0x1174
    mov word [bp - 0x0004], 0x32     ; 0x117a
    mov word [bp - 0x0006], 0x73     ; 0x117f
    mov word [bp - 0x0008], 0x10d    ; 0x1184
    mov word [bp - 0x000a], 0xc5     ; 0x1189
    mov word [bp - 0x000c], 0x95     ; 0x118e
    mov word [bp - 0x0014], 0x16     ; 0x1193
    mov ax, 0x909f                   ; 0x1198
    push ax                          ; 0x119b
    mov ax, word [bp - 0x000a]       ; 0x119c
    inc ax                           ; 0x119f
    push ax                          ; 0x11a0
    mov ax, word [bp - 0x0008]       ; 0x11a1
    inc ax                           ; 0x11a4
    push ax                          ; 0x11a5
    mov ax, word [bp - 0x0006]       ; 0x11a6
    dec ax                           ; 0x11a9
    push ax                          ; 0x11aa
    mov ax, word [bp - 0x0004]       ; 0x11ab
    dec ax                           ; 0x11ae
    push ax                          ; 0x11af
    call ds_app_file_14ca            ; 0x11b0
    add sp, byte 0x0a                ; 0x11b3
    mov word [bp - 0x003a], ax       ; 0x11b6
    push word [bp - 0x000a]          ; 0x11b9
    push word [bp - 0x0008]          ; 0x11bc
    push word [bp - 0x0006]          ; 0x11bf
    push word [bp - 0x0004]          ; 0x11c2
    call ds_app_0ee1                 ; 0x11c5
    add sp, byte 8                   ; 0x11c8
    push word [bp - 0x000a]          ; 0x11cb
    push word [bp - 0x0008]          ; 0x11ce
    push word [bp - 0x0006]          ; 0x11d1
    mov ax, 0x95                     ; 0x11d4
    push ax                          ; 0x11d7
    call ds_app_0ee1                 ; 0x11d8
    add sp, byte 8                   ; 0x11db
    call api_idx_000a_2              ; 0x11de
    push word [bp + 0x4]             ; 0x11e1
    call api_idx_000c_2              ; 0x11e4
    pop cx                           ; 0x11e7
    mov ax, 1                        ; 0x11e8
    push ax                          ; 0x11eb
    mov ax, 0x73                     ; 0x11ec
    push ax                          ; 0x11ef
    mov ax, 0x32                     ; 0x11f0
    push ax                          ; 0x11f3
    call api_idx_000c                ; 0x11f4
    add sp, byte 6                   ; 0x11f7
    lea ax, word [bp - 0x0038]       ; 0x11fa
    push ax                          ; 0x11fd
    push word [bp + 0x6]             ; 0x11fe
    call ds_app_mem_0782             ; 0x1201
    add sp, byte 4                   ; 0x1204
    lea ax, word [bp - 0x0038]       ; 0x1207
    push ax                          ; 0x120a
    push word [bp + 0x8]             ; 0x120b
    mov ax, 1                        ; 0x120e
    push ax                          ; 0x1211
    mov ax, 8                        ; 0x1212
    push ax                          ; 0x1215
    mov ax, word [bp - 0x0006]       ; 0x1216
    add ax, strict word 6            ; 0x1219
    push ax                          ; 0x121c
    mov ax, word [bp - 0x000c]       ; 0x121d
    add ax, strict word 6            ; 0x1220
    push ax                          ; 0x1223
    call ds_app_string_1308          ; 0x1224
    add sp, byte 0x0c                ; 0x1227
    lea ax, word [bp - 0x0038]       ; 0x122a
    push ax                          ; 0x122d
    mov ax, word [bp + 0x6]          ; 0x122e
    inc ax                           ; 0x1231
    push ax                          ; 0x1232
    call ds_app_mem_0782             ; 0x1233
    add sp, byte 4                   ; 0x1236
    lea ax, word [bp - 0x0038]       ; 0x1239
    push ax                          ; 0x123c
    mov ax, 1                        ; 0x123d
    push ax                          ; 0x1240
    push ax                          ; 0x1241
    mov ax, 8                        ; 0x1242
    push ax                          ; 0x1245
    mov ax, word [bp - 0x0006]       ; 0x1246
    add ax, strict word 6            ; 0x1249
    push ax                          ; 0x124c
    mov ax, word [bp - 0x000c]       ; 0x124d
    add ax, strict word 0x42         ; 0x1250
    push ax                          ; 0x1253
    call ds_app_string_1308          ; 0x1254
    add sp, byte 0x0c                ; 0x1257
    mov ax, word [bp - 0x0006]       ; 0x125a
    add ax, strict word 0x14         ; 0x125d
    push ax                          ; 0x1260
    mov ax, word [bp - 0x000c]       ; 0x1261
    add ax, strict word 0x48         ; 0x1264
    push ax                          ; 0x1267
    call ds_loc_3a50                 ; 0x1268
    add sp, byte 4                   ; 0x126b
    mov ax, 0                        ; 0x126e
    push ax                          ; 0x1271
    mov ax, 0xcd                     ; 0x1272
    push ax                          ; 0x1275
    call ds_loc_3a6a                 ; 0x1276
    add sp, byte 4                   ; 0x1279
    mov ax, 2                        ; 0x127c
    push ax                          ; 0x127f
    mov ax, 0xa                      ; 0x1280
    push ax                          ; 0x1283
    call ds_loc_3a77                 ; 0x1284
    add sp, byte 4                   ; 0x1287
    mov word [bp - 0x003c], 0xffff   ; 0x128a
    mov word [bp - 0x003e], 0        ; 0x128f
    mov word [bp - 0x0040], 0        ; 0x1294
    mov word [bp - 0x0002], 0        ; 0x1299
@..api_idx_0050.l2:
    mov ax, 0                        ; 0x129e
    mov cx, word [bp - 0x0002]       ; 0x12a1
    cmp cx, word [bp - 0x003e]       ; 0x12a4
    jne short @..api_idx_0050.l3     ; 0x12a7
    mov ax, 1                        ; 0x12a9
@..api_idx_0050.l3:
    push ax                          ; 0x12ac
    push cx                          ; 0x12ad
    mov ax, word [bp - 0x0006]       ; 0x12ae
    add ax, strict word 0x14         ; 0x12b1
    push ax                          ; 0x12b4
    mov ax, word [bp - 0x000c]       ; 0x12b5
    add ax, strict word 0xc          ; 0x12b8
    push ax                          ; 0x12bb
    call loc_0eea                    ; 0x12bc
    add sp, byte 8                   ; 0x12bf
    inc word [bp - 0x0002]           ; 0x12c2
    mov ax, word [bp - 0x0002]       ; 0x12c5
    cmp ax, strict word 7            ; 0x12c8
    jl short @..api_idx_0050.l2      ; 0x12cb
    mov word [bp - 0x0042], 0        ; 0x12cd
    mov ax, 0                        ; 0x12d2
    push ax                          ; 0x12d5
    push ax                          ; 0x12d6
    push word [bp - 0x0042]          ; 0x12d7
    mov ax, word [bp - 0x0006]       ; 0x12da
    add ax, strict word 0x15         ; 0x12dd
    push ax                          ; 0x12e0
    mov ax, word [bp - 0x000c]       ; 0x12e1
    add ax, strict word 0x5e         ; 0x12e4
    push ax                          ; 0x12e7
    call loc_0f76                    ; 0x12e8
    add sp, byte 0x0a                ; 0x12eb
    push word [bp - 0x0042]          ; 0x12ee
    push word [bp + 0x4]             ; 0x12f1
    call api_idx_0004_2              ; 0x12f4
    add sp, byte 4                   ; 0x12f7
    mov word [bp - 0x0044], ax       ; 0x12fa
    mov ax, 7                        ; 0x12fd
    cmp word [bp - 0x0044], byte 7   ; 0x1300
    jge short @..api_idx_0050.l4     ; 0x1304
    mov ax, word [bp - 0x0044]       ; 0x1306
@..api_idx_0050.l4:
    mov word [bp - 0x0024], ax       ; 0x1309
    mov word [bp - 0x0018], 0        ; 0x130c
    mov word [bp - 0x0022], 0xffff   ; 0x1311
    push ax                          ; 0x1316
    push word [bp - 0x0022]          ; 0x1317
    push word [bp - 0x0018]          ; 0x131a
    mov ax, 7                        ; 0x131d
    push ax                          ; 0x1320
    mov ax, 0xf                      ; 0x1321
    push ax                          ; 0x1324
    mov ax, word [bp - 0x0006]       ; 0x1325
    add ax, strict word 0x22         ; 0x1328
    push ax                          ; 0x132b
    mov ax, word [bp - 0x000c]       ; 0x132c
    add ax, strict word 6            ; 0x132f
    push ax                          ; 0x1332
    call ds_app_11de                 ; 0x1333
    add sp, byte 0x0e                ; 0x1336
    mov word [bp - 0x0012], 0        ; 0x1339
    push word [bp - 0x0012]          ; 0x133e
    mov ax, 7                        ; 0x1341
    push ax                          ; 0x1344
    mov ax, 8                        ; 0x1345
    push ax                          ; 0x1348
    mov ax, word [bp - 0x0006]       ; 0x1349
    add ax, strict word 0x22         ; 0x134c
    push ax                          ; 0x134f
    mov ax, word [bp - 0x000c]       ; 0x1350
    add ax, strict word 0x6a         ; 0x1353
    push ax                          ; 0x1356
    call ds_app_121f                 ; 0x1357
    add sp, byte 0x0a                ; 0x135a
    mov ax, 0                        ; 0x135d
    push ax                          ; 0x1360
    push ax                          ; 0x1361
    mov ax, word [bp - 0x0006]       ; 0x1362
    add ax, word [bp - 0x0012]       ; 0x1365
    add ax, strict word 0x2e         ; 0x1368
    push ax                          ; 0x136b
    mov ax, word [bp - 0x000c]       ; 0x136c
    add ax, strict word 0x72         ; 0x136f
    push ax                          ; 0x1372
    mov ax, word [bp - 0x0006]       ; 0x1373
    add ax, word [bp - 0x0012]       ; 0x1376
    add ax, strict word 0x2a         ; 0x1379
    push ax                          ; 0x137c
    mov ax, word [bp - 0x000c]       ; 0x137d
    add ax, strict word 0x6a         ; 0x1380
    push ax                          ; 0x1383
    mov ax, 0                        ; 0x1384
    push ax                          ; 0x1387
    call ds_app_0ced                 ; 0x1388
    add sp, byte 0x0e                ; 0x138b
    mov ax, 0                        ; 0x138e
    push ax                          ; 0x1391
    mov ax, 9                        ; 0x1392
    push ax                          ; 0x1395
    mov ax, word [bp - 0x0006]       ; 0x1396
    add ax, strict word 0x28         ; 0x1399
    push ax                          ; 0x139c
    mov ax, word [bp - 0x000c]       ; 0x139d
    add ax, strict word 0x72         ; 0x13a0
    push ax                          ; 0x13a3
    mov ax, word [bp - 0x0006]       ; 0x13a4
    add ax, strict word 0x22         ; 0x13a7
    push ax                          ; 0x13aa
    mov ax, word [bp - 0x000c]       ; 0x13ab
    add ax, strict word 0x6a         ; 0x13ae
    push ax                          ; 0x13b1
    mov ax, 1                        ; 0x13b2
    push ax                          ; 0x13b5
    call ds_app_0ced                 ; 0x13b6
    add sp, byte 0x0e                ; 0x13b9
    mov ax, 0                        ; 0x13bc
    push ax                          ; 0x13bf
    mov ax, 0xb                      ; 0x13c0
    push ax                          ; 0x13c3
    mov ax, word [bp - 0x0006]       ; 0x13c4
    add ax, strict word 0x4c         ; 0x13c7
    push ax                          ; 0x13ca
    mov ax, word [bp - 0x000c]       ; 0x13cb
    add ax, strict word 0x72         ; 0x13ce
    push ax                          ; 0x13d1
    mov ax, word [bp - 0x0006]       ; 0x13d2
    add ax, strict word 0x46         ; 0x13d5
    push ax                          ; 0x13d8
    mov ax, word [bp - 0x000c]       ; 0x13d9
    add ax, strict word 0x6a         ; 0x13dc
    push ax                          ; 0x13df
    mov ax, 2                        ; 0x13e0
    push ax                          ; 0x13e3
    call ds_app_0ced                 ; 0x13e4
    add sp, byte 0x0e                ; 0x13e7
    mov ax, 0                        ; 0x13ea
    push ax                          ; 0x13ed
    mov ax, 0xd                      ; 0x13ee
    push ax                          ; 0x13f1
    mov ax, word [bp - 0x0006]       ; 0x13f2
    add ax, strict word 0xe          ; 0x13f5
    push ax                          ; 0x13f8
    mov ax, word [bp - 0x000c]       ; 0x13f9
    add ax, strict word 0x36         ; 0x13fc
    push ax                          ; 0x13ff
    mov ax, word [bp - 0x0006]       ; 0x1400
    add ax, strict word 6            ; 0x1403
    push ax                          ; 0x1406
    mov ax, word [bp - 0x000c]       ; 0x1407
    add ax, strict word 6            ; 0x140a
    push ax                          ; 0x140d
    mov ax, 3                        ; 0x140e
    push ax                          ; 0x1411
    call ds_app_0ced                 ; 0x1412
    add sp, byte 0x0e                ; 0x1415
    mov ax, 0                        ; 0x1418
    push ax                          ; 0x141b
    mov ax, 0x1b                     ; 0x141c
    push ax                          ; 0x141f
    mov ax, word [bp - 0x0006]       ; 0x1420
    add ax, strict word 0xe          ; 0x1423
    push ax                          ; 0x1426
    mov ax, word [bp - 0x000c]       ; 0x1427
    add ax, strict word 0x72         ; 0x142a
    push ax                          ; 0x142d
    mov ax, word [bp - 0x0006]       ; 0x142e
    add ax, strict word 6            ; 0x1431
    push ax                          ; 0x1434
    mov ax, word [bp - 0x000c]       ; 0x1435
    add ax, strict word 0x42         ; 0x1438
    push ax                          ; 0x143b
    mov ax, 4                        ; 0x143c
    push ax                          ; 0x143f
    call ds_app_0ced                 ; 0x1440
    add sp, byte 0x0e                ; 0x1443
    mov word [bp - 0x0002], 0        ; 0x1446
@..api_idx_0050.l5:
    mov ax, 0                        ; 0x144b
    push ax                          ; 0x144e
    mov ax, word [bp - 0x0002]       ; 0x144f
    add ax, strict word 0x31         ; 0x1452
    cbw                              ; 0x1455
    push ax                          ; 0x1456
    mov ax, word [bp - 0x0006]       ; 0x1457
    add ax, strict word 0x1b         ; 0x145a
    push ax                          ; 0x145d
    mov ax, 0xa                      ; 0x145e
    imul word [bp - 0x0002]          ; 0x1461
    add ax, word [bp - 0x000c]       ; 0x1464
    add ax, strict word 0x13         ; 0x1467
    push ax                          ; 0x146a
    mov ax, word [bp - 0x0006]       ; 0x146b
    add ax, strict word 0x14         ; 0x146e
    push ax                          ; 0x1471
    mov ax, 0xa                      ; 0x1472
    imul word [bp - 0x0002]          ; 0x1475
    add ax, word [bp - 0x000c]       ; 0x1478
    add ax, strict word 0xc          ; 0x147b
    push ax                          ; 0x147e
    mov ax, word [bp - 0x0002]       ; 0x147f
    add ax, strict word 5            ; 0x1482
    push ax                          ; 0x1485
    call ds_app_0ced                 ; 0x1486
    add sp, byte 0x0e                ; 0x1489
    inc word [bp - 0x0002]           ; 0x148c
    mov ax, word [bp - 0x0002]       ; 0x148f
    cmp ax, strict word 7            ; 0x1492
    jl short @..api_idx_0050.l5      ; 0x1495
    mov ax, 0                        ; 0x1497
    push ax                          ; 0x149a
    mov ax, 0x46                     ; 0x149b
    push ax                          ; 0x149e
    mov ax, 0x87                     ; 0x149f
    push ax                          ; 0x14a2
    mov ax, 0x52                     ; 0x14a3
    push ax                          ; 0x14a6
    mov ax, 0x74                     ; 0x14a7
    push ax                          ; 0x14aa
    mov ax, 0x46                     ; 0x14ab
    push ax                          ; 0x14ae
    mov ax, 0xc                      ; 0x14af
    push ax                          ; 0x14b2
    call ds_app_0ced                 ; 0x14b3
    add sp, byte 0x0e                ; 0x14b6
    mov ax, 0                        ; 0x14b9
    push ax                          ; 0x14bc
    mov ax, 0x57                     ; 0x14bd
    push ax                          ; 0x14c0
    mov ax, 0x9d                     ; 0x14c1
    push ax                          ; 0x14c4
    mov ax, 0x4b                     ; 0x14c5
    push ax                          ; 0x14c8
    mov ax, 0x90                     ; 0x14c9
    push ax                          ; 0x14cc
    mov ax, 0x32                     ; 0x14cd
    push ax                          ; 0x14d0
    mov ax, 0xd                      ; 0x14d1
    push ax                          ; 0x14d4
    call ds_app_0ced                 ; 0x14d5
    add sp, byte 0x0e                ; 0x14d8
    mov ax, 0                        ; 0x14db
    push ax                          ; 0x14de
    mov ax, 0x41                     ; 0x14df
    push ax                          ; 0x14e2
    mov ax, 0xbb                     ; 0x14e3
    push ax                          ; 0x14e6
    mov ax, 0x5f                     ; 0x14e7
    push ax                          ; 0x14ea
    mov ax, 0xa5                     ; 0x14eb
    push ax                          ; 0x14ee
    mov ax, 0x43                     ; 0x14ef
    push ax                          ; 0x14f2
    mov ax, 0xe                      ; 0x14f3
    push ax                          ; 0x14f6
    call ds_app_0ced                 ; 0x14f7
    add sp, byte 0x0e                ; 0x14fa
    mov ax, 0                        ; 0x14fd
    push ax                          ; 0x1500
    mov ax, 0x45                     ; 0x1501
    push ax                          ; 0x1504
    mov ax, 0x89                     ; 0x1505
    push ax                          ; 0x1508
    mov ax, 0x87                     ; 0x1509
    push ax                          ; 0x150c
    mov ax, 0x77                     ; 0x150d
    push ax                          ; 0x1510
    mov ax, 0x6c                     ; 0x1511
    push ax                          ; 0x1514
    mov ax, 0xf                      ; 0x1515
    push ax                          ; 0x1518
    call ds_app_0ced                 ; 0x1519
    add sp, byte 0x0e                ; 0x151c
    mov ax, 0                        ; 0x151f
    push ax                          ; 0x1522
    mov ax, 0x4d                     ; 0x1523
    push ax                          ; 0x1526
    mov ax, 0x9c                     ; 0x1527
    push ax                          ; 0x152a
    mov ax, 0x8e                     ; 0x152b
    push ax                          ; 0x152e
    mov ax, 0x91                     ; 0x152f
    push ax                          ; 0x1532
    mov ax, 0x7f                     ; 0x1533
    push ax                          ; 0x1536
    mov ax, 0x10                     ; 0x1537
    push ax                          ; 0x153a
    call ds_app_0ced                 ; 0x153b
    add sp, byte 0x0e                ; 0x153e
    mov ax, 0                        ; 0x1541
    push ax                          ; 0x1544
    mov ax, 0x44                     ; 0x1545
    push ax                          ; 0x1548
    mov ax, 0xb9                     ; 0x1549
    push ax                          ; 0x154c
    mov ax, 0x81                     ; 0x154d
    push ax                          ; 0x1550
    mov ax, 0xa6                     ; 0x1551
    push ax                          ; 0x1554
    mov ax, 0x71                     ; 0x1555
    push ax                          ; 0x1558
    mov ax, 0x11                     ; 0x1559
    push ax                          ; 0x155c
    call ds_app_0ced                 ; 0x155d
    add sp, byte 0x0e                ; 0x1560
    mov ax, 7                        ; 0x1563
    cmp word [bp - 0x0044], byte 7   ; 0x1566
    jge short @..api_idx_0050.l6     ; 0x156a
    mov ax, word [bp - 0x0044]       ; 0x156c
@..api_idx_0050.l6:
    mov word [bp - 0x0020], ax       ; 0x156f
    mov word [bp - 0x0002], 0        ; 0x1572
@..api_idx_0050.l7:
    mov ax, 0                        ; 0x1577
    push ax                          ; 0x157a
    push ax                          ; 0x157b
    mov ax, 6                        ; 0x157c
    imul word [bp - 0x0002]          ; 0x157f
    add ax, word [bp - 0x0006]       ; 0x1582
    add ax, strict word 0x28         ; 0x1585
    push ax                          ; 0x1588
    mov ax, word [bp - 0x000c]       ; 0x1589
    add ax, strict word 0x62         ; 0x158c
    push ax                          ; 0x158f
    mov ax, 6                        ; 0x1590
    imul word [bp - 0x0002]          ; 0x1593
    add ax, word [bp - 0x0006]       ; 0x1596
    add ax, strict word 0x22         ; 0x1599
    push ax                          ; 0x159c
    mov ax, word [bp - 0x000c]       ; 0x159d
    add ax, strict word 6            ; 0x15a0
    push ax                          ; 0x15a3
    mov ax, word [bp - 0x0002]       ; 0x15a4
    add ax, strict word 0x12         ; 0x15a7
    push ax                          ; 0x15aa
    call ds_app_0ced                 ; 0x15ab
    add sp, byte 0x0e                ; 0x15ae
    inc word [bp - 0x0002]           ; 0x15b1
    mov ax, word [bp - 0x0002]       ; 0x15b4
    cmp ax, strict word 7            ; 0x15b7
    jl short @..api_idx_0050.l7      ; 0x15ba
    mov ax, 0                        ; 0x15bc
    push ax                          ; 0x15bf
    push ax                          ; 0x15c0
    push ax                          ; 0x15c1
    push ax                          ; 0x15c2
    push ax                          ; 0x15c3
    mov ax, 0xffff                   ; 0x15c4
    push ax                          ; 0x15c7
    mov ax, 0x19                     ; 0x15c8
    push ax                          ; 0x15cb
    call ds_app_0ced                 ; 0x15cc
    add sp, byte 0x0e                ; 0x15cf
    mov ax, word [bp - 0x000a]       ; 0x15d2
    inc ax                           ; 0x15d5
    push ax                          ; 0x15d6
    mov ax, word [bp - 0x0008]       ; 0x15d7
    inc ax                           ; 0x15da
    push ax                          ; 0x15db
    mov ax, word [bp - 0x0006]       ; 0x15dc
    dec ax                           ; 0x15df
    push ax                          ; 0x15e0
    mov ax, word [bp - 0x0004]       ; 0x15e1
    dec ax                           ; 0x15e4
    push ax                          ; 0x15e5
    call ds_loc_3b21                 ; 0x15e6
    add sp, byte 8                   ; 0x15e9
    mov word [bss_948c], 7           ; 0x15ec
    les bx, word [dseg_0002]         ; 0x15f2
    mov ax, word [es:bx]             ; 0x15f6
    mov dx, word [es:bx + 0x2]       ; 0x15f9
    mov word [bss_908c], dx          ; 0x15fd
    mov word [bss_908a], ax          ; 0x1601
    mov word [bp - 0x001c], 1        ; 0x1604
@..api_idx_0050.l8:
    push word [bp - 0x0042]          ; 0x1609
    push word [bp + 0x4]             ; 0x160c
    call loc_10b0                    ; 0x160f
    add sp, byte 4                   ; 0x1612
    mov ax, 0x59fe                   ; 0x1615
    push ax                          ; 0x1618
    call ds_app_io_0b54              ; 0x1619
    pop cx                           ; 0x161c
    dec ax                           ; 0x161d
    mov word [bp - 0x001a], ax       ; 0x161e
    cmp word [bss_59fc], byte 0      ; 0x1621
    je short @..api_idx_0050.l12     ; 0x1626
    mov ax, word [bp - 0x0022]       ; 0x1628
    cmp ax, word [bp - 0x0018]       ; 0x162b
    jl short @..api_idx_0050.l9      ; 0x162e
    inc word [bp - 0x0022]           ; 0x1630
@..api_idx_0050.l9:
    mov ax, word [bp - 0x0022]       ; 0x1633
    cmp ax, strict word 0xffff       ; 0x1636
    je short @..api_idx_0050.l10     ; 0x1639
    cmp ax, word [bp - 0x0018]       ; 0x163b
    jl short @..api_idx_0050.l10     ; 0x163e
    mov ax, word [bp - 0x0018]       ; 0x1640
    add ax, word [bp - 0x0020]       ; 0x1643
    mov cx, ax                       ; 0x1646
    dec ax                           ; 0x1648
    mov cx, ax                       ; 0x1649
    mov ax, word [bp - 0x0022]       ; 0x164b
    cmp cx, ax                       ; 0x164e
    jge short @..api_idx_0050.l11    ; 0x1650
@..api_idx_0050.l10:
    mov ax, word [bp - 0x0018]       ; 0x1652
    mov word [bp - 0x0022], ax       ; 0x1655
@..api_idx_0050.l11:
    mov word [bss_5b3e], 1           ; 0x1658
    mov ax, word [bp - 0x0022]       ; 0x165e
    sub ax, word [bp - 0x0018]       ; 0x1661
    add ax, strict word 0x12         ; 0x1664
    mov word [bp - 0x001a], ax       ; 0x1667
@..api_idx_0050.l12:
    cmp word [bss_5b3e], byte 1      ; 0x166a
    je short @..api_idx_0050.l13     ; 0x166f
    jmp near @..api_idx_0050.l50     ; 0x1671
@..api_idx_0050.l13:
    mov ax, word [bp - 0x001a]       ; 0x1674
    jmp near @..api_idx_0050.l48     ; 0x1677
jumptable_1d9a_case_0:
    lea ax, word [bp - 0x0010]       ; 0x167a
    push ax                          ; 0x167d
    lea ax, word [bp - 0x000e]       ; 0x167e
    push ax                          ; 0x1681
    call ds_loc_429a                 ; 0x1682
    add sp, byte 4                   ; 0x1685
    mov ax, 4                        ; 0x1688
    push ax                          ; 0x168b
    mov ax, 0                        ; 0x168c
    push ax                          ; 0x168f
    mov ax, word [bp - 0x0010]       ; 0x1690
    mov cx, word [bp - 0x0006]       ; 0x1693
    add cx, word [bp - 0x0012]       ; 0x1696
    add cx, byte 0x2a                ; 0x1699
    sub ax, cx                       ; 0x169c
    push ax                          ; 0x169e
    call ds_app_0a09                 ; 0x169f
    add sp, byte 6                   ; 0x16a2
    mov word [bp - 0x0016], ax       ; 0x16a5
@..api_idx_0050.l14:
    lea ax, word [bp - 0x0010]       ; 0x16a8
    push ax                          ; 0x16ab
    lea ax, word [bp - 0x000e]       ; 0x16ac
    push ax                          ; 0x16af
    call ds_loc_429a                 ; 0x16b0
    add sp, byte 4                   ; 0x16b3
    mov word [bp - 0x001e], ax       ; 0x16b6
    push word [bp - 0x0014]          ; 0x16b9
    mov ax, 0                        ; 0x16bc
    push ax                          ; 0x16bf
    mov ax, word [bp - 0x0010]       ; 0x16c0
    mov cx, word [bp - 0x0006]       ; 0x16c3
    add cx, byte 0x2a                ; 0x16c6
    sub ax, cx                       ; 0x16c9
    sub ax, word [bp - 0x0016]       ; 0x16cb
    push ax                          ; 0x16ce
    call ds_app_0a09                 ; 0x16cf
    add sp, byte 6                   ; 0x16d2
    mov word [bp - 0x0012], ax       ; 0x16d5
    cmp word [bp - 0x0044], byte 7   ; 0x16d8
    jle short @..api_idx_0050.l15    ; 0x16dc
    mov cx, 0x64                     ; 0x16de
    imul cx                          ; 0x16e1
    push ax                          ; 0x16e3
    mov ax, word [bp - 0x0014]       ; 0x16e4
    imul cx                          ; 0x16e7
    add ax, strict word 0x64         ; 0x16e9
    mov cx, word [bp - 0x0044]       ; 0x16ec
    add cx, byte 0xfa                ; 0x16ef
    cwd                              ; 0x16f2
    idiv cx                          ; 0x16f3
    mov cx, ax                       ; 0x16f5
    pop ax                           ; 0x16f7
    cwd                              ; 0x16f8
    idiv cx                          ; 0x16f9
    mov word [bp - 0x0018], ax       ; 0x16fb
@..api_idx_0050.l15:
    push word [bp - 0x0024]          ; 0x16fe
    push word [bp - 0x0022]          ; 0x1701
    push word [bp - 0x0018]          ; 0x1704
    mov ax, 7                        ; 0x1707
    push ax                          ; 0x170a
    mov ax, 0xf                      ; 0x170b
    push ax                          ; 0x170e
    mov ax, word [bp - 0x0006]       ; 0x170f
    add ax, strict word 0x22         ; 0x1712
    push ax                          ; 0x1715
    mov ax, word [bp - 0x000c]       ; 0x1716
    add ax, strict word 6            ; 0x1719
    push ax                          ; 0x171c
    call ds_app_11de                 ; 0x171d
    add sp, byte 0x0e                ; 0x1720
    push word [bp - 0x0012]          ; 0x1723
    mov ax, 7                        ; 0x1726
    push ax                          ; 0x1729
    mov ax, 8                        ; 0x172a
    push ax                          ; 0x172d
    mov ax, word [bp - 0x0006]       ; 0x172e
    add ax, strict word 0x22         ; 0x1731
    push ax                          ; 0x1734
    mov ax, word [bp - 0x000c]       ; 0x1735
    add ax, strict word 0x6a         ; 0x1738
    push ax                          ; 0x173b
    call ds_app_121f                 ; 0x173c
    add sp, byte 0x0a                ; 0x173f
    mov ax, 0                        ; 0x1742
    push ax                          ; 0x1745
    push ax                          ; 0x1746
    mov ax, word [bp - 0x0006]       ; 0x1747
    add ax, word [bp - 0x0012]       ; 0x174a
    add ax, strict word 0x2e         ; 0x174d
    push ax                          ; 0x1750
    mov ax, word [bp - 0x000c]       ; 0x1751
    add ax, strict word 0x72         ; 0x1754
    push ax                          ; 0x1757
    mov ax, word [bp - 0x0006]       ; 0x1758
    add ax, word [bp - 0x0012]       ; 0x175b
    add ax, strict word 0x2a         ; 0x175e
    push ax                          ; 0x1761
    mov ax, word [bp - 0x000c]       ; 0x1762
    add ax, strict word 0x6a         ; 0x1765
    push ax                          ; 0x1768
    mov ax, 0                        ; 0x1769
    push ax                          ; 0x176c
    call ds_app_0ced                 ; 0x176d
    add sp, byte 0x0e                ; 0x1770
    mov ax, word [bp - 0x0006]       ; 0x1773
    add ax, strict word 0x4c         ; 0x1776
    push ax                          ; 0x1779
    mov ax, word [bp - 0x000c]       ; 0x177a
    add ax, strict word 0x72         ; 0x177d
    push ax                          ; 0x1780
    mov ax, word [bp - 0x0006]       ; 0x1781
    add ax, strict word 0x22         ; 0x1784
    push ax                          ; 0x1787
    mov ax, word [bp - 0x000c]       ; 0x1788
    add ax, strict word 6            ; 0x178b
    push ax                          ; 0x178e
    call ds_loc_3b21                 ; 0x178f
    add sp, byte 8                   ; 0x1792
    cmp word [bp - 0x001e], byte 0   ; 0x1795
    je short @..api_idx_0050.l16     ; 0x1799
    jmp near @..api_idx_0050.l14     ; 0x179b
@..api_idx_0050.l16:
    jmp near @..api_idx_0050.l50     ; 0x179e
jumptable_1d9a_case_1:
    cmp word [bp - 0x001a], byte 1   ; 0x17a1
    jne short @..api_idx_0050.l18    ; 0x17a5
    mov ax, 1                        ; 0x17a7
    push ax                          ; 0x17aa
    mov ax, word [bp - 0x0006]       ; 0x17ab
    add ax, strict word 0x28         ; 0x17ae
    push ax                          ; 0x17b1
    mov ax, word [bp - 0x000c]       ; 0x17b2
    add ax, strict word 0x72         ; 0x17b5
    push ax                          ; 0x17b8
    mov ax, word [bp - 0x0006]       ; 0x17b9
    add ax, strict word 0x22         ; 0x17bc
    push ax                          ; 0x17bf
    mov ax, word [bp - 0x000c]       ; 0x17c0
    add ax, strict word 0x6a         ; 0x17c3
    push ax                          ; 0x17c6
    call ds_app_10ff                 ; 0x17c7
    add sp, byte 0x0a                ; 0x17ca
    cmp word [bp - 0x0018], byte 0   ; 0x17cd
    jle short @..api_idx_0050.l17    ; 0x17d1
    dec word [bp - 0x0018]           ; 0x17d3
@..api_idx_0050.l17:
    jmp short @..api_idx_0050.l19    ; 0x17d6
@..api_idx_0050.l18:
    mov ax, 1                        ; 0x17d8
    push ax                          ; 0x17db
    mov ax, word [bp - 0x0006]       ; 0x17dc
    add ax, strict word 0x4c         ; 0x17df
    push ax                          ; 0x17e2
    mov ax, word [bp - 0x000c]       ; 0x17e3
    add ax, strict word 0x72         ; 0x17e6
    push ax                          ; 0x17e9
    mov ax, word [bp - 0x0006]       ; 0x17ea
    add ax, strict word 0x46         ; 0x17ed
    push ax                          ; 0x17f0
    mov ax, word [bp - 0x000c]       ; 0x17f1
    add ax, strict word 0x6a         ; 0x17f4
    push ax                          ; 0x17f7
    call ds_app_10ff                 ; 0x17f8
    add sp, byte 0x0a                ; 0x17fb
    mov ax, word [bp - 0x0044]       ; 0x17fe
    add ax, strict word 0xfff9       ; 0x1801
    cmp ax, word [bp - 0x0018]       ; 0x1804
    jle short @..api_idx_0050.l19    ; 0x1807
    inc word [bp - 0x0018]           ; 0x1809
@..api_idx_0050.l19:
    cmp word [bp - 0x0044], byte 7   ; 0x180c
    jle short @..api_idx_0050.l20    ; 0x1810
    push word [bp - 0x0014]          ; 0x1812
    mov ax, 0                        ; 0x1815
    push ax                          ; 0x1818
    mov ax, 0x64                     ; 0x1819
    imul word [bp - 0x0014]          ; 0x181c
    add ax, strict word 0x64         ; 0x181f
    mov cx, word [bp - 0x0044]       ; 0x1822
    add cx, byte 0xf9                ; 0x1825
    cwd                              ; 0x1828
    idiv cx                          ; 0x1829
    imul word [bp - 0x0018]          ; 0x182b
    mov cx, 0x64                     ; 0x182e
    cwd                              ; 0x1831
    idiv cx                          ; 0x1832
    push ax                          ; 0x1834
    call ds_app_0a09                 ; 0x1835
    add sp, byte 6                   ; 0x1838
    mov word [bp - 0x0012], ax       ; 0x183b
@..api_idx_0050.l20:
    push word [bp - 0x0024]          ; 0x183e
    push word [bp - 0x0022]          ; 0x1841
    push word [bp - 0x0018]          ; 0x1844
    mov ax, 7                        ; 0x1847
    push ax                          ; 0x184a
    mov ax, 0xf                      ; 0x184b
    push ax                          ; 0x184e
    mov ax, word [bp - 0x0006]       ; 0x184f
    add ax, strict word 0x22         ; 0x1852
    push ax                          ; 0x1855
    mov ax, word [bp - 0x000c]       ; 0x1856
    add ax, strict word 6            ; 0x1859
    push ax                          ; 0x185c
    call ds_app_11de                 ; 0x185d
    add sp, byte 0x0e                ; 0x1860
    push word [bp - 0x0012]          ; 0x1863
    mov ax, 7                        ; 0x1866
    push ax                          ; 0x1869
    mov ax, 8                        ; 0x186a
    push ax                          ; 0x186d
    mov ax, word [bp - 0x0006]       ; 0x186e
    add ax, strict word 0x22         ; 0x1871
    push ax                          ; 0x1874
    mov ax, word [bp - 0x000c]       ; 0x1875
    add ax, strict word 0x6a         ; 0x1878
    push ax                          ; 0x187b
    call ds_app_121f                 ; 0x187c
    add sp, byte 0x0a                ; 0x187f
    mov ax, 0                        ; 0x1882
    push ax                          ; 0x1885
    push ax                          ; 0x1886
    mov ax, word [bp - 0x0006]       ; 0x1887
    add ax, word [bp - 0x0012]       ; 0x188a
    add ax, strict word 0x2e         ; 0x188d
    push ax                          ; 0x1890
    mov ax, word [bp - 0x000c]       ; 0x1891
    add ax, strict word 0x72         ; 0x1894
    push ax                          ; 0x1897
    mov ax, word [bp - 0x0006]       ; 0x1898
    add ax, word [bp - 0x0012]       ; 0x189b
    add ax, strict word 0x2a         ; 0x189e
    push ax                          ; 0x18a1
    mov ax, word [bp - 0x000c]       ; 0x18a2
    add ax, strict word 0x6a         ; 0x18a5
    push ax                          ; 0x18a8
    mov ax, 0                        ; 0x18a9
    push ax                          ; 0x18ac
    call ds_app_0ced                 ; 0x18ad
    add sp, byte 0x0e                ; 0x18b0
    mov ax, word [bp - 0x0006]       ; 0x18b3
    add ax, strict word 0x4c         ; 0x18b6
    push ax                          ; 0x18b9
    mov ax, word [bp - 0x000c]       ; 0x18ba
    add ax, strict word 0x72         ; 0x18bd
    push ax                          ; 0x18c0
    mov ax, word [bp - 0x0006]       ; 0x18c1
    add ax, strict word 0x22         ; 0x18c4
    push ax                          ; 0x18c7
    mov ax, word [bp - 0x000c]       ; 0x18c8
    add ax, strict word 6            ; 0x18cb
    push ax                          ; 0x18ce
    call ds_loc_3b21                 ; 0x18cf
    add sp, byte 8                   ; 0x18d2
    jmp near @..api_idx_0050.l50     ; 0x18d5
jumptable_1d9a_case_3:
    cmp word [bp + 0x8], byte 0      ; 0x18d8
    jne short @..api_idx_0050.l21    ; 0x18dc
    jmp near @..api_idx_0050.l26     ; 0x18de
@..api_idx_0050.l21:
    cmp word [bp - 0x003c], byte 0   ; 0x18e1
    jge short @..api_idx_0050.l22    ; 0x18e5
    jmp near @..api_idx_0050.l25     ; 0x18e7
@..api_idx_0050.l22:
    cmp word [bp + 0xa], byte 0      ; 0x18ea
    je short @..api_idx_0050.l24     ; 0x18ee
    mov ax, word [bp - 0x003e]       ; 0x18f0
    cmp ax, word [bp - 0x0040]       ; 0x18f3
    jle short @..api_idx_0050.l23    ; 0x18f6
    jmp near @..api_idx_0050.l25     ; 0x18f8
@..api_idx_0050.l23:
    mov ax, 6                        ; 0x18fb
    imul word [bp - 0x003c]          ; 0x18fe
    mov bx, ax                       ; 0x1901
    mov al, byte [bx + 0x622]        ; 0x1903
    sub ah, ah                       ; 0x1907
    mov cx, word [bp - 0x003e]       ; 0x1909
    inc cx                           ; 0x190c
    imul cx                          ; 0x190d
    push ax                          ; 0x190f
    mov ax, 0x248                    ; 0x1910
    imul word [bp + 0x4]             ; 0x1913
    mov cx, ax                       ; 0x1916
    mov dx, word [bp - 0x0042]       ; 0x1918
    shl dx, 1                        ; 0x191b
    shl dx, 1                        ; 0x191d
    add ax, dx                       ; 0x191f
    mov bx, ax                       ; 0x1921
    mov cx, word [bx + 0x5c1c]       ; 0x1923
    pop ax                           ; 0x1927
    cmp ax, cx                       ; 0x1928
    jg short @..api_idx_0050.l25     ; 0x192a
@..api_idx_0050.l24:
    mov ax, 1                        ; 0x192c
    push ax                          ; 0x192f
    push ax                          ; 0x1930
    mov ax, 8                        ; 0x1931
    push ax                          ; 0x1934
    mov ax, word [bp - 0x0006]       ; 0x1935
    add ax, strict word 6            ; 0x1938
    push ax                          ; 0x193b
    mov ax, word [bp - 0x000c]       ; 0x193c
    add ax, strict word 6            ; 0x193f
    push ax                          ; 0x1942
    call ds_app_10a6                 ; 0x1943
    add sp, byte 0x0a                ; 0x1946
    mov ax, 0                        ; 0x1949
    push ax                          ; 0x194c
    mov ax, 1                        ; 0x194d
    push ax                          ; 0x1950
    mov ax, 8                        ; 0x1951
    push ax                          ; 0x1954
    mov ax, word [bp - 0x0006]       ; 0x1955
    add ax, strict word 6            ; 0x1958
    push ax                          ; 0x195b
    mov ax, word [bp - 0x000c]       ; 0x195c
    add ax, strict word 6            ; 0x195f
    push ax                          ; 0x1962
    call ds_app_10a6                 ; 0x1963
    add sp, byte 0x0a                ; 0x1966
    mov word [bss_9050], 0           ; 0x1969
    mov word [bp - 0x001c], 0        ; 0x196f
@..api_idx_0050.l25:
    cmp word [bp - 0x001c], byte 0   ; 0x1974
    je short @..api_idx_0050.l26     ; 0x1978
    mov ax, 0                        ; 0x197a
    push ax                          ; 0x197d
    call ds_app_0a27                 ; 0x197e
    pop cx                           ; 0x1981
@..api_idx_0050.l26:
    jmp near @..api_idx_0050.l50     ; 0x1982
jumptable_1d9a_case_4:
    mov ax, 1                        ; 0x1985
    push ax                          ; 0x1988
    push ax                          ; 0x1989
    mov ax, 8                        ; 0x198a
    push ax                          ; 0x198d
    mov ax, word [bp - 0x0006]       ; 0x198e
    add ax, strict word 6            ; 0x1991
    push ax                          ; 0x1994
    mov ax, word [bp - 0x000c]       ; 0x1995
    add ax, strict word 0x42         ; 0x1998
    push ax                          ; 0x199b
    call ds_app_10a6                 ; 0x199c
    add sp, byte 0x0a                ; 0x199f
    mov ax, 0                        ; 0x19a2
    push ax                          ; 0x19a5
    mov ax, 1                        ; 0x19a6
    push ax                          ; 0x19a9
    mov ax, 8                        ; 0x19aa
    push ax                          ; 0x19ad
    mov ax, word [bp - 0x0006]       ; 0x19ae
    add ax, strict word 6            ; 0x19b1
    push ax                          ; 0x19b4
    mov ax, word [bp - 0x000c]       ; 0x19b5
    add ax, strict word 0x42         ; 0x19b8
    push ax                          ; 0x19bb
    call ds_app_10a6                 ; 0x19bc
    add sp, byte 0x0a                ; 0x19bf
    mov word [bss_9050], 1           ; 0x19c2
    mov word [bp - 0x001c], 0        ; 0x19c8
    jmp near @..api_idx_0050.l50     ; 0x19cd
@..api_idx_0050.l27:
    cmp word [bp - 0x001a], byte 5   ; 0x19d0
    jge short @..api_idx_0050.l28    ; 0x19d4
    jmp near @..api_idx_0050.l36     ; 0x19d6
@..api_idx_0050.l28:
    cmp word [bp - 0x001a], byte 0x0b ; 0x19d9
    jle short @..api_idx_0050.l29    ; 0x19dd
    jmp near @..api_idx_0050.l36     ; 0x19df
@..api_idx_0050.l29:
    mov ax, 0                        ; 0x19e2
    push ax                          ; 0x19e5
    push word [bp - 0x003e]          ; 0x19e6
    mov ax, word [bp - 0x0006]       ; 0x19e9
    add ax, strict word 0x14         ; 0x19ec
    push ax                          ; 0x19ef
    mov ax, word [bp - 0x000c]       ; 0x19f0
    add ax, strict word 0xc          ; 0x19f3
    push ax                          ; 0x19f6
    call loc_0eea                    ; 0x19f7
    add sp, byte 8                   ; 0x19fa
    mov ax, word [bp - 0x001a]       ; 0x19fd
    add ax, strict word 0xfffb       ; 0x1a00
    mov word [bp - 0x003e], ax       ; 0x1a03
    mov ax, 1                        ; 0x1a06
    push ax                          ; 0x1a09
    push word [bp - 0x003e]          ; 0x1a0a
    mov ax, word [bp - 0x0006]       ; 0x1a0d
    add ax, strict word 0x14         ; 0x1a10
    push ax                          ; 0x1a13
    mov ax, word [bp - 0x000c]       ; 0x1a14
    add ax, strict word 0xc          ; 0x1a17
    push ax                          ; 0x1a1a
    call loc_0eea                    ; 0x1a1b
    add sp, byte 8                   ; 0x1a1e
    cmp word [bp - 0x003c], byte 0   ; 0x1a21
    jge short @..api_idx_0050.l30    ; 0x1a25
    jmp near @..api_idx_0050.l34     ; 0x1a27
@..api_idx_0050.l30:
    mov ax, 6                        ; 0x1a2a
    push ax                          ; 0x1a2d
    mov ax, 0                        ; 0x1a2e
    push ax                          ; 0x1a31
    mov ax, 0x248                    ; 0x1a32
    imul word [bp + 0x4]             ; 0x1a35
    mov bx, ax                       ; 0x1a38
    mov ax, word [bx + 0x5c18]       ; 0x1a3a
    push ax                          ; 0x1a3e
    mov ax, 6                        ; 0x1a3f
    imul word [bp - 0x003c]          ; 0x1a42
    mov bx, ax                       ; 0x1a45
    mov al, byte [bx + 0x621]        ; 0x1a47
    sub ah, ah                       ; 0x1a4b
    mov cx, ax                       ; 0x1a4d
    pop ax                           ; 0x1a4f
    sub ax, cx                       ; 0x1a50
    push ax                          ; 0x1a52
    call ds_app_0a09                 ; 0x1a53
    add sp, byte 6                   ; 0x1a56
    mov word [bp - 0x0040], ax       ; 0x1a59
    mov ax, 6                        ; 0x1a5c
    imul word [bp - 0x003c]          ; 0x1a5f
    mov bx, ax                       ; 0x1a62
    mov al, byte [bx + 0x622]        ; 0x1a64
    sub ah, ah                       ; 0x1a68
    mov cx, word [bp - 0x0040]       ; 0x1a6a
    inc cx                           ; 0x1a6d
    imul cx                          ; 0x1a6e
    mov word [bp - 0x0002], ax       ; 0x1a70
    cmp word [bp + 0xa], byte 0      ; 0x1a73
    jne short @..api_idx_0050.l31    ; 0x1a77
    mov ax, 0x3e7                    ; 0x1a79
    jmp short @..api_idx_0050.l33    ; 0x1a7c
@..api_idx_0050.l31:
    mov ax, 0x248                    ; 0x1a7e
    imul word [bp + 0x4]             ; 0x1a81
    mov cx, word [bp - 0x0042]       ; 0x1a84
    shl cx, 1                        ; 0x1a87
    shl cx, 1                        ; 0x1a89
    add ax, cx                       ; 0x1a8b
    mov bx, ax                       ; 0x1a8d
    mov ax, word [bx + 0x5c1c]       ; 0x1a8f
    cmp ax, word [bp - 0x0002]       ; 0x1a93
    jge short @..api_idx_0050.l32    ; 0x1a96
    jmp short @..api_idx_0050.l33    ; 0x1a98
@..api_idx_0050.l32:
    mov ax, word [bp - 0x0002]       ; 0x1a9a
@..api_idx_0050.l33:
    push ax                          ; 0x1a9d
    mov ax, 6                        ; 0x1a9e
    imul word [bp - 0x003c]          ; 0x1aa1
    mov bx, ax                       ; 0x1aa4
    mov al, byte [bx + 0x622]        ; 0x1aa6
    sub ah, ah                       ; 0x1aaa
    mov cx, word [bp - 0x003e]       ; 0x1aac
    inc cx                           ; 0x1aaf
    imul cx                          ; 0x1ab0
    push ax                          ; 0x1ab2
    push word [bp - 0x0042]          ; 0x1ab3
    mov ax, word [bp - 0x0006]       ; 0x1ab6
    add ax, strict word 0x15         ; 0x1ab9
    push ax                          ; 0x1abc
    mov ax, word [bp - 0x000c]       ; 0x1abd
    add ax, strict word 0x5e         ; 0x1ac0
    push ax                          ; 0x1ac3
    call loc_0f76                    ; 0x1ac4
    add sp, byte 0x0a                ; 0x1ac7
    jmp short @..api_idx_0050.l35    ; 0x1aca
@..api_idx_0050.l34:
    mov ax, 0                        ; 0x1acc
    push ax                          ; 0x1acf
    push ax                          ; 0x1ad0
    push word [bp - 0x0042]          ; 0x1ad1
    mov ax, word [bp - 0x0006]       ; 0x1ad4
    add ax, strict word 0x15         ; 0x1ad7
    push ax                          ; 0x1ada
    mov ax, word [bp - 0x000c]       ; 0x1adb
    add ax, strict word 0x5e         ; 0x1ade
    push ax                          ; 0x1ae1
    call loc_0f76                    ; 0x1ae2
    add sp, byte 0x0a                ; 0x1ae5
@..api_idx_0050.l35:
    mov ax, word [bp - 0x0006]       ; 0x1ae8
    add ax, strict word 0x1c         ; 0x1aeb
    push ax                          ; 0x1aee
    mov ax, word [bp - 0x000c]       ; 0x1aef
    add ax, strict word 0x56         ; 0x1af2
    push ax                          ; 0x1af5
    mov ax, word [bp - 0x0006]       ; 0x1af6
    add ax, strict word 0x14         ; 0x1af9
    push ax                          ; 0x1afc
    mov ax, word [bp - 0x000c]       ; 0x1afd
    add ax, strict word 0xb          ; 0x1b00
    push ax                          ; 0x1b03
    call ds_loc_3b21                 ; 0x1b04
    add sp, byte 8                   ; 0x1b07
    mov ax, word [bp - 0x0006]       ; 0x1b0a
    add ax, strict word 0x1b         ; 0x1b0d
    push ax                          ; 0x1b10
    mov ax, word [bp - 0x000c]       ; 0x1b11
    add ax, strict word 0x72         ; 0x1b14
    push ax                          ; 0x1b17
    mov ax, word [bp - 0x0006]       ; 0x1b18
    add ax, strict word 0x15         ; 0x1b1b
    push ax                          ; 0x1b1e
    mov ax, word [bp - 0x000c]       ; 0x1b1f
    add ax, strict word 0x5e         ; 0x1b22
    push ax                          ; 0x1b25
    call ds_loc_3b21                 ; 0x1b26
    add sp, byte 8                   ; 0x1b29
    jmp near @..api_idx_0050.l47     ; 0x1b2c
@..api_idx_0050.l36:
    cmp word [bp - 0x001a], byte 0x0c ; 0x1b2f
    jge short @..api_idx_0050.l37    ; 0x1b33
    jmp near @..api_idx_0050.l41     ; 0x1b35
@..api_idx_0050.l37:
    cmp word [bp - 0x001a], byte 0x11 ; 0x1b38
    jle short @..api_idx_0050.l38    ; 0x1b3c
    jmp near @..api_idx_0050.l41     ; 0x1b3e
@..api_idx_0050.l38:
    mov ax, word [bp - 0x001a]       ; 0x1b41
    add ax, strict word 0xfff4       ; 0x1b44
    mov word [bp - 0x0042], ax       ; 0x1b47
    mov word [bp - 0x003c], 0xffff   ; 0x1b4a
    push ax                          ; 0x1b4f
    push word [bp + 0x4]             ; 0x1b50
    call api_idx_0004_2              ; 0x1b53
    add sp, byte 4                   ; 0x1b56
    mov word [bp - 0x0044], ax       ; 0x1b59
    mov ax, 7                        ; 0x1b5c
    cmp word [bp - 0x0044], byte 7   ; 0x1b5f
    jge short @..api_idx_0050.l39    ; 0x1b63
    mov ax, word [bp - 0x0044]       ; 0x1b65
@..api_idx_0050.l39:
    mov word [bp - 0x0024], ax       ; 0x1b68
    mov ax, 7                        ; 0x1b6b
    cmp word [bp - 0x0044], byte 7   ; 0x1b6e
    jge short @..api_idx_0050.l40    ; 0x1b72
    mov ax, word [bp - 0x0044]       ; 0x1b74
@..api_idx_0050.l40:
    mov word [bp - 0x0020], ax       ; 0x1b77
    mov word [bp - 0x0018], 0        ; 0x1b7a
    mov word [bp - 0x0022], 0xffff   ; 0x1b7f
    push word [bp - 0x0024]          ; 0x1b84
    push word [bp - 0x0022]          ; 0x1b87
    push word [bp - 0x0018]          ; 0x1b8a
    mov ax, 7                        ; 0x1b8d
    push ax                          ; 0x1b90
    mov ax, 0xf                      ; 0x1b91
    push ax                          ; 0x1b94
    mov ax, word [bp - 0x0006]       ; 0x1b95
    add ax, strict word 0x22         ; 0x1b98
    push ax                          ; 0x1b9b
    mov ax, word [bp - 0x000c]       ; 0x1b9c
    add ax, strict word 6            ; 0x1b9f
    push ax                          ; 0x1ba2
    call ds_app_11de                 ; 0x1ba3
    add sp, byte 0x0e                ; 0x1ba6
    mov word [bp - 0x0012], 0        ; 0x1ba9
    push word [bp - 0x0012]          ; 0x1bae
    mov ax, 7                        ; 0x1bb1
    push ax                          ; 0x1bb4
    mov ax, 8                        ; 0x1bb5
    push ax                          ; 0x1bb8
    mov ax, word [bp - 0x0006]       ; 0x1bb9
    add ax, strict word 0x22         ; 0x1bbc
    push ax                          ; 0x1bbf
    mov ax, word [bp - 0x000c]       ; 0x1bc0
    add ax, strict word 0x6a         ; 0x1bc3
    push ax                          ; 0x1bc6
    call ds_app_121f                 ; 0x1bc7
    add sp, byte 0x0a                ; 0x1bca
    mov ax, 0                        ; 0x1bcd
    push ax                          ; 0x1bd0
    push ax                          ; 0x1bd1
    mov ax, word [bp - 0x0006]       ; 0x1bd2
    add ax, word [bp - 0x0012]       ; 0x1bd5
    add ax, strict word 0x2e         ; 0x1bd8
    push ax                          ; 0x1bdb
    mov ax, word [bp - 0x000c]       ; 0x1bdc
    add ax, strict word 0x72         ; 0x1bdf
    push ax                          ; 0x1be2
    mov ax, word [bp - 0x0006]       ; 0x1be3
    add ax, word [bp - 0x0012]       ; 0x1be6
    add ax, strict word 0x2a         ; 0x1be9
    push ax                          ; 0x1bec
    mov ax, word [bp - 0x000c]       ; 0x1bed
    add ax, strict word 0x6a         ; 0x1bf0
    push ax                          ; 0x1bf3
    mov ax, 0                        ; 0x1bf4
    push ax                          ; 0x1bf7
    call ds_app_0ced                 ; 0x1bf8
    add sp, byte 0x0e                ; 0x1bfb
    mov ax, 0                        ; 0x1bfe
    push ax                          ; 0x1c01
    push ax                          ; 0x1c02
    push word [bp - 0x0042]          ; 0x1c03
    mov ax, word [bp - 0x0006]       ; 0x1c06
    add ax, strict word 0x15         ; 0x1c09
    push ax                          ; 0x1c0c
    mov ax, word [bp - 0x000c]       ; 0x1c0d
    add ax, strict word 0x5e         ; 0x1c10
    push ax                          ; 0x1c13
    call loc_0f76                    ; 0x1c14
    add sp, byte 0x0a                ; 0x1c17
    mov ax, word [bp - 0x0006]       ; 0x1c1a
    add ax, strict word 0x4c         ; 0x1c1d
    push ax                          ; 0x1c20
    mov ax, word [bp - 0x000c]       ; 0x1c21
    add ax, strict word 0x72         ; 0x1c24
    push ax                          ; 0x1c27
    mov ax, word [bp - 0x0006]       ; 0x1c28
    add ax, strict word 0x22         ; 0x1c2b
    push ax                          ; 0x1c2e
    mov ax, word [bp - 0x000c]       ; 0x1c2f
    add ax, strict word 6            ; 0x1c32
    push ax                          ; 0x1c35
    call ds_loc_3b21                 ; 0x1c36
    add sp, byte 8                   ; 0x1c39
    mov ax, word [bp - 0x0006]       ; 0x1c3c
    add ax, strict word 0x1b         ; 0x1c3f
    push ax                          ; 0x1c42
    mov ax, word [bp - 0x000c]       ; 0x1c43
    add ax, strict word 0x72         ; 0x1c46
    push ax                          ; 0x1c49
    mov ax, word [bp - 0x0006]       ; 0x1c4a
    add ax, strict word 0x15         ; 0x1c4d
    push ax                          ; 0x1c50
    mov ax, word [bp - 0x000c]       ; 0x1c51
    add ax, strict word 0x5e         ; 0x1c54
    push ax                          ; 0x1c57
    call ds_loc_3b21                 ; 0x1c58
    add sp, byte 8                   ; 0x1c5b
    jmp near @..api_idx_0050.l47     ; 0x1c5e
@..api_idx_0050.l41:
    cmp word [bp - 0x001a], byte 0x12 ; 0x1c61
    jge short @..api_idx_0050.l42    ; 0x1c65
    jmp near @..api_idx_0050.l47     ; 0x1c67
@..api_idx_0050.l42:
    mov ax, word [bp - 0x0020]       ; 0x1c6a
    add ax, strict word 0x12         ; 0x1c6d
    cmp ax, word [bp - 0x001a]       ; 0x1c70
    jg short @..api_idx_0050.l43     ; 0x1c73
    jmp near @..api_idx_0050.l47     ; 0x1c75
@..api_idx_0050.l43:
    mov ax, word [bp - 0x0018]       ; 0x1c78
    add ax, word [bp - 0x001a]       ; 0x1c7b
    add ax, strict word 0xffee       ; 0x1c7e
    mov word [bp - 0x0022], ax       ; 0x1c81
    shl ax, 1                        ; 0x1c84
    mov bx, ax                       ; 0x1c86
    mov ax, word [bx - 0x6bc4]       ; 0x1c88
    mov word [bp - 0x003c], ax       ; 0x1c8c
    push word [bp - 0x0024]          ; 0x1c8f
    push word [bp - 0x0022]          ; 0x1c92
    push word [bp - 0x0018]          ; 0x1c95
    mov ax, 7                        ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0xf                      ; 0x1c9c
    push ax                          ; 0x1c9f
    mov ax, word [bp - 0x0006]       ; 0x1ca0
    add ax, strict word 0x22         ; 0x1ca3
    push ax                          ; 0x1ca6
    mov ax, word [bp - 0x000c]       ; 0x1ca7
    add ax, strict word 6            ; 0x1caa
    push ax                          ; 0x1cad
    call ds_app_11de                 ; 0x1cae
    add sp, byte 0x0e                ; 0x1cb1
    mov ax, 6                        ; 0x1cb4
    push ax                          ; 0x1cb7
    mov ax, 0                        ; 0x1cb8
    push ax                          ; 0x1cbb
    mov ax, 0x248                    ; 0x1cbc
    imul word [bp + 0x4]             ; 0x1cbf
    mov bx, ax                       ; 0x1cc2
    mov ax, word [bx + 0x5c18]       ; 0x1cc4
    push ax                          ; 0x1cc8
    mov ax, 6                        ; 0x1cc9
    imul word [bp - 0x003c]          ; 0x1ccc
    mov bx, ax                       ; 0x1ccf
    mov al, byte [bx + 0x621]        ; 0x1cd1
    sub ah, ah                       ; 0x1cd5
    mov cx, ax                       ; 0x1cd7
    pop ax                           ; 0x1cd9
    sub ax, cx                       ; 0x1cda
    push ax                          ; 0x1cdc
    call ds_app_0a09                 ; 0x1cdd
    add sp, byte 6                   ; 0x1ce0
    mov word [bp - 0x0040], ax       ; 0x1ce3
    mov ax, 6                        ; 0x1ce6
    imul word [bp - 0x003c]          ; 0x1ce9
    mov bx, ax                       ; 0x1cec
    mov al, byte [bx + 0x622]        ; 0x1cee
    sub ah, ah                       ; 0x1cf2
    mov cx, word [bp - 0x0040]       ; 0x1cf4
    inc cx                           ; 0x1cf7
    imul cx                          ; 0x1cf8
    mov word [bp - 0x0002], ax       ; 0x1cfa
    cmp word [bp + 0xa], byte 0      ; 0x1cfd
    jne short @..api_idx_0050.l44    ; 0x1d01
    mov ax, 0x3e7                    ; 0x1d03
    jmp short @..api_idx_0050.l46    ; 0x1d06
@..api_idx_0050.l44:
    mov ax, 0x248                    ; 0x1d08
    imul word [bp + 0x4]             ; 0x1d0b
    mov cx, word [bp - 0x0042]       ; 0x1d0e
    shl cx, 1                        ; 0x1d11
    shl cx, 1                        ; 0x1d13
    add ax, cx                       ; 0x1d15
    mov bx, ax                       ; 0x1d17
    mov ax, word [bx + 0x5c1c]       ; 0x1d19
    cmp ax, word [bp - 0x0002]       ; 0x1d1d
    jge short @..api_idx_0050.l45    ; 0x1d20
    jmp short @..api_idx_0050.l46    ; 0x1d22
@..api_idx_0050.l45:
    mov ax, word [bp - 0x0002]       ; 0x1d24
@..api_idx_0050.l46:
    push ax                          ; 0x1d27
    mov ax, 6                        ; 0x1d28
    imul word [bp - 0x003c]          ; 0x1d2b
    mov bx, ax                       ; 0x1d2e
    mov al, byte [bx + 0x622]        ; 0x1d30
    sub ah, ah                       ; 0x1d34
    mov cx, word [bp - 0x003e]       ; 0x1d36
    inc cx                           ; 0x1d39
    imul cx                          ; 0x1d3a
    push ax                          ; 0x1d3c
    push word [bp - 0x0042]          ; 0x1d3d
    mov ax, word [bp - 0x0006]       ; 0x1d40
    add ax, strict word 0x15         ; 0x1d43
    push ax                          ; 0x1d46
    mov ax, word [bp - 0x000c]       ; 0x1d47
    add ax, strict word 0x5e         ; 0x1d4a
    push ax                          ; 0x1d4d
    call loc_0f76                    ; 0x1d4e
    add sp, byte 0x0a                ; 0x1d51
    mov ax, word [bp - 0x0006]       ; 0x1d54
    add ax, strict word 0x4c         ; 0x1d57
    push ax                          ; 0x1d5a
    mov ax, word [bp - 0x000c]       ; 0x1d5b
    add ax, strict word 0x72         ; 0x1d5e
    push ax                          ; 0x1d61
    mov ax, word [bp - 0x0006]       ; 0x1d62
    add ax, strict word 0x22         ; 0x1d65
    push ax                          ; 0x1d68
    mov ax, word [bp - 0x000c]       ; 0x1d69
    add ax, strict word 6            ; 0x1d6c
    push ax                          ; 0x1d6f
    call ds_loc_3b21                 ; 0x1d70
    add sp, byte 8                   ; 0x1d73
    mov ax, word [bp - 0x0006]       ; 0x1d76
    add ax, strict word 0x1b         ; 0x1d79
    push ax                          ; 0x1d7c
    mov ax, word [bp - 0x000c]       ; 0x1d7d
    add ax, strict word 0x72         ; 0x1d80
    push ax                          ; 0x1d83
    mov ax, word [bp - 0x0006]       ; 0x1d84
    add ax, strict word 0x15         ; 0x1d87
    push ax                          ; 0x1d8a
    mov ax, word [bp - 0x000c]       ; 0x1d8b
    add ax, strict word 0x5e         ; 0x1d8e
    push ax                          ; 0x1d91
    call ds_loc_3b21                 ; 0x1d92
    add sp, byte 8                   ; 0x1d95
@..api_idx_0050.l47:
    jmp short @..api_idx_0050.l50    ; 0x1d98
jumptable_1d9a:
    dw jumptable_1d9a_case_0 - IMAGE_BASE + 0x5055 ; 0x1d9a
    dw jumptable_1d9a_case_1 - IMAGE_BASE + 0x5055 ; 0x1d9c
    dw jumptable_1d9a_case_1 - IMAGE_BASE + 0x5055 ; 0x1d9e
    dw jumptable_1d9a_case_3 - IMAGE_BASE + 0x5055 ; 0x1da0
    dw jumptable_1d9a_case_4 - IMAGE_BASE + 0x5055 ; 0x1da2
@..api_idx_0050.l48:
    cmp ax, strict word 5            ; 0x1da4
    jae short @..api_idx_0050.l49    ; 0x1da7
    xchg bx, ax                      ; 0x1da9
    shl bx, 1                        ; 0x1daa
    jmp [cs:bx + 0x6de1]             ; 0x1dac
@..api_idx_0050.l49:
    jmp near @..api_idx_0050.l27     ; 0x1db1
@..api_idx_0050.l50:
    cmp word [bp - 0x001c], byte 0   ; 0x1db4
    je short @..api_idx_0050.l51     ; 0x1db8
    jmp near @..api_idx_0050.l8      ; 0x1dba
@..api_idx_0050.l51:
    mov ax, 1                        ; 0x1dbd
    push ax                          ; 0x1dc0
    push word [bp - 0x003a]          ; 0x1dc1
    call ds_app_file_16a0            ; 0x1dc4
    add sp, byte 4                   ; 0x1dc7
    mov ax, word [bp - 0x000a]       ; 0x1dca
    inc ax                           ; 0x1dcd
    push ax                          ; 0x1dce
    mov ax, word [bp - 0x0008]       ; 0x1dcf
    inc ax                           ; 0x1dd2
    push ax                          ; 0x1dd3
    mov ax, word [bp - 0x0006]       ; 0x1dd4
    dec ax                           ; 0x1dd7
    push ax                          ; 0x1dd8
    mov ax, word [bp - 0x0004]       ; 0x1dd9
    dec ax                           ; 0x1ddc
    push ax                          ; 0x1ddd
    call ds_loc_3b21                 ; 0x1dde
    add sp, byte 8                   ; 0x1de1
    mov word [bp - 0x0002], 0        ; 0x1de4
@..api_idx_0050.l52:
    mov ax, word [bp - 0x0002]       ; 0x1de9
    shl ax, 1                        ; 0x1dec
    mov bx, ax                       ; 0x1dee
    add bx, bp                       ; 0x1df0
    mov ax, word [bx - 0x0050]       ; 0x1df2
    mov cx, word [bp - 0x0002]       ; 0x1df5
    shl cx, 1                        ; 0x1df8
    mov bx, cx                       ; 0x1dfa
    mov word [bx - 0x7cf2], ax       ; 0x1dfc
    inc word [bp - 0x0002]           ; 0x1e00
    mov ax, word [bp - 0x0002]       ; 0x1e03
    cmp ax, strict word 6            ; 0x1e06
    jl short @..api_idx_0050.l52     ; 0x1e09
    les bx, word [dseg_0002]         ; 0x1e0b
    mov ax, word [es:bx]             ; 0x1e0f
    mov dx, word [es:bx + 0x2]       ; 0x1e12
    mov word [bss_908c], dx          ; 0x1e16
    mov word [bss_908a], ax          ; 0x1e1a
    mov ax, word [bp - 0x003e]       ; 0x1e1d
    xchg al, ah                      ; 0x1e20
    sub al, al                       ; 0x1e22
    add ax, word [bp - 0x003c]       ; 0x1e24
    add ax, 0x100                    ; 0x1e27
    mov word [bss_904e], ax          ; 0x1e2a
    mov ax, word [bss_9050]          ; 0x1e2d
    ret                              ; 0x1e30
