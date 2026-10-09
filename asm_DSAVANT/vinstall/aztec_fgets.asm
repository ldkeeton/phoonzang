aztec_fgets:
    push bp                          ; 0x11ba
    mov bp, sp                       ; 0x11bb
    add sp, byte 0xae                ; 0x11bd
    push word [bp + 0x4]             ; 0x11c0
    call leaf_loc_0200               ; 0x11c3
    pop cx                           ; 0x11c6
    mov word [bp - 0x0002], ax       ; 0x11c7
    cmp ax, strict word 0xffff       ; 0x11ca
    jne short @..aztec_fgets.l1      ; 0x11cd
    mov ax, 0x1689                   ; 0x11cf
    push ax                          ; 0x11d2
    lea ax, word [bp - 0x0052]       ; 0x11d3
    push ax                          ; 0x11d6
    call aztec_strcpy                ; 0x11d7
    add sp, byte 4                   ; 0x11da
    push word [bp + 0x4]             ; 0x11dd
    lea ax, word [bp - 0x0052]       ; 0x11e0
    push ax                          ; 0x11e3
    call aztec_strncat               ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, 0x16af                   ; 0x11ea
    push ax                          ; 0x11ed
    lea ax, word [bp - 0x0052]       ; 0x11ee
    push ax                          ; 0x11f1
    call aztec_strncat               ; 0x11f2
    add sp, byte 4                   ; 0x11f5
    lea ax, word [bp - 0x0052]       ; 0x11f8
    push ax                          ; 0x11fb
    call math_loc_0992               ; 0x11fc
    pop cx                           ; 0x11ff
    mov ax, data_0004                ; 0x1200
    push ax                          ; 0x1203
    call loc_380b                    ; 0x1204
    pop cx                           ; 0x1207
@..aztec_fgets.l1:
    push word [bp + 0x6]             ; 0x1208
    call leaf_loc_2a1c               ; 0x120b
    pop cx                           ; 0x120e
    mov word [bp - 0x0002], ax       ; 0x120f
    cmp ax, strict word 0xffff       ; 0x1212
    je short @..aztec_fgets.l2       ; 0x1215
    jmp near @..aztec_fgets.l5       ; 0x1217
@..aztec_fgets.l2:
    cmp word [bp + 0x8], byte 1      ; 0x121a
    jne short @..aztec_fgets.l4      ; 0x121e
    push word [bp + 0x6]             ; 0x1220
    call aztec_mkdir                 ; 0x1223
    pop cx                           ; 0x1226
    mov word [bp - 0x0002], ax       ; 0x1227
    cmp ax, strict word 0xffff       ; 0x122a
    jne short @..aztec_fgets.l3      ; 0x122d
    mov ax, 0x16c2                   ; 0x122f
    push ax                          ; 0x1232
    lea ax, word [bp - 0x0052]       ; 0x1233
    push ax                          ; 0x1236
    call aztec_strcpy                ; 0x1237
    add sp, byte 4                   ; 0x123a
    push word [bp + 0x6]             ; 0x123d
    lea ax, word [bp - 0x0052]       ; 0x1240
    push ax                          ; 0x1243
    call aztec_strncat               ; 0x1244
    add sp, byte 4                   ; 0x1247
    mov ax, 0x16e8                   ; 0x124a
    push ax                          ; 0x124d
    lea ax, word [bp - 0x0052]       ; 0x124e
    push ax                          ; 0x1251
    call aztec_strncat               ; 0x1252
    add sp, byte 4                   ; 0x1255
    lea ax, word [bp - 0x0052]       ; 0x1258
    push ax                          ; 0x125b
    call math_loc_0992               ; 0x125c
    pop cx                           ; 0x125f
    mov ax, 1                        ; 0x1260
    push ax                          ; 0x1263
    call loc_380b                    ; 0x1264
    pop cx                           ; 0x1267
@..aztec_fgets.l3:
    push word [bp + 0x6]             ; 0x1268
    call leaf_loc_2a1c               ; 0x126b
    pop cx                           ; 0x126e
    mov word [bp - 0x0002], ax       ; 0x126f
@..aztec_fgets.l4:
    cmp word [bp - 0x0002], byte 0xff ; 0x1272
    jne short @..aztec_fgets.l5      ; 0x1276
    mov ax, 0x16fa                   ; 0x1278
    push ax                          ; 0x127b
    lea ax, word [bp - 0x0052]       ; 0x127c
    push ax                          ; 0x127f
    call aztec_strcpy                ; 0x1280
    add sp, byte 4                   ; 0x1283
    push word [bp + 0x6]             ; 0x1286
    lea ax, word [bp - 0x0052]       ; 0x1289
    push ax                          ; 0x128c
    call aztec_strncat               ; 0x128d
    add sp, byte 4                   ; 0x1290
    mov ax, 0x1720                   ; 0x1293
    push ax                          ; 0x1296
    lea ax, word [bp - 0x0052]       ; 0x1297
    push ax                          ; 0x129a
    call aztec_strncat               ; 0x129b
    add sp, byte 4                   ; 0x129e
    lea ax, word [bp - 0x0052]       ; 0x12a1
    push ax                          ; 0x12a4
    call math_loc_0992               ; 0x12a5
    pop cx                           ; 0x12a8
    mov ax, data_0002                ; 0x12a9
    push ax                          ; 0x12ac
    call loc_380b                    ; 0x12ad
    pop cx                           ; 0x12b0
@..aztec_fgets.l5:
    mov sp, bp                       ; 0x12b1
    pop bp                           ; 0x12b3
    ret                              ; 0x12b4
