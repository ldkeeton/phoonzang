; auto-generated
show_map_view:
    mov ax, 0xffee                   ; 0x0fd3
    call aztec_csav                  ; 0x0fd6
    mov ax, word [bp + 8]            ; 0x0fd9
    mov word [map_show_objects], ax  ; 0x0fdc
    mov ax, 0xf                      ; 0x0fdf
    push ax                          ; 0x0fe2
    mov ax, 0xe                      ; 0x0fe3
    push ax                          ; 0x0fe6
    call load_monster_picture        ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    mov ax, 0xf                      ; 0x0fed
    cmp word [bp + 6], byte 0        ; 0x0ff0
    jne short .forward2              ; 0x0ff4
    cmp word [bp + 4], byte 4        ; 0x0ff6
    jle short .forward1              ; 0x0ffa
    mov ax, word [bp + 4]            ; 0x0ffc
    shl ax, 1                        ; 0x0fff
    add ax, strict word 0xfff9       ; 0x1001
    jmp short .forward2              ; 0x1004
.forward1:
    mov ax, word [bp + 4]            ; 0x1006
    shl ax, 1                        ; 0x1009
    inc ax                           ; 0x100b
    inc ax                           ; 0x100c
    inc ax                           ; 0x100d
.forward2:
    mov word [bp - 6], ax            ; 0x100e
    mov word [bp - 8], ax            ; 0x1011
    cmp ax, strict word 0xd          ; 0x1014
    jle short .forward3              ; 0x1017
    mov word [bp - 8], 0xd           ; 0x1019
.forward3:
    mov cx, 2                        ; 0x101e
    cwd                              ; 0x1021
    idiv cx                          ; 0x1022
    mov word [bp - 0xa], ax          ; 0x1024
    mov ax, word [bp - 8]            ; 0x1027
    cwd                              ; 0x102a
    idiv cx                          ; 0x102b
    mov word [bp - 0xc], ax          ; 0x102d
    mov ax, 7                        ; 0x1030
    imul word [bp - 6]               ; 0x1033
    cwd                              ; 0x1036
    idiv cx                          ; 0x1037
    mov cx, ax                       ; 0x1039
    mov ax, 0xa0                     ; 0x103b
    sub ax, cx                       ; 0x103e
    mov word [grid_origin_x], ax     ; 0x1040
    mov ax, 7                        ; 0x1043
    imul word [bp - 8]               ; 0x1046
    mov cx, 2                        ; 0x1049
    cwd                              ; 0x104c
    idiv cx                          ; 0x104d
    mov cx, ax                       ; 0x104f
    mov ax, 0x56                     ; 0x1051
    sub ax, cx                       ; 0x1054
    mov word [grid_origin_y], ax     ; 0x1056
    cmp word [map_show_objects], byte 0 ; 0x1059
    je short .forward4               ; 0x105e
    mov word [bp + 4], 1             ; 0x1060
.forward4:
    mov ax, word [maze_variant]      ; 0x1065
    jmp near .forward51              ; 0x1068
jumptable_147e_case_1:
    mov ax, 0xffff                   ; 0x106b
    cmp word [bp + 4], byte 1        ; 0x106e
    jle short show_map_view.forward5 ; 0x1072
    mov ax, 0xa                      ; 0x1074
show_map_view.forward5:
    mov word [map_wall2_ns_glyph], ax ; 0x1077
    mov ax, 0xffff                   ; 0x107a
    cmp word [bp + 4], byte 1        ; 0x107d
    jle short show_map_view.forward6 ; 0x1081
    mov ax, 0xb                      ; 0x1083
show_map_view.forward6:
    mov word [map_wall2_ew_glyph], ax ; 0x1086
    mov ax, 0xc                      ; 0x1089
    cmp word [bp + 4], byte 2        ; 0x108c
    jg short show_map_view.forward7  ; 0x1090
    mov ax, 0xffff                   ; 0x1092
    cmp word [bp + 4], byte 1        ; 0x1095
    jle short show_map_view.forward7 ; 0x1099
    mov ax, 0xa                      ; 0x109b
show_map_view.forward7:
    mov word [map_wall1_ns_glyph], ax ; 0x109e
    mov ax, 0xd                      ; 0x10a1
    cmp word [bp + 4], byte 2        ; 0x10a4
    jg short show_map_view.forward8  ; 0x10a8
    mov ax, 0xffff                   ; 0x10aa
    cmp word [bp + 4], byte 1        ; 0x10ad
    jle short show_map_view.forward8 ; 0x10b1
    mov ax, 0xb                      ; 0x10b3
show_map_view.forward8:
    mov word [map_wall1_ew_glyph], ax ; 0x10b6
    mov ax, 0xe                      ; 0x10b9
    cmp word [bp + 4], byte 2        ; 0x10bc
    jg short show_map_view.forward9  ; 0x10c0
    mov ax, 0xffff                   ; 0x10c2
    cmp word [bp + 4], byte 1        ; 0x10c5
    jle short show_map_view.forward9 ; 0x10c9
    mov ax, 0xa                      ; 0x10cb
show_map_view.forward9:
    mov word [map_wall3_ns_glyph], ax ; 0x10ce
    mov ax, 0xf                      ; 0x10d1
    cmp word [bp + 4], byte 2        ; 0x10d4
    jg short show_map_view.forward10 ; 0x10d8
    mov ax, 0xffff                   ; 0x10da
    cmp word [bp + 4], byte 1        ; 0x10dd
    jle short show_map_view.forward10 ; 0x10e1
    mov ax, 0xb                      ; 0x10e3
show_map_view.forward10:
    mov word [map_wall3_ew_glyph], ax ; 0x10e6
    mov word [map_floor_glyph], 1    ; 0x10e9
    mov word [map_flag2_glyph], 0xffff ; 0x10ef
    mov word [map_flag1_glyph], 0xffff ; 0x10f5
    mov word [map_outside_glyph], 6  ; 0x10fb
    mov word [map_wall2_enclosed_glyph], 6 ; 0x1101
    mov ax, 0xffff                   ; 0x1107
    cmp word [bp + 4], byte 1        ; 0x110a
    jle short show_map_view.forward11 ; 0x110e
    mov ax, 0xa                      ; 0x1110
show_map_view.forward11:
    mov word [map_outside_ns_wall_glyph], ax ; 0x1113
    mov ax, 0xffff                   ; 0x1116
    cmp word [bp + 4], byte 1        ; 0x1119
    jle short show_map_view.forward12 ; 0x111d
    mov ax, 0xb                      ; 0x111f
show_map_view.forward12:
    mov word [map_outside_ew_wall_glyph], ax ; 0x1122
    jmp near jumptable_147e_case_0   ; 0x1125
jumptable_147e_case_2:
    mov ax, 0xffff                   ; 0x1128
    cmp word [bp + 4], byte 1        ; 0x112b
    jle short show_map_view.forward13 ; 0x112f
    mov ax, 0x10                     ; 0x1131
show_map_view.forward13:
    mov word [map_wall2_ns_glyph], ax ; 0x1134
    mov ax, 0xffff                   ; 0x1137
    cmp word [bp + 4], byte 1        ; 0x113a
    jle short show_map_view.forward14 ; 0x113e
    mov ax, 0x11                     ; 0x1140
show_map_view.forward14:
    mov word [map_wall2_ew_glyph], ax ; 0x1143
    mov ax, 0x12                     ; 0x1146
    cmp word [bp + 4], byte 2        ; 0x1149
    jg short show_map_view.forward15 ; 0x114d
    mov ax, 0xffff                   ; 0x114f
    cmp word [bp + 4], byte 1        ; 0x1152
    jle short show_map_view.forward15 ; 0x1156
    mov ax, 0x10                     ; 0x1158
show_map_view.forward15:
    mov word [map_wall1_ns_glyph], ax ; 0x115b
    mov ax, 0x13                     ; 0x115e
    cmp word [bp + 4], byte 2        ; 0x1161
    jg short show_map_view.forward16 ; 0x1165
    mov ax, 0xffff                   ; 0x1167
    cmp word [bp + 4], byte 1        ; 0x116a
    jle short show_map_view.forward16 ; 0x116e
    mov ax, 0x11                     ; 0x1170
show_map_view.forward16:
    mov word [map_wall1_ew_glyph], ax ; 0x1173
    mov ax, 0x14                     ; 0x1176
    cmp word [bp + 4], byte 2        ; 0x1179
    jg short show_map_view.forward17 ; 0x117d
    mov ax, 0xffff                   ; 0x117f
    cmp word [bp + 4], byte 1        ; 0x1182
    jle short show_map_view.forward17 ; 0x1186
    mov ax, 0x10                     ; 0x1188
show_map_view.forward17:
    mov word [map_wall3_ns_glyph], ax ; 0x118b
    mov ax, 0x15                     ; 0x118e
    cmp word [bp + 4], byte 2        ; 0x1191
    jg short show_map_view.forward18 ; 0x1195
    mov ax, 0xffff                   ; 0x1197
    cmp word [bp + 4], byte 1        ; 0x119a
    jle short show_map_view.forward18 ; 0x119e
    mov ax, 0x11                     ; 0x11a0
show_map_view.forward18:
    mov word [map_wall3_ew_glyph], ax ; 0x11a3
    mov word [map_floor_glyph], 5    ; 0x11a6
    mov word [map_flag2_glyph], 4    ; 0x11ac
    mov word [map_flag1_glyph], 3    ; 0x11b2
    mov word [map_outside_glyph], 8  ; 0x11b8
    mov word [map_wall2_enclosed_glyph], 7 ; 0x11be
    mov ax, 0xffff                   ; 0x11c4
    cmp word [bp + 4], byte 1        ; 0x11c7
    jle short show_map_view.forward19 ; 0x11cb
    mov ax, 0x16                     ; 0x11cd
show_map_view.forward19:
    mov word [map_outside_ns_wall_glyph], ax ; 0x11d0
    mov ax, 0xffff                   ; 0x11d3
    cmp word [bp + 4], byte 1        ; 0x11d6
    jle short show_map_view.forward20 ; 0x11da
    mov ax, 0x17                     ; 0x11dc
show_map_view.forward20:
    mov word [map_outside_ew_wall_glyph], ax ; 0x11df
    jmp near jumptable_147e_case_0   ; 0x11e2
jumptable_147e_case_3:
    mov ax, 0xffff                   ; 0x11e5
    cmp word [bp + 4], byte 1        ; 0x11e8
    jle short show_map_view.forward21 ; 0x11ec
    mov ax, 0x10                     ; 0x11ee
show_map_view.forward21:
    mov word [map_wall2_ns_glyph], ax ; 0x11f1
    mov ax, 0xffff                   ; 0x11f4
    cmp word [bp + 4], byte 1        ; 0x11f7
    jle short show_map_view.forward22 ; 0x11fb
    mov ax, 0x11                     ; 0x11fd
show_map_view.forward22:
    mov word [map_wall2_ew_glyph], ax ; 0x1200
    mov ax, 0x12                     ; 0x1203
    cmp word [bp + 4], byte 2        ; 0x1206
    jg short show_map_view.forward23 ; 0x120a
    mov ax, 0xffff                   ; 0x120c
    cmp word [bp + 4], byte 1        ; 0x120f
    jle short show_map_view.forward23 ; 0x1213
    mov ax, 0x10                     ; 0x1215
show_map_view.forward23:
    mov word [map_wall1_ns_glyph], ax ; 0x1218
    mov ax, 0x13                     ; 0x121b
    cmp word [bp + 4], byte 2        ; 0x121e
    jg short show_map_view.forward24 ; 0x1222
    mov ax, 0xffff                   ; 0x1224
    cmp word [bp + 4], byte 1        ; 0x1227
    jle short show_map_view.forward24 ; 0x122b
    mov ax, 0x11                     ; 0x122d
show_map_view.forward24:
    mov word [map_wall1_ew_glyph], ax ; 0x1230
    mov ax, 0x14                     ; 0x1233
    cmp word [bp + 4], byte 2        ; 0x1236
    jg short show_map_view.forward25 ; 0x123a
    mov ax, 0xffff                   ; 0x123c
    cmp word [bp + 4], byte 1        ; 0x123f
    jle short show_map_view.forward25 ; 0x1243
    mov ax, 0x10                     ; 0x1245
show_map_view.forward25:
    mov word [map_wall3_ns_glyph], ax ; 0x1248
    mov ax, 0x15                     ; 0x124b
    cmp word [bp + 4], byte 2        ; 0x124e
    jg short show_map_view.forward26 ; 0x1252
    mov ax, 0xffff                   ; 0x1254
    cmp word [bp + 4], byte 1        ; 0x1257
    jle short show_map_view.forward26 ; 0x125b
    mov ax, 0x11                     ; 0x125d
show_map_view.forward26:
    mov word [map_wall3_ew_glyph], ax ; 0x1260
    mov word [map_floor_glyph], 4    ; 0x1263
    mov word [map_flag2_glyph], 3    ; 0x1269
    mov word [map_flag1_glyph], 0xffff ; 0x126f
    mov word [map_outside_glyph], 7  ; 0x1275
    mov word [map_wall2_enclosed_glyph], 7 ; 0x127b
    mov ax, 0xffff                   ; 0x1281
    cmp word [bp + 4], byte 1        ; 0x1284
    jle short show_map_view.forward27 ; 0x1288
    mov ax, 0x10                     ; 0x128a
show_map_view.forward27:
    mov word [map_outside_ns_wall_glyph], ax ; 0x128d
    mov ax, 0xffff                   ; 0x1290
    cmp word [bp + 4], byte 1        ; 0x1293
    jle short show_map_view.forward28 ; 0x1297
    mov ax, 0x11                     ; 0x1299
show_map_view.forward28:
    mov word [map_outside_ew_wall_glyph], ax ; 0x129c
    jmp near jumptable_147e_case_0   ; 0x129f
jumptable_147e_case_4:
    mov ax, 0xffff                   ; 0x12a2
    cmp word [bp + 4], byte 1        ; 0x12a5
    jle short show_map_view.forward29 ; 0x12a9
    mov ax, 0x18                     ; 0x12ab
show_map_view.forward29:
    mov word [map_wall2_ns_glyph], ax ; 0x12ae
    mov ax, 0xffff                   ; 0x12b1
    cmp word [bp + 4], byte 1        ; 0x12b4
    jle short show_map_view.forward30 ; 0x12b8
    mov ax, 0x19                     ; 0x12ba
show_map_view.forward30:
    mov word [map_wall2_ew_glyph], ax ; 0x12bd
    mov ax, 0xffff                   ; 0x12c0
    cmp word [bp + 4], byte 1        ; 0x12c3
    jle short show_map_view.forward31 ; 0x12c7
    mov ax, 0x18                     ; 0x12c9
show_map_view.forward31:
    mov word [map_wall1_ns_glyph], ax ; 0x12cc
    mov ax, 0xffff                   ; 0x12cf
    cmp word [bp + 4], byte 1        ; 0x12d2
    jle short show_map_view.forward32 ; 0x12d6
    mov ax, 0x19                     ; 0x12d8
show_map_view.forward32:
    mov word [map_wall1_ew_glyph], ax ; 0x12db
    mov ax, 0xffff                   ; 0x12de
    cmp word [bp + 4], byte 1        ; 0x12e1
    jle short show_map_view.forward33 ; 0x12e5
    mov ax, 0x18                     ; 0x12e7
show_map_view.forward33:
    mov word [map_wall3_ns_glyph], ax ; 0x12ea
    mov ax, 0xffff                   ; 0x12ed
    cmp word [bp + 4], byte 1        ; 0x12f0
    jle short show_map_view.forward34 ; 0x12f4
    mov ax, 0x19                     ; 0x12f6
show_map_view.forward34:
    mov word [map_wall3_ew_glyph], ax ; 0x12f9
    mov word [map_floor_glyph], 1    ; 0x12fc
    mov word [map_flag2_glyph], 4    ; 0x1302
    mov word [map_flag1_glyph], 0xffff ; 0x1308
    mov word [map_outside_glyph], 8  ; 0x130e
    mov word [map_wall2_enclosed_glyph], 9 ; 0x1314
    mov ax, 0xffff                   ; 0x131a
    cmp word [bp + 4], byte 1        ; 0x131d
    jle short show_map_view.forward35 ; 0x1321
    mov ax, 0x16                     ; 0x1323
show_map_view.forward35:
    mov word [map_outside_ns_wall_glyph], ax ; 0x1326
    mov ax, 0xffff                   ; 0x1329
    cmp word [bp + 4], byte 1        ; 0x132c
    jle short show_map_view.forward36 ; 0x1330
    mov ax, 0x17                     ; 0x1332
show_map_view.forward36:
    mov word [map_outside_ew_wall_glyph], ax ; 0x1335
    jmp near jumptable_147e_case_0   ; 0x1338
jumptable_147e_case_5:
    mov ax, 0xffff                   ; 0x133b
    cmp word [bp + 4], byte 1        ; 0x133e
    jle short show_map_view.forward37 ; 0x1342
    mov ax, 0x18                     ; 0x1344
show_map_view.forward37:
    mov word [map_wall2_ns_glyph], ax ; 0x1347
    mov ax, 0xffff                   ; 0x134a
    cmp word [bp + 4], byte 1        ; 0x134d
    jle short show_map_view.forward38 ; 0x1351
    mov ax, 0x19                     ; 0x1353
show_map_view.forward38:
    mov word [map_wall2_ew_glyph], ax ; 0x1356
    mov ax, 0xffff                   ; 0x1359
    cmp word [bp + 4], byte 1        ; 0x135c
    jle short show_map_view.forward39 ; 0x1360
    mov ax, 0x18                     ; 0x1362
show_map_view.forward39:
    mov word [map_wall1_ns_glyph], ax ; 0x1365
    mov ax, 0xffff                   ; 0x1368
    cmp word [bp + 4], byte 1        ; 0x136b
    jle short show_map_view.forward40 ; 0x136f
    mov ax, 0x19                     ; 0x1371
show_map_view.forward40:
    mov word [map_wall1_ew_glyph], ax ; 0x1374
    mov ax, 0xffff                   ; 0x1377
    cmp word [bp + 4], byte 1        ; 0x137a
    jle short show_map_view.forward41 ; 0x137e
    mov ax, 0x18                     ; 0x1380
show_map_view.forward41:
    mov word [map_wall3_ns_glyph], ax ; 0x1383
    mov ax, 0xffff                   ; 0x1386
    cmp word [bp + 4], byte 1        ; 0x1389
    jle short show_map_view.forward42 ; 0x138d
    mov ax, 0x19                     ; 0x138f
show_map_view.forward42:
    mov word [map_wall3_ew_glyph], ax ; 0x1392
    mov word [map_floor_glyph], 1    ; 0x1395
    mov word [map_flag2_glyph], 4    ; 0x139b
    mov word [map_flag1_glyph], 0xffff ; 0x13a1
    mov word [map_outside_glyph], 9  ; 0x13a7
    mov word [map_wall2_enclosed_glyph], 9 ; 0x13ad
    mov ax, 0xffff                   ; 0x13b3
    cmp word [bp + 4], byte 1        ; 0x13b6
    jle short show_map_view.forward43 ; 0x13ba
    mov ax, 0x18                     ; 0x13bc
show_map_view.forward43:
    mov word [map_outside_ns_wall_glyph], ax ; 0x13bf
    mov ax, 0xffff                   ; 0x13c2
    cmp word [bp + 4], byte 1        ; 0x13c5
    jle short show_map_view.forward44 ; 0x13c9
    mov ax, 0x19                     ; 0x13cb
show_map_view.forward44:
    mov word [map_outside_ew_wall_glyph], ax ; 0x13ce
    jmp near jumptable_147e_case_0   ; 0x13d1
jumptable_147e_case_6:
    mov ax, 0xffff                   ; 0x13d4
    cmp word [bp + 4], byte 1        ; 0x13d7
    jle short show_map_view.forward45 ; 0x13db
    mov ax, 0x10                     ; 0x13dd
show_map_view.forward45:
    mov word [map_wall2_ns_glyph], ax ; 0x13e0
    mov ax, 0xffff                   ; 0x13e3
    cmp word [bp + 4], byte 1        ; 0x13e6
    jle short show_map_view.forward46 ; 0x13ea
    mov ax, 0x11                     ; 0x13ec
show_map_view.forward46:
    mov word [map_wall2_ew_glyph], ax ; 0x13ef
    mov ax, 0x12                     ; 0x13f2
    cmp word [bp + 4], byte 2        ; 0x13f5
    jg short show_map_view.forward47 ; 0x13f9
    mov ax, 0xffff                   ; 0x13fb
    cmp word [bp + 4], byte 1        ; 0x13fe
    jle short show_map_view.forward47 ; 0x1402
    mov ax, 0x10                     ; 0x1404
show_map_view.forward47:
    mov word [map_wall1_ns_glyph], ax ; 0x1407
    mov ax, 0x13                     ; 0x140a
    cmp word [bp + 4], byte 2        ; 0x140d
    jg short show_map_view.forward48 ; 0x1411
    mov ax, 0xffff                   ; 0x1413
    cmp word [bp + 4], byte 1        ; 0x1416
    jle short show_map_view.forward48 ; 0x141a
    mov ax, 0x11                     ; 0x141c
show_map_view.forward48:
    mov word [map_wall1_ew_glyph], ax ; 0x141f
    mov ax, 0x14                     ; 0x1422
    cmp word [bp + 4], byte 2        ; 0x1425
    jg short show_map_view.forward49 ; 0x1429
    mov ax, 0xffff                   ; 0x142b
    cmp word [bp + 4], byte 1        ; 0x142e
    jle short show_map_view.forward49 ; 0x1432
    mov ax, 0x10                     ; 0x1434
show_map_view.forward49:
    mov word [map_wall3_ns_glyph], ax ; 0x1437
    mov ax, 0x15                     ; 0x143a
    cmp word [bp + 4], byte 2        ; 0x143d
    jg short show_map_view.forward50 ; 0x1441
    mov ax, 0xffff                   ; 0x1443
    cmp word [bp + 4], byte 1        ; 0x1446
    jle short show_map_view.forward50 ; 0x144a
    mov ax, 0x11                     ; 0x144c
show_map_view.forward50:
    mov word [map_wall3_ew_glyph], ax ; 0x144f
    mov word [map_floor_glyph], 5    ; 0x1452
    mov word [map_flag2_glyph], 4    ; 0x1458
    mov word [map_flag1_glyph], 2    ; 0x145e
    mov word [map_outside_glyph], 7  ; 0x1464
    mov word [map_wall2_enclosed_glyph], 7 ; 0x146a
    mov word [map_outside_ns_wall_glyph], 0xffff ; 0x1470
    mov word [map_outside_ew_wall_glyph], 0xffff ; 0x1476
    jmp short jumptable_147e_case_0  ; 0x147c
jumptable_147e:
    dw jumptable_147e_case_0 - IMAGE_BASE + __zres_end ; 0x147e
    dw jumptable_147e_case_1 - IMAGE_BASE + __zres_end ; 0x1480
    dw jumptable_147e_case_2 - IMAGE_BASE + __zres_end ; 0x1482
    dw jumptable_147e_case_3 - IMAGE_BASE + __zres_end ; 0x1484
    dw jumptable_147e_case_4 - IMAGE_BASE + __zres_end ; 0x1486
    dw jumptable_147e_case_5 - IMAGE_BASE + __zres_end ; 0x1488
    dw jumptable_147e_case_6 - IMAGE_BASE + __zres_end ; 0x148a
show_map_view.forward51:
    cmp ax, strict word 7            ; 0x148c
    jae short jumptable_147e_case_0  ; 0x148f
    xchg bx, ax                      ; 0x1491
    shl bx, 1                        ; 0x1492
    jmp [cs:bx + jumptable_147e - IMAGE_BASE + __zres_end] ; 0x1494
jumptable_147e_case_0:
    mov word [map_special_glyph], 2  ; 0x1499
    mov word [map_wall4_enclosed_glyph], 8 ; 0x149f
    mov ax, 0xffff                   ; 0x14a5
    cmp word [bp + 4], byte 1        ; 0x14a8
    jle short show_map_view.forward53 ; 0x14ac
    mov ax, 0x16                     ; 0x14ae
show_map_view.forward53:
    mov word [map_wall4_ns_glyph], ax ; 0x14b1
    mov ax, 0xffff                   ; 0x14b4
    cmp word [bp + 4], byte 1        ; 0x14b7
    jle short show_map_view.forward54 ; 0x14bb
    mov ax, 0x17                     ; 0x14bd
show_map_view.forward54:
    mov word [map_wall4_ew_glyph], ax ; 0x14c0
    mov ax, word [map_floor_glyph]   ; 0x14c3
    cmp word [bp + 4], byte 3        ; 0x14c6
    jle short show_map_view.forward55 ; 0x14ca
    mov ax, 0x1a                     ; 0x14cc
show_map_view.forward55:
    mov word [map_kind1_glyph], ax   ; 0x14cf
    mov ax, word [map_floor_glyph]   ; 0x14d2
    cmp word [bp + 4], byte 3        ; 0x14d5
    jle short show_map_view.forward56 ; 0x14d9
    mov ax, 0x1b                     ; 0x14db
show_map_view.forward56:
    mov word [map_kind2_glyph], ax   ; 0x14de
    mov ax, word [map_floor_glyph]   ; 0x14e1
    cmp word [bp + 4], byte 3        ; 0x14e4
    jle short show_map_view.forward57 ; 0x14e8
    mov ax, 0x1c                     ; 0x14ea
show_map_view.forward57:
    mov word [map_kind15_glyph], ax  ; 0x14ed
    mov ax, word [map_floor_glyph]   ; 0x14f0
    cmp word [bp + 4], byte 3        ; 0x14f3
    jle short show_map_view.forward58 ; 0x14f7
    mov ax, 0x1e                     ; 0x14f9
show_map_view.forward58:
    mov word [map_kind14_glyph], ax  ; 0x14fc
    mov ax, word [map_floor_glyph]   ; 0x14ff
    cmp word [bp + 4], byte 3        ; 0x1502
    jle short show_map_view.forward59 ; 0x1506
    mov ax, 0x1d                     ; 0x1508
show_map_view.forward59:
    mov word [map_kind9_glyph], ax   ; 0x150b
    mov ax, word [map_floor_glyph]   ; 0x150e
    cmp word [bp + 4], byte 3        ; 0x1511
    jle short show_map_view.forward60 ; 0x1515
    mov ax, 0x1f                     ; 0x1517
show_map_view.forward60:
    mov word [map_kind8_glyph], ax   ; 0x151a
    mov word [bp - 2], 0             ; 0x151d
    jmp short show_map_view.forward62 ; 0x1522
show_map_view.back1:
    mov word [bp - 4], 0             ; 0x1524
    jmp short show_map_view.forward61 ; 0x1529
show_map_view.back2:
    mov ax, word [map_floor_glyph]   ; 0x152b
    push ax                          ; 0x152e
    mov ax, 0x24                     ; 0x152f
    imul word [bp - 2]               ; 0x1532
    mov cx, ax                       ; 0x1535
    mov dx, word [bp - 4]            ; 0x1537
    shl dx, 1                        ; 0x153a
    add ax, dx                       ; 0x153c
    mov bx, ax                       ; 0x153e
    pop ax                           ; 0x1540
    mov word [bx + map_floor_glyphs], ax ; 0x1541
    mov word [bx + map_ns_wall_glyphs], 0xffff ; 0x1545
    mov word [bx + map_ew_wall_glyphs], 0xffff ; 0x154b
    inc word [bp - 4]                ; 0x1551
show_map_view.forward61:
    mov ax, word [bp - 8]            ; 0x1554
    inc ax                           ; 0x1557
    cmp ax, word [bp - 4]            ; 0x1558
    jge short show_map_view.back2    ; 0x155b
    inc word [bp - 2]                ; 0x155d
show_map_view.forward62:
    mov ax, word [bp - 6]            ; 0x1560
    inc ax                           ; 0x1563
    cmp ax, word [bp - 2]            ; 0x1564
    jge short show_map_view.back1    ; 0x1567
    mov ax, 0                        ; 0x1569
    push ax                          ; 0x156c
    mov ax, 7                        ; 0x156d
    imul word [bp - 8]               ; 0x1570
    add ax, word [grid_origin_y]     ; 0x1573
    dec ax                           ; 0x1577
    push ax                          ; 0x1578
    mov ax, 7                        ; 0x1579
    imul word [bp - 6]               ; 0x157c
    add ax, word [grid_origin_x]     ; 0x157f
    dec ax                           ; 0x1583
    push ax                          ; 0x1584
    push word [grid_origin_y]        ; 0x1585
    push word [grid_origin_x]        ; 0x1589
    call call_fill_area              ; 0x158d
    add sp, byte 0xa                 ; 0x1590
    mov word [bp - 4], 1             ; 0x1593
    jmp short show_map_view.forward67 ; 0x1598
show_map_view.back3:
    mov word [bp - 2], 1             ; 0x159a
    jmp short show_map_view.forward66 ; 0x159f
show_map_view.back4:
    cmp word [map_show_objects], byte 0 ; 0x15a1
    jne short show_map_view.forward63 ; 0x15a6
    cmp word [bp + 6], byte 0        ; 0x15a8
    jne short show_map_view.forward64 ; 0x15ac
    cmp word [bp + 4], byte 4        ; 0x15ae
    jle short show_map_view.forward64 ; 0x15b2
show_map_view.forward63:
    mov ax, 1                        ; 0x15b4
    jmp short show_map_view.forward65 ; 0x15b7
show_map_view.forward64:
    mov ax, 0                        ; 0x15b9
show_map_view.forward65:
    push ax                          ; 0x15bc
    push word [bp - 4]               ; 0x15bd
    push word [bp - 2]               ; 0x15c0
    mov ax, word [party_world_y]     ; 0x15c3
    mov cx, word [bp - 4]            ; 0x15c6
    dec cx                           ; 0x15c9
    sub ax, cx                       ; 0x15ca
    add ax, word [bp - 0xc]          ; 0x15cc
    push ax                          ; 0x15cf
    mov ax, word [party_world_x]     ; 0x15d0
    add ax, word [bp - 2]            ; 0x15d3
    dec ax                           ; 0x15d6
    sub ax, word [bp - 0xa]          ; 0x15d7
    push ax                          ; 0x15da
    call build_map_view_cell         ; 0x15db
    add sp, byte 0xa                 ; 0x15de
    inc word [bp - 2]                ; 0x15e1
show_map_view.forward66:
    mov ax, word [bp - 2]            ; 0x15e4
    cmp ax, word [bp - 6]            ; 0x15e7
    jle short show_map_view.back4    ; 0x15ea
    inc word [bp - 4]                ; 0x15ec
show_map_view.forward67:
    mov ax, word [bp - 4]            ; 0x15ef
    cmp ax, word [bp - 8]            ; 0x15f2
    jle short show_map_view.back3    ; 0x15f5
    cmp word [bp + 4], byte 1        ; 0x15f7
    jle short show_map_view.forward70 ; 0x15fb
    mov word [bp - 4], 1             ; 0x15fd
    jmp short show_map_view.forward69 ; 0x1602
show_map_view.back5:
    mov word [bp - 2], 1             ; 0x1604
    jmp short show_map_view.forward68 ; 0x1609
show_map_view.back6:
    push word [bp - 4]               ; 0x160b
    push word [bp - 2]               ; 0x160e
    call apply_enclosed_cell_glyph   ; 0x1611
    add sp, byte 4                   ; 0x1614
    inc word [bp - 2]                ; 0x1617
show_map_view.forward68:
    mov ax, word [bp - 2]            ; 0x161a
    cmp ax, word [bp - 6]            ; 0x161d
    jle short show_map_view.back6    ; 0x1620
    inc word [bp - 4]                ; 0x1622
show_map_view.forward69:
    mov ax, word [bp - 4]            ; 0x1625
    cmp ax, word [bp - 8]            ; 0x1628
    jle short show_map_view.back5    ; 0x162b
show_map_view.forward70:
    mov word [bp - 4], 1             ; 0x162d
    jmp short show_map_view.forward73 ; 0x1632
show_map_view.back7:
    mov word [bp - 2], 1             ; 0x1634
    jmp short show_map_view.forward72 ; 0x1639
show_map_view.back8:
    mov ax, 0x24                     ; 0x163b
    imul word [bp - 2]               ; 0x163e
    mov cx, word [bp - 4]            ; 0x1641
    shl cx, 1                        ; 0x1644
    add ax, cx                       ; 0x1646
    mov bx, ax                       ; 0x1648
    cmp word [bx + map_floor_glyphs], byte -1 ; 0x164a
    je short show_map_view.forward71 ; 0x164f
    mov ax, 0                        ; 0x1651
    push ax                          ; 0x1654
    push ax                          ; 0x1655
    push word [bx + map_floor_glyphs] ; 0x1656
    mov ax, word [bp - 4]            ; 0x165a
    dec ax                           ; 0x165d
    push ax                          ; 0x165e
    mov ax, word [bp - 2]            ; 0x165f
    dec ax                           ; 0x1662
    push ax                          ; 0x1663
    call draw_grid_cell_char         ; 0x1664
    add sp, byte 0xa                 ; 0x1667
show_map_view.forward71:
    inc word [bp - 2]                ; 0x166a
show_map_view.forward72:
    mov ax, word [bp - 2]            ; 0x166d
    cmp ax, word [bp - 6]            ; 0x1670
    jle short show_map_view.back8    ; 0x1673
    inc word [bp - 4]                ; 0x1675
show_map_view.forward73:
    mov ax, word [bp - 4]            ; 0x1678
    cmp ax, word [bp - 8]            ; 0x167b
    jle short show_map_view.back7    ; 0x167e
    mov word [bp - 4], 0             ; 0x1680
    jmp short show_map_view.forward77 ; 0x1685
show_map_view.back9:
    mov word [bp - 2], 0             ; 0x1687
    jmp short show_map_view.forward76 ; 0x168c
show_map_view.back10:
    mov ax, 0x24                     ; 0x168e
    imul word [bp - 2]               ; 0x1691
    mov cx, word [bp - 4]            ; 0x1694
    shl cx, 1                        ; 0x1697
    add ax, cx                       ; 0x1699
    mov bx, ax                       ; 0x169b
    cmp word [bx + map_ns_wall_glyphs], byte -1 ; 0x169d
    je short show_map_view.forward74 ; 0x16a2
    mov ax, 0xffff                   ; 0x16a4
    push ax                          ; 0x16a7
    push ax                          ; 0x16a8
    push word [bx + map_ns_wall_glyphs] ; 0x16a9
    mov ax, word [bp - 4]            ; 0x16ad
    dec ax                           ; 0x16b0
    push ax                          ; 0x16b1
    mov ax, word [bp - 2]            ; 0x16b2
    dec ax                           ; 0x16b5
    push ax                          ; 0x16b6
    call draw_grid_cell_char         ; 0x16b7
    add sp, byte 0xa                 ; 0x16ba
show_map_view.forward74:
    mov ax, 0x24                     ; 0x16bd
    imul word [bp - 2]               ; 0x16c0
    mov cx, word [bp - 4]            ; 0x16c3
    shl cx, 1                        ; 0x16c6
    add ax, cx                       ; 0x16c8
    mov bx, ax                       ; 0x16ca
    cmp word [bx + map_ew_wall_glyphs], byte -1 ; 0x16cc
    je short show_map_view.forward75 ; 0x16d1
    mov ax, 0xffff                   ; 0x16d3
    push ax                          ; 0x16d6
    push ax                          ; 0x16d7
    push word [bx + map_ew_wall_glyphs] ; 0x16d8
    mov ax, word [bp - 4]            ; 0x16dc
    dec ax                           ; 0x16df
    push ax                          ; 0x16e0
    mov ax, word [bp - 2]            ; 0x16e1
    dec ax                           ; 0x16e4
    push ax                          ; 0x16e5
    call draw_grid_cell_char         ; 0x16e6
    add sp, byte 0xa                 ; 0x16e9
show_map_view.forward75:
    inc word [bp - 2]                ; 0x16ec
show_map_view.forward76:
    mov ax, word [bp - 6]            ; 0x16ef
    inc ax                           ; 0x16f2
    cmp ax, word [bp - 2]            ; 0x16f3
    jge short show_map_view.back10   ; 0x16f6
    inc word [bp - 4]                ; 0x16f8
show_map_view.forward77:
    mov ax, word [bp - 8]            ; 0x16fb
    inc ax                           ; 0x16fe
    cmp ax, word [bp - 4]            ; 0x16ff
    jge short show_map_view.back9    ; 0x1702
    cmp word [map_show_objects], byte 0 ; 0x1704
    je short show_map_view.forward81 ; 0x1709
    mov word [bp - 4], 0             ; 0x170b
    jmp short show_map_view.forward80 ; 0x1710
show_map_view.back11:
    mov word [bp - 2], 0             ; 0x1712
    jmp short show_map_view.forward79 ; 0x1717
show_map_view.back12:
    mov ax, 0x24                     ; 0x1719
    imul word [bp - 2]               ; 0x171c
    mov cx, word [bp - 4]            ; 0x171f
    shl cx, 1                        ; 0x1722
    add ax, cx                       ; 0x1724
    mov bx, ax                       ; 0x1726
    cmp word [bx + map_object_marks], byte 1 ; 0x1728
    jne short show_map_view.forward78 ; 0x172d
    mov ax, word [bp - 4]            ; 0x172f
    dec ax                           ; 0x1732
    push ax                          ; 0x1733
    mov ax, word [bp - 2]            ; 0x1734
    dec ax                           ; 0x1737
    push ax                          ; 0x1738
    call draw_map_object_marker      ; 0x1739
    add sp, byte 4                   ; 0x173c
show_map_view.forward78:
    inc word [bp - 2]                ; 0x173f
show_map_view.forward79:
    mov ax, word [bp - 2]            ; 0x1742
    cmp ax, word [bp - 6]            ; 0x1745
    jle short show_map_view.back12   ; 0x1748
    inc word [bp - 4]                ; 0x174a
show_map_view.forward80:
    mov ax, word [bp - 4]            ; 0x174d
    cmp ax, word [bp - 8]            ; 0x1750
    jle short show_map_view.back11   ; 0x1753
show_map_view.forward81:
    mov ax, 7                        ; 0x1755
    imul word [bp - 8]               ; 0x1758
    add ax, word [grid_origin_y]     ; 0x175b
    dec ax                           ; 0x175f
    push ax                          ; 0x1760
    mov ax, 7                        ; 0x1761
    imul word [bp - 6]               ; 0x1764
    add ax, word [grid_origin_x]     ; 0x1767
    dec ax                           ; 0x176b
    push ax                          ; 0x176c
    push word [grid_origin_y]        ; 0x176d
    push word [grid_origin_x]        ; 0x1771
    call draw_rect_outline           ; 0x1775
    add sp, byte 8                   ; 0x1778
    mov ax, 0x8d                     ; 0x177b
    push ax                          ; 0x177e
    mov ax, 0xf8                     ; 0x177f
    push ax                          ; 0x1782
    mov ax, 0x21                     ; 0x1783
    push ax                          ; 0x1786
    mov ax, 0x48                     ; 0x1787
    push ax                          ; 0x178a
    call call_show_area              ; 0x178b
    add sp, byte 8                   ; 0x178e
    call flush_keyboard              ; 0x1791
    mov ax, word [bp - 8]            ; 0x1794
    mov cx, 2                        ; 0x1797
    cwd                              ; 0x179a
    idiv cx                          ; 0x179b
    mov cx, 7                        ; 0x179d
    imul cx                          ; 0x17a0
    add ax, word [grid_origin_y]     ; 0x17a2
    add ax, strict word 7            ; 0x17a6
    push ax                          ; 0x17a9
    mov ax, word [bp - 6]            ; 0x17aa
    mov cx, 2                        ; 0x17ad
    cwd                              ; 0x17b0
    idiv cx                          ; 0x17b1
    mov cx, 7                        ; 0x17b3
    imul cx                          ; 0x17b6
    add ax, word [grid_origin_x]     ; 0x17b8
    add ax, strict word 7            ; 0x17bc
    push ax                          ; 0x17bf
    mov ax, word [bp - 8]            ; 0x17c0
    mov cx, 2                        ; 0x17c3
    cwd                              ; 0x17c6
    idiv cx                          ; 0x17c7
    mov cx, 7                        ; 0x17c9
    imul cx                          ; 0x17cc
    add ax, word [grid_origin_y]     ; 0x17ce
    push ax                          ; 0x17d2
    mov ax, word [bp - 6]            ; 0x17d3
    mov cx, 2                        ; 0x17d6
    cwd                              ; 0x17d9
    idiv cx                          ; 0x17da
    mov cx, 7                        ; 0x17dc
    imul cx                          ; 0x17df
    add ax, word [grid_origin_x]     ; 0x17e1
    push ax                          ; 0x17e5
    call call_save_area              ; 0x17e6
    add sp, byte 8                   ; 0x17e9
    mov word [bp - 0x10], dx         ; 0x17ec
    mov word [bp - 0x12], ax         ; 0x17ef
show_map_view.back13:
    call poll_fullscreen_hotspot     ; 0x17f2
    test ax, ax                      ; 0x17f5
    je short show_map_view.forward82 ; 0x17f7
    jmp near show_map_view.forward83 ; 0x17f9
show_map_view.forward82:
    mov ax, 0                        ; 0x17fc
    push ax                          ; 0x17ff
    push ax                          ; 0x1800
    mov ax, word [party_tag]         ; 0x1801
    add ax, strict word 0x20         ; 0x1804
    push ax                          ; 0x1807
    mov ax, word [bp - 8]            ; 0x1808
    mov cx, 2                        ; 0x180b
    cwd                              ; 0x180e
    idiv cx                          ; 0x180f
    push ax                          ; 0x1811
    mov ax, word [bp - 6]            ; 0x1812
    cwd                              ; 0x1815
    idiv cx                          ; 0x1816
    push ax                          ; 0x1818
    call draw_grid_cell_char         ; 0x1819
    add sp, byte 0xa                 ; 0x181c
    mov ax, word [bp - 8]            ; 0x181f
    mov cx, 2                        ; 0x1822
    cwd                              ; 0x1825
    idiv cx                          ; 0x1826
    mov cx, 7                        ; 0x1828
    imul cx                          ; 0x182b
    add ax, word [grid_origin_y]     ; 0x182d
    add ax, strict word 7            ; 0x1831
    push ax                          ; 0x1834
    mov ax, word [bp - 6]            ; 0x1835
    mov cx, 2                        ; 0x1838
    cwd                              ; 0x183b
    idiv cx                          ; 0x183c
    mov cx, 7                        ; 0x183e
    imul cx                          ; 0x1841
    add ax, word [grid_origin_x]     ; 0x1843
    add ax, strict word 7            ; 0x1847
    push ax                          ; 0x184a
    mov ax, word [bp - 8]            ; 0x184b
    mov cx, 2                        ; 0x184e
    cwd                              ; 0x1851
    idiv cx                          ; 0x1852
    mov cx, 7                        ; 0x1854
    imul cx                          ; 0x1857
    add ax, word [grid_origin_y]     ; 0x1859
    push ax                          ; 0x185d
    mov ax, word [bp - 6]            ; 0x185e
    mov cx, 2                        ; 0x1861
    cwd                              ; 0x1864
    idiv cx                          ; 0x1865
    mov cx, 7                        ; 0x1867
    imul cx                          ; 0x186a
    add ax, word [grid_origin_x]     ; 0x186c
    push ax                          ; 0x1870
    call call_show_area              ; 0x1871
    add sp, byte 8                   ; 0x1874
    mov ax, 0x12c                    ; 0x1877
    push ax                          ; 0x187a
    call delay_ms                    ; 0x187b
    pop cx                           ; 0x187e
    mov ax, 0                        ; 0x187f
    push ax                          ; 0x1882
    push word [bp - 0x10]            ; 0x1883
    push word [bp - 0x12]            ; 0x1886
    call call_restore_area           ; 0x1889
    add sp, byte 6                   ; 0x188c
    mov ax, word [bp - 8]            ; 0x188f
    mov cx, 2                        ; 0x1892
    cwd                              ; 0x1895
    idiv cx                          ; 0x1896
    mov cx, 7                        ; 0x1898
    imul cx                          ; 0x189b
    add ax, word [grid_origin_y]     ; 0x189d
    add ax, strict word 7            ; 0x18a1
    push ax                          ; 0x18a4
    mov ax, word [bp - 6]            ; 0x18a5
    mov cx, 2                        ; 0x18a8
    cwd                              ; 0x18ab
    idiv cx                          ; 0x18ac
    mov cx, 7                        ; 0x18ae
    imul cx                          ; 0x18b1
    add ax, word [grid_origin_x]     ; 0x18b3
    add ax, strict word 7            ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, word [bp - 8]            ; 0x18bb
    mov cx, 2                        ; 0x18be
    cwd                              ; 0x18c1
    idiv cx                          ; 0x18c2
    mov cx, 7                        ; 0x18c4
    imul cx                          ; 0x18c7
    add ax, word [grid_origin_y]     ; 0x18c9
    push ax                          ; 0x18cd
    mov ax, word [bp - 6]            ; 0x18ce
    mov cx, 2                        ; 0x18d1
    cwd                              ; 0x18d4
    idiv cx                          ; 0x18d5
    mov cx, 7                        ; 0x18d7
    imul cx                          ; 0x18da
    add ax, word [grid_origin_x]     ; 0x18dc
    push ax                          ; 0x18e0
    call call_show_area              ; 0x18e1
    add sp, byte 8                   ; 0x18e4
    mov ax, 0x12c                    ; 0x18e7
    push ax                          ; 0x18ea
    call delay_ms                    ; 0x18eb
    pop cx                           ; 0x18ee
    jmp near show_map_view.back13    ; 0x18ef
show_map_view.forward83:
    mov ax, 1                        ; 0x18f2
    push ax                          ; 0x18f5
    push word [bp - 0x10]            ; 0x18f6
    push word [bp - 0x12]            ; 0x18f9
    call call_restore_area           ; 0x18fc
    add sp, byte 6                   ; 0x18ff
    mov ax, 0xf                      ; 0x1902
    push ax                          ; 0x1905
    call free_picture_slot           ; 0x1906
    pop cx                           ; 0x1909
    ret                              ; 0x190a
