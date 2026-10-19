; auto-generated
; asm only
api_idx_007c_OKMO:
    mov ax, 0xff84                   ; 0x1046
    call aztec_csav                  ; 0x1049
    mov ax, 0                        ; 0x104c
    push ax                          ; 0x104f
    push ax                          ; 0x1050
    push word [bss_93f0]             ; 0x1051
    push word [bss_93ee]             ; 0x1055
    call gfx_restore_screen          ; 0x1059
    add sp, byte 8                   ; 0x105c
    mov ax, 0                        ; 0x105f
    push ax                          ; 0x1062
    push ax                          ; 0x1063
    push word [bss_93f4]             ; 0x1064
    push word [bss_93f2]             ; 0x1068
    call gfx_restore_screen          ; 0x106c
    add sp, byte 8                   ; 0x106f
    mov ax, 0x12                     ; 0x1072
    push ax                          ; 0x1075
    mov ax, 0xe                      ; 0x1076
    push ax                          ; 0x1079
    push word [bp + 0x4]             ; 0x107a
    call api_idx_0010_STNH           ; 0x107d
    add sp, byte 6                   ; 0x1080
    mov ax, 0                        ; 0x1083
    push ax                          ; 0x1086
    push ax                          ; 0x1087
    call gfx_entry_12                ; 0x1088
    add sp, byte 4                   ; 0x108b
    mov ax, 0x4c                     ; 0x108e
    push ax                          ; 0x1091
    mov ax, 0x248                    ; 0x1092
    imul word [bp + 0x4]             ; 0x1095
    add ax, 0x5bf4                   ; 0x1098
    push ax                          ; 0x109b
    call aztec_strlen                ; 0x109c
    pop cx                           ; 0x109f
    mov cx, 6                        ; 0x10a0
    imul cx                          ; 0x10a3
    mov cx, 2                        ; 0x10a5
    cwd                              ; 0x10a8
    idiv cx                          ; 0x10a9
    mov cx, ax                       ; 0x10ab
    mov ax, 0x28                     ; 0x10ad
    sub ax, cx                       ; 0x10b0
    push ax                          ; 0x10b2
    call gfx_entry_13                ; 0x10b3
    add sp, byte 4                   ; 0x10b6
    mov ax, 0                        ; 0x10b9
    push ax                          ; 0x10bc
    mov ax, 0x248                    ; 0x10bd
    imul word [bp + 0x4]             ; 0x10c0
    add ax, 0x5bf4                   ; 0x10c3
    push ax                          ; 0x10c6
    call ds_string_loc_QRJV          ; 0x10c7
    add sp, byte 4                   ; 0x10ca
    mov ax, 0                        ; 0x10cd
    push ax                          ; 0x10d0
    mov ax, 1                        ; 0x10d1
    push ax                          ; 0x10d4
    call gfx_entry_12                ; 0x10d5
    add sp, byte 4                   ; 0x10d8
    mov ax, 6                        ; 0x10db
    push ax                          ; 0x10de
    mov ax, 0x5a                     ; 0x10df
    push ax                          ; 0x10e2
    call gfx_entry_13                ; 0x10e3
    add sp, byte 4                   ; 0x10e6
    lea ax, word [bp - 0x0058]       ; 0x10e9
    push ax                          ; 0x10ec
    mov ax, 0x248                    ; 0x10ed
    imul word [bp + 0x4]             ; 0x10f0
    mov bx, ax                       ; 0x10f3
    mov al, byte [bx + 0x5e2c]       ; 0x10f5
    sub ah, ah                       ; 0x10f9
    add ax, 0x8c                     ; 0x10fb
    push ax                          ; 0x10fe
    call ds_app_mem_TIMR             ; 0x10ff
    add sp, byte 4                   ; 0x1102
    mov ax, 0                        ; 0x1105
    push ax                          ; 0x1108
    mov al, byte [bp - 0x0058]       ; 0x1109
    sub ah, ah                       ; 0x110c
    push ax                          ; 0x110e
    call ds_loc_TJTV                 ; 0x110f
    add sp, byte 4                   ; 0x1112
    mov ax, 0                        ; 0x1115
    push ax                          ; 0x1118
    mov ax, 0x2d                     ; 0x1119
    push ax                          ; 0x111c
    call ds_loc_TJTV                 ; 0x111d
    add sp, byte 4                   ; 0x1120
    lea ax, word [bp - 0x0058]       ; 0x1123
    push ax                          ; 0x1126
    mov ax, 0x248                    ; 0x1127
    imul word [bp + 0x4]             ; 0x112a
    mov bx, ax                       ; 0x112d
    mov al, byte [bx + 0x5e2b]       ; 0x112f
    sub ah, ah                       ; 0x1133
    add ax, strict word 0x64         ; 0x1135
    push ax                          ; 0x1138
    call ds_app_mem_TIMR             ; 0x1139
    add sp, byte 4                   ; 0x113c
    mov ax, 0                        ; 0x113f
    push ax                          ; 0x1142
    lea ax, word [bp - 0x0058]       ; 0x1143
    push ax                          ; 0x1146
    call ds_string_loc_QRJV          ; 0x1147
    add sp, byte 4                   ; 0x114a
    mov ax, 0                        ; 0x114d
    push ax                          ; 0x1150
    mov ax, 0x84                     ; 0x1151
    push ax                          ; 0x1154
    call gfx_entry_12                ; 0x1155
    add sp, byte 4                   ; 0x1158
    mov ax, 0xc                      ; 0x115b
    push ax                          ; 0x115e
    mov ax, 0x5a                     ; 0x115f
    push ax                          ; 0x1162
    call gfx_entry_13                ; 0x1163
    add sp, byte 4                   ; 0x1166
    lea ax, word [bp - 0x0058]       ; 0x1169
    push ax                          ; 0x116c
    mov ax, 0x248                    ; 0x116d
    imul word [bp + 0x4]             ; 0x1170
    mov bx, ax                       ; 0x1173
    mov al, byte [bx + 0x5e2d]       ; 0x1175
    sub ah, ah                       ; 0x1179
    add ax, strict word 0x78         ; 0x117b
    push ax                          ; 0x117e
    call ds_app_mem_TIMR             ; 0x117f
    add sp, byte 4                   ; 0x1182
    mov ax, 0                        ; 0x1185
    push ax                          ; 0x1188
    lea ax, word [bp - 0x0058]       ; 0x1189
    push ax                          ; 0x118c
    call ds_string_loc_QRJV          ; 0x118d
    add sp, byte 4                   ; 0x1190
    mov ax, 0x12                     ; 0x1193
    push ax                          ; 0x1196
    mov ax, 0x5a                     ; 0x1197
    push ax                          ; 0x119a
    call gfx_entry_13                ; 0x119b
    add sp, byte 4                   ; 0x119e
    lea ax, word [bp - 0x0058]       ; 0x11a1
    push ax                          ; 0x11a4
    mov ax, 0xc8                     ; 0x11a5
    push ax                          ; 0x11a8
    call ds_app_mem_TIMR             ; 0x11a9
    add sp, byte 4                   ; 0x11ac
    mov ax, 0                        ; 0x11af
    push ax                          ; 0x11b2
    lea ax, word [bp - 0x0058]       ; 0x11b3
    push ax                          ; 0x11b6
    call ds_string_loc_QRJV          ; 0x11b7
    add sp, byte 4                   ; 0x11ba
    mov ax, 0                        ; 0x11bd
    push ax                          ; 0x11c0
    mov ax, 4                        ; 0x11c1
    push ax                          ; 0x11c4
    mov ax, 0x248                    ; 0x11c5
    imul word [bp + 0x4]             ; 0x11c8
    mov bx, ax                       ; 0x11cb
    push word [bx + 0x5c18]          ; 0x11cd
    call ds_app_GUML                 ; 0x11d1
    add sp, byte 6                   ; 0x11d4
    mov ax, 0x248                    ; 0x11d7
    imul word [bp + 0x4]             ; 0x11da
    mov bx, ax                       ; 0x11dd
    mov ax, word [bx + 0x5bfc]       ; 0x11df
    mov dx, word [bx + 0x5bfe]       ; 0x11e3
    mov cx, 0x16d                    ; 0x11e7
    mov bx, 0                        ; 0x11ea
    call aztec_ldv                   ; 0x11ed
    add ax, strict word 0xffee       ; 0x11f0
    adc dx, byte 0xff                ; 0x11f3
    mov cx, 4                        ; 0x11f6
    mov bx, 0                        ; 0x11f9
    call aztec_ldv                   ; 0x11fc
    push ax                          ; 0x11ff
    push dx                          ; 0x1200
    mov ax, 0x248                    ; 0x1201
    imul word [bp + 0x4]             ; 0x1204
    mov bx, ax                       ; 0x1207
    mov ax, word [bx + 0x5c1a]       ; 0x1209
    cwd                              ; 0x120d
    mov cx, ax                       ; 0x120e
    mov bx, dx                       ; 0x1210
    pop dx                           ; 0x1212
    pop ax                           ; 0x1213
    add ax, cx                       ; 0x1214
    adc dx, bx                       ; 0x1216
    mov cx, ax                       ; 0x1218
    mov bx, dx                       ; 0x121a
    add ax, strict word 0xffff       ; 0x121c
    adc dx, byte 0xff                ; 0x121f
    mov cx, ax                       ; 0x1222
    mov bx, dx                       ; 0x1224
    mov ax, 0x14                     ; 0x1226
    mov dx, 0                        ; 0x1229
    sub ax, cx                       ; 0x122c
    sbb dx, bx                       ; 0x122e
    push ax                          ; 0x1230
    push dx                          ; 0x1231
    mov ax, 0x248                    ; 0x1232
    imul word [bp + 0x4]             ; 0x1235
    mov bx, ax                       ; 0x1238
    mov al, byte [bx + 0x5d67]       ; 0x123a
    sub ah, ah                       ; 0x123e
    cwd                              ; 0x1240
    mov cx, ax                       ; 0x1241
    mov bx, dx                       ; 0x1243
    pop dx                           ; 0x1245
    pop ax                           ; 0x1246
    push ax                          ; 0x1247
    push dx                          ; 0x1248
    mul bx                           ; 0x1249
    mov bx, ax                       ; 0x124b
    pop ax                           ; 0x124d
    mul cx                           ; 0x124e
    add bx, ax                       ; 0x1250
    pop ax                           ; 0x1252
    mul cx                           ; 0x1253
    add dx, bx                       ; 0x1255
    mov cx, 0x12                     ; 0x1257
    mov bx, 0                        ; 0x125a
    call aztec_ldv                   ; 0x125d
    mov word [bss_942e], ax          ; 0x1260
    mov ax, 0x14                     ; 0x1263
    push ax                          ; 0x1266
    mov ax, 0                        ; 0x1267
    push ax                          ; 0x126a
    push word [bss_942e]             ; 0x126b
    call clamp                       ; 0x126f
    add sp, byte 6                   ; 0x1272
    mov word [bss_942e], ax          ; 0x1275
    mov ax, 0x248                    ; 0x1278
    imul word [bp + 0x4]             ; 0x127b
    mov bx, ax                       ; 0x127e
    cmp byte [bx + 0x5e2f], 3        ; 0x1280
    jae short @..api_idx_007c_OKMO.l1 ; 0x1285
    mov ax, 0                        ; 0x1287
    jmp short @..api_idx_007c_OKMO.l2 ; 0x128a
@..api_idx_007c_OKMO.l1:
    mov ax, 1                        ; 0x128c
@..api_idx_007c_OKMO.l2:
    mov word [bss_9430], ax          ; 0x128f
    mov word [bss_9432], 0           ; 0x1292
    push word [bss_9432]             ; 0x1298
    call api_idx_000a_TITQ           ; 0x129c
    pop cx                           ; 0x129f
    mov ax, 0                        ; 0x12a0
    push ax                          ; 0x12a3
    mov ax, 0x55                     ; 0x12a4
    push ax                          ; 0x12a7
    call gfx_entry_12                ; 0x12a8
    add sp, byte 4                   ; 0x12ab
    mov word [bp - 0x0002], 0        ; 0x12ae
@..api_idx_007c_OKMO.l3:
    mov ax, 6                        ; 0x12b3
    imul word [bp - 0x0002]          ; 0x12b6
    add ax, strict word 0x23         ; 0x12b9
    push ax                          ; 0x12bc
    mov ax, 0x73                     ; 0x12bd
    push ax                          ; 0x12c0
    call gfx_entry_13                ; 0x12c1
    add sp, byte 4                   ; 0x12c4
    lea ax, word [bp - 0x0058]       ; 0x12c7
    push ax                          ; 0x12ca
    mov ax, word [bp - 0x0002]       ; 0x12cb
    add ax, 0xcc                     ; 0x12ce
    push ax                          ; 0x12d1
    call ds_app_mem_TIMR             ; 0x12d2
    add sp, byte 4                   ; 0x12d5
    mov ax, 0                        ; 0x12d8
    push ax                          ; 0x12db
    lea ax, word [bp - 0x0058]       ; 0x12dc
    push ax                          ; 0x12df
    call ds_string_loc_QRJV          ; 0x12e0
    add sp, byte 4                   ; 0x12e3
    mov ax, 0                        ; 0x12e6
    push ax                          ; 0x12e9
    mov ax, 3                        ; 0x12ea
    push ax                          ; 0x12ed
    mov ax, 0x248                    ; 0x12ee
    imul word [bp + 0x4]             ; 0x12f1
    add ax, word [bp - 0x0002]       ; 0x12f4
    mov bx, ax                       ; 0x12f7
    mov al, byte [bx + 0x5d64]       ; 0x12f9
    sub ah, ah                       ; 0x12fd
    push ax                          ; 0x12ff
    call ds_app_GUML                 ; 0x1300
    add sp, byte 6                   ; 0x1303
    inc word [bp - 0x0002]           ; 0x1306
    mov ax, word [bp - 0x0002]       ; 0x1309
    cmp ax, strict word 8            ; 0x130c
    jl short @..api_idx_007c_OKMO.l3 ; 0x130f
    mov ax, 0                        ; 0x1311
    push ax                          ; 0x1314
    mov ax, 0xfd                     ; 0x1315
    push ax                          ; 0x1318
    call gfx_entry_12                ; 0x1319
    add sp, byte 4                   ; 0x131c
    lea ax, word [bp - 0x0058]       ; 0x131f
    push ax                          ; 0x1322
    mov ax, 0xc9                     ; 0x1323
    push ax                          ; 0x1326
    call ds_app_mem_TIMR             ; 0x1327
    add sp, byte 4                   ; 0x132a
    mov ax, 6                        ; 0x132d
    push ax                          ; 0x1330
    mov ax, 0xe4                     ; 0x1331
    push ax                          ; 0x1334
    call gfx_entry_13                ; 0x1335
    add sp, byte 4                   ; 0x1338
    mov ax, 0                        ; 0x133b
    push ax                          ; 0x133e
    lea ax, word [bp - 0x0058]       ; 0x133f
    push ax                          ; 0x1342
    call ds_string_loc_QRJV          ; 0x1343
    add sp, byte 4                   ; 0x1346
    lea ax, word [bp - 0x0058]       ; 0x1349
    push ax                          ; 0x134c
    mov ax, 0x248                    ; 0x134d
    imul word [bp + 0x4]             ; 0x1350
    mov bx, ax                       ; 0x1353
    mov al, byte [bx + 0x5e2d]       ; 0x1355
    sub ah, ah                       ; 0x1359
    mov cx, 0xa                      ; 0x135b
    imul cx                          ; 0x135e
    push ax                          ; 0x1360
    mov al, byte [bx + 0x5e2e]       ; 0x1361
    sub ah, ah                       ; 0x1365
    mov cx, ax                       ; 0x1367
    pop ax                           ; 0x1369
    add ax, cx                       ; 0x136a
    add ax, 0x320                    ; 0x136c
    push ax                          ; 0x136f
    call ds_app_mem_TIMR             ; 0x1370
    add sp, byte 4                   ; 0x1373
    mov ax, 6                        ; 0x1376
    push ax                          ; 0x1379
    lea ax, word [bp - 0x0058]       ; 0x137a
    push ax                          ; 0x137d
    call aztec_strlen                ; 0x137e
    pop cx                           ; 0x1381
    mov cx, 0x34                     ; 0x1382
    sub cx, ax                       ; 0x1385
    mov ax, 6                        ; 0x1387
    imul cx                          ; 0x138a
    push ax                          ; 0x138c
    call gfx_entry_13                ; 0x138d
    add sp, byte 4                   ; 0x1390
    mov ax, 0                        ; 0x1393
    push ax                          ; 0x1396
    lea ax, word [bp - 0x0058]       ; 0x1397
    push ax                          ; 0x139a
    call ds_string_loc_QRJV          ; 0x139b
    add sp, byte 4                   ; 0x139e
    mov ax, 0                        ; 0x13a1
    push ax                          ; 0x13a4
    mov ax, 0x47                     ; 0x13a5
    push ax                          ; 0x13a8
    call gfx_entry_12                ; 0x13a9
    add sp, byte 4                   ; 0x13ac
    lea ax, word [bp - 0x0058]       ; 0x13af
    push ax                          ; 0x13b2
    mov ax, 0xca                     ; 0x13b3
    push ax                          ; 0x13b6
    call ds_app_mem_TIMR             ; 0x13b7
    add sp, byte 4                   ; 0x13ba
    mov ax, 0xc                      ; 0x13bd
    push ax                          ; 0x13c0
    mov ax, 0xe4                     ; 0x13c1
    push ax                          ; 0x13c4
    call gfx_entry_13                ; 0x13c5
    add sp, byte 4                   ; 0x13c8
    mov ax, 0                        ; 0x13cb
    push ax                          ; 0x13ce
    lea ax, word [bp - 0x0058]       ; 0x13cf
    push ax                          ; 0x13d2
    call ds_string_loc_QRJV          ; 0x13d3
    add sp, byte 4                   ; 0x13d6
    mov ax, 0                        ; 0x13d9
    push ax                          ; 0x13dc
    mov ax, 0x20                     ; 0x13dd
    push ax                          ; 0x13e0
    call ds_loc_TJTV                 ; 0x13e1
    add sp, byte 4                   ; 0x13e4
    mov ax, 0                        ; 0x13e7
    push ax                          ; 0x13ea
    mov ax, 0xa                      ; 0x13eb
    push ax                          ; 0x13ee
    mov ax, 0x248                    ; 0x13ef
    imul word [bp + 0x4]             ; 0x13f2
    mov bx, ax                       ; 0x13f5
    push word [bx + 0x5c02]          ; 0x13f7
    push word [bx + 0x5c00]          ; 0x13fb
    call ds_app_string_THKS          ; 0x13ff
    add sp, byte 8                   ; 0x1402
    lea ax, word [bp - 0x0058]       ; 0x1405
    push ax                          ; 0x1408
    mov ax, 0xcb                     ; 0x1409
    push ax                          ; 0x140c
    call ds_app_mem_TIMR             ; 0x140d
    add sp, byte 4                   ; 0x1410
    mov ax, 0x12                     ; 0x1413
    push ax                          ; 0x1416
    mov ax, 0xe4                     ; 0x1417
    push ax                          ; 0x141a
    call gfx_entry_13                ; 0x141b
    add sp, byte 4                   ; 0x141e
    mov ax, 0                        ; 0x1421
    push ax                          ; 0x1424
    lea ax, word [bp - 0x0058]       ; 0x1425
    push ax                          ; 0x1428
    call ds_string_loc_QRJV          ; 0x1429
    add sp, byte 4                   ; 0x142c
    mov ax, 0                        ; 0x142f
    push ax                          ; 0x1432
    mov ax, 0x20                     ; 0x1433
    push ax                          ; 0x1436
    call ds_loc_TJTV                 ; 0x1437
    add sp, byte 4                   ; 0x143a
    mov ax, 0                        ; 0x143d
    push ax                          ; 0x1440
    mov ax, 0xa                      ; 0x1441
    push ax                          ; 0x1444
    mov ax, 0x248                    ; 0x1445
    imul word [bp + 0x4]             ; 0x1448
    mov bx, ax                       ; 0x144b
    push word [bx + 0x5c06]          ; 0x144d
    push word [bx + 0x5c04]          ; 0x1451
    call ds_app_string_THKS          ; 0x1455
    add sp, byte 8                   ; 0x1458
    mov ax, 0                        ; 0x145b
    push ax                          ; 0x145e
    mov ax, 0x1d                     ; 0x145f
    push ax                          ; 0x1462
    call gfx_entry_12                ; 0x1463
    add sp, byte 4                   ; 0x1466
    lea ax, word [bp - 0x0058]       ; 0x1469
    push ax                          ; 0x146c
    mov ax, 0xd4                     ; 0x146d
    push ax                          ; 0x1470
    call ds_app_mem_TIMR             ; 0x1471
    add sp, byte 4                   ; 0x1474
    mov ax, 0x5d                     ; 0x1477
    push ax                          ; 0x147a
    mov ax, 6                        ; 0x147b
    push ax                          ; 0x147e
    call gfx_entry_13                ; 0x147f
    add sp, byte 4                   ; 0x1482
    mov ax, 0                        ; 0x1485
    push ax                          ; 0x1488
    lea ax, word [bp - 0x0058]       ; 0x1489
    push ax                          ; 0x148c
    call ds_string_loc_QRJV          ; 0x148d
    add sp, byte 4                   ; 0x1490
    mov ax, 0                        ; 0x1493
    push ax                          ; 0x1496
    mov ax, 0x20                     ; 0x1497
    push ax                          ; 0x149a
    call ds_loc_TJTV                 ; 0x149b
    add sp, byte 4                   ; 0x149e
    mov ax, 0                        ; 0x14a1
    push ax                          ; 0x14a4
    mov ax, 0x1b                     ; 0x14a5
    push ax                          ; 0x14a8
    call gfx_entry_12                ; 0x14a9
    add sp, byte 4                   ; 0x14ac
    lea ax, word [bp - 0x0058]       ; 0x14af
    push ax                          ; 0x14b2
    mov ax, 0x248                    ; 0x14b3
    imul word [bp + 0x4]             ; 0x14b6
    mov bx, ax                       ; 0x14b9
    push word [bx + 0x5c0c]          ; 0x14bb
    call ds_app_OLKR                 ; 0x14bf
    add sp, byte 4                   ; 0x14c2
    mov ax, 0                        ; 0x14c5
    push ax                          ; 0x14c8
    lea ax, word [bp - 0x0058]       ; 0x14c9
    push ax                          ; 0x14cc
    call ds_string_loc_QRJV          ; 0x14cd
    add sp, byte 4                   ; 0x14d0
    mov ax, 0                        ; 0x14d3
    push ax                          ; 0x14d6
    mov ax, 0x2f                     ; 0x14d7
    push ax                          ; 0x14da
    call ds_loc_TJTV                 ; 0x14db
    add sp, byte 4                   ; 0x14de
    lea ax, word [bp - 0x0058]       ; 0x14e1
    push ax                          ; 0x14e4
    mov ax, 0x248                    ; 0x14e5
    imul word [bp + 0x4]             ; 0x14e8
    mov bx, ax                       ; 0x14eb
    push word [bx + 0x5c0e]          ; 0x14ed
    call ds_app_OLKR                 ; 0x14f1
    add sp, byte 4                   ; 0x14f4
    mov ax, 0                        ; 0x14f7
    push ax                          ; 0x14fa
    lea ax, word [bp - 0x0058]       ; 0x14fb
    push ax                          ; 0x14fe
    call ds_string_loc_QRJV          ; 0x14ff
    add sp, byte 4                   ; 0x1502
    mov ax, 0                        ; 0x1505
    push ax                          ; 0x1508
    mov ax, 0x1d                     ; 0x1509
    push ax                          ; 0x150c
    call gfx_entry_12                ; 0x150d
    add sp, byte 4                   ; 0x1510
    lea ax, word [bp - 0x0058]       ; 0x1513
    push ax                          ; 0x1516
    mov ax, 0xd5                     ; 0x1517
    push ax                          ; 0x151a
    call ds_app_mem_TIMR             ; 0x151b
    add sp, byte 4                   ; 0x151e
    mov ax, 0x63                     ; 0x1521
    push ax                          ; 0x1524
    mov ax, 6                        ; 0x1525
    push ax                          ; 0x1528
    call gfx_entry_13                ; 0x1529
    add sp, byte 4                   ; 0x152c
    mov ax, 0                        ; 0x152f
    push ax                          ; 0x1532
    lea ax, word [bp - 0x0058]       ; 0x1533
    push ax                          ; 0x1536
    call ds_string_loc_QRJV          ; 0x1537
    add sp, byte 4                   ; 0x153a
    mov ax, 0                        ; 0x153d
    push ax                          ; 0x1540
    mov ax, 0x20                     ; 0x1541
    push ax                          ; 0x1544
    call ds_loc_TJTV                 ; 0x1545
    add sp, byte 4                   ; 0x1548
    mov ax, 0                        ; 0x154b
    push ax                          ; 0x154e
    mov ax, 0x1b                     ; 0x154f
    push ax                          ; 0x1552
    call gfx_entry_12                ; 0x1553
    add sp, byte 4                   ; 0x1556
    mov ax, 0x248                    ; 0x1559
    imul word [bp + 0x4]             ; 0x155c
    mov bx, ax                       ; 0x155f
    mov ax, word [bx + 0x5c10]       ; 0x1561
    mov cx, 0x64                     ; 0x1565
    imul cx                          ; 0x1568
    mov cx, word [bx + 0x5c12]       ; 0x156a
    cwd                              ; 0x156e
    idiv cx                          ; 0x156f
    mov word [bp - 0x0008], ax       ; 0x1571
    cmp ax, strict word 1            ; 0x1574
    jge short @..api_idx_007c_OKMO.l4 ; 0x1577
    cmp word [bx + 0x5c10], byte 0   ; 0x1579
    jle short @..api_idx_007c_OKMO.l4 ; 0x157e
    mov ax, 1                        ; 0x1580
    jmp short @..api_idx_007c_OKMO.l5 ; 0x1583
@..api_idx_007c_OKMO.l4:
    mov ax, word [bp - 0x0008]       ; 0x1585
@..api_idx_007c_OKMO.l5:
    mov word [bp - 0x0008], ax       ; 0x1588
    lea ax, word [bp - 0x0058]       ; 0x158b
    push ax                          ; 0x158e
    push word [bp - 0x0008]          ; 0x158f
    call ds_app_OLKR                 ; 0x1592
    add sp, byte 4                   ; 0x1595
    mov ax, 0                        ; 0x1598
    push ax                          ; 0x159b
    lea ax, word [bp - 0x0058]       ; 0x159c
    push ax                          ; 0x159f
    call ds_string_loc_QRJV          ; 0x15a0
    add sp, byte 4                   ; 0x15a3
    mov ax, 0                        ; 0x15a6
    push ax                          ; 0x15a9
    mov ax, 0x9098                   ; 0x15aa
    push ax                          ; 0x15ad
    call ds_string_loc_QRJV          ; 0x15ae
    add sp, byte 4                   ; 0x15b1
    mov ax, 0                        ; 0x15b4
    push ax                          ; 0x15b7
    mov ax, 0x1d                     ; 0x15b8
    push ax                          ; 0x15bb
    call gfx_entry_12                ; 0x15bc
    add sp, byte 4                   ; 0x15bf
    mov ax, 0                        ; 0x15c2
    push ax                          ; 0x15c5
    mov ax, 0x28                     ; 0x15c6
    push ax                          ; 0x15c9
    call ds_loc_TJTV                 ; 0x15ca
    add sp, byte 4                   ; 0x15cd
    lea ax, word [bp - 0x0058]       ; 0x15d0
    push ax                          ; 0x15d3
    mov ax, 0x248                    ; 0x15d4
    imul word [bp + 0x4]             ; 0x15d7
    mov bx, ax                       ; 0x15da
    push word [bx + 0x5c12]          ; 0x15dc
    call ds_app_OLKR                 ; 0x15e0
    add sp, byte 4                   ; 0x15e3
    mov ax, 0                        ; 0x15e6
    push ax                          ; 0x15e9
    lea ax, word [bp - 0x0058]       ; 0x15ea
    push ax                          ; 0x15ed
    call ds_string_loc_QRJV          ; 0x15ee
    add sp, byte 4                   ; 0x15f1
    mov ax, 0                        ; 0x15f4
    push ax                          ; 0x15f7
    mov ax, 0x29                     ; 0x15f8
    push ax                          ; 0x15fb
    call ds_loc_TJTV                 ; 0x15fc
    add sp, byte 4                   ; 0x15ff
    mov ax, 0                        ; 0x1602
    push ax                          ; 0x1605
    mov ax, 0xc4                     ; 0x1606
    push ax                          ; 0x1609
    call gfx_entry_12                ; 0x160a
    add sp, byte 4                   ; 0x160d
    lea ax, word [bp - 0x0058]       ; 0x1610
    push ax                          ; 0x1613
    mov ax, 0xd6                     ; 0x1614
    push ax                          ; 0x1617
    call ds_app_mem_TIMR             ; 0x1618
    add sp, byte 4                   ; 0x161b
    mov ax, 0x5d                     ; 0x161e
    push ax                          ; 0x1621
    mov ax, 0x5b                     ; 0x1622
    push ax                          ; 0x1625
    call gfx_entry_13                ; 0x1626
    add sp, byte 4                   ; 0x1629
    mov ax, 0                        ; 0x162c
    push ax                          ; 0x162f
    lea ax, word [bp - 0x0058]       ; 0x1630
    push ax                          ; 0x1633
    call ds_string_loc_QRJV          ; 0x1634
    add sp, byte 4                   ; 0x1637
    mov ax, 0                        ; 0x163a
    push ax                          ; 0x163d
    mov ax, 0x20                     ; 0x163e
    push ax                          ; 0x1641
    call ds_loc_TJTV                 ; 0x1642
    add sp, byte 4                   ; 0x1645
    lea ax, word [bp - 0x0058]       ; 0x1648
    push ax                          ; 0x164b
    mov ax, 0x248                    ; 0x164c
    imul word [bp + 0x4]             ; 0x164f
    mov bx, ax                       ; 0x1652
    push word [bx + bss_5c0a]        ; 0x1654
    push word [bx + bss_5c08]        ; 0x1658
    call ds_app_SVGG                 ; 0x165c
    add sp, byte 6                   ; 0x165f
    mov ax, 0                        ; 0x1662
    push ax                          ; 0x1665
    lea ax, word [bp - 0x0058]       ; 0x1666
    push ax                          ; 0x1669
    call ds_string_loc_QRJV          ; 0x166a
    add sp, byte 4                   ; 0x166d
    push word [bp + 0x4]             ; 0x1670
    call ds_app_OOUT                 ; 0x1673
    pop cx                           ; 0x1676
    push word [bp + 0x4]             ; 0x1677
    call api_idx_0012_PJTU           ; 0x167a
    pop cx                           ; 0x167d
    mov si, ax                       ; 0x167e
    lea di, word [bp - 0x007c]       ; 0x1680
    mov cx, ds                       ; 0x1683
    mov es, cx                       ; 0x1685
    mov cx, 7                        ; 0x1687
    rep movsw                        ; 0x168a
    mov al, byte [bp - 0x0072]       ; 0x168c
    push ax                          ; 0x168f
    mov ax, 0x248                    ; 0x1690
    imul word [bp + 0x4]             ; 0x1693
    mov bx, ax                       ; 0x1696
    pop ax                           ; 0x1698
    mov byte [bx + 0x5e33], al       ; 0x1699
    mov ax, 0                        ; 0x169d
    push ax                          ; 0x16a0
    push word [bp - 0x0070]          ; 0x16a1
    call gfx_entry_12                ; 0x16a4
    add sp, byte 4                   ; 0x16a7
    lea ax, word [bp - 0x0058]       ; 0x16aa
    push ax                          ; 0x16ad
    mov ax, 0xd7                     ; 0x16ae
    push ax                          ; 0x16b1
    call ds_app_mem_TIMR             ; 0x16b2
    add sp, byte 4                   ; 0x16b5
    mov ax, 0x63                     ; 0x16b8
    push ax                          ; 0x16bb
    mov ax, 0x5b                     ; 0x16bc
    push ax                          ; 0x16bf
    call gfx_entry_13                ; 0x16c0
    add sp, byte 4                   ; 0x16c3
    mov ax, 0                        ; 0x16c6
    push ax                          ; 0x16c9
    lea ax, word [bp - 0x0058]       ; 0x16ca
    push ax                          ; 0x16cd
    call ds_string_loc_QRJV          ; 0x16ce
    add sp, byte 4                   ; 0x16d1
    mov ax, 0                        ; 0x16d4
    push ax                          ; 0x16d7
    mov ax, 0x20                     ; 0x16d8
    push ax                          ; 0x16db
    call ds_loc_TJTV                 ; 0x16dc
    add sp, byte 4                   ; 0x16df
    lea ax, word [bp - 0x0058]       ; 0x16e2
    push ax                          ; 0x16e5
    mov ax, 0x248                    ; 0x16e6
    imul word [bp + 0x4]             ; 0x16e9
    mov bx, ax                       ; 0x16ec
    mov ax, word [bx + 0x5c14]       ; 0x16ee
    mov cx, 0xa                      ; 0x16f2
    cwd                              ; 0x16f5
    idiv cx                          ; 0x16f6
    push ax                          ; 0x16f8
    call ds_app_OLKR                 ; 0x16f9
    add sp, byte 4                   ; 0x16fc
    mov ax, 0                        ; 0x16ff
    push ax                          ; 0x1702
    lea ax, word [bp - 0x0058]       ; 0x1703
    push ax                          ; 0x1706
    call ds_string_loc_QRJV          ; 0x1707
    add sp, byte 4                   ; 0x170a
    mov ax, 0                        ; 0x170d
    push ax                          ; 0x1710
    mov ax, 0x2f                     ; 0x1711
    push ax                          ; 0x1714
    call ds_loc_TJTV                 ; 0x1715
    add sp, byte 4                   ; 0x1718
    lea ax, word [bp - 0x0058]       ; 0x171b
    push ax                          ; 0x171e
    mov ax, 0x248                    ; 0x171f
    imul word [bp + 0x4]             ; 0x1722
    mov bx, ax                       ; 0x1725
    mov ax, word [bx + 0x5c16]       ; 0x1727
    mov cx, 0xa                      ; 0x172b
    cwd                              ; 0x172e
    idiv cx                          ; 0x172f
    push ax                          ; 0x1731
    call ds_app_OLKR                 ; 0x1732
    add sp, byte 4                   ; 0x1735
    mov ax, 0                        ; 0x1738
    push ax                          ; 0x173b
    lea ax, word [bp - 0x0058]       ; 0x173c
    push ax                          ; 0x173f
    call ds_string_loc_QRJV          ; 0x1740
    add sp, byte 4                   ; 0x1743
    push word [bp + 0x4]             ; 0x1746
    call api_idx_0004_RMVO           ; 0x1749
    pop cx                           ; 0x174c
    mov word [bp - 0x0004], 0        ; 0x174d
    mov ax, 0x248                    ; 0x1752
    imul word [bp + 0x4]             ; 0x1755
    mov bx, ax                       ; 0x1758
    mov al, byte [bx + 0x5e2f]       ; 0x175a
    sub ah, ah                       ; 0x175e
    shl ax, 1                        ; 0x1760
    mov bx, ax                       ; 0x1762
    mov ax, word [bx + 0x920]        ; 0x1764
    mov word [bp - 0x0006], ax       ; 0x1768
    cmp ax, strict word 0xffff       ; 0x176b
    jne short @..api_idx_007c_OKMO.l6 ; 0x176e
    mov ax, 0x248                    ; 0x1770
    imul word [bp + 0x4]             ; 0x1773
    mov bx, ax                       ; 0x1776
    cmp byte [bx + 0x5d5c], 0        ; 0x1778
    jbe short @..api_idx_007c_OKMO.l6 ; 0x177d
    mov ax, 0                        ; 0x177f
    jmp short @..api_idx_007c_OKMO.l7 ; 0x1782
@..api_idx_007c_OKMO.l6:
    mov ax, word [bp - 0x0006]       ; 0x1784
@..api_idx_007c_OKMO.l7:
    mov word [bp - 0x0006], ax       ; 0x1787
    cmp ax, strict word 0            ; 0x178a
    jg short @..api_idx_007c_OKMO.l8 ; 0x178d
    mov ax, 0x248                    ; 0x178f
    imul word [bp + 0x4]             ; 0x1792
    mov bx, ax                       ; 0x1795
    cmp byte [bx + 0x5d5d], 0        ; 0x1797
    jbe short @..api_idx_007c_OKMO.l8 ; 0x179c
    mov ax, 1                        ; 0x179e
    jmp short @..api_idx_007c_OKMO.l9 ; 0x17a1
@..api_idx_007c_OKMO.l8:
    mov ax, word [bp - 0x0006]       ; 0x17a3
@..api_idx_007c_OKMO.l9:
    mov word [bp - 0x0006], ax       ; 0x17a6
    cmp ax, strict word 0xffff       ; 0x17a9
    je short @..api_idx_007c_OKMO.l10 ; 0x17ac
    mov ax, 0x2d                     ; 0x17ae
    push ax                          ; 0x17b1
    mov ax, 0x51                     ; 0x17b2
    push ax                          ; 0x17b5
    call gfx_entry_13                ; 0x17b6
    add sp, byte 4                   ; 0x17b9
    mov ax, 6                        ; 0x17bc
    push ax                          ; 0x17bf
    mov al, byte [bp - 0x0006]       ; 0x17c0
    sub ah, ah                       ; 0x17c3
    push ax                          ; 0x17c5
    call ds_loc_TJTV                 ; 0x17c6
    add sp, byte 4                   ; 0x17c9
    inc word [bp - 0x0004]           ; 0x17cc
@..api_idx_007c_OKMO.l10:
    mov word [bp - 0x006e], 6        ; 0x17cf
    mov word [bp - 0x006c], 7        ; 0x17d4
    mov word [bp - 0x006a], 5        ; 0x17d9
    mov word [bp - 0x0068], 4        ; 0x17de
    mov word [bp - 0x0066], 8        ; 0x17e3
    mov word [bp - 0x0064], 9        ; 0x17e8
    mov word [bp - 0x0062], 1        ; 0x17ed
    mov word [bp - 0x0006], 0xffff   ; 0x17f2
    mov word [bp - 0x0002], 0        ; 0x17f7
@..api_idx_007c_OKMO.l11:
    mov ax, word [bp - 0x0002]       ; 0x17fc
    shl ax, 1                        ; 0x17ff
    mov bx, ax                       ; 0x1801
    add bx, bp                       ; 0x1803
    mov ax, word [bx - 0x006e]       ; 0x1805
    mov word [bp - 0x0008], ax       ; 0x1808
    cmp word [bp - 0x0004], byte 6   ; 0x180b
    jge short @..api_idx_007c_OKMO.l12 ; 0x180f
    shl ax, 1                        ; 0x1811
    mov bx, ax                       ; 0x1813
    mov ax, word [bx + 0x92c]        ; 0x1815
    cmp ax, word [bp - 0x0006]       ; 0x1819
    je short @..api_idx_007c_OKMO.l12 ; 0x181c
    mov ax, 0x248                    ; 0x181e
    imul word [bp + 0x4]             ; 0x1821
    add ax, word [bp - 0x0008]       ; 0x1824
    mov bx, ax                       ; 0x1827
    cmp byte [bx + 0x5d5a], 0        ; 0x1829
    jbe short @..api_idx_007c_OKMO.l12 ; 0x182e
    mov ax, word [bp - 0x0004]       ; 0x1830
    mov cx, 3                        ; 0x1833
    cwd                              ; 0x1836
    idiv cx                          ; 0x1837
    mov ax, dx                       ; 0x1839
    mov cx, 0xb                      ; 0x183b
    imul cx                          ; 0x183e
    add ax, strict word 0x2d         ; 0x1840
    push ax                          ; 0x1843
    mov ax, word [bp - 0x0004]       ; 0x1844
    mov cx, 3                        ; 0x1847
    cwd                              ; 0x184a
    idiv cx                          ; 0x184b
    mov cx, 0x17                     ; 0x184d
    imul cx                          ; 0x1850
    add ax, strict word 0x51         ; 0x1852
    push ax                          ; 0x1855
    call gfx_entry_13                ; 0x1856
    add sp, byte 4                   ; 0x1859
    mov ax, 6                        ; 0x185c
    push ax                          ; 0x185f
    mov ax, word [bp - 0x0008]       ; 0x1860
    shl ax, 1                        ; 0x1863
    mov bx, ax                       ; 0x1865
    mov al, byte [bx + 0x92c]        ; 0x1867
    sub ah, ah                       ; 0x186b
    push ax                          ; 0x186d
    call ds_loc_TJTV                 ; 0x186e
    add sp, byte 4                   ; 0x1871
    mov ax, word [bp - 0x0008]       ; 0x1874
    shl ax, 1                        ; 0x1877
    mov bx, ax                       ; 0x1879
    mov ax, word [bx + 0x92c]        ; 0x187b
    mov word [bp - 0x0006], ax       ; 0x187f
    inc word [bp - 0x0004]           ; 0x1882
@..api_idx_007c_OKMO.l12:
    inc word [bp - 0x0002]           ; 0x1885
    mov ax, word [bp - 0x0002]       ; 0x1888
    cmp ax, strict word 7            ; 0x188b
    jge short @..api_idx_007c_OKMO.l13 ; 0x188e
    jmp near @..api_idx_007c_OKMO.l11 ; 0x1890
@..api_idx_007c_OKMO.l13:
    ret                              ; 0x1893
