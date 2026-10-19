; auto-generated
loc_HSPL:
    push bp                          ; 0x11ba
    mov bp, sp                       ; 0x11bb
    add sp, byte 0xae                ; 0x11bd
    push word [bp + 0x4]             ; 0x11c0
    call loc_ILSL                    ; 0x11c3
    pop cx                           ; 0x11c6
    mov word [bp - 0x0002], ax       ; 0x11c7
    cmp ax, strict word 0xffff       ; 0x11ca
    jne short @..loc_HSPL.l1         ; 0x11cd
    mov ax, dseg_1689                ; 0x11cf
    push ax                          ; 0x11d2
    lea ax, word [bp - 0x0052]       ; 0x11d3
    push ax                          ; 0x11d6
    call aztec_strcpy                ; 0x11d7
    add sp, byte 4                   ; 0x11da
    push word [bp + 0x4]             ; 0x11dd
    lea ax, word [bp - 0x0052]       ; 0x11e0
    push ax                          ; 0x11e3
    call aztec_strcat                ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, dseg_16af                ; 0x11ea
    push ax                          ; 0x11ed
    lea ax, word [bp - 0x0052]       ; 0x11ee
    push ax                          ; 0x11f1
    call aztec_strcat                ; 0x11f2
    add sp, byte 4                   ; 0x11f5
    lea ax, word [bp - 0x0052]       ; 0x11f8
    push ax                          ; 0x11fb
    call loc_NNGU                    ; 0x11fc
    pop cx                           ; 0x11ff
    mov ax, 4                        ; 0x1200
    push ax                          ; 0x1203
    call aztec_exit                  ; 0x1204
    pop cx                           ; 0x1207
@..loc_HSPL.l1:
    push word [bp + 0x6]             ; 0x1208
    call aztec_chdir                 ; 0x120b
    pop cx                           ; 0x120e
    mov word [bp - 0x0002], ax       ; 0x120f
    cmp ax, strict word 0xffff       ; 0x1212
    je short @..loc_HSPL.l2          ; 0x1215
    jmp near @..loc_HSPL.l5          ; 0x1217
@..loc_HSPL.l2:
    cmp word [bp + 0x8], byte 1      ; 0x121a
    jne short @..loc_HSPL.l4         ; 0x121e
    push word [bp + 0x6]             ; 0x1220
    call aztec_mkdir                 ; 0x1223
    pop cx                           ; 0x1226
    mov word [bp - 0x0002], ax       ; 0x1227
    cmp ax, strict word 0xffff       ; 0x122a
    jne short @..loc_HSPL.l3         ; 0x122d
    mov ax, dseg_16c2                ; 0x122f
    push ax                          ; 0x1232
    lea ax, word [bp - 0x0052]       ; 0x1233
    push ax                          ; 0x1236
    call aztec_strcpy                ; 0x1237
    add sp, byte 4                   ; 0x123a
    push word [bp + 0x6]             ; 0x123d
    lea ax, word [bp - 0x0052]       ; 0x1240
    push ax                          ; 0x1243
    call aztec_strcat                ; 0x1244
    add sp, byte 4                   ; 0x1247
    mov ax, dseg_16e8                ; 0x124a
    push ax                          ; 0x124d
    lea ax, word [bp - 0x0052]       ; 0x124e
    push ax                          ; 0x1251
    call aztec_strcat                ; 0x1252
    add sp, byte 4                   ; 0x1255
    lea ax, word [bp - 0x0052]       ; 0x1258
    push ax                          ; 0x125b
    call loc_NNGU                    ; 0x125c
    pop cx                           ; 0x125f
    mov ax, 1                        ; 0x1260
    push ax                          ; 0x1263
    call aztec_exit                  ; 0x1264
    pop cx                           ; 0x1267
@..loc_HSPL.l3:
    push word [bp + 0x6]             ; 0x1268
    call aztec_chdir                 ; 0x126b
    pop cx                           ; 0x126e
    mov word [bp - 0x0002], ax       ; 0x126f
@..loc_HSPL.l4:
    cmp word [bp - 0x0002], byte 0xff ; 0x1272
    jne short @..loc_HSPL.l5         ; 0x1276
    mov ax, dseg_16fa                ; 0x1278
    push ax                          ; 0x127b
    lea ax, word [bp - 0x0052]       ; 0x127c
    push ax                          ; 0x127f
    call aztec_strcpy                ; 0x1280
    add sp, byte 4                   ; 0x1283
    push word [bp + 0x6]             ; 0x1286
    lea ax, word [bp - 0x0052]       ; 0x1289
    push ax                          ; 0x128c
    call aztec_strcat                ; 0x128d
    add sp, byte 4                   ; 0x1290
    mov ax, dseg_1720                ; 0x1293
    push ax                          ; 0x1296
    lea ax, word [bp - 0x0052]       ; 0x1297
    push ax                          ; 0x129a
    call aztec_strcat                ; 0x129b
    add sp, byte 4                   ; 0x129e
    lea ax, word [bp - 0x0052]       ; 0x12a1
    push ax                          ; 0x12a4
    call loc_NNGU                    ; 0x12a5
    pop cx                           ; 0x12a8
    mov ax, 2                        ; 0x12a9
    push ax                          ; 0x12ac
    call aztec_exit                  ; 0x12ad
    pop cx                           ; 0x12b0
@..loc_HSPL.l5:
    mov sp, bp                       ; 0x12b1
    pop bp                           ; 0x12b3
    ret                              ; 0x12b4
