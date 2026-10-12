leaf_loc_10a4:
    push bp                          ; 0x10a4
    mov bp, sp                       ; 0x10a5
    mov ax, word [bp + 0x4]          ; 0x10a7
    jmp near @..leaf_loc_10a4.l1     ; 0x10aa
jumptable_113a_case_0:
    mov ax, 0x166c                   ; 0x10ad
    push ax                          ; 0x10b0
    push word [bp + 0x6]             ; 0x10b1
    call aztec_strcpy                ; 0x10b4
    add sp, byte 4                   ; 0x10b7
    mov ax, 0x166f                   ; 0x10ba
    push ax                          ; 0x10bd
    push word [bp + 0x8]             ; 0x10be
    call aztec_strcpy                ; 0x10c1
    add sp, byte 4                   ; 0x10c4
    jmp near @..leaf_loc_10a4.l2     ; 0x10c7
jumptable_113a_case_1:
    mov ax, 0x1672                   ; 0x10ca
    push ax                          ; 0x10cd
    push word [bp + 0x6]             ; 0x10ce
    call aztec_strcpy                ; 0x10d1
    add sp, byte 4                   ; 0x10d4
    mov ax, 0x1675                   ; 0x10d7
    push ax                          ; 0x10da
    push word [bp + 0x8]             ; 0x10db
    call aztec_strcpy                ; 0x10de
    add sp, byte 4                   ; 0x10e1
    jmp short @..leaf_loc_10a4.l2    ; 0x10e4
jumptable_113a_case_2:
    mov ax, 0x1676                   ; 0x10e6
    push ax                          ; 0x10e9
    push word [bp + 0x6]             ; 0x10ea
    call aztec_strcpy                ; 0x10ed
    add sp, byte 4                   ; 0x10f0
    mov ax, 0x1679                   ; 0x10f3
    push ax                          ; 0x10f6
    push word [bp + 0x8]             ; 0x10f7
    call aztec_strcpy                ; 0x10fa
    add sp, byte 4                   ; 0x10fd
    jmp short @..leaf_loc_10a4.l2    ; 0x1100
jumptable_113a_case_3:
    mov ax, 0x167a                   ; 0x1102
    push ax                          ; 0x1105
    push word [bp + 0x6]             ; 0x1106
    call aztec_strcpy                ; 0x1109
    add sp, byte 4                   ; 0x110c
    mov ax, 0x167d                   ; 0x110f
    push ax                          ; 0x1112
    push word [bp + 0x8]             ; 0x1113
    call aztec_strcpy                ; 0x1116
    add sp, byte 4                   ; 0x1119
    jmp short @..leaf_loc_10a4.l2    ; 0x111c
jumptable_113a_case_4:
    mov ax, 0x167e                   ; 0x111e
    push ax                          ; 0x1121
    push word [bp + 0x6]             ; 0x1122
    call aztec_strcpy                ; 0x1125
    add sp, byte 4                   ; 0x1128
    mov ax, 0x1681                   ; 0x112b
    push ax                          ; 0x112e
    push word [bp + 0x8]             ; 0x112f
    call aztec_strcpy                ; 0x1132
    add sp, byte 4                   ; 0x1135
    jmp short @..leaf_loc_10a4.l2    ; 0x1138
jumptable_113a:
    dw jumptable_113a_case_0 - IMAGE_BASE      ; 0x113a
    dw jumptable_113a_case_1 - IMAGE_BASE      ; 0x113c
    dw jumptable_113a_case_2 - IMAGE_BASE      ; 0x113e
    dw jumptable_113a_case_3 - IMAGE_BASE      ; 0x1140
    dw jumptable_113a_case_4 - IMAGE_BASE      ; 0x1142
@..leaf_loc_10a4.l1:
    cmp ax, strict word 5            ; 0x1144
    jae short @..leaf_loc_10a4.l2    ; 0x1147
    xchg bx, ax                      ; 0x1149
    shl bx, 1                        ; 0x114a
    jmp [cs:bx + jumptable_113a - IMAGE_BASE] ; 0x114c
@..leaf_loc_10a4.l2:
    mov sp, bp                       ; 0x1151
    pop bp                           ; 0x1153
    ret                              ; 0x1154

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0x5e, 0xff, 0x8b, 0x46, 0x04, 0x8b, 0xd0, 0xd1, 0xe0, 0xd1, 0xe0
    db 0x03, 0xc2, 0xd1, 0xe0, 0x8b, 0x4e, 0x06, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0xad
    db 0x02, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0x60, 0x19, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00
    db 0xeb, 0x21, 0x8b, 0x5e, 0xfe, 0x03, 0xdd, 0x80, 0x7f, 0xae, 0x2a, 0x74, 0x0c, 0x8a, 0x47, 0xae
    db 0x98, 0x05, 0xbf, 0xff, 0x3b, 0x46, 0x08, 0x75, 0x07, 0xb8, 0x01, 0x00, 0x8b, 0xe5, 0x5d, 0xc3
    db 0xff, 0x46, 0xfe, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0xc0, 0x23, 0x59, 0x3b, 0x46, 0xfe, 0x7f, 0xd2
    db 0xb8, 0x00, 0x00, 0xeb, 0xe7

loc_11ba:
    push bp                          ; 0x11ba
    mov bp, sp                       ; 0x11bb
    add sp, byte 0xae                ; 0x11bd
    push word [bp + 0x4]             ; 0x11c0
    call loc_0200                    ; 0x11c3
    pop cx                           ; 0x11c6
    mov word [bp - 0x0002], ax       ; 0x11c7
    cmp ax, strict word 0xffff       ; 0x11ca
    jne short @..local.l46           ; 0x11cd
    mov ax, 0x1689                   ; 0x11cf
    push ax                          ; 0x11d2
    lea ax, word [bp - 0x0052]       ; 0x11d3
    push ax                          ; 0x11d6
    call aztec_strcpy                ; 0x11d7
    add sp, byte 4                   ; 0x11da
    push word [bp + 0x4]             ; 0x11dd
    lea ax, word [bp - 0x0052]       ; 0x11e0
    push ax                          ; 0x11e3
    call string_loc_2aa6             ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, 0x16af                   ; 0x11ea
    push ax                          ; 0x11ed
    lea ax, word [bp - 0x0052]       ; 0x11ee
    push ax                          ; 0x11f1
    call string_loc_2aa6             ; 0x11f2
    add sp, byte 4                   ; 0x11f5
    lea ax, word [bp - 0x0052]       ; 0x11f8
    push ax                          ; 0x11fb
    call loc_0992                    ; 0x11fc
    pop cx                           ; 0x11ff
    mov ax, 4                        ; 0x1200
    push ax                          ; 0x1203
    call loc_380b                    ; 0x1204
    pop cx                           ; 0x1207
@..local.l46:
    push word [bp + 0x6]             ; 0x1208
    call leaf_loc_2a1c               ; 0x120b
    pop cx                           ; 0x120e
    mov word [bp - 0x0002], ax       ; 0x120f
    cmp ax, strict word 0xffff       ; 0x1212
    je short @..local.l47            ; 0x1215
    jmp near @..local.l50            ; 0x1217
@..local.l47:
    cmp word [bp + 0x8], byte 1      ; 0x121a
    jne short @..local.l49           ; 0x121e
    push word [bp + 0x6]             ; 0x1220
    call aztec_mkdir                 ; 0x1223
    pop cx                           ; 0x1226
    mov word [bp - 0x0002], ax       ; 0x1227
    cmp ax, strict word 0xffff       ; 0x122a
    jne short @..local.l48           ; 0x122d
    mov ax, 0x16c2                   ; 0x122f
    push ax                          ; 0x1232
    lea ax, word [bp - 0x0052]       ; 0x1233
    push ax                          ; 0x1236
    call aztec_strcpy                ; 0x1237
    add sp, byte 4                   ; 0x123a
    push word [bp + 0x6]             ; 0x123d
    lea ax, word [bp - 0x0052]       ; 0x1240
    push ax                          ; 0x1243
    call string_loc_2aa6             ; 0x1244
    add sp, byte 4                   ; 0x1247
    mov ax, 0x16e8                   ; 0x124a
    push ax                          ; 0x124d
    lea ax, word [bp - 0x0052]       ; 0x124e
    push ax                          ; 0x1251
    call string_loc_2aa6             ; 0x1252
    add sp, byte 4                   ; 0x1255
    lea ax, word [bp - 0x0052]       ; 0x1258
    push ax                          ; 0x125b
    call loc_0992                    ; 0x125c
    pop cx                           ; 0x125f
    mov ax, 1                        ; 0x1260
    push ax                          ; 0x1263
    call loc_380b                    ; 0x1264
    pop cx                           ; 0x1267
@..local.l48:
    push word [bp + 0x6]             ; 0x1268
    call leaf_loc_2a1c               ; 0x126b
    pop cx                           ; 0x126e
    mov word [bp - 0x0002], ax       ; 0x126f
@..local.l49:
    cmp word [bp - 0x0002], byte 0xff ; 0x1272
    jne short @..local.l50           ; 0x1276
    mov ax, 0x16fa                   ; 0x1278
    push ax                          ; 0x127b
    lea ax, word [bp - 0x0052]       ; 0x127c
    push ax                          ; 0x127f
    call aztec_strcpy                ; 0x1280
    add sp, byte 4                   ; 0x1283
    push word [bp + 0x6]             ; 0x1286
    lea ax, word [bp - 0x0052]       ; 0x1289
    push ax                          ; 0x128c
    call string_loc_2aa6             ; 0x128d
    add sp, byte 4                   ; 0x1290
    mov ax, 0x1720                   ; 0x1293
    push ax                          ; 0x1296
    lea ax, word [bp - 0x0052]       ; 0x1297
    push ax                          ; 0x129a
    call string_loc_2aa6             ; 0x129b
    add sp, byte 4                   ; 0x129e
    lea ax, word [bp - 0x0052]       ; 0x12a1
    push ax                          ; 0x12a4
    call loc_0992                    ; 0x12a5
    pop cx                           ; 0x12a8
    mov ax, 2                        ; 0x12a9
    push ax                          ; 0x12ac
    call loc_380b                    ; 0x12ad
    pop cx                           ; 0x12b0
@..local.l50:
    mov sp, bp                       ; 0x12b1
    pop bp                           ; 0x12b3
    ret                              ; 0x12b4
loc_12b5:
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
    mov ax, 2                        ; 0x12f4
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
    mov ax, 4                        ; 0x1318
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
    call aztec_raise                 ; 0x1355
    add sp, byte 4                   ; 0x1358
    lea ax, word [bp - 0x02d6]       ; 0x135b
    push ax                          ; 0x135f
    call aztec_strlen                ; 0x1360
    pop cx                           ; 0x1363
    cmp ax, strict word 1            ; 0x1364
    jne short @..local.l51           ; 0x1367
    mov al, byte [bp - 0x02d6]       ; 0x1369
    mov byte [bp - 0x02d5], al       ; 0x136d
    mov byte [bp - 0x02d6], 0x30     ; 0x1371
    mov byte [bp - 0x02d4], 0        ; 0x1376
@..local.l51:
    lea ax, word [bp - 0x02d6]       ; 0x137b
    push ax                          ; 0x137f
    call bios_video_loc_2621         ; 0x1380
    pop cx                           ; 0x1383
    mov ax, 0x183d                   ; 0x1384
    push ax                          ; 0x1387
    mov ax, 5                        ; 0x1388
    push ax                          ; 0x138b
    mov ax, 7                        ; 0x138c
    push ax                          ; 0x138f
    call loc_040f                    ; 0x1390
    add sp, byte 6                   ; 0x1393
    mov ax, 0x1882                   ; 0x1396
    push ax                          ; 0x1399
    mov ax, 5                        ; 0x139a
    push ax                          ; 0x139d
    mov ax, 8                        ; 0x139e
    push ax                          ; 0x13a1
    call loc_040f                    ; 0x13a2
    add sp, byte 6                   ; 0x13a5
    mov ax, 0x18b2                   ; 0x13a8
    push ax                          ; 0x13ab
    mov ax, 5                        ; 0x13ac
    push ax                          ; 0x13af
    mov ax, 0xa                      ; 0x13b0
    push ax                          ; 0x13b3
    call loc_040f                    ; 0x13b4
    add sp, byte 6                   ; 0x13b7
    mov ax, 0x18f6                   ; 0x13ba
    push ax                          ; 0x13bd
    mov ax, 5                        ; 0x13be
    push ax                          ; 0x13c1
    mov ax, 0xb                      ; 0x13c2
    push ax                          ; 0x13c5
    call loc_040f                    ; 0x13c6
    add sp, byte 6                   ; 0x13c9
    mov ax, 0x1911                   ; 0x13cc
    push ax                          ; 0x13cf
    mov ax, 5                        ; 0x13d0
    push ax                          ; 0x13d3
    mov ax, 0xd                      ; 0x13d4
    push ax                          ; 0x13d7
    call loc_040f                    ; 0x13d8
    add sp, byte 6                   ; 0x13db
    mov ax, 0x1957                   ; 0x13de
    push ax                          ; 0x13e1
    mov ax, 5                        ; 0x13e2
    push ax                          ; 0x13e5
    mov ax, 0xe                      ; 0x13e6
    push ax                          ; 0x13e9
    call loc_040f                    ; 0x13ea
    add sp, byte 6                   ; 0x13ed
    mov ax, 0x199e                   ; 0x13f0
    push ax                          ; 0x13f3
    mov ax, 5                        ; 0x13f4
    push ax                          ; 0x13f7
    mov ax, 0xf                      ; 0x13f8
    push ax                          ; 0x13fb
    call loc_040f                    ; 0x13fc
    add sp, byte 6                   ; 0x13ff
    mov ax, 0x19e4                   ; 0x1402
    push ax                          ; 0x1405
    mov ax, 5                        ; 0x1406
    push ax                          ; 0x1409
    mov ax, 0x10                     ; 0x140a
    push ax                          ; 0x140d
    call loc_040f                    ; 0x140e
    add sp, byte 6                   ; 0x1411
    mov ax, 0x1a2b                   ; 0x1414
    push ax                          ; 0x1417
    mov ax, 5                        ; 0x1418
    push ax                          ; 0x141b
    mov ax, 0x11                     ; 0x141c
    push ax                          ; 0x141f
    call loc_040f                    ; 0x1420
    add sp, byte 6                   ; 0x1423
    mov ax, 0x1a72                   ; 0x1426
    push ax                          ; 0x1429
    mov ax, 5                        ; 0x142a
    push ax                          ; 0x142d
    mov ax, 0x12                     ; 0x142e
    push ax                          ; 0x1431
    call loc_040f                    ; 0x1432
    add sp, byte 6                   ; 0x1435
    mov ax, 0x1a91                   ; 0x1438
    push ax                          ; 0x143b
    mov ax, 0x2648                   ; 0x143c
    push ax                          ; 0x143f
    call aztec_strcpy                ; 0x1440
    add sp, byte 4                   ; 0x1443
    mov ax, 0x1a92                   ; 0x1446
    push ax                          ; 0x1449
    call loc_0992                    ; 0x144a
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
    mov ax, 2                        ; 0x147d
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
    mov ax, 4                        ; 0x14a1
    push ax                          ; 0x14a4
    call loc_040f                    ; 0x14a5
    add sp, byte 6                   ; 0x14a8
    call loc_245e                    ; 0x14ab
    mov word [bp - 0x0006], ax       ; 0x14ae
    mov word [bss_29e6], 0           ; 0x14b1
    mov word [bss_29e8], 0           ; 0x14b7
    mov word [bss_29ea], 0           ; 0x14bd
    mov word [bss_2af0], 0           ; 0x14c3
    mov word [bss_29ec], 0           ; 0x14c9
    mov word [bss_2af2], 0           ; 0x14cf
    mov word [bss_2af4], 0           ; 0x14d5
    mov word [bss_2af6], 0           ; 0x14db
    mov word [bss_2af8], 0           ; 0x14e1
    mov word [bss_2afa], 0           ; 0x14e7
    test ax, 1                       ; 0x14ed
    je short @..local.l52            ; 0x14f0
    mov word [bss_29e6], 1           ; 0x14f2
@..local.l52:
    test ax, 2                       ; 0x14f8
    je short @..local.l53            ; 0x14fb
    mov word [bss_29e8], 1           ; 0x14fd
@..local.l53:
    test ax, 0x1000                  ; 0x1503
    je short @..local.l54            ; 0x1506
    mov word [bss_2afa], 1           ; 0x1508
@..local.l54:
    mov word [bp - 0x000e], 3        ; 0x150e
    mov ax, 0x1bca                   ; 0x1513
    push ax                          ; 0x1516
    lea ax, word [bp - 0x001c]       ; 0x1517
    push ax                          ; 0x151a
    call aztec_strcpy                ; 0x151b
    add sp, byte 4                   ; 0x151e
    mov ax, 0x1bcd                   ; 0x1521
    push ax                          ; 0x1524
    lea ax, word [bp - 0x0032]       ; 0x1525
    push ax                          ; 0x1528
    call aztec_strcpy                ; 0x1529
    add sp, byte 4                   ; 0x152c
    mov word [bp - 0x0010], 4        ; 0x152f
    lea ax, word [bp - 0x0054]       ; 0x1534
    push ax                          ; 0x1537
    lea ax, word [bp - 0x003e]       ; 0x1538
    push ax                          ; 0x153b
    push word [bp - 0x0010]          ; 0x153c
    call leaf_loc_10a4               ; 0x153f
    add sp, byte 6                   ; 0x1542
    mov ax, 0x1bce                   ; 0x1545
    push ax                          ; 0x1548
    mov ax, 2                        ; 0x1549
    push ax                          ; 0x154c
    mov ax, 6                        ; 0x154d
    push ax                          ; 0x1550
    call loc_040f                    ; 0x1551
    add sp, byte 6                   ; 0x1554
    mov ax, 0x1c1b                   ; 0x1557
    push ax                          ; 0x155a
    mov ax, 2                        ; 0x155b
    push ax                          ; 0x155e
    mov ax, 7                        ; 0x155f
    push ax                          ; 0x1562
    call loc_040f                    ; 0x1563
    add sp, byte 6                   ; 0x1566
    lea ax, word [bp - 0x0032]       ; 0x1569
    push ax                          ; 0x156c
    lea ax, word [bp - 0x001c]       ; 0x156d
    push ax                          ; 0x1570
    push word [bp - 0x000e]          ; 0x1571
    mov ax, 0x1c68                   ; 0x1574
    push ax                          ; 0x1577
    mov ax, 2                        ; 0x1578
    push ax                          ; 0x157b
    mov ax, 8                        ; 0x157c
    push ax                          ; 0x157f
    call aztec_vfprintf              ; 0x1580
    add sp, byte 0x0c                ; 0x1583
    lea ax, word [bp - 0x0054]       ; 0x1586
    push ax                          ; 0x1589
    lea ax, word [bp - 0x003e]       ; 0x158a
    push ax                          ; 0x158d
    push word [bp - 0x0010]          ; 0x158e
    mov ax, 0x1c7b                   ; 0x1591
    push ax                          ; 0x1594
    mov ax, 2                        ; 0x1595
    push ax                          ; 0x1598
    mov ax, 9                        ; 0x1599
    push ax                          ; 0x159c
    call aztec_vfprintf              ; 0x159d
    add sp, byte 0x0c                ; 0x15a0
    mov word [bp - 0x01a0], 0        ; 0x15a3
    mov word [bp - 0x01a2], 0        ; 0x15a9
    mov byte [bp - 0x01b8], 0        ; 0x15af
    mov ax, 0x1c8e                   ; 0x15b4
    push ax                          ; 0x15b7
    mov ax, 2                        ; 0x15b8
    push ax                          ; 0x15bb
    mov ax, 0xb                      ; 0x15bc
    push ax                          ; 0x15bf
    call loc_040f                    ; 0x15c0
    add sp, byte 6                   ; 0x15c3
    mov ax, word [bp - 0x01a0]       ; 0x15c6
    shl ax, 1                        ; 0x15ca
    mov bx, ax                       ; 0x15cc
    push word [bx + 0x154]           ; 0x15ce
    mov ax, 0x1b                     ; 0x15d2
    push ax                          ; 0x15d5
    mov ax, 0xb                      ; 0x15d6
    push ax                          ; 0x15d9
    call loc_040f                    ; 0x15da
    add sp, byte 6                   ; 0x15dd
    mov ax, word [bp - 0x01a2]       ; 0x15e0
    shl ax, 1                        ; 0x15e4
    mov bx, ax                       ; 0x15e6
    push word [bx + 0x154]           ; 0x15e8
    mov ax, 0x29                     ; 0x15ec
    push ax                          ; 0x15ef
    mov ax, 0xb                      ; 0x15f0
    push ax                          ; 0x15f3
    call loc_040f                    ; 0x15f4
    add sp, byte 6                   ; 0x15f7
    lea ax, word [bp - 0x01b8]       ; 0x15fa
    push ax                          ; 0x15fe
    mov ax, 0x3a                     ; 0x15ff
    push ax                          ; 0x1602
    mov ax, 0xb                      ; 0x1603
    push ax                          ; 0x1606
    call loc_040f                    ; 0x1607
    add sp, byte 6                   ; 0x160a
    mov ax, 0x1cc7                   ; 0x160d
    push ax                          ; 0x1610
    mov ax, 2                        ; 0x1611
    push ax                          ; 0x1614
    mov ax, 0xd                      ; 0x1615
    push ax                          ; 0x1618
    call loc_040f                    ; 0x1619
    add sp, byte 6                   ; 0x161c
    mov ax, 0x1d0a                   ; 0x161f
    push ax                          ; 0x1622
    mov ax, 2                        ; 0x1623
    push ax                          ; 0x1626
    mov ax, 0xe                      ; 0x1627
    push ax                          ; 0x162a
    call loc_040f                    ; 0x162b
    add sp, byte 6                   ; 0x162e
    mov word [bp - 0x0196], 0        ; 0x1631
    mov word [bp - 0x01be], 0xf      ; 0x1637
    cmp word [bss_29e6], byte 0      ; 0x163d
    je short @..local.l55            ; 0x1642
    mov word [bp - 0x0196], 1        ; 0x1644
    push word [dseg_0004]            ; 0x164a
    mov ax, 0xa                      ; 0x164e
    push ax                          ; 0x1651
    push word [bp - 0x01be]          ; 0x1652
    call loc_040f                    ; 0x1656
    add sp, byte 6                   ; 0x1659
    inc word [bp - 0x01be]           ; 0x165c
@..local.l55:
    cmp word [bss_29e8], byte 0      ; 0x1660
    je short @..local.l57            ; 0x1665
    cmp word [bp - 0x0196], byte 0   ; 0x1667
    jne short @..local.l56           ; 0x166c
    mov word [bp - 0x0196], 2        ; 0x166e
@..local.l56:
    push word [dseg_0006]            ; 0x1674
    mov ax, 0xa                      ; 0x1678
    push ax                          ; 0x167b
    push word [bp - 0x01be]          ; 0x167c
    call loc_040f                    ; 0x1680
    add sp, byte 6                   ; 0x1683
    inc word [bp - 0x01be]           ; 0x1686
@..local.l57:
    mov ax, word [bp - 0x0196]       ; 0x168a
    shl ax, 1                        ; 0x168e
    mov bx, ax                       ; 0x1690
    push word [word bx + 0x2]        ; 0x1692
    mov ax, 0x10                     ; 0x1696
    push ax                          ; 0x1699
    mov ax, 0xd                      ; 0x169a
    push ax                          ; 0x169d
    call loc_040f                    ; 0x169e
    add sp, byte 6                   ; 0x16a1
    mov word [bp - 0x01ba], 0        ; 0x16a4
    mov word [bp - 0x01bc], 0        ; 0x16aa
    mov ax, 0x1d4d                   ; 0x16b0
    push ax                          ; 0x16b3
    mov ax, 0x34                     ; 0x16b4
    push ax                          ; 0x16b7
    mov ax, 0xf                      ; 0x16b8
    push ax                          ; 0x16bb
    call loc_040f                    ; 0x16bc
    add sp, byte 6                   ; 0x16bf
    push word [bp - 0x01ba]          ; 0x16c2
    mov ax, 0x3e                     ; 0x16c6
    push ax                          ; 0x16c9
    mov ax, 0xf                      ; 0x16ca
    push ax                          ; 0x16cd
    call loc_03b3                    ; 0x16ce
    add sp, byte 6                   ; 0x16d1
    mov ax, 0x1d58                   ; 0x16d4
    push ax                          ; 0x16d7
    mov ax, 0x34                     ; 0x16d8
    push ax                          ; 0x16db
    mov ax, 0x10                     ; 0x16dc
    push ax                          ; 0x16df
    call loc_040f                    ; 0x16e0
    add sp, byte 6                   ; 0x16e3
    push word [bp - 0x01bc]          ; 0x16e6
    mov ax, 0x3e                     ; 0x16ea
    push ax                          ; 0x16ed
    mov ax, 0x10                     ; 0x16ee
    push ax                          ; 0x16f1
    call loc_03b3                    ; 0x16f2
    add sp, byte 6                   ; 0x16f5
    mov ax, word [bss_2afa]          ; 0x16f8
    mov word [bp - 0x019a], ax       ; 0x16fb
    mov ax, 0x1d63                   ; 0x16ff
    push ax                          ; 0x1702
    mov ax, 0x14                     ; 0x1703
    push ax                          ; 0x1706
    mov ax, 0x12                     ; 0x1707
    push ax                          ; 0x170a
    call loc_040f                    ; 0x170b
    add sp, byte 6                   ; 0x170e
    mov ax, word [bp - 0x019a]       ; 0x1711
    shl ax, 1                        ; 0x1715
    mov bx, ax                       ; 0x1717
    push word [bx + 0x154]           ; 0x1719
    mov ax, 0x1b                     ; 0x171d
    push ax                          ; 0x1720
    mov ax, 0x12                     ; 0x1721
    push ax                          ; 0x1724
    call loc_040f                    ; 0x1725
    add sp, byte 6                   ; 0x1728
    mov word [bp - 0x0198], 0        ; 0x172b
    mov ax, 0x1d6b                   ; 0x1731
    push ax                          ; 0x1734
    mov ax, 0x22                     ; 0x1735
    push ax                          ; 0x1738
    mov ax, 0x12                     ; 0x1739
    push ax                          ; 0x173c
    call loc_040f                    ; 0x173d
    add sp, byte 6                   ; 0x1740
    mov ax, word [bp - 0x0198]       ; 0x1743
    shl ax, 1                        ; 0x1747
    mov bx, ax                       ; 0x1749
    push word [bx + 0xa4]            ; 0x174b
    mov ax, 0x29                     ; 0x174f
    push ax                          ; 0x1752
    mov ax, 0x12                     ; 0x1753
    push ax                          ; 0x1756
    call loc_040f                    ; 0x1757
    add sp, byte 6                   ; 0x175a
    mov ax, 0x1d73                   ; 0x175d
    push ax                          ; 0x1760
    mov ax, 0x12                     ; 0x1761
    push ax                          ; 0x1764
    mov ax, 0x14                     ; 0x1765
    push ax                          ; 0x1768
    call loc_040f                    ; 0x1769
    add sp, byte 6                   ; 0x176c
    mov ax, 0x1d9f                   ; 0x176f
    push ax                          ; 0x1772
    mov ax, 0x14                     ; 0x1773
    push ax                          ; 0x1776
    mov ax, 0x16                     ; 0x1777
    push ax                          ; 0x177a
    call loc_040f                    ; 0x177b
    add sp, byte 6                   ; 0x177e
    cmp word [bp - 0x0196], byte 0   ; 0x1781
    jne short @..local.l58           ; 0x1786
    mov ax, 0x1dc7                   ; 0x1788
    push ax                          ; 0x178b
    call loc_0992                    ; 0x178c
    pop cx                           ; 0x178f
    mov ax, 0x1df7                   ; 0x1790
    push ax                          ; 0x1793
    call loc_0992                    ; 0x1794
    pop cx                           ; 0x1797
    mov ax, 3                        ; 0x1798
    push ax                          ; 0x179b
    call loc_06f1                    ; 0x179c
    pop cx                           ; 0x179f
    mov ax, 0                        ; 0x17a0
    push ax                          ; 0x17a3
    call loc_380b                    ; 0x17a4
    pop cx                           ; 0x17a7
@..local.l58:
    mov word [bp - 0x019c], 0        ; 0x17a8
    mov word [bp - 0x019e], 0xffff   ; 0x17ae
    mov word [bp - 0x01c0], 0        ; 0x17b4
@..local.l59:
    mov ax, 0x1e28                   ; 0x17ba
    push ax                          ; 0x17bd
    mov ax, 0x2648                   ; 0x17be
    push ax                          ; 0x17c1
    call aztec_strcpy                ; 0x17c2
    add sp, byte 4                   ; 0x17c5
    mov ax, word [bp - 0x019e]       ; 0x17c8
    jmp near @..local.l60            ; 0x17cc
jumptable_1969_case_1:
    mov ax, word [bp - 0x000e]       ; 0x17cf
    shl ax, 1                        ; 0x17d2
    mov bx, ax                       ; 0x17d4
    push word [bx + 0x160]           ; 0x17d6
    mov ax, 0x16                     ; 0x17da
    push ax                          ; 0x17dd
    mov ax, 8                        ; 0x17de
    push ax                          ; 0x17e1
    call loc_040f                    ; 0x17e2
    add sp, byte 6                   ; 0x17e5
    jmp near @..local.l61            ; 0x17e8
jumptable_1969_case_2:
    lea ax, word [bp - 0x001c]       ; 0x17eb
    push ax                          ; 0x17ee
    mov ax, 0x2e                     ; 0x17ef
    push ax                          ; 0x17f2
    mov ax, 8                        ; 0x17f3
    push ax                          ; 0x17f6
    call loc_040f                    ; 0x17f7
    add sp, byte 6                   ; 0x17fa
    jmp near @..local.l61            ; 0x17fd
jumptable_1969_case_3:
    lea ax, word [bp - 0x0032]       ; 0x1800
    push ax                          ; 0x1803
    mov ax, 0x3a                     ; 0x1804
    push ax                          ; 0x1807
    mov ax, 8                        ; 0x1808
    push ax                          ; 0x180b
    call loc_040f                    ; 0x180c
    add sp, byte 6                   ; 0x180f
    jmp near @..local.l61            ; 0x1812
jumptable_1969_case_4:
    mov ax, word [bp - 0x0010]       ; 0x1815
    shl ax, 1                        ; 0x1818
    mov bx, ax                       ; 0x181a
    push word [bx + 0x160]           ; 0x181c
    mov ax, 0x16                     ; 0x1820
    push ax                          ; 0x1823
    mov ax, 9                        ; 0x1824
    push ax                          ; 0x1827
    call loc_040f                    ; 0x1828
    add sp, byte 6                   ; 0x182b
    jmp near @..local.l61            ; 0x182e
jumptable_1969_case_5:
    lea ax, word [bp - 0x003e]       ; 0x1831
    push ax                          ; 0x1834
    mov ax, 0x2e                     ; 0x1835
    push ax                          ; 0x1838
    mov ax, 9                        ; 0x1839
    push ax                          ; 0x183c
    call loc_040f                    ; 0x183d
    add sp, byte 6                   ; 0x1840
    jmp near @..local.l61            ; 0x1843
jumptable_1969_case_6:
    lea ax, word [bp - 0x0054]       ; 0x1846
    push ax                          ; 0x1849
    mov ax, 0x3a                     ; 0x184a
    push ax                          ; 0x184d
    mov ax, 9                        ; 0x184e
    push ax                          ; 0x1851
    call loc_040f                    ; 0x1852
    add sp, byte 6                   ; 0x1855
    jmp near @..local.l61            ; 0x1858
jumptable_1969_case_7:
    mov ax, word [bp - 0x01a0]       ; 0x185b
    shl ax, 1                        ; 0x185f
    mov bx, ax                       ; 0x1861
    push word [bx + 0x154]           ; 0x1863
    mov ax, 0x1b                     ; 0x1867
    push ax                          ; 0x186a
    mov ax, 0xb                      ; 0x186b
    push ax                          ; 0x186e
    call loc_040f                    ; 0x186f
    add sp, byte 6                   ; 0x1872
    jmp near @..local.l61            ; 0x1875
jumptable_1969_case_8:
    mov ax, word [bp - 0x01a2]       ; 0x1878
    shl ax, 1                        ; 0x187c
    mov bx, ax                       ; 0x187e
    push word [bx + 0x154]           ; 0x1880
    mov ax, 0x29                     ; 0x1884
    push ax                          ; 0x1887
    mov ax, 0xb                      ; 0x1888
    push ax                          ; 0x188b
    call loc_040f                    ; 0x188c
    add sp, byte 6                   ; 0x188f
    jmp near @..local.l61            ; 0x1892
jumptable_1969_case_9:
    lea ax, word [bp - 0x01b8]       ; 0x1895
    push ax                          ; 0x1899
    mov ax, 0x3a                     ; 0x189a
    push ax                          ; 0x189d
    mov ax, 0xb                      ; 0x189e
    push ax                          ; 0x18a1
    call loc_040f                    ; 0x18a2
    add sp, byte 6                   ; 0x18a5
    jmp near @..local.l61            ; 0x18a8
jumptable_1969_case_10:
    mov ax, word [bp - 0x0196]       ; 0x18ab
    shl ax, 1                        ; 0x18af
    mov bx, ax                       ; 0x18b1
    push word [word bx + 0x2]        ; 0x18b3
    mov ax, 0x10                     ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, 0xd                      ; 0x18bb
    push ax                          ; 0x18be
    call loc_040f                    ; 0x18bf
    add sp, byte 6                   ; 0x18c2
    jmp near @..local.l61            ; 0x18c5
jumptable_1969_case_11:
    push word [bp - 0x01ba]          ; 0x18c8
    mov ax, 0x3e                     ; 0x18cc
    push ax                          ; 0x18cf
    mov ax, 0xf                      ; 0x18d0
    push ax                          ; 0x18d3
    call loc_03b3                    ; 0x18d4
    add sp, byte 6                   ; 0x18d7
    jmp near @..local.l61            ; 0x18da
jumptable_1969_case_12:
    push word [bp - 0x01bc]          ; 0x18dd
    mov ax, 0x3e                     ; 0x18e1
    push ax                          ; 0x18e4
    mov ax, 0x10                     ; 0x18e5
    push ax                          ; 0x18e8
    call loc_03b3                    ; 0x18e9
    add sp, byte 6                   ; 0x18ec
    jmp near @..local.l61            ; 0x18ef
jumptable_1969_case_13:
    mov ax, word [bp - 0x019a]       ; 0x18f2
    shl ax, 1                        ; 0x18f6
    mov bx, ax                       ; 0x18f8
    push word [bx + 0x154]           ; 0x18fa
    mov ax, 0x1b                     ; 0x18fe
    push ax                          ; 0x1901
    mov ax, 0x12                     ; 0x1902
    push ax                          ; 0x1905
    call loc_040f                    ; 0x1906
    add sp, byte 6                   ; 0x1909
    jmp near @..local.l61            ; 0x190c
jumptable_1969_case_14:
    mov ax, word [bp - 0x0198]       ; 0x190f
    shl ax, 1                        ; 0x1913
    mov bx, ax                       ; 0x1915
    push word [bx + 0xa4]            ; 0x1917
    mov ax, 0x29                     ; 0x191b
    push ax                          ; 0x191e
    mov ax, 0x12                     ; 0x191f
    push ax                          ; 0x1922
    call loc_040f                    ; 0x1923
    add sp, byte 6                   ; 0x1926
    jmp short @..local.l61           ; 0x1929
jumptable_1969_case_15:
    mov ax, 0x1e50                   ; 0x192b
    push ax                          ; 0x192e
    mov ax, 0x12                     ; 0x192f
    push ax                          ; 0x1932
    mov ax, 0x14                     ; 0x1933
    push ax                          ; 0x1936
    call loc_040f                    ; 0x1937
    add sp, byte 6                   ; 0x193a
    jmp short @..local.l61           ; 0x193d
jumptable_1969_case_16:
    mov ax, 0x1e5d                   ; 0x193f
    push ax                          ; 0x1942
    mov ax, 0x21                     ; 0x1943
    push ax                          ; 0x1946
    mov ax, 0x14                     ; 0x1947
    push ax                          ; 0x194a
    call loc_040f                    ; 0x194b
    add sp, byte 6                   ; 0x194e
    jmp short @..local.l61           ; 0x1951
jumptable_1969_case_17:
    mov ax, 0x1e69                   ; 0x1953
    push ax                          ; 0x1956
    mov ax, 0x30                     ; 0x1957
    push ax                          ; 0x195a
    mov ax, 0x14                     ; 0x195b
    push ax                          ; 0x195e
    call loc_040f                    ; 0x195f
    add sp, byte 6                   ; 0x1962
    jmp short @..local.l61           ; 0x1965
jumptable_1969_case_0:
    jmp short @..local.l61           ; 0x1967
jumptable_1969:
    dw jumptable_1969_case_0 - IMAGE_BASE      ; 0x1969
    dw jumptable_1969_case_1 - IMAGE_BASE      ; 0x196b
    dw jumptable_1969_case_2 - IMAGE_BASE      ; 0x196d
    dw jumptable_1969_case_3 - IMAGE_BASE      ; 0x196f
    dw jumptable_1969_case_4 - IMAGE_BASE      ; 0x1971
    dw jumptable_1969_case_5 - IMAGE_BASE      ; 0x1973
    dw jumptable_1969_case_6 - IMAGE_BASE      ; 0x1975
    dw jumptable_1969_case_7 - IMAGE_BASE      ; 0x1977
    dw jumptable_1969_case_8 - IMAGE_BASE      ; 0x1979
    dw jumptable_1969_case_9 - IMAGE_BASE      ; 0x197b
    dw jumptable_1969_case_10 - IMAGE_BASE     ; 0x197d
    dw jumptable_1969_case_11 - IMAGE_BASE     ; 0x197f
    dw jumptable_1969_case_12 - IMAGE_BASE     ; 0x1981
    dw jumptable_1969_case_13 - IMAGE_BASE     ; 0x1983
    dw jumptable_1969_case_14 - IMAGE_BASE     ; 0x1985
    dw jumptable_1969_case_15 - IMAGE_BASE     ; 0x1987
    dw jumptable_1969_case_16 - IMAGE_BASE     ; 0x1989
    dw jumptable_1969_case_17 - IMAGE_BASE     ; 0x198b
@..local.l60:
    sub ax, strict word 0xffff       ; 0x198d
    cmp ax, strict word 0x12         ; 0x1990
    jae short @..local.l61           ; 0x1993
    xchg bx, ax                      ; 0x1995
    shl bx, 1                        ; 0x1996
    jmp [cs:bx + jumptable_1969 - IMAGE_BASE] ; 0x1998
@..local.l61:
    mov ax, word [bp - 0x019c]       ; 0x199d
    jmp near @..local.l62            ; 0x19a1
jumptable_1b3c_case_0:
    mov ax, word [bp - 0x000e]       ; 0x19a4
    shl ax, 1                        ; 0x19a7
    mov bx, ax                       ; 0x19a9
    push word [bx + 0x160]           ; 0x19ab
    mov ax, 0x16                     ; 0x19af
    push ax                          ; 0x19b2
    mov ax, 8                        ; 0x19b3
    push ax                          ; 0x19b6
    call loc_0429                    ; 0x19b7
    add sp, byte 6                   ; 0x19ba
    jmp near @..local.l63            ; 0x19bd
jumptable_1b3c_case_1:
    lea ax, word [bp - 0x001c]       ; 0x19c0
    push ax                          ; 0x19c3
    mov ax, 0x2e                     ; 0x19c4
    push ax                          ; 0x19c7
    mov ax, 8                        ; 0x19c8
    push ax                          ; 0x19cb
    call loc_0429                    ; 0x19cc
    add sp, byte 6                   ; 0x19cf
    jmp near @..local.l63            ; 0x19d2
jumptable_1b3c_case_2:
    lea ax, word [bp - 0x0032]       ; 0x19d5
    push ax                          ; 0x19d8
    mov ax, 0x3a                     ; 0x19d9
    push ax                          ; 0x19dc
    mov ax, 8                        ; 0x19dd
    push ax                          ; 0x19e0
    call loc_0429                    ; 0x19e1
    add sp, byte 6                   ; 0x19e4
    jmp near @..local.l63            ; 0x19e7
jumptable_1b3c_case_3:
    mov ax, word [bp - 0x0010]       ; 0x19ea
    shl ax, 1                        ; 0x19ed
    mov bx, ax                       ; 0x19ef
    push word [bx + 0x160]           ; 0x19f1
    mov ax, 0x16                     ; 0x19f5
    push ax                          ; 0x19f8
    mov ax, 9                        ; 0x19f9
    push ax                          ; 0x19fc
    call loc_0429                    ; 0x19fd
    add sp, byte 6                   ; 0x1a00
    jmp near @..local.l63            ; 0x1a03
jumptable_1b3c_case_4:
    lea ax, word [bp - 0x003e]       ; 0x1a06
    push ax                          ; 0x1a09
    mov ax, 0x2e                     ; 0x1a0a
    push ax                          ; 0x1a0d
    mov ax, 9                        ; 0x1a0e
    push ax                          ; 0x1a11
    call loc_0429                    ; 0x1a12
    add sp, byte 6                   ; 0x1a15
    jmp near @..local.l63            ; 0x1a18
jumptable_1b3c_case_5:
    lea ax, word [bp - 0x0054]       ; 0x1a1b
    push ax                          ; 0x1a1e
    mov ax, 0x3a                     ; 0x1a1f
    push ax                          ; 0x1a22
    mov ax, 9                        ; 0x1a23
    push ax                          ; 0x1a26
    call loc_0429                    ; 0x1a27
    add sp, byte 6                   ; 0x1a2a
    jmp near @..local.l63            ; 0x1a2d
jumptable_1b3c_case_6:
    mov ax, word [bp - 0x01a0]       ; 0x1a30
    shl ax, 1                        ; 0x1a34
    mov bx, ax                       ; 0x1a36
    push word [bx + 0x154]           ; 0x1a38
    mov ax, 0x1b                     ; 0x1a3c
    push ax                          ; 0x1a3f
    mov ax, 0xb                      ; 0x1a40
    push ax                          ; 0x1a43
    call loc_0429                    ; 0x1a44
    add sp, byte 6                   ; 0x1a47
    jmp near @..local.l63            ; 0x1a4a
jumptable_1b3c_case_7:
    mov ax, word [bp - 0x01a2]       ; 0x1a4d
    shl ax, 1                        ; 0x1a51
    mov bx, ax                       ; 0x1a53
    push word [bx + 0x154]           ; 0x1a55
    mov ax, 0x29                     ; 0x1a59
    push ax                          ; 0x1a5c
    mov ax, 0xb                      ; 0x1a5d
    push ax                          ; 0x1a60
    call loc_0429                    ; 0x1a61
    add sp, byte 6                   ; 0x1a64
    jmp near @..local.l63            ; 0x1a67
jumptable_1b3c_case_8:
    lea ax, word [bp - 0x01b8]       ; 0x1a6a
    push ax                          ; 0x1a6e
    mov ax, 0x3a                     ; 0x1a6f
    push ax                          ; 0x1a72
    mov ax, 0xb                      ; 0x1a73
    push ax                          ; 0x1a76
    call loc_0429                    ; 0x1a77
    add sp, byte 6                   ; 0x1a7a
    jmp near @..local.l63            ; 0x1a7d
jumptable_1b3c_case_9:
    mov ax, word [bp - 0x0196]       ; 0x1a80
    shl ax, 1                        ; 0x1a84
    mov bx, ax                       ; 0x1a86
    push word [word bx + 0x2]        ; 0x1a88
    mov ax, 0x10                     ; 0x1a8c
    push ax                          ; 0x1a8f
    mov ax, 0xd                      ; 0x1a90
    push ax                          ; 0x1a93
    call loc_0429                    ; 0x1a94
    add sp, byte 6                   ; 0x1a97
    jmp near @..local.l63            ; 0x1a9a
jumptable_1b3c_case_10:
    push word [bp - 0x01ba]          ; 0x1a9d
    mov ax, 0x3e                     ; 0x1aa1
    push ax                          ; 0x1aa4
    mov ax, 0xf                      ; 0x1aa5
    push ax                          ; 0x1aa8
    call loc_03e1                    ; 0x1aa9
    add sp, byte 6                   ; 0x1aac
    jmp near @..local.l63            ; 0x1aaf
jumptable_1b3c_case_11:
    push word [bp - 0x01bc]          ; 0x1ab2
    mov ax, 0x3e                     ; 0x1ab6
    push ax                          ; 0x1ab9
    mov ax, 0x10                     ; 0x1aba
    push ax                          ; 0x1abd
    call loc_03e1                    ; 0x1abe
    add sp, byte 6                   ; 0x1ac1
    jmp near @..local.l63            ; 0x1ac4
jumptable_1b3c_case_12:
    mov ax, word [bp - 0x019a]       ; 0x1ac7
    shl ax, 1                        ; 0x1acb
    mov bx, ax                       ; 0x1acd
    push word [bx + 0x154]           ; 0x1acf
    mov ax, 0x1b                     ; 0x1ad3
    push ax                          ; 0x1ad6
    mov ax, 0x12                     ; 0x1ad7
    push ax                          ; 0x1ada
    call loc_0429                    ; 0x1adb
    add sp, byte 6                   ; 0x1ade
    jmp near @..local.l63            ; 0x1ae1
jumptable_1b3c_case_13:
    mov ax, word [bp - 0x0198]       ; 0x1ae4
    shl ax, 1                        ; 0x1ae8
    mov bx, ax                       ; 0x1aea
    push word [bx + 0xa4]            ; 0x1aec
    mov ax, 0x29                     ; 0x1af0
    push ax                          ; 0x1af3
    mov ax, 0x12                     ; 0x1af4
    push ax                          ; 0x1af7
    call loc_0429                    ; 0x1af8
    add sp, byte 6                   ; 0x1afb
    jmp short @..local.l63           ; 0x1afe
jumptable_1b3c_case_14:
    mov ax, 0x1e77                   ; 0x1b00
    push ax                          ; 0x1b03
    mov ax, 0x12                     ; 0x1b04
    push ax                          ; 0x1b07
    mov ax, 0x14                     ; 0x1b08
    push ax                          ; 0x1b0b
    call loc_0429                    ; 0x1b0c
    add sp, byte 6                   ; 0x1b0f
    jmp short @..local.l63           ; 0x1b12
jumptable_1b3c_case_15:
    mov ax, 0x1e84                   ; 0x1b14
    push ax                          ; 0x1b17
    mov ax, 0x21                     ; 0x1b18
    push ax                          ; 0x1b1b
    mov ax, 0x14                     ; 0x1b1c
    push ax                          ; 0x1b1f
    call loc_0429                    ; 0x1b20
    add sp, byte 6                   ; 0x1b23
    jmp short @..local.l63           ; 0x1b26
jumptable_1b3c_case_16:
    mov ax, 0x1e90                   ; 0x1b28
    push ax                          ; 0x1b2b
    mov ax, 0x30                     ; 0x1b2c
    push ax                          ; 0x1b2f
    mov ax, 0x14                     ; 0x1b30
    push ax                          ; 0x1b33
    call loc_0429                    ; 0x1b34
    add sp, byte 6                   ; 0x1b37
    jmp short @..local.l63           ; 0x1b3a
jumptable_1b3c:
    dw jumptable_1b3c_case_0 - IMAGE_BASE      ; 0x1b3c
    dw jumptable_1b3c_case_1 - IMAGE_BASE      ; 0x1b3e
    dw jumptable_1b3c_case_2 - IMAGE_BASE      ; 0x1b40
    dw jumptable_1b3c_case_3 - IMAGE_BASE      ; 0x1b42
    dw jumptable_1b3c_case_4 - IMAGE_BASE      ; 0x1b44
    dw jumptable_1b3c_case_5 - IMAGE_BASE      ; 0x1b46
    dw jumptable_1b3c_case_6 - IMAGE_BASE      ; 0x1b48
    dw jumptable_1b3c_case_7 - IMAGE_BASE      ; 0x1b4a
    dw jumptable_1b3c_case_8 - IMAGE_BASE      ; 0x1b4c
    dw jumptable_1b3c_case_9 - IMAGE_BASE      ; 0x1b4e
    dw jumptable_1b3c_case_10 - IMAGE_BASE     ; 0x1b50
    dw jumptable_1b3c_case_11 - IMAGE_BASE     ; 0x1b52
    dw jumptable_1b3c_case_12 - IMAGE_BASE     ; 0x1b54
    dw jumptable_1b3c_case_13 - IMAGE_BASE     ; 0x1b56
    dw jumptable_1b3c_case_14 - IMAGE_BASE     ; 0x1b58
    dw jumptable_1b3c_case_15 - IMAGE_BASE     ; 0x1b5a
    dw jumptable_1b3c_case_16 - IMAGE_BASE     ; 0x1b5c
@..local.l62:
    cmp ax, strict word 0x11         ; 0x1b5e
    jae short @..local.l63           ; 0x1b61
    xchg bx, ax                      ; 0x1b63
    shl bx, 1                        ; 0x1b64
    jmp [cs:bx + jumptable_1b3c - IMAGE_BASE] ; 0x1b66
@..local.l63:
    call dos_con_in_noecho           ; 0x1b6b
    push ax                          ; 0x1b6e
    call loc_06a6                    ; 0x1b6f
    pop cx                           ; 0x1b72
    mov word [bp - 0x0008], ax       ; 0x1b73
    jmp near @..local.l98            ; 0x1b76
loc_1b79:
    mov ax, word [bp - 0x019c]       ; 0x1b79
    mov word [bp - 0x019e], ax       ; 0x1b7d
    shl ax, 1                        ; 0x1b81
    mov bx, ax                       ; 0x1b83
    mov ax, word [bx + 0x1dd]        ; 0x1b85
    mov word [bp - 0x019c], ax       ; 0x1b89
    jmp near @..local.l99            ; 0x1b8d
loc_1b90:
    mov ax, word [bp - 0x019c]       ; 0x1b90
    mov word [bp - 0x019e], ax       ; 0x1b94
    shl ax, 1                        ; 0x1b98
    mov bx, ax                       ; 0x1b9a
    mov ax, word [bx + 0x221]        ; 0x1b9c
    mov word [bp - 0x019c], ax       ; 0x1ba0
    jmp near @..local.l99            ; 0x1ba4
loc_1ba7:
    mov ax, word [bp - 0x019c]       ; 0x1ba7
    mov word [bp - 0x019e], ax       ; 0x1bab
    shl ax, 1                        ; 0x1baf
    mov bx, ax                       ; 0x1bb1
    mov ax, word [bx + 0x1ff]        ; 0x1bb3
    mov word [bp - 0x019c], ax       ; 0x1bb7
    jmp near @..local.l99            ; 0x1bbb
loc_1bbe:
    mov ax, word [bp - 0x019c]       ; 0x1bbe
    mov word [bp - 0x019e], ax       ; 0x1bc2
    shl ax, 1                        ; 0x1bc6
    mov bx, ax                       ; 0x1bc8
    mov ax, word [bx + 0x243]        ; 0x1bca
    mov word [bp - 0x019c], ax       ; 0x1bce
    jmp near @..local.l99            ; 0x1bd2
loc_1bd5:
    mov word [bp - 0x019e], 0xffff   ; 0x1bd5
    mov ax, word [bp - 0x019c]       ; 0x1bdb
    jmp near @..local.l96            ; 0x1bdf
jumptable_1f81_case_0:
    mov ax, 0x1e9e                   ; 0x1be2
    push ax                          ; 0x1be5
    push word [bp - 0x000e]          ; 0x1be6
    mov ax, 8                        ; 0x1be9
    push ax                          ; 0x1bec
    call loc_0cd6                    ; 0x1bed
    add sp, byte 6                   ; 0x1bf0
    mov word [bp - 0x000e], ax       ; 0x1bf3
    jmp near @..local.l97            ; 0x1bf6
jumptable_1f81_case_1:
@..local.l64:
    mov ax, 2                        ; 0x1bf9
    push ax                          ; 0x1bfc
    lea ax, word [bp - 0x001c]       ; 0x1bfd
    push ax                          ; 0x1c00
    mov ax, 0x2e                     ; 0x1c01
    push ax                          ; 0x1c04
    mov ax, 8                        ; 0x1c05
    push ax                          ; 0x1c08
    call loc_05b6                    ; 0x1c09
    add sp, byte 8                   ; 0x1c0c
    cmp byte [bp - 0x001c], 0x41     ; 0x1c0f
    jl short @..local.l65            ; 0x1c13
    cmp byte [bp - 0x001c], 0x5a     ; 0x1c15
    jg short @..local.l65            ; 0x1c19
    cmp byte [bp - 0x001b], 0x3a     ; 0x1c1b
    je short @..local.l66            ; 0x1c1f
@..local.l65:
    mov ax, 1                        ; 0x1c21
    jmp short @..local.l67           ; 0x1c24
@..local.l66:
    mov ax, 0                        ; 0x1c26
@..local.l67:
    mov word [bp - 0x01c2], ax       ; 0x1c29
    cmp ax, strict word 1            ; 0x1c2d
    jne short @..local.l68           ; 0x1c30
    mov ax, 0x1ea4                   ; 0x1c32
    push ax                          ; 0x1c35
    call loc_0992                    ; 0x1c36
    pop cx                           ; 0x1c39
@..local.l68:
    cmp word [bp - 0x01c2], byte 1   ; 0x1c3a
    je short @..local.l64            ; 0x1c3f
    jmp near @..local.l97            ; 0x1c41
jumptable_1f81_case_2:
    mov ax, 0x1ecd                   ; 0x1c44
    push ax                          ; 0x1c47
    call loc_0992                    ; 0x1c48
    pop cx                           ; 0x1c4b
    jmp near @..local.l97            ; 0x1c4c
jumptable_1f81_case_3:
    mov ax, 0x1ef6                   ; 0x1c4f
    push ax                          ; 0x1c52
    push word [bp - 0x0010]          ; 0x1c53
    mov ax, 9                        ; 0x1c56
    push ax                          ; 0x1c59
    call loc_0cd6                    ; 0x1c5a
    add sp, byte 6                   ; 0x1c5d
    mov word [bp - 0x0010], ax       ; 0x1c60
    lea ax, word [bp - 0x0054]       ; 0x1c63
    push ax                          ; 0x1c66
    lea ax, word [bp - 0x003e]       ; 0x1c67
    push ax                          ; 0x1c6a
    push word [bp - 0x0010]          ; 0x1c6b
    call leaf_loc_10a4               ; 0x1c6e
    add sp, byte 6                   ; 0x1c71
    mov ax, 0x1efc                   ; 0x1c74
    push ax                          ; 0x1c77
    mov ax, 0x2e                     ; 0x1c78
    push ax                          ; 0x1c7b
    mov ax, 9                        ; 0x1c7c
    push ax                          ; 0x1c7f
    call loc_040f                    ; 0x1c80
    add sp, byte 6                   ; 0x1c83
    lea ax, word [bp - 0x003e]       ; 0x1c86
    push ax                          ; 0x1c89
    mov ax, 0x2e                     ; 0x1c8a
    push ax                          ; 0x1c8d
    mov ax, 9                        ; 0x1c8e
    push ax                          ; 0x1c91
    call loc_040f                    ; 0x1c92
    add sp, byte 6                   ; 0x1c95
    lea ax, word [bp - 0x0054]       ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0x3a                     ; 0x1c9c
    push ax                          ; 0x1c9f
    mov ax, 9                        ; 0x1ca0
    push ax                          ; 0x1ca3
    call loc_040f                    ; 0x1ca4
    add sp, byte 6                   ; 0x1ca7
    jmp near @..local.l97            ; 0x1caa
jumptable_1f81_case_4:
@..local.l69:
    mov ax, 2                        ; 0x1cad
    push ax                          ; 0x1cb0
    lea ax, word [bp - 0x003e]       ; 0x1cb1
    push ax                          ; 0x1cb4
    mov ax, 0x2e                     ; 0x1cb5
    push ax                          ; 0x1cb8
    mov ax, 9                        ; 0x1cb9
    push ax                          ; 0x1cbc
    call loc_05b6                    ; 0x1cbd
    add sp, byte 8                   ; 0x1cc0
    cmp byte [bp - 0x003e], 0x41     ; 0x1cc3
    jl short @..local.l70            ; 0x1cc7
    cmp byte [bp - 0x003e], 0x5a     ; 0x1cc9
    jg short @..local.l70            ; 0x1ccd
    cmp byte [bp - 0x003d], 0x3a     ; 0x1ccf
    je short @..local.l71            ; 0x1cd3
@..local.l70:
    mov ax, 1                        ; 0x1cd5
    jmp short @..local.l72           ; 0x1cd8
@..local.l71:
    mov ax, 0                        ; 0x1cda
@..local.l72:
    mov word [bp - 0x01c2], ax       ; 0x1cdd
    cmp ax, strict word 1            ; 0x1ce1
    jne short @..local.l73           ; 0x1ce4
    mov ax, 0x1f1e                   ; 0x1ce6
    push ax                          ; 0x1ce9
    call loc_0992                    ; 0x1cea
    pop cx                           ; 0x1ced
    jmp short @..local.l74           ; 0x1cee
@..local.l73:
    mov al, byte [bp - 0x003e]       ; 0x1cf0
    cmp al, byte [bp - 0x001c]       ; 0x1cf3
    jne short @..local.l74           ; 0x1cf6
    mov ax, 0x1f47                   ; 0x1cf8
    push ax                          ; 0x1cfb
    call loc_0992                    ; 0x1cfc
    pop cx                           ; 0x1cff
@..local.l74:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d00
    je short @..local.l69            ; 0x1d05
    jmp near @..local.l97            ; 0x1d07
jumptable_1f81_case_5:
@..local.l75:
    mov ax, 0x14                     ; 0x1d0a
    push ax                          ; 0x1d0d
    lea ax, word [bp - 0x0054]       ; 0x1d0e
    push ax                          ; 0x1d11
    mov ax, 0x3a                     ; 0x1d12
    push ax                          ; 0x1d15
    mov ax, 9                        ; 0x1d16
    push ax                          ; 0x1d19
    call loc_05b6                    ; 0x1d1a
    add sp, byte 8                   ; 0x1d1d
    cmp word [bp - 0x0010], byte 0   ; 0x1d20
    jne short @..local.l80           ; 0x1d24
    cmp byte [bp - 0x0054], 0x41     ; 0x1d26
    jl short @..local.l76            ; 0x1d2a
    cmp byte [bp - 0x0054], 0x5a     ; 0x1d2c
    jg short @..local.l76            ; 0x1d30
    cmp byte [bp - 0x0053], 0x3a     ; 0x1d32
    jne short @..local.l76           ; 0x1d36
    lea ax, word [bp - 0x0054]       ; 0x1d38
    push ax                          ; 0x1d3b
    call aztec_strlen                ; 0x1d3c
    pop cx                           ; 0x1d3f
    cmp ax, strict word 2            ; 0x1d40
    jle short @..local.l77           ; 0x1d43
@..local.l76:
    mov ax, 1                        ; 0x1d45
    jmp short @..local.l78           ; 0x1d48
@..local.l77:
    mov ax, 0                        ; 0x1d4a
@..local.l78:
    mov word [bp - 0x01c2], ax       ; 0x1d4d
    cmp ax, strict word 1            ; 0x1d51
    jne short @..local.l79           ; 0x1d54
    mov ax, 0x1f7c                   ; 0x1d56
    push ax                          ; 0x1d59
    call loc_0992                    ; 0x1d5a
    pop cx                           ; 0x1d5d
@..local.l79:
    jmp short @..local.l81           ; 0x1d5e
@..local.l80:
    mov word [bp - 0x01c2], 0        ; 0x1d60
@..local.l81:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d66
    je short @..local.l75            ; 0x1d6b
    jmp near @..local.l97            ; 0x1d6d
jumptable_1f81_case_6:
    push word [bp - 0x01a0]          ; 0x1d70
    mov ax, 0x1b                     ; 0x1d74
    push ax                          ; 0x1d77
    mov ax, 0xb                      ; 0x1d78
    push ax                          ; 0x1d7b
    call loc_0d3f                    ; 0x1d7c
    add sp, byte 6                   ; 0x1d7f
    mov word [bp - 0x01a0], ax       ; 0x1d82
    jmp near @..local.l97            ; 0x1d86
jumptable_1f81_case_7:
    push word [bp - 0x01a2]          ; 0x1d89
    mov ax, 0x29                     ; 0x1d8d
    push ax                          ; 0x1d90
    mov ax, 0xb                      ; 0x1d91
    push ax                          ; 0x1d94
    call loc_0d3f                    ; 0x1d95
    add sp, byte 6                   ; 0x1d98
    mov word [bp - 0x01a2], ax       ; 0x1d9b
    jmp near @..local.l97            ; 0x1d9f
jumptable_1f81_case_8:
@..local.l82:
    mov ax, 0x14                     ; 0x1da2
    push ax                          ; 0x1da5
    lea ax, word [bp - 0x01b8]       ; 0x1da6
    push ax                          ; 0x1daa
    mov ax, 0x3a                     ; 0x1dab
    push ax                          ; 0x1dae
    mov ax, 0xb                      ; 0x1daf
    push ax                          ; 0x1db2
    call loc_05b6                    ; 0x1db3
    add sp, byte 8                   ; 0x1db6
    lea ax, word [bp - 0x01b8]       ; 0x1db9
    push ax                          ; 0x1dbd
    call aztec_strlen                ; 0x1dbe
    pop cx                           ; 0x1dc1
    mov word [bp - 0x02d8], ax       ; 0x1dc2
    cmp ax, strict word 2            ; 0x1dc6
    jl short @..local.l83            ; 0x1dc9
    mov bx, ax                       ; 0x1dcb
    add bx, bp                       ; 0x1dcd
    cmp byte [bx - 0x01b9], 0x3a     ; 0x1dcf
    je short @..local.l84            ; 0x1dd4
@..local.l83:
    mov ax, 1                        ; 0x1dd6
    jmp short @..local.l85           ; 0x1dd9
@..local.l84:
    mov ax, 0                        ; 0x1ddb
@..local.l85:
    mov word [bp - 0x01c2], ax       ; 0x1dde
    cmp ax, strict word 1            ; 0x1de2
    jne short @..local.l86           ; 0x1de5
    mov ax, 0x1fa5                   ; 0x1de7
    push ax                          ; 0x1dea
    call loc_0992                    ; 0x1deb
    pop cx                           ; 0x1dee
@..local.l86:
    cmp word [bp - 0x01c2], byte 1   ; 0x1def
    je short @..local.l82            ; 0x1df4
    jmp near @..local.l97            ; 0x1df6
jumptable_1f81_case_9:
    push word [bp - 0x0196]          ; 0x1df9
    call loc_0c21                    ; 0x1dfd
    pop cx                           ; 0x1e00
    mov word [bp - 0x0196], ax       ; 0x1e01
    jmp near @..local.l97            ; 0x1e05
jumptable_1f81_case_10:
    mov ax, 0xff9d                   ; 0x1e08
    push ax                          ; 0x1e0b
    mov ax, 0x63                     ; 0x1e0c
    push ax                          ; 0x1e0f
    mov ax, 3                        ; 0x1e10
    push ax                          ; 0x1e13
    mov ax, 0x3e                     ; 0x1e14
    push ax                          ; 0x1e17
    mov ax, 0xf                      ; 0x1e18
    push ax                          ; 0x1e1b
    push word [bp - 0x01ba]          ; 0x1e1c
    call loc_0823                    ; 0x1e20
    add sp, byte 0x0c                ; 0x1e23
    mov word [bp - 0x01ba], ax       ; 0x1e26
    jmp near @..local.l97            ; 0x1e2a
jumptable_1f81_case_11:
    mov ax, 0xff9d                   ; 0x1e2d
    push ax                          ; 0x1e30
    mov ax, 0x63                     ; 0x1e31
    push ax                          ; 0x1e34
    mov ax, 3                        ; 0x1e35
    push ax                          ; 0x1e38
    mov ax, 0x3e                     ; 0x1e39
    push ax                          ; 0x1e3c
    mov ax, 0x10                     ; 0x1e3d
    push ax                          ; 0x1e40
    push word [bp - 0x01bc]          ; 0x1e41
    call loc_0823                    ; 0x1e45
    add sp, byte 0x0c                ; 0x1e48
    mov word [bp - 0x01bc], ax       ; 0x1e4b
    jmp near @..local.l97            ; 0x1e4f
jumptable_1f81_case_12:
    push word [bp - 0x019a]          ; 0x1e52
    mov ax, 0x1b                     ; 0x1e56
    push ax                          ; 0x1e59
    mov ax, 0x12                     ; 0x1e5a
    push ax                          ; 0x1e5d
    call loc_0d3f                    ; 0x1e5e
    add sp, byte 6                   ; 0x1e61
    mov word [bp - 0x019a], ax       ; 0x1e64
    jmp near @..local.l97            ; 0x1e68
jumptable_1f81_case_13:
    push word [bp - 0x0198]          ; 0x1e6b
    call loc_0d12                    ; 0x1e6f
    pop cx                           ; 0x1e72
    mov word [bp - 0x0198], ax       ; 0x1e73
    jmp near @..local.l97            ; 0x1e77
jumptable_1f81_case_14:
    mov al, byte [bp - 0x001c]       ; 0x1e7a
    cmp al, byte [bp - 0x003e]       ; 0x1e7d
    jne short @..local.l87           ; 0x1e80
    mov ax, 0x1fce                   ; 0x1e82
    push ax                          ; 0x1e85
    call loc_0992                    ; 0x1e86
    pop cx                           ; 0x1e89
    mov ax, 0x200a                   ; 0x1e8a
    push ax                          ; 0x1e8d
    call loc_0992                    ; 0x1e8e
    pop cx                           ; 0x1e91
    jmp near @..local.l95            ; 0x1e92
@..local.l87:
    mov ax, word [bp - 0x0010]       ; 0x1e95
    jmp short @..local.l92           ; 0x1e98
@..local.l88:
    mov ax, 0x204c                   ; 0x1e9a
    push ax                          ; 0x1e9d
    lea ax, word [bp - 0x0194]       ; 0x1e9e
    push ax                          ; 0x1ea2
    call aztec_strcpy                ; 0x1ea3
    add sp, byte 4                   ; 0x1ea6
    jmp short @..local.l93           ; 0x1ea9
@..local.l89:
    mov ax, 0x2062                   ; 0x1eab
    push ax                          ; 0x1eae
    lea ax, word [bp - 0x0194]       ; 0x1eaf
    push ax                          ; 0x1eb3
    call aztec_strcpy                ; 0x1eb4
    add sp, byte 4                   ; 0x1eb7
    jmp short @..local.l93           ; 0x1eba
@..local.l90:
    mov ax, 0x207b                   ; 0x1ebc
    push ax                          ; 0x1ebf
    lea ax, word [bp - 0x0194]       ; 0x1ec0
    push ax                          ; 0x1ec4
    call aztec_strcpy                ; 0x1ec5
    add sp, byte 4                   ; 0x1ec8
    jmp short @..local.l93           ; 0x1ecb
@..local.l91:
    mov ax, 0x208f                   ; 0x1ecd
    push ax                          ; 0x1ed0
    lea ax, word [bp - 0x0194]       ; 0x1ed1
    push ax                          ; 0x1ed5
    call aztec_strcpy                ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    jmp short @..local.l93           ; 0x1edc
@..local.l92:
    cmp ax, strict word 0            ; 0x1ede
    je short @..local.l88            ; 0x1ee1
    cmp ax, strict word 1            ; 0x1ee3
    je short @..local.l89            ; 0x1ee6
    cmp ax, strict word 2            ; 0x1ee8
    je short @..local.l90            ; 0x1eeb
    cmp ax, strict word 3            ; 0x1eed
    je short @..local.l91            ; 0x1ef0
@..local.l93:
    mov ax, 0x20a8                   ; 0x1ef2
    push ax                          ; 0x1ef5
    mov ax, 0x2648                   ; 0x1ef6
    push ax                          ; 0x1ef9
    call aztec_strcpy                ; 0x1efa
    add sp, byte 4                   ; 0x1efd
    cmp word [bp - 0x0010], byte 4   ; 0x1f00
    je short @..local.l94            ; 0x1f04
    mov ax, 0x20a9                   ; 0x1f06
    push ax                          ; 0x1f09
    lea ax, word [bp - 0x0144]       ; 0x1f0a
    push ax                          ; 0x1f0e
    call aztec_strcpy                ; 0x1f0f
    add sp, byte 4                   ; 0x1f12
    lea ax, word [bp - 0x0194]       ; 0x1f15
    push ax                          ; 0x1f19
    lea ax, word [bp - 0x0144]       ; 0x1f1a
    push ax                          ; 0x1f1e
    call string_loc_2aa6             ; 0x1f1f
    add sp, byte 4                   ; 0x1f22
    mov ax, 0x20c0                   ; 0x1f25
    push ax                          ; 0x1f28
    lea ax, word [bp - 0x0144]       ; 0x1f29
    push ax                          ; 0x1f2d
    call string_loc_2aa6             ; 0x1f2e
    add sp, byte 4                   ; 0x1f31
    lea ax, word [bp - 0x0144]       ; 0x1f34
    push ax                          ; 0x1f38
    call loc_0992                    ; 0x1f39
    pop cx                           ; 0x1f3c
    mov ax, 0x20d2                   ; 0x1f3d
    push ax                          ; 0x1f40
    call loc_0992                    ; 0x1f41
    pop cx                           ; 0x1f44
@..local.l94:
    mov word [bp - 0x01c6], 1        ; 0x1f45
    mov word [bp - 0x01c0], 1        ; 0x1f4b
    mov word [bp - 0x01ca], 1        ; 0x1f51
@..local.l95:
    jmp short @..local.l97           ; 0x1f57
jumptable_1f81_case_15:
    mov word [bp - 0x01c6], 1        ; 0x1f59
    mov word [bp - 0x01c0], 1        ; 0x1f5f
    mov word [bp - 0x01ca], 0        ; 0x1f65
    jmp short @..local.l97           ; 0x1f6b
jumptable_1f81_case_16:
    mov word [bp - 0x01c6], 0        ; 0x1f6d
    mov word [bp - 0x01c0], 1        ; 0x1f73
    mov word [bp - 0x01ca], 0        ; 0x1f79
    jmp short @..local.l97           ; 0x1f7f
jumptable_1f81:
    dw jumptable_1f81_case_0 - IMAGE_BASE      ; 0x1f81
    dw jumptable_1f81_case_1 - IMAGE_BASE      ; 0x1f83
    dw jumptable_1f81_case_2 - IMAGE_BASE      ; 0x1f85
    dw jumptable_1f81_case_3 - IMAGE_BASE      ; 0x1f87
    dw jumptable_1f81_case_4 - IMAGE_BASE      ; 0x1f89
    dw jumptable_1f81_case_5 - IMAGE_BASE      ; 0x1f8b
    dw jumptable_1f81_case_6 - IMAGE_BASE      ; 0x1f8d
    dw jumptable_1f81_case_7 - IMAGE_BASE      ; 0x1f8f
    dw jumptable_1f81_case_8 - IMAGE_BASE      ; 0x1f91
    dw jumptable_1f81_case_9 - IMAGE_BASE      ; 0x1f93
    dw jumptable_1f81_case_10 - IMAGE_BASE     ; 0x1f95
    dw jumptable_1f81_case_11 - IMAGE_BASE     ; 0x1f97
    dw jumptable_1f81_case_12 - IMAGE_BASE     ; 0x1f99
    dw jumptable_1f81_case_13 - IMAGE_BASE     ; 0x1f9b
    dw jumptable_1f81_case_14 - IMAGE_BASE     ; 0x1f9d
    dw jumptable_1f81_case_15 - IMAGE_BASE     ; 0x1f9f
    dw jumptable_1f81_case_16 - IMAGE_BASE     ; 0x1fa1
@..local.l96:
    cmp ax, strict word 0x11         ; 0x1fa3
    jae short @..local.l97           ; 0x1fa6
    xchg bx, ax                      ; 0x1fa8
    shl bx, 1                        ; 0x1fa9
    jmp [cs:bx + jumptable_1f81 - IMAGE_BASE] ; 0x1fab
@..local.l97:
    jmp short @..local.l99           ; 0x1fb0
jumptable_1fb2:
    dw loc_1b79 - IMAGE_BASE                   ; 0x1fb2
    dw loc_1b90 - IMAGE_BASE                   ; 0x1fb4
    dw loc_1ba7 - IMAGE_BASE                   ; 0x1fb6
    dw loc_1bbe - IMAGE_BASE                   ; 0x1fb8
    dw jumptable_1fb2_case_4 - IMAGE_BASE      ; 0x1fba
    dw loc_1bd5 - IMAGE_BASE                   ; 0x1fbc
@..local.l98:
    sub ax, strict word 8            ; 0x1fbe
    cmp ax, strict word 6            ; 0x1fc1
    jae short @..local.l99           ; 0x1fc4
    xchg bx, ax                      ; 0x1fc6
    shl bx, 1                        ; 0x1fc7
    jmp [cs:bx + jumptable_1fb2 - IMAGE_BASE] ; 0x1fc9
jumptable_1fb2_case_4:
@..local.l99:
    cmp word [bp - 0x01c0], byte 0   ; 0x1fce
    jne short @..local.l100          ; 0x1fd3
    jmp near @..local.l59            ; 0x1fd5
@..local.l100:
    cmp word [bp - 0x01c6], byte 0   ; 0x1fd8
    jne short @..local.l101          ; 0x1fdd
    jmp near @..local.l116           ; 0x1fdf
@..local.l101:
    mov ax, 0x2112                   ; 0x1fe2
    push ax                          ; 0x1fe5
    mov ax, 0x29f0                   ; 0x1fe6
    push ax                          ; 0x1fe9
    call aztec_strcpy                ; 0x1fea
    add sp, byte 4                   ; 0x1fed
    mov ax, 0x2113                   ; 0x1ff0
    push ax                          ; 0x1ff3
    mov ax, 0x2648                   ; 0x1ff4
    push ax                          ; 0x1ff7
    call aztec_strcpy                ; 0x1ff8
    add sp, byte 4                   ; 0x1ffb
    lea ax, word [bp - 0x001c]       ; 0x1ffe
    push ax                          ; 0x2001
    lea ax, word [bp - 0x00a4]       ; 0x2002
    push ax                          ; 0x2006
    call aztec_strcpy                ; 0x2007
    add sp, byte 4                   ; 0x200a
    mov ax, 0x2114                   ; 0x200d
    push ax                          ; 0x2010
    lea ax, word [bp - 0x00a4]       ; 0x2011
    push ax                          ; 0x2015
    call string_loc_2aa6             ; 0x2016
    add sp, byte 4                   ; 0x2019
    lea ax, word [bp - 0x003e]       ; 0x201c
    push ax                          ; 0x201f
    lea ax, word [bp - 0x00f4]       ; 0x2020
    push ax                          ; 0x2024
    call aztec_strcpy                ; 0x2025
    add sp, byte 4                   ; 0x2028
    mov ax, 0x2116                   ; 0x202b
    push ax                          ; 0x202e
    lea ax, word [bp - 0x00f4]       ; 0x202f
    push ax                          ; 0x2033
    call string_loc_2aa6             ; 0x2034
    add sp, byte 4                   ; 0x2037
    cmp word [bp - 0x01ca], byte 0   ; 0x203a
    jne short @..local.l102          ; 0x203f
    cmp word [bp - 0x0010], byte 4   ; 0x2041
    jne short @..local.l102          ; 0x2045
    lea ax, word [bp - 0x0054]       ; 0x2047
    push ax                          ; 0x204a
    lea ax, word [bp - 0x00f4]       ; 0x204b
    push ax                          ; 0x204f
    call string_loc_2aa6             ; 0x2050
    add sp, byte 4                   ; 0x2053
    lea ax, word [bp - 0x0054]       ; 0x2056
    push ax                          ; 0x2059
    call aztec_strlen                ; 0x205a
    pop cx                           ; 0x205d
    cmp ax, strict word 0            ; 0x205e
    jle short @..local.l102          ; 0x2061
    mov ax, 0x2118                   ; 0x2063
    push ax                          ; 0x2066
    lea ax, word [bp - 0x00f4]       ; 0x2067
    push ax                          ; 0x206b
    call string_loc_2aa6             ; 0x206c
    add sp, byte 4                   ; 0x206f
@..local.l102:
    cmp word [bp - 0x01ca], byte 1   ; 0x2072
    je short @..local.l103           ; 0x2077
    jmp near @..local.l111           ; 0x2079
@..local.l103:
    cmp word [bp - 0x0010], byte 4   ; 0x207c
    je short @..local.l104           ; 0x2080
    jmp near @..local.l111           ; 0x2082
@..local.l104:
    lea ax, word [bp - 0x0054]       ; 0x2085
    push ax                          ; 0x2088
    lea ax, word [bp - 0x00f4]       ; 0x2089
    push ax                          ; 0x208d
    call string_loc_2aa6             ; 0x208e
    add sp, byte 4                   ; 0x2091
    mov ax, 1                        ; 0x2094
    push ax                          ; 0x2097
    lea ax, word [bp - 0x00f4]       ; 0x2098
    push ax                          ; 0x209c
    lea ax, word [bp - 0x003e]       ; 0x209d
    push ax                          ; 0x20a0
    call loc_11ba                    ; 0x20a1
    add sp, byte 6                   ; 0x20a4
    lea ax, word [bp - 0x0054]       ; 0x20a7
    push ax                          ; 0x20aa
    call aztec_strlen                ; 0x20ab
    pop cx                           ; 0x20ae
    cmp ax, strict word 0            ; 0x20af
    jle short @..local.l105          ; 0x20b2
    mov ax, 0x211a                   ; 0x20b4
    push ax                          ; 0x20b7
    lea ax, word [bp - 0x00f4]       ; 0x20b8
    push ax                          ; 0x20bc
    call string_loc_2aa6             ; 0x20bd
    add sp, byte 4                   ; 0x20c0
@..local.l105:
    mov ax, 0x211c                   ; 0x20c3
    push ax                          ; 0x20c6
    mov ax, 1                        ; 0x20c7
    push ax                          ; 0x20ca
    lea ax, word [bp - 0x00a4]       ; 0x20cb
    push ax                          ; 0x20cf
    lea ax, word [bp - 0x001c]       ; 0x20d0
    push ax                          ; 0x20d3
    call loc_0dda                    ; 0x20d4
    add sp, byte 8                   ; 0x20d7
    mov ax, 0x2132                   ; 0x20da
    push ax                          ; 0x20dd
    mov ax, 0x2127                   ; 0x20de
    push ax                          ; 0x20e1
    lea ax, word [bp - 0x00f4]       ; 0x20e2
    push ax                          ; 0x20e6
    lea ax, word [bp - 0x00a4]       ; 0x20e7
    push ax                          ; 0x20eb
    call loc_0ed8                    ; 0x20ec
    add sp, byte 8                   ; 0x20ef
    cmp word [bp - 0x000e], byte 3   ; 0x20f2
    je short @..local.l106           ; 0x20f6
    jmp near @..local.l107           ; 0x20f8
@..local.l106:
    mov ax, 0x213e                   ; 0x20fb
    push ax                          ; 0x20fe
    mov ax, 0x2133                   ; 0x20ff
    push ax                          ; 0x2102
    lea ax, word [bp - 0x00f4]       ; 0x2103
    push ax                          ; 0x2107
    lea ax, word [bp - 0x00a4]       ; 0x2108
    push ax                          ; 0x210c
    call loc_0ed8                    ; 0x210d
    add sp, byte 8                   ; 0x2110
    mov ax, 0x214a                   ; 0x2113
    push ax                          ; 0x2116
    mov ax, 0x213f                   ; 0x2117
    push ax                          ; 0x211a
    lea ax, word [bp - 0x00f4]       ; 0x211b
    push ax                          ; 0x211f
    lea ax, word [bp - 0x00a4]       ; 0x2120
    push ax                          ; 0x2124
    call loc_0ed8                    ; 0x2125
    add sp, byte 8                   ; 0x2128
    mov ax, 0x2156                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, 0x214b                   ; 0x212f
    push ax                          ; 0x2132
    lea ax, word [bp - 0x00f4]       ; 0x2133
    push ax                          ; 0x2137
    lea ax, word [bp - 0x00a4]       ; 0x2138
    push ax                          ; 0x213c
    call loc_0ed8                    ; 0x213d
    add sp, byte 8                   ; 0x2140
    mov ax, 0x2157                   ; 0x2143
    push ax                          ; 0x2146
    mov ax, 2                        ; 0x2147
    push ax                          ; 0x214a
    lea ax, word [bp - 0x00a4]       ; 0x214b
    push ax                          ; 0x214f
    lea ax, word [bp - 0x001c]       ; 0x2150
    push ax                          ; 0x2153
    call loc_0dda                    ; 0x2154
    add sp, byte 8                   ; 0x2157
    mov ax, 0x216d                   ; 0x215a
    push ax                          ; 0x215d
    mov ax, 0x2162                   ; 0x215e
    push ax                          ; 0x2161
    lea ax, word [bp - 0x00f4]       ; 0x2162
    push ax                          ; 0x2166
    lea ax, word [bp - 0x00a4]       ; 0x2167
    push ax                          ; 0x216b
    call loc_0ed8                    ; 0x216c
    add sp, byte 8                   ; 0x216f
    mov ax, 0x2179                   ; 0x2172
    push ax                          ; 0x2175
    mov ax, 0x216e                   ; 0x2176
    push ax                          ; 0x2179
    lea ax, word [bp - 0x00f4]       ; 0x217a
    push ax                          ; 0x217e
    lea ax, word [bp - 0x00a4]       ; 0x217f
    push ax                          ; 0x2183
    call loc_0ed8                    ; 0x2184
    add sp, byte 8                   ; 0x2187
    mov ax, 0x2185                   ; 0x218a
    push ax                          ; 0x218d
    mov ax, 0x217a                   ; 0x218e
    push ax                          ; 0x2191
    lea ax, word [bp - 0x00f4]       ; 0x2192
    push ax                          ; 0x2196
    lea ax, word [bp - 0x00a4]       ; 0x2197
    push ax                          ; 0x219b
    call loc_0ed8                    ; 0x219c
    add sp, byte 8                   ; 0x219f
    mov ax, 0x2191                   ; 0x21a2
    push ax                          ; 0x21a5
    mov ax, 0x2186                   ; 0x21a6
    push ax                          ; 0x21a9
    lea ax, word [bp - 0x00f4]       ; 0x21aa
    push ax                          ; 0x21ae
    lea ax, word [bp - 0x00a4]       ; 0x21af
    push ax                          ; 0x21b3
    call loc_0ed8                    ; 0x21b4
    add sp, byte 8                   ; 0x21b7
@..local.l107:
    cmp word [bp - 0x000e], byte 2   ; 0x21ba
    je short @..local.l108           ; 0x21be
    jmp near @..local.l109           ; 0x21c0
@..local.l108:
    mov ax, 0x219d                   ; 0x21c3
    push ax                          ; 0x21c6
    mov ax, 0x2192                   ; 0x21c7
    push ax                          ; 0x21ca
    lea ax, word [bp - 0x00f4]       ; 0x21cb
    push ax                          ; 0x21cf
    lea ax, word [bp - 0x00a4]       ; 0x21d0
    push ax                          ; 0x21d4
    call loc_0ed8                    ; 0x21d5
    add sp, byte 8                   ; 0x21d8
    mov ax, 0x219e                   ; 0x21db
    push ax                          ; 0x21de
    mov ax, 2                        ; 0x21df
    push ax                          ; 0x21e2
    lea ax, word [bp - 0x00a4]       ; 0x21e3
    push ax                          ; 0x21e7
    lea ax, word [bp - 0x001c]       ; 0x21e8
    push ax                          ; 0x21eb
    call loc_0dda                    ; 0x21ec
    add sp, byte 8                   ; 0x21ef
    mov ax, 0x21b4                   ; 0x21f2
    push ax                          ; 0x21f5
    mov ax, 0x21a9                   ; 0x21f6
    push ax                          ; 0x21f9
    lea ax, word [bp - 0x00f4]       ; 0x21fa
    push ax                          ; 0x21fe
    lea ax, word [bp - 0x00a4]       ; 0x21ff
    push ax                          ; 0x2203
    call loc_0ed8                    ; 0x2204
    add sp, byte 8                   ; 0x2207
    mov ax, 0x21c0                   ; 0x220a
    push ax                          ; 0x220d
    mov ax, 0x21b5                   ; 0x220e
    push ax                          ; 0x2211
    lea ax, word [bp - 0x00f4]       ; 0x2212
    push ax                          ; 0x2216
    lea ax, word [bp - 0x00a4]       ; 0x2217
    push ax                          ; 0x221b
    call loc_0ed8                    ; 0x221c
    add sp, byte 8                   ; 0x221f
    mov ax, 0x21cc                   ; 0x2222
    push ax                          ; 0x2225
    mov ax, 0x21c1                   ; 0x2226
    push ax                          ; 0x2229
    lea ax, word [bp - 0x00f4]       ; 0x222a
    push ax                          ; 0x222e
    lea ax, word [bp - 0x00a4]       ; 0x222f
    push ax                          ; 0x2233
    call loc_0ed8                    ; 0x2234
    add sp, byte 8                   ; 0x2237
    mov ax, 0x21cd                   ; 0x223a
    push ax                          ; 0x223d
    mov ax, 3                        ; 0x223e
    push ax                          ; 0x2241
    lea ax, word [bp - 0x00a4]       ; 0x2242
    push ax                          ; 0x2246
    lea ax, word [bp - 0x001c]       ; 0x2247
    push ax                          ; 0x224a
    call loc_0dda                    ; 0x224b
    add sp, byte 8                   ; 0x224e
    mov ax, 0x21e3                   ; 0x2251
    push ax                          ; 0x2254
    mov ax, 0x21d8                   ; 0x2255
    push ax                          ; 0x2258
    lea ax, word [bp - 0x00f4]       ; 0x2259
    push ax                          ; 0x225d
    lea ax, word [bp - 0x00a4]       ; 0x225e
    push ax                          ; 0x2262
    call loc_0ed8                    ; 0x2263
    add sp, byte 8                   ; 0x2266
    mov ax, 0x21ef                   ; 0x2269
    push ax                          ; 0x226c
    mov ax, 0x21e4                   ; 0x226d
    push ax                          ; 0x2270
    lea ax, word [bp - 0x00f4]       ; 0x2271
    push ax                          ; 0x2275
    lea ax, word [bp - 0x00a4]       ; 0x2276
    push ax                          ; 0x227a
    call loc_0ed8                    ; 0x227b
    add sp, byte 8                   ; 0x227e
    mov ax, 0x21f0                   ; 0x2281
    push ax                          ; 0x2284
    mov ax, 4                        ; 0x2285
    push ax                          ; 0x2288
    lea ax, word [bp - 0x00a4]       ; 0x2289
    push ax                          ; 0x228d
    lea ax, word [bp - 0x001c]       ; 0x228e
    push ax                          ; 0x2291
    call loc_0dda                    ; 0x2292
    add sp, byte 8                   ; 0x2295
    mov ax, 0x2206                   ; 0x2298
    push ax                          ; 0x229b
    mov ax, 0x21fb                   ; 0x229c
    push ax                          ; 0x229f
    lea ax, word [bp - 0x00f4]       ; 0x22a0
    push ax                          ; 0x22a4
    lea ax, word [bp - 0x00a4]       ; 0x22a5
    push ax                          ; 0x22a9
    call loc_0ed8                    ; 0x22aa
    add sp, byte 8                   ; 0x22ad
@..local.l109:
    cmp word [bp - 0x000e], byte 1   ; 0x22b0
    je short @..local.l110           ; 0x22b4
    jmp near @..local.l111           ; 0x22b6
@..local.l110:
    mov ax, 0x2212                   ; 0x22b9
    push ax                          ; 0x22bc
    mov ax, 0x2207                   ; 0x22bd
    push ax                          ; 0x22c0
    lea ax, word [bp - 0x00f4]       ; 0x22c1
    push ax                          ; 0x22c5
    lea ax, word [bp - 0x00a4]       ; 0x22c6
    push ax                          ; 0x22ca
    call loc_0ed8                    ; 0x22cb
    add sp, byte 8                   ; 0x22ce
    mov ax, 0x221e                   ; 0x22d1
    push ax                          ; 0x22d4
    mov ax, 0x2213                   ; 0x22d5
    push ax                          ; 0x22d8
    lea ax, word [bp - 0x00f4]       ; 0x22d9
    push ax                          ; 0x22dd
    lea ax, word [bp - 0x00a4]       ; 0x22de
    push ax                          ; 0x22e2
    call loc_0ed8                    ; 0x22e3
    add sp, byte 8                   ; 0x22e6
    mov ax, 0x221f                   ; 0x22e9
    push ax                          ; 0x22ec
    mov ax, 2                        ; 0x22ed
    push ax                          ; 0x22f0
    lea ax, word [bp - 0x00a4]       ; 0x22f1
    push ax                          ; 0x22f5
    lea ax, word [bp - 0x001c]       ; 0x22f6
    push ax                          ; 0x22f9
    call loc_0dda                    ; 0x22fa
    add sp, byte 8                   ; 0x22fd
    mov ax, 0x2235                   ; 0x2300
    push ax                          ; 0x2303
    mov ax, 0x222a                   ; 0x2304
    push ax                          ; 0x2307
    lea ax, word [bp - 0x00f4]       ; 0x2308
    push ax                          ; 0x230c
    lea ax, word [bp - 0x00a4]       ; 0x230d
    push ax                          ; 0x2311
    call loc_0ed8                    ; 0x2312
    add sp, byte 8                   ; 0x2315
    mov ax, 0x2241                   ; 0x2318
    push ax                          ; 0x231b
    mov ax, 0x2236                   ; 0x231c
    push ax                          ; 0x231f
    lea ax, word [bp - 0x00f4]       ; 0x2320
    push ax                          ; 0x2324
    lea ax, word [bp - 0x00a4]       ; 0x2325
    push ax                          ; 0x2329
    call loc_0ed8                    ; 0x232a
    add sp, byte 8                   ; 0x232d
    mov ax, 0x224d                   ; 0x2330
    push ax                          ; 0x2333
    mov ax, 0x2242                   ; 0x2334
    push ax                          ; 0x2337
    lea ax, word [bp - 0x00f4]       ; 0x2338
    push ax                          ; 0x233c
    lea ax, word [bp - 0x00a4]       ; 0x233d
    push ax                          ; 0x2341
    call loc_0ed8                    ; 0x2342
    add sp, byte 8                   ; 0x2345
    mov ax, 0x2259                   ; 0x2348
    push ax                          ; 0x234b
    mov ax, 0x224e                   ; 0x234c
    push ax                          ; 0x234f
    lea ax, word [bp - 0x00f4]       ; 0x2350
    push ax                          ; 0x2354
    lea ax, word [bp - 0x00a4]       ; 0x2355
    push ax                          ; 0x2359
    call loc_0ed8                    ; 0x235a
    add sp, byte 8                   ; 0x235d
    mov ax, 0x225a                   ; 0x2360
    push ax                          ; 0x2363
    mov ax, 3                        ; 0x2364
    push ax                          ; 0x2367
    lea ax, word [bp - 0x00a4]       ; 0x2368
    push ax                          ; 0x236c
    lea ax, word [bp - 0x001c]       ; 0x236d
    push ax                          ; 0x2370
    call loc_0dda                    ; 0x2371
    add sp, byte 8                   ; 0x2374
    mov ax, 0x2270                   ; 0x2377
    push ax                          ; 0x237a
    mov ax, 0x2265                   ; 0x237b
    push ax                          ; 0x237e
    lea ax, word [bp - 0x00f4]       ; 0x237f
    push ax                          ; 0x2383
    lea ax, word [bp - 0x00a4]       ; 0x2384
    push ax                          ; 0x2388
    call loc_0ed8                    ; 0x2389
    add sp, byte 8                   ; 0x238c
@..local.l111:
    mov ax, word [bp - 0x0010]       ; 0x238f
    jmp short @..local.l112          ; 0x2392
loc_2394:
    mov word [bp - 0x022c], 5        ; 0x2394
    jmp short @..local.l113          ; 0x239a
loc_239c:
    mov word [bp - 0x022c], 2        ; 0x239c
    jmp short @..local.l113          ; 0x23a2
loc_23a4:
    mov word [bp - 0x022c], 4        ; 0x23a4
    jmp short @..local.l113          ; 0x23aa
loc_23ac:
    mov word [bp - 0x022c], 2        ; 0x23ac
    jmp short @..local.l113          ; 0x23b2
loc_23b4:
    mov word [bp - 0x022c], 1        ; 0x23b4
    jmp short @..local.l113          ; 0x23ba
jumptable_23bc:
    dw loc_2394 - IMAGE_BASE                   ; 0x23bc
    dw loc_239c - IMAGE_BASE                   ; 0x23be
    dw loc_23a4 - IMAGE_BASE                   ; 0x23c0
    dw loc_23ac - IMAGE_BASE                   ; 0x23c2
    dw loc_23b4 - IMAGE_BASE                   ; 0x23c4
@..local.l112:
    cmp ax, strict word 5            ; 0x23c6
    jae short @..local.l113          ; 0x23c9
    xchg bx, ax                      ; 0x23cb
    shl bx, 1                        ; 0x23cc
    jmp [cs:bx + jumptable_23bc - IMAGE_BASE] ; 0x23ce
@..local.l113:
    cmp word [bp - 0x0010], byte 4   ; 0x23d3
    je short @..local.l114           ; 0x23d7
    mov ax, 0x2271                   ; 0x23d9
    push ax                          ; 0x23dc
    mov ax, 0xffff                   ; 0x23dd
    push ax                          ; 0x23e0
    lea ax, word [bp - 0x00f4]       ; 0x23e1
    push ax                          ; 0x23e5
    lea ax, word [bp - 0x003e]       ; 0x23e6
    push ax                          ; 0x23e9
    call loc_0dda                    ; 0x23ea
    add sp, byte 8                   ; 0x23ed
@..local.l114:
    push word [bp - 0x01c8]          ; 0x23f0
    push word [bp - 0x01bc]          ; 0x23f4
    push word [bp - 0x01ba]          ; 0x23f8
    lea ax, word [bp - 0x01b8]       ; 0x23fc
    push ax                          ; 0x2400
    push word [bp - 0x01a2]          ; 0x2401
    push word [bp - 0x01a0]          ; 0x2405
    push word [bp - 0x019a]          ; 0x2409
    push word [bp - 0x0198]          ; 0x240d
    push word [bp - 0x0196]          ; 0x2411
    push word [bp - 0x022c]          ; 0x2415
    lea ax, word [bp - 0x0054]       ; 0x2419
    push ax                          ; 0x241c
    lea ax, word [bp - 0x00f4]       ; 0x241d
    push ax                          ; 0x2421
    lea ax, word [bp - 0x003e]       ; 0x2422
    push ax                          ; 0x2425
    call aztec_scan                  ; 0x2426
    add sp, byte 0x1a                ; 0x2429
    test ax, ax                      ; 0x242c
    je short @..local.l115           ; 0x242e
    mov ax, 0x227e                   ; 0x2430
    push ax                          ; 0x2433
    call loc_0992                    ; 0x2434
    pop cx                           ; 0x2437
    jmp short @..local.l116          ; 0x2438
@..local.l115:
    mov ax, 0x22af                   ; 0x243a
    push ax                          ; 0x243d
    call loc_0992                    ; 0x243e
    pop cx                           ; 0x2441
    mov ax, 0x22e3                   ; 0x2442
    push ax                          ; 0x2445
    call loc_0992                    ; 0x2446
    pop cx                           ; 0x2449
@..local.l116:
    mov ax, 3                        ; 0x244a
    push ax                          ; 0x244d
    call loc_06f1                    ; 0x244e
    pop cx                           ; 0x2451
    mov ax, 0                        ; 0x2452
    push ax                          ; 0x2455
    call loc_380b                    ; 0x2456
    pop cx                           ; 0x2459
    mov sp, bp                       ; 0x245a
    pop bp                           ; 0x245c
    ret                              ; 0x245d
loc_245e:
    push bp                          ; 0x245e
    mov bp, sp                       ; 0x245f
    sub sp, byte 4                   ; 0x2461
    push ds                          ; 0x2464
    push es                          ; 0x2465
    push si                          ; 0x2466
    push di                          ; 0x2467
    call bios_video_loc_247a         ; 0x2468
    call bios_mouse_loc_2501         ; 0x246b
    mov ax, word [bp - 0x0002]       ; 0x246e
    pop di                           ; 0x2471
    pop si                           ; 0x2472
    pop es                           ; 0x2473
    pop ds                           ; 0x2474
    mov sp, bp                       ; 0x2475
    pop bp                           ; 0x2477
    ret                              ; 0x2478
cseg_2479:
    db 0x00
