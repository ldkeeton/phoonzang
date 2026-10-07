math_loc_111b:
    mov ax, 0xfe32                   ; 0x111b
    call ds_dispatch_f40b            ; 0x111e
    mov word [data_9052], 0xffff     ; 0x1121
    mov ax, word [bp + 0x14]         ; 0x1127
    shl ax, 1                        ; 0x112a
    mov word [bp - 0x0010], ax       ; 0x112c
    mov word [bp - 0x0002], 0        ; 0x112f
    mov word [bp - 0x0004], 0        ; 0x1134
@..math_loc_111b.l1:
    mov ax, word [bp - 0x0004]       ; 0x1139
    shl ax, 1                        ; 0x113c
    mov si, ax                       ; 0x113e
    mov bx, word [bp + 0x1a]         ; 0x1140
    cmp word [bx + si], byte 0xff    ; 0x1143
    jne short @..math_loc_111b.l2    ; 0x1146
    jmp near @..math_loc_111b.l7     ; 0x1148
@..math_loc_111b.l2:
    cmp word [bx + si], byte 1       ; 0x114b
    je short @..math_loc_111b.l3     ; 0x114e
    jmp near @..math_loc_111b.l6     ; 0x1150
@..math_loc_111b.l3:
    mov ax, word [bp - 0x0002]       ; 0x1153
    cmp word [bp + 0x16], byte 0     ; 0x1156
    je short @..math_loc_111b.l4     ; 0x115a
    mov ax, word [bp - 0x0004]       ; 0x115c
@..math_loc_111b.l4:
    mov word [bp - 0x0008], ax       ; 0x115f
    mov ax, word [bp + 0xa]          ; 0x1162
    mov cx, word [bp - 0x0008]       ; 0x1165
    cmp cx, word [bp - 0x0010]       ; 0x1168
    jge short @..math_loc_111b.l5    ; 0x116b
    mov ax, word [bp + 0x8]          ; 0x116d
@..math_loc_111b.l5:
    mov word [bp - 0x0006], ax       ; 0x1170
    mov ax, 0x14                     ; 0x1173
    imul word [bp - 0x0002]          ; 0x1176
    lea cx, word [bp - 0x015a]       ; 0x1179
    add ax, cx                       ; 0x117d
    push ax                          ; 0x117f
    mov ax, word [bp + 0x4]          ; 0x1180
    add ax, word [bp - 0x0004]       ; 0x1183
    push ax                          ; 0x1186
    call ds_dispatch_b53b            ; 0x1187
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
    call ds_dispatch_bce3            ; 0x11de
    add sp, byte 0x0a                ; 0x11e1
    mov ax, 0                        ; 0x11e4
    push ax                          ; 0x11e7
    push word [bp + 0x18]            ; 0x11e8
    call ds_dispatch_e823            ; 0x11eb
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
    call ds_dispatch_fa90            ; 0x1206
    pop cx                           ; 0x1209
    mov cx, ax                       ; 0x120a
    mov ax, word [bp + 0xe]          ; 0x120c
    sub ax, cx                       ; 0x120f
    mov cx, 6                        ; 0x1211
    imul cx                          ; 0x1214
    mov cx, data_0002                ; 0x1216
    cwd                              ; 0x1219
    idiv cx                          ; 0x121a
    add ax, word [bp - 0x0006]       ; 0x121c
    add ax, word [bp - 0x000a]       ; 0x121f
    inc ax                           ; 0x1222
    push ax                          ; 0x1223
    call ds_dispatch_e809            ; 0x1224
    add sp, byte 4                   ; 0x1227
    mov ax, 0                        ; 0x122a
    push ax                          ; 0x122d
    mov ax, 0x14                     ; 0x122e
    imul word [bp - 0x0002]          ; 0x1231
    lea cx, word [bp - 0x015a]       ; 0x1234
    add ax, cx                       ; 0x1238
    push ax                          ; 0x123a
    call ds_dispatch_e84e            ; 0x123b
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
    call ds_dispatch_baa6            ; 0x126e
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
@..math_loc_111b.l6:
    inc word [bp - 0x0004]           ; 0x1296
    jmp near @..math_loc_111b.l1     ; 0x1299
@..math_loc_111b.l7:
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
    call ds_dispatch_baa6            ; 0x12b2
    add sp, byte 0x0e                ; 0x12b5
    cmp word [bp + 0x16], byte 1     ; 0x12b8
    jne short @..math_loc_111b.l10   ; 0x12bc
    mov word [bp - 0x000e], 0        ; 0x12be
    jmp short @..math_loc_111b.l9    ; 0x12c3
@..math_loc_111b.l8:
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
    call ds_dispatch_baa6            ; 0x12f4
    add sp, byte 0x0e                ; 0x12f7
    inc word [bp - 0x000e]           ; 0x12fa
@..math_loc_111b.l9:
    mov ax, word [bp - 0x000e]       ; 0x12fd
    cmp ax, word [data_8466]         ; 0x1300
    jl short @..math_loc_111b.l8     ; 0x1304
    mov ax, 0                        ; 0x1306
    push ax                          ; 0x1309
    push ax                          ; 0x130a
    push ax                          ; 0x130b
    push ax                          ; 0x130c
    push ax                          ; 0x130d
    mov ax, 0xffff                   ; 0x130e
    push ax                          ; 0x1311
    mov ax, word [bp - 0x0002]       ; 0x1312
    add ax, word [data_8466]         ; 0x1315
    push ax                          ; 0x1319
