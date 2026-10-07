math_loc_62fb:
    mov ax, 0xfd84                   ; 0x62fb
    call ds_dispatch_f40b            ; 0x62fe
    mov word [bp - 0x0006], 0        ; 0x6301
    mov ax, 0                        ; 0x6306
    push ax                          ; 0x6309
    mov ax, 0x248                    ; 0x630a
    push ax                          ; 0x630d
    mov ax, 0x248                    ; 0x630e
    imul word [bp - 0x0006]          ; 0x6311
    add ax, 0x5bf4                   ; 0x6314
    push ax                          ; 0x6317
    call ds_dispatch_f306            ; 0x6318
    add sp, byte 6                   ; 0x631b
    push word [bp + 0x4]             ; 0x631e
    mov ax, 0x248                    ; 0x6321
    imul word [bp - 0x0006]          ; 0x6324
    add ax, 0x5bf4                   ; 0x6327
    push ax                          ; 0x632a
    call ds_dispatch_f364            ; 0x632b
    add sp, byte 4                   ; 0x632e
    mov ax, 0                        ; 0x6331
    push ax                          ; 0x6334
    push ax                          ; 0x6335
    call ds_dispatch_e823            ; 0x6336
    add sp, byte 4                   ; 0x6339
    mov ax, 0x4c                     ; 0x633c
    push ax                          ; 0x633f
    mov ax, 0x248                    ; 0x6340
    imul word [bp - 0x0006]          ; 0x6343
    add ax, 0x5bf4                   ; 0x6346
    push ax                          ; 0x6349
    call ds_dispatch_fa90            ; 0x634a
    pop cx                           ; 0x634d
    mov cx, 6                        ; 0x634e
    imul cx                          ; 0x6351
    mov cx, data_0002                ; 0x6353
    cwd                              ; 0x6356
    idiv cx                          ; 0x6357
    mov cx, ax                       ; 0x6359
    mov ax, 0x28                     ; 0x635b
    sub ax, cx                       ; 0x635e
    push ax                          ; 0x6360
    call ds_dispatch_e809            ; 0x6361
    add sp, byte 4                   ; 0x6364
    mov ax, 0                        ; 0x6367
    push ax                          ; 0x636a
    mov ax, 0x248                    ; 0x636b
    imul word [bp - 0x0006]          ; 0x636e
    add ax, 0x5bf4                   ; 0x6371
    push ax                          ; 0x6374
    call ds_dispatch_e84e            ; 0x6375
    add sp, byte 4                   ; 0x6378
    mov word [data_9594], 0xffff     ; 0x637b
    push word [bp - 0x0006]          ; 0x6381
    call api_idx_007a                ; 0x6384
    pop cx                           ; 0x6387
    push word [bp - 0x0006]          ; 0x6388
    call api_idx_007a_2              ; 0x638b
    pop cx                           ; 0x638e
    mov ax, 6                        ; 0x638f
    push ax                          ; 0x6392
    call ds_dispatch_b7a9            ; 0x6393
    pop cx                           ; 0x6396
    add ax, strict word 5            ; 0x6397
    mov word [data_9594], ax         ; 0x639a
    mov ax, 0x14                     ; 0x639d
    push ax                          ; 0x63a0
    call ds_dispatch_b7a9            ; 0x63a1
    pop cx                           ; 0x63a4
    test ax, ax                      ; 0x63a5
    jne short @..math_loc_62fb.l1    ; 0x63a7
    add word [data_9594], byte 8     ; 0x63a9
@..math_loc_62fb.l1:
    mov ax, 0x14                     ; 0x63ae
    push ax                          ; 0x63b1
    call ds_dispatch_b7a9            ; 0x63b2
    pop cx                           ; 0x63b5
    test ax, ax                      ; 0x63b6
    jne short @..math_loc_62fb.l2    ; 0x63b8
    add word [data_9594], byte 8     ; 0x63ba
@..math_loc_62fb.l2:
    cmp word [data_9594], byte 9     ; 0x63bf
    jge short @..math_loc_62fb.l3    ; 0x63c4
    mov ax, 4                        ; 0x63c6
    push ax                          ; 0x63c9
    call ds_dispatch_b7a9            ; 0x63ca
    pop cx                           ; 0x63cd
    add ax, strict word 8            ; 0x63ce
    mov word [data_9594], ax         ; 0x63d1
@..math_loc_62fb.l3:
    cmp word [data_978a], byte 1     ; 0x63d4
    jne short @..math_loc_62fb.l4    ; 0x63d9
    mov ax, 0xa                      ; 0x63db
    push ax                          ; 0x63de
    call ds_dispatch_b7a9            ; 0x63df
    pop cx                           ; 0x63e2
    add ax, strict word 0x15         ; 0x63e3
    mov word [data_9594], ax         ; 0x63e6
@..math_loc_62fb.l4:
    mov ax, 1                        ; 0x63e9
    push ax                          ; 0x63ec
    push word [bp - 0x0006]          ; 0x63ed
    call api_idx_0002_5              ; 0x63f0
    add sp, byte 4                   ; 0x63f3
    push word [bp - 0x0006]          ; 0x63f6
    call api_idx_007c                ; 0x63f9
    pop cx                           ; 0x63fc
    push word [bp - 0x0006]          ; 0x63fd
    call api_idx_006c                ; 0x6400
    pop cx                           ; 0x6403
    push word [bp - 0x0006]          ; 0x6404
    call api_idx_0002_12             ; 0x6407
    pop cx                           ; 0x640a
    push word [bp - 0x0006]          ; 0x640b
    call math_loc_4c82               ; 0x640e
    pop cx                           ; 0x6411
    push word [bp - 0x0006]          ; 0x6412
    call api_idx_0054                ; 0x6415
    pop cx                           ; 0x6418
    mov ax, 0                        ; 0x6419
    push ax                          ; 0x641c
    push word [bp - 0x0006]          ; 0x641d
    call api_idx_0002_5              ; 0x6420
    add sp, byte 4                   ; 0x6423
    mov ax, 0xc7                     ; 0x6426
    push ax                          ; 0x6429
    mov ax, 0x13f                    ; 0x642a
    push ax                          ; 0x642d
    mov ax, 0                        ; 0x642e
    push ax                          ; 0x6431
    push ax                          ; 0x6432
    call ds_dispatch_e8da            ; 0x6433
    add sp, byte 8                   ; 0x6436
    mov ax, 0x4a                     ; 0x6439
    push ax                          ; 0x643c
    mov ax, data_0042                ; 0x643d
    push ax                          ; 0x6440
    mov ax, 0x12                     ; 0x6441
    push ax                          ; 0x6444
    mov ax, 0xe                      ; 0x6445
    push ax                          ; 0x6448
    call ds_dispatch_e928            ; 0x6449
    add sp, byte 8                   ; 0x644c
    mov word [bp - 0x027a], dx       ; 0x644f
    mov word [bp - 0x027c], ax       ; 0x6453
    mov ax, 0x248                    ; 0x6457
    imul word [bp - 0x0006]          ; 0x645a
    mov bx, ax                       ; 0x645d
    mov byte [bx + 0x5e2a], 0        ; 0x645f
    push word [bp - 0x027a]          ; 0x6464
    push word [bp - 0x027c]          ; 0x6468
    push word [bp - 0x0006]          ; 0x646c
    call api_idx_0006_3              ; 0x646f
    add sp, byte 6                   ; 0x6472
    mov ax, 1                        ; 0x6475
    push ax                          ; 0x6478
    push word [bp - 0x027a]          ; 0x6479
    push word [bp - 0x027c]          ; 0x647d
    call ds_dispatch_e94f            ; 0x6481
    add sp, byte 6                   ; 0x6484
    mov ax, 0                        ; 0x6487
    push ax                          ; 0x648a
    mov ax, 0x248                    ; 0x648b
    imul word [bp - 0x0006]          ; 0x648e
    mov bx, ax                       ; 0x6491
    mov al, byte [bx + 0x5e2a]       ; 0x6493
    sub ah, ah                       ; 0x6497
    push ax                          ; 0x6499
    call api_idx_0016                ; 0x649a
    add sp, byte 4                   ; 0x649d
    mov ax, 0x12                     ; 0x64a0
    push ax                          ; 0x64a3
    mov ax, 0xe                      ; 0x64a4
    push ax                          ; 0x64a7
    push word [bp - 0x0006]          ; 0x64a8
    call api_idx_0010                ; 0x64ab
    add sp, byte 6                   ; 0x64ae
    mov word [bp - 0x0004], 0        ; 0x64b1
    mov word [bp - 0x0002], 0        ; 0x64b6
@..math_loc_62fb.l5:
    mov ax, word [bp - 0x0002]       ; 0x64bb
    shl ax, 1                        ; 0x64be
    mov bx, ax                       ; 0x64c0
    mov ax, word [bx - 0x69f8]       ; 0x64c2
    add word [bp - 0x0004], ax       ; 0x64c6
    inc word [bp - 0x0002]           ; 0x64c9
    mov ax, word [bp - 0x0002]       ; 0x64cc
    cmp ax, strict word 4            ; 0x64cf
    jl short @..math_loc_62fb.l5     ; 0x64d2
    cmp word [bp - 0x0004], byte 0   ; 0x64d4
    jle short @..math_loc_62fb.l6    ; 0x64d8
    mov ax, 0x25e                    ; 0x64da
    push ax                          ; 0x64dd
    push word [bp - 0x0006]          ; 0x64de
    call api_idx_0088                ; 0x64e1
    add sp, byte 4                   ; 0x64e4
    mov ax, 0                        ; 0x64e7
    push ax                          ; 0x64ea
    push ax                          ; 0x64eb
    push word [data_952e]            ; 0x64ec
    push word [data_952c]            ; 0x64f0
    call ds_dispatch_e942            ; 0x64f4
    add sp, byte 8                   ; 0x64f7
