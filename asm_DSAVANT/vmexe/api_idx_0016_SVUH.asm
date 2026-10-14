; auto-generated
api_idx_0016_SVUH:
    mov ax, 0xffea                   ; 0x0e1a
    call aztec_csav                  ; 0x0e1d
    mov ax, 6                        ; 0x0e20
    imul word [bp + 0x4]             ; 0x0e23
    mov cx, word [bp + 0x6]          ; 0x0e26
    shl cx, 1                        ; 0x0e29
    add ax, cx                       ; 0x0e2b
    mov bx, ax                       ; 0x0e2d
    cmp word [bx - 0x6f36], byte 0   ; 0x0e2f
    jl short @..api_idx_0016_SVUH.l1 ; 0x0e34
    cmp word [bx - 0x6f36], byte 6   ; 0x0e36
    jle short @..api_idx_0016_SVUH.l2 ; 0x0e3b
@..api_idx_0016_SVUH.l1:
    mov word [bx - 0x6f36], 0xffff   ; 0x0e3d
    ret                              ; 0x0e43
@..api_idx_0016_SVUH.l2:
    cmp word [bss_8320], byte 1      ; 0x0e44
    jne short @..api_idx_0016_SVUH.l3 ; 0x0e49
    cmp word [bx - 0x6f36], byte 1   ; 0x0e4b
    jne short @..api_idx_0016_SVUH.l3 ; 0x0e50
    mov word [bss_90dc], 1           ; 0x0e52
@..api_idx_0016_SVUH.l3:
    mov word [bp - 0x0002], 7        ; 0x0e58
    mov word [bp - 0x0004], 0        ; 0x0e5d
    mov ax, 0x64                     ; 0x0e62
    mov cx, word [bp + 0x4]          ; 0x0e65
    shl cx, 1                        ; 0x0e68
    mov bx, cx                       ; 0x0e6a
    mov cx, word [bx + 0x576]        ; 0x0e6c
    sub ax, cx                       ; 0x0e70
    mov word [bp - 0x0006], ax       ; 0x0e72
    mov ax, 6                        ; 0x0e75
    imul word [bp + 0x4]             ; 0x0e78
    mov cx, word [bp + 0x6]          ; 0x0e7b
    shl cx, 1                        ; 0x0e7e
    add ax, cx                       ; 0x0e80
    mov bx, ax                       ; 0x0e82
    mov ax, word [bx - 0x6f36]       ; 0x0e84
    inc ax                           ; 0x0e88
    mov word [bp - 0x0008], ax       ; 0x0e89
    mov al, byte [bp - 0x0008]       ; 0x0e8c
    mov byte [bp - 0x0014], al       ; 0x0e8f
    mov byte [bp - 0x0013], 0        ; 0x0e92
    mov ax, 0x20                     ; 0x0e96
    cmp word [bp + 0x4], byte 0      ; 0x0e99
    je short @..api_idx_0016_SVUH.l4 ; 0x0e9d
    mov ax, 0xc                      ; 0x0e9f
    mov cx, word [bp + 0x4]          ; 0x0ea2
    cmp cx, byte 1                   ; 0x0ea5
    jne short @..api_idx_0016_SVUH.l4 ; 0x0ea8
    mov ax, 0x16                     ; 0x0eaa
@..api_idx_0016_SVUH.l4:
    mov word [bp - 0x0016], ax       ; 0x0ead
    cmp word [bp + 0x6], byte 0      ; 0x0eb0
    jne short @..api_idx_0016_SVUH.l5 ; 0x0eb4
    add word [bp - 0x0016], byte 0xfb ; 0x0eb6
@..api_idx_0016_SVUH.l5:
    lea ax, word [bp - 0x0014]       ; 0x0eba
    push ax                          ; 0x0ebd
    push word [bp - 0x0006]          ; 0x0ebe
    push word [bp - 0x0004]          ; 0x0ec1
    mov ax, 0xf8                     ; 0x0ec4
    push ax                          ; 0x0ec7
    mov ax, 0x48                     ; 0x0ec8
    push ax                          ; 0x0ecb
    mov ax, 0x15e                    ; 0x0ecc
    imul word [bp - 0x0002]          ; 0x0ecf
    push ax                          ; 0x0ed2
    mov ax, 6                        ; 0x0ed3
    imul word [bp + 0x4]             ; 0x0ed6
    mov cx, ax                       ; 0x0ed9
    pop ax                           ; 0x0edb
    add ax, cx                       ; 0x0edc
    mov cx, word [bp + 0x6]          ; 0x0ede
    shl cx, 1                        ; 0x0ee1
    add ax, cx                       ; 0x0ee3
    mov bx, ax                       ; 0x0ee5
    mov al, byte [bx + 0x6b61]       ; 0x0ee7
    cbw                              ; 0x0eeb
    push ax                          ; 0x0eec
    mov ax, 0x15e                    ; 0x0eed
    imul word [bp - 0x0002]          ; 0x0ef0
    add ax, word [bp - 0x0008]       ; 0x0ef3
    mov bx, ax                       ; 0x0ef6
    mov al, byte [bx + 0x6a9b]       ; 0x0ef8
    sub ah, ah                       ; 0x0efc
    mov cx, ax                       ; 0x0efe
    pop ax                           ; 0x0f00
    add ax, cx                       ; 0x0f01
    push ax                          ; 0x0f03
    mov ax, 0x15e                    ; 0x0f04
    imul word [bp - 0x0002]          ; 0x0f07
    push ax                          ; 0x0f0a
    mov ax, 6                        ; 0x0f0b
    imul word [bp + 0x4]             ; 0x0f0e
    mov cx, ax                       ; 0x0f11
    pop ax                           ; 0x0f13
    add ax, cx                       ; 0x0f14
    mov cx, word [bp + 0x6]          ; 0x0f16
    shl cx, 1                        ; 0x0f19
    add ax, cx                       ; 0x0f1b
    mov bx, ax                       ; 0x0f1d
    mov al, byte [bx + 0x6b60]       ; 0x0f1f
    cbw                              ; 0x0f23
    push ax                          ; 0x0f24
    mov ax, 0x15e                    ; 0x0f25
    imul word [bp - 0x0002]          ; 0x0f28
    mov cx, word [bp - 0x0008]       ; 0x0f2b
    shl cx, 1                        ; 0x0f2e
    add ax, cx                       ; 0x0f30
    mov bx, ax                       ; 0x0f32
    mov al, byte [bx + 0x6a52]       ; 0x0f34
    sub ah, ah                       ; 0x0f38
    mov cx, ax                       ; 0x0f3a
    pop ax                           ; 0x0f3c
    add ax, cx                       ; 0x0f3d
    push ax                          ; 0x0f3f
    push word [bp - 0x0002]          ; 0x0f40
    push word [bp - 0x0016]          ; 0x0f43
    call api_idx_0004_HHQR           ; 0x0f46
    add sp, byte 0x12                ; 0x0f49
    cmp word [bss_8320], byte 0      ; 0x0f4c
    jne short @..api_idx_0016_SVUH.l6 ; 0x0f51
    mov ax, 6                        ; 0x0f53
    imul word [bp + 0x4]             ; 0x0f56
    mov cx, word [bp + 0x6]          ; 0x0f59
    shl cx, 1                        ; 0x0f5c
    add ax, cx                       ; 0x0f5e
    mov bx, ax                       ; 0x0f60
    inc word [bx - 0x6f36]           ; 0x0f62
@..api_idx_0016_SVUH.l6:
    ret                              ; 0x0f66
loc_0f67:
    mov ax, 0xfee2                   ; 0x0f67
    call aztec_csav                  ; 0x0f6a
    cmp word [bp + 0x4], byte 0      ; 0x0f6d
    jne short @..loc_0f67.l1         ; 0x0f71
    mov ax, 0x2c                     ; 0x0f73
    imul word [bp + 0x6]             ; 0x0f76
    mov si, ax                       ; 0x0f79
    mov ax, word [bp + 0x4]          ; 0x0f7b
    shl ax, 1                        ; 0x0f7e
    mov bx, ax                       ; 0x0f80
    mov bx, word [bx - 0x7b7e]       ; 0x0f82
    cmp byte [bx + si + 0x1f], 0     ; 0x0f86
    jne short @..loc_0f67.l1         ; 0x0f8a
    ret                              ; 0x0f8c
@..loc_0f67.l1:
    call loc_1a35                    ; 0x0f8d
    mov word [bp - 0x00f8], 7        ; 0x0f90
    mov ax, 6                        ; 0x0f96
    imul word [bp + 0x8]             ; 0x0f99
    mov bx, ax                       ; 0x0f9c
    mov al, byte [bx + 0x889]        ; 0x0f9e
    sub ah, ah                       ; 0x0fa2
    jmp short @..loc_0f67.l5         ; 0x0fa4
@..loc_0f67.l2:
    mov word [bp - 0x0012], 1        ; 0x0fa6
    mov word [bp - 0x00fc], 1        ; 0x0fab
    jmp short @..loc_0f67.l6         ; 0x0fb1
@..loc_0f67.l3:
    mov word [bp - 0x0012], 1        ; 0x0fb3
    mov word [bp - 0x00fc], 1        ; 0x0fb8
    jmp short @..loc_0f67.l6         ; 0x0fbe
@..loc_0f67.l4:
    mov word [bp - 0x0012], 0        ; 0x0fc0
    mov word [bp - 0x00fc], 4        ; 0x0fc5
    jmp short @..loc_0f67.l6         ; 0x0fcb
@..loc_0f67.l5:
    cmp ax, strict word 0            ; 0x0fcd
    je short @..loc_0f67.l2          ; 0x0fd0
    cmp ax, strict word 1            ; 0x0fd2
    je short @..loc_0f67.l3          ; 0x0fd5
    cmp ax, strict word 2            ; 0x0fd7
    je short @..loc_0f67.l4          ; 0x0fda
@..loc_0f67.l6:
    mov ax, 6                        ; 0x0fdc
    cmp word [bp + 0xa], byte 0      ; 0x0fdf
    jle short @..loc_0f67.l7         ; 0x0fe3
    mov ax, 0xc                      ; 0x0fe5
@..loc_0f67.l7:
    mov word [bp - 0x00fe], ax       ; 0x0fe8
    mov ax, 0xc                      ; 0x0fec
    cwd                              ; 0x0fef
    idiv word [bp - 0x00fc]          ; 0x0ff0
    mov word [bp - 0x0100], ax       ; 0x0ff4
    mov ax, 6                        ; 0x0ff8
    imul word [bp + 0x8]             ; 0x0ffb
    mov bx, ax                       ; 0x0ffe
    mov al, byte [bx + 0x888]        ; 0x1000
    sub ah, ah                       ; 0x1004
    mov word [bp - 0x00fa], ax       ; 0x1006
    cmp word [bp + 0x4], byte 0      ; 0x100a
    je short @..loc_0f67.l8          ; 0x100e
    mov ax, word [bp + 0x4]          ; 0x1010
    cmp ax, strict word 6            ; 0x1013
    jne short @..loc_0f67.l11        ; 0x1016
@..loc_0f67.l8:
    mov word [bp - 0x000c], 0        ; 0x1018
    mov word [bp - 0x0006], 0        ; 0x101d
    mov ax, word [bp - 0x00fe]       ; 0x1022
    mov word [bp - 0x0008], ax       ; 0x1026
    mov word [bp - 0x000a], 1        ; 0x1029
    mov word [bp - 0x000e], 0        ; 0x102e
    mov ax, word [bp + 0x6]          ; 0x1033
    mov cx, 2                        ; 0x1036
    cwd                              ; 0x1039
    idiv cx                          ; 0x103a
    mov ax, dx                       ; 0x103c
    test ax, ax                      ; 0x103e
    jne short @..loc_0f67.l9         ; 0x1040
    mov word [bp - 0x0010], 0        ; 0x1042
    mov word [bp - 0x0106], 0        ; 0x1047
    jmp short @..loc_0f67.l10        ; 0x104d
@..loc_0f67.l9:
    mov word [bp - 0x0010], 1        ; 0x104f
    mov word [bp - 0x0106], 1        ; 0x1054
@..loc_0f67.l10:
    jmp near @..loc_0f67.l20         ; 0x105a
@..loc_0f67.l11:
    mov word [bp - 0x000c], 1        ; 0x105d
    mov ax, word [bp - 0x00fe]       ; 0x1062
    dec ax                           ; 0x1066
    mov word [bp - 0x0006], ax       ; 0x1067
    mov word [bp - 0x0008], 0        ; 0x106a
    mov word [bp - 0x000a], 0xffff   ; 0x106f
    mov word [bp - 0x000e], 0xffff   ; 0x1074
    mov al, byte [bx + 0x889]        ; 0x1079
    sub ah, ah                       ; 0x107d
    jmp short @..loc_0f67.l14        ; 0x107f
@..loc_0f67.l12:
    inc word [bp + 0x8]              ; 0x1081
    inc word [bp - 0x00fa]           ; 0x1084
    jmp short @..loc_0f67.l15        ; 0x1088
@..loc_0f67.l13:
    add word [bp - 0x00fa], byte 3   ; 0x108a
    jmp short @..loc_0f67.l15        ; 0x108f
@..loc_0f67.l14:
    cmp ax, strict word 1            ; 0x1091
    je short @..loc_0f67.l12         ; 0x1094
    cmp ax, strict word 2            ; 0x1096
    je short @..loc_0f67.l13         ; 0x1099
@..loc_0f67.l15:
    cmp word [bp + 0xe], byte 0xff   ; 0x109b
    je short @..loc_0f67.l16         ; 0x109f
    mov ax, word [bp + 0xe]          ; 0x10a1
    mov cx, 2                        ; 0x10a4
    cwd                              ; 0x10a7
    idiv cx                          ; 0x10a8
    mov ax, dx                       ; 0x10aa
    test ax, ax                      ; 0x10ac
    jne short @..loc_0f67.l18        ; 0x10ae
@..loc_0f67.l16:
    mov word [bp - 0x0010], 0        ; 0x10b0
    mov ax, 0                        ; 0x10b5
    cmp word [bp - 0x0012], byte 0   ; 0x10b8
    je short @..loc_0f67.l17         ; 0x10bc
    mov ax, 1                        ; 0x10be
@..loc_0f67.l17:
    mov word [bp - 0x0106], ax       ; 0x10c1
    jmp short @..loc_0f67.l20        ; 0x10c5
@..loc_0f67.l18:
    mov word [bp - 0x0010], 1        ; 0x10c7
    mov ax, 1                        ; 0x10cc
    cmp word [bp - 0x0012], byte 0   ; 0x10cf
    je short @..loc_0f67.l19         ; 0x10d3
    mov ax, 0                        ; 0x10d5
@..loc_0f67.l19:
    mov word [bp - 0x0106], ax       ; 0x10d8
@..loc_0f67.l20:
    push word [bss_90de]             ; 0x10dc
    call ds_app_IPOK                 ; 0x10e0
    pop cx                           ; 0x10e3
    mov ax, 6                        ; 0x10e4
    imul word [bp + 0x8]             ; 0x10e7
    mov bx, ax                       ; 0x10ea
    mov ax, word [bx + 0x884]        ; 0x10ec
    mov word [bp - 0x00ec], ax       ; 0x10f0
    mov ax, word [bx + 0x886]        ; 0x10f4
    mov word [bp - 0x00ee], ax       ; 0x10f8
    mov word [bp - 0x00ea], 0        ; 0x10fc
    mov word [bp - 0x00e8], 0        ; 0x1102
    mov word [bp - 0x00e6], 0        ; 0x1108
    mov word [bp - 0x00e4], 0        ; 0x110e
    mov word [bp - 0x00e2], 0        ; 0x1114
    mov word [bp - 0x00e0], 0        ; 0x111a
    mov word [bp - 0x00de], 0        ; 0x1120
    mov word [bp - 0x00dc], 3        ; 0x1126
    mov word [bp - 0x00da], 3        ; 0x112c
    mov word [bp - 0x00d8], 3        ; 0x1132
    mov word [bp - 0x00d6], 3        ; 0x1138
    mov word [bp - 0x00d4], 3        ; 0x113e
    mov word [bp - 0x00d2], 3        ; 0x1144
    mov word [bp - 0x00d0], 2        ; 0x114a
    mov word [bp - 0x00ce], 2        ; 0x1150
    mov word [bp - 0x00cc], 2        ; 0x1156
    mov word [bp - 0x00ca], 2        ; 0x115c
    mov word [bp - 0x00c8], 1        ; 0x1162
    mov word [bp - 0x00c6], 1        ; 0x1168
    mov word [bp - 0x00c4], 3        ; 0x116e
    mov word [bp - 0x00c2], 2        ; 0x1174
    mov word [bp - 0x00c0], 2        ; 0x117a
    mov word [bp - 0x00be], 2        ; 0x1180
    mov word [bp - 0x00bc], 3        ; 0x1186
    mov word [bp - 0x00ba], 2        ; 0x118c
    mov word [bp - 0x00b8], 2        ; 0x1192
    mov word [bp - 0x00b6], 2        ; 0x1198
    mov word [bp - 0x00b4], 4        ; 0x119e
    mov word [bp - 0x00b2], 3        ; 0x11a4
    mov word [bp - 0x00b0], 3        ; 0x11aa
    mov word [bp - 0x00ae], 3        ; 0x11b0
    mov word [bp - 0x00ac], 1        ; 0x11b6
    mov word [bp - 0x00aa], 1        ; 0x11bc
    mov word [bp - 0x00a8], 1        ; 0x11c2
    mov word [bp - 0x00a6], 1        ; 0x11c8
    mov word [bp - 0x00a4], 3        ; 0x11ce
    mov word [bp - 0x00a2], 3        ; 0x11d4
    mov word [bp - 0x00a0], 3        ; 0x11da
    mov word [bp - 0x009e], 3        ; 0x11e0
    mov word [bp - 0x009c], 3        ; 0x11e6
    mov word [bp - 0x009a], 5        ; 0x11ec
    mov word [bp - 0x0098], 3        ; 0x11f2
    mov word [bp - 0x0096], 5        ; 0x11f8
    mov word [bp - 0x0094], 4        ; 0x11fe
    mov word [bp - 0x0092], 3        ; 0x1204
    mov word [bp - 0x0090], 3        ; 0x120a
    mov word [bp - 0x008e], 4        ; 0x1210
    mov word [bp - 0x008c], 4        ; 0x1216
    mov word [bp - 0x008a], 3        ; 0x121c
    mov word [bp - 0x0088], 2        ; 0x1222
    mov word [bp - 0x0086], 6        ; 0x1228
    mov word [bp - 0x0084], 5        ; 0x122e
    mov word [bp - 0x0082], 4        ; 0x1234
    mov word [bp - 0x0080], 3        ; 0x123a
    mov word [bp - 0x007e], 2        ; 0x123f
    mov word [bp - 0x007c], 6        ; 0x1244
    mov word [bp - 0x007a], 5        ; 0x1249
    mov word [bp - 0x0078], 3        ; 0x124e
    mov word [bp - 0x0076], 3        ; 0x1253
    mov word [bp - 0x0042], 0x57     ; 0x1258
    mov word [bp - 0x002a], 0xe8     ; 0x125d
    mov word [bp - 0x0040], 0x62     ; 0x1262
    mov word [bp - 0x0028], 0xdd     ; 0x1267
    mov word [bp - 0x003e], 0x6c     ; 0x126c
    mov word [bp - 0x0026], 0xd3     ; 0x1271
    mov word [bp - 0x003c], 0x75     ; 0x1276
    mov word [bp - 0x0024], 0xca     ; 0x127b
    mov word [bp - 0x003a], 0x7d     ; 0x1280
    mov word [bp - 0x0022], 0xc2     ; 0x1285
    mov word [bp - 0x0038], 0x84     ; 0x128a
    mov word [bp - 0x0020], 0xbb     ; 0x128f
    mov word [bp - 0x0036], 0x8a     ; 0x1294
    mov word [bp - 0x001e], 0xb5     ; 0x1299
    mov word [bp - 0x0034], 0x8f     ; 0x129e
    mov word [bp - 0x001c], 0xb0     ; 0x12a3
    mov word [bp - 0x0032], 0x93     ; 0x12a8
    mov word [bp - 0x001a], 0xac     ; 0x12ad
    mov word [bp - 0x0030], 0x96     ; 0x12b2
    mov word [bp - 0x0018], 0xa9     ; 0x12b7
    mov word [bp - 0x002e], 0x98     ; 0x12bc
    mov word [bp - 0x0016], 0xa7     ; 0x12c1
    mov word [bp - 0x002c], 0x99     ; 0x12c6
    mov word [bp - 0x0014], 0xa6     ; 0x12cb
    mov word [bp - 0x005a], 0x49     ; 0x12d0
    mov word [bp - 0x0058], 0x47     ; 0x12d5
    mov word [bp - 0x0056], 0x46     ; 0x12da
    mov word [bp - 0x0054], 0x45     ; 0x12df
    mov word [bp - 0x0052], 0x44     ; 0x12e4
    mov word [bp - 0x0050], 0x43     ; 0x12e9
    mov word [bp - 0x004e], 0x42     ; 0x12ee
    mov word [bp - 0x004c], 0x42     ; 0x12f3
    mov word [bp - 0x004a], 0x42     ; 0x12f8
    mov word [bp - 0x0048], 0x41     ; 0x12fd
    mov word [bp - 0x0046], 0x41     ; 0x1302
    mov word [bp - 0x0044], 0x41     ; 0x1307
    mov word [bp - 0x0072], 0x64     ; 0x130c
    mov word [bp - 0x0070], 0x5e     ; 0x1311
    mov word [bp - 0x006e], 0x58     ; 0x1316
    mov word [bp - 0x006c], 0x52     ; 0x131b
    mov word [bp - 0x006a], 0x4c     ; 0x1320
    mov word [bp - 0x0068], 0x46     ; 0x1325
    mov word [bp - 0x0066], 0x40     ; 0x132a
    mov word [bp - 0x0064], 0x3a     ; 0x132f
    mov word [bp - 0x0062], 0x34     ; 0x1334
    mov word [bp - 0x0060], 0x2e     ; 0x1339
    mov word [bp - 0x005e], 0x28     ; 0x133e
    mov word [bp - 0x005c], 0x22     ; 0x1343
    mov ax, 0                        ; 0x1348
    cmp word [bp - 0x000c], byte 0   ; 0x134b
    je short @..loc_0f67.l21         ; 0x134f
    mov ax, 3                        ; 0x1351
    cmp byte [bx + 0x889], 2         ; 0x1354
    je short @..loc_0f67.l21         ; 0x1359
    mov ax, 5                        ; 0x135b
    cmp word [bp + 0xa], byte 0      ; 0x135e
    jle short @..loc_0f67.l21        ; 0x1362
    mov ax, 0xb                      ; 0x1364
@..loc_0f67.l21:
    mov word [bp - 0x0104], ax       ; 0x1367
    mov word [bp - 0x0102], ax       ; 0x136b
    mov ax, 0                        ; 0x136f
    push ax                          ; 0x1372
    mov ax, 2                        ; 0x1373
    push ax                          ; 0x1376
    call thunk_9                     ; 0x1377
    add sp, byte 4                   ; 0x137a
    cmp dx, byte 0                   ; 0x137d
    jl short @..loc_0f67.l22         ; 0x1380
    jne short @..loc_0f67.l23        ; 0x1382
    cmp ax, 0x4e20                   ; 0x1384
    ja short @..loc_0f67.l23         ; 0x1387
@..loc_0f67.l22:
    jmp near @..loc_0f67.l31         ; 0x1389
@..loc_0f67.l23:
    mov ax, 0                        ; 0x138c
    push ax                          ; 0x138f
    mov ax, 2                        ; 0x1390
    push ax                          ; 0x1393
    mov ax, 0x8f                     ; 0x1394
    push ax                          ; 0x1397
    mov ax, 0xf7                     ; 0x1398
    push ax                          ; 0x139b
    mov ax, 0x21                     ; 0x139c
    push ax                          ; 0x139f
    mov ax, 0x48                     ; 0x13a0
    push ax                          ; 0x13a3
    call thunk_11                    ; 0x13a4
    add sp, byte 0x0c                ; 0x13a7
    mov word [bp - 0x011a], dx       ; 0x13aa
    mov word [bp - 0x011c], ax       ; 0x13ae
    mov word [bp - 0x0004], 0        ; 0x13b2
    mov ax, word [bp - 0x0006]       ; 0x13b7
    mov word [bp - 0x0002], ax       ; 0x13ba
    jmp near @..loc_0f67.l29         ; 0x13bd
@..loc_0f67.l24:
    les bx, word [dseg_0002]         ; 0x13c0
    mov ax, word [es:bx]             ; 0x13c4
    mov dx, word [es:bx + 0x2]       ; 0x13c7
    mov word [bp - 0x0116], dx       ; 0x13cb
    mov word [bp - 0x0118], ax       ; 0x13cf
    mov ax, word [bp - 0x0002]       ; 0x13d3
    shl ax, 1                        ; 0x13d6
    mov bx, ax                       ; 0x13d8
    add bx, bp                       ; 0x13da
    mov ax, word [bx - 0x0072]       ; 0x13dc
    mov cx, 0x2d                     ; 0x13df
    imul cx                          ; 0x13e2
    mov cx, 0x64                     ; 0x13e4
    cwd                              ; 0x13e7
    idiv cx                          ; 0x13e8
    mov word [bp - 0x0108], ax       ; 0x13ea
    mov ax, word [bx - 0x0072]       ; 0x13ee
    imul word [bp - 0x00ec]          ; 0x13f1
    cwd                              ; 0x13f5
    idiv cx                          ; 0x13f6
    mov word [bp - 0x00f0], ax       ; 0x13f8
    cmp word [bp - 0x0106], byte 0   ; 0x13fc
    je short @..loc_0f67.l25         ; 0x1401
    mov cx, 0                        ; 0x1403
    sub cx, ax                       ; 0x1406
    mov ax, cx                       ; 0x1408
    mov cx, word [bp - 0x00fa]       ; 0x140a
    shl cx, 1                        ; 0x140e
    mov bx, cx                       ; 0x1410
    add bx, bp                       ; 0x1412
    mov cx, word [bx - 0x00ec]       ; 0x1414
    shl cx, 1                        ; 0x1418
    shl cx, 1                        ; 0x141a
    shl cx, 1                        ; 0x141c
    sub ax, cx                       ; 0x141e
    mov word [bp - 0x00f0], ax       ; 0x1420
@..loc_0f67.l25:
    mov ax, word [bp - 0x00ee]       ; 0x1424
    imul word [bp - 0x0066]          ; 0x1428
    mov cx, 0x64                     ; 0x142b
    cwd                              ; 0x142e
    idiv cx                          ; 0x142f
    mov word [bp - 0x00f2], ax       ; 0x1431
    mov al, byte [bp - 0x00fa]       ; 0x1435
    mov byte [bp - 0x0114], al       ; 0x1439
    mov byte [bp - 0x0113], 0        ; 0x143d
    mov ax, 0                        ; 0x1442
    push ax                          ; 0x1445
    push ax                          ; 0x1446
    push word [bp - 0x011a]          ; 0x1447
    push word [bp - 0x011c]          ; 0x144b
    call thunk_12                    ; 0x144f
    add sp, byte 8                   ; 0x1452
    mov ax, 0x18                     ; 0x1455
    imul word [bp - 0x0010]          ; 0x1458
    mov cx, word [bp - 0x0002]       ; 0x145b
    shl cx, 1                        ; 0x145e
    add ax, cx                       ; 0x1460
    mov bx, ax                       ; 0x1462
    add bx, bp                       ; 0x1464
    mov ax, word [bx - 0x0042]       ; 0x1466
    add ax, word [bp - 0x00f0]       ; 0x1469
    mov word [bp - 0x00f4], ax       ; 0x146d
    mov bx, cx                       ; 0x1471
    add bx, bp                       ; 0x1473
    mov ax, word [bx - 0x005a]       ; 0x1475
    add ax, word [bp - 0x00f2]       ; 0x1478
    mov word [bp - 0x00f6], ax       ; 0x147c
    mov ax, word [bp - 0x0102]       ; 0x1480
    shl ax, 1                        ; 0x1484
    mov bx, ax                       ; 0x1486
    add bx, bp                       ; 0x1488
    mov cx, word [bx - 0x0072]       ; 0x148a
    mov ax, 0x64                     ; 0x148d
    sub ax, cx                       ; 0x1490
    push ax                          ; 0x1492
    mov ax, 0                        ; 0x1493
    push ax                          ; 0x1496
    lea ax, word [bp - 0x0114]       ; 0x1497
    push ax                          ; 0x149b
    push word [bp - 0x0106]          ; 0x149c
    mov ax, 0x8e                     ; 0x14a0
    push ax                          ; 0x14a3
    mov ax, 0x21                     ; 0x14a4
    push ax                          ; 0x14a7
    mov ax, 0xf8                     ; 0x14a8
    push ax                          ; 0x14ab
    mov ax, 0x48                     ; 0x14ac
    push ax                          ; 0x14af
    push word [bp - 0x00f6]          ; 0x14b0
    push word [bp - 0x00f4]          ; 0x14b4
    push word [bp - 0x00f8]          ; 0x14b8
    call thunk_28                    ; 0x14bc
    add sp, byte 0x16                ; 0x14bf
    mov ax, 0x90                     ; 0x14c2
    push ax                          ; 0x14c5
    mov ax, 0xf8                     ; 0x14c6
    push ax                          ; 0x14c9
    mov ax, 0x21                     ; 0x14ca
    push ax                          ; 0x14cd
    mov ax, 0x48                     ; 0x14ce
    push ax                          ; 0x14d1
    call thunk_4                     ; 0x14d2
    add sp, byte 8                   ; 0x14d5
    mov ax, word [bp - 0x000a]       ; 0x14d8
    add word [bp - 0x0102], ax       ; 0x14db
    mov ax, word [bp - 0x0004]       ; 0x14df
    inc ax                           ; 0x14e2
    cwd                              ; 0x14e3
    idiv word [bp - 0x0100]          ; 0x14e4
    mov ax, dx                       ; 0x14e8
    test ax, ax                      ; 0x14ea
    jne short @..loc_0f67.l26        ; 0x14ec
    mov ax, word [bp - 0x000a]       ; 0x14ee
    add word [bp - 0x00fa], ax       ; 0x14f1
    mov ax, word [bp - 0x0104]       ; 0x14f5
    mov word [bp - 0x0102], ax       ; 0x14f9
@..loc_0f67.l26:
    les bx, word [dseg_0002]         ; 0x14fd
    mov ax, word [es:bx]             ; 0x1501
    mov dx, word [es:bx + 0x2]       ; 0x1504
    cmp dx, word [bp - 0x0116]       ; 0x1508
    jne short @..loc_0f67.l27        ; 0x150c
    cmp ax, word [bp - 0x0118]       ; 0x150e
@..loc_0f67.l27:
    jne short @..loc_0f67.l28        ; 0x1512
    jmp short @..loc_0f67.l26        ; 0x1514
@..loc_0f67.l28:
    mov ax, word [bp - 0x000a]       ; 0x1516
    add word [bp - 0x0002], ax       ; 0x1519
    inc word [bp - 0x0004]           ; 0x151c
@..loc_0f67.l29:
    mov ax, word [bp - 0x0004]       ; 0x151f
    cmp ax, word [bp - 0x00fe]       ; 0x1522
    jge short @..loc_0f67.l30        ; 0x1526
    jmp near @..loc_0f67.l24         ; 0x1528
@..loc_0f67.l30:
    mov ax, 0                        ; 0x152b
    push ax                          ; 0x152e
    mov ax, 1                        ; 0x152f
    push ax                          ; 0x1532
    push word [bp - 0x011a]          ; 0x1533
    push word [bp - 0x011c]          ; 0x1537
    call thunk_12                    ; 0x153b
    add sp, byte 8                   ; 0x153e
@..loc_0f67.l31:
    mov ax, 1                        ; 0x1541
    push ax                          ; 0x1544
    call thunk_17                    ; 0x1545
    pop cx                           ; 0x1548
    cmp word [bp + 0x10], byte 0     ; 0x1549
    je short @..loc_0f67.l34         ; 0x154d
    cmp word [bp - 0x000e], byte 0xff ; 0x154f
    jne short @..loc_0f67.l32        ; 0x1553
    mov word [bss_90dc], 2           ; 0x1555
    mov ax, 0x8f                     ; 0x155b
    push ax                          ; 0x155e
    mov ax, 0xf7                     ; 0x155f
    push ax                          ; 0x1562
    mov ax, 0x20                     ; 0x1563
    push ax                          ; 0x1566
    mov ax, 0x48                     ; 0x1567
    push ax                          ; 0x156a
    call thunk_4                     ; 0x156b
    add sp, byte 8                   ; 0x156e
    jmp short @..loc_0f67.l33        ; 0x1571
@..loc_0f67.l32:
    mov ax, word [bp - 0x000e]       ; 0x1573
    push ax                          ; 0x1576
    mov ax, 6                        ; 0x1577
    imul word [bp + 0xa]             ; 0x157a
    mov bx, ax                       ; 0x157d
    pop ax                           ; 0x157f
    mov word [bx - 0x6f36], ax       ; 0x1580
    mov word [bss_8320], 0           ; 0x1584
    mov ax, 4                        ; 0x158a
    push ax                          ; 0x158d
    call api_idx_0004_LIRS           ; 0x158e
    pop cx                           ; 0x1591
@..loc_0f67.l33:
    jmp short @..loc_0f67.l35        ; 0x1592
@..loc_0f67.l34:
    mov ax, 0x8f                     ; 0x1594
    push ax                          ; 0x1597
    mov ax, 0xf7                     ; 0x1598
    push ax                          ; 0x159b
    mov ax, 0x20                     ; 0x159c
    push ax                          ; 0x159f
    mov ax, 0x48                     ; 0x15a0
    push ax                          ; 0x15a3
    call thunk_4                     ; 0x15a4
    add sp, byte 8                   ; 0x15a7
@..loc_0f67.l35:
    ret                              ; 0x15aa
loc_15ab:
    mov ax, 0                        ; 0x15ab
    call aztec_csav                  ; 0x15ae
    cmp word [bp + 0x6], byte 0      ; 0x15b1
    jne short @..loc_15ab.l1         ; 0x15b5
    mov ax, 0x248                    ; 0x15b7
    imul word [bp + 0x8]             ; 0x15ba
    add ax, 0x5bf4                   ; 0x15bd
    push ax                          ; 0x15c0
    push word [bp + 0x4]             ; 0x15c1
    call aztec_strcpy                ; 0x15c4
    add sp, byte 4                   ; 0x15c7
    jmp short @..loc_15ab.l2         ; 0x15ca
@..loc_15ab.l1:
    mov ax, word [bp + 0x6]          ; 0x15cc
    shl ax, 1                        ; 0x15cf
    mov bx, ax                       ; 0x15d1
    mov ax, word [bx - 0x7b70]       ; 0x15d3
    push ax                          ; 0x15d7
    mov bx, word [bx - 0x7b7e]       ; 0x15d8
    mov al, byte [bx + 0x1a0]        ; 0x15dc
    sub ah, ah                       ; 0x15e0
    mov dx, ax                       ; 0x15e2
    mov cx, 5                        ; 0x15e4
    shl ax, cl                       ; 0x15e7
    mov cx, ax                       ; 0x15e9
    pop ax                           ; 0x15eb
    add ax, cx                       ; 0x15ec
    push ax                          ; 0x15ee
    push word [bp + 0x4]             ; 0x15ef
    call aztec_strcpy                ; 0x15f2
    add sp, byte 4                   ; 0x15f5
@..loc_15ab.l2:
    ret                              ; 0x15f8
loc_15f9:
    mov ax, 0                        ; 0x15f9
    call aztec_csav                  ; 0x15fc
    mov ax, 7                        ; 0x15ff
    imul word [bp + 0x6]             ; 0x1602
    add ax, 0x9c                     ; 0x1605
    push ax                          ; 0x1608
    push word [bp + 0x4]             ; 0x1609
    call thunk                       ; 0x160c
    add sp, byte 4                   ; 0x160f
    ret                              ; 0x1612
loc_1613:
    mov ax, 0                        ; 0x1613
    call aztec_csav                  ; 0x1616
    mov ax, 0                        ; 0x1619
    push ax                          ; 0x161c
    push word [bp + 0x6]             ; 0x161d
    call thunk_3                     ; 0x1620
    add sp, byte 4                   ; 0x1623
    mov ax, 0                        ; 0x1626
    push ax                          ; 0x1629
    push word [bp + 0x4]             ; 0x162a
    call ds_string_loc_PTIK          ; 0x162d
    add sp, byte 4                   ; 0x1630
    mov ax, 0                        ; 0x1633
    push ax                          ; 0x1636
    mov ax, 0x20                     ; 0x1637
    push ax                          ; 0x163a
    call ds_loc_3a77                 ; 0x163b
    add sp, byte 4                   ; 0x163e
    ret                              ; 0x1641
