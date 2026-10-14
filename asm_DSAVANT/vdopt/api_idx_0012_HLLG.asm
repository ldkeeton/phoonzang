; auto-generated
api_idx_0012_HLLG:
    mov ax, 0xffee                   ; 0x0fd3
    call aztec_csav                  ; 0x0fd6
    mov ax, word [bp + 0x8]          ; 0x0fd9
    mov word [bss_9858], ax          ; 0x0fdc
    mov ax, 0xf                      ; 0x0fdf
    push ax                          ; 0x0fe2
    mov ax, 0xe                      ; 0x0fe3
    push ax                          ; 0x0fe6
    call ds_app_file_UMGJ            ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    mov ax, 0xf                      ; 0x0fed
    cmp word [bp + 0x6], byte 0      ; 0x0ff0
    jne short @..api_idx_0012_HLLG.l2 ; 0x0ff4
    cmp word [bp + 0x4], byte 4      ; 0x0ff6
    jle short @..api_idx_0012_HLLG.l1 ; 0x0ffa
    mov ax, word [bp + 0x4]          ; 0x0ffc
    shl ax, 1                        ; 0x0fff
    add ax, strict word 0xfff9       ; 0x1001
    jmp short @..api_idx_0012_HLLG.l2 ; 0x1004
@..api_idx_0012_HLLG.l1:
    mov ax, word [bp + 0x4]          ; 0x1006
    shl ax, 1                        ; 0x1009
    inc ax                           ; 0x100b
    inc ax                           ; 0x100c
    inc ax                           ; 0x100d
@..api_idx_0012_HLLG.l2:
    mov word [bp - 0x0006], ax       ; 0x100e
    mov word [bp - 0x0008], ax       ; 0x1011
    cmp ax, strict word 0xd          ; 0x1014
    jle short @..api_idx_0012_HLLG.l3 ; 0x1017
    mov word [bp - 0x0008], 0xd      ; 0x1019
@..api_idx_0012_HLLG.l3:
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
    mov word [bss_9b0c], ax          ; 0x1040
    mov ax, 7                        ; 0x1043
    imul word [bp - 0x0008]          ; 0x1046
    mov cx, 2                        ; 0x1049
    cwd                              ; 0x104c
    idiv cx                          ; 0x104d
    mov cx, ax                       ; 0x104f
    mov ax, 0x56                     ; 0x1051
    sub ax, cx                       ; 0x1054
    mov word [bss_9b0a], ax          ; 0x1056
    cmp word [bss_9858], byte 0      ; 0x1059
    je short @..api_idx_0012_HLLG.l4 ; 0x105e
    mov word [bp + 0x4], 1           ; 0x1060
@..api_idx_0012_HLLG.l4:
    mov ax, word [bss_5b6e]          ; 0x1065
    jmp near @..api_idx_0012_HLLG.l5 ; 0x1068
jumptable_147e_case_1:
    mov ax, 0xffff                   ; 0x106b
    cmp word [bp + 0x4], byte 1      ; 0x106e
    jle short @..leaf_loc_OUTG.l1    ; 0x1072
    mov ax, 0xa                      ; 0x1074
@..leaf_loc_OUTG.l1:
    mov word [bss_9af8], ax          ; 0x1077
    mov ax, 0xffff                   ; 0x107a
    cmp word [bp + 0x4], byte 1      ; 0x107d
    jle short @..leaf_loc_OUTG.l2    ; 0x1081
    mov ax, 0xb                      ; 0x1083
@..leaf_loc_OUTG.l2:
    mov word [bss_9b00], ax          ; 0x1086
    mov ax, 0xc                      ; 0x1089
    cmp word [bp + 0x4], byte 2      ; 0x108c
    jg short @..leaf_loc_OUTG.l3     ; 0x1090
    mov ax, 0xffff                   ; 0x1092
    cmp word [bp + 0x4], byte 1      ; 0x1095
    jle short @..leaf_loc_OUTG.l3    ; 0x1099
    mov ax, 0xa                      ; 0x109b
@..leaf_loc_OUTG.l3:
    mov word [bss_9af6], ax          ; 0x109e
    mov ax, 0xd                      ; 0x10a1
    cmp word [bp + 0x4], byte 2      ; 0x10a4
    jg short @..leaf_loc_OUTG.l4     ; 0x10a8
    mov ax, 0xffff                   ; 0x10aa
    cmp word [bp + 0x4], byte 1      ; 0x10ad
    jle short @..leaf_loc_OUTG.l4    ; 0x10b1
    mov ax, 0xb                      ; 0x10b3
@..leaf_loc_OUTG.l4:
    mov word [bss_9afe], ax          ; 0x10b6
    mov ax, 0xe                      ; 0x10b9
    cmp word [bp + 0x4], byte 2      ; 0x10bc
    jg short @..leaf_loc_OUTG.l5     ; 0x10c0
    mov ax, 0xffff                   ; 0x10c2
    cmp word [bp + 0x4], byte 1      ; 0x10c5
    jle short @..leaf_loc_OUTG.l5    ; 0x10c9
    mov ax, 0xa                      ; 0x10cb
@..leaf_loc_OUTG.l5:
    mov word [bss_9afa], ax          ; 0x10ce
    mov ax, 0xf                      ; 0x10d1
    cmp word [bp + 0x4], byte 2      ; 0x10d4
    jg short @..leaf_loc_OUTG.l6     ; 0x10d8
    mov ax, 0xffff                   ; 0x10da
    cmp word [bp + 0x4], byte 1      ; 0x10dd
    jle short @..leaf_loc_OUTG.l6    ; 0x10e1
    mov ax, 0xb                      ; 0x10e3
@..leaf_loc_OUTG.l6:
    mov word [bss_9b02], ax          ; 0x10e6
    mov word [bss_9af0], 1           ; 0x10e9
    mov word [bss_9af4], 0xffff      ; 0x10ef
    mov word [bss_9af2], 0xffff      ; 0x10f5
    mov word [bss_9342], 6           ; 0x10fb
    mov word [bss_9b06], 6           ; 0x1101
    mov ax, 0xffff                   ; 0x1107
    cmp word [bp + 0x4], byte 1      ; 0x110a
    jle short @..leaf_loc_OUTG.l7    ; 0x110e
    mov ax, 0xa                      ; 0x1110
@..leaf_loc_OUTG.l7:
    mov word [bss_9344], ax          ; 0x1113
    mov ax, 0xffff                   ; 0x1116
    cmp word [bp + 0x4], byte 1      ; 0x1119
    jle short @..leaf_loc_OUTG.l8    ; 0x111d
    mov ax, 0xb                      ; 0x111f
@..leaf_loc_OUTG.l8:
    mov word [bss_95ce], ax          ; 0x1122
    jmp near leaf_loc_OUTG           ; 0x1125
jumptable_147e_case_2:
    mov ax, 0xffff                   ; 0x1128
    cmp word [bp + 0x4], byte 1      ; 0x112b
    jle short @..leaf_loc_OUTG.l9    ; 0x112f
    mov ax, 0x10                     ; 0x1131
@..leaf_loc_OUTG.l9:
    mov word [bss_9af8], ax          ; 0x1134
    mov ax, 0xffff                   ; 0x1137
    cmp word [bp + 0x4], byte 1      ; 0x113a
    jle short @..leaf_loc_OUTG.l10   ; 0x113e
    mov ax, 0x11                     ; 0x1140
@..leaf_loc_OUTG.l10:
    mov word [bss_9b00], ax          ; 0x1143
    mov ax, 0x12                     ; 0x1146
    cmp word [bp + 0x4], byte 2      ; 0x1149
    jg short @..leaf_loc_OUTG.l11    ; 0x114d
    mov ax, 0xffff                   ; 0x114f
    cmp word [bp + 0x4], byte 1      ; 0x1152
    jle short @..leaf_loc_OUTG.l11   ; 0x1156
    mov ax, 0x10                     ; 0x1158
@..leaf_loc_OUTG.l11:
    mov word [bss_9af6], ax          ; 0x115b
    mov ax, 0x13                     ; 0x115e
    cmp word [bp + 0x4], byte 2      ; 0x1161
    jg short @..leaf_loc_OUTG.l12    ; 0x1165
    mov ax, 0xffff                   ; 0x1167
    cmp word [bp + 0x4], byte 1      ; 0x116a
    jle short @..leaf_loc_OUTG.l12   ; 0x116e
    mov ax, 0x11                     ; 0x1170
@..leaf_loc_OUTG.l12:
    mov word [bss_9afe], ax          ; 0x1173
    mov ax, 0x14                     ; 0x1176
    cmp word [bp + 0x4], byte 2      ; 0x1179
    jg short @..leaf_loc_OUTG.l13    ; 0x117d
    mov ax, 0xffff                   ; 0x117f
    cmp word [bp + 0x4], byte 1      ; 0x1182
    jle short @..leaf_loc_OUTG.l13   ; 0x1186
    mov ax, 0x10                     ; 0x1188
@..leaf_loc_OUTG.l13:
    mov word [bss_9afa], ax          ; 0x118b
    mov ax, 0x15                     ; 0x118e
    cmp word [bp + 0x4], byte 2      ; 0x1191
    jg short @..leaf_loc_OUTG.l14    ; 0x1195
    mov ax, 0xffff                   ; 0x1197
    cmp word [bp + 0x4], byte 1      ; 0x119a
    jle short @..leaf_loc_OUTG.l14   ; 0x119e
    mov ax, 0x11                     ; 0x11a0
@..leaf_loc_OUTG.l14:
    mov word [bss_9b02], ax          ; 0x11a3
    mov word [bss_9af0], 5           ; 0x11a6
    mov word [bss_9af4], 4           ; 0x11ac
    mov word [bss_9af2], 3           ; 0x11b2
    mov word [bss_9342], 8           ; 0x11b8
    mov word [bss_9b06], 7           ; 0x11be
    mov ax, 0xffff                   ; 0x11c4
    cmp word [bp + 0x4], byte 1      ; 0x11c7
    jle short @..leaf_loc_OUTG.l15   ; 0x11cb
    mov ax, 0x16                     ; 0x11cd
@..leaf_loc_OUTG.l15:
    mov word [bss_9344], ax          ; 0x11d0
    mov ax, 0xffff                   ; 0x11d3
    cmp word [bp + 0x4], byte 1      ; 0x11d6
    jle short @..leaf_loc_OUTG.l16   ; 0x11da
    mov ax, 0x17                     ; 0x11dc
@..leaf_loc_OUTG.l16:
    mov word [bss_95ce], ax          ; 0x11df
    jmp near leaf_loc_OUTG           ; 0x11e2
jumptable_147e_case_3:
    mov ax, 0xffff                   ; 0x11e5
    cmp word [bp + 0x4], byte 1      ; 0x11e8
    jle short @..leaf_loc_OUTG.l17   ; 0x11ec
    mov ax, 0x10                     ; 0x11ee
@..leaf_loc_OUTG.l17:
    mov word [bss_9af8], ax          ; 0x11f1
    mov ax, 0xffff                   ; 0x11f4
    cmp word [bp + 0x4], byte 1      ; 0x11f7
    jle short @..leaf_loc_OUTG.l18   ; 0x11fb
    mov ax, 0x11                     ; 0x11fd
@..leaf_loc_OUTG.l18:
    mov word [bss_9b00], ax          ; 0x1200
    mov ax, 0x12                     ; 0x1203
    cmp word [bp + 0x4], byte 2      ; 0x1206
    jg short @..leaf_loc_OUTG.l19    ; 0x120a
    mov ax, 0xffff                   ; 0x120c
    cmp word [bp + 0x4], byte 1      ; 0x120f
    jle short @..leaf_loc_OUTG.l19   ; 0x1213
    mov ax, 0x10                     ; 0x1215
@..leaf_loc_OUTG.l19:
    mov word [bss_9af6], ax          ; 0x1218
    mov ax, 0x13                     ; 0x121b
    cmp word [bp + 0x4], byte 2      ; 0x121e
    jg short @..leaf_loc_OUTG.l20    ; 0x1222
    mov ax, 0xffff                   ; 0x1224
    cmp word [bp + 0x4], byte 1      ; 0x1227
    jle short @..leaf_loc_OUTG.l20   ; 0x122b
    mov ax, 0x11                     ; 0x122d
@..leaf_loc_OUTG.l20:
    mov word [bss_9afe], ax          ; 0x1230
    mov ax, 0x14                     ; 0x1233
    cmp word [bp + 0x4], byte 2      ; 0x1236
    jg short @..leaf_loc_OUTG.l21    ; 0x123a
    mov ax, 0xffff                   ; 0x123c
    cmp word [bp + 0x4], byte 1      ; 0x123f
    jle short @..leaf_loc_OUTG.l21   ; 0x1243
    mov ax, 0x10                     ; 0x1245
@..leaf_loc_OUTG.l21:
    mov word [bss_9afa], ax          ; 0x1248
    mov ax, 0x15                     ; 0x124b
    cmp word [bp + 0x4], byte 2      ; 0x124e
    jg short @..leaf_loc_OUTG.l22    ; 0x1252
    mov ax, 0xffff                   ; 0x1254
    cmp word [bp + 0x4], byte 1      ; 0x1257
    jle short @..leaf_loc_OUTG.l22   ; 0x125b
    mov ax, 0x11                     ; 0x125d
@..leaf_loc_OUTG.l22:
    mov word [bss_9b02], ax          ; 0x1260
    mov word [bss_9af0], 4           ; 0x1263
    mov word [bss_9af4], 3           ; 0x1269
    mov word [bss_9af2], 0xffff      ; 0x126f
    mov word [bss_9342], 7           ; 0x1275
    mov word [bss_9b06], 7           ; 0x127b
    mov ax, 0xffff                   ; 0x1281
    cmp word [bp + 0x4], byte 1      ; 0x1284
    jle short @..leaf_loc_OUTG.l23   ; 0x1288
    mov ax, 0x10                     ; 0x128a
@..leaf_loc_OUTG.l23:
    mov word [bss_9344], ax          ; 0x128d
    mov ax, 0xffff                   ; 0x1290
    cmp word [bp + 0x4], byte 1      ; 0x1293
    jle short @..leaf_loc_OUTG.l24   ; 0x1297
    mov ax, 0x11                     ; 0x1299
@..leaf_loc_OUTG.l24:
    mov word [bss_95ce], ax          ; 0x129c
    jmp near leaf_loc_OUTG           ; 0x129f
jumptable_147e_case_4:
    mov ax, 0xffff                   ; 0x12a2
    cmp word [bp + 0x4], byte 1      ; 0x12a5
    jle short @..leaf_loc_OUTG.l25   ; 0x12a9
    mov ax, 0x18                     ; 0x12ab
@..leaf_loc_OUTG.l25:
    mov word [bss_9af8], ax          ; 0x12ae
    mov ax, 0xffff                   ; 0x12b1
    cmp word [bp + 0x4], byte 1      ; 0x12b4
    jle short @..leaf_loc_OUTG.l26   ; 0x12b8
    mov ax, 0x19                     ; 0x12ba
@..leaf_loc_OUTG.l26:
    mov word [bss_9b00], ax          ; 0x12bd
    mov ax, 0xffff                   ; 0x12c0
    cmp word [bp + 0x4], byte 1      ; 0x12c3
    jle short @..leaf_loc_OUTG.l27   ; 0x12c7
    mov ax, 0x18                     ; 0x12c9
@..leaf_loc_OUTG.l27:
    mov word [bss_9af6], ax          ; 0x12cc
    mov ax, 0xffff                   ; 0x12cf
    cmp word [bp + 0x4], byte 1      ; 0x12d2
    jle short @..leaf_loc_OUTG.l28   ; 0x12d6
    mov ax, 0x19                     ; 0x12d8
@..leaf_loc_OUTG.l28:
    mov word [bss_9afe], ax          ; 0x12db
    mov ax, 0xffff                   ; 0x12de
    cmp word [bp + 0x4], byte 1      ; 0x12e1
    jle short @..leaf_loc_OUTG.l29   ; 0x12e5
    mov ax, 0x18                     ; 0x12e7
@..leaf_loc_OUTG.l29:
    mov word [bss_9afa], ax          ; 0x12ea
    mov ax, 0xffff                   ; 0x12ed
    cmp word [bp + 0x4], byte 1      ; 0x12f0
    jle short @..leaf_loc_OUTG.l30   ; 0x12f4
    mov ax, 0x19                     ; 0x12f6
@..leaf_loc_OUTG.l30:
    mov word [bss_9b02], ax          ; 0x12f9
    mov word [bss_9af0], 1           ; 0x12fc
    mov word [bss_9af4], 4           ; 0x1302
    mov word [bss_9af2], 0xffff      ; 0x1308
    mov word [bss_9342], 8           ; 0x130e
    mov word [bss_9b06], 9           ; 0x1314
    mov ax, 0xffff                   ; 0x131a
    cmp word [bp + 0x4], byte 1      ; 0x131d
    jle short @..leaf_loc_OUTG.l31   ; 0x1321
    mov ax, 0x16                     ; 0x1323
@..leaf_loc_OUTG.l31:
    mov word [bss_9344], ax          ; 0x1326
    mov ax, 0xffff                   ; 0x1329
    cmp word [bp + 0x4], byte 1      ; 0x132c
    jle short @..leaf_loc_OUTG.l32   ; 0x1330
    mov ax, 0x17                     ; 0x1332
@..leaf_loc_OUTG.l32:
    mov word [bss_95ce], ax          ; 0x1335
    jmp near leaf_loc_OUTG           ; 0x1338
jumptable_147e_case_5:
    mov ax, 0xffff                   ; 0x133b
    cmp word [bp + 0x4], byte 1      ; 0x133e
    jle short @..leaf_loc_OUTG.l33   ; 0x1342
    mov ax, 0x18                     ; 0x1344
@..leaf_loc_OUTG.l33:
    mov word [bss_9af8], ax          ; 0x1347
    mov ax, 0xffff                   ; 0x134a
    cmp word [bp + 0x4], byte 1      ; 0x134d
    jle short @..leaf_loc_OUTG.l34   ; 0x1351
    mov ax, 0x19                     ; 0x1353
@..leaf_loc_OUTG.l34:
    mov word [bss_9b00], ax          ; 0x1356
    mov ax, 0xffff                   ; 0x1359
    cmp word [bp + 0x4], byte 1      ; 0x135c
    jle short @..leaf_loc_OUTG.l35   ; 0x1360
    mov ax, 0x18                     ; 0x1362
@..leaf_loc_OUTG.l35:
    mov word [bss_9af6], ax          ; 0x1365
    mov ax, 0xffff                   ; 0x1368
    cmp word [bp + 0x4], byte 1      ; 0x136b
    jle short @..leaf_loc_OUTG.l36   ; 0x136f
    mov ax, 0x19                     ; 0x1371
@..leaf_loc_OUTG.l36:
    mov word [bss_9afe], ax          ; 0x1374
    mov ax, 0xffff                   ; 0x1377
    cmp word [bp + 0x4], byte 1      ; 0x137a
    jle short @..leaf_loc_OUTG.l37   ; 0x137e
    mov ax, 0x18                     ; 0x1380
@..leaf_loc_OUTG.l37:
    mov word [bss_9afa], ax          ; 0x1383
    mov ax, 0xffff                   ; 0x1386
    cmp word [bp + 0x4], byte 1      ; 0x1389
    jle short @..leaf_loc_OUTG.l38   ; 0x138d
    mov ax, 0x19                     ; 0x138f
@..leaf_loc_OUTG.l38:
    mov word [bss_9b02], ax          ; 0x1392
    mov word [bss_9af0], 1           ; 0x1395
    mov word [bss_9af4], 4           ; 0x139b
    mov word [bss_9af2], 0xffff      ; 0x13a1
    mov word [bss_9342], 9           ; 0x13a7
    mov word [bss_9b06], 9           ; 0x13ad
    mov ax, 0xffff                   ; 0x13b3
    cmp word [bp + 0x4], byte 1      ; 0x13b6
    jle short @..leaf_loc_OUTG.l39   ; 0x13ba
    mov ax, 0x18                     ; 0x13bc
@..leaf_loc_OUTG.l39:
    mov word [bss_9344], ax          ; 0x13bf
    mov ax, 0xffff                   ; 0x13c2
    cmp word [bp + 0x4], byte 1      ; 0x13c5
    jle short @..leaf_loc_OUTG.l40   ; 0x13c9
    mov ax, 0x19                     ; 0x13cb
@..leaf_loc_OUTG.l40:
    mov word [bss_95ce], ax          ; 0x13ce
    jmp near leaf_loc_OUTG           ; 0x13d1
jumptable_147e_case_6:
    mov ax, 0xffff                   ; 0x13d4
    cmp word [bp + 0x4], byte 1      ; 0x13d7
    jle short @..leaf_loc_OUTG.l41   ; 0x13db
    mov ax, 0x10                     ; 0x13dd
@..leaf_loc_OUTG.l41:
    mov word [bss_9af8], ax          ; 0x13e0
    mov ax, 0xffff                   ; 0x13e3
    cmp word [bp + 0x4], byte 1      ; 0x13e6
    jle short @..leaf_loc_OUTG.l42   ; 0x13ea
    mov ax, 0x11                     ; 0x13ec
@..leaf_loc_OUTG.l42:
    mov word [bss_9b00], ax          ; 0x13ef
    mov ax, 0x12                     ; 0x13f2
    cmp word [bp + 0x4], byte 2      ; 0x13f5
    jg short @..leaf_loc_OUTG.l43    ; 0x13f9
    mov ax, 0xffff                   ; 0x13fb
    cmp word [bp + 0x4], byte 1      ; 0x13fe
    jle short @..leaf_loc_OUTG.l43   ; 0x1402
    mov ax, 0x10                     ; 0x1404
@..leaf_loc_OUTG.l43:
    mov word [bss_9af6], ax          ; 0x1407
    mov ax, 0x13                     ; 0x140a
    cmp word [bp + 0x4], byte 2      ; 0x140d
    jg short @..leaf_loc_OUTG.l44    ; 0x1411
    mov ax, 0xffff                   ; 0x1413
    cmp word [bp + 0x4], byte 1      ; 0x1416
    jle short @..leaf_loc_OUTG.l44   ; 0x141a
    mov ax, 0x11                     ; 0x141c
@..leaf_loc_OUTG.l44:
    mov word [bss_9afe], ax          ; 0x141f
    mov ax, 0x14                     ; 0x1422
    cmp word [bp + 0x4], byte 2      ; 0x1425
    jg short @..leaf_loc_OUTG.l45    ; 0x1429
    mov ax, 0xffff                   ; 0x142b
    cmp word [bp + 0x4], byte 1      ; 0x142e
    jle short @..leaf_loc_OUTG.l45   ; 0x1432
    mov ax, 0x10                     ; 0x1434
@..leaf_loc_OUTG.l45:
    mov word [bss_9afa], ax          ; 0x1437
    mov ax, 0x15                     ; 0x143a
    cmp word [bp + 0x4], byte 2      ; 0x143d
    jg short @..leaf_loc_OUTG.l46    ; 0x1441
    mov ax, 0xffff                   ; 0x1443
    cmp word [bp + 0x4], byte 1      ; 0x1446
    jle short @..leaf_loc_OUTG.l46   ; 0x144a
    mov ax, 0x11                     ; 0x144c
@..leaf_loc_OUTG.l46:
    mov word [bss_9b02], ax          ; 0x144f
    mov word [bss_9af0], 5           ; 0x1452
    mov word [bss_9af4], 4           ; 0x1458
    mov word [bss_9af2], 2           ; 0x145e
    mov word [bss_9342], 7           ; 0x1464
    mov word [bss_9b06], 7           ; 0x146a
    mov word [bss_9344], 0xffff      ; 0x1470
    mov word [bss_95ce], 0xffff      ; 0x1476
    jmp short leaf_loc_OUTG          ; 0x147c
jumptable_147e:
    dw leaf_loc_OUTG - IMAGE_BASE + 0x5055     ; 0x147e
    dw jumptable_147e_case_1 - IMAGE_BASE + 0x5055 ; 0x1480
    dw jumptable_147e_case_2 - IMAGE_BASE + 0x5055 ; 0x1482
    dw jumptable_147e_case_3 - IMAGE_BASE + 0x5055 ; 0x1484
    dw jumptable_147e_case_4 - IMAGE_BASE + 0x5055 ; 0x1486
    dw jumptable_147e_case_5 - IMAGE_BASE + 0x5055 ; 0x1488
    dw jumptable_147e_case_6 - IMAGE_BASE + 0x5055 ; 0x148a
@..api_idx_0012_HLLG.l5:
    cmp ax, strict word 7            ; 0x148c
    jae short leaf_loc_OUTG          ; 0x148f
    xchg bx, ax                      ; 0x1491
    shl bx, 1                        ; 0x1492
    jmp [cs:bx + 0x64c5]             ; 0x1494
