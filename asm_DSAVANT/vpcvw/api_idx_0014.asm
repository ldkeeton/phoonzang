api_idx_0014:
    mov ax, 0xffec                   ; 0x616c
    call ds_aztec_csav               ; 0x616f
    mov ax, word [bss_905e]          ; 0x6172
    mov word [bss_830a], ax          ; 0x6175
    mov word [bss_942e], 0x14        ; 0x6178
    mov word [bss_9430], 0           ; 0x617e
    mov word [bss_9432], 0           ; 0x6184
    mov word [bss_940e], 0xffff      ; 0x618a
    cmp ax, strict word 0xd          ; 0x6190
    je short @..api_idx_0014.l1      ; 0x6193
    call ds_app_138c                 ; 0x6195
    mov ax, 1                        ; 0x6198
    push ax                          ; 0x619b
    mov ax, 2                        ; 0x619c
    push ax                          ; 0x619f
    call ds_app_file_2863            ; 0x61a0
    add sp, byte 4                   ; 0x61a3
    mov ax, 2                        ; 0x61a6
    push ax                          ; 0x61a9
    mov ax, 3                        ; 0x61aa
    push ax                          ; 0x61ad
    call ds_app_file_2863            ; 0x61ae
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
    call ds_app_1371                 ; 0x61d3
    pop cx                           ; 0x61d6
@..api_idx_0014.l3:
    inc word [bp - 0x0002]           ; 0x61d7
    mov ax, word [bp - 0x0002]       ; 0x61da
    cmp ax, strict word 0x12         ; 0x61dd
    jl short @..api_idx_0014.l2      ; 0x61e0
    mov ax, 7                        ; 0x61e2
    push ax                          ; 0x61e5
    call ds_app_1371                 ; 0x61e6
    pop cx                           ; 0x61e9
    mov ax, 0xa                      ; 0x61ea
    push ax                          ; 0x61ed
    call ds_app_290d                 ; 0x61ee
    pop cx                           ; 0x61f1
    mov ax, 0xb                      ; 0x61f2
    push ax                          ; 0x61f5
    call ds_app_290d                 ; 0x61f6
    pop cx                           ; 0x61f9
    mov ax, 0xc                      ; 0x61fa
    push ax                          ; 0x61fd
    call ds_app_290d                 ; 0x61fe
    pop cx                           ; 0x6201
@..api_idx_0014.l4:
    mov ax, 0                        ; 0x6202
    push ax                          ; 0x6205
    mov ax, 2                        ; 0x6206
    push ax                          ; 0x6209
    mov ax, 0xc7                     ; 0x620a
    push ax                          ; 0x620d
    mov ax, 0x13f                    ; 0x620e
    push ax                          ; 0x6211
    mov ax, 0                        ; 0x6212
    push ax                          ; 0x6215
    push ax                          ; 0x6216
    call ds_loc_3b7c                 ; 0x6217
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
    mov ax, 2                        ; 0x6235
    push ax                          ; 0x6238
    mov ax, 0x67                     ; 0x6239
    push ax                          ; 0x623c
    mov ax, 0xa2                     ; 0x623d
    push ax                          ; 0x6240
    mov ax, 6                        ; 0x6241
    push ax                          ; 0x6244
    push ax                          ; 0x6245
    call ds_loc_3b7c                 ; 0x6246
    add sp, byte 0x0c                ; 0x6249
    mov word [bss_93f0], dx          ; 0x624c
    mov word [bss_93ee], ax          ; 0x6250
    mov ax, 0                        ; 0x6253
    push ax                          ; 0x6256
    mov ax, 2                        ; 0x6257
    push ax                          ; 0x625a
    mov ax, 0x16                     ; 0x625b
    push ax                          ; 0x625e
    mov ax, 0x136                    ; 0x625f
    push ax                          ; 0x6262
    mov ax, 6                        ; 0x6263
    push ax                          ; 0x6266
    mov ax, 0xe4                     ; 0x6267
    push ax                          ; 0x626a
    call ds_loc_3b7c                 ; 0x626b
    add sp, byte 0x0c                ; 0x626e
    mov word [bss_93f4], dx          ; 0x6271
    mov word [bss_93f2], ax          ; 0x6275
    mov ax, 0                        ; 0x6278
    push ax                          ; 0x627b
    mov ax, 2                        ; 0x627c
    push ax                          ; 0x627f
    mov ax, 0xbb                     ; 0x6280
    push ax                          ; 0x6283
    mov ax, 0xab                     ; 0x6284
    push ax                          ; 0x6287
    mov ax, 0x70                     ; 0x6288
    push ax                          ; 0x628b
    mov ax, 1                        ; 0x628c
    push ax                          ; 0x628f
    call ds_loc_3b7c                 ; 0x6290
    add sp, byte 0x0c                ; 0x6293
    mov word [bss_93f8], dx          ; 0x6296
    mov word [bss_93f6], ax          ; 0x629a
    mov ax, 0                        ; 0x629d
    push ax                          ; 0x62a0
    mov ax, 2                        ; 0x62a1
    push ax                          ; 0x62a4
    mov ax, 0x23                     ; 0x62a5
    push ax                          ; 0x62a8
    mov ax, 0x13f                    ; 0x62a9
    push ax                          ; 0x62ac
    mov ax, 0x1e                     ; 0x62ad
    push ax                          ; 0x62b0
    mov ax, 0xdc                     ; 0x62b1
    push ax                          ; 0x62b4
    call ds_loc_3b7c                 ; 0x62b5
    add sp, byte 0x0c                ; 0x62b8
    mov word [bss_93fc], dx          ; 0x62bb
    mov word [bss_93fa], ax          ; 0x62bf
    mov ax, 0                        ; 0x62c2
    push ax                          ; 0x62c5
    mov ax, 2                        ; 0x62c6
    push ax                          ; 0x62c9
    mov ax, 0x74                     ; 0x62ca
    push ax                          ; 0x62cd
    mov ax, 0x136                    ; 0x62ce
    push ax                          ; 0x62d1
    mov ax, 0x2e                     ; 0x62d2
    push ax                          ; 0x62d5
    mov ax, 0x114                    ; 0x62d6
    push ax                          ; 0x62d9
    call ds_loc_3b7c                 ; 0x62da
    add sp, byte 0x0c                ; 0x62dd
    mov word [bss_9400], dx          ; 0x62e0
    mov word [bss_93fe], ax          ; 0x62e4
    mov ax, 0                        ; 0x62e7
    push ax                          ; 0x62ea
    mov ax, 2                        ; 0x62eb
    push ax                          ; 0x62ee
    mov ax, 0xbf                     ; 0x62ef
    push ax                          ; 0x62f2
    mov ax, 0x13f                    ; 0x62f3
    push ax                          ; 0x62f6
    mov ax, 0x7e                     ; 0x62f7
    push ax                          ; 0x62fa
    mov ax, 0xb8                     ; 0x62fb
    push ax                          ; 0x62fe
    call ds_loc_3b7c                 ; 0x62ff
    add sp, byte 0x0c                ; 0x6302
    mov word [bss_9404], dx          ; 0x6305
    mov word [bss_9402], ax          ; 0x6309
    mov ax, 0                        ; 0x630c
    push ax                          ; 0x630f
    mov ax, 2                        ; 0x6310
    push ax                          ; 0x6313
    mov ax, 0x41                     ; 0x6314
    push ax                          ; 0x6317
    mov ax, 0x65                     ; 0x6318
    push ax                          ; 0x631b
    mov ax, 0x19                     ; 0x631c
    push ax                          ; 0x631f
    mov ax, 0x5a                     ; 0x6320
    push ax                          ; 0x6323
    call ds_loc_3b7c                 ; 0x6324
    add sp, byte 0x0c                ; 0x6327
    mov word [bss_940c], dx          ; 0x632a
    mov word [bss_940a], ax          ; 0x632e
    mov ax, 0xf                      ; 0x6331
    push ax                          ; 0x6334
    mov ax, 0xb                      ; 0x6335
    push ax                          ; 0x6338
    call ds_app_file_2863            ; 0x6339
    add sp, byte 4                   ; 0x633c
    call ds_app_2bed                 ; 0x633f
    mov word [bss_8450], ax          ; 0x6342
    test ax, ax                      ; 0x6345
    je short @..api_idx_0014.l5      ; 0x6347
    mov ax, 0                        ; 0x6349
    push ax                          ; 0x634c
    mov ax, 2                        ; 0x634d
    push ax                          ; 0x6350
    call ds_app_file_2a2e            ; 0x6351
    add sp, byte 4                   ; 0x6354
    mov ax, word [dseg_0110]         ; 0x6357
    mov word [bss_844e], ax          ; 0x635a
    mov ax, 1                        ; 0x635d
    push ax                          ; 0x6360
    push word [bss_844e]             ; 0x6361
    mov ax, 0                        ; 0x6365
    push ax                          ; 0x6368
    call ds_app_2bab                 ; 0x6369
    add sp, byte 6                   ; 0x636c
    mov word [bss_844c], ax          ; 0x636f
@..api_idx_0014.l5:
    mov word [bss_967a], 0           ; 0x6372
    mov word [bss_9614], 0           ; 0x6378
    mov word [bss_9434], 0           ; 0x637e
    mov word [bp - 0x0002], 0        ; 0x6384
@..api_idx_0014.l6:
    mov ax, 0xa                      ; 0x6389
    imul word [bp - 0x0002]          ; 0x638c
    add ax, 0x9616                   ; 0x638f
    push ax                          ; 0x6392
    mov ax, word [bp - 0x0002]       ; 0x6393
    add ax, 0x12c                    ; 0x6396
    push ax                          ; 0x6399
    call ds_app_mem_0782             ; 0x639a
    add sp, byte 4                   ; 0x639d
    inc word [bp - 0x0002]           ; 0x63a0
    mov ax, word [bp - 0x0002]       ; 0x63a3
    cmp ax, strict word 9            ; 0x63a6
    jl short @..api_idx_0014.l6      ; 0x63a9
    mov word [bp - 0x0002], 0        ; 0x63ab
@..api_idx_0014.l7:
    mov ax, word [bp - 0x0002]       ; 0x63b0
    shl ax, 1                        ; 0x63b3
    mov bx, ax                       ; 0x63b5
    mov word [bx - 0x7cf2], 0        ; 0x63b7
    inc word [bp - 0x0002]           ; 0x63bd
    mov ax, word [bp - 0x0002]       ; 0x63c0
    cmp ax, strict word 6            ; 0x63c3
    jl short @..api_idx_0014.l7      ; 0x63c6
    mov word [bss_9562], 7           ; 0x63c8
    les bx, word [dseg_0002]         ; 0x63ce
    mov ax, word [es:bx]             ; 0x63d2
    mov dx, word [es:bx + 0x2]       ; 0x63d5
    mov word [bss_908c], dx          ; 0x63d9
    mov word [bss_908a], ax          ; 0x63dd
    cmp word [bss_905e], byte 4      ; 0x63e0
    je short @..api_idx_0014.l8      ; 0x63e5
    cmp word [bss_905e], byte 0x0d   ; 0x63e7
    jne short @..api_idx_0014.l9     ; 0x63ec
@..api_idx_0014.l8:
    mov ax, 0                        ; 0x63ee
    jmp short @..api_idx_0014.l10    ; 0x63f1
@..api_idx_0014.l9:
    mov ax, 1                        ; 0x63f3
@..api_idx_0014.l10:
    mov word [bp - 0x0006], ax       ; 0x63f6
@..api_idx_0014.l11:
    mov ax, 0                        ; 0x63f9
    push ax                          ; 0x63fc
    push word [bp + 0x4]             ; 0x63fd
    call loc_40b7                    ; 0x6400
    add sp, byte 4                   ; 0x6403
    mov ax, 0                        ; 0x6406
    push ax                          ; 0x6409
    mov ax, 0x45                     ; 0x640a
    push ax                          ; 0x640d
    mov ax, 0x53                     ; 0x640e
    push ax                          ; 0x6411
    mov ax, 0x3d                     ; 0x6412
    push ax                          ; 0x6415
    mov ax, 0x4d                     ; 0x6416
    push ax                          ; 0x6419
    mov ax, 0x13                     ; 0x641a
    push ax                          ; 0x641d
    mov ax, 0                        ; 0x641e
    push ax                          ; 0x6421
    call ds_app_0ced                 ; 0x6422
    add sp, byte 0x0e                ; 0x6425
    mov ax, 0                        ; 0x6428
    push ax                          ; 0x642b
    mov ax, 0xb                      ; 0x642c
    push ax                          ; 0x642f
    mov ax, 0x4a                     ; 0x6430
    push ax                          ; 0x6433
    mov ax, 0x26                     ; 0x6434
    push ax                          ; 0x6437
    mov ax, 0x11                     ; 0x6438
    push ax                          ; 0x643b
    mov ax, 0xc                      ; 0x643c
    push ax                          ; 0x643f
    mov ax, 1                        ; 0x6440
    push ax                          ; 0x6443
    call ds_app_0ced                 ; 0x6444
    add sp, byte 0x0e                ; 0x6447
    mov ax, 0                        ; 0x644a
    push ax                          ; 0x644d
    mov ax, 9                        ; 0x644e
    push ax                          ; 0x6451
    mov ax, 0x4a                     ; 0x6452
    push ax                          ; 0x6455
    mov ax, 0x43                     ; 0x6456
    push ax                          ; 0x6459
    mov ax, 0x11                     ; 0x645a
    push ax                          ; 0x645d
    mov ax, 0x27                     ; 0x645e
    push ax                          ; 0x6461
    mov ax, 2                        ; 0x6462
    push ax                          ; 0x6465
    call ds_app_0ced                 ; 0x6466
    add sp, byte 0x0e                ; 0x6469
    mov ax, 0                        ; 0x646c
    push ax                          ; 0x646f
    mov ax, 0x43                     ; 0x6470
    push ax                          ; 0x6473
    mov ax, 0x4b                     ; 0x6474
    push ax                          ; 0x6477
    mov ax, 0x66                     ; 0x6478
    push ax                          ; 0x647b
    mov ax, 0x1f                     ; 0x647c
    push ax                          ; 0x647f
    mov ax, 0x5a                     ; 0x6480
    push ax                          ; 0x6483
    mov ax, 3                        ; 0x6484
    push ax                          ; 0x6487
    call ds_app_0ced                 ; 0x6488
    add sp, byte 0x0e                ; 0x648b
    mov ax, 0                        ; 0x648e
    push ax                          ; 0x6491
    push ax                          ; 0x6492
    mov ax, 0x62                     ; 0x6493
    push ax                          ; 0x6496
    mov ax, 0x96                     ; 0x6497
    push ax                          ; 0x649a
    mov ax, 0x5c                     ; 0x649b
    push ax                          ; 0x649e
    mov ax, 0x5a                     ; 0x649f
    push ax                          ; 0x64a2
    mov ax, 4                        ; 0x64a3
    push ax                          ; 0x64a6
    call ds_app_0ced                 ; 0x64a7
    add sp, byte 0x0e                ; 0x64aa
    mov ax, 0                        ; 0x64ad
    push ax                          ; 0x64b0
    push ax                          ; 0x64b1
    mov ax, 0x6e                     ; 0x64b2
    push ax                          ; 0x64b5
    mov ax, 0xd9                     ; 0x64b6
    push ax                          ; 0x64b9
    mov ax, 0x55                     ; 0x64ba
    push ax                          ; 0x64bd
    mov ax, 0xb3                     ; 0x64be
    push ax                          ; 0x64c1
    mov ax, 5                        ; 0x64c2
    push ax                          ; 0x64c5
    call ds_app_0ced                 ; 0x64c6
    add sp, byte 0x0e                ; 0x64c9
    mov ax, 0                        ; 0x64cc
    push ax                          ; 0x64cf
    mov ax, 0x42                     ; 0x64d0
    push ax                          ; 0x64d3
    mov ax, 0x6e                     ; 0x64d4
    push ax                          ; 0x64d7
    mov ax, 0xf2                     ; 0x64d8
    push ax                          ; 0x64db
    mov ax, 0x53                     ; 0x64dc
    push ax                          ; 0x64df
    mov ax, 0xdb                     ; 0x64e0
    push ax                          ; 0x64e3
    mov ax, 6                        ; 0x64e4
    push ax                          ; 0x64e7
    call ds_app_0ced                 ; 0x64e8
    add sp, byte 0x0e                ; 0x64eb
    mov ax, 0                        ; 0x64ee
    push ax                          ; 0x64f1
    mov ax, 0x53                     ; 0x64f2
    push ax                          ; 0x64f5
    mov ax, 0x2f                     ; 0x64f6
    push ax                          ; 0x64f9
    mov ax, 0xd5                     ; 0x64fa
    push ax                          ; 0x64fd
    mov ax, 0xc                      ; 0x64fe
    push ax                          ; 0x6501
    mov ax, 0xaf                     ; 0x6502
    push ax                          ; 0x6505
    mov ax, 7                        ; 0x6506
    push ax                          ; 0x6509
    call ds_app_0ced                 ; 0x650a
    add sp, byte 0x0e                ; 0x650d
    mov ax, 0                        ; 0x6510
    push ax                          ; 0x6513
    push ax                          ; 0x6514
    mov ax, 0x23                     ; 0x6515
    push ax                          ; 0x6518
    mov ax, 0x138                    ; 0x6519
    push ax                          ; 0x651c
    mov ax, 0x1d                     ; 0x651d
    push ax                          ; 0x6520
    mov ax, 0xef                     ; 0x6521
    push ax                          ; 0x6524
    mov ax, 8                        ; 0x6525
    push ax                          ; 0x6528
    call ds_app_0ced                 ; 0x6529
    add sp, byte 0x0e                ; 0x652c
    mov ax, 0                        ; 0x652f
    push ax                          ; 0x6532
    push ax                          ; 0x6533
    mov ax, 0x39                     ; 0x6534
    push ax                          ; 0x6537
    mov ax, 0x116                    ; 0x6538
    push ax                          ; 0x653b
    mov ax, 0x29                     ; 0x653c
    push ax                          ; 0x653f
    mov ax, 0x106                    ; 0x6540
    push ax                          ; 0x6543
    mov ax, 9                        ; 0x6544
    push ax                          ; 0x6547
    call ds_app_0ced                 ; 0x6548
    add sp, byte 0x0e                ; 0x654b
    mov ax, 0                        ; 0x654e
    push ax                          ; 0x6551
    push ax                          ; 0x6552
    mov ax, 0x4e                     ; 0x6553
    push ax                          ; 0x6556
    mov ax, 0x11b                    ; 0x6557
    push ax                          ; 0x655a
    mov ax, 0x3a                     ; 0x655b
    push ax                          ; 0x655e
    mov ax, 0x102                    ; 0x655f
    push ax                          ; 0x6562
    mov ax, 0xa                      ; 0x6563
    push ax                          ; 0x6566
    call ds_app_0ced                 ; 0x6567
    add sp, byte 0x0e                ; 0x656a
    mov ax, 0                        ; 0x656d
    push ax                          ; 0x6570
    push ax                          ; 0x6571
    mov ax, 0x69                     ; 0x6572
    push ax                          ; 0x6575
    mov ax, 0x118                    ; 0x6576
    push ax                          ; 0x6579
    mov ax, 0x4f                     ; 0x657a
    push ax                          ; 0x657d
    mov ax, 0x104                    ; 0x657e
    push ax                          ; 0x6581
    mov ax, 0xb                      ; 0x6582
    push ax                          ; 0x6585
    call ds_app_0ced                 ; 0x6586
    add sp, byte 0x0e                ; 0x6589
    mov ax, 0                        ; 0x658c
    push ax                          ; 0x658f
    push ax                          ; 0x6590
    mov ax, 0x4f                     ; 0x6591
    push ax                          ; 0x6594
    mov ax, 0x12d                    ; 0x6595
    push ax                          ; 0x6598
    mov ax, 0x41                     ; 0x6599
    push ax                          ; 0x659c
    mov ax, 0x11e                    ; 0x659d
    push ax                          ; 0x65a0
    mov ax, 0xc                      ; 0x65a1
    push ax                          ; 0x65a4
    call ds_app_0ced                 ; 0x65a5
    add sp, byte 0x0e                ; 0x65a8
    mov ax, 0                        ; 0x65ab
    push ax                          ; 0x65ae
    push ax                          ; 0x65af
    mov ax, 0x7e                     ; 0x65b0
    push ax                          ; 0x65b3
    mov ax, 0x11f                    ; 0x65b4
    push ax                          ; 0x65b7
    mov ax, 0x6a                     ; 0x65b8
    push ax                          ; 0x65bb
    mov ax, 0x104                    ; 0x65bc
    push ax                          ; 0x65bf
    mov ax, 0xd                      ; 0x65c0
    push ax                          ; 0x65c3
    call ds_app_0ced                 ; 0x65c4
    add sp, byte 0x0e                ; 0x65c7
    mov ax, 0                        ; 0x65ca
    push ax                          ; 0x65cd
    push ax                          ; 0x65ce
    mov ax, 0x48                     ; 0x65cf
    push ax                          ; 0x65d2
    mov ax, 0x13a                    ; 0x65d3
    push ax                          ; 0x65d6
    mov ax, 0x2b                     ; 0x65d7
    push ax                          ; 0x65da
    mov ax, 0x12e                    ; 0x65db
    push ax                          ; 0x65de
    mov ax, 0xe                      ; 0x65df
    push ax                          ; 0x65e2
    call ds_app_0ced                 ; 0x65e3
    add sp, byte 0x0e                ; 0x65e6
    mov word [bp - 0x0002], 0        ; 0x65e9
@..api_idx_0014.l12:
    mov ax, 0                        ; 0x65ee
    push ax                          ; 0x65f1
    mov ax, word [bp - 0x0002]       ; 0x65f2
    inc ax                           ; 0x65f5
    mov cx, 0xa                      ; 0x65f6
    cwd                              ; 0x65f9
    idiv cx                          ; 0x65fa
    mov ax, dx                       ; 0x65fc
    add ax, strict word 0x30         ; 0x65fe
    cbw                              ; 0x6601
    push ax                          ; 0x6602
    mov ax, word [bp - 0x0002]       ; 0x6603
    mov cx, 5                        ; 0x6606
    cwd                              ; 0x6609
    idiv cx                          ; 0x660a
    mov ax, dx                       ; 0x660c
    mov cx, 0xe                      ; 0x660e
    imul cx                          ; 0x6611
    add ax, strict word 0x7d         ; 0x6613
    push ax                          ; 0x6616
    mov ax, word [bp - 0x0002]       ; 0x6617
    mov cx, 5                        ; 0x661a
    cwd                              ; 0x661d
    idiv cx                          ; 0x661e
    mov cx, 0x4f                     ; 0x6620
    imul cx                          ; 0x6623
    add ax, strict word 0x4e         ; 0x6625
    push ax                          ; 0x6628
    mov ax, word [bp - 0x0002]       ; 0x6629
    mov cx, 5                        ; 0x662c
    cwd                              ; 0x662f
    idiv cx                          ; 0x6630
    mov ax, dx                       ; 0x6632
    mov cx, 0xe                      ; 0x6634
    imul cx                          ; 0x6637
    add ax, strict word 0x71         ; 0x6639
    push ax                          ; 0x663c
    mov ax, word [bp - 0x0002]       ; 0x663d
    mov cx, 5                        ; 0x6640
    cwd                              ; 0x6643
    idiv cx                          ; 0x6644
    mov cx, 0x4f                     ; 0x6646
    imul cx                          ; 0x6649
    inc ax                           ; 0x664b
    inc ax                           ; 0x664c
    push ax                          ; 0x664d
    mov ax, word [bp - 0x0002]       ; 0x664e
    add ax, strict word 0xf          ; 0x6651
    push ax                          ; 0x6654
    call ds_app_0ced                 ; 0x6655
    add sp, byte 0x0e                ; 0x6658
    inc word [bp - 0x0002]           ; 0x665b
    mov ax, word [bp - 0x0002]       ; 0x665e
    cmp ax, strict word 0xa          ; 0x6661
    jl short @..api_idx_0014.l12     ; 0x6664
    mov ax, 0                        ; 0x6666
    push ax                          ; 0x6669
    mov ax, 0x4d                     ; 0x666a
    push ax                          ; 0x666d
    mov ax, 0xc2                     ; 0x666e
    push ax                          ; 0x6671
    mov ax, 0x13f                    ; 0x6672
    push ax                          ; 0x6675
    mov ax, 0x83                     ; 0x6676
    push ax                          ; 0x6679
    mov ax, 0xb6                     ; 0x667a
    push ax                          ; 0x667d
    mov ax, 0x19                     ; 0x667e
    push ax                          ; 0x6681
    call ds_app_0ced                 ; 0x6682
    add sp, byte 0x0e                ; 0x6685
    mov ax, 0x1b                     ; 0x6688
    push ax                          ; 0x668b
    mov ax, 0x58                     ; 0x668c
    push ax                          ; 0x668f
    mov ax, 0x78                     ; 0x6690
    push ax                          ; 0x6693
    mov ax, 0x13f                    ; 0x6694
    push ax                          ; 0x6697
    mov ax, 0x1e                     ; 0x6698
    push ax                          ; 0x669b
    mov ax, 0x13b                    ; 0x669c
    push ax                          ; 0x669f
    mov ax, 0x1a                     ; 0x66a0
    push ax                          ; 0x66a3
    call ds_app_0ced                 ; 0x66a4
    add sp, byte 0x0e                ; 0x66a7
    mov ax, 0                        ; 0x66aa
    push ax                          ; 0x66ad
    push ax                          ; 0x66ae
    push ax                          ; 0x66af
    push ax                          ; 0x66b0
    push ax                          ; 0x66b1
    mov ax, 0xffff                   ; 0x66b2
    push ax                          ; 0x66b5
    mov ax, 0x1b                     ; 0x66b6
    push ax                          ; 0x66b9
    call ds_app_0ced                 ; 0x66ba
    add sp, byte 0x0e                ; 0x66bd
@..api_idx_0014.l13:
    push word [bp + 0x4]             ; 0x66c0
    call loc_4011                    ; 0x66c3
    pop cx                           ; 0x66c6
    mov ax, 0x59fe                   ; 0x66c7
    push ax                          ; 0x66ca
    call ds_app_0b54                 ; 0x66cb
    pop cx                           ; 0x66ce
    dec ax                           ; 0x66cf
    mov word [bp - 0x0004], ax       ; 0x66d0
    cmp word [bss_5b3e], byte 0      ; 0x66d3
    je short @..api_idx_0014.l13     ; 0x66d8
    cmp word [bp - 0x0004], byte 0x0f ; 0x66da
    jl short @..api_idx_0014.l15     ; 0x66de
    cmp word [bp - 0x0004], byte 0x19 ; 0x66e0
    jge short @..api_idx_0014.l15    ; 0x66e4
    mov ax, 0x248                    ; 0x66e6
    imul word [bp + 0x4]             ; 0x66e9
    push ax                          ; 0x66ec
    mov ax, 0x78                     ; 0x66ed
    imul word [bss_9434]             ; 0x66f0
    mov cx, ax                       ; 0x66f4
    pop ax                           ; 0x66f6
    add ax, cx                       ; 0x66f7
    push ax                          ; 0x66f9
    mov ax, 0xc                      ; 0x66fa
    imul word [bp - 0x0004]          ; 0x66fd
    mov cx, ax                       ; 0x6700
    pop ax                           ; 0x6702
    add ax, cx                       ; 0x6703
    mov bx, ax                       ; 0x6705
    cmp word [bx + 0x5b80], byte 0   ; 0x6707
    jle short @..api_idx_0014.l14    ; 0x670c
    mov ax, word [bp - 0x0004]       ; 0x670e
    add ax, strict word 0xfff1       ; 0x6711
    push ax                          ; 0x6714
    push word [bp + 0x4]             ; 0x6715
    call api_idx_00c2                ; 0x6718
    add sp, byte 4                   ; 0x671b
    mov ax, word [bss_8af0]          ; 0x671e
    mov word [bp + 0x4], ax          ; 0x6721
@..api_idx_0014.l14:
    jmp near @..api_idx_0014.l20     ; 0x6724
@..api_idx_0014.l15:
    mov ax, word [bp - 0x0004]       ; 0x6727
    jmp near @..api_idx_0014.l19     ; 0x672a
loc_672d:
    push word [bp + 0x4]             ; 0x672d
    call api_idx_0018                ; 0x6730
    pop cx                           ; 0x6733
    jmp near @..api_idx_0014.l20     ; 0x6734
loc_6737:
    cmp word [bp - 0x0006], byte 0   ; 0x6737
    je short @..api_idx_0014.l16     ; 0x673b
    mov ax, word [bp + 0x4]          ; 0x673d
    add ax, word [bss_69c8]          ; 0x6740
    dec ax                           ; 0x6744
    cwd                              ; 0x6745
    idiv word [bss_69c8]             ; 0x6746
    mov word [bss_8af0], dx          ; 0x674a
    mov word [bp + 0x4], dx          ; 0x674e
    mov word [bss_967a], 0           ; 0x6751
@..api_idx_0014.l16:
    jmp near @..api_idx_0014.l20     ; 0x6757
loc_675a:
    cmp word [bp - 0x0006], byte 0   ; 0x675a
    je short @..api_idx_0014.l17     ; 0x675e
    mov ax, word [bp + 0x4]          ; 0x6760
    inc ax                           ; 0x6763
    cwd                              ; 0x6764
    idiv word [bss_69c8]             ; 0x6765
    mov word [bss_8af0], dx          ; 0x6769
    mov word [bp + 0x4], dx          ; 0x676d
    mov word [bss_967a], 0           ; 0x6770
@..api_idx_0014.l17:
    jmp near @..api_idx_0014.l20     ; 0x6776
loc_6779:
    push word [bp + 0x4]             ; 0x6779
    call api_idx_009e                ; 0x677c
    pop cx                           ; 0x677f
    jmp near @..api_idx_0014.l20     ; 0x6780
loc_6783:
    jmp near @..api_idx_0014.l20     ; 0x6783
loc_6786:
    jmp near @..api_idx_0014.l20     ; 0x6786
loc_6789:
    mov ax, word [bss_9434]          ; 0x6789
    inc ax                           ; 0x678c
    mov cx, 2                        ; 0x678d
    cwd                              ; 0x6790
    idiv cx                          ; 0x6791
    mov word [bss_9434], dx          ; 0x6793
    mov word [bss_967a], 0           ; 0x6797
    jmp short @..api_idx_0014.l20    ; 0x679d
loc_679f:
    push word [bp + 0x4]             ; 0x679f
    call api_idx_0084_2              ; 0x67a2
    pop cx                           ; 0x67a5
    jmp short @..api_idx_0014.l20    ; 0x67a6
loc_67a8:
    jmp short @..api_idx_0014.l20    ; 0x67a8
loc_67aa:
    push word [bp + 0x4]             ; 0x67aa
    call ds_app_1ccc                 ; 0x67ad
    pop cx                           ; 0x67b0
    test ax, ax                      ; 0x67b1
    je short @..api_idx_0014.l18     ; 0x67b3
    push word [bp - 0x0006]          ; 0x67b5
    push word [bp + 0x4]             ; 0x67b8
    call api_idx_0004_5              ; 0x67bb
    add sp, byte 4                   ; 0x67be
@..api_idx_0014.l18:
    jmp short @..api_idx_0014.l20    ; 0x67c1
jumptable_67c3:
    dw loc_672d - IMAGE_BASE + 0x5055          ; 0x67c3
    dw loc_6737 - IMAGE_BASE + 0x5055          ; 0x67c5
    dw loc_675a - IMAGE_BASE + 0x5055          ; 0x67c7
    dw loc_6779 - IMAGE_BASE + 0x5055          ; 0x67c9
    dw loc_6783 - IMAGE_BASE + 0x5055          ; 0x67cb
    dw loc_6786 - IMAGE_BASE + 0x5055          ; 0x67cd
    dw loc_6789 - IMAGE_BASE + 0x5055          ; 0x67cf
    dw loc_679f - IMAGE_BASE + 0x5055          ; 0x67d1
    dw loc_67a8 - IMAGE_BASE + 0x5055          ; 0x67d3
    dw loc_67a8 - IMAGE_BASE + 0x5055          ; 0x67d5
    dw loc_67a8 - IMAGE_BASE + 0x5055          ; 0x67d7
    dw loc_67a8 - IMAGE_BASE + 0x5055          ; 0x67d9
    dw loc_67a8 - IMAGE_BASE + 0x5055          ; 0x67db
    dw loc_67a8 - IMAGE_BASE + 0x5055          ; 0x67dd
    dw loc_67a8 - IMAGE_BASE + 0x5055          ; 0x67df
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67e1
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67e3
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67e5
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67e7
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67e9
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67eb
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67ed
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67ef
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67f1
    dw jumptable_67c3_case_15 - IMAGE_BASE + 0x5055 ; 0x67f3
    dw loc_67aa - IMAGE_BASE + 0x5055          ; 0x67f5
@..api_idx_0014.l19:
    cmp ax, strict word 0x1a         ; 0x67f7
    jae short @..api_idx_0014.l20    ; 0x67fa
    xchg bx, ax                      ; 0x67fc
    shl bx, 1                        ; 0x67fd
    jmp [cs:bx - 0x47f6]             ; 0x67ff
jumptable_67c3_case_15:
@..api_idx_0014.l20:
    cmp word [bp - 0x0004], byte 0x1a ; 0x6804
    je short @..api_idx_0014.l21     ; 0x6808
    jmp near @..api_idx_0014.l11     ; 0x680a
@..api_idx_0014.l21:
    cmp word [bss_8450], byte 0      ; 0x680d
    je short @..api_idx_0014.l22     ; 0x6812
    push word [bss_844c]             ; 0x6814
    push word [bss_844e]             ; 0x6818
    call ds_app_2b62                 ; 0x681c
    add sp, byte 4                   ; 0x681f
    mov ax, 0                        ; 0x6822
    push ax                          ; 0x6825
    call ds_app_2b4e                 ; 0x6826
    pop cx                           ; 0x6829
@..api_idx_0014.l22:
    mov ax, 0xf                      ; 0x682a
    push ax                          ; 0x682d
    call ds_app_1371                 ; 0x682e
    pop cx                           ; 0x6831
    mov ax, 0                        ; 0x6832
    push ax                          ; 0x6835
    mov ax, 1                        ; 0x6836
    push ax                          ; 0x6839
    push word [bss_940c]             ; 0x683a
    push word [bss_940a]             ; 0x683e
    call ds_loc_3b89                 ; 0x6842
    add sp, byte 8                   ; 0x6845
    mov ax, 0                        ; 0x6848
    push ax                          ; 0x684b
    mov ax, 1                        ; 0x684c
    push ax                          ; 0x684f
    push word [bss_9404]             ; 0x6850
    push word [bss_9402]             ; 0x6854
    call ds_loc_3b89                 ; 0x6858
    add sp, byte 8                   ; 0x685b
    mov ax, 0                        ; 0x685e
    push ax                          ; 0x6861
    mov ax, 1                        ; 0x6862
    push ax                          ; 0x6865
    push word [bss_9400]             ; 0x6866
    push word [bss_93fe]             ; 0x686a
    call ds_loc_3b89                 ; 0x686e
    add sp, byte 8                   ; 0x6871
    mov ax, 0                        ; 0x6874
    push ax                          ; 0x6877
    mov ax, 1                        ; 0x6878
    push ax                          ; 0x687b
    push word [bss_93fc]             ; 0x687c
    push word [bss_93fa]             ; 0x6880
    call ds_loc_3b89                 ; 0x6884
    add sp, byte 8                   ; 0x6887
    mov ax, 0                        ; 0x688a
    push ax                          ; 0x688d
    mov ax, 1                        ; 0x688e
    push ax                          ; 0x6891
    push word [bss_93f8]             ; 0x6892
    push word [bss_93f6]             ; 0x6896
    call ds_loc_3b89                 ; 0x689a
    add sp, byte 8                   ; 0x689d
    mov ax, 0                        ; 0x68a0
    push ax                          ; 0x68a3
    mov ax, 1                        ; 0x68a4
    push ax                          ; 0x68a7
    push word [bss_93f4]             ; 0x68a8
    push word [bss_93f2]             ; 0x68ac
    call ds_loc_3b89                 ; 0x68b0
    add sp, byte 8                   ; 0x68b3
    mov ax, 0                        ; 0x68b6
    push ax                          ; 0x68b9
    mov ax, 1                        ; 0x68ba
    push ax                          ; 0x68bd
    push word [bss_93f0]             ; 0x68be
    push word [bss_93ee]             ; 0x68c2
    call ds_loc_3b89                 ; 0x68c6
    add sp, byte 8                   ; 0x68c9
    mov ax, 0                        ; 0x68cc
    push ax                          ; 0x68cf
    mov ax, 1                        ; 0x68d0
    push ax                          ; 0x68d3
    push word [bp - 0x0012]          ; 0x68d4
    push word [bp - 0x0014]          ; 0x68d7
    call ds_loc_3b89                 ; 0x68da
    add sp, byte 8                   ; 0x68dd
    call api_idx_000e                ; 0x68e0
    cmp word [bss_905e], byte 0x0d   ; 0x68e3
    jne short @..api_idx_0014.l25    ; 0x68e8
    mov ax, 1                        ; 0x68ea
    push ax                          ; 0x68ed
    mov ax, 0xa                      ; 0x68ee
    push ax                          ; 0x68f1
    push ax                          ; 0x68f2
    call ds_app_file_2923            ; 0x68f3
    add sp, byte 6                   ; 0x68f6
    mov ax, 1                        ; 0x68f9
    push ax                          ; 0x68fc
    mov ax, 0xb                      ; 0x68fd
    push ax                          ; 0x6900
    push ax                          ; 0x6901
    call ds_app_file_2923            ; 0x6902
    add sp, byte 6                   ; 0x6905
    mov ax, 1                        ; 0x6908
    push ax                          ; 0x690b
    mov ax, 0xc                      ; 0x690c
    push ax                          ; 0x690f
    push ax                          ; 0x6910
    call ds_app_file_2923            ; 0x6911
    add sp, byte 6                   ; 0x6914
    mov ax, 7                        ; 0x6917
    push ax                          ; 0x691a
    mov ax, 9                        ; 0x691b
    push ax                          ; 0x691e
    call ds_app_file_2863            ; 0x691f
    add sp, byte 4                   ; 0x6922
    mov word [bp - 0x0002], 0xf      ; 0x6925
@..api_idx_0014.l23:
    mov ax, word [bp - 0x0002]       ; 0x692a
    shl ax, 1                        ; 0x692d
    mov bx, ax                       ; 0x692f
    add bx, bp                       ; 0x6931
    cmp word [bx - 0x002a], strict word 0xff ; 0x6933
    je short @..api_idx_0014.l24     ; 0x6938
    push word [bp - 0x0002]          ; 0x693a
    push word [bx - 0x002a]          ; 0x693d
    call ds_app_file_2863            ; 0x6940
    add sp, byte 4                   ; 0x6943
@..api_idx_0014.l24:
    inc word [bp - 0x0002]           ; 0x6946
    mov ax, word [bp - 0x0002]       ; 0x6949
    cmp ax, strict word 0x12         ; 0x694c
    jl short @..api_idx_0014.l23     ; 0x694f
    jmp short @..api_idx_0014.l26    ; 0x6951
@..api_idx_0014.l25:
    mov ax, 1                        ; 0x6953
    push ax                          ; 0x6956
    call ds_app_1371                 ; 0x6957
    pop cx                           ; 0x695a
    mov ax, 2                        ; 0x695b
    push ax                          ; 0x695e
    call ds_app_1371                 ; 0x695f
    pop cx                           ; 0x6962
@..api_idx_0014.l26:
    mov ax, 0xc7                     ; 0x6963
    push ax                          ; 0x6966
    mov ax, 0x13f                    ; 0x6967
    push ax                          ; 0x696a
    mov ax, 0                        ; 0x696b
    push ax                          ; 0x696e
    push ax                          ; 0x696f
    call ds_loc_3b21                 ; 0x6970
    add sp, byte 8                   ; 0x6973
    ret                              ; 0x6976
