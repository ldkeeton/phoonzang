api_idx_0002_10:
    mov ax, 0xfffe                   ; 0x1206
    call ds_dispatch_f40b            ; 0x1209
    mov word [bp - 0x0002], 0        ; 0x120c
@..api_idx_0002_10.l1:
    mov ax, word [bp + 0x4]          ; 0x1211
    mov cx, word [bp - 0x0002]       ; 0x1214
    shl cx, 1                        ; 0x1217
    shl cx, 1                        ; 0x1219
    mov bx, cx                       ; 0x121b
    sub word [bx - 0x7d0e], ax       ; 0x121d
    cmp word [bx - 0x7d0e], byte 0   ; 0x1221
    jg short @..api_idx_0002_10.l2   ; 0x1226
    mov word [bx - 0x7d0e], 0        ; 0x1228
    mov word [bx - 0x7d0c], 0        ; 0x122e
@..api_idx_0002_10.l2:
    inc word [bp - 0x0002]           ; 0x1234
    mov ax, word [bp - 0x0002]       ; 0x1237
    cmp ax, strict word 6            ; 0x123a
    jl short @..api_idx_0002_10.l1   ; 0x123d
    ret                              ; 0x123f
loc_1240:
    mov ax, 0                        ; 0x1240
    call ds_dispatch_f40b            ; 0x1243
    mov word [dseg_91a8], 1          ; 0x1246
    mov ax, 0                        ; 0x124c
    push ax                          ; 0x124f
    mov ax, 8                        ; 0x1250
    push ax                          ; 0x1253
    mov ax, 0x8cfe                   ; 0x1254
    push ax                          ; 0x1257
    call ds_dispatch_f306            ; 0x1258
    add sp, byte 6                   ; 0x125b
    mov word [dseg_82ea], 0          ; 0x125e
    mov ax, word [bp + 0x4]          ; 0x1264
    jmp short @..local.l31           ; 0x1267
@..local.l27:
    mov ax, word [bp + 0x6]          ; 0x1269
    add word [dseg_8f44], ax         ; 0x126c
    jmp short @..local.l32           ; 0x1270
@..local.l28:
    mov ax, word [bp + 0x6]          ; 0x1272
    add word [dseg_8f46], ax         ; 0x1275
    jmp short @..local.l32           ; 0x1279
@..local.l29:
    mov ax, word [bp + 0x6]          ; 0x127b
    sub word [dseg_8f44], ax         ; 0x127e
    jmp short @..local.l32           ; 0x1282
@..local.l30:
    mov ax, word [bp + 0x6]          ; 0x1284
    sub word [dseg_8f46], ax         ; 0x1287
    jmp short @..local.l32           ; 0x128b
@..local.l31:
    cmp ax, strict word 0            ; 0x128d
    je short @..local.l27            ; 0x1290
    cmp ax, strict word 1            ; 0x1292
    je short @..local.l28            ; 0x1295
    cmp ax, strict word 2            ; 0x1297
    je short @..local.l29            ; 0x129a
    cmp ax, strict word 3            ; 0x129c
    je short @..local.l30            ; 0x129f
@..local.l32:
    ret                              ; 0x12a1
loc_12a2:
    mov ax, 0                        ; 0x12a2
    call ds_dispatch_f40b            ; 0x12a5
    mov ax, word [dseg_8f46]         ; 0x12a8
    mov word [dseg_8f3a], ax         ; 0x12ab
    mov ax, word [dseg_8f44]         ; 0x12ae
    mov word [dseg_8f38], ax         ; 0x12b1
    mov ax, word [dseg_8f42]         ; 0x12b4
    mov word [dseg_8f36], ax         ; 0x12b7
    mov ax, word [dseg_8f40]         ; 0x12ba
    mov word [dseg_8f34], ax         ; 0x12bd
    mov ax, word [dseg_8f3e]         ; 0x12c0
    mov word [dseg_8f32], ax         ; 0x12c3
    mov ax, word [dseg_830c]         ; 0x12c6
    mov word [dseg_8f3c], ax         ; 0x12c9
    mov ax, word [dseg_82ee]         ; 0x12cc
    mov word [dseg_8f30], ax         ; 0x12cf
    ret                              ; 0x12d2
loc_12d3:
    mov ax, 0                        ; 0x12d3
    call ds_dispatch_f40b            ; 0x12d6
    push word [bp + 0x4]             ; 0x12d9
    call api_idx_0050                ; 0x12dc
    pop cx                           ; 0x12df
    call ds_dispatch_ec17            ; 0x12e0
    push word [bp + 0x6]             ; 0x12e3
    call ds_dispatch_b7e0            ; 0x12e6
    pop cx                           ; 0x12e9
    push word [bp + 0x8]             ; 0x12ea
    call api_idx_0006_2              ; 0x12ed
    pop cx                           ; 0x12f0
    mov ax, 0x98                     ; 0x12f1
    push ax                          ; 0x12f4
    mov ax, 0x13f                    ; 0x12f5
    push ax                          ; 0x12f8
    mov ax, 0x92                     ; 0x12f9
    push ax                          ; 0x12fc
    mov ax, 0                        ; 0x12fd
    push ax                          ; 0x1300
    call ds_dispatch_e8da            ; 0x1301
    add sp, byte 8                   ; 0x1304
    ret                              ; 0x1307
