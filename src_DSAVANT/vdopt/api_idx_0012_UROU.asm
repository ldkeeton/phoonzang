; auto-generated
api_idx_0012_UROU:
    mov ax, 0xffee                   ; 0x0fd3
    call aztec_csav                  ; 0x0fd6
    mov ax, word [bp + 0x8]          ; 0x0fd9
    mov word [bss_9858], ax          ; 0x0fdc
    mov ax, 0xf                      ; 0x0fdf
    push ax                          ; 0x0fe2
    mov ax, 0xe                      ; 0x0fe3
    push ax                          ; 0x0fe6
    call ds_app_file_TSNH            ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    mov ax, 0xf                      ; 0x0fed
    cmp word [bp + 0x6], byte 0      ; 0x0ff0
    jne short @..api_idx_0012_UROU.l2 ; 0x0ff4
    cmp word [bp + 0x4], byte 4      ; 0x0ff6
    jle short @..api_idx_0012_UROU.l1 ; 0x0ffa
    mov ax, word [bp + 0x4]          ; 0x0ffc
    shl ax, 1                        ; 0x0fff
    add ax, strict word 0xfff9       ; 0x1001
    jmp short @..api_idx_0012_UROU.l2 ; 0x1004
@..api_idx_0012_UROU.l1:
    mov ax, word [bp + 0x4]          ; 0x1006
    shl ax, 1                        ; 0x1009
    inc ax                           ; 0x100b
    inc ax                           ; 0x100c
    inc ax                           ; 0x100d
@..api_idx_0012_UROU.l2:
    mov word [bp - 0x0006], ax       ; 0x100e
    mov word [bp - 0x0008], ax       ; 0x1011
    cmp ax, strict word 0xd          ; 0x1014
    jle short @..api_idx_0012_UROU.l3 ; 0x1017
    mov word [bp - 0x0008], 0xd      ; 0x1019
@..api_idx_0012_UROU.l3:
    mov cx, 2                        ; 0x101e
    cwd                              ; 0x1021
    idiv cx                          ; 0x1022
    mov word [bp - 0x000a], ax       ; 0x1024
    mov ax, word [bp - 0x0008]       ; 0x1027
    cwd                              ; 0x102a
    idiv cx                          ; 0x102b
    mov word [bp - 0x000c], ax       ; 0x102d
    mov ax, 7                        ; 0x1030
    imul word [bp - 0x0006]          ; 0x1033
    cwd                              ; 0x1036
    idiv cx                          ; 0x1037
    mov cx, ax                       ; 0x1039
    mov ax, 0xa0                     ; 0x103b
    sub ax, cx                       ; 0x103e
    mov word [grid_origin_x], ax     ; 0x1040
    mov ax, 7                        ; 0x1043
    imul word [bp - 0x0008]          ; 0x1046
    mov cx, 2                        ; 0x1049
    cwd                              ; 0x104c
    idiv cx                          ; 0x104d
    mov cx, ax                       ; 0x104f
    mov ax, 0x56                     ; 0x1051
    sub ax, cx                       ; 0x1054
    mov word [grid_origin_y], ax     ; 0x1056
    cmp word [bss_9858], byte 0      ; 0x1059
    je short @..api_idx_0012_UROU.l4 ; 0x105e
    mov word [bp + 0x4], 1           ; 0x1060
@..api_idx_0012_UROU.l4:
    mov ax, word [maze_variant]      ; 0x1065
    jmp near @..api_idx_0012_UROU.l51 ; 0x1068
jumptable_147e_case_1:
    mov ax, 0xffff                   ; 0x106b
    cmp word [bp + 0x4], byte 1      ; 0x106e
    jle short @..api_idx_0012_UROU.l5 ; 0x1072
    mov ax, 0xa                      ; 0x1074
@..api_idx_0012_UROU.l5:
    mov word [bss_9af8], ax          ; 0x1077
    mov ax, 0xffff                   ; 0x107a
    cmp word [bp + 0x4], byte 1      ; 0x107d
    jle short @..api_idx_0012_UROU.l6 ; 0x1081
    mov ax, 0xb                      ; 0x1083
@..api_idx_0012_UROU.l6:
    mov word [bss_9b00], ax          ; 0x1086
    mov ax, 0xc                      ; 0x1089
    cmp word [bp + 0x4], byte 2      ; 0x108c
    jg short @..api_idx_0012_UROU.l7 ; 0x1090
    mov ax, 0xffff                   ; 0x1092
    cmp word [bp + 0x4], byte 1      ; 0x1095
    jle short @..api_idx_0012_UROU.l7 ; 0x1099
    mov ax, 0xa                      ; 0x109b
@..api_idx_0012_UROU.l7:
    mov word [bss_9af6], ax          ; 0x109e
    mov ax, 0xd                      ; 0x10a1
    cmp word [bp + 0x4], byte 2      ; 0x10a4
    jg short @..api_idx_0012_UROU.l8 ; 0x10a8
    mov ax, 0xffff                   ; 0x10aa
    cmp word [bp + 0x4], byte 1      ; 0x10ad
    jle short @..api_idx_0012_UROU.l8 ; 0x10b1
    mov ax, 0xb                      ; 0x10b3
@..api_idx_0012_UROU.l8:
    mov word [bss_9afe], ax          ; 0x10b6
    mov ax, 0xe                      ; 0x10b9
    cmp word [bp + 0x4], byte 2      ; 0x10bc
    jg short @..api_idx_0012_UROU.l9 ; 0x10c0
    mov ax, 0xffff                   ; 0x10c2
    cmp word [bp + 0x4], byte 1      ; 0x10c5
    jle short @..api_idx_0012_UROU.l9 ; 0x10c9
    mov ax, 0xa                      ; 0x10cb
@..api_idx_0012_UROU.l9:
    mov word [bss_9afa], ax          ; 0x10ce
    mov ax, 0xf                      ; 0x10d1
    cmp word [bp + 0x4], byte 2      ; 0x10d4
    jg short @..api_idx_0012_UROU.l10 ; 0x10d8
    mov ax, 0xffff                   ; 0x10da
    cmp word [bp + 0x4], byte 1      ; 0x10dd
    jle short @..api_idx_0012_UROU.l10 ; 0x10e1
    mov ax, 0xb                      ; 0x10e3
@..api_idx_0012_UROU.l10:
    mov word [bss_9b02], ax          ; 0x10e6
    mov word [bss_9af0], 1           ; 0x10e9
    mov word [bss_9af4], 0xffff      ; 0x10ef
    mov word [bss_9af2], 0xffff      ; 0x10f5
    mov word [bss_9342], 6           ; 0x10fb
    mov word [bss_9b06], 6           ; 0x1101
    mov ax, 0xffff                   ; 0x1107
    cmp word [bp + 0x4], byte 1      ; 0x110a
    jle short @..api_idx_0012_UROU.l11 ; 0x110e
    mov ax, 0xa                      ; 0x1110
@..api_idx_0012_UROU.l11:
    mov word [bss_9344], ax          ; 0x1113
    mov ax, 0xffff                   ; 0x1116
    cmp word [bp + 0x4], byte 1      ; 0x1119
    jle short @..api_idx_0012_UROU.l12 ; 0x111d
    mov ax, 0xb                      ; 0x111f
@..api_idx_0012_UROU.l12:
    mov word [bss_95ce], ax          ; 0x1122
    jmp near jumptable_147e_case_0   ; 0x1125
jumptable_147e_case_2:
    mov ax, 0xffff                   ; 0x1128
    cmp word [bp + 0x4], byte 1      ; 0x112b
    jle short @..api_idx_0012_UROU.l13 ; 0x112f
    mov ax, 0x10                     ; 0x1131
@..api_idx_0012_UROU.l13:
    mov word [bss_9af8], ax          ; 0x1134
    mov ax, 0xffff                   ; 0x1137
    cmp word [bp + 0x4], byte 1      ; 0x113a
    jle short @..api_idx_0012_UROU.l14 ; 0x113e
    mov ax, 0x11                     ; 0x1140
@..api_idx_0012_UROU.l14:
    mov word [bss_9b00], ax          ; 0x1143
    mov ax, 0x12                     ; 0x1146
    cmp word [bp + 0x4], byte 2      ; 0x1149
    jg short @..api_idx_0012_UROU.l15 ; 0x114d
    mov ax, 0xffff                   ; 0x114f
    cmp word [bp + 0x4], byte 1      ; 0x1152
    jle short @..api_idx_0012_UROU.l15 ; 0x1156
    mov ax, 0x10                     ; 0x1158
@..api_idx_0012_UROU.l15:
    mov word [bss_9af6], ax          ; 0x115b
    mov ax, 0x13                     ; 0x115e
    cmp word [bp + 0x4], byte 2      ; 0x1161
    jg short @..api_idx_0012_UROU.l16 ; 0x1165
    mov ax, 0xffff                   ; 0x1167
    cmp word [bp + 0x4], byte 1      ; 0x116a
    jle short @..api_idx_0012_UROU.l16 ; 0x116e
    mov ax, 0x11                     ; 0x1170
@..api_idx_0012_UROU.l16:
    mov word [bss_9afe], ax          ; 0x1173
    mov ax, 0x14                     ; 0x1176
    cmp word [bp + 0x4], byte 2      ; 0x1179
    jg short @..api_idx_0012_UROU.l17 ; 0x117d
    mov ax, 0xffff                   ; 0x117f
    cmp word [bp + 0x4], byte 1      ; 0x1182
    jle short @..api_idx_0012_UROU.l17 ; 0x1186
    mov ax, 0x10                     ; 0x1188
@..api_idx_0012_UROU.l17:
    mov word [bss_9afa], ax          ; 0x118b
    mov ax, 0x15                     ; 0x118e
    cmp word [bp + 0x4], byte 2      ; 0x1191
    jg short @..api_idx_0012_UROU.l18 ; 0x1195
    mov ax, 0xffff                   ; 0x1197
    cmp word [bp + 0x4], byte 1      ; 0x119a
    jle short @..api_idx_0012_UROU.l18 ; 0x119e
    mov ax, 0x11                     ; 0x11a0
@..api_idx_0012_UROU.l18:
    mov word [bss_9b02], ax          ; 0x11a3
    mov word [bss_9af0], 5           ; 0x11a6
    mov word [bss_9af4], 4           ; 0x11ac
    mov word [bss_9af2], 3           ; 0x11b2
    mov word [bss_9342], 8           ; 0x11b8
    mov word [bss_9b06], 7           ; 0x11be
    mov ax, 0xffff                   ; 0x11c4
    cmp word [bp + 0x4], byte 1      ; 0x11c7
    jle short @..api_idx_0012_UROU.l19 ; 0x11cb
    mov ax, 0x16                     ; 0x11cd
@..api_idx_0012_UROU.l19:
    mov word [bss_9344], ax          ; 0x11d0
    mov ax, 0xffff                   ; 0x11d3
    cmp word [bp + 0x4], byte 1      ; 0x11d6
    jle short @..api_idx_0012_UROU.l20 ; 0x11da
    mov ax, 0x17                     ; 0x11dc
@..api_idx_0012_UROU.l20:
    mov word [bss_95ce], ax          ; 0x11df
    jmp near jumptable_147e_case_0   ; 0x11e2
jumptable_147e_case_3:
    mov ax, 0xffff                   ; 0x11e5
    cmp word [bp + 0x4], byte 1      ; 0x11e8
    jle short @..api_idx_0012_UROU.l21 ; 0x11ec
    mov ax, 0x10                     ; 0x11ee
@..api_idx_0012_UROU.l21:
    mov word [bss_9af8], ax          ; 0x11f1
    mov ax, 0xffff                   ; 0x11f4
    cmp word [bp + 0x4], byte 1      ; 0x11f7
    jle short @..api_idx_0012_UROU.l22 ; 0x11fb
    mov ax, 0x11                     ; 0x11fd
@..api_idx_0012_UROU.l22:
    mov word [bss_9b00], ax          ; 0x1200
    mov ax, 0x12                     ; 0x1203
    cmp word [bp + 0x4], byte 2      ; 0x1206
    jg short @..api_idx_0012_UROU.l23 ; 0x120a
    mov ax, 0xffff                   ; 0x120c
    cmp word [bp + 0x4], byte 1      ; 0x120f
    jle short @..api_idx_0012_UROU.l23 ; 0x1213
    mov ax, 0x10                     ; 0x1215
@..api_idx_0012_UROU.l23:
    mov word [bss_9af6], ax          ; 0x1218
    mov ax, 0x13                     ; 0x121b
    cmp word [bp + 0x4], byte 2      ; 0x121e
    jg short @..api_idx_0012_UROU.l24 ; 0x1222
    mov ax, 0xffff                   ; 0x1224
    cmp word [bp + 0x4], byte 1      ; 0x1227
    jle short @..api_idx_0012_UROU.l24 ; 0x122b
    mov ax, 0x11                     ; 0x122d
@..api_idx_0012_UROU.l24:
    mov word [bss_9afe], ax          ; 0x1230
    mov ax, 0x14                     ; 0x1233
    cmp word [bp + 0x4], byte 2      ; 0x1236
    jg short @..api_idx_0012_UROU.l25 ; 0x123a
    mov ax, 0xffff                   ; 0x123c
    cmp word [bp + 0x4], byte 1      ; 0x123f
    jle short @..api_idx_0012_UROU.l25 ; 0x1243
    mov ax, 0x10                     ; 0x1245
@..api_idx_0012_UROU.l25:
    mov word [bss_9afa], ax          ; 0x1248
    mov ax, 0x15                     ; 0x124b
    cmp word [bp + 0x4], byte 2      ; 0x124e
    jg short @..api_idx_0012_UROU.l26 ; 0x1252
    mov ax, 0xffff                   ; 0x1254
    cmp word [bp + 0x4], byte 1      ; 0x1257
    jle short @..api_idx_0012_UROU.l26 ; 0x125b
    mov ax, 0x11                     ; 0x125d
@..api_idx_0012_UROU.l26:
    mov word [bss_9b02], ax          ; 0x1260
    mov word [bss_9af0], 4           ; 0x1263
    mov word [bss_9af4], 3           ; 0x1269
    mov word [bss_9af2], 0xffff      ; 0x126f
    mov word [bss_9342], 7           ; 0x1275
    mov word [bss_9b06], 7           ; 0x127b
    mov ax, 0xffff                   ; 0x1281
    cmp word [bp + 0x4], byte 1      ; 0x1284
    jle short @..api_idx_0012_UROU.l27 ; 0x1288
    mov ax, 0x10                     ; 0x128a
@..api_idx_0012_UROU.l27:
    mov word [bss_9344], ax          ; 0x128d
    mov ax, 0xffff                   ; 0x1290
    cmp word [bp + 0x4], byte 1      ; 0x1293
    jle short @..api_idx_0012_UROU.l28 ; 0x1297
    mov ax, 0x11                     ; 0x1299
@..api_idx_0012_UROU.l28:
    mov word [bss_95ce], ax          ; 0x129c
    jmp near jumptable_147e_case_0   ; 0x129f
jumptable_147e_case_4:
    mov ax, 0xffff                   ; 0x12a2
    cmp word [bp + 0x4], byte 1      ; 0x12a5
    jle short @..api_idx_0012_UROU.l29 ; 0x12a9
    mov ax, 0x18                     ; 0x12ab
@..api_idx_0012_UROU.l29:
    mov word [bss_9af8], ax          ; 0x12ae
    mov ax, 0xffff                   ; 0x12b1
    cmp word [bp + 0x4], byte 1      ; 0x12b4
    jle short @..api_idx_0012_UROU.l30 ; 0x12b8
    mov ax, 0x19                     ; 0x12ba
@..api_idx_0012_UROU.l30:
    mov word [bss_9b00], ax          ; 0x12bd
    mov ax, 0xffff                   ; 0x12c0
    cmp word [bp + 0x4], byte 1      ; 0x12c3
    jle short @..api_idx_0012_UROU.l31 ; 0x12c7
    mov ax, 0x18                     ; 0x12c9
@..api_idx_0012_UROU.l31:
    mov word [bss_9af6], ax          ; 0x12cc
    mov ax, 0xffff                   ; 0x12cf
    cmp word [bp + 0x4], byte 1      ; 0x12d2
    jle short @..api_idx_0012_UROU.l32 ; 0x12d6
    mov ax, 0x19                     ; 0x12d8
@..api_idx_0012_UROU.l32:
    mov word [bss_9afe], ax          ; 0x12db
    mov ax, 0xffff                   ; 0x12de
    cmp word [bp + 0x4], byte 1      ; 0x12e1
    jle short @..api_idx_0012_UROU.l33 ; 0x12e5
    mov ax, 0x18                     ; 0x12e7
@..api_idx_0012_UROU.l33:
    mov word [bss_9afa], ax          ; 0x12ea
    mov ax, 0xffff                   ; 0x12ed
    cmp word [bp + 0x4], byte 1      ; 0x12f0
    jle short @..api_idx_0012_UROU.l34 ; 0x12f4
    mov ax, 0x19                     ; 0x12f6
@..api_idx_0012_UROU.l34:
    mov word [bss_9b02], ax          ; 0x12f9
    mov word [bss_9af0], 1           ; 0x12fc
    mov word [bss_9af4], 4           ; 0x1302
    mov word [bss_9af2], 0xffff      ; 0x1308
    mov word [bss_9342], 8           ; 0x130e
    mov word [bss_9b06], 9           ; 0x1314
    mov ax, 0xffff                   ; 0x131a
    cmp word [bp + 0x4], byte 1      ; 0x131d
    jle short @..api_idx_0012_UROU.l35 ; 0x1321
    mov ax, 0x16                     ; 0x1323
@..api_idx_0012_UROU.l35:
    mov word [bss_9344], ax          ; 0x1326
    mov ax, 0xffff                   ; 0x1329
    cmp word [bp + 0x4], byte 1      ; 0x132c
    jle short @..api_idx_0012_UROU.l36 ; 0x1330
    mov ax, 0x17                     ; 0x1332
@..api_idx_0012_UROU.l36:
    mov word [bss_95ce], ax          ; 0x1335
    jmp near jumptable_147e_case_0   ; 0x1338
jumptable_147e_case_5:
    mov ax, 0xffff                   ; 0x133b
    cmp word [bp + 0x4], byte 1      ; 0x133e
    jle short @..api_idx_0012_UROU.l37 ; 0x1342
    mov ax, 0x18                     ; 0x1344
@..api_idx_0012_UROU.l37:
    mov word [bss_9af8], ax          ; 0x1347
    mov ax, 0xffff                   ; 0x134a
    cmp word [bp + 0x4], byte 1      ; 0x134d
    jle short @..api_idx_0012_UROU.l38 ; 0x1351
    mov ax, 0x19                     ; 0x1353
@..api_idx_0012_UROU.l38:
    mov word [bss_9b00], ax          ; 0x1356
    mov ax, 0xffff                   ; 0x1359
    cmp word [bp + 0x4], byte 1      ; 0x135c
    jle short @..api_idx_0012_UROU.l39 ; 0x1360
    mov ax, 0x18                     ; 0x1362
@..api_idx_0012_UROU.l39:
    mov word [bss_9af6], ax          ; 0x1365
    mov ax, 0xffff                   ; 0x1368
    cmp word [bp + 0x4], byte 1      ; 0x136b
    jle short @..api_idx_0012_UROU.l40 ; 0x136f
    mov ax, 0x19                     ; 0x1371
@..api_idx_0012_UROU.l40:
    mov word [bss_9afe], ax          ; 0x1374
    mov ax, 0xffff                   ; 0x1377
    cmp word [bp + 0x4], byte 1      ; 0x137a
    jle short @..api_idx_0012_UROU.l41 ; 0x137e
    mov ax, 0x18                     ; 0x1380
@..api_idx_0012_UROU.l41:
    mov word [bss_9afa], ax          ; 0x1383
    mov ax, 0xffff                   ; 0x1386
    cmp word [bp + 0x4], byte 1      ; 0x1389
    jle short @..api_idx_0012_UROU.l42 ; 0x138d
    mov ax, 0x19                     ; 0x138f
@..api_idx_0012_UROU.l42:
    mov word [bss_9b02], ax          ; 0x1392
    mov word [bss_9af0], 1           ; 0x1395
    mov word [bss_9af4], 4           ; 0x139b
    mov word [bss_9af2], 0xffff      ; 0x13a1
    mov word [bss_9342], 9           ; 0x13a7
    mov word [bss_9b06], 9           ; 0x13ad
    mov ax, 0xffff                   ; 0x13b3
    cmp word [bp + 0x4], byte 1      ; 0x13b6
    jle short @..api_idx_0012_UROU.l43 ; 0x13ba
    mov ax, 0x18                     ; 0x13bc
@..api_idx_0012_UROU.l43:
    mov word [bss_9344], ax          ; 0x13bf
    mov ax, 0xffff                   ; 0x13c2
    cmp word [bp + 0x4], byte 1      ; 0x13c5
    jle short @..api_idx_0012_UROU.l44 ; 0x13c9
    mov ax, 0x19                     ; 0x13cb
@..api_idx_0012_UROU.l44:
    mov word [bss_95ce], ax          ; 0x13ce
    jmp near jumptable_147e_case_0   ; 0x13d1
jumptable_147e_case_6:
    mov ax, 0xffff                   ; 0x13d4
    cmp word [bp + 0x4], byte 1      ; 0x13d7
    jle short @..api_idx_0012_UROU.l45 ; 0x13db
    mov ax, 0x10                     ; 0x13dd
@..api_idx_0012_UROU.l45:
    mov word [bss_9af8], ax          ; 0x13e0
    mov ax, 0xffff                   ; 0x13e3
    cmp word [bp + 0x4], byte 1      ; 0x13e6
    jle short @..api_idx_0012_UROU.l46 ; 0x13ea
    mov ax, 0x11                     ; 0x13ec
@..api_idx_0012_UROU.l46:
    mov word [bss_9b00], ax          ; 0x13ef
    mov ax, 0x12                     ; 0x13f2
    cmp word [bp + 0x4], byte 2      ; 0x13f5
    jg short @..api_idx_0012_UROU.l47 ; 0x13f9
    mov ax, 0xffff                   ; 0x13fb
    cmp word [bp + 0x4], byte 1      ; 0x13fe
    jle short @..api_idx_0012_UROU.l47 ; 0x1402
    mov ax, 0x10                     ; 0x1404
@..api_idx_0012_UROU.l47:
    mov word [bss_9af6], ax          ; 0x1407
    mov ax, 0x13                     ; 0x140a
    cmp word [bp + 0x4], byte 2      ; 0x140d
    jg short @..api_idx_0012_UROU.l48 ; 0x1411
    mov ax, 0xffff                   ; 0x1413
    cmp word [bp + 0x4], byte 1      ; 0x1416
    jle short @..api_idx_0012_UROU.l48 ; 0x141a
    mov ax, 0x11                     ; 0x141c
@..api_idx_0012_UROU.l48:
    mov word [bss_9afe], ax          ; 0x141f
    mov ax, 0x14                     ; 0x1422
    cmp word [bp + 0x4], byte 2      ; 0x1425
    jg short @..api_idx_0012_UROU.l49 ; 0x1429
    mov ax, 0xffff                   ; 0x142b
    cmp word [bp + 0x4], byte 1      ; 0x142e
    jle short @..api_idx_0012_UROU.l49 ; 0x1432
    mov ax, 0x10                     ; 0x1434
@..api_idx_0012_UROU.l49:
    mov word [bss_9afa], ax          ; 0x1437
    mov ax, 0x15                     ; 0x143a
    cmp word [bp + 0x4], byte 2      ; 0x143d
    jg short @..api_idx_0012_UROU.l50 ; 0x1441
    mov ax, 0xffff                   ; 0x1443
    cmp word [bp + 0x4], byte 1      ; 0x1446
    jle short @..api_idx_0012_UROU.l50 ; 0x144a
    mov ax, 0x11                     ; 0x144c
@..api_idx_0012_UROU.l50:
    mov word [bss_9b02], ax          ; 0x144f
    mov word [bss_9af0], 5           ; 0x1452
    mov word [bss_9af4], 4           ; 0x1458
    mov word [bss_9af2], 2           ; 0x145e
    mov word [bss_9342], 7           ; 0x1464
    mov word [bss_9b06], 7           ; 0x146a
    mov word [bss_9344], 0xffff      ; 0x1470
    mov word [bss_95ce], 0xffff      ; 0x1476
    jmp short jumptable_147e_case_0  ; 0x147c
jumptable_147e:
    dw jumptable_147e_case_0 - IMAGE_BASE + __zres_end ; 0x147e
    dw jumptable_147e_case_1 - IMAGE_BASE + __zres_end ; 0x1480
    dw jumptable_147e_case_2 - IMAGE_BASE + __zres_end ; 0x1482
    dw jumptable_147e_case_3 - IMAGE_BASE + __zres_end ; 0x1484
    dw jumptable_147e_case_4 - IMAGE_BASE + __zres_end ; 0x1486
    dw jumptable_147e_case_5 - IMAGE_BASE + __zres_end ; 0x1488
    dw jumptable_147e_case_6 - IMAGE_BASE + __zres_end ; 0x148a
@..api_idx_0012_UROU.l51:
    cmp ax, strict word 7            ; 0x148c
    jae short jumptable_147e_case_0  ; 0x148f
    xchg bx, ax                      ; 0x1491
    shl bx, 1                        ; 0x1492
    jmp [cs:bx + jumptable_147e - IMAGE_BASE + __zres_end] ; 0x1494
jumptable_147e_case_0:
    mov word [bss_9aea], 2           ; 0x1499
    mov word [bss_9b08], 8           ; 0x149f
    mov ax, 0xffff                   ; 0x14a5
    cmp word [bp + 0x4], byte 1      ; 0x14a8
    jle short @..api_idx_0012_UROU.l52 ; 0x14ac
    mov ax, 0x16                     ; 0x14ae
@..api_idx_0012_UROU.l52:
    mov word [bss_9afc], ax          ; 0x14b1
    mov ax, 0xffff                   ; 0x14b4
    cmp word [bp + 0x4], byte 1      ; 0x14b7
    jle short @..api_idx_0012_UROU.l53 ; 0x14bb
    mov ax, 0x17                     ; 0x14bd
@..api_idx_0012_UROU.l53:
    mov word [bss_9b04], ax          ; 0x14c0
    mov ax, word [bss_9af0]          ; 0x14c3
    cmp word [bp + 0x4], byte 3      ; 0x14c6
    jle short @..api_idx_0012_UROU.l54 ; 0x14ca
    mov ax, 0x1a                     ; 0x14cc
@..api_idx_0012_UROU.l54:
    mov word [bss_9ae2], ax          ; 0x14cf
    mov ax, word [bss_9af0]          ; 0x14d2
    cmp word [bp + 0x4], byte 3      ; 0x14d5
    jle short @..api_idx_0012_UROU.l55 ; 0x14d9
    mov ax, 0x1b                     ; 0x14db
@..api_idx_0012_UROU.l55:
    mov word [bss_9ae4], ax          ; 0x14de
    mov ax, word [bss_9af0]          ; 0x14e1
    cmp word [bp + 0x4], byte 3      ; 0x14e4
    jle short @..api_idx_0012_UROU.l56 ; 0x14e8
    mov ax, 0x1c                     ; 0x14ea
@..api_idx_0012_UROU.l56:
    mov word [bss_9aee], ax          ; 0x14ed
    mov ax, word [bss_9af0]          ; 0x14f0
    cmp word [bp + 0x4], byte 3      ; 0x14f3
    jle short @..api_idx_0012_UROU.l57 ; 0x14f7
    mov ax, 0x1e                     ; 0x14f9
@..api_idx_0012_UROU.l57:
    mov word [bss_9aec], ax          ; 0x14fc
    mov ax, word [bss_9af0]          ; 0x14ff
    cmp word [bp + 0x4], byte 3      ; 0x1502
    jle short @..api_idx_0012_UROU.l58 ; 0x1506
    mov ax, 0x1d                     ; 0x1508
@..api_idx_0012_UROU.l58:
    mov word [bss_9ae8], ax          ; 0x150b
    mov ax, word [bss_9af0]          ; 0x150e
    cmp word [bp + 0x4], byte 3      ; 0x1511
    jle short @..api_idx_0012_UROU.l59 ; 0x1515
    mov ax, 0x1f                     ; 0x1517
@..api_idx_0012_UROU.l59:
    mov word [bss_9ae6], ax          ; 0x151a
    mov word [bp - 0x0002], 0        ; 0x151d
    jmp short @..api_idx_0012_UROU.l63 ; 0x1522
@..api_idx_0012_UROU.l60:
    mov word [bp - 0x0004], 0        ; 0x1524
    jmp short @..api_idx_0012_UROU.l62 ; 0x1529
@..api_idx_0012_UROU.l61:
    mov ax, word [bss_9af0]          ; 0x152b
    push ax                          ; 0x152e
    mov ax, 0x24                     ; 0x152f
    imul word [bp - 0x0002]          ; 0x1532
    mov cx, ax                       ; 0x1535
    mov dx, word [bp - 0x0004]       ; 0x1537
    shl dx, 1                        ; 0x153a
    add ax, dx                       ; 0x153c
    mov bx, ax                       ; 0x153e
    pop ax                           ; 0x1540
    mov word [bx + bss_90ba], ax     ; 0x1541
    mov word [bx + bss_9346], 0xffff ; 0x1545
    mov word [bx + bss_95d0], 0xffff ; 0x154b
    inc word [bp - 0x0004]           ; 0x1551
@..api_idx_0012_UROU.l62:
    mov ax, word [bp - 0x0008]       ; 0x1554
    inc ax                           ; 0x1557
    cmp ax, word [bp - 0x0004]       ; 0x1558
    jge short @..api_idx_0012_UROU.l61 ; 0x155b
    inc word [bp - 0x0002]           ; 0x155d
@..api_idx_0012_UROU.l63:
    mov ax, word [bp - 0x0006]       ; 0x1560
    inc ax                           ; 0x1563
    cmp ax, word [bp - 0x0002]       ; 0x1564
    jge short @..api_idx_0012_UROU.l60 ; 0x1567
    mov ax, 0                        ; 0x1569
    push ax                          ; 0x156c
    mov ax, 7                        ; 0x156d
    imul word [bp - 0x0008]          ; 0x1570
    add ax, word [grid_origin_y]     ; 0x1573
    dec ax                           ; 0x1577
    push ax                          ; 0x1578
    mov ax, 7                        ; 0x1579
    imul word [bp - 0x0006]          ; 0x157c
    add ax, word [grid_origin_x]     ; 0x157f
    dec ax                           ; 0x1583
    push ax                          ; 0x1584
    push word [grid_origin_y]        ; 0x1585
    push word [grid_origin_x]        ; 0x1589
    call gfx_fill_area               ; 0x158d
    add sp, byte 0x0a                ; 0x1590
    mov word [bp - 0x0004], 1        ; 0x1593
    jmp short @..api_idx_0012_UROU.l70 ; 0x1598
@..api_idx_0012_UROU.l64:
    mov word [bp - 0x0002], 1        ; 0x159a
    jmp short @..api_idx_0012_UROU.l69 ; 0x159f
@..api_idx_0012_UROU.l65:
    cmp word [bss_9858], byte 0      ; 0x15a1
    jne short @..api_idx_0012_UROU.l66 ; 0x15a6
    cmp word [bp + 0x6], byte 0      ; 0x15a8
    jne short @..api_idx_0012_UROU.l67 ; 0x15ac
    cmp word [bp + 0x4], byte 4      ; 0x15ae
    jle short @..api_idx_0012_UROU.l67 ; 0x15b2
@..api_idx_0012_UROU.l66:
    mov ax, 1                        ; 0x15b4
    jmp short @..api_idx_0012_UROU.l68 ; 0x15b7
@..api_idx_0012_UROU.l67:
    mov ax, 0                        ; 0x15b9
@..api_idx_0012_UROU.l68:
    push ax                          ; 0x15bc
    push word [bp - 0x0004]          ; 0x15bd
    push word [bp - 0x0002]          ; 0x15c0
    mov ax, word [party_world_y]     ; 0x15c3
    mov cx, word [bp - 0x0004]       ; 0x15c6
    dec cx                           ; 0x15c9
    sub ax, cx                       ; 0x15ca
    add ax, word [bp - 0x000c]       ; 0x15cc
    push ax                          ; 0x15cf
    mov ax, word [party_world_x]     ; 0x15d0
    add ax, word [bp - 0x0002]       ; 0x15d3
    dec ax                           ; 0x15d6
    sub ax, word [bp - 0x000a]       ; 0x15d7
    push ax                          ; 0x15da
    call api_idx_0014_HTUV           ; 0x15db
    add sp, byte 0x0a                ; 0x15de
    inc word [bp - 0x0002]           ; 0x15e1
@..api_idx_0012_UROU.l69:
    mov ax, word [bp - 0x0002]       ; 0x15e4
    cmp ax, word [bp - 0x0006]       ; 0x15e7
    jle short @..api_idx_0012_UROU.l65 ; 0x15ea
    inc word [bp - 0x0004]           ; 0x15ec
@..api_idx_0012_UROU.l70:
    mov ax, word [bp - 0x0004]       ; 0x15ef
    cmp ax, word [bp - 0x0008]       ; 0x15f2
    jle short @..api_idx_0012_UROU.l64 ; 0x15f5
    cmp word [bp + 0x4], byte 1      ; 0x15f7
    jle short @..api_idx_0012_UROU.l75 ; 0x15fb
    mov word [bp - 0x0004], 1        ; 0x15fd
    jmp short @..api_idx_0012_UROU.l74 ; 0x1602
@..api_idx_0012_UROU.l71:
    mov word [bp - 0x0002], 1        ; 0x1604
    jmp short @..api_idx_0012_UROU.l73 ; 0x1609
@..api_idx_0012_UROU.l72:
    push word [bp - 0x0004]          ; 0x160b
    push word [bp - 0x0002]          ; 0x160e
    call loc_GTJK                    ; 0x1611
    add sp, byte 4                   ; 0x1614
    inc word [bp - 0x0002]           ; 0x1617
@..api_idx_0012_UROU.l73:
    mov ax, word [bp - 0x0002]       ; 0x161a
    cmp ax, word [bp - 0x0006]       ; 0x161d
    jle short @..api_idx_0012_UROU.l72 ; 0x1620
    inc word [bp - 0x0004]           ; 0x1622
@..api_idx_0012_UROU.l74:
    mov ax, word [bp - 0x0004]       ; 0x1625
    cmp ax, word [bp - 0x0008]       ; 0x1628
    jle short @..api_idx_0012_UROU.l71 ; 0x162b
@..api_idx_0012_UROU.l75:
    mov word [bp - 0x0004], 1        ; 0x162d
    jmp short @..api_idx_0012_UROU.l80 ; 0x1632
@..api_idx_0012_UROU.l76:
    mov word [bp - 0x0002], 1        ; 0x1634
    jmp short @..api_idx_0012_UROU.l79 ; 0x1639
@..api_idx_0012_UROU.l77:
    mov ax, 0x24                     ; 0x163b
    imul word [bp - 0x0002]          ; 0x163e
    mov cx, word [bp - 0x0004]       ; 0x1641
    shl cx, 1                        ; 0x1644
    add ax, cx                       ; 0x1646
    mov bx, ax                       ; 0x1648
    cmp word [bx + bss_90ba], byte 0xff ; 0x164a
    je short @..api_idx_0012_UROU.l78 ; 0x164f
    mov ax, 0                        ; 0x1651
    push ax                          ; 0x1654
    push ax                          ; 0x1655
    push word [bx + bss_90ba]        ; 0x1656
    mov ax, word [bp - 0x0004]       ; 0x165a
    dec ax                           ; 0x165d
    push ax                          ; 0x165e
    mov ax, word [bp - 0x0002]       ; 0x165f
    dec ax                           ; 0x1662
    push ax                          ; 0x1663
    call draw_grid_cell_char         ; 0x1664
    add sp, byte 0x0a                ; 0x1667
@..api_idx_0012_UROU.l78:
    inc word [bp - 0x0002]           ; 0x166a
@..api_idx_0012_UROU.l79:
    mov ax, word [bp - 0x0002]       ; 0x166d
    cmp ax, word [bp - 0x0006]       ; 0x1670
    jle short @..api_idx_0012_UROU.l77 ; 0x1673
    inc word [bp - 0x0004]           ; 0x1675
@..api_idx_0012_UROU.l80:
    mov ax, word [bp - 0x0004]       ; 0x1678
    cmp ax, word [bp - 0x0008]       ; 0x167b
    jle short @..api_idx_0012_UROU.l76 ; 0x167e
    mov word [bp - 0x0004], 0        ; 0x1680
    jmp short @..api_idx_0012_UROU.l86 ; 0x1685
@..api_idx_0012_UROU.l81:
    mov word [bp - 0x0002], 0        ; 0x1687
    jmp short @..api_idx_0012_UROU.l85 ; 0x168c
@..api_idx_0012_UROU.l82:
    mov ax, 0x24                     ; 0x168e
    imul word [bp - 0x0002]          ; 0x1691
    mov cx, word [bp - 0x0004]       ; 0x1694
    shl cx, 1                        ; 0x1697
    add ax, cx                       ; 0x1699
    mov bx, ax                       ; 0x169b
    cmp word [bx + bss_9346], byte 0xff ; 0x169d
    je short @..api_idx_0012_UROU.l83 ; 0x16a2
    mov ax, 0xffff                   ; 0x16a4
    push ax                          ; 0x16a7
    push ax                          ; 0x16a8
    push word [bx + bss_9346]        ; 0x16a9
    mov ax, word [bp - 0x0004]       ; 0x16ad
    dec ax                           ; 0x16b0
    push ax                          ; 0x16b1
    mov ax, word [bp - 0x0002]       ; 0x16b2
    dec ax                           ; 0x16b5
    push ax                          ; 0x16b6
    call draw_grid_cell_char         ; 0x16b7
    add sp, byte 0x0a                ; 0x16ba
@..api_idx_0012_UROU.l83:
    mov ax, 0x24                     ; 0x16bd
    imul word [bp - 0x0002]          ; 0x16c0
    mov cx, word [bp - 0x0004]       ; 0x16c3
    shl cx, 1                        ; 0x16c6
    add ax, cx                       ; 0x16c8
    mov bx, ax                       ; 0x16ca
    cmp word [bx + bss_95d0], byte 0xff ; 0x16cc
    je short @..api_idx_0012_UROU.l84 ; 0x16d1
    mov ax, 0xffff                   ; 0x16d3
    push ax                          ; 0x16d6
    push ax                          ; 0x16d7
    push word [bx + bss_95d0]        ; 0x16d8
    mov ax, word [bp - 0x0004]       ; 0x16dc
    dec ax                           ; 0x16df
    push ax                          ; 0x16e0
    mov ax, word [bp - 0x0002]       ; 0x16e1
    dec ax                           ; 0x16e4
    push ax                          ; 0x16e5
    call draw_grid_cell_char         ; 0x16e6
    add sp, byte 0x0a                ; 0x16e9
@..api_idx_0012_UROU.l84:
    inc word [bp - 0x0002]           ; 0x16ec
@..api_idx_0012_UROU.l85:
    mov ax, word [bp - 0x0006]       ; 0x16ef
    inc ax                           ; 0x16f2
    cmp ax, word [bp - 0x0002]       ; 0x16f3
    jge short @..api_idx_0012_UROU.l82 ; 0x16f6
    inc word [bp - 0x0004]           ; 0x16f8
@..api_idx_0012_UROU.l86:
    mov ax, word [bp - 0x0008]       ; 0x16fb
    inc ax                           ; 0x16fe
    cmp ax, word [bp - 0x0004]       ; 0x16ff
    jge short @..api_idx_0012_UROU.l81 ; 0x1702
    cmp word [bss_9858], byte 0      ; 0x1704
    je short @..api_idx_0012_UROU.l92 ; 0x1709
    mov word [bp - 0x0004], 0        ; 0x170b
    jmp short @..api_idx_0012_UROU.l91 ; 0x1710
@..api_idx_0012_UROU.l87:
    mov word [bp - 0x0002], 0        ; 0x1712
    jmp short @..api_idx_0012_UROU.l90 ; 0x1717
@..api_idx_0012_UROU.l88:
    mov ax, 0x24                     ; 0x1719
    imul word [bp - 0x0002]          ; 0x171c
    mov cx, word [bp - 0x0004]       ; 0x171f
    shl cx, 1                        ; 0x1722
    add ax, cx                       ; 0x1724
    mov bx, ax                       ; 0x1726
    cmp word [bx + bss_985a], byte 1 ; 0x1728
    jne short @..api_idx_0012_UROU.l89 ; 0x172d
    mov ax, word [bp - 0x0004]       ; 0x172f
    dec ax                           ; 0x1732
    push ax                          ; 0x1733
    mov ax, word [bp - 0x0002]       ; 0x1734
    dec ax                           ; 0x1737
    push ax                          ; 0x1738
    call loc_TIPV                    ; 0x1739
    add sp, byte 4                   ; 0x173c
@..api_idx_0012_UROU.l89:
    inc word [bp - 0x0002]           ; 0x173f
@..api_idx_0012_UROU.l90:
    mov ax, word [bp - 0x0002]       ; 0x1742
    cmp ax, word [bp - 0x0006]       ; 0x1745
    jle short @..api_idx_0012_UROU.l88 ; 0x1748
    inc word [bp - 0x0004]           ; 0x174a
@..api_idx_0012_UROU.l91:
    mov ax, word [bp - 0x0004]       ; 0x174d
    cmp ax, word [bp - 0x0008]       ; 0x1750
    jle short @..api_idx_0012_UROU.l87 ; 0x1753
@..api_idx_0012_UROU.l92:
    mov ax, 7                        ; 0x1755
    imul word [bp - 0x0008]          ; 0x1758
    add ax, word [grid_origin_y]     ; 0x175b
    dec ax                           ; 0x175f
    push ax                          ; 0x1760
    mov ax, 7                        ; 0x1761
    imul word [bp - 0x0006]          ; 0x1764
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
    call gfx_show_area               ; 0x178b
    add sp, byte 8                   ; 0x178e
    call flush_keyboard              ; 0x1791
    mov ax, word [bp - 0x0008]       ; 0x1794
    mov cx, 2                        ; 0x1797
    cwd                              ; 0x179a
    idiv cx                          ; 0x179b
    mov cx, 7                        ; 0x179d
    imul cx                          ; 0x17a0
    add ax, word [grid_origin_y]     ; 0x17a2
    add ax, strict word 7            ; 0x17a6
    push ax                          ; 0x17a9
    mov ax, word [bp - 0x0006]       ; 0x17aa
    mov cx, 2                        ; 0x17ad
    cwd                              ; 0x17b0
    idiv cx                          ; 0x17b1
    mov cx, 7                        ; 0x17b3
    imul cx                          ; 0x17b6
    add ax, word [grid_origin_x]     ; 0x17b8
    add ax, strict word 7            ; 0x17bc
    push ax                          ; 0x17bf
    mov ax, word [bp - 0x0008]       ; 0x17c0
    mov cx, 2                        ; 0x17c3
    cwd                              ; 0x17c6
    idiv cx                          ; 0x17c7
    mov cx, 7                        ; 0x17c9
    imul cx                          ; 0x17cc
    add ax, word [grid_origin_y]     ; 0x17ce
    push ax                          ; 0x17d2
    mov ax, word [bp - 0x0006]       ; 0x17d3
    mov cx, 2                        ; 0x17d6
    cwd                              ; 0x17d9
    idiv cx                          ; 0x17da
    mov cx, 7                        ; 0x17dc
    imul cx                          ; 0x17df
    add ax, word [grid_origin_x]     ; 0x17e1
    push ax                          ; 0x17e5
    call gfx_save_area               ; 0x17e6
    add sp, byte 8                   ; 0x17e9
    mov word [bp - 0x0010], dx       ; 0x17ec
    mov word [bp - 0x0012], ax       ; 0x17ef
@..api_idx_0012_UROU.l93:
    call ds_app_TMKJ                 ; 0x17f2
    test ax, ax                      ; 0x17f5
    je short @..api_idx_0012_UROU.l94 ; 0x17f7
    jmp near @..api_idx_0012_UROU.l95 ; 0x17f9
@..api_idx_0012_UROU.l94:
    mov ax, 0                        ; 0x17fc
    push ax                          ; 0x17ff
    push ax                          ; 0x1800
    mov ax, word [party_tag]         ; 0x1801
    add ax, strict word 0x20         ; 0x1804
    push ax                          ; 0x1807
    mov ax, word [bp - 0x0008]       ; 0x1808
    mov cx, 2                        ; 0x180b
    cwd                              ; 0x180e
    idiv cx                          ; 0x180f
    push ax                          ; 0x1811
    mov ax, word [bp - 0x0006]       ; 0x1812
    cwd                              ; 0x1815
    idiv cx                          ; 0x1816
    push ax                          ; 0x1818
    call draw_grid_cell_char         ; 0x1819
    add sp, byte 0x0a                ; 0x181c
    mov ax, word [bp - 0x0008]       ; 0x181f
    mov cx, 2                        ; 0x1822
    cwd                              ; 0x1825
    idiv cx                          ; 0x1826
    mov cx, 7                        ; 0x1828
    imul cx                          ; 0x182b
    add ax, word [grid_origin_y]     ; 0x182d
    add ax, strict word 7            ; 0x1831
    push ax                          ; 0x1834
    mov ax, word [bp - 0x0006]       ; 0x1835
    mov cx, 2                        ; 0x1838
    cwd                              ; 0x183b
    idiv cx                          ; 0x183c
    mov cx, 7                        ; 0x183e
    imul cx                          ; 0x1841
    add ax, word [grid_origin_x]     ; 0x1843
    add ax, strict word 7            ; 0x1847
    push ax                          ; 0x184a
    mov ax, word [bp - 0x0008]       ; 0x184b
    mov cx, 2                        ; 0x184e
    cwd                              ; 0x1851
    idiv cx                          ; 0x1852
    mov cx, 7                        ; 0x1854
    imul cx                          ; 0x1857
    add ax, word [grid_origin_y]     ; 0x1859
    push ax                          ; 0x185d
    mov ax, word [bp - 0x0006]       ; 0x185e
    mov cx, 2                        ; 0x1861
    cwd                              ; 0x1864
    idiv cx                          ; 0x1865
    mov cx, 7                        ; 0x1867
    imul cx                          ; 0x186a
    add ax, word [grid_origin_x]     ; 0x186c
    push ax                          ; 0x1870
    call gfx_show_area               ; 0x1871
    add sp, byte 8                   ; 0x1874
    mov ax, 0x12c                    ; 0x1877
    push ax                          ; 0x187a
    call delay_ms                    ; 0x187b
    pop cx                           ; 0x187e
    mov ax, 0                        ; 0x187f
    push ax                          ; 0x1882
    push word [bp - 0x0010]          ; 0x1883
    push word [bp - 0x0012]          ; 0x1886
    call gfx_restore_area            ; 0x1889
    add sp, byte 6                   ; 0x188c
    mov ax, word [bp - 0x0008]       ; 0x188f
    mov cx, 2                        ; 0x1892
    cwd                              ; 0x1895
    idiv cx                          ; 0x1896
    mov cx, 7                        ; 0x1898
    imul cx                          ; 0x189b
    add ax, word [grid_origin_y]     ; 0x189d
    add ax, strict word 7            ; 0x18a1
    push ax                          ; 0x18a4
    mov ax, word [bp - 0x0006]       ; 0x18a5
    mov cx, 2                        ; 0x18a8
    cwd                              ; 0x18ab
    idiv cx                          ; 0x18ac
    mov cx, 7                        ; 0x18ae
    imul cx                          ; 0x18b1
    add ax, word [grid_origin_x]     ; 0x18b3
    add ax, strict word 7            ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, word [bp - 0x0008]       ; 0x18bb
    mov cx, 2                        ; 0x18be
    cwd                              ; 0x18c1
    idiv cx                          ; 0x18c2
    mov cx, 7                        ; 0x18c4
    imul cx                          ; 0x18c7
    add ax, word [grid_origin_y]     ; 0x18c9
    push ax                          ; 0x18cd
    mov ax, word [bp - 0x0006]       ; 0x18ce
    mov cx, 2                        ; 0x18d1
    cwd                              ; 0x18d4
    idiv cx                          ; 0x18d5
    mov cx, 7                        ; 0x18d7
    imul cx                          ; 0x18da
    add ax, word [grid_origin_x]     ; 0x18dc
    push ax                          ; 0x18e0
    call gfx_show_area               ; 0x18e1
    add sp, byte 8                   ; 0x18e4
    mov ax, 0x12c                    ; 0x18e7
    push ax                          ; 0x18ea
    call delay_ms                    ; 0x18eb
    pop cx                           ; 0x18ee
    jmp near @..api_idx_0012_UROU.l93 ; 0x18ef
@..api_idx_0012_UROU.l95:
    mov ax, 1                        ; 0x18f2
    push ax                          ; 0x18f5
    push word [bp - 0x0010]          ; 0x18f6
    push word [bp - 0x0012]          ; 0x18f9
    call gfx_restore_area            ; 0x18fc
    add sp, byte 6                   ; 0x18ff
    mov ax, 0xf                      ; 0x1902
    push ax                          ; 0x1905
    call free_picture_slot           ; 0x1906
    pop cx                           ; 0x1909
    ret                              ; 0x190a
