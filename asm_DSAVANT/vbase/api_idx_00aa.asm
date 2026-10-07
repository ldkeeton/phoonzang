api_idx_00aa:
    mov ax, 0xff56                   ; 0x62e5
    call ds_dispatch_f40b            ; 0x62e8
    mov word [bp - 0x0002], 0x37     ; 0x62eb
    mov word [bp - 0x0004], 0x8f     ; 0x62f0
    mov word [bp - 0x0006], 0x108    ; 0x62f5
    mov word [bp - 0x0008], 0xc5     ; 0x62fa
    mov ax, 0x910d                   ; 0x62ff
    push ax                          ; 0x6302
    mov ax, word [bp - 0x0008]       ; 0x6303
    inc ax                           ; 0x6306
    push ax                          ; 0x6307
    mov ax, word [bp - 0x0006]       ; 0x6308
    inc ax                           ; 0x630b
    push ax                          ; 0x630c
    mov ax, word [bp - 0x0004]       ; 0x630d
    dec ax                           ; 0x6310
    push ax                          ; 0x6311
    mov ax, word [bp - 0x0002]       ; 0x6312
    dec ax                           ; 0x6315
    push ax                          ; 0x6316
    call ds_dispatch_c283            ; 0x6317
    add sp, byte 0x0a                ; 0x631a
    mov word [bp - 0x00aa], ax       ; 0x631d
    push word [bp - 0x0008]          ; 0x6321
    push word [bp - 0x0006]          ; 0x6324
    push word [bp - 0x0004]          ; 0x6327
    push word [bp - 0x0002]          ; 0x632a
    call ds_dispatch_bc9a            ; 0x632d
    add sp, byte 8                   ; 0x6330
    mov ax, 0                        ; 0x6333
    push ax                          ; 0x6336
    mov ax, 0x1c                     ; 0x6337
    push ax                          ; 0x633a
    call ds_dispatch_e823            ; 0x633b
    add sp, byte 4                   ; 0x633e
    lea ax, word [bp - 0x0058]       ; 0x6341
    push ax                          ; 0x6344
    mov ax, 0x41a                    ; 0x6345
    push ax                          ; 0x6348
    call ds_dispatch_b53b            ; 0x6349
    add sp, byte 4                   ; 0x634c
    mov ax, word [bp - 0x0004]       ; 0x634f
    add ax, strict word 5            ; 0x6352
    push ax                          ; 0x6355
    lea ax, word [bp - 0x0058]       ; 0x6356
    push ax                          ; 0x6359
    call ds_dispatch_fa90            ; 0x635a
    pop cx                           ; 0x635d
    mov cx, ax                       ; 0x635e
    mov ax, 0x15                     ; 0x6360
    sub ax, cx                       ; 0x6363
    mov cx, 6                        ; 0x6365
    imul cx                          ; 0x6368
    inc ax                           ; 0x636a
    inc ax                           ; 0x636b
    mov cx, data_0002                ; 0x636c
    cwd                              ; 0x636f
    idiv cx                          ; 0x6370
    add ax, word [bp - 0x0002]       ; 0x6372
    add ax, strict word 0x29         ; 0x6375
    push ax                          ; 0x6378
    call ds_dispatch_e809            ; 0x6379
    add sp, byte 4                   ; 0x637c
    mov ax, 0                        ; 0x637f
    push ax                          ; 0x6382
    lea ax, word [bp - 0x0058]       ; 0x6383
    push ax                          ; 0x6386
    call ds_dispatch_e84e            ; 0x6387
    add sp, byte 4                   ; 0x638a
    mov ax, 0xc2                     ; 0x638d
    push ax                          ; 0x6390
    mov ax, 1                        ; 0x6391
    push ax                          ; 0x6394
    call ds_dispatch_e823            ; 0x6395
    add sp, byte 4                   ; 0x6398
    lea ax, word [bp - 0x0058]       ; 0x639b
    push ax                          ; 0x639e
    mov ax, 0x41b                    ; 0x639f
    push ax                          ; 0x63a2
    call ds_dispatch_b53b            ; 0x63a3
    add sp, byte 4                   ; 0x63a6
    lea ax, word [bp - 0x00a8]       ; 0x63a9
    push ax                          ; 0x63ad
    mov bx, word [data_5b40]         ; 0x63ae
    mov al, byte [bx + 0x5990]       ; 0x63b2
    sub ah, ah                       ; 0x63b6
    push ax                          ; 0x63b8
    call ds_dispatch_b27d            ; 0x63b9
    add sp, byte 4                   ; 0x63bc
    mov ax, 0x24                     ; 0x63bf
    push ax                          ; 0x63c2
    lea ax, word [bp - 0x00a8]       ; 0x63c3
    push ax                          ; 0x63c7
    lea ax, word [bp - 0x0058]       ; 0x63c8
    push ax                          ; 0x63cb
    call ds_dispatch_b300            ; 0x63cc
    add sp, byte 6                   ; 0x63cf
    mov ax, word [bp - 0x0004]       ; 0x63d2
    add ax, strict word 0xf          ; 0x63d5
    push ax                          ; 0x63d8
    lea ax, word [bp - 0x0058]       ; 0x63d9
    push ax                          ; 0x63dc
    call ds_dispatch_fa90            ; 0x63dd
    pop cx                           ; 0x63e0
    mov cx, ax                       ; 0x63e1
    mov ax, 0x15                     ; 0x63e3
    sub ax, cx                       ; 0x63e6
    mov cx, 6                        ; 0x63e8
    imul cx                          ; 0x63eb
    inc ax                           ; 0x63ed
    inc ax                           ; 0x63ee
    mov cx, data_0002                ; 0x63ef
    cwd                              ; 0x63f2
    idiv cx                          ; 0x63f3
    add ax, word [bp - 0x0002]       ; 0x63f5
    add ax, strict word 0x29         ; 0x63f8
    push ax                          ; 0x63fb
    call ds_dispatch_e809            ; 0x63fc
    add sp, byte 4                   ; 0x63ff
    mov ax, 0                        ; 0x6402
    push ax                          ; 0x6405
    lea ax, word [bp - 0x0058]       ; 0x6406
    push ax                          ; 0x6409
    call ds_dispatch_e84e            ; 0x640a
    add sp, byte 4                   ; 0x640d
    lea ax, word [bp - 0x0058]       ; 0x6410
    push ax                          ; 0x6413
    mov ax, 0x41c                    ; 0x6414
    push ax                          ; 0x6417
    call ds_dispatch_b53b            ; 0x6418
    add sp, byte 4                   ; 0x641b
    lea ax, word [bp - 0x00a8]       ; 0x641e
    push ax                          ; 0x6422
    mov bx, word [data_5b46]         ; 0x6423
    mov al, byte [bx + 0x5990]       ; 0x6427
    sub ah, ah                       ; 0x642b
    add ax, 0x423                    ; 0x642d
    push ax                          ; 0x6430
    call ds_dispatch_b53b            ; 0x6431
    add sp, byte 4                   ; 0x6434
    mov ax, 0x24                     ; 0x6437
    push ax                          ; 0x643a
    lea ax, word [bp - 0x00a8]       ; 0x643b
    push ax                          ; 0x643f
    lea ax, word [bp - 0x0058]       ; 0x6440
    push ax                          ; 0x6443
    call ds_dispatch_b300            ; 0x6444
    add sp, byte 6                   ; 0x6447
    mov ax, word [bp - 0x0004]       ; 0x644a
    add ax, strict word 0x15         ; 0x644d
    push ax                          ; 0x6450
    lea ax, word [bp - 0x0058]       ; 0x6451
    push ax                          ; 0x6454
    call ds_dispatch_fa90            ; 0x6455
    pop cx                           ; 0x6458
    mov cx, ax                       ; 0x6459
    mov ax, 0x15                     ; 0x645b
    sub ax, cx                       ; 0x645e
    mov cx, 6                        ; 0x6460
    imul cx                          ; 0x6463
    inc ax                           ; 0x6465
    inc ax                           ; 0x6466
    mov cx, data_0002                ; 0x6467
    cwd                              ; 0x646a
    idiv cx                          ; 0x646b
    add ax, word [bp - 0x0002]       ; 0x646d
    add ax, strict word 0x29         ; 0x6470
    push ax                          ; 0x6473
    call ds_dispatch_e809            ; 0x6474
    add sp, byte 4                   ; 0x6477
    mov ax, 0                        ; 0x647a
    push ax                          ; 0x647d
    lea ax, word [bp - 0x0058]       ; 0x647e
    push ax                          ; 0x6481
    call ds_dispatch_e84e            ; 0x6482
    add sp, byte 4                   ; 0x6485
    lea ax, word [bp - 0x0058]       ; 0x6488
    push ax                          ; 0x648b
    mov ax, 0x41d                    ; 0x648c
    push ax                          ; 0x648f
    call ds_dispatch_b53b            ; 0x6490
    add sp, byte 4                   ; 0x6493
    lea ax, word [bp - 0x00a8]       ; 0x6496
    push ax                          ; 0x649a
    mov bx, word [data_5b42]         ; 0x649b
    mov al, byte [bx + 0x5990]       ; 0x649f
    sub ah, ah                       ; 0x64a3
    push ax                          ; 0x64a5
    call ds_dispatch_b27d            ; 0x64a6
    add sp, byte 4                   ; 0x64a9
    mov ax, 0x5e                     ; 0x64ac
    push ax                          ; 0x64af
    lea ax, word [bp - 0x00a8]       ; 0x64b0
    push ax                          ; 0x64b4
    lea ax, word [bp - 0x0058]       ; 0x64b5
    push ax                          ; 0x64b8
    call ds_dispatch_b300            ; 0x64b9
    add sp, byte 6                   ; 0x64bc
    lea ax, word [bp - 0x00a8]       ; 0x64bf
    push ax                          ; 0x64c3
    mov bx, word [data_5b44]         ; 0x64c4
    mov al, byte [bx + 0x5990]       ; 0x64c8
    sub ah, ah                       ; 0x64cc
    push ax                          ; 0x64ce
    call ds_dispatch_b27d            ; 0x64cf
    add sp, byte 4                   ; 0x64d2
    mov ax, 0x25                     ; 0x64d5
    push ax                          ; 0x64d8
    lea ax, word [bp - 0x00a8]       ; 0x64d9
    push ax                          ; 0x64dd
    lea ax, word [bp - 0x0058]       ; 0x64de
    push ax                          ; 0x64e1
    call ds_dispatch_b300            ; 0x64e2
