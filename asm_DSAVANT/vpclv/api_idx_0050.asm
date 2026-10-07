api_idx_0050:
    mov ax, 0xffb0                   ; 0x1141
    call ds_dispatch_f40b            ; 0x1144
    mov word [bp - 0x0002], 0        ; 0x1147
@..api_idx_0050.l1:
    mov ax, word [bp - 0x0002]       ; 0x114c
    shl ax, 1                        ; 0x114f
    mov bx, ax                       ; 0x1151
    mov ax, word [bx - 0x7cf2]       ; 0x1153
    add bx, bp                       ; 0x1157
    mov word [bx - 0x0050], ax       ; 0x1159
    mov ax, word [bp - 0x0002]       ; 0x115c
    shl ax, 1                        ; 0x115f
    mov bx, ax                       ; 0x1161
    mov word [bx - 0x7cf2], 0        ; 0x1163
    inc word [bp - 0x0002]           ; 0x1169
    mov ax, word [bp - 0x0002]       ; 0x116c
    cmp ax, strict word 6            ; 0x116f
    jl short @..api_idx_0050.l1      ; 0x1172
    mov word [data_904e], 0xffff     ; 0x1174
    mov word [bp - 0x0004], 0x32     ; 0x117a
    mov word [bp - 0x0006], 0x73     ; 0x117f
    mov word [bp - 0x0008], 0x10d    ; 0x1184
    mov word [bp - 0x000a], 0xc5     ; 0x1189
    mov word [bp - 0x000c], 0x95     ; 0x118e
    mov word [bp - 0x0014], 0x16     ; 0x1193
    mov ax, 0x909f                   ; 0x1198
    push ax                          ; 0x119b
    mov ax, word [bp - 0x000a]       ; 0x119c
    inc ax                           ; 0x119f
    push ax                          ; 0x11a0
    mov ax, word [bp - 0x0008]       ; 0x11a1
    inc ax                           ; 0x11a4
    push ax                          ; 0x11a5
    mov ax, word [bp - 0x0006]       ; 0x11a6
    dec ax                           ; 0x11a9
    push ax                          ; 0x11aa
    mov ax, word [bp - 0x0004]       ; 0x11ab
    dec ax                           ; 0x11ae
    push ax                          ; 0x11af
    call ds_dispatch_c283            ; 0x11b0
    add sp, byte 0x0a                ; 0x11b3
    mov word [bp - 0x003a], ax       ; 0x11b6
    push word [bp - 0x000a]          ; 0x11b9
    push word [bp - 0x0008]          ; 0x11bc
    push word [bp - 0x0006]          ; 0x11bf
    push word [bp - 0x0004]          ; 0x11c2
    call ds_dispatch_bc9a            ; 0x11c5
    add sp, byte 8                   ; 0x11c8
    push word [bp - 0x000a]          ; 0x11cb
    push word [bp - 0x0008]          ; 0x11ce
    push word [bp - 0x0006]          ; 0x11d1
    mov ax, 0x95                     ; 0x11d4
    push ax                          ; 0x11d7
    call ds_dispatch_bc9a            ; 0x11d8
    add sp, byte 8                   ; 0x11db
    call api_idx_000a_2              ; 0x11de
    push word [bp + 0x4]             ; 0x11e1
    call api_idx_000c_2              ; 0x11e4
    pop cx                           ; 0x11e7
    mov ax, 1                        ; 0x11e8
    push ax                          ; 0x11eb
    mov ax, 0x73                     ; 0x11ec
    push ax                          ; 0x11ef
    mov ax, 0x32                     ; 0x11f0
    push ax                          ; 0x11f3
    call api_idx_000c                ; 0x11f4
    add sp, byte 6                   ; 0x11f7
    lea ax, word [bp - 0x0038]       ; 0x11fa
    push ax                          ; 0x11fd
    push word [bp + 0x6]             ; 0x11fe
    call ds_dispatch_b53b            ; 0x1201
    add sp, byte 4                   ; 0x1204
    lea ax, word [bp - 0x0038]       ; 0x1207
    push ax                          ; 0x120a
    push word [bp + 0x8]             ; 0x120b
    mov ax, 1                        ; 0x120e
    push ax                          ; 0x1211
    mov ax, 8                        ; 0x1212
    push ax                          ; 0x1215
    mov ax, word [bp - 0x0006]       ; 0x1216
    add ax, strict word 6            ; 0x1219
    push ax                          ; 0x121c
    mov ax, word [bp - 0x000c]       ; 0x121d
    add ax, strict word 6            ; 0x1220
    push ax                          ; 0x1223
    call ds_dispatch_c0c1            ; 0x1224
    add sp, byte 0x0c                ; 0x1227
    lea ax, word [bp - 0x0038]       ; 0x122a
    push ax                          ; 0x122d
    mov ax, word [bp + 0x6]          ; 0x122e
    inc ax                           ; 0x1231
    push ax                          ; 0x1232
    call ds_dispatch_b53b            ; 0x1233
    add sp, byte 4                   ; 0x1236
    lea ax, word [bp - 0x0038]       ; 0x1239
    push ax                          ; 0x123c
    mov ax, 1                        ; 0x123d
    push ax                          ; 0x1240
    push ax                          ; 0x1241
    mov ax, 8                        ; 0x1242
    push ax                          ; 0x1245
    mov ax, word [bp - 0x0006]       ; 0x1246
    add ax, strict word 6            ; 0x1249
    push ax                          ; 0x124c
    mov ax, word [bp - 0x000c]       ; 0x124d
    add ax, strict word 0x42         ; 0x1250
    push ax                          ; 0x1253
    call ds_dispatch_c0c1            ; 0x1254
    add sp, byte 0x0c                ; 0x1257
    mov ax, word [bp - 0x0006]       ; 0x125a
    add ax, strict word 0x14         ; 0x125d
    push ax                          ; 0x1260
    mov ax, word [bp - 0x000c]       ; 0x1261
    add ax, strict word 0x48         ; 0x1264
    push ax                          ; 0x1267
    call ds_dispatch_e809            ; 0x1268
    add sp, byte 4                   ; 0x126b
    mov ax, 0                        ; 0x126e
    push ax                          ; 0x1271
    mov ax, 0xcd                     ; 0x1272
    push ax                          ; 0x1275
    call ds_dispatch_e823            ; 0x1276
    add sp, byte 4                   ; 0x1279
    mov ax, data_0002                ; 0x127c
    push ax                          ; 0x127f
    mov ax, 0xa                      ; 0x1280
    push ax                          ; 0x1283
    call ds_dispatch_e830            ; 0x1284
    add sp, byte 4                   ; 0x1287
    mov word [bp - 0x003c], 0xffff   ; 0x128a
    mov word [bp - 0x003e], 0        ; 0x128f
    mov word [bp - 0x0040], 0        ; 0x1294
    mov word [bp - 0x0002], 0        ; 0x1299
@..api_idx_0050.l2:
    mov ax, 0                        ; 0x129e
    mov cx, word [bp - 0x0002]       ; 0x12a1
    cmp cx, word [bp - 0x003e]       ; 0x12a4
    jne short @..api_idx_0050.l3     ; 0x12a7
    mov ax, 1                        ; 0x12a9
@..api_idx_0050.l3:
    push ax                          ; 0x12ac
    push cx                          ; 0x12ad
    mov ax, word [bp - 0x0006]       ; 0x12ae
    add ax, strict word 0x14         ; 0x12b1
    push ax                          ; 0x12b4
    mov ax, word [bp - 0x000c]       ; 0x12b5
    add ax, strict word 0xc          ; 0x12b8
    push ax                          ; 0x12bb
    call math_loc_0eea               ; 0x12bc
    add sp, byte 8                   ; 0x12bf
    inc word [bp - 0x0002]           ; 0x12c2
    mov ax, word [bp - 0x0002]       ; 0x12c5
    cmp ax, strict word 7            ; 0x12c8
    jl short @..api_idx_0050.l2      ; 0x12cb
    mov word [bp - 0x0042], 0        ; 0x12cd
    mov ax, 0                        ; 0x12d2
    push ax                          ; 0x12d5
    push ax                          ; 0x12d6
    push word [bp - 0x0042]          ; 0x12d7
    mov ax, word [bp - 0x0006]       ; 0x12da
    add ax, strict word 0x15         ; 0x12dd
    push ax                          ; 0x12e0
    mov ax, word [bp - 0x000c]       ; 0x12e1
    add ax, strict word 0x5e         ; 0x12e4
    push ax                          ; 0x12e7
    call loc_0f76                    ; 0x12e8
    add sp, byte 0x0a                ; 0x12eb
    push word [bp - 0x0042]          ; 0x12ee
    push word [bp + 0x4]             ; 0x12f1
    call api_idx_0004_2              ; 0x12f4
    add sp, byte 4                   ; 0x12f7
    mov word [bp - 0x0044], ax       ; 0x12fa
    mov ax, 7                        ; 0x12fd
    cmp word [bp - 0x0044], byte 7   ; 0x1300
    jge short @..api_idx_0050.l4     ; 0x1304
    mov ax, word [bp - 0x0044]       ; 0x1306
@..api_idx_0050.l4:
    mov word [bp - 0x0024], ax       ; 0x1309
    mov word [bp - 0x0018], 0        ; 0x130c
    mov word [bp - 0x0022], 0xffff   ; 0x1311
    push ax                          ; 0x1316
    push word [bp - 0x0022]          ; 0x1317
    push word [bp - 0x0018]          ; 0x131a
    mov ax, 7                        ; 0x131d
    push ax                          ; 0x1320
    mov ax, 0xf                      ; 0x1321
    push ax                          ; 0x1324
    mov ax, word [bp - 0x0006]       ; 0x1325
    add ax, strict word 0x22         ; 0x1328
    push ax                          ; 0x132b
    mov ax, word [bp - 0x000c]       ; 0x132c
    add ax, strict word 6            ; 0x132f
    push ax                          ; 0x1332
    call ds_dispatch_bf97            ; 0x1333
    add sp, byte 0x0e                ; 0x1336
    mov word [bp - 0x0012], 0        ; 0x1339
    push word [bp - 0x0012]          ; 0x133e
