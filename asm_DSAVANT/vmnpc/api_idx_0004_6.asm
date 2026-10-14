; auto-generated
api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x11f8
    call aztec_csav                  ; 0x11fb
    mov ax, word [bp + 0x6]          ; 0x11fe
    add ax, 0x98                     ; 0x1201
    push ax                          ; 0x1204
    mov ax, 0x13f                    ; 0x1205
    push ax                          ; 0x1208
    mov ax, word [bp + 0x6]          ; 0x1209
    add ax, 0x92                     ; 0x120c
    push ax                          ; 0x120f
    mov ax, 0                        ; 0x1210
    push ax                          ; 0x1213
    call thunk_4                     ; 0x1214
    add sp, byte 8                   ; 0x1217
    push word [bp + 0x4]             ; 0x121a
    call aztec_strlen                ; 0x121d
    pop cx                           ; 0x1220
    mov cx, 6                        ; 0x1221
    imul cx                          ; 0x1224
    mov cx, 2                        ; 0x1226
    cwd                              ; 0x1229
    idiv cx                          ; 0x122a
    mov cx, ax                       ; 0x122c
    mov ax, 0xa1                     ; 0x122e
    sub ax, cx                       ; 0x1231
    mov word [bp - 0x0002], ax       ; 0x1233
    push word [bp + 0x4]             ; 0x1236
    call aztec_strlen                ; 0x1239
    pop cx                           ; 0x123c
    mov cx, 6                        ; 0x123d
    imul cx                          ; 0x1240
    mov cx, ax                       ; 0x1242
    mov ax, word [bp - 0x0002]       ; 0x1244
    add cx, ax                       ; 0x1247
    mov word [bp - 0x0004], cx       ; 0x1249
    push word [bp + 0x4]             ; 0x124c
    mov ax, 0xffff                   ; 0x124f
    push ax                          ; 0x1252
    mov ax, 0                        ; 0x1253
    push ax                          ; 0x1256
    mov ax, 0x16                     ; 0x1257
    push ax                          ; 0x125a
    mov ax, word [bp + 0x6]          ; 0x125b
    add ax, 0x92                     ; 0x125e
    push ax                          ; 0x1261
    push word [bp - 0x0002]          ; 0x1262
    mov ax, word [bp + 0x6]          ; 0x1265
    add ax, 0x98                     ; 0x1268
    push ax                          ; 0x126b
    push cx                          ; 0x126c
    mov ax, word [bp + 0x6]          ; 0x126d
    add ax, 0x92                     ; 0x1270
    push ax                          ; 0x1273
    push word [bp - 0x0002]          ; 0x1274
    call api_idx_0004_3              ; 0x1277
    add sp, byte 0x14                ; 0x127a
    cmp word [bp + 0x6], byte 0      ; 0x127d
    je short @..api_idx_0004_6.l1    ; 0x1281
    mov ax, 0                        ; 0x1283
    push ax                          ; 0x1286
    call ds_app_0a27                 ; 0x1287
    pop cx                           ; 0x128a
@..api_idx_0004_6.l1:
    ret                              ; 0x128b
