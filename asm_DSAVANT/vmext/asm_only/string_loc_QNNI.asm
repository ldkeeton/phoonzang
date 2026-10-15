; auto-generated
; asm only
string_loc_QNNI:
    mov word [bp - 0x0004], 0        ; 0x119c
@..string_loc_QNNI.l1:
    mov ax, 0x248                    ; 0x11a1
    imul word [bp - 0x0006]          ; 0x11a4
    mov cx, word [bp - 0x0004]       ; 0x11a7
    shl cx, 1                        ; 0x11aa
    shl cx, 1                        ; 0x11ac
    add ax, cx                       ; 0x11ae
    mov bx, ax                       ; 0x11b0
    push word [bx + 0x5c1e]          ; 0x11b2
    mov ax, 0                        ; 0x11b6
    push ax                          ; 0x11b9
    push word [bp - 0x000a]          ; 0x11ba
    push word [bp - 0x000c]          ; 0x11bd
    push word [bp - 0x000a]          ; 0x11c0
    call ds_app_QOVI                 ; 0x11c3
    add sp, byte 6                   ; 0x11c6
    mov cx, ax                       ; 0x11c9
    sub sp, byte 4                   ; 0x11cb
    mov ax, sp                       ; 0x11ce
    mov dx, ss                       ; 0x11d0
    mov es, dx                       ; 0x11d2
    mov si, cx                       ; 0x11d4
    mov di, ax                       ; 0x11d6
    movsw                            ; 0x11d8
    movsw                            ; 0x11d9
    call ds_app_VHTL                 ; 0x11da
    add sp, byte 4                   ; 0x11dd
    mov cx, ax                       ; 0x11e0
    mov ax, 0x248                    ; 0x11e2
    imul word [bp - 0x0006]          ; 0x11e5
    mov dx, word [bp - 0x0004]       ; 0x11e8
    shl dx, 1                        ; 0x11eb
    shl dx, 1                        ; 0x11ed
    add ax, dx                       ; 0x11ef
    mov bx, ax                       ; 0x11f1
    mov ax, word [bx + 0x5c1c]       ; 0x11f3
    sub ax, cx                       ; 0x11f7
    push ax                          ; 0x11f9
    call clamp                       ; 0x11fa
    add sp, byte 6                   ; 0x11fd
    push ax                          ; 0x1200
    mov ax, 0x248                    ; 0x1201
    imul word [bp - 0x0006]          ; 0x1204
    mov cx, ax                       ; 0x1207
    mov dx, word [bp - 0x0004]       ; 0x1209
    shl dx, 1                        ; 0x120c
    shl dx, 1                        ; 0x120e
    add ax, dx                       ; 0x1210
    mov bx, ax                       ; 0x1212
    pop ax                           ; 0x1214
    mov word [bx + 0x5c1c], ax       ; 0x1215
    inc word [bp - 0x0004]           ; 0x1219
    mov ax, word [bp - 0x0004]       ; 0x121c
    cmp ax, strict word 6            ; 0x121f
    jge short @..string_loc_QNNI.l2  ; 0x1222
    jmp near @..string_loc_QNNI.l1   ; 0x1224
@..string_loc_QNNI.l2:
    jmp near loc_TNQQ                ; 0x1227
loc_SLGQ:
    mov ax, 0x248                    ; 0x122a
    imul word [bp - 0x0006]          ; 0x122d
    mov bx, ax                       ; 0x1230
    push word [bx + 0x5c0e]          ; 0x1232
    mov ax, 0                        ; 0x1236
    push ax                          ; 0x1239
    mov ax, word [bx + 0x5c0c]       ; 0x123a
    sub ax, word [bp - 0x000e]       ; 0x123e
    push ax                          ; 0x1241
    call clamp                       ; 0x1242
    add sp, byte 6                   ; 0x1245
    push ax                          ; 0x1248
    mov ax, 0x248                    ; 0x1249
    imul word [bp - 0x0006]          ; 0x124c
    mov bx, ax                       ; 0x124f
    pop ax                           ; 0x1251
    mov word [bx + 0x5c0c], ax       ; 0x1252
    cmp ax, strict word 0            ; 0x1256
    jg short loc_KORV_127a           ; 0x1259
    mov byte [bx + 0x5e2f], 3        ; 0x125b
    mov word [bx + 0x5c0c], 0        ; 0x1260
    mov word [bx + 0x5c10], 0        ; 0x1266
    mov al, byte [bx + 0x5e2c]       ; 0x126c
    sub ah, ah                       ; 0x1270
    add ax, strict word 8            ; 0x1272
    push ax                          ; 0x1275
    call ds_app_IPOK                 ; 0x1276
    pop cx                           ; 0x1279
loc_KORV_127a:
    jmp near loc_TNQQ                ; 0x127a
