; auto-generated
loc_HTRU:
    mov ax, 0xfe32                   ; 0x111b
    call aztec_csav                  ; 0x111e
    mov word [bss_9052], 0xffff      ; 0x1121
    mov ax, word [bp + 0x14]         ; 0x1127
    shl ax, 1                        ; 0x112a
    mov word [bp - 0x0010], ax       ; 0x112c
    mov word [bp - 0x0002], 0        ; 0x112f
    mov word [bp - 0x0004], 0        ; 0x1134
@..loc_HTRU.l1:
    mov ax, word [bp - 0x0004]       ; 0x1139
    shl ax, 1                        ; 0x113c
    mov si, ax                       ; 0x113e
    mov bx, word [bp + 0x1a]         ; 0x1140
    cmp word [bx + si], byte 0xff    ; 0x1143
    jne short @..loc_HTRU.l2         ; 0x1146
    jmp near @..loc_HTRU.l7          ; 0x1148
@..loc_HTRU.l2:
    cmp word [bx + si], byte 1       ; 0x114b
    je short @..loc_HTRU.l3          ; 0x114e
    jmp near @..loc_HTRU.l6          ; 0x1150
@..loc_HTRU.l3:
    mov ax, word [bp - 0x0002]       ; 0x1153
    cmp word [bp + 0x16], byte 0     ; 0x1156
    je short @..loc_HTRU.l4          ; 0x115a
    mov ax, word [bp - 0x0004]       ; 0x115c
@..loc_HTRU.l4:
    mov word [bp - 0x0008], ax       ; 0x115f
    mov ax, word [bp + 0xa]          ; 0x1162
    mov cx, word [bp - 0x0008]       ; 0x1165
    cmp cx, word [bp - 0x0010]       ; 0x1168
    jge short @..loc_HTRU.l5         ; 0x116b
    mov ax, word [bp + 0x8]          ; 0x116d
@..loc_HTRU.l5:
    mov word [bp - 0x0006], ax       ; 0x1170
    mov ax, 0x14                     ; 0x1173
    imul word [bp - 0x0002]          ; 0x1176
    lea cx, word [bp - 0x015a]       ; 0x1179
    add ax, cx                       ; 0x117d
    push ax                          ; 0x117f
    mov ax, word [bp + 0x4]          ; 0x1180
    add ax, word [bp - 0x0004]       ; 0x1183
    push ax                          ; 0x1186
    call load_message_string         ; 0x1187
    add sp, byte 4                   ; 0x118a
    mov ax, word [bp - 0x0008]       ; 0x118d
    cwd                              ; 0x1190
    idiv word [bp - 0x0010]          ; 0x1191
    mov ax, dx                       ; 0x1194
    cwd                              ; 0x1196
    idiv word [bp + 0x14]            ; 0x1197
    imul word [bp + 0x10]            ; 0x119a
    mov word [bp - 0x000a], ax       ; 0x119d
    mov ax, word [bp - 0x0008]       ; 0x11a0
    cwd                              ; 0x11a3
    idiv word [bp - 0x0010]          ; 0x11a4
    mov ax, dx                       ; 0x11a7
    cwd                              ; 0x11a9
    idiv word [bp + 0x14]            ; 0x11aa
    mov ax, dx                       ; 0x11ad
    imul word [bp + 0x12]            ; 0x11af
    mov word [bp - 0x000c], ax       ; 0x11b2
    mov ax, 0                        ; 0x11b5
    push ax                          ; 0x11b8
    mov ax, word [bp + 0xc]          ; 0x11b9
    add ax, word [bp - 0x000c]       ; 0x11bc
    add ax, strict word 6            ; 0x11bf
    push ax                          ; 0x11c2
    mov ax, 6                        ; 0x11c3
    imul word [bp + 0xe]             ; 0x11c6
    add ax, word [bp - 0x0006]       ; 0x11c9
    add ax, word [bp - 0x000a]       ; 0x11cc
    push ax                          ; 0x11cf
    mov ax, word [bp + 0xc]          ; 0x11d0
    add ax, word [bp - 0x000c]       ; 0x11d3
    push ax                          ; 0x11d6
    mov ax, word [bp - 0x0006]       ; 0x11d7
    add ax, word [bp - 0x000a]       ; 0x11da
    push ax                          ; 0x11dd
    call draw_bevel_frame            ; 0x11de
    add sp, byte 0x0a                ; 0x11e1
    mov ax, 0                        ; 0x11e4
    push ax                          ; 0x11e7
    push word [bp + 0x18]            ; 0x11e8
    call gfx_set_text_color          ; 0x11eb
    add sp, byte 4                   ; 0x11ee
    mov ax, word [bp + 0xc]          ; 0x11f1
    add ax, word [bp - 0x000c]       ; 0x11f4
    inc ax                           ; 0x11f7
    push ax                          ; 0x11f8
    mov ax, 0x14                     ; 0x11f9
    imul word [bp - 0x0002]          ; 0x11fc
    lea cx, word [bp - 0x015a]       ; 0x11ff
    add ax, cx                       ; 0x1203
    push ax                          ; 0x1205
    call aztec_strlen                ; 0x1206
    pop cx                           ; 0x1209
    mov cx, ax                       ; 0x120a
    mov ax, word [bp + 0xe]          ; 0x120c
    sub ax, cx                       ; 0x120f
    mov cx, 6                        ; 0x1211
    imul cx                          ; 0x1214
    mov cx, 2                        ; 0x1216
    cwd                              ; 0x1219
    idiv cx                          ; 0x121a
    add ax, word [bp - 0x0006]       ; 0x121c
    add ax, word [bp - 0x000a]       ; 0x121f
    inc ax                           ; 0x1222
    push ax                          ; 0x1223
    call gfx_set_text_pos            ; 0x1224
    add sp, byte 4                   ; 0x1227
    mov ax, 0                        ; 0x122a
    push ax                          ; 0x122d
    mov ax, 0x14                     ; 0x122e
    imul word [bp - 0x0002]          ; 0x1231
    lea cx, word [bp - 0x015a]       ; 0x1234
    add ax, cx                       ; 0x1238
    push ax                          ; 0x123a
    call draw_text_glyphs            ; 0x123b
    add sp, byte 4                   ; 0x123e
    mov ax, 0                        ; 0x1241
    push ax                          ; 0x1244
    push ax                          ; 0x1245
    mov ax, word [bp + 0xc]          ; 0x1246
    add ax, word [bp - 0x000c]       ; 0x1249
    add ax, strict word 6            ; 0x124c
    push ax                          ; 0x124f
    mov ax, 6                        ; 0x1250
    imul word [bp + 0xe]             ; 0x1253
    add ax, word [bp - 0x0006]       ; 0x1256
    add ax, word [bp - 0x000a]       ; 0x1259
    push ax                          ; 0x125c
    mov ax, word [bp + 0xc]          ; 0x125d
    add ax, word [bp - 0x000c]       ; 0x1260
    push ax                          ; 0x1263
    mov ax, word [bp - 0x0006]       ; 0x1264
    add ax, word [bp - 0x000a]       ; 0x1267
    push ax                          ; 0x126a
    push word [bp - 0x0002]          ; 0x126b
    call set_hotspot                 ; 0x126e
    add sp, byte 0x0e                ; 0x1271
    mov ax, word [bp - 0x0004]       ; 0x1274
    mov cx, word [bp - 0x0002]       ; 0x1277
    shl cx, 1                        ; 0x127a
    mov bx, cx                       ; 0x127c
    add bx, bp                       ; 0x127e
    mov word [bx - 0x002e], ax       ; 0x1280
    mov ax, word [bp - 0x0002]       ; 0x1283
    mov cx, word [bp - 0x0008]       ; 0x1286
    shl cx, 1                        ; 0x1289
    mov bx, cx                       ; 0x128b
    add bx, bp                       ; 0x128d
    mov word [bx - 0x01ce], ax       ; 0x128f
    inc word [bp - 0x0002]           ; 0x1293
@..loc_HTRU.l6:
    inc word [bp - 0x0004]           ; 0x1296
    jmp near @..loc_HTRU.l1          ; 0x1299
@..loc_HTRU.l7:
    mov ax, word [bp - 0x0004]       ; 0x129c
    mov word [bp - 0x01ac], ax       ; 0x129f
    mov ax, 0                        ; 0x12a3
    push ax                          ; 0x12a6
    push ax                          ; 0x12a7
    push ax                          ; 0x12a8
    push ax                          ; 0x12a9
    push ax                          ; 0x12aa
    mov ax, 0xffff                   ; 0x12ab
    push ax                          ; 0x12ae
    push word [bp - 0x0002]          ; 0x12af
    call set_hotspot                 ; 0x12b2
    add sp, byte 0x0e                ; 0x12b5
    cmp word [bp + 0x16], byte 1     ; 0x12b8
    jne short @..loc_HTRU.l10        ; 0x12bc
    mov word [bp - 0x000e], 0        ; 0x12be
    jmp short @..loc_HTRU.l9         ; 0x12c3
@..loc_HTRU.l8:
    mov ax, 0                        ; 0x12c5
    push ax                          ; 0x12c8
    mov ax, word [bp - 0x000e]       ; 0x12c9
    add ax, strict word 0x31         ; 0x12cc
    cbw                              ; 0x12cf
    push ax                          ; 0x12d0
    mov ax, 6                        ; 0x12d1
    imul word [bp - 0x000e]          ; 0x12d4
    add ax, 0xa8                     ; 0x12d7
    push ax                          ; 0x12da
    mov ax, 0xdd                     ; 0x12db
    push ax                          ; 0x12de
    mov ax, 6                        ; 0x12df
    imul word [bp - 0x000e]          ; 0x12e2
    add ax, 0xa4                     ; 0x12e5
    push ax                          ; 0x12e8
    mov ax, 0x62                     ; 0x12e9
    push ax                          ; 0x12ec
    mov ax, word [bp - 0x0002]       ; 0x12ed
    add ax, word [bp - 0x000e]       ; 0x12f0
    push ax                          ; 0x12f3
    call set_hotspot                 ; 0x12f4
    add sp, byte 0x0e                ; 0x12f7
    inc word [bp - 0x000e]           ; 0x12fa
@..loc_HTRU.l9:
    mov ax, word [bp - 0x000e]       ; 0x12fd
    cmp ax, word [bss_8466]          ; 0x1300
    jl short @..loc_HTRU.l8          ; 0x1304
    mov ax, 0                        ; 0x1306
    push ax                          ; 0x1309
    push ax                          ; 0x130a
    push ax                          ; 0x130b
    push ax                          ; 0x130c
    push ax                          ; 0x130d
    mov ax, 0xffff                   ; 0x130e
    push ax                          ; 0x1311
    mov ax, word [bp - 0x0002]       ; 0x1312
    add ax, word [bss_8466]          ; 0x1315
    push ax                          ; 0x1319
    call set_hotspot                 ; 0x131a
    add sp, byte 0x0e                ; 0x131d
@..loc_HTRU.l10:
    push word [bp + 0x6]             ; 0x1320
    call loc_HTQP                    ; 0x1323
    pop cx                           ; 0x1326
    cmp word [mouse_active], byte 0  ; 0x1327
    je short @..loc_HTRU.l12         ; 0x132c
@..loc_HTRU.l11:
    mov ax, 0x59fe                   ; 0x132e
    push ax                          ; 0x1331
    call poll_hotspots               ; 0x1332
    pop cx                           ; 0x1335
    mov word [bp - 0x0004], ax       ; 0x1336
    call api_idx_0006_IRNH           ; 0x1339
    cmp word [hotspot_hit], byte 0   ; 0x133c
    je short @..loc_HTRU.l11         ; 0x1341
    jmp near @..loc_HTRU.l46         ; 0x1343
@..loc_HTRU.l12:
    mov word [bp - 0x0004], 0        ; 0x1346
@..loc_HTRU.l13:
    cmp word [bp + 0x16], byte 0     ; 0x134b
    je short @..loc_HTRU.l14         ; 0x134f
    mov ax, word [bp - 0x0004]       ; 0x1351
    shl ax, 1                        ; 0x1354
    mov si, ax                       ; 0x1356
    mov bx, word [bp + 0x1a]         ; 0x1358
    cmp word [bx + si], byte 1       ; 0x135b
    je short @..loc_HTRU.l14         ; 0x135e
    inc word [bp - 0x0004]           ; 0x1360
    jmp short @..loc_HTRU.l13        ; 0x1363
@..loc_HTRU.l14:
    mov ax, word [bp + 0xa]          ; 0x1365
    mov cx, word [bp - 0x0004]       ; 0x1368
    cmp cx, word [bp - 0x0010]       ; 0x136b
    jge short @..loc_HTRU.l15        ; 0x136e
    mov ax, word [bp + 0x8]          ; 0x1370
@..loc_HTRU.l15:
    mov word [bp - 0x0006], ax       ; 0x1373
    mov ax, cx                       ; 0x1376
    cwd                              ; 0x1378
    idiv word [bp - 0x0010]          ; 0x1379
    mov ax, dx                       ; 0x137c
    cwd                              ; 0x137e
    idiv word [bp + 0x14]            ; 0x137f
    imul word [bp + 0x10]            ; 0x1382
    mov word [bp - 0x000a], ax       ; 0x1385
    mov ax, cx                       ; 0x1388
    cwd                              ; 0x138a
    idiv word [bp - 0x0010]          ; 0x138b
    mov ax, dx                       ; 0x138e
    cwd                              ; 0x1390
    idiv word [bp + 0x14]            ; 0x1391
    mov ax, dx                       ; 0x1394
    imul word [bp + 0x12]            ; 0x1396
    mov word [bp - 0x000c], ax       ; 0x1399
    mov ax, 0x16                     ; 0x139c
    push ax                          ; 0x139f
    mov ax, word [bp + 0xc]          ; 0x13a0
    add ax, word [bp - 0x000c]       ; 0x13a3
    add ax, strict word 6            ; 0x13a6
    push ax                          ; 0x13a9
    mov ax, 6                        ; 0x13aa
    imul word [bp + 0xe]             ; 0x13ad
    add ax, word [bp - 0x0006]       ; 0x13b0
    add ax, word [bp - 0x000a]       ; 0x13b3
    push ax                          ; 0x13b6
    mov ax, word [bp + 0xc]          ; 0x13b7
    add ax, word [bp - 0x000c]       ; 0x13ba
    push ax                          ; 0x13bd
    mov ax, word [bp - 0x0006]       ; 0x13be
    add ax, word [bp - 0x000a]       ; 0x13c1
    push ax                          ; 0x13c4
    call loc_MNNG                    ; 0x13c5
    add sp, byte 0x0a                ; 0x13c8
    push word [bp + 0x6]             ; 0x13cb
    call loc_HTQP                    ; 0x13ce
    pop cx                           ; 0x13d1
    mov ax, 0                        ; 0x13d2
    push ax                          ; 0x13d5
    mov ax, word [bp + 0xc]          ; 0x13d6
    add ax, word [bp - 0x000c]       ; 0x13d9
    add ax, strict word 6            ; 0x13dc
    push ax                          ; 0x13df
    mov ax, 6                        ; 0x13e0
    imul word [bp + 0xe]             ; 0x13e3
    add ax, word [bp - 0x0006]       ; 0x13e6
    add ax, word [bp - 0x000a]       ; 0x13e9
    push ax                          ; 0x13ec
    mov ax, word [bp + 0xc]          ; 0x13ed
    add ax, word [bp - 0x000c]       ; 0x13f0
    push ax                          ; 0x13f3
    mov ax, word [bp - 0x0006]       ; 0x13f4
    add ax, word [bp - 0x000a]       ; 0x13f7
    push ax                          ; 0x13fa
    call loc_MNNG                    ; 0x13fb
    add sp, byte 0x0a                ; 0x13fe
@..loc_HTRU.l16:
    mov ax, 1                        ; 0x1401
    push ax                          ; 0x1404
    call poll_filtered_key           ; 0x1405
    pop cx                           ; 0x1408
    test ax, ax                      ; 0x1409
    jne short @..loc_HTRU.l17        ; 0x140b
    call api_idx_0006_IRNH           ; 0x140d
    jmp short @..loc_HTRU.l16        ; 0x1410
@..loc_HTRU.l17:
    mov ax, 1                        ; 0x1412
    push ax                          ; 0x1415
    call get_filtered_key            ; 0x1416
    pop cx                           ; 0x1419
    sub ah, ah                       ; 0x141a
    mov word [bp - 0x01ae], ax       ; 0x141c
    cmp ax, strict word 0xd          ; 0x1420
    jne short @..loc_HTRU.l18        ; 0x1423
    mov ax, word [bp - 0x0004]       ; 0x1425
    shl ax, 1                        ; 0x1428
    mov bx, ax                       ; 0x142a
    add bx, bp                       ; 0x142c
    mov ax, word [bx - 0x01ce]       ; 0x142e
    mov word [bp - 0x0004], ax       ; 0x1432
    jmp near @..loc_HTRU.l44         ; 0x1435
@..loc_HTRU.l18:
    cmp word [bp + 0x16], byte 1     ; 0x1438
    jne short @..loc_HTRU.l19        ; 0x143c
    cmp word [bp - 0x01ae], byte 0x31 ; 0x143e
    jl short @..loc_HTRU.l19         ; 0x1443
    mov ax, word [bss_8466]          ; 0x1445
    add ax, strict word 0x30         ; 0x1448
    cmp ax, word [bp - 0x01ae]       ; 0x144b
    jl short @..loc_HTRU.l19         ; 0x144f
    mov ax, word [bp - 0x0002]       ; 0x1451
    add ax, word [bp - 0x01ae]       ; 0x1454
    add ax, strict word 0xffcf       ; 0x1458
    mov word [bp - 0x0004], ax       ; 0x145b
    mov word [bp - 0x01ae], 0xd      ; 0x145e
    jmp near @..loc_HTRU.l44         ; 0x1464
@..loc_HTRU.l19:
    mov ax, word [bp - 0x0004]       ; 0x1467
    cwd                              ; 0x146a
    idiv word [bp + 0x14]            ; 0x146b
    mov word [bp - 0x000a], ax       ; 0x146e
    mov ax, word [bp - 0x01ac]       ; 0x1471
    dec ax                           ; 0x1475
    cwd                              ; 0x1476
    idiv word [bp + 0x14]            ; 0x1477
    inc ax                           ; 0x147a
    imul word [bp + 0x14]            ; 0x147b
    mov word [bp - 0x000c], ax       ; 0x147e
    mov ax, word [bp - 0x01ae]       ; 0x1481
    jmp near @..loc_HTRU.l40         ; 0x1485
@..loc_HTRU.l20:
    mov ax, word [bp - 0x0004]       ; 0x1488
    add ax, word [bp + 0x14]         ; 0x148b
    dec ax                           ; 0x148e
    cwd                              ; 0x148f
    idiv word [bp + 0x14]            ; 0x1490
    mov ax, dx                       ; 0x1493
    push ax                          ; 0x1495
    mov ax, word [bp - 0x000a]       ; 0x1496
    imul word [bp + 0x14]            ; 0x1499
    mov cx, ax                       ; 0x149c
    pop ax                           ; 0x149e
    add ax, cx                       ; 0x149f
    mov word [bp - 0x0004], ax       ; 0x14a1
    cmp word [bp + 0x16], byte 0     ; 0x14a4
    je short @..loc_HTRU.l21         ; 0x14a8
    mov ax, word [bp - 0x0004]       ; 0x14aa
    shl ax, 1                        ; 0x14ad
    mov si, ax                       ; 0x14af
    mov bx, word [bp + 0x1a]         ; 0x14b1
    cmp word [bx + si], byte 1       ; 0x14b4
    jne short @..loc_HTRU.l20        ; 0x14b7
@..loc_HTRU.l21:
    cmp word [bp + 0x16], byte 0     ; 0x14b9
    jne short @..loc_HTRU.l22        ; 0x14bd
    mov ax, word [bp - 0x0004]       ; 0x14bf
    cmp ax, word [bp - 0x0002]       ; 0x14c2
    jge short @..loc_HTRU.l20        ; 0x14c5
@..loc_HTRU.l22:
    jmp near @..loc_HTRU.l44         ; 0x14c7
@..loc_HTRU.l23:
    mov ax, word [bp - 0x0004]       ; 0x14ca
    inc ax                           ; 0x14cd
    cwd                              ; 0x14ce
    idiv word [bp + 0x14]            ; 0x14cf
    mov ax, dx                       ; 0x14d2
    push ax                          ; 0x14d4
    mov ax, word [bp - 0x000a]       ; 0x14d5
    imul word [bp + 0x14]            ; 0x14d8
    mov cx, ax                       ; 0x14db
    pop ax                           ; 0x14dd
    add ax, cx                       ; 0x14de
    mov word [bp - 0x0004], ax       ; 0x14e0
    cmp word [bp + 0x16], byte 0     ; 0x14e3
    je short @..loc_HTRU.l24         ; 0x14e7
    mov ax, word [bp - 0x0004]       ; 0x14e9
    shl ax, 1                        ; 0x14ec
    mov si, ax                       ; 0x14ee
    mov bx, word [bp + 0x1a]         ; 0x14f0
    cmp word [bx + si], byte 1       ; 0x14f3
    jne short @..loc_HTRU.l23        ; 0x14f6
@..loc_HTRU.l24:
    cmp word [bp + 0x16], byte 0     ; 0x14f8
    jne short @..loc_HTRU.l25        ; 0x14fc
    mov ax, word [bp - 0x0004]       ; 0x14fe
    cmp ax, word [bp - 0x0002]       ; 0x1501
    jge short @..loc_HTRU.l23        ; 0x1504
@..loc_HTRU.l25:
    jmp near @..loc_HTRU.l44         ; 0x1506
@..loc_HTRU.l26:
    mov ax, word [bp - 0x0004]       ; 0x1509
    sub ax, word [bp + 0x14]         ; 0x150c
    add ax, word [bp - 0x000c]       ; 0x150f
    cwd                              ; 0x1512
    idiv word [bp - 0x000c]          ; 0x1513
    mov word [bp - 0x0004], dx       ; 0x1516
    mov ax, dx                       ; 0x1519
    cwd                              ; 0x151b
    idiv word [bp + 0x14]            ; 0x151c
    mov word [bp - 0x000a], ax       ; 0x151f
    mov word [bp - 0x01b0], 0        ; 0x1522
@..loc_HTRU.l27:
    mov ax, word [bp - 0x01b0]       ; 0x1528
    cmp ax, word [bp + 0x14]         ; 0x152c
    jge short @..loc_HTRU.l30        ; 0x152f
    cmp word [bp + 0x16], byte 0     ; 0x1531
    je short @..loc_HTRU.l28         ; 0x1535
    mov ax, word [bp - 0x0004]       ; 0x1537
    shl ax, 1                        ; 0x153a
    mov si, ax                       ; 0x153c
    mov bx, word [bp + 0x1a]         ; 0x153e
    cmp word [bx + si], byte 1       ; 0x1541
    jne short @..loc_HTRU.l29        ; 0x1544
@..loc_HTRU.l28:
    cmp word [bp + 0x16], byte 0     ; 0x1546
    jne short @..loc_HTRU.l30        ; 0x154a
    mov ax, word [bp - 0x0004]       ; 0x154c
    cmp ax, word [bp - 0x0002]       ; 0x154f
    jl short @..loc_HTRU.l30         ; 0x1552
@..loc_HTRU.l29:
    mov ax, word [bp - 0x0004]       ; 0x1554
    add ax, word [bp + 0x14]         ; 0x1557
    dec ax                           ; 0x155a
    cwd                              ; 0x155b
    idiv word [bp + 0x14]            ; 0x155c
    mov ax, dx                       ; 0x155f
    push ax                          ; 0x1561
    mov ax, word [bp - 0x000a]       ; 0x1562
    imul word [bp + 0x14]            ; 0x1565
    mov cx, ax                       ; 0x1568
    pop ax                           ; 0x156a
    add ax, cx                       ; 0x156b
    mov word [bp - 0x0004], ax       ; 0x156d
    inc word [bp - 0x01b0]           ; 0x1570
    jmp short @..loc_HTRU.l27        ; 0x1574
@..loc_HTRU.l30:
    cmp word [bp + 0x16], byte 0     ; 0x1576
    je short @..loc_HTRU.l31         ; 0x157a
    mov ax, word [bp - 0x0004]       ; 0x157c
    shl ax, 1                        ; 0x157f
    mov si, ax                       ; 0x1581
    mov bx, word [bp + 0x1a]         ; 0x1583
    cmp word [bx + si], byte 1       ; 0x1586
    je short @..loc_HTRU.l31         ; 0x1589
    jmp near @..loc_HTRU.l26         ; 0x158b
@..loc_HTRU.l31:
    cmp word [bp + 0x16], byte 0     ; 0x158e
    jne short @..loc_HTRU.l32        ; 0x1592
    mov ax, word [bp - 0x0004]       ; 0x1594
    cmp ax, word [bp - 0x0002]       ; 0x1597
    jl short @..loc_HTRU.l32         ; 0x159a
    jmp near @..loc_HTRU.l26         ; 0x159c
@..loc_HTRU.l32:
    jmp near @..loc_HTRU.l44         ; 0x159f
@..loc_HTRU.l33:
    mov ax, word [bp - 0x0004]       ; 0x15a2
    add ax, word [bp + 0x14]         ; 0x15a5
    cwd                              ; 0x15a8
    idiv word [bp - 0x000c]          ; 0x15a9
    mov word [bp - 0x0004], dx       ; 0x15ac
    mov ax, dx                       ; 0x15af
    cwd                              ; 0x15b1
    idiv word [bp + 0x14]            ; 0x15b2
    mov word [bp - 0x000a], ax       ; 0x15b5
    mov word [bp - 0x01b0], 0        ; 0x15b8
@..loc_HTRU.l34:
    mov ax, word [bp - 0x01b0]       ; 0x15be
    cmp ax, word [bp + 0x14]         ; 0x15c2
    jge short @..loc_HTRU.l37        ; 0x15c5
    cmp word [bp + 0x16], byte 0     ; 0x15c7
    je short @..loc_HTRU.l35         ; 0x15cb
    mov ax, word [bp - 0x0004]       ; 0x15cd
    shl ax, 1                        ; 0x15d0
    mov si, ax                       ; 0x15d2
    mov bx, word [bp + 0x1a]         ; 0x15d4
    cmp word [bx + si], byte 1       ; 0x15d7
    jne short @..loc_HTRU.l36        ; 0x15da
@..loc_HTRU.l35:
    cmp word [bp + 0x16], byte 0     ; 0x15dc
    jne short @..loc_HTRU.l37        ; 0x15e0
    mov ax, word [bp - 0x0004]       ; 0x15e2
    cmp ax, word [bp - 0x0002]       ; 0x15e5
    jl short @..loc_HTRU.l37         ; 0x15e8
@..loc_HTRU.l36:
    mov ax, word [bp - 0x0004]       ; 0x15ea
    inc ax                           ; 0x15ed
    cwd                              ; 0x15ee
    idiv word [bp + 0x14]            ; 0x15ef
    mov ax, dx                       ; 0x15f2
    push ax                          ; 0x15f4
    mov ax, word [bp - 0x000a]       ; 0x15f5
    imul word [bp + 0x14]            ; 0x15f8
    mov cx, ax                       ; 0x15fb
    pop ax                           ; 0x15fd
    add ax, cx                       ; 0x15fe
    mov word [bp - 0x0004], ax       ; 0x1600
    inc word [bp - 0x01b0]           ; 0x1603
    jmp short @..loc_HTRU.l34        ; 0x1607
@..loc_HTRU.l37:
    cmp word [bp + 0x16], byte 0     ; 0x1609
    je short @..loc_HTRU.l38         ; 0x160d
    mov ax, word [bp - 0x0004]       ; 0x160f
    shl ax, 1                        ; 0x1612
    mov si, ax                       ; 0x1614
    mov bx, word [bp + 0x1a]         ; 0x1616
    cmp word [bx + si], byte 1       ; 0x1619
    jne short @..loc_HTRU.l33        ; 0x161c
@..loc_HTRU.l38:
    cmp word [bp + 0x16], byte 0     ; 0x161e
    jne short @..loc_HTRU.l39        ; 0x1622
    mov ax, word [bp - 0x0004]       ; 0x1624
    cmp ax, word [bp - 0x0002]       ; 0x1627
    jl short @..loc_HTRU.l39         ; 0x162a
    jmp near @..loc_HTRU.l33         ; 0x162c
@..loc_HTRU.l39:
    jmp short @..loc_HTRU.l44        ; 0x162f
@..loc_HTRU.l40:
    cmp ax, strict word 8            ; 0x1631
    jne short @..loc_HTRU.l41        ; 0x1634
    jmp near @..loc_HTRU.l26         ; 0x1636
@..loc_HTRU.l41:
    cmp ax, strict word 9            ; 0x1639
    jne short @..loc_HTRU.l42        ; 0x163c
    jmp near @..loc_HTRU.l20         ; 0x163e
@..loc_HTRU.l42:
    cmp ax, strict word 0xa          ; 0x1641
    jne short @..loc_HTRU.l43        ; 0x1644
    jmp near @..loc_HTRU.l33         ; 0x1646
@..loc_HTRU.l43:
    cmp ax, strict word 0xb          ; 0x1649
    jne short @..loc_HTRU.l44        ; 0x164c
    jmp near @..loc_HTRU.l23         ; 0x164e
@..loc_HTRU.l44:
    cmp word [bp - 0x01ae], byte 0x0d ; 0x1651
    je short @..loc_HTRU.l45         ; 0x1656
    jmp near @..loc_HTRU.l14         ; 0x1658
@..loc_HTRU.l45:
    inc word [bp - 0x0004]           ; 0x165b
    push word [bp + 0x6]             ; 0x165e
    call loc_HTQP                    ; 0x1661
    pop cx                           ; 0x1664
@..loc_HTRU.l46:
    dec word [bp - 0x0004]           ; 0x1665
    mov ax, word [bp - 0x0004]       ; 0x1668
    cmp ax, word [bp - 0x0002]       ; 0x166b
    jl short @..loc_HTRU.l47         ; 0x166e
    mov ax, 0                        ; 0x1670
    mov cx, word [bp - 0x0004]       ; 0x1673
    sub cx, word [bp - 0x0002]       ; 0x1676
    sub ax, cx                       ; 0x1679
    dec ax                           ; 0x167b
    ret                              ; 0x167c
@..loc_HTRU.l47:
    mov ax, word [bp - 0x0004]       ; 0x167d
    cmp word [bp + 0x16], byte 0     ; 0x1680
    je short @..loc_HTRU.l48         ; 0x1684
    shl ax, 1                        ; 0x1686
    mov bx, ax                       ; 0x1688
    add bx, bp                       ; 0x168a
    mov ax, word [bx - 0x002e]       ; 0x168c
@..loc_HTRU.l48:
    mov word [bp - 0x0008], ax       ; 0x168f
    mov ax, word [bp + 0xa]          ; 0x1692
    mov cx, word [bp - 0x0008]       ; 0x1695
    cmp cx, word [bp - 0x0010]       ; 0x1698
    jge short @..loc_HTRU.l49        ; 0x169b
    mov ax, word [bp + 0x8]          ; 0x169d
@..loc_HTRU.l49:
    mov word [bp - 0x0006], ax       ; 0x16a0
    mov ax, cx                       ; 0x16a3
    cwd                              ; 0x16a5
    idiv word [bp - 0x0010]          ; 0x16a6
    mov ax, dx                       ; 0x16a9
    cwd                              ; 0x16ab
    idiv word [bp + 0x14]            ; 0x16ac
    imul word [bp + 0x10]            ; 0x16af
    mov word [bp - 0x000a], ax       ; 0x16b2
    mov ax, cx                       ; 0x16b5
    cwd                              ; 0x16b7
    idiv word [bp - 0x0010]          ; 0x16b8
    mov ax, dx                       ; 0x16bb
    cwd                              ; 0x16bd
    idiv word [bp + 0x14]            ; 0x16be
    mov ax, dx                       ; 0x16c1
    imul word [bp + 0x12]            ; 0x16c3
    mov word [bp - 0x000c], ax       ; 0x16c6
    add ax, word [bp + 0xc]          ; 0x16c9
    add ax, strict word 6            ; 0x16cc
    push ax                          ; 0x16cf
    mov ax, 6                        ; 0x16d0
    imul word [bp + 0xe]             ; 0x16d3
    add ax, word [bp - 0x0006]       ; 0x16d6
    add ax, word [bp - 0x000a]       ; 0x16d9
    push ax                          ; 0x16dc
    mov ax, word [bp - 0x000c]       ; 0x16dd
    add ax, word [bp + 0xc]          ; 0x16e0
    push ax                          ; 0x16e3
    mov ax, word [bp - 0x0006]       ; 0x16e4
    add ax, word [bp - 0x000a]       ; 0x16e7
    push ax                          ; 0x16ea
    call gfx_invert_area             ; 0x16eb
    add sp, byte 8                   ; 0x16ee
    mov ax, word [bp - 0x000c]       ; 0x16f1
    add ax, word [bp + 0xc]          ; 0x16f4
    add ax, strict word 6            ; 0x16f7
    push ax                          ; 0x16fa
    mov ax, 6                        ; 0x16fb
    imul word [bp + 0xe]             ; 0x16fe
    add ax, word [bp - 0x0006]       ; 0x1701
    add ax, word [bp - 0x000a]       ; 0x1704
    push ax                          ; 0x1707
    mov ax, word [bp - 0x000c]       ; 0x1708
    add ax, word [bp + 0xc]          ; 0x170b
    push ax                          ; 0x170e
    mov ax, word [bp - 0x0006]       ; 0x170f
    add ax, word [bp - 0x000a]       ; 0x1712
    push ax                          ; 0x1715
    call gfx_show_area               ; 0x1716
    add sp, byte 8                   ; 0x1719
    mov ax, 0x19                     ; 0x171c
    push ax                          ; 0x171f
    call delay_ms                    ; 0x1720
    pop cx                           ; 0x1723
    mov ax, word [bp + 0xc]          ; 0x1724
    add ax, word [bp - 0x000c]       ; 0x1727
    add ax, strict word 6            ; 0x172a
    push ax                          ; 0x172d
    mov ax, 6                        ; 0x172e
    imul word [bp + 0xe]             ; 0x1731
    add ax, word [bp - 0x0006]       ; 0x1734
    add ax, word [bp - 0x000a]       ; 0x1737
    push ax                          ; 0x173a
    mov ax, word [bp + 0xc]          ; 0x173b
    add ax, word [bp - 0x000c]       ; 0x173e
    push ax                          ; 0x1741
    mov ax, word [bp - 0x0006]       ; 0x1742
    add ax, word [bp - 0x000a]       ; 0x1745
    push ax                          ; 0x1748
    call gfx_invert_area             ; 0x1749
    add sp, byte 8                   ; 0x174c
    mov ax, word [bp + 0xc]          ; 0x174f
    add ax, word [bp - 0x000c]       ; 0x1752
    add ax, strict word 6            ; 0x1755
    push ax                          ; 0x1758
    mov ax, 6                        ; 0x1759
    imul word [bp + 0xe]             ; 0x175c
    add ax, word [bp - 0x0006]       ; 0x175f
    add ax, word [bp - 0x000a]       ; 0x1762
    push ax                          ; 0x1765
    mov ax, word [bp + 0xc]          ; 0x1766
    add ax, word [bp - 0x000c]       ; 0x1769
    push ax                          ; 0x176c
    mov ax, word [bp - 0x0006]       ; 0x176d
    add ax, word [bp - 0x000a]       ; 0x1770
    push ax                          ; 0x1773
    call gfx_show_area               ; 0x1774
    add sp, byte 8                   ; 0x1777
    mov ax, word [bp - 0x0004]       ; 0x177a
    mov word [bss_9052], ax          ; 0x177d
    shl ax, 1                        ; 0x1780
    mov bx, ax                       ; 0x1782
    add bx, bp                       ; 0x1784
    mov ax, word [bx - 0x002e]       ; 0x1786
    ret                              ; 0x1789
