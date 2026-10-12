api_idx_003e:
    mov ax, 0xffc2                   ; 0x11bc
    call ds_aztec_csav               ; 0x11bf
    mov ax, 0                        ; 0x11c2
    push ax                          ; 0x11c5
    push word [bp + 0x8]             ; 0x11c6
    push word [bp + 0x6]             ; 0x11c9
    call ds_app_2331                 ; 0x11cc
    add sp, byte 6                   ; 0x11cf
    mov cx, ax                       ; 0x11d2
    sub sp, byte 4                   ; 0x11d4
    mov ax, sp                       ; 0x11d7
    mov dx, ss                       ; 0x11d9
    mov es, dx                       ; 0x11db
    mov si, cx                       ; 0x11dd
    mov di, ax                       ; 0x11df
    movsw                            ; 0x11e1
    movsw                            ; 0x11e2
    call ds_app_2305                 ; 0x11e3
    add sp, byte 4                   ; 0x11e6
    mov word [bp - 0x0002], ax       ; 0x11e9
    cmp word [bp - 0x0002], byte 0   ; 0x11ec
    je short @..api_idx_003e.l1      ; 0x11f0
    mov ax, 0x248                    ; 0x11f2
    imul word [bp + 0x4]             ; 0x11f5
    mov bx, ax                       ; 0x11f8
    cmp byte [bx + 0x5e2f], 3        ; 0x11fa
    jb short @..api_idx_003e.l2      ; 0x11ff
@..api_idx_003e.l1:
    mov ax, 0                        ; 0x1201
    ret                              ; 0x1204
@..api_idx_003e.l2:
    lea ax, word [bp - 0x002a]       ; 0x1205
    push ax                          ; 0x1208
    push word [bp - 0x0002]          ; 0x1209
    call ds_app_04c4                 ; 0x120c
    add sp, byte 4                   ; 0x120f
    lea ax, word [bp - 0x0016]       ; 0x1212
    push ax                          ; 0x1215
    mov ax, 0x146f                   ; 0x1216
    push ax                          ; 0x1219
    call ds_app_mem_0782             ; 0x121a
    add sp, byte 4                   ; 0x121d
    lea ax, word [bp - 0x003e]       ; 0x1220
    push ax                          ; 0x1223
    mov ax, 0x1470                   ; 0x1224
    push ax                          ; 0x1227
    call ds_app_mem_0782             ; 0x1228
    add sp, byte 4                   ; 0x122b
    mov ax, 0x248                    ; 0x122e
    imul word [bp + 0x4]             ; 0x1231
    mov bx, ax                       ; 0x1234
    mov ax, word [bx + 0x5c0c]       ; 0x1236
    cmp ax, word [bp - 0x0002]       ; 0x123a
    jge short @..api_idx_003e.l3     ; 0x123d
    mov word [bp - 0x0002], ax       ; 0x123f
@..api_idx_003e.l3:
    mov ax, word [bp - 0x0002]       ; 0x1242
    sub word [bx + 0x5c0c], ax       ; 0x1245
    mov ax, 0x43                     ; 0x1249
    push ax                          ; 0x124c
    mov ax, 0x41                     ; 0x124d
    push ax                          ; 0x1250
    mov ax, 0x43                     ; 0x1251
    push ax                          ; 0x1254
    mov ax, 1                        ; 0x1255
    push ax                          ; 0x1258
    lea ax, word [bp - 0x003e]       ; 0x1259
    push ax                          ; 0x125c
    lea ax, word [bp - 0x002a]       ; 0x125d
    push ax                          ; 0x1260
    lea ax, word [bp - 0x0016]       ; 0x1261
    push ax                          ; 0x1264
    push word [bp + 0x4]             ; 0x1265
    call api_idx_0002                ; 0x1268
    add sp, byte 0x10                ; 0x126b
    mov ax, 1                        ; 0x126e
    push ax                          ; 0x1271
    push word [bp + 0x4]             ; 0x1272
    call ds_app_1d81                 ; 0x1275
    add sp, byte 4                   ; 0x1278
    mov ax, 0x248                    ; 0x127b
    imul word [bp + 0x4]             ; 0x127e
    mov bx, ax                       ; 0x1281
    cmp word [bx + 0x5c0c], byte 0   ; 0x1283
    jg short @..api_idx_003e.l4      ; 0x1288
    mov ax, 4                        ; 0x128a
    push ax                          ; 0x128d
    call api_idx_0004                ; 0x128e
    pop cx                           ; 0x1291
    mov ax, 3                        ; 0x1292
    push ax                          ; 0x1295
    mov ax, 0                        ; 0x1296
    push ax                          ; 0x1299
    mov ax, 0x1490                   ; 0x129a
    push ax                          ; 0x129d
    push word [bp + 0x4]             ; 0x129e
    call api_idx_005a                ; 0x12a1
    add sp, byte 8                   ; 0x12a4
    mov ax, 0                        ; 0x12a7
    ret                              ; 0x12aa
@..api_idx_003e.l4:
    mov ax, 0x248                    ; 0x12ab
    imul word [bp + 0x4]             ; 0x12ae
    mov bx, ax                       ; 0x12b1
    mov al, byte [bx + 0x5e2c]       ; 0x12b3
    sub ah, ah                       ; 0x12b7
    inc ax                           ; 0x12b9
    inc ax                           ; 0x12ba
    push ax                          ; 0x12bb
    call ds_app_0a27                 ; 0x12bc
    pop cx                           ; 0x12bf
    push word [bss_905a]             ; 0x12c0
    call api_idx_0004                ; 0x12c4
    pop cx                           ; 0x12c7
    mov ax, 1                        ; 0x12c8
    ret                              ; 0x12cb
