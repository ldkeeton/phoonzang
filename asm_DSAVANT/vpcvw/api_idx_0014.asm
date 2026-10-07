api_idx_0014:
    mov ax, 0xffec                   ; 0x616c
    call ds_dispatch_f40b            ; 0x616f
    mov ax, word [data_905e]         ; 0x6172
    mov word [data_830a], ax         ; 0x6175
    mov word [data_942e], 0x14       ; 0x6178
    mov word [data_9430], 0          ; 0x617e
    mov word [data_9432], 0          ; 0x6184
    mov word [data_940e], 0xffff     ; 0x618a
    cmp ax, strict word 0xd          ; 0x6190
    je short @..api_idx_0014.l1      ; 0x6193
    call ds_dispatch_c145            ; 0x6195
    mov ax, 1                        ; 0x6198
    push ax                          ; 0x619b
    mov ax, data_0002                ; 0x619c
    push ax                          ; 0x619f
    call ds_dispatch_d61c            ; 0x61a0
    add sp, byte 4                   ; 0x61a3
    mov ax, data_0002                ; 0x61a6
    push ax                          ; 0x61a9
    mov ax, 3                        ; 0x61aa
    push ax                          ; 0x61ad
    call ds_dispatch_d61c            ; 0x61ae
    add sp, byte 4                   ; 0x61b1
    jmp short @..api_idx_0014.l4     ; 0x61b4
@..api_idx_0014.l1:
    mov word [bp - 0x0002], 0xf      ; 0x61b6
@..api_idx_0014.l2:
    mov bx, word [bp - 0x0002]       ; 0x61bb
    mov al, byte [bx + 0x5b48]       ; 0x61be
    sub ah, ah                       ; 0x61c2
    shl bx, 1                        ; 0x61c4
    add bx, bp                       ; 0x61c6
    mov word [bx - 0x002a], ax       ; 0x61c8
    cmp ax, 0xff                     ; 0x61cb
    je short @..api_idx_0014.l3      ; 0x61ce
    push word [bp - 0x0002]          ; 0x61d0
    call ds_dispatch_c12a            ; 0x61d3
    pop cx                           ; 0x61d6
@..api_idx_0014.l3:
    inc word [bp - 0x0002]           ; 0x61d7
    mov ax, word [bp - 0x0002]       ; 0x61da
    cmp ax, strict word 0x12         ; 0x61dd
    jl short @..api_idx_0014.l2      ; 0x61e0
    mov ax, 7                        ; 0x61e2
    push ax                          ; 0x61e5
    call ds_dispatch_c12a            ; 0x61e6
    pop cx                           ; 0x61e9
    mov ax, 0xa                      ; 0x61ea
    push ax                          ; 0x61ed
    call ds_dispatch_d6c6            ; 0x61ee
    pop cx                           ; 0x61f1
    mov ax, 0xb                      ; 0x61f2
    push ax                          ; 0x61f5
    call ds_dispatch_d6c6            ; 0x61f6
    pop cx                           ; 0x61f9
    mov ax, 0xc                      ; 0x61fa
    push ax                          ; 0x61fd
    call ds_dispatch_d6c6            ; 0x61fe
    pop cx                           ; 0x6201
@..api_idx_0014.l4:
    mov ax, 0                        ; 0x6202
    push ax                          ; 0x6205
    mov ax, data_0002                ; 0x6206
    push ax                          ; 0x6209
    mov ax, 0xc7                     ; 0x620a
    push ax                          ; 0x620d
    mov ax, 0x13f                    ; 0x620e
    push ax                          ; 0x6211
    mov ax, 0                        ; 0x6212
    push ax                          ; 0x6215
    push ax                          ; 0x6216
    call ds_dispatch_e935            ; 0x6217
    add sp, byte 0x0c                ; 0x621a
    mov word [bp - 0x0012], dx       ; 0x621d
    mov word [bp - 0x0014], ax       ; 0x6220
    mov ax, 0                        ; 0x6223
    push ax                          ; 0x6226
    mov ax, 0x90b3                   ; 0x6227
    push ax                          ; 0x622a
    call api_idx_0002                ; 0x622b
    add sp, byte 4                   ; 0x622e
    mov ax, 0                        ; 0x6231
    push ax                          ; 0x6234
    mov ax, data_0002                ; 0x6235
    push ax                          ; 0x6238
    mov ax, 0x67                     ; 0x6239
    push ax                          ; 0x623c
    mov ax, 0xa2                     ; 0x623d
    push ax                          ; 0x6240
    mov ax, 6                        ; 0x6241
    push ax                          ; 0x6244
    push ax                          ; 0x6245
    call ds_dispatch_e935            ; 0x6246
    add sp, byte 0x0c                ; 0x6249
    mov word [data_93f0], dx         ; 0x624c
    mov word [data_93ee], ax         ; 0x6250
    mov ax, 0                        ; 0x6253
    push ax                          ; 0x6256
    mov ax, data_0002                ; 0x6257
    push ax                          ; 0x625a
    mov ax, 0x16                     ; 0x625b
    push ax                          ; 0x625e
    mov ax, 0x136                    ; 0x625f
    push ax                          ; 0x6262
    mov ax, 6                        ; 0x6263
    push ax                          ; 0x6266
    mov ax, 0xe4                     ; 0x6267
    push ax                          ; 0x626a
    call ds_dispatch_e935            ; 0x626b
    add sp, byte 0x0c                ; 0x626e
    mov word [data_93f4], dx         ; 0x6271
    mov word [data_93f2], ax         ; 0x6275
    mov ax, 0                        ; 0x6278
    push ax                          ; 0x627b
    mov ax, data_0002                ; 0x627c
    push ax                          ; 0x627f
    mov ax, 0xbb                     ; 0x6280
    push ax                          ; 0x6283
    mov ax, 0xab                     ; 0x6284
    push ax                          ; 0x6287
    mov ax, 0x70                     ; 0x6288
    push ax                          ; 0x628b
    mov ax, 1                        ; 0x628c
    push ax                          ; 0x628f
    call ds_dispatch_e935            ; 0x6290
    add sp, byte 0x0c                ; 0x6293
    mov word [data_93f8], dx         ; 0x6296
    mov word [data_93f6], ax         ; 0x629a
    mov ax, 0                        ; 0x629d
    push ax                          ; 0x62a0
    mov ax, data_0002                ; 0x62a1
    push ax                          ; 0x62a4
    mov ax, 0x23                     ; 0x62a5
    push ax                          ; 0x62a8
    mov ax, 0x13f                    ; 0x62a9
    push ax                          ; 0x62ac
    mov ax, 0x1e                     ; 0x62ad
    push ax                          ; 0x62b0
    mov ax, 0xdc                     ; 0x62b1
    push ax                          ; 0x62b4
    call ds_dispatch_e935            ; 0x62b5
    add sp, byte 0x0c                ; 0x62b8
    mov word [data_93fc], dx         ; 0x62bb
    mov word [data_93fa], ax         ; 0x62bf
    mov ax, 0                        ; 0x62c2
    push ax                          ; 0x62c5
    mov ax, data_0002                ; 0x62c6
    push ax                          ; 0x62c9
    mov ax, 0x74                     ; 0x62ca
    push ax                          ; 0x62cd
    mov ax, 0x136                    ; 0x62ce
    push ax                          ; 0x62d1
    mov ax, 0x2e                     ; 0x62d2
    push ax                          ; 0x62d5
    mov ax, 0x114                    ; 0x62d6
    push ax                          ; 0x62d9
    call ds_dispatch_e935            ; 0x62da
    add sp, byte 0x0c                ; 0x62dd
    mov word [data_9400], dx         ; 0x62e0
    mov word [data_93fe], ax         ; 0x62e4
    mov ax, 0                        ; 0x62e7
    push ax                          ; 0x62ea
    mov ax, data_0002                ; 0x62eb
    push ax                          ; 0x62ee
    mov ax, 0xbf                     ; 0x62ef
    push ax                          ; 0x62f2
    mov ax, 0x13f                    ; 0x62f3
    push ax                          ; 0x62f6
    mov ax, 0x7e                     ; 0x62f7
    push ax                          ; 0x62fa
    mov ax, 0xb8                     ; 0x62fb
    push ax                          ; 0x62fe
    call ds_dispatch_e935            ; 0x62ff
    add sp, byte 0x0c                ; 0x6302
    mov word [data_9404], dx         ; 0x6305
    mov word [data_9402], ax         ; 0x6309
    mov ax, 0                        ; 0x630c
    push ax                          ; 0x630f
    mov ax, data_0002                ; 0x6310
    push ax                          ; 0x6313
    mov ax, 0x41                     ; 0x6314
    push ax                          ; 0x6317
    mov ax, 0x65                     ; 0x6318
    push ax                          ; 0x631b
    mov ax, 0x19                     ; 0x631c
    push ax                          ; 0x631f
    mov ax, 0x5a                     ; 0x6320
    push ax                          ; 0x6323
    call ds_dispatch_e935            ; 0x6324
    add sp, byte 0x0c                ; 0x6327
    mov word [data_940c], dx         ; 0x632a
    mov word [data_940a], ax         ; 0x632e
    mov ax, 0xf                      ; 0x6331
    push ax                          ; 0x6334
    mov ax, 0xb                      ; 0x6335
    push ax                          ; 0x6338
    call ds_dispatch_d61c            ; 0x6339
    add sp, byte 4                   ; 0x633c
    call ds_dispatch_d9a6            ; 0x633f
    mov word [data_8450], ax         ; 0x6342
    test ax, ax                      ; 0x6345
    je short @..api_idx_0014.l5      ; 0x6347
    mov ax, 0                        ; 0x6349
    push ax                          ; 0x634c
    mov ax, data_0002                ; 0x634d
    push ax                          ; 0x6350
    call ds_dispatch_d7e7            ; 0x6351
    add sp, byte 4                   ; 0x6354
    mov ax, word [data_0110]         ; 0x6357
    mov word [data_844e], ax         ; 0x635a
    mov ax, 1                        ; 0x635d
    push ax                          ; 0x6360
    push word [data_844e]            ; 0x6361
    mov ax, 0                        ; 0x6365
    push ax                          ; 0x6368
    call ds_dispatch_d964            ; 0x6369
