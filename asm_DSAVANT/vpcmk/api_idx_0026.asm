api_idx_0026:
    mov ax, 0xffda                   ; 0x11f4
    call ds_dispatch_f40b            ; 0x11f7
    mov word [data_904e], 0xffff     ; 0x11fa
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
    call ds_dispatch_c283            ; 0x122c
    add sp, byte 0x0a                ; 0x122f
    mov word [bp - 0x0026], ax       ; 0x1232
    push word [bp - 0x0008]          ; 0x1235
    push word [bp - 0x0006]          ; 0x1238
    push word [bp - 0x0004]          ; 0x123b
    push word [bp - 0x0002]          ; 0x123e
    call ds_dispatch_bc9a            ; 0x1241
    add sp, byte 8                   ; 0x1244
    lea ax, word [bp - 0x0024]       ; 0x1247
    push ax                          ; 0x124a
    push word [bp + 0x4]             ; 0x124b
    call ds_dispatch_b53b            ; 0x124e
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
    call ds_dispatch_c0c1            ; 0x1271
    add sp, byte 0x0c                ; 0x1274
    lea ax, word [bp - 0x0024]       ; 0x1277
    push ax                          ; 0x127a
    mov ax, word [bp + 0x4]          ; 0x127b
    inc ax                           ; 0x127e
    push ax                          ; 0x127f
    call ds_dispatch_b53b            ; 0x1280
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
    call ds_dispatch_c0c1            ; 0x12a3
    add sp, byte 0x0c                ; 0x12a6
    lea ax, word [bp - 0x0024]       ; 0x12a9
    push ax                          ; 0x12ac
    mov ax, word [bp + 0x4]          ; 0x12ad
    inc ax                           ; 0x12b0
    inc ax                           ; 0x12b1
    push ax                          ; 0x12b2
    call ds_dispatch_b53b            ; 0x12b3
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
    call ds_dispatch_c0c1            ; 0x12d6
    add sp, byte 0x0c                ; 0x12d9
    lea ax, word [bp - 0x0024]       ; 0x12dc
    push ax                          ; 0x12df
    mov ax, word [bp + 0x4]          ; 0x12e0
    inc ax                           ; 0x12e3
    inc ax                           ; 0x12e4
    inc ax                           ; 0x12e5
    push ax                          ; 0x12e6
    call ds_dispatch_b53b            ; 0x12e7
    add sp, byte 4                   ; 0x12ea
    mov ax, 0xc2                     ; 0x12ed
    push ax                          ; 0x12f0
    mov ax, 0x9b                     ; 0x12f1
    push ax                          ; 0x12f4
    call ds_dispatch_e823            ; 0x12f5
    add sp, byte 4                   ; 0x12f8
    mov ax, word [bp - 0x0004]       ; 0x12fb
    add ax, strict word 0x16         ; 0x12fe
    push ax                          ; 0x1301
    lea ax, word [bp - 0x0024]       ; 0x1302
    push ax                          ; 0x1305
    call ds_dispatch_fa90            ; 0x1306
    pop cx                           ; 0x1309
    mov cx, ax                       ; 0x130a
    mov ax, 0x11                     ; 0x130c
    sub ax, cx                       ; 0x130f
    mov cx, 6                        ; 0x1311
    imul cx                          ; 0x1314
    inc ax                           ; 0x1316
    inc ax                           ; 0x1317
    mov cx, data_0002                ; 0x1318
    cwd                              ; 0x131b
    idiv cx                          ; 0x131c
    add ax, word [bp - 0x0002]       ; 0x131e
    add ax, strict word 0x5d         ; 0x1321
    push ax                          ; 0x1324
    call ds_dispatch_e809            ; 0x1325
    add sp, byte 4                   ; 0x1328
    mov ax, 0                        ; 0x132b
    push ax                          ; 0x132e
    lea ax, word [bp - 0x0024]       ; 0x132f
    push ax                          ; 0x1332
    call ds_dispatch_e84e            ; 0x1333
    add sp, byte 4                   ; 0x1336
    push word [bp + 0xc]             ; 0x1339
    mov ax, 0xe38                    ; 0x133c
    push ax                          ; 0x133f
    call ds_dispatch_f364            ; 0x1340
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
    call ds_dispatch_bf97            ; 0x1365
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
    call ds_dispatch_baa6            ; 0x1393
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
    call ds_dispatch_baa6            ; 0x13be
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
    mov ax, data_0002                ; 0x13e8
    push ax                          ; 0x13eb
    call ds_dispatch_baa6            ; 0x13ec
    add sp, byte 0x0e                ; 0x13ef
