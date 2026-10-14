; auto-generated
ds_app_121f: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x121f
    call aztec_csav                  ; 0x1222
    mov ax, 6                        ; 0x1225
    imul word [bp + 0xa]             ; 0x1228
    add ax, word [bp + 0x6]          ; 0x122b
    push ax                          ; 0x122e
    mov ax, word [bp + 0x4]          ; 0x122f
    add ax, word [bp + 0x8]          ; 0x1232
    push ax                          ; 0x1235
    push word [bp + 0x6]             ; 0x1236
    push word [bp + 0x4]             ; 0x1239
    call ds_app_0fdf                 ; 0x123c
    add sp, byte 8                   ; 0x123f
    mov ax, 0                        ; 0x1242
    push ax                          ; 0x1245
    mov ax, word [bp + 0x6]          ; 0x1246
    add ax, strict word 6            ; 0x1249
    push ax                          ; 0x124c
    mov ax, word [bp + 0x4]          ; 0x124d
    add ax, strict word 8            ; 0x1250
    push ax                          ; 0x1253
    push word [bp + 0x6]             ; 0x1254
    push word [bp + 0x4]             ; 0x1257
    call ds_app_0f2a                 ; 0x125a
    add sp, byte 0x0a                ; 0x125d
    mov ax, 0                        ; 0x1260
    push ax                          ; 0x1263
    mov ax, 6                        ; 0x1264
    imul word [bp + 0xa]             ; 0x1267
    add ax, word [bp + 0x6]          ; 0x126a
    push ax                          ; 0x126d
    mov ax, word [bp + 0x4]          ; 0x126e
    add ax, strict word 8            ; 0x1271
    push ax                          ; 0x1274
    mov ax, 6                        ; 0x1275
    imul word [bp + 0xa]             ; 0x1278
    add ax, word [bp + 0x6]          ; 0x127b
    add ax, strict word 0xfffa       ; 0x127e
    push ax                          ; 0x1281
    push word [bp + 0x4]             ; 0x1282
    call ds_app_0f2a                 ; 0x1285
    add sp, byte 0x0a                ; 0x1288
    mov ax, 0xc0                     ; 0x128b
    push ax                          ; 0x128e
    mov ax, 0                        ; 0x128f
    push ax                          ; 0x1292
    call thunk_3                     ; 0x1293
    add sp, byte 4                   ; 0x1296
    mov ax, word [bp + 0x6]          ; 0x1299
    inc ax                           ; 0x129c
    push ax                          ; 0x129d
    mov ax, word [bp + 0x4]          ; 0x129e
    inc ax                           ; 0x12a1
    inc ax                           ; 0x12a2
    push ax                          ; 0x12a3
    call thunk                       ; 0x12a4
    add sp, byte 4                   ; 0x12a7
    mov ax, 0                        ; 0x12aa
    push ax                          ; 0x12ad
    mov ax, 1                        ; 0x12ae
    push ax                          ; 0x12b1
    call ds_loc_3a77                 ; 0x12b2
    add sp, byte 4                   ; 0x12b5
    mov ax, 6                        ; 0x12b8
    imul word [bp + 0xa]             ; 0x12bb
    add ax, word [bp + 0x6]          ; 0x12be
    add ax, strict word 0xfffb       ; 0x12c1
    push ax                          ; 0x12c4
    mov ax, word [bp + 0x4]          ; 0x12c5
    inc ax                           ; 0x12c8
    inc ax                           ; 0x12c9
    push ax                          ; 0x12ca
    call thunk                       ; 0x12cb
    add sp, byte 4                   ; 0x12ce
    mov ax, 0                        ; 0x12d1
    push ax                          ; 0x12d4
    mov ax, 2                        ; 0x12d5
    push ax                          ; 0x12d8
    call ds_loc_3a77                 ; 0x12d9
    add sp, byte 4                   ; 0x12dc
    mov ax, 0                        ; 0x12df
    push ax                          ; 0x12e2
    mov ax, word [bp + 0x6]          ; 0x12e3
    add ax, word [bp + 0xc]          ; 0x12e6
    add ax, strict word 0xc          ; 0x12e9
    push ax                          ; 0x12ec
    mov ax, word [bp + 0x4]          ; 0x12ed
    add ax, strict word 8            ; 0x12f0
    push ax                          ; 0x12f3
    mov ax, word [bp + 0x6]          ; 0x12f4
    add ax, word [bp + 0xc]          ; 0x12f7
    add ax, strict word 8            ; 0x12fa
    push ax                          ; 0x12fd
    push word [bp + 0x4]             ; 0x12fe
    call ds_app_0f2a                 ; 0x1301
    add sp, byte 0x0a                ; 0x1304
    ret                              ; 0x1307
