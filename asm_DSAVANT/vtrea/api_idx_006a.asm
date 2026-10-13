api_idx_006a:
    mov ax, 0xff96                   ; 0x5fef
    call aztec_csav                  ; 0x5ff2
    mov word [bss_911c], 0x8d        ; 0x5ff5
    mov word [bss_904e], 0xffff      ; 0x5ffb
    mov word [bp - 0x0006], 0x37     ; 0x6001
    mov word [bp - 0x0008], 0x8f     ; 0x6006
    mov word [bp - 0x000a], 0x108    ; 0x600b
    mov word [bp - 0x000c], 0xc5     ; 0x6010
    mov ax, 0x90e3                   ; 0x6015
    push ax                          ; 0x6018
    mov ax, word [bp - 0x000c]       ; 0x6019
    inc ax                           ; 0x601c
    push ax                          ; 0x601d
    mov ax, word [bp - 0x000a]       ; 0x601e
    inc ax                           ; 0x6021
    push ax                          ; 0x6022
    mov ax, word [bp - 0x0008]       ; 0x6023
    dec ax                           ; 0x6026
    push ax                          ; 0x6027
    mov ax, word [bp - 0x0006]       ; 0x6028
    dec ax                           ; 0x602b
    push ax                          ; 0x602c
    call ds_app_file_14ca            ; 0x602d
    add sp, byte 0x0a                ; 0x6030
    mov word [bp - 0x0018], ax       ; 0x6033
    push word [bp - 0x000c]          ; 0x6036
    push word [bp - 0x000a]          ; 0x6039
    push word [bp - 0x0008]          ; 0x603c
    push word [bp - 0x0006]          ; 0x603f
    call ds_app_0ee1                 ; 0x6042
    add sp, byte 8                   ; 0x6045
    lea ax, word [bp - 0x006a]       ; 0x6048
    push ax                          ; 0x604b
    push word [bp + 0x6]             ; 0x604c
    call ds_app_mem_0782             ; 0x604f
    add sp, byte 4                   ; 0x6052
    mov ax, 0xc2                     ; 0x6055
    push ax                          ; 0x6058
    mov ax, 0x1c                     ; 0x6059
    push ax                          ; 0x605c
    call ds_loc_3a6a                 ; 0x605d
    add sp, byte 4                   ; 0x6060
    mov ax, word [bp - 0x0008]       ; 0x6063
    add ax, strict word 9            ; 0x6066
    push ax                          ; 0x6069
    lea ax, word [bp - 0x006a]       ; 0x606a
    push ax                          ; 0x606d
    call aztec_strlen                ; 0x606e
    pop cx                           ; 0x6071
    mov cx, ax                       ; 0x6072
    mov ax, 0xc                      ; 0x6074
    sub ax, cx                       ; 0x6077
    mov cx, 6                        ; 0x6079
    imul cx                          ; 0x607c
    mov cx, 2                        ; 0x607e
    cwd                              ; 0x6081
    idiv cx                          ; 0x6082
    add ax, word [bp - 0x0006]       ; 0x6084
    add ax, strict word 9            ; 0x6087
    push ax                          ; 0x608a
    call ds_loc_3a50                 ; 0x608b
    add sp, byte 4                   ; 0x608e
    mov ax, 0                        ; 0x6091
    push ax                          ; 0x6094
    lea ax, word [bp - 0x006a]       ; 0x6095
    push ax                          ; 0x6098
    call ds_string_loc_3a95          ; 0x6099
    add sp, byte 4                   ; 0x609c
    mov ax, 0xc2                     ; 0x609f
    push ax                          ; 0x60a2
    mov ax, 1                        ; 0x60a3
    push ax                          ; 0x60a6
    call ds_loc_3a6a                 ; 0x60a7
    add sp, byte 4                   ; 0x60aa
    mov ax, word [bp - 0x0008]       ; 0x60ad
    add ax, strict word 0x15         ; 0x60b0
    push ax                          ; 0x60b3
    mov ax, 0x248                    ; 0x60b4
    imul word [bp + 0x4]             ; 0x60b7
    add ax, 0x5bf4                   ; 0x60ba
    push ax                          ; 0x60bd
    call aztec_strlen                ; 0x60be
    pop cx                           ; 0x60c1
    mov cx, 6                        ; 0x60c2
    imul cx                          ; 0x60c5
    mov cx, 2                        ; 0x60c7
    cwd                              ; 0x60ca
    idiv cx                          ; 0x60cb
    mov cx, ax                       ; 0x60cd
    mov ax, word [bp - 0x0006]       ; 0x60cf
    add ax, strict word 0x2d         ; 0x60d2
    sub ax, cx                       ; 0x60d5
    push ax                          ; 0x60d7
    call ds_loc_3a50                 ; 0x60d8
    add sp, byte 4                   ; 0x60db
    mov ax, 0                        ; 0x60de
    push ax                          ; 0x60e1
    mov ax, 0x248                    ; 0x60e2
    imul word [bp + 0x4]             ; 0x60e5
    add ax, 0x5bf4                   ; 0x60e8
    push ax                          ; 0x60eb
    call ds_string_loc_3a95          ; 0x60ec
    add sp, byte 4                   ; 0x60ef
    mov ax, 0x90e9                   ; 0x60f2
    push ax                          ; 0x60f5
    lea ax, word [bp - 0x006a]       ; 0x60f6
    push ax                          ; 0x60f9
    call aztec_strcpy                ; 0x60fa
    add sp, byte 4                   ; 0x60fd
    lea ax, word [bp - 0x0069]       ; 0x6100
    push ax                          ; 0x6103
    mov ax, 0x248                    ; 0x6104
    imul word [bp + 0x4]             ; 0x6107
    mov bx, ax                       ; 0x610a
    mov al, byte [bx + 0x5d7c]       ; 0x610c
    sub ah, ah                       ; 0x6110
    push ax                          ; 0x6112
    call ds_app_04c4                 ; 0x6113
    add sp, byte 4                   ; 0x6116
    mov ax, 0x90eb                   ; 0x6119
    push ax                          ; 0x611c
    lea ax, word [bp - 0x006a]       ; 0x611d
    push ax                          ; 0x6120
    call ds_string_loc_4574          ; 0x6121
    add sp, byte 4                   ; 0x6124
    mov ax, word [bp - 0x0008]       ; 0x6127
    add ax, strict word 0x1b         ; 0x612a
    push ax                          ; 0x612d
    lea ax, word [bp - 0x006a]       ; 0x612e
    push ax                          ; 0x6131
    call aztec_strlen                ; 0x6132
    pop cx                           ; 0x6135
    mov cx, 6                        ; 0x6136
    imul cx                          ; 0x6139
    mov cx, 2                        ; 0x613b
    cwd                              ; 0x613e
    idiv cx                          ; 0x613f
    mov cx, ax                       ; 0x6141
    mov ax, word [bp - 0x0006]       ; 0x6143
    add ax, strict word 0x2d         ; 0x6146
    sub ax, cx                       ; 0x6149
    push ax                          ; 0x614b
    call ds_loc_3a50                 ; 0x614c
    add sp, byte 4                   ; 0x614f
    mov ax, 0                        ; 0x6152
    push ax                          ; 0x6155
    lea ax, word [bp - 0x006a]       ; 0x6156
    push ax                          ; 0x6159
    call ds_string_loc_3a95          ; 0x615a
    add sp, byte 4                   ; 0x615d
    lea ax, word [bp - 0x006a]       ; 0x6160
    push ax                          ; 0x6163
    mov ax, word [bp + 0x6]          ; 0x6164
    inc ax                           ; 0x6167
    push ax                          ; 0x6168
    call ds_app_mem_0782             ; 0x6169
    add sp, byte 4                   ; 0x616c
    lea ax, word [bp - 0x006a]       ; 0x616f
    push ax                          ; 0x6172
    push word [bp + 0x8]             ; 0x6173
    mov ax, 1                        ; 0x6176
    push ax                          ; 0x6179
    mov ax, 0xc                      ; 0x617a
    push ax                          ; 0x617d
    mov ax, word [bp - 0x0008]       ; 0x617e
    add ax, strict word 0x26         ; 0x6181
    push ax                          ; 0x6184
    mov ax, word [bp - 0x0006]       ; 0x6185
    add ax, strict word 8            ; 0x6188
    push ax                          ; 0x618b
    call ds_app_string_1308          ; 0x618c
    add sp, byte 0x0c                ; 0x618f
    mov word [bp - 0x0002], 0        ; 0x6192
@..api_idx_006a.l1:
    mov ax, word [bp - 0x0008]       ; 0x6197
    add ax, strict word 0xe          ; 0x619a
    push ax                          ; 0x619d
    mov ax, 0x14                     ; 0x619e
    imul word [bp - 0x0002]          ; 0x61a1
    add ax, word [bp - 0x0006]       ; 0x61a4
    add ax, strict word 0x67         ; 0x61a7
    push ax                          ; 0x61aa
    mov ax, word [bp - 0x0008]       ; 0x61ab
    add ax, strict word 8            ; 0x61ae
    push ax                          ; 0x61b1
    mov ax, 0x14                     ; 0x61b2
    imul word [bp - 0x0002]          ; 0x61b5
    add ax, word [bp - 0x0006]       ; 0x61b8
    add ax, strict word 0x59         ; 0x61bb
    push ax                          ; 0x61be
    call ds_app_0fdf                 ; 0x61bf
    add sp, byte 8                   ; 0x61c2
    mov ax, word [bp - 0x0008]       ; 0x61c5
    add ax, strict word 0x1d         ; 0x61c8
    push ax                          ; 0x61cb
    mov ax, 0x14                     ; 0x61cc
    imul word [bp - 0x0002]          ; 0x61cf
    add ax, word [bp - 0x0006]       ; 0x61d2
    add ax, strict word 0x62         ; 0x61d5
    push ax                          ; 0x61d8
    mov ax, word [bp - 0x0008]       ; 0x61d9
    add ax, strict word 0x17         ; 0x61dc
    push ax                          ; 0x61df
    mov ax, 0x14                     ; 0x61e0
    imul word [bp - 0x0002]          ; 0x61e3
    add ax, word [bp - 0x0006]       ; 0x61e6
    add ax, strict word 0x5e         ; 0x61e9
    push ax                          ; 0x61ec
    call ds_app_0fdf                 ; 0x61ed
    add sp, byte 8                   ; 0x61f0
    mov ax, 0                        ; 0x61f3
    push ax                          ; 0x61f6
    mov ax, word [bp - 0x0008]       ; 0x61f7
    add ax, strict word 0x2e         ; 0x61fa
    push ax                          ; 0x61fd
    mov ax, 0x14                     ; 0x61fe
    imul word [bp - 0x0002]          ; 0x6201
    add ax, word [bp - 0x0006]       ; 0x6204
    add ax, strict word 0x67         ; 0x6207
    push ax                          ; 0x620a
    mov ax, word [bp - 0x0008]       ; 0x620b
    add ax, strict word 0x26         ; 0x620e
    push ax                          ; 0x6211
    mov ax, 0x14                     ; 0x6212
    imul word [bp - 0x0002]          ; 0x6215
    add ax, word [bp - 0x0006]       ; 0x6218
    add ax, strict word 0x59         ; 0x621b
    push ax                          ; 0x621e
    call loc_242c                    ; 0x621f
    add sp, byte 0x0a                ; 0x6222
    inc word [bp - 0x0002]           ; 0x6225
    mov ax, word [bp - 0x0002]       ; 0x6228
    cmp ax, strict word 6            ; 0x622b
    jge short @..api_idx_006a.l2     ; 0x622e
    jmp near @..api_idx_006a.l1      ; 0x6230
@..api_idx_006a.l2:
    mov ax, 0                        ; 0x6233
    push ax                          ; 0x6236
    mov ax, 0x1b                     ; 0x6237
    push ax                          ; 0x623a
    mov ax, word [bp - 0x0008]       ; 0x623b
    add ax, strict word 0x2e         ; 0x623e
    push ax                          ; 0x6241
    mov ax, word [bp - 0x0006]       ; 0x6242
    add ax, strict word 0x50         ; 0x6245
    push ax                          ; 0x6248
    mov ax, word [bp - 0x0008]       ; 0x6249
    add ax, strict word 0x26         ; 0x624c
    push ax                          ; 0x624f
    mov ax, word [bp - 0x0006]       ; 0x6250
    add ax, strict word 8            ; 0x6253
    push ax                          ; 0x6256
    mov ax, 0                        ; 0x6257
    push ax                          ; 0x625a
    call ds_app_0ced                 ; 0x625b
    add sp, byte 0x0e                ; 0x625e
    mov word [bp - 0x0002], 0        ; 0x6261
    jmp short @..api_idx_006a.l4     ; 0x6266
@..api_idx_006a.l3:
    mov ax, 0                        ; 0x6268
    push ax                          ; 0x626b
    mov ax, word [bp - 0x0002]       ; 0x626c
    add ax, strict word 0x31         ; 0x626f
    cbw                              ; 0x6272
    push ax                          ; 0x6273
    mov ax, word [bp - 0x0008]       ; 0x6274
    add ax, strict word 0x2e         ; 0x6277
    push ax                          ; 0x627a
    mov ax, 0x14                     ; 0x627b
    imul word [bp - 0x0002]          ; 0x627e
    add ax, word [bp - 0x0006]       ; 0x6281
    add ax, strict word 0x67         ; 0x6284
    push ax                          ; 0x6287
    mov ax, word [bp - 0x0008]       ; 0x6288
    add ax, strict word 0x26         ; 0x628b
    push ax                          ; 0x628e
    mov ax, 0x14                     ; 0x628f
    imul word [bp - 0x0002]          ; 0x6292
    add ax, word [bp - 0x0006]       ; 0x6295
    add ax, strict word 0x59         ; 0x6298
    push ax                          ; 0x629b
    mov ax, word [bp - 0x0002]       ; 0x629c
    inc ax                           ; 0x629f
    push ax                          ; 0x62a0
    call ds_app_0ced                 ; 0x62a1
    add sp, byte 0x0e                ; 0x62a4
    inc word [bp - 0x0002]           ; 0x62a7
@..api_idx_006a.l4:
    mov ax, word [bp - 0x0002]       ; 0x62aa
    cmp ax, word [bp + 0xa]          ; 0x62ad
    jl short @..api_idx_006a.l3      ; 0x62b0
    mov ax, 0                        ; 0x62b2
    push ax                          ; 0x62b5
    push ax                          ; 0x62b6
    push ax                          ; 0x62b7
    push ax                          ; 0x62b8
    push ax                          ; 0x62b9
    mov ax, 0xffff                   ; 0x62ba
    push ax                          ; 0x62bd
    mov ax, word [bp + 0xa]          ; 0x62be
    inc ax                           ; 0x62c1
    push ax                          ; 0x62c2
    call ds_app_0ced                 ; 0x62c3
    add sp, byte 0x0e                ; 0x62c6
    mov ax, word [bp - 0x000c]       ; 0x62c9
    inc ax                           ; 0x62cc
    push ax                          ; 0x62cd
    mov ax, word [bp - 0x000a]       ; 0x62ce
    inc ax                           ; 0x62d1
    push ax                          ; 0x62d2
    mov ax, word [bp - 0x0008]       ; 0x62d3
    dec ax                           ; 0x62d6
    push ax                          ; 0x62d7
    mov ax, word [bp - 0x0006]       ; 0x62d8
    dec ax                           ; 0x62db
    push ax                          ; 0x62dc
    call ds_loc_3b21                 ; 0x62dd
    add sp, byte 8                   ; 0x62e0
    mov word [bp - 0x0016], 1        ; 0x62e3
    mov word [bp - 0x001c], 0        ; 0x62e8
    mov ax, 0x248                    ; 0x62ed
    imul word [bp + 0x4]             ; 0x62f0
    mov bx, ax                       ; 0x62f3
    mov al, byte [bx + 0x5d7c]       ; 0x62f5
    sub ah, ah                       ; 0x62f9
    push ax                          ; 0x62fb
    mov ax, 3                        ; 0x62fc
    imul word [bp + 0xe]             ; 0x62ff
    mov cx, ax                       ; 0x6302
    pop ax                           ; 0x6304
    sub ax, cx                       ; 0x6305
    mov cx, word [bx + 0x5c18]       ; 0x6307
    add ax, cx                       ; 0x630b
    mov word [bp - 0x001a], ax       ; 0x630d
    cmp byte [bx + 0x5e2d], 3        ; 0x6310
    jne short @..api_idx_006a.l5     ; 0x6315
    mov al, byte [bx + 0x5d68]       ; 0x6317
    sub ah, ah                       ; 0x631b
    add word [bp - 0x001a], ax       ; 0x631d
    mov word [bp - 0x001c], 2        ; 0x6320
    jmp short @..api_idx_006a.l7     ; 0x6325
@..api_idx_006a.l5:
    mov al, byte [bx + 0x5e2d]       ; 0x6327
    cmp al, 0xd                      ; 0x632b
    je short @..api_idx_006a.l6      ; 0x632d
    cmp al, 4                        ; 0x632f
    je short @..api_idx_006a.l6      ; 0x6331
    cmp al, 6                        ; 0x6333
    jne short @..api_idx_006a.l7     ; 0x6335
@..api_idx_006a.l6:
    mov al, byte [bx + 0x5d68]       ; 0x6337
    sub ah, ah                       ; 0x633b
    mov cx, 2                        ; 0x633d
    cwd                              ; 0x6340
    idiv cx                          ; 0x6341
    add word [bp - 0x001a], ax       ; 0x6343
    mov word [bp - 0x001c], 1        ; 0x6346
@..api_idx_006a.l7:
    mov ax, 0x5f                     ; 0x634b
    push ax                          ; 0x634e
    mov ax, 2                        ; 0x634f
    push ax                          ; 0x6352
    push word [bp - 0x001a]          ; 0x6353
    call ds_app_0a09                 ; 0x6356
    add sp, byte 6                   ; 0x6359
    mov word [bp - 0x001a], ax       ; 0x635c
    mov ax, word [bp + 0xa]          ; 0x635f
    mov word [bp - 0x001e], ax       ; 0x6362
    mov ax, 0                        ; 0x6365
    push ax                          ; 0x6368
    mov ax, 0xc                      ; 0x6369
    push ax                          ; 0x636c
    lea ax, word [bp - 0x002a]       ; 0x636d
    push ax                          ; 0x6370
    call aztec_setmem                ; 0x6371
    add sp, byte 6                   ; 0x6374
@..api_idx_006a.l8:
    mov word [bp - 0x0002], 0        ; 0x6377
    jmp near @..api_idx_006a.l19     ; 0x637c
@..api_idx_006a.l9:
    mov ax, word [bp - 0x0002]       ; 0x637f
    shl ax, 1                        ; 0x6382
    mov bx, ax                       ; 0x6384
    add bx, bp                       ; 0x6386
    cmp word [bx - 0x002a], byte 0   ; 0x6388
    je short @..api_idx_006a.l10     ; 0x638c
    jmp near @..api_idx_006a.l18     ; 0x638e
@..api_idx_006a.l10:
    push word [bp - 0x001a]          ; 0x6391
    call ds_app_09f0                 ; 0x6394
    pop cx                           ; 0x6397
    mov word [bp - 0x0014], ax       ; 0x6398
    mov ax, 1                        ; 0x639b
    push ax                          ; 0x639e
    call ds_loc_42dd                 ; 0x639f
    pop cx                           ; 0x63a2
    mov ax, 0xc3                     ; 0x63a3
    push ax                          ; 0x63a6
    mov ax, 0xb4                     ; 0x63a7
    push ax                          ; 0x63aa
    call ds_loc_3a6a                 ; 0x63ab
    add sp, byte 4                   ; 0x63ae
    mov ax, word [bp - 0x0008]       ; 0x63b1
    add ax, strict word 9            ; 0x63b4
    push ax                          ; 0x63b7
    mov ax, 0x14                     ; 0x63b8
    imul word [bp - 0x0002]          ; 0x63bb
    add ax, word [bp - 0x0006]       ; 0x63be
    add ax, strict word 0x5b         ; 0x63c1
    push ax                          ; 0x63c4
    call ds_loc_3a50                 ; 0x63c5
    add sp, byte 4                   ; 0x63c8
    mov ax, 0                        ; 0x63cb
    push ax                          ; 0x63ce
    mov ax, 2                        ; 0x63cf
    push ax                          ; 0x63d2
    push word [bp - 0x0014]          ; 0x63d3
    call ds_app_052e                 ; 0x63d6
    add sp, byte 6                   ; 0x63d9
    mov ax, 0                        ; 0x63dc
    push ax                          ; 0x63df
    call ds_loc_42dd                 ; 0x63e0
    pop cx                           ; 0x63e3
    mov ax, word [bp - 0x001a]       ; 0x63e4
    mov cx, word [bp - 0x0002]       ; 0x63e7
    shl cx, 1                        ; 0x63ea
    mov bx, cx                       ; 0x63ec
    mov cx, word [bx - 0x69a2]       ; 0x63ee
    sub ax, cx                       ; 0x63f2
    mov cx, 3                        ; 0x63f4
    cwd                              ; 0x63f7
    idiv cx                          ; 0x63f8
    mov cx, ax                       ; 0x63fa
    mov ax, word [bx - 0x69a2]       ; 0x63fc
    sub ax, cx                       ; 0x6400
    cmp ax, word [bp - 0x0014]       ; 0x6402
    jge short @..api_idx_006a.l11    ; 0x6405
    mov ax, 1                        ; 0x6407
    jmp short @..api_idx_006a.l12    ; 0x640a
@..api_idx_006a.l11:
    mov ax, 0                        ; 0x640c
@..api_idx_006a.l12:
    add bx, bp                       ; 0x640f
    mov word [bx - 0x0036], ax       ; 0x6411
    mov ax, word [bp - 0x0002]       ; 0x6414
    shl ax, 1                        ; 0x6417
    mov bx, ax                       ; 0x6419
    mov ax, word [bx - 0x69a2]       ; 0x641b
    cmp ax, word [bp - 0x0014]       ; 0x641f
    jge short @..api_idx_006a.l13    ; 0x6422
    mov ax, 1                        ; 0x6424
    jmp short @..api_idx_006a.l14    ; 0x6427
@..api_idx_006a.l13:
    mov ax, 0                        ; 0x6429
@..api_idx_006a.l14:
    add bx, bp                       ; 0x642c
    mov word [bx - 0x0042], ax       ; 0x642e
    mov ax, word [bp - 0x0002]       ; 0x6431
    shl ax, 1                        ; 0x6434
    mov bx, ax                       ; 0x6436
    add bx, bp                       ; 0x6438
    cmp word [bx - 0x0036], byte 0   ; 0x643a
    jne short @..api_idx_006a.l15    ; 0x643e
    mov ax, 0x1a                     ; 0x6440
    jmp short @..api_idx_006a.l17    ; 0x6443
@..api_idx_006a.l15:
    mov ax, word [bp - 0x0002]       ; 0x6445
    shl ax, 1                        ; 0x6448
    mov bx, ax                       ; 0x644a
    add bx, bp                       ; 0x644c
    cmp word [bx - 0x0042], byte 0   ; 0x644e
    je short @..api_idx_006a.l16     ; 0x6452
    mov ax, 0x37                     ; 0x6454
    jmp short @..api_idx_006a.l17    ; 0x6457
@..api_idx_006a.l16:
    mov ax, 0x56                     ; 0x6459
@..api_idx_006a.l17:
    push ax                          ; 0x645c
    mov ax, word [bp - 0x0008]       ; 0x645d
    add ax, strict word 0x1d         ; 0x6460
    push ax                          ; 0x6463
    mov ax, 0x14                     ; 0x6464
    imul word [bp - 0x0002]          ; 0x6467
    add ax, word [bp - 0x0006]       ; 0x646a
    add ax, strict word 0x62         ; 0x646d
    push ax                          ; 0x6470
    mov ax, word [bp - 0x0008]       ; 0x6471
    add ax, strict word 0x17         ; 0x6474
    push ax                          ; 0x6477
    mov ax, 0x14                     ; 0x6478
    imul word [bp - 0x0002]          ; 0x647b
    add ax, word [bp - 0x0006]       ; 0x647e
    add ax, strict word 0x5e         ; 0x6481
    push ax                          ; 0x6484
    call ds_loc_3b48                 ; 0x6485
    add sp, byte 0x0a                ; 0x6488
@..api_idx_006a.l18:
    inc word [bp - 0x0002]           ; 0x648b
@..api_idx_006a.l19:
    mov ax, word [bp - 0x0002]       ; 0x648e
    cmp ax, word [bp + 0xa]          ; 0x6491
    jge short @..api_idx_006a.l20    ; 0x6494
    jmp near @..api_idx_006a.l9      ; 0x6496
@..api_idx_006a.l20:
    mov ax, word [bp - 0x0008]       ; 0x6499
    add ax, strict word 0x1f         ; 0x649c
    push ax                          ; 0x649f
    mov ax, word [bp - 0x0006]       ; 0x64a0
    add ax, 0xd1                     ; 0x64a3
    push ax                          ; 0x64a6
    mov ax, word [bp - 0x0008]       ; 0x64a7
    add ax, strict word 8            ; 0x64aa
    push ax                          ; 0x64ad
    mov ax, word [bp - 0x0006]       ; 0x64ae
    add ax, strict word 0x59         ; 0x64b1
    push ax                          ; 0x64b4
    call ds_loc_3b21                 ; 0x64b5
    add sp, byte 8                   ; 0x64b8
    call loc_086b                    ; 0x64bb
    test ax, ax                      ; 0x64be
    jne short @..api_idx_006a.l21    ; 0x64c0
    mov ax, 0x19                     ; 0x64c2
    push ax                          ; 0x64c5
    call ds_leaf_loc_36d0            ; 0x64c6
    pop cx                           ; 0x64c9
@..api_idx_006a.l21:
    mov ax, 0x59fe                   ; 0x64ca
    push ax                          ; 0x64cd
    call ds_app_io_0b54              ; 0x64ce
    pop cx                           ; 0x64d1
    dec ax                           ; 0x64d2
    mov word [bp - 0x0012], ax       ; 0x64d3
    cmp word [bss_5b3e], byte 1      ; 0x64d6
    je short @..api_idx_006a.l22     ; 0x64db
    jmp near @..api_idx_006a.l35     ; 0x64dd
@..api_idx_006a.l22:
    jmp near @..api_idx_006a.l33     ; 0x64e0
@..api_idx_006a.l23:
    cmp word [bp + 0x8], byte 0      ; 0x64e3
    je short @..api_idx_006a.l24     ; 0x64e7
    mov ax, 1                        ; 0x64e9
    push ax                          ; 0x64ec
    push ax                          ; 0x64ed
    mov ax, 0xc                      ; 0x64ee
    push ax                          ; 0x64f1
    mov ax, word [bp - 0x0008]       ; 0x64f2
    add ax, strict word 0x27         ; 0x64f5
    push ax                          ; 0x64f8
    mov ax, word [bp - 0x0006]       ; 0x64f9
    add ax, strict word 8            ; 0x64fc
    push ax                          ; 0x64ff
    call ds_app_10a6                 ; 0x6500
    add sp, byte 0x0a                ; 0x6503
    mov ax, 0                        ; 0x6506
    push ax                          ; 0x6509
    mov ax, 1                        ; 0x650a
    push ax                          ; 0x650d
    mov ax, 0xc                      ; 0x650e
    push ax                          ; 0x6511
    mov ax, word [bp - 0x0008]       ; 0x6512
    add ax, strict word 0x27         ; 0x6515
    push ax                          ; 0x6518
    mov ax, word [bp - 0x0006]       ; 0x6519
    add ax, strict word 8            ; 0x651c
    push ax                          ; 0x651f
    call ds_app_10a6                 ; 0x6520
    add sp, byte 0x0a                ; 0x6523
    mov word [bss_9050], 0xffff      ; 0x6526
    mov word [bp - 0x0016], 0        ; 0x652c
@..api_idx_006a.l24:
    jmp near @..api_idx_006a.l35     ; 0x6531
@..api_idx_006a.l25:
    mov ax, word [bp - 0x0012]       ; 0x6534
    dec ax                           ; 0x6537
    mov word [bp - 0x0002], ax       ; 0x6538
    shl ax, 1                        ; 0x653b
    mov bx, ax                       ; 0x653d
    add bx, bp                       ; 0x653f
    cmp word [bx - 0x002a], byte 0   ; 0x6541
    je short @..api_idx_006a.l26     ; 0x6545
    jmp near @..api_idx_006a.l32     ; 0x6547
@..api_idx_006a.l26:
    mov word [bx - 0x002a], 1        ; 0x654a
    push word [bx - 0x002a]          ; 0x654f
    mov ax, word [bp - 0x0008]       ; 0x6552
    add ax, strict word 0x2e         ; 0x6555
    push ax                          ; 0x6558
    mov ax, 0x14                     ; 0x6559
    imul word [bp - 0x0002]          ; 0x655c
    add ax, word [bp - 0x0006]       ; 0x655f
    add ax, strict word 0x67         ; 0x6562
    push ax                          ; 0x6565
    mov ax, word [bp - 0x0008]       ; 0x6566
    add ax, strict word 0x26         ; 0x6569
    push ax                          ; 0x656c
    mov ax, 0x14                     ; 0x656d
    imul word [bp - 0x0002]          ; 0x6570
    add ax, word [bp - 0x0006]       ; 0x6573
    add ax, strict word 0x59         ; 0x6576
    push ax                          ; 0x6579
    call loc_242c                    ; 0x657a
    add sp, byte 0x0a                ; 0x657d
    mov ax, word [bp - 0x0008]       ; 0x6580
    add ax, strict word 0x2e         ; 0x6583
    push ax                          ; 0x6586
    mov ax, 0x14                     ; 0x6587
    imul word [bp - 0x0002]          ; 0x658a
    add ax, word [bp - 0x0006]       ; 0x658d
    add ax, strict word 0x67         ; 0x6590
    push ax                          ; 0x6593
    mov ax, word [bp - 0x0008]       ; 0x6594
    add ax, strict word 0x26         ; 0x6597
    push ax                          ; 0x659a
    mov ax, 0x14                     ; 0x659b
    imul word [bp - 0x0002]          ; 0x659e
    add ax, word [bp - 0x0006]       ; 0x65a1
    add ax, strict word 0x59         ; 0x65a4
    push ax                          ; 0x65a7
    call ds_loc_3b21                 ; 0x65a8
    add sp, byte 8                   ; 0x65ab
    mov ax, 4                        ; 0x65ae
    push ax                          ; 0x65b1
    call ds_app_0a27                 ; 0x65b2
    pop cx                           ; 0x65b5
    mov ax, word [bp - 0x0002]       ; 0x65b6
    shl ax, 1                        ; 0x65b9
    mov bx, ax                       ; 0x65bb
    add bx, bp                       ; 0x65bd
    cmp word [bx - 0x0036], byte 0   ; 0x65bf
    jne short @..api_idx_006a.l28    ; 0x65c3
    mov ax, 3                        ; 0x65c5
    push ax                          ; 0x65c8
    call ds_app_09f0                 ; 0x65c9
    pop cx                           ; 0x65cc
    test ax, ax                      ; 0x65cd
    jne short @..api_idx_006a.l27    ; 0x65cf
    mov word [bp + 0xc], 1           ; 0x65d1
@..api_idx_006a.l27:
    mov ax, word [bp + 0xc]          ; 0x65d6
    inc ax                           ; 0x65d9
    mov word [bss_9050], ax          ; 0x65da
    mov word [bp - 0x0016], 0        ; 0x65dd
    jmp near @..api_idx_006a.l32     ; 0x65e2
@..api_idx_006a.l28:
    mov ax, word [bp - 0x0002]       ; 0x65e5
    shl ax, 1                        ; 0x65e8
    mov bx, ax                       ; 0x65ea
    add bx, bp                       ; 0x65ec
    cmp word [bx - 0x0042], byte 0   ; 0x65ee
    je short @..api_idx_006a.l29     ; 0x65f2
    jmp near @..api_idx_006a.l30     ; 0x65f4
@..api_idx_006a.l29:
    mov ax, 0xc8                     ; 0x65f7
    push ax                          ; 0x65fa
    call ds_leaf_loc_36d0            ; 0x65fb
    pop cx                           ; 0x65fe
    mov ax, word [bp - 0x0002]       ; 0x65ff
    shl ax, 1                        ; 0x6602
    mov bx, ax                       ; 0x6604
    add bx, bp                       ; 0x6606
    mov word [bx - 0x002a], 0        ; 0x6608
    push word [bx - 0x002a]          ; 0x660d
    mov ax, word [bp - 0x0008]       ; 0x6610
    add ax, strict word 0x2e         ; 0x6613
    push ax                          ; 0x6616
    mov ax, 0x14                     ; 0x6617
    imul word [bp - 0x0002]          ; 0x661a
    add ax, word [bp - 0x0006]       ; 0x661d
    add ax, strict word 0x67         ; 0x6620
    push ax                          ; 0x6623
    mov ax, word [bp - 0x0008]       ; 0x6624
    add ax, strict word 0x26         ; 0x6627
    push ax                          ; 0x662a
    mov ax, 0x14                     ; 0x662b
    imul word [bp - 0x0002]          ; 0x662e
    add ax, word [bp - 0x0006]       ; 0x6631
    add ax, strict word 0x59         ; 0x6634
    push ax                          ; 0x6637
    call loc_242c                    ; 0x6638
    add sp, byte 0x0a                ; 0x663b
    mov ax, word [bp - 0x0008]       ; 0x663e
    add ax, strict word 0x2e         ; 0x6641
    push ax                          ; 0x6644
    mov ax, 0x14                     ; 0x6645
    imul word [bp - 0x0002]          ; 0x6648
    add ax, word [bp - 0x0006]       ; 0x664b
    add ax, strict word 0x67         ; 0x664e
    push ax                          ; 0x6651
    mov ax, word [bp - 0x0008]       ; 0x6652
    add ax, strict word 0x26         ; 0x6655
    push ax                          ; 0x6658
    mov ax, 0x14                     ; 0x6659
    imul word [bp - 0x0002]          ; 0x665c
    add ax, word [bp - 0x0006]       ; 0x665f
    add ax, strict word 0x59         ; 0x6662
    push ax                          ; 0x6665
    call ds_loc_3b21                 ; 0x6666
    add sp, byte 8                   ; 0x6669
    mov ax, 4                        ; 0x666c
    push ax                          ; 0x666f
    call ds_app_0a27                 ; 0x6670
    pop cx                           ; 0x6673
    jmp short @..api_idx_006a.l32    ; 0x6674
@..api_idx_006a.l30:
    dec word [bp - 0x001e]           ; 0x6676
    jne short @..api_idx_006a.l32    ; 0x6679
    cmp word [bp - 0x001c], byte 0   ; 0x667b
    je short @..api_idx_006a.l31     ; 0x667f
    push word [bp - 0x001c]          ; 0x6681
    mov ax, 0x10                     ; 0x6684
    push ax                          ; 0x6687
    push word [bp + 0x4]             ; 0x6688
    call loc_0f54                    ; 0x668b
    add sp, byte 6                   ; 0x668e
@..api_idx_006a.l31:
    mov word [bss_9050], 0           ; 0x6691
    mov word [bp - 0x0016], 0        ; 0x6697
@..api_idx_006a.l32:
    jmp short @..api_idx_006a.l35    ; 0x669c
@..api_idx_006a.l33:
    cmp ax, strict word 0            ; 0x669e
    jne short @..api_idx_006a.l34    ; 0x66a1
    jmp near @..api_idx_006a.l23     ; 0x66a3
@..api_idx_006a.l34:
    jmp near @..api_idx_006a.l25     ; 0x66a6
@..api_idx_006a.l35:
    cmp word [bp - 0x0016], byte 0   ; 0x66a9
    je short @..api_idx_006a.l36     ; 0x66ad
    jmp near @..api_idx_006a.l8      ; 0x66af
@..api_idx_006a.l36:
    push word [bss_905a]             ; 0x66b2
    call api_idx_0004                ; 0x66b6
    pop cx                           ; 0x66b9
    mov word [bss_911c], 0x8f        ; 0x66ba
    mov ax, 1                        ; 0x66c0
    push ax                          ; 0x66c3
    push word [bp - 0x0018]          ; 0x66c4
    call ds_app_file_16a0            ; 0x66c7
    add sp, byte 4                   ; 0x66ca
    mov ax, word [bp - 0x000c]       ; 0x66cd
    inc ax                           ; 0x66d0
    push ax                          ; 0x66d1
    mov ax, word [bp - 0x000a]       ; 0x66d2
    inc ax                           ; 0x66d5
    push ax                          ; 0x66d6
    mov ax, word [bp - 0x0008]       ; 0x66d7
    dec ax                           ; 0x66da
    push ax                          ; 0x66db
    mov ax, word [bp - 0x0006]       ; 0x66dc
    dec ax                           ; 0x66df
    push ax                          ; 0x66e0
    call ds_loc_3b21                 ; 0x66e1
    add sp, byte 8                   ; 0x66e4
    mov ax, word [bss_9050]          ; 0x66e7
    ret                              ; 0x66ea
