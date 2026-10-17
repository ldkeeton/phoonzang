; auto-generated
loc_JGSH:
    push bp                          ; 0x12b5
    mov bp, sp                       ; 0x12b6
    add sp, strict word 0xfd28       ; 0x12b8
    call loc_VRLL                    ; 0x12bc
    mov word [bp - 0x01c8], 0x78     ; 0x12bf
    call loc_MSKU                    ; 0x12c5
    mov ax, 0x1732                   ; 0x12c8
    push ax                          ; 0x12cb
    mov ax, 0xe                      ; 0x12cc
    push ax                          ; 0x12cf
    mov ax, 0                        ; 0x12d0
    push ax                          ; 0x12d3
    call loc_STSN_040f               ; 0x12d4
    add sp, byte 6                   ; 0x12d7
    mov ax, 0x1767                   ; 0x12da
    push ax                          ; 0x12dd
    mov ax, 0xe                      ; 0x12de
    push ax                          ; 0x12e1
    mov ax, 1                        ; 0x12e2
    push ax                          ; 0x12e5
    call loc_STSN_040f               ; 0x12e6
    add sp, byte 6                   ; 0x12e9
    mov ax, 0x179c                   ; 0x12ec
    push ax                          ; 0x12ef
    mov ax, 0xe                      ; 0x12f0
    push ax                          ; 0x12f3
    mov ax, 2                        ; 0x12f4
    push ax                          ; 0x12f7
    call loc_STSN_040f               ; 0x12f8
    add sp, byte 6                   ; 0x12fb
    mov ax, 0x17d1                   ; 0x12fe
    push ax                          ; 0x1301
    mov ax, 0xe                      ; 0x1302
    push ax                          ; 0x1305
    mov ax, 3                        ; 0x1306
    push ax                          ; 0x1309
    call loc_STSN_040f               ; 0x130a
    add sp, byte 6                   ; 0x130d
    mov ax, 0x1806                   ; 0x1310
    push ax                          ; 0x1313
    mov ax, 0xe                      ; 0x1314
    push ax                          ; 0x1317
    mov ax, 4                        ; 0x1318
    push ax                          ; 0x131b
    call loc_STSN_040f               ; 0x131c
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
    call loc_JTRN_03b3               ; 0x1335
    add sp, byte 6                   ; 0x1338
    mov ax, 0x183b                   ; 0x133b
    push ax                          ; 0x133e
    call bios_video_loc_QTQU         ; 0x133f
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
    jne short @..loc_JGSH.l1         ; 0x1367
    mov al, byte [bp - 0x02d6]       ; 0x1369
    mov byte [bp - 0x02d5], al       ; 0x136d
    mov byte [bp - 0x02d6], 0x30     ; 0x1371
    mov byte [bp - 0x02d4], 0        ; 0x1376
@..loc_JGSH.l1:
    lea ax, word [bp - 0x02d6]       ; 0x137b
    push ax                          ; 0x137f
    call bios_video_loc_QTQU         ; 0x1380
    pop cx                           ; 0x1383
    mov ax, 0x183d                   ; 0x1384
    push ax                          ; 0x1387
    mov ax, 5                        ; 0x1388
    push ax                          ; 0x138b
    mov ax, 7                        ; 0x138c
    push ax                          ; 0x138f
    call loc_STSN_040f               ; 0x1390
    add sp, byte 6                   ; 0x1393
    mov ax, 0x1882                   ; 0x1396
    push ax                          ; 0x1399
    mov ax, 5                        ; 0x139a
    push ax                          ; 0x139d
    mov ax, 8                        ; 0x139e
    push ax                          ; 0x13a1
    call loc_STSN_040f               ; 0x13a2
    add sp, byte 6                   ; 0x13a5
    mov ax, 0x18b2                   ; 0x13a8
    push ax                          ; 0x13ab
    mov ax, 5                        ; 0x13ac
    push ax                          ; 0x13af
    mov ax, 0xa                      ; 0x13b0
    push ax                          ; 0x13b3
    call loc_STSN_040f               ; 0x13b4
    add sp, byte 6                   ; 0x13b7
    mov ax, 0x18f6                   ; 0x13ba
    push ax                          ; 0x13bd
    mov ax, 5                        ; 0x13be
    push ax                          ; 0x13c1
    mov ax, 0xb                      ; 0x13c2
    push ax                          ; 0x13c5
    call loc_STSN_040f               ; 0x13c6
    add sp, byte 6                   ; 0x13c9
    mov ax, 0x1911                   ; 0x13cc
    push ax                          ; 0x13cf
    mov ax, 5                        ; 0x13d0
    push ax                          ; 0x13d3
    mov ax, 0xd                      ; 0x13d4
    push ax                          ; 0x13d7
    call loc_STSN_040f               ; 0x13d8
    add sp, byte 6                   ; 0x13db
    mov ax, 0x1957                   ; 0x13de
    push ax                          ; 0x13e1
    mov ax, 5                        ; 0x13e2
    push ax                          ; 0x13e5
    mov ax, 0xe                      ; 0x13e6
    push ax                          ; 0x13e9
    call loc_STSN_040f               ; 0x13ea
    add sp, byte 6                   ; 0x13ed
    mov ax, 0x199e                   ; 0x13f0
    push ax                          ; 0x13f3
    mov ax, 5                        ; 0x13f4
    push ax                          ; 0x13f7
    mov ax, 0xf                      ; 0x13f8
    push ax                          ; 0x13fb
    call loc_STSN_040f               ; 0x13fc
    add sp, byte 6                   ; 0x13ff
    mov ax, 0x19e4                   ; 0x1402
    push ax                          ; 0x1405
    mov ax, 5                        ; 0x1406
    push ax                          ; 0x1409
    mov ax, 0x10                     ; 0x140a
    push ax                          ; 0x140d
    call loc_STSN_040f               ; 0x140e
    add sp, byte 6                   ; 0x1411
    mov ax, 0x1a2b                   ; 0x1414
    push ax                          ; 0x1417
    mov ax, 5                        ; 0x1418
    push ax                          ; 0x141b
    mov ax, 0x11                     ; 0x141c
    push ax                          ; 0x141f
    call loc_STSN_040f               ; 0x1420
    add sp, byte 6                   ; 0x1423
    mov ax, 0x1a72                   ; 0x1426
    push ax                          ; 0x1429
    mov ax, 5                        ; 0x142a
    push ax                          ; 0x142d
    mov ax, 0x12                     ; 0x142e
    push ax                          ; 0x1431
    call loc_STSN_040f               ; 0x1432
    add sp, byte 6                   ; 0x1435
    mov ax, 0x1a91                   ; 0x1438
    push ax                          ; 0x143b
    mov ax, 0x2648                   ; 0x143c
    push ax                          ; 0x143f
    call aztec_strcpy                ; 0x1440
    add sp, byte 4                   ; 0x1443
    mov ax, 0x1a92                   ; 0x1446
    push ax                          ; 0x1449
    call loc_NNGU                    ; 0x144a
    pop cx                           ; 0x144d
    call loc_MSKU                    ; 0x144e
    mov ax, 0x1ac1                   ; 0x1451
    push ax                          ; 0x1454
    mov ax, 0xe                      ; 0x1455
    push ax                          ; 0x1458
    mov ax, 0                        ; 0x1459
    push ax                          ; 0x145c
    call loc_STSN_040f               ; 0x145d
    add sp, byte 6                   ; 0x1460
    mov ax, 0x1af6                   ; 0x1463
    push ax                          ; 0x1466
    mov ax, 0xe                      ; 0x1467
    push ax                          ; 0x146a
    mov ax, 1                        ; 0x146b
    push ax                          ; 0x146e
    call loc_STSN_040f               ; 0x146f
    add sp, byte 6                   ; 0x1472
    mov ax, 0x1b2b                   ; 0x1475
    push ax                          ; 0x1478
    mov ax, 0xe                      ; 0x1479
    push ax                          ; 0x147c
    mov ax, 2                        ; 0x147d
    push ax                          ; 0x1480
    call loc_STSN_040f               ; 0x1481
    add sp, byte 6                   ; 0x1484
    mov ax, 0x1b60                   ; 0x1487
    push ax                          ; 0x148a
    mov ax, 0xe                      ; 0x148b
    push ax                          ; 0x148e
    mov ax, 3                        ; 0x148f
    push ax                          ; 0x1492
    call loc_STSN_040f               ; 0x1493
    add sp, byte 6                   ; 0x1496
    mov ax, 0x1b95                   ; 0x1499
    push ax                          ; 0x149c
    mov ax, 0xe                      ; 0x149d
    push ax                          ; 0x14a0
    mov ax, 4                        ; 0x14a1
    push ax                          ; 0x14a4
    call loc_STSN_040f               ; 0x14a5
    add sp, byte 6                   ; 0x14a8
    call loc_UMUK                    ; 0x14ab
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
    je short @..loc_JGSH.l2          ; 0x14f0
    mov word [bss_29e6], 1           ; 0x14f2
@..loc_JGSH.l2:
    test ax, 2                       ; 0x14f8
    je short @..loc_JGSH.l3          ; 0x14fb
    mov word [bss_29e8], 1           ; 0x14fd
@..loc_JGSH.l3:
    test ax, 0x1000                  ; 0x1503
    je short @..loc_JGSH.l4          ; 0x1506
    mov word [bss_2afa], 1           ; 0x1508
@..loc_JGSH.l4:
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
    call leaf_loc_UUSR               ; 0x153f
    add sp, byte 6                   ; 0x1542
    mov ax, 0x1bce                   ; 0x1545
    push ax                          ; 0x1548
    mov ax, 2                        ; 0x1549
    push ax                          ; 0x154c
    mov ax, 6                        ; 0x154d
    push ax                          ; 0x1550
    call loc_STSN_040f               ; 0x1551
    add sp, byte 6                   ; 0x1554
    mov ax, 0x1c1b                   ; 0x1557
    push ax                          ; 0x155a
    mov ax, 2                        ; 0x155b
    push ax                          ; 0x155e
    mov ax, 7                        ; 0x155f
    push ax                          ; 0x1562
    call loc_STSN_040f               ; 0x1563
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
    call loc_STSN_040f               ; 0x15c0
    add sp, byte 6                   ; 0x15c3
    mov ax, word [bp - 0x01a0]       ; 0x15c6
    shl ax, 1                        ; 0x15ca
    mov bx, ax                       ; 0x15cc
    push word [bx + 0x154]           ; 0x15ce
    mov ax, 0x1b                     ; 0x15d2
    push ax                          ; 0x15d5
    mov ax, 0xb                      ; 0x15d6
    push ax                          ; 0x15d9
    call loc_STSN_040f               ; 0x15da
    add sp, byte 6                   ; 0x15dd
    mov ax, word [bp - 0x01a2]       ; 0x15e0
    shl ax, 1                        ; 0x15e4
    mov bx, ax                       ; 0x15e6
    push word [bx + 0x154]           ; 0x15e8
    mov ax, 0x29                     ; 0x15ec
    push ax                          ; 0x15ef
    mov ax, 0xb                      ; 0x15f0
    push ax                          ; 0x15f3
    call loc_STSN_040f               ; 0x15f4
    add sp, byte 6                   ; 0x15f7
    lea ax, word [bp - 0x01b8]       ; 0x15fa
    push ax                          ; 0x15fe
    mov ax, 0x3a                     ; 0x15ff
    push ax                          ; 0x1602
    mov ax, 0xb                      ; 0x1603
    push ax                          ; 0x1606
    call loc_STSN_040f               ; 0x1607
    add sp, byte 6                   ; 0x160a
    mov ax, 0x1cc7                   ; 0x160d
    push ax                          ; 0x1610
    mov ax, 2                        ; 0x1611
    push ax                          ; 0x1614
    mov ax, 0xd                      ; 0x1615
    push ax                          ; 0x1618
    call loc_STSN_040f               ; 0x1619
    add sp, byte 6                   ; 0x161c
    mov ax, 0x1d0a                   ; 0x161f
    push ax                          ; 0x1622
    mov ax, 2                        ; 0x1623
    push ax                          ; 0x1626
    mov ax, 0xe                      ; 0x1627
    push ax                          ; 0x162a
    call loc_STSN_040f               ; 0x162b
    add sp, byte 6                   ; 0x162e
    mov word [bp - 0x0196], 0        ; 0x1631
    mov word [bp - 0x01be], 0xf      ; 0x1637
    cmp word [bss_29e6], byte 0      ; 0x163d
    je short @..loc_JGSH.l5          ; 0x1642
    mov word [bp - 0x0196], 1        ; 0x1644
    push word [dseg_0004]            ; 0x164a
    mov ax, 0xa                      ; 0x164e
    push ax                          ; 0x1651
    push word [bp - 0x01be]          ; 0x1652
    call loc_STSN_040f               ; 0x1656
    add sp, byte 6                   ; 0x1659
    inc word [bp - 0x01be]           ; 0x165c
@..loc_JGSH.l5:
    cmp word [bss_29e8], byte 0      ; 0x1660
    je short @..loc_JGSH.l7          ; 0x1665
    cmp word [bp - 0x0196], byte 0   ; 0x1667
    jne short @..loc_JGSH.l6         ; 0x166c
    mov word [bp - 0x0196], 2        ; 0x166e
@..loc_JGSH.l6:
    push word [dseg_0006]            ; 0x1674
    mov ax, 0xa                      ; 0x1678
    push ax                          ; 0x167b
    push word [bp - 0x01be]          ; 0x167c
    call loc_STSN_040f               ; 0x1680
    add sp, byte 6                   ; 0x1683
    inc word [bp - 0x01be]           ; 0x1686
@..loc_JGSH.l7:
    mov ax, word [bp - 0x0196]       ; 0x168a
    shl ax, 1                        ; 0x168e
    mov bx, ax                       ; 0x1690
    push word [word bx + 0x2]        ; 0x1692
    mov ax, 0x10                     ; 0x1696
    push ax                          ; 0x1699
    mov ax, 0xd                      ; 0x169a
    push ax                          ; 0x169d
    call loc_STSN_040f               ; 0x169e
    add sp, byte 6                   ; 0x16a1
    mov word [bp - 0x01ba], 0        ; 0x16a4
    mov word [bp - 0x01bc], 0        ; 0x16aa
    mov ax, 0x1d4d                   ; 0x16b0
    push ax                          ; 0x16b3
    mov ax, 0x34                     ; 0x16b4
    push ax                          ; 0x16b7
    mov ax, 0xf                      ; 0x16b8
    push ax                          ; 0x16bb
    call loc_STSN_040f               ; 0x16bc
    add sp, byte 6                   ; 0x16bf
    push word [bp - 0x01ba]          ; 0x16c2
    mov ax, 0x3e                     ; 0x16c6
    push ax                          ; 0x16c9
    mov ax, 0xf                      ; 0x16ca
    push ax                          ; 0x16cd
    call loc_JTRN_03b3               ; 0x16ce
    add sp, byte 6                   ; 0x16d1
    mov ax, 0x1d58                   ; 0x16d4
    push ax                          ; 0x16d7
    mov ax, 0x34                     ; 0x16d8
    push ax                          ; 0x16db
    mov ax, 0x10                     ; 0x16dc
    push ax                          ; 0x16df
    call loc_STSN_040f               ; 0x16e0
    add sp, byte 6                   ; 0x16e3
    push word [bp - 0x01bc]          ; 0x16e6
    mov ax, 0x3e                     ; 0x16ea
    push ax                          ; 0x16ed
    mov ax, 0x10                     ; 0x16ee
    push ax                          ; 0x16f1
    call loc_JTRN_03b3               ; 0x16f2
    add sp, byte 6                   ; 0x16f5
    mov ax, word [bss_2afa]          ; 0x16f8
    mov word [bp - 0x019a], ax       ; 0x16fb
    mov ax, 0x1d63                   ; 0x16ff
    push ax                          ; 0x1702
    mov ax, 0x14                     ; 0x1703
    push ax                          ; 0x1706
    mov ax, 0x12                     ; 0x1707
    push ax                          ; 0x170a
    call loc_STSN_040f               ; 0x170b
    add sp, byte 6                   ; 0x170e
    mov ax, word [bp - 0x019a]       ; 0x1711
    shl ax, 1                        ; 0x1715
    mov bx, ax                       ; 0x1717
    push word [bx + 0x154]           ; 0x1719
    mov ax, 0x1b                     ; 0x171d
    push ax                          ; 0x1720
    mov ax, 0x12                     ; 0x1721
    push ax                          ; 0x1724
    call loc_STSN_040f               ; 0x1725
    add sp, byte 6                   ; 0x1728
    mov word [bp - 0x0198], 0        ; 0x172b
    mov ax, 0x1d6b                   ; 0x1731
    push ax                          ; 0x1734
    mov ax, 0x22                     ; 0x1735
    push ax                          ; 0x1738
    mov ax, 0x12                     ; 0x1739
    push ax                          ; 0x173c
    call loc_STSN_040f               ; 0x173d
    add sp, byte 6                   ; 0x1740
    mov ax, word [bp - 0x0198]       ; 0x1743
    shl ax, 1                        ; 0x1747
    mov bx, ax                       ; 0x1749
    push word [bx + 0xa4]            ; 0x174b
    mov ax, 0x29                     ; 0x174f
    push ax                          ; 0x1752
    mov ax, 0x12                     ; 0x1753
    push ax                          ; 0x1756
    call loc_STSN_040f               ; 0x1757
    add sp, byte 6                   ; 0x175a
    mov ax, 0x1d73                   ; 0x175d
    push ax                          ; 0x1760
    mov ax, 0x12                     ; 0x1761
    push ax                          ; 0x1764
    mov ax, 0x14                     ; 0x1765
    push ax                          ; 0x1768
    call loc_STSN_040f               ; 0x1769
    add sp, byte 6                   ; 0x176c
    mov ax, 0x1d9f                   ; 0x176f
    push ax                          ; 0x1772
    mov ax, 0x14                     ; 0x1773
    push ax                          ; 0x1776
    mov ax, 0x16                     ; 0x1777
    push ax                          ; 0x177a
    call loc_STSN_040f               ; 0x177b
    add sp, byte 6                   ; 0x177e
    cmp word [bp - 0x0196], byte 0   ; 0x1781
    jne short @..loc_JGSH.l8         ; 0x1786
    mov ax, 0x1dc7                   ; 0x1788
    push ax                          ; 0x178b
    call loc_NNGU                    ; 0x178c
    pop cx                           ; 0x178f
    mov ax, 0x1df7                   ; 0x1790
    push ax                          ; 0x1793
    call loc_NNGU                    ; 0x1794
    pop cx                           ; 0x1797
    mov ax, 3                        ; 0x1798
    push ax                          ; 0x179b
    call loc_NPPN                    ; 0x179c
    pop cx                           ; 0x179f
    mov ax, 0                        ; 0x17a0
    push ax                          ; 0x17a3
    call aztec_exit                  ; 0x17a4
    pop cx                           ; 0x17a7
@..loc_JGSH.l8:
    mov word [bp - 0x019c], 0        ; 0x17a8
    mov word [bp - 0x019e], 0xffff   ; 0x17ae
    mov word [bp - 0x01c0], 0        ; 0x17b4
@..loc_JGSH.l9:
    mov ax, 0x1e28                   ; 0x17ba
    push ax                          ; 0x17bd
    mov ax, 0x2648                   ; 0x17be
    push ax                          ; 0x17c1
    call aztec_strcpy                ; 0x17c2
    add sp, byte 4                   ; 0x17c5
    mov ax, word [bp - 0x019e]       ; 0x17c8
    jmp near @..loc_JGSH.l10         ; 0x17cc
jumptable_1969_case_1:
    mov ax, word [bp - 0x000e]       ; 0x17cf
    shl ax, 1                        ; 0x17d2
    mov bx, ax                       ; 0x17d4
    push word [bx + 0x160]           ; 0x17d6
    mov ax, 0x16                     ; 0x17da
    push ax                          ; 0x17dd
    mov ax, 8                        ; 0x17de
    push ax                          ; 0x17e1
    call loc_STSN_040f               ; 0x17e2
    add sp, byte 6                   ; 0x17e5
    jmp near @..loc_JGSH.l11         ; 0x17e8
jumptable_1969_case_2:
    lea ax, word [bp - 0x001c]       ; 0x17eb
    push ax                          ; 0x17ee
    mov ax, 0x2e                     ; 0x17ef
    push ax                          ; 0x17f2
    mov ax, 8                        ; 0x17f3
    push ax                          ; 0x17f6
    call loc_STSN_040f               ; 0x17f7
    add sp, byte 6                   ; 0x17fa
    jmp near @..loc_JGSH.l11         ; 0x17fd
jumptable_1969_case_3:
    lea ax, word [bp - 0x0032]       ; 0x1800
    push ax                          ; 0x1803
    mov ax, 0x3a                     ; 0x1804
    push ax                          ; 0x1807
    mov ax, 8                        ; 0x1808
    push ax                          ; 0x180b
    call loc_STSN_040f               ; 0x180c
    add sp, byte 6                   ; 0x180f
    jmp near @..loc_JGSH.l11         ; 0x1812
jumptable_1969_case_4:
    mov ax, word [bp - 0x0010]       ; 0x1815
    shl ax, 1                        ; 0x1818
    mov bx, ax                       ; 0x181a
    push word [bx + 0x160]           ; 0x181c
    mov ax, 0x16                     ; 0x1820
    push ax                          ; 0x1823
    mov ax, 9                        ; 0x1824
    push ax                          ; 0x1827
    call loc_STSN_040f               ; 0x1828
    add sp, byte 6                   ; 0x182b
    jmp near @..loc_JGSH.l11         ; 0x182e
jumptable_1969_case_5:
    lea ax, word [bp - 0x003e]       ; 0x1831
    push ax                          ; 0x1834
    mov ax, 0x2e                     ; 0x1835
    push ax                          ; 0x1838
    mov ax, 9                        ; 0x1839
    push ax                          ; 0x183c
    call loc_STSN_040f               ; 0x183d
    add sp, byte 6                   ; 0x1840
    jmp near @..loc_JGSH.l11         ; 0x1843
jumptable_1969_case_6:
    lea ax, word [bp - 0x0054]       ; 0x1846
    push ax                          ; 0x1849
    mov ax, 0x3a                     ; 0x184a
    push ax                          ; 0x184d
    mov ax, 9                        ; 0x184e
    push ax                          ; 0x1851
    call loc_STSN_040f               ; 0x1852
    add sp, byte 6                   ; 0x1855
    jmp near @..loc_JGSH.l11         ; 0x1858
jumptable_1969_case_7:
    mov ax, word [bp - 0x01a0]       ; 0x185b
    shl ax, 1                        ; 0x185f
    mov bx, ax                       ; 0x1861
    push word [bx + 0x154]           ; 0x1863
    mov ax, 0x1b                     ; 0x1867
    push ax                          ; 0x186a
    mov ax, 0xb                      ; 0x186b
    push ax                          ; 0x186e
    call loc_STSN_040f               ; 0x186f
    add sp, byte 6                   ; 0x1872
    jmp near @..loc_JGSH.l11         ; 0x1875
jumptable_1969_case_8:
    mov ax, word [bp - 0x01a2]       ; 0x1878
    shl ax, 1                        ; 0x187c
    mov bx, ax                       ; 0x187e
    push word [bx + 0x154]           ; 0x1880
    mov ax, 0x29                     ; 0x1884
    push ax                          ; 0x1887
    mov ax, 0xb                      ; 0x1888
    push ax                          ; 0x188b
    call loc_STSN_040f               ; 0x188c
    add sp, byte 6                   ; 0x188f
    jmp near @..loc_JGSH.l11         ; 0x1892
jumptable_1969_case_9:
    lea ax, word [bp - 0x01b8]       ; 0x1895
    push ax                          ; 0x1899
    mov ax, 0x3a                     ; 0x189a
    push ax                          ; 0x189d
    mov ax, 0xb                      ; 0x189e
    push ax                          ; 0x18a1
    call loc_STSN_040f               ; 0x18a2
    add sp, byte 6                   ; 0x18a5
    jmp near @..loc_JGSH.l11         ; 0x18a8
jumptable_1969_case_10:
    mov ax, word [bp - 0x0196]       ; 0x18ab
    shl ax, 1                        ; 0x18af
    mov bx, ax                       ; 0x18b1
    push word [word bx + 0x2]        ; 0x18b3
    mov ax, 0x10                     ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, 0xd                      ; 0x18bb
    push ax                          ; 0x18be
    call loc_STSN_040f               ; 0x18bf
    add sp, byte 6                   ; 0x18c2
    jmp near @..loc_JGSH.l11         ; 0x18c5
jumptable_1969_case_11:
    push word [bp - 0x01ba]          ; 0x18c8
    mov ax, 0x3e                     ; 0x18cc
    push ax                          ; 0x18cf
    mov ax, 0xf                      ; 0x18d0
    push ax                          ; 0x18d3
    call loc_JTRN_03b3               ; 0x18d4
    add sp, byte 6                   ; 0x18d7
    jmp near @..loc_JGSH.l11         ; 0x18da
jumptable_1969_case_12:
    push word [bp - 0x01bc]          ; 0x18dd
    mov ax, 0x3e                     ; 0x18e1
    push ax                          ; 0x18e4
    mov ax, 0x10                     ; 0x18e5
    push ax                          ; 0x18e8
    call loc_JTRN_03b3               ; 0x18e9
    add sp, byte 6                   ; 0x18ec
    jmp near @..loc_JGSH.l11         ; 0x18ef
jumptable_1969_case_13:
    mov ax, word [bp - 0x019a]       ; 0x18f2
    shl ax, 1                        ; 0x18f6
    mov bx, ax                       ; 0x18f8
    push word [bx + 0x154]           ; 0x18fa
    mov ax, 0x1b                     ; 0x18fe
    push ax                          ; 0x1901
    mov ax, 0x12                     ; 0x1902
    push ax                          ; 0x1905
    call loc_STSN_040f               ; 0x1906
    add sp, byte 6                   ; 0x1909
    jmp near @..loc_JGSH.l11         ; 0x190c
jumptable_1969_case_14:
    mov ax, word [bp - 0x0198]       ; 0x190f
    shl ax, 1                        ; 0x1913
    mov bx, ax                       ; 0x1915
    push word [bx + 0xa4]            ; 0x1917
    mov ax, 0x29                     ; 0x191b
    push ax                          ; 0x191e
    mov ax, 0x12                     ; 0x191f
    push ax                          ; 0x1922
    call loc_STSN_040f               ; 0x1923
    add sp, byte 6                   ; 0x1926
    jmp short @..loc_JGSH.l11        ; 0x1929
jumptable_1969_case_15:
    mov ax, 0x1e50                   ; 0x192b
    push ax                          ; 0x192e
    mov ax, 0x12                     ; 0x192f
    push ax                          ; 0x1932
    mov ax, 0x14                     ; 0x1933
    push ax                          ; 0x1936
    call loc_STSN_040f               ; 0x1937
    add sp, byte 6                   ; 0x193a
    jmp short @..loc_JGSH.l11        ; 0x193d
jumptable_1969_case_16:
    mov ax, 0x1e5d                   ; 0x193f
    push ax                          ; 0x1942
    mov ax, 0x21                     ; 0x1943
    push ax                          ; 0x1946
    mov ax, 0x14                     ; 0x1947
    push ax                          ; 0x194a
    call loc_STSN_040f               ; 0x194b
    add sp, byte 6                   ; 0x194e
    jmp short @..loc_JGSH.l11        ; 0x1951
jumptable_1969_case_17:
    mov ax, 0x1e69                   ; 0x1953
    push ax                          ; 0x1956
    mov ax, 0x30                     ; 0x1957
    push ax                          ; 0x195a
    mov ax, 0x14                     ; 0x195b
    push ax                          ; 0x195e
    call loc_STSN_040f               ; 0x195f
    add sp, byte 6                   ; 0x1962
    jmp short @..loc_JGSH.l11        ; 0x1965
jumptable_1969_case_0:
    jmp short @..loc_JGSH.l11        ; 0x1967
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
@..loc_JGSH.l10:
    sub ax, strict word 0xffff       ; 0x198d
    cmp ax, strict word 0x12         ; 0x1990
    jae short @..loc_JGSH.l11        ; 0x1993
    xchg bx, ax                      ; 0x1995
    shl bx, 1                        ; 0x1996
    jmp [cs:bx + jumptable_1969 - IMAGE_BASE] ; 0x1998
@..loc_JGSH.l11:
    mov ax, word [bp - 0x019c]       ; 0x199d
    jmp near @..loc_JGSH.l12         ; 0x19a1
jumptable_1b3c_case_0:
    mov ax, word [bp - 0x000e]       ; 0x19a4
    shl ax, 1                        ; 0x19a7
    mov bx, ax                       ; 0x19a9
    push word [bx + 0x160]           ; 0x19ab
    mov ax, 0x16                     ; 0x19af
    push ax                          ; 0x19b2
    mov ax, 8                        ; 0x19b3
    push ax                          ; 0x19b6
    call loc_STSN_0429               ; 0x19b7
    add sp, byte 6                   ; 0x19ba
    jmp near @..loc_JGSH.l13         ; 0x19bd
jumptable_1b3c_case_1:
    lea ax, word [bp - 0x001c]       ; 0x19c0
    push ax                          ; 0x19c3
    mov ax, 0x2e                     ; 0x19c4
    push ax                          ; 0x19c7
    mov ax, 8                        ; 0x19c8
    push ax                          ; 0x19cb
    call loc_STSN_0429               ; 0x19cc
    add sp, byte 6                   ; 0x19cf
    jmp near @..loc_JGSH.l13         ; 0x19d2
jumptable_1b3c_case_2:
    lea ax, word [bp - 0x0032]       ; 0x19d5
    push ax                          ; 0x19d8
    mov ax, 0x3a                     ; 0x19d9
    push ax                          ; 0x19dc
    mov ax, 8                        ; 0x19dd
    push ax                          ; 0x19e0
    call loc_STSN_0429               ; 0x19e1
    add sp, byte 6                   ; 0x19e4
    jmp near @..loc_JGSH.l13         ; 0x19e7
jumptable_1b3c_case_3:
    mov ax, word [bp - 0x0010]       ; 0x19ea
    shl ax, 1                        ; 0x19ed
    mov bx, ax                       ; 0x19ef
    push word [bx + 0x160]           ; 0x19f1
    mov ax, 0x16                     ; 0x19f5
    push ax                          ; 0x19f8
    mov ax, 9                        ; 0x19f9
    push ax                          ; 0x19fc
    call loc_STSN_0429               ; 0x19fd
    add sp, byte 6                   ; 0x1a00
    jmp near @..loc_JGSH.l13         ; 0x1a03
jumptable_1b3c_case_4:
    lea ax, word [bp - 0x003e]       ; 0x1a06
    push ax                          ; 0x1a09
    mov ax, 0x2e                     ; 0x1a0a
    push ax                          ; 0x1a0d
    mov ax, 9                        ; 0x1a0e
    push ax                          ; 0x1a11
    call loc_STSN_0429               ; 0x1a12
    add sp, byte 6                   ; 0x1a15
    jmp near @..loc_JGSH.l13         ; 0x1a18
jumptable_1b3c_case_5:
    lea ax, word [bp - 0x0054]       ; 0x1a1b
    push ax                          ; 0x1a1e
    mov ax, 0x3a                     ; 0x1a1f
    push ax                          ; 0x1a22
    mov ax, 9                        ; 0x1a23
    push ax                          ; 0x1a26
    call loc_STSN_0429               ; 0x1a27
    add sp, byte 6                   ; 0x1a2a
    jmp near @..loc_JGSH.l13         ; 0x1a2d
jumptable_1b3c_case_6:
    mov ax, word [bp - 0x01a0]       ; 0x1a30
    shl ax, 1                        ; 0x1a34
    mov bx, ax                       ; 0x1a36
    push word [bx + 0x154]           ; 0x1a38
    mov ax, 0x1b                     ; 0x1a3c
    push ax                          ; 0x1a3f
    mov ax, 0xb                      ; 0x1a40
    push ax                          ; 0x1a43
    call loc_STSN_0429               ; 0x1a44
    add sp, byte 6                   ; 0x1a47
    jmp near @..loc_JGSH.l13         ; 0x1a4a
jumptable_1b3c_case_7:
    mov ax, word [bp - 0x01a2]       ; 0x1a4d
    shl ax, 1                        ; 0x1a51
    mov bx, ax                       ; 0x1a53
    push word [bx + 0x154]           ; 0x1a55
    mov ax, 0x29                     ; 0x1a59
    push ax                          ; 0x1a5c
    mov ax, 0xb                      ; 0x1a5d
    push ax                          ; 0x1a60
    call loc_STSN_0429               ; 0x1a61
    add sp, byte 6                   ; 0x1a64
    jmp near @..loc_JGSH.l13         ; 0x1a67
jumptable_1b3c_case_8:
    lea ax, word [bp - 0x01b8]       ; 0x1a6a
    push ax                          ; 0x1a6e
    mov ax, 0x3a                     ; 0x1a6f
    push ax                          ; 0x1a72
    mov ax, 0xb                      ; 0x1a73
    push ax                          ; 0x1a76
    call loc_STSN_0429               ; 0x1a77
    add sp, byte 6                   ; 0x1a7a
    jmp near @..loc_JGSH.l13         ; 0x1a7d
jumptable_1b3c_case_9:
    mov ax, word [bp - 0x0196]       ; 0x1a80
    shl ax, 1                        ; 0x1a84
    mov bx, ax                       ; 0x1a86
    push word [word bx + 0x2]        ; 0x1a88
    mov ax, 0x10                     ; 0x1a8c
    push ax                          ; 0x1a8f
    mov ax, 0xd                      ; 0x1a90
    push ax                          ; 0x1a93
    call loc_STSN_0429               ; 0x1a94
    add sp, byte 6                   ; 0x1a97
    jmp near @..loc_JGSH.l13         ; 0x1a9a
jumptable_1b3c_case_10:
    push word [bp - 0x01ba]          ; 0x1a9d
    mov ax, 0x3e                     ; 0x1aa1
    push ax                          ; 0x1aa4
    mov ax, 0xf                      ; 0x1aa5
    push ax                          ; 0x1aa8
    call loc_JTRN_03e1               ; 0x1aa9
    add sp, byte 6                   ; 0x1aac
    jmp near @..loc_JGSH.l13         ; 0x1aaf
jumptable_1b3c_case_11:
    push word [bp - 0x01bc]          ; 0x1ab2
    mov ax, 0x3e                     ; 0x1ab6
    push ax                          ; 0x1ab9
    mov ax, 0x10                     ; 0x1aba
    push ax                          ; 0x1abd
    call loc_JTRN_03e1               ; 0x1abe
    add sp, byte 6                   ; 0x1ac1
    jmp near @..loc_JGSH.l13         ; 0x1ac4
jumptable_1b3c_case_12:
    mov ax, word [bp - 0x019a]       ; 0x1ac7
    shl ax, 1                        ; 0x1acb
    mov bx, ax                       ; 0x1acd
    push word [bx + 0x154]           ; 0x1acf
    mov ax, 0x1b                     ; 0x1ad3
    push ax                          ; 0x1ad6
    mov ax, 0x12                     ; 0x1ad7
    push ax                          ; 0x1ada
    call loc_STSN_0429               ; 0x1adb
    add sp, byte 6                   ; 0x1ade
    jmp near @..loc_JGSH.l13         ; 0x1ae1
jumptable_1b3c_case_13:
    mov ax, word [bp - 0x0198]       ; 0x1ae4
    shl ax, 1                        ; 0x1ae8
    mov bx, ax                       ; 0x1aea
    push word [bx + 0xa4]            ; 0x1aec
    mov ax, 0x29                     ; 0x1af0
    push ax                          ; 0x1af3
    mov ax, 0x12                     ; 0x1af4
    push ax                          ; 0x1af7
    call loc_STSN_0429               ; 0x1af8
    add sp, byte 6                   ; 0x1afb
    jmp short @..loc_JGSH.l13        ; 0x1afe
jumptable_1b3c_case_14:
    mov ax, 0x1e77                   ; 0x1b00
    push ax                          ; 0x1b03
    mov ax, 0x12                     ; 0x1b04
    push ax                          ; 0x1b07
    mov ax, 0x14                     ; 0x1b08
    push ax                          ; 0x1b0b
    call loc_STSN_0429               ; 0x1b0c
    add sp, byte 6                   ; 0x1b0f
    jmp short @..loc_JGSH.l13        ; 0x1b12
jumptable_1b3c_case_15:
    mov ax, 0x1e84                   ; 0x1b14
    push ax                          ; 0x1b17
    mov ax, 0x21                     ; 0x1b18
    push ax                          ; 0x1b1b
    mov ax, 0x14                     ; 0x1b1c
    push ax                          ; 0x1b1f
    call loc_STSN_0429               ; 0x1b20
    add sp, byte 6                   ; 0x1b23
    jmp short @..loc_JGSH.l13        ; 0x1b26
jumptable_1b3c_case_16:
    mov ax, 0x1e90                   ; 0x1b28
    push ax                          ; 0x1b2b
    mov ax, 0x30                     ; 0x1b2c
    push ax                          ; 0x1b2f
    mov ax, 0x14                     ; 0x1b30
    push ax                          ; 0x1b33
    call loc_STSN_0429               ; 0x1b34
    add sp, byte 6                   ; 0x1b37
    jmp short @..loc_JGSH.l13        ; 0x1b3a
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
@..loc_JGSH.l12:
    cmp ax, strict word 0x11         ; 0x1b5e
    jae short @..loc_JGSH.l13        ; 0x1b61
    xchg bx, ax                      ; 0x1b63
    shl bx, 1                        ; 0x1b64
    jmp [cs:bx + jumptable_1b3c - IMAGE_BASE] ; 0x1b66
@..loc_JGSH.l13:
    call dos_con_in_noecho           ; 0x1b6b
    push ax                          ; 0x1b6e
    call loc_MPRS                    ; 0x1b6f
    pop cx                           ; 0x1b72
    mov word [bp - 0x0008], ax       ; 0x1b73
    jmp near @..loc_JGSH.l48         ; 0x1b76
