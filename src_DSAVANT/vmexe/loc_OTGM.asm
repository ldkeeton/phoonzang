; auto-generated
loc_OTGM:
    mov ax, 0xfee2                   ; 0x0f67
    call aztec_csav                  ; 0x0f6a
    cmp word [bp + 4], byte 0        ; 0x0f6d
    jne short .forward1              ; 0x0f71
    mov ax, 0x2c                     ; 0x0f73
    imul word [bp + 6]               ; 0x0f76
    mov si, ax                       ; 0x0f79
    mov ax, word [bp + 4]            ; 0x0f7b
    shl ax, 1                        ; 0x0f7e
    mov bx, ax                       ; 0x0f80
    mov bx, word [bx + party_char]   ; 0x0f82
    cmp byte [bx + si + member_rec.f_001f], 0 ; 0x0f86
    jne short .forward1              ; 0x0f8a
    ret                              ; 0x0f8c
.forward1:
    call run_party_screen_animation  ; 0x0f8d
    mov word [bp - 0xf8], 7          ; 0x0f90
    mov ax, 6                        ; 0x0f96
    imul word [bp + 8]               ; 0x0f99
    mov bx, ax                       ; 0x0f9c
    mov al, byte [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0005] ; 0x0f9e
    sub ah, ah                       ; 0x0fa2
    jmp short .forward2              ; 0x0fa4
.back1:
    mov word [bp - 0x12], 1          ; 0x0fa6
    mov word [bp - 0xfc], 1          ; 0x0fab
    jmp short .forward3              ; 0x0fb1
.back2:
    mov word [bp - 0x12], 1          ; 0x0fb3
    mov word [bp - 0xfc], 1          ; 0x0fb8
    jmp short .forward3              ; 0x0fbe
.back3:
    mov word [bp - 0x12], 0          ; 0x0fc0
    mov word [bp - 0xfc], 4          ; 0x0fc5
    jmp short .forward3              ; 0x0fcb
.forward2:
    cmp ax, strict word 0            ; 0x0fcd
    je short .back1                  ; 0x0fd0
    cmp ax, strict word 1            ; 0x0fd2
    je short .back2                  ; 0x0fd5
    cmp ax, strict word 2            ; 0x0fd7
    je short .back3                  ; 0x0fda
.forward3:
    mov ax, 6                        ; 0x0fdc
    cmp word [bp + 0xa], byte 0      ; 0x0fdf
    jle short .forward4              ; 0x0fe3
    mov ax, 0xc                      ; 0x0fe5
.forward4:
    mov word [bp - 0xfe], ax         ; 0x0fe8
    mov ax, 0xc                      ; 0x0fec
    cwd                              ; 0x0fef
    idiv word [bp - 0xfc]            ; 0x0ff0
    mov word [bp - 0x100], ax        ; 0x0ff4
    mov ax, 6                        ; 0x0ff8
    imul word [bp + 8]               ; 0x0ffb
    mov bx, ax                       ; 0x0ffe
    mov al, byte [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0004] ; 0x1000
    sub ah, ah                       ; 0x1004
    mov word [bp - 0xfa], ax         ; 0x1006
    cmp word [bp + 4], byte 0        ; 0x100a
    je short .forward5               ; 0x100e
    mov ax, word [bp + 4]            ; 0x1010
    cmp ax, strict word 6            ; 0x1013
    jne short .forward8              ; 0x1016
.forward5:
    mov word [bp - 0xc], 0           ; 0x1018
    mov word [bp - 6], 0             ; 0x101d
    mov ax, word [bp - 0xfe]         ; 0x1022
    mov word [bp - 8], ax            ; 0x1026
    mov word [bp - 0xa], 1           ; 0x1029
    mov word [bp - 0xe], 0           ; 0x102e
    mov ax, word [bp + 6]            ; 0x1033
    mov cx, 2                        ; 0x1036
    cwd                              ; 0x1039
    idiv cx                          ; 0x103a
    mov ax, dx                       ; 0x103c
    test ax, ax                      ; 0x103e
    jne short .forward6              ; 0x1040
    mov word [bp - 0x10], 0          ; 0x1042
    mov word [bp - 0x106], 0         ; 0x1047
    jmp short .forward7              ; 0x104d
.forward6:
    mov word [bp - 0x10], 1          ; 0x104f
    mov word [bp - 0x106], 1         ; 0x1054
.forward7:
    jmp near .forward15              ; 0x105a
.forward8:
    mov word [bp - 0xc], 1           ; 0x105d
    mov ax, word [bp - 0xfe]         ; 0x1062
    dec ax                           ; 0x1066
    mov word [bp - 6], ax            ; 0x1067
    mov word [bp - 8], 0             ; 0x106a
    mov word [bp - 0xa], 0xffff      ; 0x106f
    mov word [bp - 0xe], 0xffff      ; 0x1074
    mov al, byte [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0005] ; 0x1079
    sub ah, ah                       ; 0x107d
    jmp short .forward9              ; 0x107f
.back4:
    inc word [bp + 8]                ; 0x1081
    inc word [bp - 0xfa]             ; 0x1084
    jmp short .forward10             ; 0x1088
.back5:
    add word [bp - 0xfa], byte 3     ; 0x108a
    jmp short .forward10             ; 0x108f
.forward9:
    cmp ax, strict word 1            ; 0x1091
    je short .back4                  ; 0x1094
    cmp ax, strict word 2            ; 0x1096
    je short .back5                  ; 0x1099
.forward10:
    cmp word [bp + 0xe], byte -1     ; 0x109b
    je short .forward11              ; 0x109f
    mov ax, word [bp + 0xe]          ; 0x10a1
    mov cx, 2                        ; 0x10a4
    cwd                              ; 0x10a7
    idiv cx                          ; 0x10a8
    mov ax, dx                       ; 0x10aa
    test ax, ax                      ; 0x10ac
    jne short .forward13             ; 0x10ae
.forward11:
    mov word [bp - 0x10], 0          ; 0x10b0
    mov ax, 0                        ; 0x10b5
    cmp word [bp - 0x12], byte 0     ; 0x10b8
    je short .forward12              ; 0x10bc
    mov ax, 1                        ; 0x10be
.forward12:
    mov word [bp - 0x106], ax        ; 0x10c1
    jmp short .forward15             ; 0x10c5
.forward13:
    mov word [bp - 0x10], 1          ; 0x10c7
    mov ax, 1                        ; 0x10cc
    cmp word [bp - 0x12], byte 0     ; 0x10cf
    je short .forward14              ; 0x10d3
    mov ax, 0                        ; 0x10d5
.forward14:
    mov word [bp - 0x106], ax        ; 0x10d8
.forward15:
    push word [bss_90de]             ; 0x10dc
    call play_sound_effect           ; 0x10e0
    pop cx                           ; 0x10e3
    mov ax, 6                        ; 0x10e4
    imul word [bp + 8]               ; 0x10e7
    mov bx, ax                       ; 0x10ea
    mov ax, word [bx + spell_table + spell_table_rec_size*102] ; 0x10ec
    mov word [bp - 0xec], ax         ; 0x10f0
    mov ax, word [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0002] ; 0x10f4
    mov word [bp - 0xee], ax         ; 0x10f8
    mov word [bp - 0xea], 0          ; 0x10fc
    mov word [bp - 0xe8], 0          ; 0x1102
    mov word [bp - 0xe6], 0          ; 0x1108
    mov word [bp - 0xe4], 0          ; 0x110e
    mov word [bp - 0xe2], 0          ; 0x1114
    mov word [bp - 0xe0], 0          ; 0x111a
    mov word [bp - 0xde], 0          ; 0x1120
    mov word [bp - 0xdc], 3          ; 0x1126
    mov word [bp - 0xda], 3          ; 0x112c
    mov word [bp - 0xd8], 3          ; 0x1132
    mov word [bp - 0xd6], 3          ; 0x1138
    mov word [bp - 0xd4], 3          ; 0x113e
    mov word [bp - 0xd2], 3          ; 0x1144
    mov word [bp - 0xd0], 2          ; 0x114a
    mov word [bp - 0xce], 2          ; 0x1150
    mov word [bp - 0xcc], 2          ; 0x1156
    mov word [bp - 0xca], 2          ; 0x115c
    mov word [bp - 0xc8], 1          ; 0x1162
    mov word [bp - 0xc6], 1          ; 0x1168
    mov word [bp - 0xc4], 3          ; 0x116e
    mov word [bp - 0xc2], 2          ; 0x1174
    mov word [bp - 0xc0], 2          ; 0x117a
    mov word [bp - 0xbe], 2          ; 0x1180
    mov word [bp - 0xbc], 3          ; 0x1186
    mov word [bp - 0xba], 2          ; 0x118c
    mov word [bp - 0xb8], 2          ; 0x1192
    mov word [bp - 0xb6], 2          ; 0x1198
    mov word [bp - 0xb4], 4          ; 0x119e
    mov word [bp - 0xb2], 3          ; 0x11a4
    mov word [bp - 0xb0], 3          ; 0x11aa
    mov word [bp - 0xae], 3          ; 0x11b0
    mov word [bp - 0xac], 1          ; 0x11b6
    mov word [bp - 0xaa], 1          ; 0x11bc
    mov word [bp - 0xa8], 1          ; 0x11c2
    mov word [bp - 0xa6], 1          ; 0x11c8
    mov word [bp - 0xa4], 3          ; 0x11ce
    mov word [bp - 0xa2], 3          ; 0x11d4
    mov word [bp - 0xa0], 3          ; 0x11da
    mov word [bp - 0x9e], 3          ; 0x11e0
    mov word [bp - 0x9c], 3          ; 0x11e6
    mov word [bp - 0x9a], 5          ; 0x11ec
    mov word [bp - 0x98], 3          ; 0x11f2
    mov word [bp - 0x96], 5          ; 0x11f8
    mov word [bp - 0x94], 4          ; 0x11fe
    mov word [bp - 0x92], 3          ; 0x1204
    mov word [bp - 0x90], 3          ; 0x120a
    mov word [bp - 0x8e], 4          ; 0x1210
    mov word [bp - 0x8c], 4          ; 0x1216
    mov word [bp - 0x8a], 3          ; 0x121c
    mov word [bp - 0x88], 2          ; 0x1222
    mov word [bp - 0x86], 6          ; 0x1228
    mov word [bp - 0x84], 5          ; 0x122e
    mov word [bp - 0x82], 4          ; 0x1234
    mov word [bp - 0x80], 3          ; 0x123a
    mov word [bp - 0x7e], 2          ; 0x123f
    mov word [bp - 0x7c], 6          ; 0x1244
    mov word [bp - 0x7a], 5          ; 0x1249
    mov word [bp - 0x78], 3          ; 0x124e
    mov word [bp - 0x76], 3          ; 0x1253
    mov word [bp - 0x42], 0x57       ; 0x1258
    mov word [bp - 0x2a], 0xe8       ; 0x125d
    mov word [bp - 0x40], 0x62       ; 0x1262
    mov word [bp - 0x28], 0xdd       ; 0x1267
    mov word [bp - 0x3e], 0x6c       ; 0x126c
    mov word [bp - 0x26], 0xd3       ; 0x1271
    mov word [bp - 0x3c], 0x75       ; 0x1276
    mov word [bp - 0x24], 0xca       ; 0x127b
    mov word [bp - 0x3a], 0x7d       ; 0x1280
    mov word [bp - 0x22], 0xc2       ; 0x1285
    mov word [bp - 0x38], 0x84       ; 0x128a
    mov word [bp - 0x20], 0xbb       ; 0x128f
    mov word [bp - 0x36], 0x8a       ; 0x1294
    mov word [bp - 0x1e], 0xb5       ; 0x1299
    mov word [bp - 0x34], 0x8f       ; 0x129e
    mov word [bp - 0x1c], 0xb0       ; 0x12a3
    mov word [bp - 0x32], 0x93       ; 0x12a8
    mov word [bp - 0x1a], 0xac       ; 0x12ad
    mov word [bp - 0x30], 0x96       ; 0x12b2
    mov word [bp - 0x18], 0xa9       ; 0x12b7
    mov word [bp - 0x2e], 0x98       ; 0x12bc
    mov word [bp - 0x16], 0xa7       ; 0x12c1
    mov word [bp - 0x2c], 0x99       ; 0x12c6
    mov word [bp - 0x14], 0xa6       ; 0x12cb
    mov word [bp - 0x5a], 0x49       ; 0x12d0
    mov word [bp - 0x58], 0x47       ; 0x12d5
    mov word [bp - 0x56], 0x46       ; 0x12da
    mov word [bp - 0x54], 0x45       ; 0x12df
    mov word [bp - 0x52], 0x44       ; 0x12e4
    mov word [bp - 0x50], 0x43       ; 0x12e9
    mov word [bp - 0x4e], 0x42       ; 0x12ee
    mov word [bp - 0x4c], 0x42       ; 0x12f3
    mov word [bp - 0x4a], 0x42       ; 0x12f8
    mov word [bp - 0x48], 0x41       ; 0x12fd
    mov word [bp - 0x46], 0x41       ; 0x1302
    mov word [bp - 0x44], 0x41       ; 0x1307
    mov word [bp - 0x72], 0x64       ; 0x130c
    mov word [bp - 0x70], 0x5e       ; 0x1311
    mov word [bp - 0x6e], 0x58       ; 0x1316
    mov word [bp - 0x6c], 0x52       ; 0x131b
    mov word [bp - 0x6a], 0x4c       ; 0x1320
    mov word [bp - 0x68], 0x46       ; 0x1325
    mov word [bp - 0x66], 0x40       ; 0x132a
    mov word [bp - 0x64], 0x3a       ; 0x132f
    mov word [bp - 0x62], 0x34       ; 0x1334
    mov word [bp - 0x60], 0x2e       ; 0x1339
    mov word [bp - 0x5e], 0x28       ; 0x133e
    mov word [bp - 0x5c], 0x22       ; 0x1343
    mov ax, 0                        ; 0x1348
    cmp word [bp - 0xc], byte 0      ; 0x134b
    je short .forward16              ; 0x134f
    mov ax, 3                        ; 0x1351
    cmp byte [bx + spell_table + spell_table_rec_size*102 + spell_table_rec.f_0005], 2 ; 0x1354
    je short .forward16              ; 0x1359
    mov ax, 5                        ; 0x135b
    cmp word [bp + 0xa], byte 0      ; 0x135e
    jle short .forward16             ; 0x1362
    mov ax, 0xb                      ; 0x1364
.forward16:
    mov word [bp - 0x104], ax        ; 0x1367
    mov word [bp - 0x102], ax        ; 0x136b
    mov ax, 0                        ; 0x136f
    push ax                          ; 0x1372
    mov ax, 2                        ; 0x1373
    push ax                          ; 0x1376
    call call_get_free_space         ; 0x1377
    add sp, byte 4                   ; 0x137a
    cmp dx, byte 0                   ; 0x137d
    jl short .forward17              ; 0x1380
    jne short .forward18             ; 0x1382
    cmp ax, 0x4e20                   ; 0x1384
    ja short .forward18              ; 0x1387
.forward17:
    jmp near .forward24              ; 0x1389
.forward18:
    mov ax, 0                        ; 0x138c
    push ax                          ; 0x138f
    mov ax, 2                        ; 0x1390
    push ax                          ; 0x1393
    mov ax, 0x8f                     ; 0x1394
    push ax                          ; 0x1397
    mov ax, 0xf7                     ; 0x1398
    push ax                          ; 0x139b
    mov ax, 0x21                     ; 0x139c
    push ax                          ; 0x139f
    mov ax, 0x48                     ; 0x13a0
    push ax                          ; 0x13a3
    call call_cache_area             ; 0x13a4
    add sp, byte 0xc                 ; 0x13a7
    mov word [bp - 0x11a], dx        ; 0x13aa
    mov word [bp - 0x11c], ax        ; 0x13ae
    mov word [bp - 4], 0             ; 0x13b2
    mov ax, word [bp - 6]            ; 0x13b7
    mov word [bp - 2], ax            ; 0x13ba
    jmp near .forward22              ; 0x13bd
.back6:
    les bx, word [tick_counter_ptr]  ; 0x13c0
    mov ax, word [es:bx]             ; 0x13c4
    mov dx, word [es:bx + 2]         ; 0x13c7
    mov word [bp - 0x116], dx        ; 0x13cb
    mov word [bp - 0x118], ax        ; 0x13cf
    mov ax, word [bp - 2]            ; 0x13d3
    shl ax, 1                        ; 0x13d6
    mov bx, ax                       ; 0x13d8
    add bx, bp                       ; 0x13da
    mov ax, word [bx - 0x72]         ; 0x13dc
    mov cx, 0x2d                     ; 0x13df
    imul cx                          ; 0x13e2
    mov cx, 0x64                     ; 0x13e4
    cwd                              ; 0x13e7
    idiv cx                          ; 0x13e8
    mov word [bp - 0x108], ax        ; 0x13ea
    mov ax, word [bx - 0x72]         ; 0x13ee
    imul word [bp - 0xec]            ; 0x13f1
    cwd                              ; 0x13f5
    idiv cx                          ; 0x13f6
    mov word [bp - 0xf0], ax         ; 0x13f8
    cmp word [bp - 0x106], byte 0    ; 0x13fc
    je short .forward19              ; 0x1401
    mov cx, 0                        ; 0x1403
    sub cx, ax                       ; 0x1406
    mov ax, cx                       ; 0x1408
    mov cx, word [bp - 0xfa]         ; 0x140a
    shl cx, 1                        ; 0x140e
    mov bx, cx                       ; 0x1410
    add bx, bp                       ; 0x1412
    mov cx, word [bx - 0xec]         ; 0x1414
    shl cx, 1                        ; 0x1418
    shl cx, 1                        ; 0x141a
    shl cx, 1                        ; 0x141c
    sub ax, cx                       ; 0x141e
    mov word [bp - 0xf0], ax         ; 0x1420
.forward19:
    mov ax, word [bp - 0xee]         ; 0x1424
    imul word [bp - 0x66]            ; 0x1428
    mov cx, 0x64                     ; 0x142b
    cwd                              ; 0x142e
    idiv cx                          ; 0x142f
    mov word [bp - 0xf2], ax         ; 0x1431
    mov al, byte [bp - 0xfa]         ; 0x1435
    mov byte [bp - 0x114], al        ; 0x1439
    mov byte [bp - 0x113], 0         ; 0x143d
    mov ax, 0                        ; 0x1442
    push ax                          ; 0x1445
    push ax                          ; 0x1446
    push word [bp - 0x11a]           ; 0x1447
    push word [bp - 0x11c]           ; 0x144b
    call call_restore_screen         ; 0x144f
    add sp, byte 8                   ; 0x1452
    mov ax, 0x18                     ; 0x1455
    imul word [bp - 0x10]            ; 0x1458
    mov cx, word [bp - 2]            ; 0x145b
    shl cx, 1                        ; 0x145e
    add ax, cx                       ; 0x1460
    mov bx, ax                       ; 0x1462
    add bx, bp                       ; 0x1464
    mov ax, word [bx - 0x42]         ; 0x1466
    add ax, word [bp - 0xf0]         ; 0x1469
    mov word [bp - 0xf4], ax         ; 0x146d
    mov bx, cx                       ; 0x1471
    add bx, bp                       ; 0x1473
    mov ax, word [bx - 0x5a]         ; 0x1475
    add ax, word [bp - 0xf2]         ; 0x1478
    mov word [bp - 0xf6], ax         ; 0x147c
    mov ax, word [bp - 0x102]        ; 0x1480
    shl ax, 1                        ; 0x1484
    mov bx, ax                       ; 0x1486
    add bx, bp                       ; 0x1488
    mov cx, word [bx - 0x72]         ; 0x148a
    mov ax, 0x64                     ; 0x148d
    sub ax, cx                       ; 0x1490
    push ax                          ; 0x1492
    mov ax, 0                        ; 0x1493
    push ax                          ; 0x1496
    lea ax, word [bp - 0x114]        ; 0x1497
    push ax                          ; 0x149b
    push word [bp - 0x106]           ; 0x149c
    mov ax, 0x8e                     ; 0x14a0
    push ax                          ; 0x14a3
    mov ax, 0x21                     ; 0x14a4
    push ax                          ; 0x14a7
    mov ax, 0xf8                     ; 0x14a8
    push ax                          ; 0x14ab
    mov ax, 0x48                     ; 0x14ac
    push ax                          ; 0x14af
    push word [bp - 0xf6]            ; 0x14b0
    push word [bp - 0xf4]            ; 0x14b4
    push word [bp - 0xf8]            ; 0x14b8
    call call_draw_text              ; 0x14bc
    add sp, byte 0x16                ; 0x14bf
    mov ax, 0x90                     ; 0x14c2
    push ax                          ; 0x14c5
    mov ax, 0xf8                     ; 0x14c6
    push ax                          ; 0x14c9
    mov ax, 0x21                     ; 0x14ca
    push ax                          ; 0x14cd
    mov ax, 0x48                     ; 0x14ce
    push ax                          ; 0x14d1
    call call_show_area              ; 0x14d2
    add sp, byte 8                   ; 0x14d5
    mov ax, word [bp - 0xa]          ; 0x14d8
    add word [bp - 0x102], ax        ; 0x14db
    mov ax, word [bp - 4]            ; 0x14df
    inc ax                           ; 0x14e2
    cwd                              ; 0x14e3
    idiv word [bp - 0x100]           ; 0x14e4
    mov ax, dx                       ; 0x14e8
    test ax, ax                      ; 0x14ea
    jne short .back7                 ; 0x14ec
    mov ax, word [bp - 0xa]          ; 0x14ee
    add word [bp - 0xfa], ax         ; 0x14f1
    mov ax, word [bp - 0x104]        ; 0x14f5
    mov word [bp - 0x102], ax        ; 0x14f9
.back7:
    les bx, word [tick_counter_ptr]  ; 0x14fd
    mov ax, word [es:bx]             ; 0x1501
    mov dx, word [es:bx + 2]         ; 0x1504
    cmp dx, word [bp - 0x116]        ; 0x1508
    jne short .forward20             ; 0x150c
    cmp ax, word [bp - 0x118]        ; 0x150e
.forward20:
    jne short .forward21             ; 0x1512
    jmp short .back7                 ; 0x1514
.forward21:
    mov ax, word [bp - 0xa]          ; 0x1516
    add word [bp - 2], ax            ; 0x1519
    inc word [bp - 4]                ; 0x151c
.forward22:
    mov ax, word [bp - 4]            ; 0x151f
    cmp ax, word [bp - 0xfe]         ; 0x1522
    jge short .forward23             ; 0x1526
    jmp near .back6                  ; 0x1528
.forward23:
    mov ax, 0                        ; 0x152b
    push ax                          ; 0x152e
    mov ax, 1                        ; 0x152f
    push ax                          ; 0x1532
    push word [bp - 0x11a]           ; 0x1533
    push word [bp - 0x11c]           ; 0x1537
    call call_restore_screen         ; 0x153b
    add sp, byte 8                   ; 0x153e
.forward24:
    mov ax, 1                        ; 0x1541
    push ax                          ; 0x1544
    call call_wait_sound             ; 0x1545
    pop cx                           ; 0x1548
    cmp word [bp + 0x10], byte 0     ; 0x1549
    je short .forward27              ; 0x154d
    cmp word [bp - 0xe], byte -1     ; 0x154f
    jne short .forward25             ; 0x1553
    mov word [bss_90dc], 2           ; 0x1555
    mov ax, 0x8f                     ; 0x155b
    push ax                          ; 0x155e
    mov ax, 0xf7                     ; 0x155f
    push ax                          ; 0x1562
    mov ax, 0x20                     ; 0x1563
    push ax                          ; 0x1566
    mov ax, 0x48                     ; 0x1567
    push ax                          ; 0x156a
    call call_show_area              ; 0x156b
    add sp, byte 8                   ; 0x156e
    jmp short .forward26             ; 0x1571
.forward25:
    mov ax, word [bp - 0xe]          ; 0x1573
    push ax                          ; 0x1576
    mov ax, 6                        ; 0x1577
    imul word [bp + 0xa]             ; 0x157a
    mov bx, ax                       ; 0x157d
    pop ax                           ; 0x157f
    mov word [bx + bss_90ca], ax     ; 0x1580
    mov word [bss_8320], 0           ; 0x1584
    mov ax, 4                        ; 0x158a
    push ax                          ; 0x158d
    call api_idx_0004_QUPL           ; 0x158e
    pop cx                           ; 0x1591
.forward26:
    jmp short .return1               ; 0x1592
.forward27:
    mov ax, 0x8f                     ; 0x1594
    push ax                          ; 0x1597
    mov ax, 0xf7                     ; 0x1598
    push ax                          ; 0x159b
    mov ax, 0x20                     ; 0x159c
    push ax                          ; 0x159f
    mov ax, 0x48                     ; 0x15a0
    push ax                          ; 0x15a3
    call call_show_area              ; 0x15a4
    add sp, byte 8                   ; 0x15a7
.return1:
    ret                              ; 0x15aa
