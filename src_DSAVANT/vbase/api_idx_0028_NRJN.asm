; auto-generated
api_idx_0028_NRJN:
    mov ax, 0xffd8                   ; 0x0ef7
    call aztec_csav                  ; 0x0efa
    mov word [spell_dialog_result], 0xffff ; 0x0efd
    mov word [bp - 0x0028], 0xffff   ; 0x0f03
    mov word [bp - 0x0002], 0x37     ; 0x0f08
    mov word [bp - 0x0004], 0x8f     ; 0x0f0d
    mov word [bp - 0x0006], 0x108    ; 0x0f12
    mov word [bp - 0x0008], 0xc5     ; 0x0f17
    mov ax, dseg_90bc                ; 0x0f1c
    push ax                          ; 0x0f1f
    mov ax, word [bp - 0x0008]       ; 0x0f20
    inc ax                           ; 0x0f23
    push ax                          ; 0x0f24
    mov ax, word [bp - 0x0006]       ; 0x0f25
    inc ax                           ; 0x0f28
    push ax                          ; 0x0f29
    mov ax, word [bp - 0x0004]       ; 0x0f2a
    dec ax                           ; 0x0f2d
    push ax                          ; 0x0f2e
    mov ax, word [bp - 0x0002]       ; 0x0f2f
    dec ax                           ; 0x0f32
    push ax                          ; 0x0f33
    call save_screen_area            ; 0x0f34
    add sp, byte 0x0a                ; 0x0f37
    mov word [bp - 0x0026], ax       ; 0x0f3a
    push word [bp - 0x0008]          ; 0x0f3d
    push word [bp - 0x0006]          ; 0x0f40
    push word [bp - 0x0004]          ; 0x0f43
    push word [bp - 0x0002]          ; 0x0f46
    call draw_dialog_box             ; 0x0f49
    add sp, byte 8                   ; 0x0f4c
    lea ax, word [bp - 0x0024]       ; 0x0f4f
    push ax                          ; 0x0f52
    push word [bp + 0x4]             ; 0x0f53
    call load_message_string         ; 0x0f56
    add sp, byte 4                   ; 0x0f59
    lea ax, word [bp - 0x0024]       ; 0x0f5c
    push ax                          ; 0x0f5f
    push word [bp + 0x6]             ; 0x0f60
    mov ax, 1                        ; 0x0f63
    push ax                          ; 0x0f66
    mov ax, 0xc                      ; 0x0f67
    push ax                          ; 0x0f6a
    mov ax, word [bp - 0x0004]       ; 0x0f6b
    add ax, strict word 7            ; 0x0f6e
    push ax                          ; 0x0f71
    mov ax, word [bp - 0x0002]       ; 0x0f72
    add ax, strict word 8            ; 0x0f75
    push ax                          ; 0x0f78
    call draw_button                 ; 0x0f79
    add sp, byte 0x0c                ; 0x0f7c
    lea ax, word [bp - 0x0024]       ; 0x0f7f
    push ax                          ; 0x0f82
    mov ax, word [bp + 0x4]          ; 0x0f83
    inc ax                           ; 0x0f86
    push ax                          ; 0x0f87
    call load_message_string         ; 0x0f88
    add sp, byte 4                   ; 0x0f8b
    lea ax, word [bp - 0x0024]       ; 0x0f8e
    push ax                          ; 0x0f91
    push word [bp + 0x8]             ; 0x0f92
    mov ax, 1                        ; 0x0f95
    push ax                          ; 0x0f98
    mov ax, 0xc                      ; 0x0f99
    push ax                          ; 0x0f9c
    mov ax, word [bp - 0x0004]       ; 0x0f9d
    add ax, strict word 0x17         ; 0x0fa0
    push ax                          ; 0x0fa3
    mov ax, word [bp - 0x0002]       ; 0x0fa4
    add ax, strict word 8            ; 0x0fa7
    push ax                          ; 0x0faa
    call draw_button                 ; 0x0fab
    add sp, byte 0x0c                ; 0x0fae
    lea ax, word [bp - 0x0024]       ; 0x0fb1
    push ax                          ; 0x0fb4
    mov ax, word [bp + 0x4]          ; 0x0fb5
    inc ax                           ; 0x0fb8
    inc ax                           ; 0x0fb9
    push ax                          ; 0x0fba
    call load_message_string         ; 0x0fbb
    add sp, byte 4                   ; 0x0fbe
    lea ax, word [bp - 0x0024]       ; 0x0fc1
    push ax                          ; 0x0fc4
    push word [bp + 0xa]             ; 0x0fc5
    mov ax, 1                        ; 0x0fc8
    push ax                          ; 0x0fcb
    mov ax, 0xc                      ; 0x0fcc
    push ax                          ; 0x0fcf
    mov ax, word [bp - 0x0004]       ; 0x0fd0
    add ax, strict word 0x27         ; 0x0fd3
    push ax                          ; 0x0fd6
    mov ax, word [bp - 0x0002]       ; 0x0fd7
    add ax, strict word 8            ; 0x0fda
    push ax                          ; 0x0fdd
    call draw_button                 ; 0x0fde
    add sp, byte 0x0c                ; 0x0fe1
    lea ax, word [bp - 0x0024]       ; 0x0fe4
    push ax                          ; 0x0fe7
    mov ax, 0x5aa                    ; 0x0fe8
    push ax                          ; 0x0feb
    call load_message_string         ; 0x0fec
    add sp, byte 4                   ; 0x0fef
    mov ax, 0xc2                     ; 0x0ff2
    push ax                          ; 0x0ff5
    mov ax, 0x9b                     ; 0x0ff6
    push ax                          ; 0x0ff9
    call gfx_set_text_color          ; 0x0ffa
    add sp, byte 4                   ; 0x0ffd
    mov ax, word [bp - 0x0004]       ; 0x1000
    add ax, strict word 6            ; 0x1003
    push ax                          ; 0x1006
    lea ax, word [bp - 0x0024]       ; 0x1007
    push ax                          ; 0x100a
    call aztec_strlen                ; 0x100b
    pop cx                           ; 0x100e
    mov cx, ax                       ; 0x100f
    mov ax, 0x11                     ; 0x1011
    sub ax, cx                       ; 0x1014
    mov cx, 6                        ; 0x1016
    imul cx                          ; 0x1019
    inc ax                           ; 0x101b
    inc ax                           ; 0x101c
    mov cx, 2                        ; 0x101d
    cwd                              ; 0x1020
    idiv cx                          ; 0x1021
    add ax, word [bp - 0x0002]       ; 0x1023
    add ax, strict word 0x5d         ; 0x1026
    push ax                          ; 0x1029
    call gfx_set_text_pos            ; 0x102a
    add sp, byte 4                   ; 0x102d
    mov ax, 0                        ; 0x1030
    push ax                          ; 0x1033
    lea ax, word [bp - 0x0024]       ; 0x1034
    push ax                          ; 0x1037
    call draw_text_glyphs            ; 0x1038
    add sp, byte 4                   ; 0x103b
    push word [bp + 0xc]             ; 0x103e
    mov ax, known_spell_names        ; 0x1041
    push ax                          ; 0x1044
    call aztec_strcpy                ; 0x1045
    add sp, byte 4                   ; 0x1048
    mov ax, 1                        ; 0x104b
    push ax                          ; 0x104e
    mov ax, 0xffff                   ; 0x104f
    push ax                          ; 0x1052
    mov ax, 0                        ; 0x1053
    push ax                          ; 0x1056
    mov ax, 1                        ; 0x1057
    push ax                          ; 0x105a
    mov ax, 0x11                     ; 0x105b
    push ax                          ; 0x105e
    mov ax, word [bp - 0x0004]       ; 0x105f
    add ax, strict word 0xf          ; 0x1062
    push ax                          ; 0x1065
    mov ax, word [bp - 0x0002]       ; 0x1066
    add ax, strict word 0x5d         ; 0x1069
    push ax                          ; 0x106c
    call draw_text_list              ; 0x106d
    add sp, byte 0x0e                ; 0x1070
    mov ax, 0                        ; 0x1073
    push ax                          ; 0x1076
    mov ax, 0x44                     ; 0x1077
    push ax                          ; 0x107a
    mov ax, word [bp - 0x0004]       ; 0x107b
    add ax, strict word 0x15         ; 0x107e
    push ax                          ; 0x1081
    mov ax, word [bp - 0x0002]       ; 0x1082
    add ax, 0xc5                     ; 0x1085
    push ax                          ; 0x1088
    mov ax, word [bp - 0x0004]       ; 0x1089
    add ax, strict word 0xf          ; 0x108c
    push ax                          ; 0x108f
    mov ax, word [bp - 0x0002]       ; 0x1090
    add ax, strict word 0x5d         ; 0x1093
    push ax                          ; 0x1096
    mov ax, 0                        ; 0x1097
    push ax                          ; 0x109a
    call set_hotspot                 ; 0x109b
    add sp, byte 0x0e                ; 0x109e
    lea ax, word [bp - 0x0024]       ; 0x10a1
    push ax                          ; 0x10a4
    mov ax, 0x5ab                    ; 0x10a5
    push ax                          ; 0x10a8
    call load_message_string         ; 0x10a9
    add sp, byte 4                   ; 0x10ac
    mov ax, 0xc2                     ; 0x10af
    push ax                          ; 0x10b2
    mov ax, 0x9b                     ; 0x10b3
    push ax                          ; 0x10b6
    call gfx_set_text_color          ; 0x10b7
    add sp, byte 4                   ; 0x10ba
    mov ax, word [bp - 0x0004]       ; 0x10bd
    add ax, strict word 0x1e         ; 0x10c0
    push ax                          ; 0x10c3
    lea ax, word [bp - 0x0024]       ; 0x10c4
    push ax                          ; 0x10c7
    call aztec_strlen                ; 0x10c8
    pop cx                           ; 0x10cb
    mov cx, ax                       ; 0x10cc
    mov ax, 0x11                     ; 0x10ce
    sub ax, cx                       ; 0x10d1
    mov cx, 6                        ; 0x10d3
    imul cx                          ; 0x10d6
    inc ax                           ; 0x10d8
    inc ax                           ; 0x10d9
    mov cx, 2                        ; 0x10da
    cwd                              ; 0x10dd
    idiv cx                          ; 0x10de
    add ax, word [bp - 0x0002]       ; 0x10e0
    add ax, strict word 0x5d         ; 0x10e3
    push ax                          ; 0x10e6
    call gfx_set_text_pos            ; 0x10e7
    add sp, byte 4                   ; 0x10ea
    mov ax, 0                        ; 0x10ed
    push ax                          ; 0x10f0
    lea ax, word [bp - 0x0024]       ; 0x10f1
    push ax                          ; 0x10f4
    call draw_text_glyphs            ; 0x10f5
    add sp, byte 4                   ; 0x10f8
    push word [bp + 0xe]             ; 0x10fb
    mov ax, bss_0e4c                 ; 0x10fe
    push ax                          ; 0x1101
    call aztec_strcpy                ; 0x1102
    add sp, byte 4                   ; 0x1105
    mov ax, 1                        ; 0x1108
    push ax                          ; 0x110b
    mov ax, 0xffff                   ; 0x110c
    push ax                          ; 0x110f
    mov ax, 1                        ; 0x1110
    push ax                          ; 0x1113
    push ax                          ; 0x1114
    mov ax, 0x11                     ; 0x1115
    push ax                          ; 0x1118
    mov ax, word [bp - 0x0004]       ; 0x1119
    add ax, strict word 0x27         ; 0x111c
    push ax                          ; 0x111f
    mov ax, word [bp - 0x0002]       ; 0x1120
    add ax, strict word 0x5d         ; 0x1123
    push ax                          ; 0x1126
    call draw_text_list              ; 0x1127
    add sp, byte 0x0e                ; 0x112a
    mov ax, 0                        ; 0x112d
    push ax                          ; 0x1130
    mov ax, 0x46                     ; 0x1131
    push ax                          ; 0x1134
    mov ax, word [bp - 0x0004]       ; 0x1135
    add ax, strict word 0x2d         ; 0x1138
    push ax                          ; 0x113b
    mov ax, word [bp - 0x0002]       ; 0x113c
    add ax, 0xc5                     ; 0x113f
    push ax                          ; 0x1142
    mov ax, word [bp - 0x0004]       ; 0x1143
    add ax, strict word 0x27         ; 0x1146
    push ax                          ; 0x1149
    mov ax, word [bp - 0x0002]       ; 0x114a
    add ax, strict word 0x5d         ; 0x114d
    push ax                          ; 0x1150
    mov ax, 1                        ; 0x1151
    push ax                          ; 0x1154
    call set_hotspot                 ; 0x1155
    add sp, byte 0x0e                ; 0x1158
    mov ax, 0                        ; 0x115b
    push ax                          ; 0x115e
    push ax                          ; 0x115f
    mov ax, word [bp - 0x0004]       ; 0x1160
    add ax, strict word 0xf          ; 0x1163
    push ax                          ; 0x1166
    mov ax, word [bp - 0x0002]       ; 0x1167
    add ax, strict word 0x50         ; 0x116a
    push ax                          ; 0x116d
    mov ax, word [bp - 0x0004]       ; 0x116e
    add ax, strict word 7            ; 0x1171
    push ax                          ; 0x1174
    mov ax, word [bp - 0x0002]       ; 0x1175
    add ax, strict word 8            ; 0x1178
    push ax                          ; 0x117b
    mov ax, 2                        ; 0x117c
    push ax                          ; 0x117f
    call set_hotspot                 ; 0x1180
    add sp, byte 0x0e                ; 0x1183
    mov ax, 0                        ; 0x1186
    push ax                          ; 0x1189
    mov ax, 0xd                      ; 0x118a
    push ax                          ; 0x118d
    mov ax, word [bp - 0x0004]       ; 0x118e
    add ax, strict word 0x1f         ; 0x1191
    push ax                          ; 0x1194
    mov ax, word [bp - 0x0002]       ; 0x1195
    add ax, strict word 0x50         ; 0x1198
    push ax                          ; 0x119b
    mov ax, word [bp - 0x0004]       ; 0x119c
    add ax, strict word 0x17         ; 0x119f
    push ax                          ; 0x11a2
    mov ax, word [bp - 0x0002]       ; 0x11a3
    add ax, strict word 8            ; 0x11a6
    push ax                          ; 0x11a9
    mov ax, 3                        ; 0x11aa
    push ax                          ; 0x11ad
    call set_hotspot                 ; 0x11ae
    add sp, byte 0x0e                ; 0x11b1
    mov ax, 0                        ; 0x11b4
    push ax                          ; 0x11b7
    mov ax, 0x1b                     ; 0x11b8
    push ax                          ; 0x11bb
    mov ax, word [bp - 0x0004]       ; 0x11bc
    add ax, strict word 0x2f         ; 0x11bf
    push ax                          ; 0x11c2
    mov ax, word [bp - 0x0002]       ; 0x11c3
    add ax, strict word 0x50         ; 0x11c6
    push ax                          ; 0x11c9
    mov ax, word [bp - 0x0004]       ; 0x11ca
    add ax, strict word 0x27         ; 0x11cd
    push ax                          ; 0x11d0
    mov ax, word [bp - 0x0002]       ; 0x11d1
    add ax, strict word 8            ; 0x11d4
    push ax                          ; 0x11d7
    mov ax, 4                        ; 0x11d8
    push ax                          ; 0x11db
    call set_hotspot                 ; 0x11dc
    add sp, byte 0x0e                ; 0x11df
    mov ax, 0                        ; 0x11e2
    push ax                          ; 0x11e5
    push ax                          ; 0x11e6
    push ax                          ; 0x11e7
    push ax                          ; 0x11e8
    push ax                          ; 0x11e9
    mov ax, 0xffff                   ; 0x11ea
    push ax                          ; 0x11ed
    mov ax, 5                        ; 0x11ee
    push ax                          ; 0x11f1
    call set_hotspot                 ; 0x11f2
    add sp, byte 0x0e                ; 0x11f5
    mov ax, word [bp - 0x0008]       ; 0x11f8
    inc ax                           ; 0x11fb
    push ax                          ; 0x11fc
    mov ax, word [bp - 0x0006]       ; 0x11fd
    inc ax                           ; 0x1200
    push ax                          ; 0x1201
    mov ax, word [bp - 0x0004]       ; 0x1202
    dec ax                           ; 0x1205
    push ax                          ; 0x1206
    mov ax, word [bp - 0x0002]       ; 0x1207
    dec ax                           ; 0x120a
    push ax                          ; 0x120b
    call gfx_show_area               ; 0x120c
    add sp, byte 8                   ; 0x120f
    mov word [bp - 0x0010], 1        ; 0x1212
@..api_idx_0028_NRJN.l1:
    mov ax, hotspot_rects            ; 0x1217
    push ax                          ; 0x121a
    call poll_hotspots               ; 0x121b
    pop cx                           ; 0x121e
    dec ax                           ; 0x121f
    mov word [bp - 0x000e], ax       ; 0x1220
    cmp word [space_key_hit], byte 0 ; 0x1223
    je short @..api_idx_0028_NRJN.l3 ; 0x1228
    inc word [bp - 0x0028]           ; 0x122a
    mov ax, word [bp - 0x0028]       ; 0x122d
    cmp ax, strict word 1            ; 0x1230
    jle short @..api_idx_0028_NRJN.l2 ; 0x1233
    mov word [bp - 0x0028], 0        ; 0x1235
@..api_idx_0028_NRJN.l2:
    mov word [hotspot_hit], 1        ; 0x123a
    mov ax, word [bp - 0x0028]       ; 0x1240
    mov word [bp - 0x000e], ax       ; 0x1243
@..api_idx_0028_NRJN.l3:
    cmp word [hotspot_hit], byte 1   ; 0x1246
    je short @..api_idx_0028_NRJN.l4 ; 0x124b
    jmp near @..api_idx_0028_NRJN.l9 ; 0x124d
@..api_idx_0028_NRJN.l4:
    mov ax, word [bp - 0x000e]       ; 0x1250
    jmp near @..api_idx_0028_NRJN.l8 ; 0x1253
jumptable_14d6_case_0:
    call flush_keyboard              ; 0x1256
    mov ax, 1                        ; 0x1259
    push ax                          ; 0x125c
    mov ax, 0                        ; 0x125d
    push ax                          ; 0x1260
    push ax                          ; 0x1261
    mov ax, 1                        ; 0x1262
    push ax                          ; 0x1265
    mov ax, 0x11                     ; 0x1266
    push ax                          ; 0x1269
    mov ax, word [bp - 0x0004]       ; 0x126a
    add ax, strict word 0xf          ; 0x126d
    push ax                          ; 0x1270
    mov ax, word [bp - 0x0002]       ; 0x1271
    add ax, strict word 0x5d         ; 0x1274
    push ax                          ; 0x1277
    call draw_text_list              ; 0x1278
    add sp, byte 0x0e                ; 0x127b
    mov ax, word [bp - 0x0004]       ; 0x127e
    add ax, strict word 0x16         ; 0x1281
    push ax                          ; 0x1284
    mov ax, word [bp - 0x0002]       ; 0x1285
    add ax, 0xc5                     ; 0x1288
    push ax                          ; 0x128b
    mov ax, word [bp - 0x0004]       ; 0x128c
    add ax, strict word 0xf          ; 0x128f
    push ax                          ; 0x1292
    mov ax, word [bp - 0x0002]       ; 0x1293
    add ax, strict word 0x5d         ; 0x1296
    push ax                          ; 0x1299
    call gfx_show_area               ; 0x129a
    add sp, byte 8                   ; 0x129d
    mov ax, 0                        ; 0x12a0
    push ax                          ; 0x12a3
    mov ax, 1                        ; 0x12a4
    push ax                          ; 0x12a7
    mov ax, 0                        ; 0x12a8
    push ax                          ; 0x12ab
    mov ax, 0x10                     ; 0x12ac
    push ax                          ; 0x12af
    mov ax, word [bp - 0x0004]       ; 0x12b0
    add ax, strict word 0x10         ; 0x12b3
    push ax                          ; 0x12b6
    mov ax, word [bp - 0x0002]       ; 0x12b7
    add ax, strict word 0x5f         ; 0x12ba
    push ax                          ; 0x12bd
    mov ax, known_spell_names        ; 0x12be
    push ax                          ; 0x12c1
    call input_text_field            ; 0x12c2
    add sp, byte 0x0e                ; 0x12c5
    mov ax, known_spell_names        ; 0x12c8
    push ax                          ; 0x12cb
    push word [bp + 0xc]             ; 0x12cc
    call aztec_strcpy                ; 0x12cf
    add sp, byte 4                   ; 0x12d2
    mov ax, 1                        ; 0x12d5
    push ax                          ; 0x12d8
    mov ax, 0xffff                   ; 0x12d9
    push ax                          ; 0x12dc
    mov ax, 0                        ; 0x12dd
    push ax                          ; 0x12e0
    mov ax, 1                        ; 0x12e1
    push ax                          ; 0x12e4
    mov ax, 0x11                     ; 0x12e5
    push ax                          ; 0x12e8
    mov ax, word [bp - 0x0004]       ; 0x12e9
    add ax, strict word 0xf          ; 0x12ec
    push ax                          ; 0x12ef
    mov ax, word [bp - 0x0002]       ; 0x12f0
    add ax, strict word 0x5d         ; 0x12f3
    push ax                          ; 0x12f6
    call draw_text_list              ; 0x12f7
    add sp, byte 0x0e                ; 0x12fa
    mov ax, word [bp - 0x0004]       ; 0x12fd
    add ax, strict word 0x16         ; 0x1300
    push ax                          ; 0x1303
    mov ax, word [bp - 0x0002]       ; 0x1304
    add ax, 0xc5                     ; 0x1307
    push ax                          ; 0x130a
    mov ax, word [bp - 0x0004]       ; 0x130b
    add ax, strict word 0xf          ; 0x130e
    push ax                          ; 0x1311
    mov ax, word [bp - 0x0002]       ; 0x1312
    add ax, strict word 0x5d         ; 0x1315
    push ax                          ; 0x1318
    call gfx_show_area               ; 0x1319
    add sp, byte 8                   ; 0x131c
    jmp near @..api_idx_0028_NRJN.l9 ; 0x131f
jumptable_14d6_case_1:
    call flush_keyboard              ; 0x1322
    mov ax, 1                        ; 0x1325
    push ax                          ; 0x1328
    push ax                          ; 0x1329
    push ax                          ; 0x132a
    push ax                          ; 0x132b
    mov ax, 0x11                     ; 0x132c
    push ax                          ; 0x132f
    mov ax, word [bp - 0x0004]       ; 0x1330
    add ax, strict word 0x27         ; 0x1333
    push ax                          ; 0x1336
    mov ax, word [bp - 0x0002]       ; 0x1337
    add ax, strict word 0x5d         ; 0x133a
    push ax                          ; 0x133d
    call draw_text_list              ; 0x133e
    add sp, byte 0x0e                ; 0x1341
    mov ax, word [bp - 0x0004]       ; 0x1344
    add ax, strict word 0x2e         ; 0x1347
    push ax                          ; 0x134a
    mov ax, word [bp - 0x0002]       ; 0x134b
    add ax, 0xc5                     ; 0x134e
    push ax                          ; 0x1351
    mov ax, word [bp - 0x0004]       ; 0x1352
    add ax, strict word 0x27         ; 0x1355
    push ax                          ; 0x1358
    mov ax, word [bp - 0x0002]       ; 0x1359
    add ax, strict word 0x5d         ; 0x135c
    push ax                          ; 0x135f
    call gfx_show_area               ; 0x1360
    add sp, byte 8                   ; 0x1363
    mov ax, 0                        ; 0x1366
    push ax                          ; 0x1369
    mov ax, 1                        ; 0x136a
    push ax                          ; 0x136d
    mov ax, 0                        ; 0x136e
    push ax                          ; 0x1371
    mov ax, 0x10                     ; 0x1372
    push ax                          ; 0x1375
    mov ax, word [bp - 0x0004]       ; 0x1376
    add ax, strict word 0x28         ; 0x1379
    push ax                          ; 0x137c
    mov ax, word [bp - 0x0002]       ; 0x137d
    add ax, strict word 0x5f         ; 0x1380
    push ax                          ; 0x1383
    mov ax, bss_0e4c                 ; 0x1384
    push ax                          ; 0x1387
    call input_text_field            ; 0x1388
    add sp, byte 0x0e                ; 0x138b
    mov ax, bss_0e4c                 ; 0x138e
    push ax                          ; 0x1391
    push word [bp + 0xe]             ; 0x1392
    call aztec_strcpy                ; 0x1395
    add sp, byte 4                   ; 0x1398
    mov ax, 1                        ; 0x139b
    push ax                          ; 0x139e
    mov ax, 0xffff                   ; 0x139f
    push ax                          ; 0x13a2
    mov ax, 1                        ; 0x13a3
    push ax                          ; 0x13a6
    push ax                          ; 0x13a7
    mov ax, 0x11                     ; 0x13a8
    push ax                          ; 0x13ab
    mov ax, word [bp - 0x0004]       ; 0x13ac
    add ax, strict word 0x27         ; 0x13af
    push ax                          ; 0x13b2
    mov ax, word [bp - 0x0002]       ; 0x13b3
    add ax, strict word 0x5d         ; 0x13b6
    push ax                          ; 0x13b9
    call draw_text_list              ; 0x13ba
    add sp, byte 0x0e                ; 0x13bd
    mov ax, word [bp - 0x0004]       ; 0x13c0
    add ax, strict word 0x2e         ; 0x13c3
    push ax                          ; 0x13c6
    mov ax, word [bp - 0x0002]       ; 0x13c7
    add ax, 0xc5                     ; 0x13ca
    push ax                          ; 0x13cd
    mov ax, word [bp - 0x0004]       ; 0x13ce
    add ax, strict word 0x27         ; 0x13d1
    push ax                          ; 0x13d4
    mov ax, word [bp - 0x0002]       ; 0x13d5
    add ax, strict word 0x5d         ; 0x13d8
    push ax                          ; 0x13db
    call gfx_show_area               ; 0x13dc
    add sp, byte 8                   ; 0x13df
    jmp near @..api_idx_0028_NRJN.l9 ; 0x13e2
jumptable_14d6_case_2:
    cmp word [bp + 0x6], byte 0      ; 0x13e5
    je short @..api_idx_0028_NRJN.l5 ; 0x13e9
    mov ax, 1                        ; 0x13eb
    push ax                          ; 0x13ee
    push ax                          ; 0x13ef
    mov ax, 0xc                      ; 0x13f0
    push ax                          ; 0x13f3
    mov ax, word [bp - 0x0004]       ; 0x13f4
    add ax, strict word 7            ; 0x13f7
    push ax                          ; 0x13fa
    mov ax, word [bp - 0x0002]       ; 0x13fb
    add ax, strict word 8            ; 0x13fe
    push ax                          ; 0x1401
    call flash_button                ; 0x1402
    add sp, byte 0x0a                ; 0x1405
    mov ax, 0                        ; 0x1408
    push ax                          ; 0x140b
    mov ax, 1                        ; 0x140c
    push ax                          ; 0x140f
    mov ax, 0xc                      ; 0x1410
    push ax                          ; 0x1413
    mov ax, word [bp - 0x0004]       ; 0x1414
    add ax, strict word 7            ; 0x1417
    push ax                          ; 0x141a
    mov ax, word [bp - 0x0002]       ; 0x141b
    add ax, strict word 8            ; 0x141e
    push ax                          ; 0x1421
    call flash_button                ; 0x1422
    add sp, byte 0x0a                ; 0x1425
    mov word [spell_dialog_button], 0 ; 0x1428
    mov word [bp - 0x0010], 0        ; 0x142e
@..api_idx_0028_NRJN.l5:
    jmp near @..api_idx_0028_NRJN.l9 ; 0x1433
jumptable_14d6_case_3:
    cmp word [bp + 0x8], byte 0      ; 0x1436
    je short @..api_idx_0028_NRJN.l6 ; 0x143a
    mov ax, 1                        ; 0x143c
    push ax                          ; 0x143f
    push ax                          ; 0x1440
    mov ax, 0xc                      ; 0x1441
    push ax                          ; 0x1444
    mov ax, word [bp - 0x0004]       ; 0x1445
    add ax, strict word 0x17         ; 0x1448
    push ax                          ; 0x144b
    mov ax, word [bp - 0x0002]       ; 0x144c
    add ax, strict word 8            ; 0x144f
    push ax                          ; 0x1452
    call flash_button                ; 0x1453
    add sp, byte 0x0a                ; 0x1456
    mov ax, 0                        ; 0x1459
    push ax                          ; 0x145c
    mov ax, 1                        ; 0x145d
    push ax                          ; 0x1460
    mov ax, 0xc                      ; 0x1461
    push ax                          ; 0x1464
    mov ax, word [bp - 0x0004]       ; 0x1465
    add ax, strict word 0x17         ; 0x1468
    push ax                          ; 0x146b
    mov ax, word [bp - 0x0002]       ; 0x146c
    add ax, strict word 8            ; 0x146f
    push ax                          ; 0x1472
    call flash_button                ; 0x1473
    add sp, byte 0x0a                ; 0x1476
    mov word [spell_dialog_button], 1 ; 0x1479
    mov word [bp - 0x0010], 0        ; 0x147f
@..api_idx_0028_NRJN.l6:
    jmp short @..api_idx_0028_NRJN.l9 ; 0x1484
jumptable_14d6_case_4:
    cmp word [bp + 0xa], byte 0      ; 0x1486
    je short @..api_idx_0028_NRJN.l7 ; 0x148a
    mov ax, 1                        ; 0x148c
    push ax                          ; 0x148f
    push ax                          ; 0x1490
    mov ax, 0xc                      ; 0x1491
    push ax                          ; 0x1494
    mov ax, word [bp - 0x0004]       ; 0x1495
    add ax, strict word 0x27         ; 0x1498
    push ax                          ; 0x149b
    mov ax, word [bp - 0x0002]       ; 0x149c
    add ax, strict word 8            ; 0x149f
    push ax                          ; 0x14a2
    call flash_button                ; 0x14a3
    add sp, byte 0x0a                ; 0x14a6
    mov ax, 0                        ; 0x14a9
    push ax                          ; 0x14ac
    mov ax, 1                        ; 0x14ad
    push ax                          ; 0x14b0
    mov ax, 0xc                      ; 0x14b1
    push ax                          ; 0x14b4
    mov ax, word [bp - 0x0004]       ; 0x14b5
    add ax, strict word 0x27         ; 0x14b8
    push ax                          ; 0x14bb
    mov ax, word [bp - 0x0002]       ; 0x14bc
    add ax, strict word 8            ; 0x14bf
    push ax                          ; 0x14c2
    call flash_button                ; 0x14c3
    add sp, byte 0x0a                ; 0x14c6
    mov word [spell_dialog_button], 2 ; 0x14c9
    mov word [bp - 0x0010], 0        ; 0x14cf
@..api_idx_0028_NRJN.l7:
    jmp short @..api_idx_0028_NRJN.l9 ; 0x14d4
jumptable_14d6:
    dw jumptable_14d6_case_0 - IMAGE_BASE + __zres_end ; 0x14d6
    dw jumptable_14d6_case_1 - IMAGE_BASE + __zres_end ; 0x14d8
    dw jumptable_14d6_case_2 - IMAGE_BASE + __zres_end ; 0x14da
    dw jumptable_14d6_case_3 - IMAGE_BASE + __zres_end ; 0x14dc
    dw jumptable_14d6_case_4 - IMAGE_BASE + __zres_end ; 0x14de
@..api_idx_0028_NRJN.l8:
    cmp ax, strict word 5            ; 0x14e0
    jae short @..api_idx_0028_NRJN.l9 ; 0x14e3
    xchg bx, ax                      ; 0x14e5
    shl bx, 1                        ; 0x14e6
    jmp [cs:bx + jumptable_14d6 - IMAGE_BASE + __zres_end] ; 0x14e8
@..api_idx_0028_NRJN.l9:
    cmp word [bp - 0x0010], byte 0   ; 0x14ed
    je short @..api_idx_0028_NRJN.l10 ; 0x14f1
    jmp near @..api_idx_0028_NRJN.l1 ; 0x14f3
@..api_idx_0028_NRJN.l10:
    mov ax, 1                        ; 0x14f6
    push ax                          ; 0x14f9
    push word [bp - 0x0026]          ; 0x14fa
    call restore_saved_screen        ; 0x14fd
    add sp, byte 4                   ; 0x1500
    mov word [spell_dialog_result], 0xffff ; 0x1503
    mov ax, word [spell_dialog_button] ; 0x1509
    ret                              ; 0x150c
