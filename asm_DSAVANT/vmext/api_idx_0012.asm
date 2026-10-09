api_idx_0012:
    mov ax, 0xffee                   ; 0x0ee0
    call ds_dispatch_f40b            ; 0x0ee3
    mov ax, word [data_8d12]         ; 0x0ee6
    shl ax, 1                        ; 0x0ee9
    mov si, ax                       ; 0x0eeb
    mov bx, word [data_0e12]         ; 0x0eed
    mov ax, word [bx + si + 0x3c0]   ; 0x0ef1
    mov word [bp - 0x0008], ax       ; 0x0ef5
    mov ax, word [bx + si + 0x1e0]   ; 0x0ef8
    mov cx, 0x10                     ; 0x0efc
    cwd                              ; 0x0eff
    idiv cx                          ; 0x0f00
    mov word [bp - 0x000a], ax       ; 0x0f02
    mov ax, word [bx + si + 0x1e0]   ; 0x0f05
    cwd                              ; 0x0f09
    idiv cx                          ; 0x0f0a
    mov word [bp - 0x000c], dx       ; 0x0f0c
@..api_idx_0012.l1:
    call ds_dispatch_ceb1            ; 0x0f0f
    mov word [bp - 0x0006], ax       ; 0x0f12
    cmp ax, strict word 0xffff       ; 0x0f15
    jne short @..api_idx_0012.l2     ; 0x0f18
    jmp near @..api_idx_0012.l11     ; 0x0f1a
@..api_idx_0012.l2:
    mov word [bp - 0x0010], 0        ; 0x0f1d
    mov word [bp - 0x0012], 0        ; 0x0f22
    mov cx, 0x248                    ; 0x0f27
    imul cx                          ; 0x0f2a
    mov bx, ax                       ; 0x0f2c
    cmp byte [bx + 0x5e2f], 3        ; 0x0f2e
    jb short @..api_idx_0012.l3      ; 0x0f33
    mov ax, 1                        ; 0x0f35
    push ax                          ; 0x0f38
    mov ax, 7                        ; 0x0f39
    push ax                          ; 0x0f3c
    push word [bp - 0x0008]          ; 0x0f3d
    call ds_dispatch_ed3a            ; 0x0f40
    add sp, byte 6                   ; 0x0f43
    test ax, ax                      ; 0x0f46
    jne short @..api_idx_0012.l3     ; 0x0f48
    jmp near @..api_idx_0012.l10     ; 0x0f4a
@..api_idx_0012.l3:
    push word [bp - 0x000a]          ; 0x0f4d
    push word [bp - 0x000c]          ; 0x0f50
    push word [bp - 0x000a]          ; 0x0f53
    call ds_dispatch_d0ea            ; 0x0f56
    add sp, byte 6                   ; 0x0f59
    mov cx, ax                       ; 0x0f5c
    sub sp, byte 4                   ; 0x0f5e
    mov ax, sp                       ; 0x0f61
    mov dx, ss                       ; 0x0f63
    mov es, dx                       ; 0x0f65
    mov si, cx                       ; 0x0f67
    mov di, ax                       ; 0x0f69
    movsw                            ; 0x0f6b
    movsw                            ; 0x0f6c
    call ds_dispatch_d0be            ; 0x0f6d
    add sp, byte 4                   ; 0x0f70
    mov word [bp - 0x000e], ax       ; 0x0f73
    mov word [bp - 0x0002], 0        ; 0x0f76
@..api_idx_0012.l4:
    mov ax, 1                        ; 0x0f7b
    push ax                          ; 0x0f7e
    push word [bp - 0x0002]          ; 0x0f7f
    push word [bp - 0x0008]          ; 0x0f82
    call ds_dispatch_ed3a            ; 0x0f85
    add sp, byte 6                   ; 0x0f88
    cmp ax, strict word 1            ; 0x0f8b
    je short @..api_idx_0012.l5      ; 0x0f8e
    jmp near @..api_idx_0012.l9      ; 0x0f90
@..api_idx_0012.l5:
    cmp word [bp - 0x0002], byte 7   ; 0x0f93
    jge short @..api_idx_0012.l6     ; 0x0f97
    mov word [bp - 0x0010], 1        ; 0x0f99
@..api_idx_0012.l6:
    mov ax, word [bp - 0x0002]       ; 0x0f9e
    cmp ax, strict word 7            ; 0x0fa1
    jle short @..api_idx_0012.l7     ; 0x0fa4
    cmp ax, strict word 0xf          ; 0x0fa6
    jge short @..api_idx_0012.l7     ; 0x0fa9
    mov word [bp - 0x0012], 2        ; 0x0fab
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l8      ; 0x0fb0
    mov ax, 0x248                    ; 0x0fb3
    imul word [bp - 0x0006]          ; 0x0fb6
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]          ; 0x0fbb
    mov ax, 0                        ; 0x0fbf
    push ax                          ; 0x0fc2
    mov ax, word [bx + 0x5c10]       ; 0x0fc3
    add ax, word [bp - 0x000e]       ; 0x0fc7
    push ax                          ; 0x0fca
    db 0xe8, 0xf4, 0xa7 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x0fce
    push ax                          ; 0x0fd1
    mov ax, 0x248                    ; 0x0fd2
    imul word [bp - 0x0006]          ; 0x0fd5
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x0fda
    mov word [bx + 0x5c10], ax       ; 0x0fdb
    jmp near @..api_idx_0012.l9      ; 0x0fdf
    mov word [bp - 0x0004], 0        ; 0x0fe2
    mov ax, 0x248                    ; 0x0fe7
    imul word [bp - 0x0006]          ; 0x0fea
    mov cx, word [bp - 0x0004]       ; 0x0fed
    shl cx, 1                        ; 0x0ff0
    shl cx, 1                        ; 0x0ff2
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c1e]          ; 0x0ff8
    mov ax, 0                        ; 0x0ffc
    push ax                          ; 0x0fff
    push word [bp - 0x000a]          ; 0x1000
    push word [bp - 0x000c]          ; 0x1003
    push word [bp - 0x000a]          ; 0x1006
    db 0xe8, 0xde, 0xc0 ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x100c
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x1011
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x1016
    mov es, dx                       ; 0x1018
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x101e
    movsw                            ; 0x101f
    db 0xe8, 0x9b, 0xc0 ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x1023
    push ax                          ; 0x1026
    mov ax, 0x248                    ; 0x1027
    imul word [bp - 0x0006]          ; 0x102a
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0004]       ; 0x102f
    shl dx, 1                        ; 0x1032
    shl dx, 1                        ; 0x1034
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x103a
    add ax, word [bx + 0x5c1c]       ; 0x103b
    push ax                          ; 0x103f
    db 0xe8, 0x7f, 0xa7 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x1043
    push ax                          ; 0x1046
    mov ax, 0x248                    ; 0x1047
    imul word [bp - 0x0006]          ; 0x104a
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0004]       ; 0x104f
    shl dx, 1                        ; 0x1052
    shl dx, 1                        ; 0x1054
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x105a
    mov word [bx + 0x5c1c], ax       ; 0x105b
    inc word [bp - 0x0004]           ; 0x105f
    mov ax, word [bp - 0x0004]       ; 0x1062
    cmp ax, strict word 6            ; 0x1065
    jge short loc_106d               ; 0x1068
    jmp near loc_0fe7                ; 0x106a
    jmp near @..api_idx_0012.l9      ; 0x106d
    mov ax, 0x248                    ; 0x1070
    imul word [bp - 0x0006]          ; 0x1073
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]          ; 0x1078
    mov ax, 0                        ; 0x107c
    push ax                          ; 0x107f
    mov ax, word [bx + 0x5c0c]       ; 0x1080
    add ax, word [bp - 0x000e]       ; 0x1084
    push ax                          ; 0x1087
    db 0xe8, 0x37, 0xa7 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x108b
    push ax                          ; 0x108e
    mov ax, 0x248                    ; 0x108f
    imul word [bp - 0x0006]          ; 0x1092
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1097
    mov word [bx + 0x5c0c], ax       ; 0x1098
    jmp near @..api_idx_0012.l9      ; 0x109c
    mov ax, 0x248                    ; 0x109f
    imul word [bp - 0x0006]          ; 0x10a2
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5e32], 0        ; 0x10a7
    mov byte [bx + 0x5d5f], 0        ; 0x10ac
    jmp near @..api_idx_0012.l9      ; 0x10b1
    mov ax, 0x248                    ; 0x10b4
    imul word [bp - 0x0006]          ; 0x10b7
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d5d], 0        ; 0x10bc
    jmp near @..api_idx_0012.l9      ; 0x10c1
    mov ax, 0x248                    ; 0x10c4
    imul word [bp - 0x0006]          ; 0x10c7
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 2        ; 0x10cc
    jne short loc_10d8               ; 0x10d1
    mov byte [bx + 0x5e2f], 0        ; 0x10d3
    mov byte [bx + 0x5d60], 0        ; 0x10d8
    jmp near @..api_idx_0012.l9      ; 0x10dd
    mov word [bp - 0x0004], 1        ; 0x10e0
    mov ax, word [bp - 0x0004]       ; 0x10e5
    cmp ax, strict word 1            ; 0x10e8
    je short loc_1101                ; 0x10eb
    cmp ax, strict word 2            ; 0x10ed
    db 0x74, 0x0f ; je short loc_1101
    cmp ax, strict word 4            ; 0x10f2
    db 0x74, 0x0a ; je short loc_1101
    cmp ax, strict word 8            ; 0x10f7
    db 0x74, 0x05 ; je short loc_1101
    cmp ax, strict word 9            ; 0x10fc
    jne short loc_1115               ; 0x10ff
    mov ax, 0x248                    ; 0x1101
    imul word [bp - 0x0006]          ; 0x1104
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, word [bp - 0x0004]       ; 0x1109
    db 0x03, 0xc8 ; add cx, ax
    db 0x8b, 0xd9 ; mov bx, cx
    mov byte [bx + 0x5d5a], 0        ; 0x1110
    inc word [bp - 0x0004]           ; 0x1115
    mov ax, word [bp - 0x0004]       ; 0x1118
    cmp ax, strict word 9            ; 0x111b
    jle short loc_10e5               ; 0x111e
    jmp near @..api_idx_0012.l9      ; 0x1120
    mov ax, 0x248                    ; 0x1123
    imul word [bp - 0x0006]          ; 0x1126
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5e2f], 0        ; 0x112b
    mov ax, word [bx + 0x5c0e]       ; 0x1130
    mov word [bx + 0x5c0c], ax       ; 0x1134
    mov ax, word [bx + 0x5c12]       ; 0x1138
    mov word [bx + 0x5c10], ax       ; 0x113c
    jmp near @..api_idx_0012.l9      ; 0x1140
    mov ax, 0x248                    ; 0x1143
    imul word [bp - 0x0006]          ; 0x1146
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]          ; 0x114b
    mov ax, 0                        ; 0x114f
    push ax                          ; 0x1152
    mov ax, word [bx + 0x5c10]       ; 0x1153
    sub ax, word [bp - 0x000e]       ; 0x1157
    push ax                          ; 0x115a
    db 0xe8, 0x64, 0xa6 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x115e
    push ax                          ; 0x1161
    mov ax, 0x248                    ; 0x1162
    imul word [bp - 0x0006]          ; 0x1165
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x116a
    mov word [bx + 0x5c10], ax       ; 0x116b
    cmp ax, strict word 0            ; 0x116f
    jg short loc_1199                ; 0x1172
    mov al, byte [bx + 0x5d5c]       ; 0x1174
    db 0x2a, 0xe4 ; sub ah, ah
    db 0x8b, 0xc8 ; mov cx, ax
    push cx                          ; 0x117c
    mov ax, 6                        ; 0x117d
    push ax                          ; 0x1180
    db 0xe8, 0x25, 0xa6 ; call ds_dispatch_b7a9
    pop cx                           ; 0x1184
    pop cx                           ; 0x1185
    db 0x03, 0xc1 ; add ax, cx
    add ax, strict word 6            ; 0x1188
    push ax                          ; 0x118b
    mov ax, 0x248                    ; 0x118c
    imul word [bp - 0x0006]          ; 0x118f
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1194
    mov byte [bx + 0x5d5c], al       ; 0x1195
    jmp near @..api_idx_0012.l9      ; 0x1199
    mov word [bp - 0x0004], 0        ; 0x119c
    mov ax, 0x248                    ; 0x11a1
    imul word [bp - 0x0006]          ; 0x11a4
    mov cx, word [bp - 0x0004]       ; 0x11a7
    shl cx, 1                        ; 0x11aa
    shl cx, 1                        ; 0x11ac
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c1e]          ; 0x11b2
    mov ax, 0                        ; 0x11b6
    push ax                          ; 0x11b9
    push word [bp - 0x000a]          ; 0x11ba
    push word [bp - 0x000c]          ; 0x11bd
    push word [bp - 0x000a]          ; 0x11c0
    db 0xe8, 0x24, 0xbf ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x11c6
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x11cb
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x11d0
    mov es, dx                       ; 0x11d2
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x11d8
    movsw                            ; 0x11d9
    db 0xe8, 0xe1, 0xbe ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x11dd
    db 0x8b, 0xc8 ; mov cx, ax
    mov ax, 0x248                    ; 0x11e2
    imul word [bp - 0x0006]          ; 0x11e5
    mov dx, word [bp - 0x0004]       ; 0x11e8
    shl dx, 1                        ; 0x11eb
    shl dx, 1                        ; 0x11ed
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c1c]       ; 0x11f3
    db 0x2b, 0xc1 ; sub ax, cx
    push ax                          ; 0x11f9
    db 0xe8, 0xc5, 0xa5 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x11fd
    push ax                          ; 0x1200
    mov ax, 0x248                    ; 0x1201
    imul word [bp - 0x0006]          ; 0x1204
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0004]       ; 0x1209
    shl dx, 1                        ; 0x120c
    shl dx, 1                        ; 0x120e
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1214
    mov word [bx + 0x5c1c], ax       ; 0x1215
    inc word [bp - 0x0004]           ; 0x1219
    mov ax, word [bp - 0x0004]       ; 0x121c
    cmp ax, strict word 6            ; 0x121f
    jge short loc_1227               ; 0x1222
    jmp near loc_11a1                ; 0x1224
    jmp near @..api_idx_0012.l9      ; 0x1227
    mov ax, 0x248                    ; 0x122a
    imul word [bp - 0x0006]          ; 0x122d
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]          ; 0x1232
    mov ax, 0                        ; 0x1236
    push ax                          ; 0x1239
    mov ax, word [bx + 0x5c0c]       ; 0x123a
    sub ax, word [bp - 0x000e]       ; 0x123e
    push ax                          ; 0x1241
    db 0xe8, 0x7d, 0xa5 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x1245
    push ax                          ; 0x1248
    mov ax, 0x248                    ; 0x1249
    imul word [bp - 0x0006]          ; 0x124c
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1251
    mov word [bx + 0x5c0c], ax       ; 0x1252
    cmp ax, strict word 0            ; 0x1256
    jg short loc_127a                ; 0x1259
    mov byte [bx + 0x5e2f], 3        ; 0x125b
    mov word [bx + 0x5c0c], 0        ; 0x1260
    mov word [bx + 0x5c10], 0        ; 0x1266
    mov al, byte [bx + 0x5e2c]       ; 0x126c
    db 0x2a, 0xe4 ; sub ah, ah
    add ax, strict word 8            ; 0x1272
    push ax                          ; 0x1275
    db 0xe8, 0x67, 0xa5 ; call ds_dispatch_b7e0
    pop cx                           ; 0x1279
    jmp near @..api_idx_0012.l9      ; 0x127a
    mov ax, 0x248                    ; 0x127d
    imul word [bp - 0x0006]          ; 0x1280
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5e32]       ; 0x1285
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000a]       ; 0x128b
    jge short loc_1297               ; 0x128e
    mov al, byte [bp - 0x000a]       ; 0x1290
    mov byte [bx + 0x5e32], al       ; 0x1293
    mov al, byte [bx + 0x5d5f]       ; 0x1297
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]       ; 0x129d
    jge short loc_12a9               ; 0x12a0
    mov al, byte [bp - 0x000e]       ; 0x12a2
    mov byte [bx + 0x5d5f], al       ; 0x12a5
    jmp near @..api_idx_0012.l9      ; 0x12a9
    mov ax, 0x248                    ; 0x12ac
    imul word [bp - 0x0006]          ; 0x12af
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5d]       ; 0x12b4
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]       ; 0x12ba
    jge short loc_12c6               ; 0x12bd
    mov al, byte [bp - 0x000e]       ; 0x12bf
    mov byte [bx + 0x5d5d], al       ; 0x12c2
    jmp short @..api_idx_0012.l9     ; 0x12c6
    mov ax, 0x248                    ; 0x12c8
    imul word [bp - 0x0006]          ; 0x12cb
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 2        ; 0x12d0
    jae short loc_12dc               ; 0x12d5
    mov byte [bx + 0x5e2f], 2        ; 0x12d7
    jmp short @..api_idx_0012.l9     ; 0x12dc
    mov ax, 0x248                    ; 0x12de
    imul word [bp - 0x0006]          ; 0x12e1
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d5c]       ; 0x12e6
    db 0x2a, 0xe4 ; sub ah, ah
    cmp ax, word [bp - 0x000e]       ; 0x12ec
    jge short loc_12f8               ; 0x12ef
    mov al, byte [bp - 0x000e]       ; 0x12f1
    mov byte [bx + 0x5d5c], al       ; 0x12f4
    jmp short @..api_idx_0012.l9     ; 0x12f8
    cli                              ; 0x12fa
    pop di                           ; 0x12fb
    sub word [bx + si - 0x0049], sp  ; 0x12fc
    pushaw                           ; 0x12ff
    out 0x60, al                     ; 0x1300
    sti                              ; 0x1302
    pushaw                           ; 0x1303
    or sp, word [bx + di + 0x27]     ; 0x1304
    popaw                            ; 0x1307
    db 0x6a, 0x61 ; push 0x61
    mov ah, byte [bx + di - 0x001d]  ; 0x130a
    popaw                            ; 0x130d
    jno short loc_1372               ; 0x130e
    les sp, word [bp + si - 0x000d]  ; 0x1310
    bound cx, dword [bx]             ; 0x1313
    arpl word [di], sp               ; 0x1315
    db 0x63
@..api_idx_0012.l8:
    cmp ax, strict word 0xf          ; 0x1318
    jae short @..api_idx_0012.l9     ; 0x131b
    xchg bx, ax                      ; 0x131d
    shl bx, 1                        ; 0x131e
    jmp [cs:bx + 0x6341]             ; 0x1320
@..api_idx_0012.l9:
    inc word [bp - 0x0002]           ; 0x1325
    mov ax, word [bp - 0x0002]       ; 0x1328
    cmp ax, strict word 0x10         ; 0x132b
    jge short @..api_idx_0012.l10    ; 0x132e
    jmp near @..api_idx_0012.l4      ; 0x1330
@..api_idx_0012.l10:
    mov ax, 1                        ; 0x1333
    push ax                          ; 0x1336
    push word [bp - 0x0006]          ; 0x1337
    call ds_dispatch_cb3a            ; 0x133a
    add sp, byte 4                   ; 0x133d
    mov ax, word [bp - 0x0010]       ; 0x1340
    add ax, word [bp - 0x0012]       ; 0x1343
    add ax, 0x800                    ; 0x1346
    push ax                          ; 0x1349
    call loc_0eac                    ; 0x134a
    pop cx                           ; 0x134d
    jmp near @..api_idx_0012.l1      ; 0x134e
@..api_idx_0012.l11:
    inc word [data_8d12]             ; 0x1351
    ret                              ; 0x1355
