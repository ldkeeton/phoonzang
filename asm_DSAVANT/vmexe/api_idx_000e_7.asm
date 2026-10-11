api_idx_000e_7:
    mov ax, 0xfff2                   ; 0x91b5
    call ds_dispatch_f40b            ; 0x91b8
    mov word [dseg_90e4], 0          ; 0x91bb
    mov bx, word [bp + 0x4]          ; 0x91c1
    mov al, byte [bx + 0x1f]         ; 0x91c4
    sub ah, ah                       ; 0x91c7
    mov word [bp - 0x0002], ax       ; 0x91c9
    mov al, byte [bx + 0x20]         ; 0x91cc
    sub ah, ah                       ; 0x91cf
    mov word [bp - 0x0004], ax       ; 0x91d1
    mov word [bp - 0x0006], 1        ; 0x91d4
    mov word [bp - 0x000a], 0        ; 0x91d9
@..api_idx_000e_7.l1:
    mov ax, 0x19                     ; 0x91de
    imul word [bp - 0x000a]          ; 0x91e1
    add ax, strict word 0x19         ; 0x91e4
    mov bx, word [bp + 0x4]          ; 0x91e7
    mov cx, word [bx + 0x2]          ; 0x91ea
    cmp ax, cx                       ; 0x91ed
    jge short @..api_idx_000e_7.l2   ; 0x91ef
    inc word [bp - 0x0006]           ; 0x91f1
@..api_idx_000e_7.l2:
    inc word [bp - 0x000a]           ; 0x91f4
    mov ax, word [bp - 0x000a]       ; 0x91f7
    cmp ax, strict word 6            ; 0x91fa
    jl short @..api_idx_000e_7.l1    ; 0x91fd
    mov ax, word [bp - 0x0006]       ; 0x91ff
    mov bx, word [bp + 0x4]          ; 0x9202
    mov cx, word [bx + 0x6]          ; 0x9205
    mov bx, cx                       ; 0x9208
    imul bx                          ; 0x920a
    push ax                          ; 0x920c
    push dx                          ; 0x920d
    mov bx, word [bp + 0x4]          ; 0x920e
    mov ax, word [bx + 0x8]          ; 0x9211
    cwd                              ; 0x9214
    mov cx, ax                       ; 0x9215
    mov bx, dx                       ; 0x9217
    pop dx                           ; 0x9219
    pop ax                           ; 0x921a
    call ds_dispatch_f99f            ; 0x921b
    inc ax                           ; 0x921e
    mov word [bp - 0x0006], ax       ; 0x921f
    cmp ax, strict word 1            ; 0x9222
    jge short @..api_idx_000e_7.l3   ; 0x9225
    mov word [bp - 0x0006], 1        ; 0x9227
@..api_idx_000e_7.l3:
    cmp word [bp - 0x0006], byte 6   ; 0x922c
    jle short @..api_idx_000e_7.l4   ; 0x9230
    mov word [bp - 0x0006], 6        ; 0x9232
@..api_idx_000e_7.l4:
    mov ax, word [bp - 0x0006]       ; 0x9237
    shl ax, 1                        ; 0x923a
    shl ax, 1                        ; 0x923c
    mov word [bp - 0x0008], ax       ; 0x923e
    mov word [bp - 0x000e], 0        ; 0x9241
    mov bx, word [bp + 0x4]          ; 0x9246
    mov ax, word [bx + 0xa]          ; 0x9249
    jmp near @..api_idx_000e_7.l5    ; 0x924c
    mov ax, 1                        ; 0x924f
    push ax                          ; 0x9252
    mov ax, 0                        ; 0x9253
    push ax                          ; 0x9256
    mov ax, 0x43                     ; 0x9257
    push ax                          ; 0x925a
    mov ax, 0xe74                    ; 0x925b
    push ax                          ; 0x925e
    mov ax, 0xd0c                    ; 0x925f
    push ax                          ; 0x9262
    call api_idx_0006_6              ; 0x9263
    add sp, byte 0x0a                ; 0x9266
    mov ax, 0xb                      ; 0x9269
    push ax                          ; 0x926c
    mov ax, 1                        ; 0x926d
    push ax                          ; 0x9270
    mov ax, 8                        ; 0x9271
    push ax                          ; 0x9274
    mov ax, 0                        ; 0x9275
    push ax                          ; 0x9278
    push word [bp - 0x0002]          ; 0x9279
    call api_idx_0004_9              ; 0x927c
    add sp, byte 0x0a                ; 0x927f
    push word [bp - 0x0008]          ; 0x9282
    mov ax, 1                        ; 0x9285
    push ax                          ; 0x9288
    push word [bp - 0x0006]          ; 0x9289
    mov ax, 5                        ; 0x928c
    push ax                          ; 0x928f
    mov ax, 2                        ; 0x9290
    push ax                          ; 0x9293
    mov ax, 0                        ; 0x9294
    sub ax, word [bp - 0x0006]       ; 0x9297
    push ax                          ; 0x929a
    push word [bp - 0x0002]          ; 0x929b
    call api_idx_000a_3              ; 0x929e
    add sp, byte 0x0e                ; 0x92a1
    mov ax, 4                        ; 0x92a4
    push ax                          ; 0x92a7
    db 0xe8, 0xfe, 0x24 ; call ds_dispatch_b7a9
    pop cx                           ; 0x92ab
    push ax                          ; 0x92ac
    mov bx, word [bp + 0x4]          ; 0x92ad
    mov ax, word [bx + 0x8]          ; 0x92b0
    mov cx, 6                        ; 0x92b3
    cwd                              ; 0x92b6
    idiv cx                          ; 0x92b7
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x92bb
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x92be
    jmp near @..api_idx_000e_7.l6    ; 0x92c1
    mov ax, 1                        ; 0x92c4
    push ax                          ; 0x92c7
    mov ax, 0                        ; 0x92c8
    push ax                          ; 0x92cb
    mov ax, 0x43                     ; 0x92cc
    push ax                          ; 0x92cf
    mov ax, 0xe75                    ; 0x92d0
    push ax                          ; 0x92d3
    mov ax, 0xd14                    ; 0x92d4
    push ax                          ; 0x92d7
    call api_idx_0006_6              ; 0x92d8
    add sp, byte 0x0a                ; 0x92db
    push word [data_90de]            ; 0x92de
    mov ax, 0                        ; 0x92e2
    push ax                          ; 0x92e5
    mov ax, 0x16                     ; 0x92e6
    push ax                          ; 0x92e9
    mov ax, 0                        ; 0x92ea
    push ax                          ; 0x92ed
    push word [bp - 0x0002]          ; 0x92ee
    call api_idx_0004_9              ; 0x92f1
    add sp, byte 0x0a                ; 0x92f4
    push word [bp - 0x0006]          ; 0x92f7
    mov ax, 2                        ; 0x92fa
    push ax                          ; 0x92fd
    push word [bp - 0x0006]          ; 0x92fe
    mov ax, 0                        ; 0x9301
    push ax                          ; 0x9304
    push word [bp - 0x0008]          ; 0x9305
    mov ax, 9                        ; 0x9308
    push ax                          ; 0x930b
    mov ax, 8                        ; 0x930c
    push ax                          ; 0x930f
    mov ax, 0xd9f                    ; 0x9310
    push ax                          ; 0x9313
    mov ax, 0                        ; 0x9314
    sub ax, word [bp - 0x0006]       ; 0x9317
    push ax                          ; 0x931a
    push word [bp - 0x0002]          ; 0x931b
    call api_idx_000a_4              ; 0x931e
    add sp, byte 0x14                ; 0x9321
    mov ax, 4                        ; 0x9324
    push ax                          ; 0x9327
    db 0xe8, 0x7e, 0x24 ; call ds_dispatch_b7a9
    pop cx                           ; 0x932b
    push ax                          ; 0x932c
    mov cx, 8                        ; 0x932d
    mov bx, word [bp + 0x4]          ; 0x9330
    mov ax, word [bx + 0x8]          ; 0x9333
    cwd                              ; 0x9336
    idiv cx                          ; 0x9337
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x933b
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x933e
    jmp near @..api_idx_000e_7.l6    ; 0x9341
    mov ax, 1                        ; 0x9344
    push ax                          ; 0x9347
    mov ax, 0                        ; 0x9348
    push ax                          ; 0x934b
    mov ax, 0x43                     ; 0x934c
    push ax                          ; 0x934f
    mov ax, 0xe76                    ; 0x9350
    push ax                          ; 0x9353
    mov ax, 0xd0c                    ; 0x9354
    push ax                          ; 0x9357
    call api_idx_0006_6              ; 0x9358
    add sp, byte 0x0a                ; 0x935b
    mov ax, 0xb                      ; 0x935e
    push ax                          ; 0x9361
    mov ax, 1                        ; 0x9362
    push ax                          ; 0x9365
    mov ax, 0xa                      ; 0x9366
    push ax                          ; 0x9369
    mov ax, 0                        ; 0x936a
    push ax                          ; 0x936d
    push word [bp - 0x0002]          ; 0x936e
    call api_idx_0004_9              ; 0x9371
    add sp, byte 0x0a                ; 0x9374
    push word [bp - 0x0008]          ; 0x9377
    mov ax, 3                        ; 0x937a
    push ax                          ; 0x937d
    push word [bp - 0x0006]          ; 0x937e
    mov ax, 4                        ; 0x9381
    push ax                          ; 0x9384
    mov ax, 3                        ; 0x9385
    push ax                          ; 0x9388
    mov ax, 0                        ; 0x9389
    sub ax, word [bp - 0x0006]       ; 0x938c
    push ax                          ; 0x938f
    push word [bp - 0x0002]          ; 0x9390
    call api_idx_000a_3              ; 0x9393
    add sp, byte 0x0e                ; 0x9396
    mov ax, 4                        ; 0x9399
    push ax                          ; 0x939c
    db 0xe8, 0x09, 0x24 ; call ds_dispatch_b7a9
    pop cx                           ; 0x93a0
    push ax                          ; 0x93a1
    mov bx, word [bp + 0x4]          ; 0x93a2
    mov ax, word [bx + 0x8]          ; 0x93a5
    mov cx, 6                        ; 0x93a8
    cwd                              ; 0x93ab
    idiv cx                          ; 0x93ac
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x93b0
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x93b3
    jmp near @..api_idx_000e_7.l6    ; 0x93b6
    mov ax, 1                        ; 0x93b9
    push ax                          ; 0x93bc
    mov ax, 0                        ; 0x93bd
    push ax                          ; 0x93c0
    mov ax, 0x43                     ; 0x93c1
    push ax                          ; 0x93c4
    mov ax, 0xe77                    ; 0x93c5
    push ax                          ; 0x93c8
    mov ax, 0xd0c                    ; 0x93c9
    push ax                          ; 0x93cc
    call api_idx_0006_6              ; 0x93cd
    add sp, byte 0x0a                ; 0x93d0
    push word [data_90de]            ; 0x93d3
    mov ax, 1                        ; 0x93d7
    push ax                          ; 0x93da
    mov ax, 0x17                     ; 0x93db
    push ax                          ; 0x93de
    mov ax, 0                        ; 0x93df
    push ax                          ; 0x93e2
    push word [bp - 0x0002]          ; 0x93e3
    call api_idx_0004_9              ; 0x93e6
    add sp, byte 0x0a                ; 0x93e9
    push word [bp - 0x0008]          ; 0x93ec
    mov ax, 8                        ; 0x93ef
    push ax                          ; 0x93f2
    push word [bp - 0x0006]          ; 0x93f3
    mov ax, 7                        ; 0x93f6
    push ax                          ; 0x93f9
    mov ax, 1                        ; 0x93fa
    push ax                          ; 0x93fd
    mov ax, 0                        ; 0x93fe
    sub ax, word [bp - 0x0006]       ; 0x9401
    push ax                          ; 0x9404
    push word [bp - 0x0002]          ; 0x9405
    call api_idx_000a_3              ; 0x9408
    add sp, byte 0x0e                ; 0x940b
    mov ax, 6                        ; 0x940e
    push ax                          ; 0x9411
    db 0xe8, 0x94, 0x23 ; call ds_dispatch_b7a9
    pop cx                           ; 0x9415
    push ax                          ; 0x9416
    mov bx, word [bp + 0x4]          ; 0x9417
    mov ax, word [bx + 0x8]          ; 0x941a
    mov cx, 4                        ; 0x941d
    cwd                              ; 0x9420
    idiv cx                          ; 0x9421
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x9425
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x9428
    jmp near @..api_idx_000e_7.l6    ; 0x942b
    mov ax, 1                        ; 0x942e
    push ax                          ; 0x9431
    mov bx, word [bp + 0x4]          ; 0x9432
    cmp byte [bx + 0xe], 0           ; 0x9435
    jbe short loc_943d               ; 0x9439
    jmp short loc_9440               ; 0x943b
    mov ax, 0                        ; 0x943d
    push ax                          ; 0x9440
    mov ax, 0x43                     ; 0x9441
    push ax                          ; 0x9444
    mov ax, 0xffff                   ; 0x9445
    push ax                          ; 0x9448
    mov ax, 0xd0e                    ; 0x9449
    push ax                          ; 0x944c
    call api_idx_0006_6              ; 0x944d
    add sp, byte 0x0a                ; 0x9450
    test ax, ax                      ; 0x9453
    jne short loc_94b3               ; 0x9455
    push word [data_90de]            ; 0x9457
    mov ax, 0                        ; 0x945b
    push ax                          ; 0x945e
    mov ax, 0xe                      ; 0x945f
    push ax                          ; 0x9462
    mov ax, 0                        ; 0x9463
    push ax                          ; 0x9466
    push word [bp - 0x0002]          ; 0x9467
    call api_idx_0004_9              ; 0x946a
    add sp, byte 0x0a                ; 0x946d
    mov ax, 0xa                      ; 0x9470
    imul word [bp - 0x0006]          ; 0x9473
    push ax                          ; 0x9476
    mov ax, 2                        ; 0x9477
    push ax                          ; 0x947a
    mov ax, 0xa                      ; 0x947b
    imul word [bp - 0x0006]          ; 0x947e
    push ax                          ; 0x9481
    mov ax, 0                        ; 0x9482
    push ax                          ; 0x9485
    mov ax, 7                        ; 0x9486
    push ax                          ; 0x9489
    mov ax, 4                        ; 0x948a
    push ax                          ; 0x948d
    mov ax, 1                        ; 0x948e
    push ax                          ; 0x9491
    push word [bp - 0x0008]          ; 0x9492
    push word [bp - 0x0006]          ; 0x9495
    mov ax, 0xa                      ; 0x9498
    push ax                          ; 0x949b
    mov ax, 0xd97                    ; 0x949c
    push ax                          ; 0x949f
    mov ax, 0                        ; 0x94a0
    mov cx, word [bp - 0x0006]       ; 0x94a3
    inc cx                           ; 0x94a6
    db 0x2b, 0xc1 ; sub ax, cx
    push ax                          ; 0x94a9
    push word [bp - 0x0002]          ; 0x94aa
    call api_idx_000e_4              ; 0x94ad
    add sp, byte 0x1a                ; 0x94b0
    mov ax, 4                        ; 0x94b3
    push ax                          ; 0x94b6
    db 0xe8, 0xef, 0x22 ; call ds_dispatch_b7a9
    pop cx                           ; 0x94ba
    push ax                          ; 0x94bb
    mov bx, word [bp + 0x4]          ; 0x94bc
    mov ax, word [bx + 0x8]          ; 0x94bf
    mov cx, 0xa                      ; 0x94c2
    cwd                              ; 0x94c5
    idiv cx                          ; 0x94c6
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x94ca
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x94cd
    jmp near @..api_idx_000e_7.l6    ; 0x94d0
    jmp near @..api_idx_000e_7.l6    ; 0x94d3
    mov ax, 1                        ; 0x94d6
    push ax                          ; 0x94d9
    mov ax, 0                        ; 0x94da
    push ax                          ; 0x94dd
    mov ax, 0x43                     ; 0x94de
    push ax                          ; 0x94e1
    mov ax, 0xe78                    ; 0x94e2
    push ax                          ; 0x94e5
    mov ax, 0xd0f                    ; 0x94e6
    push ax                          ; 0x94e9
    call api_idx_0006_6              ; 0x94ea
    add sp, byte 0x0a                ; 0x94ed
    push word [data_90de]            ; 0x94f0
    mov ax, 0                        ; 0x94f4
    push ax                          ; 0x94f7
    mov ax, 0xe                      ; 0x94f8
    push ax                          ; 0x94fb
    mov ax, 0                        ; 0x94fc
    push ax                          ; 0x94ff
    push word [bp - 0x0002]          ; 0x9500
    call api_idx_0004_9              ; 0x9503
    add sp, byte 0x0a                ; 0x9506
    push word [bp - 0x0006]          ; 0x9509
    mov ax, 1                        ; 0x950c
    push ax                          ; 0x950f
    mov ax, word [bp - 0x0006]       ; 0x9510
    shl ax, 1                        ; 0x9513
    push ax                          ; 0x9515
    mov ax, 0                        ; 0x9516
    push ax                          ; 0x9519
    push word [bp - 0x0008]          ; 0x951a
    mov ax, 3                        ; 0x951d
    push ax                          ; 0x9520
    mov ax, 4                        ; 0x9521
    push ax                          ; 0x9524
    mov ax, 0xd93                    ; 0x9525
    push ax                          ; 0x9528
    mov ax, 0                        ; 0x9529
    sub ax, word [bp - 0x0006]       ; 0x952c
    push ax                          ; 0x952f
    push word [bp - 0x0002]          ; 0x9530
    call api_idx_000a_4              ; 0x9533
    add sp, byte 0x14                ; 0x9536
    mov ax, 4                        ; 0x9539
    push ax                          ; 0x953c
    db 0xe8, 0x69, 0x22 ; call ds_dispatch_b7a9
    pop cx                           ; 0x9540
    push ax                          ; 0x9541
    mov bx, word [bp + 0x4]          ; 0x9542
    mov ax, word [bx + 0x8]          ; 0x9545
    mov cx, 0xa                      ; 0x9548
    cwd                              ; 0x954b
    idiv cx                          ; 0x954c
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x9550
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x9553
    jmp near @..api_idx_000e_7.l6    ; 0x9556
    mov ax, 1                        ; 0x9559
    push ax                          ; 0x955c
    mov ax, 0                        ; 0x955d
    push ax                          ; 0x9560
    mov ax, 0x43                     ; 0x9561
    push ax                          ; 0x9564
    mov ax, 0xe79                    ; 0x9565
    push ax                          ; 0x9568
    mov ax, 0xd10                    ; 0x9569
    push ax                          ; 0x956c
    call api_idx_0006_6              ; 0x956d
    add sp, byte 0x0a                ; 0x9570
    push word [data_90de]            ; 0x9573
    mov ax, 0                        ; 0x9577
    push ax                          ; 0x957a
    mov ax, 0x17                     ; 0x957b
    push ax                          ; 0x957e
    mov ax, 0                        ; 0x957f
    push ax                          ; 0x9582
    push word [bp - 0x0002]          ; 0x9583
    call api_idx_0004_9              ; 0x9586
    add sp, byte 0x0a                ; 0x9589
    push word [bp - 0x0006]          ; 0x958c
    mov ax, 4                        ; 0x958f
    push ax                          ; 0x9592
    push word [bp - 0x0006]          ; 0x9593
    mov ax, 0                        ; 0x9596
    push ax                          ; 0x9599
    mov ax, 8                        ; 0x959a
    push ax                          ; 0x959d
    mov ax, 6                        ; 0x959e
    push ax                          ; 0x95a1
    mov ax, 1                        ; 0x95a2
    push ax                          ; 0x95a5
    push word [bp - 0x0008]          ; 0x95a6
    push word [bp - 0x0006]          ; 0x95a9
    mov ax, 5                        ; 0x95ac
    push ax                          ; 0x95af
    mov ax, 0xd98                    ; 0x95b0
    push ax                          ; 0x95b3
    mov ax, 0                        ; 0x95b4
    mov cx, word [bp - 0x0006]       ; 0x95b7
    inc cx                           ; 0x95ba
    db 0x2b, 0xc1 ; sub ax, cx
    push ax                          ; 0x95bd
    push word [bp - 0x0002]          ; 0x95be
    call api_idx_000e_4              ; 0x95c1
    add sp, byte 0x1a                ; 0x95c4
    mov ax, 4                        ; 0x95c7
    push ax                          ; 0x95ca
    db 0xe8, 0xdb, 0x21 ; call ds_dispatch_b7a9
    pop cx                           ; 0x95ce
    push ax                          ; 0x95cf
    mov bx, word [bp + 0x4]          ; 0x95d0
    mov ax, word [bx + 0x8]          ; 0x95d3
    mov cx, 6                        ; 0x95d6
    cwd                              ; 0x95d9
    idiv cx                          ; 0x95da
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x95de
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x95e1
    jmp near @..api_idx_000e_7.l6    ; 0x95e4
    mov ax, 1                        ; 0x95e7
    push ax                          ; 0x95ea
    mov ax, 0                        ; 0x95eb
    push ax                          ; 0x95ee
    mov ax, 0x43                     ; 0x95ef
    push ax                          ; 0x95f2
    mov ax, 0xe7a                    ; 0x95f3
    push ax                          ; 0x95f6
    mov ax, 0xd0c                    ; 0x95f7
    push ax                          ; 0x95fa
    call api_idx_0006_6              ; 0x95fb
    add sp, byte 0x0a                ; 0x95fe
    push word [data_90de]            ; 0x9601
    mov ax, 0                        ; 0x9605
    push ax                          ; 0x9608
    mov ax, 0x17                     ; 0x9609
    push ax                          ; 0x960c
    mov ax, 0                        ; 0x960d
    push ax                          ; 0x9610
    push word [bp - 0x0002]          ; 0x9611
    call api_idx_0004_9              ; 0x9614
    add sp, byte 0x0a                ; 0x9617
    push word [bp - 0x0006]          ; 0x961a
    mov ax, 2                        ; 0x961d
    push ax                          ; 0x9620
    mov ax, 0xa                      ; 0x9621
    imul word [bp - 0x0006]          ; 0x9624
    push ax                          ; 0x9627
    mov ax, 0                        ; 0x9628
    push ax                          ; 0x962b
    mov ax, 5                        ; 0x962c
    push ax                          ; 0x962f
    push ax                          ; 0x9630
    mov ax, 1                        ; 0x9631
    push ax                          ; 0x9634
    push word [bp - 0x0008]          ; 0x9635
    push word [bp - 0x0006]          ; 0x9638
    mov ax, 6                        ; 0x963b
    push ax                          ; 0x963e
    mov ax, 0xd95                    ; 0x963f
    push ax                          ; 0x9642
    mov ax, 0                        ; 0x9643
    sub ax, word [bp - 0x0006]       ; 0x9646
    push ax                          ; 0x9649
    push word [bp - 0x0002]          ; 0x964a
    call api_idx_000e_4              ; 0x964d
    add sp, byte 0x1a                ; 0x9650
    mov ax, 3                        ; 0x9653
    push ax                          ; 0x9656
    db 0xe8, 0x4f, 0x21 ; call ds_dispatch_b7a9
    pop cx                           ; 0x965a
    push ax                          ; 0x965b
    mov cx, 8                        ; 0x965c
    mov bx, word [bp + 0x4]          ; 0x965f
    mov ax, word [bx + 0x8]          ; 0x9662
    cwd                              ; 0x9665
    idiv cx                          ; 0x9666
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x966a
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x966d
    jmp near @..api_idx_000e_7.l6    ; 0x9670
    mov ax, 1                        ; 0x9673
    push ax                          ; 0x9676
    mov ax, 0                        ; 0x9677
    push ax                          ; 0x967a
    mov ax, 0x43                     ; 0x967b
    push ax                          ; 0x967e
    mov ax, 0xe7b                    ; 0x967f
    push ax                          ; 0x9682
    mov ax, 0xd11                    ; 0x9683
    push ax                          ; 0x9686
    call api_idx_0006_6              ; 0x9687
    add sp, byte 0x0a                ; 0x968a
    push word [data_90de]            ; 0x968d
    mov ax, 0                        ; 0x9691
    push ax                          ; 0x9694
    mov ax, 0x17                     ; 0x9695
    push ax                          ; 0x9698
    mov ax, 0                        ; 0x9699
    push ax                          ; 0x969c
    push word [bp - 0x0002]          ; 0x969d
    call api_idx_0004_9              ; 0x96a0
    add sp, byte 0x0a                ; 0x96a3
    mov ax, 0xff                     ; 0x96a6
    push ax                          ; 0x96a9
    mov ax, 1                        ; 0x96aa
    push ax                          ; 0x96ad
    push ax                          ; 0x96ae
    mov ax, 0                        ; 0x96af
    push ax                          ; 0x96b2
    mov ax, 6                        ; 0x96b3
    push ax                          ; 0x96b6
    mov ax, 7                        ; 0x96b7
    push ax                          ; 0x96ba
    mov ax, 1                        ; 0x96bb
    push ax                          ; 0x96be
    push word [bp - 0x0008]          ; 0x96bf
    push word [bp - 0x0006]          ; 0x96c2
    mov ax, 7                        ; 0x96c5
    push ax                          ; 0x96c8
    mov ax, 0xdaa                    ; 0x96c9
    push ax                          ; 0x96cc
    mov ax, 0                        ; 0x96cd
    sub ax, word [bp - 0x0006]       ; 0x96d0
    push ax                          ; 0x96d3
    push word [bp - 0x0002]          ; 0x96d4
    call api_idx_000e_4              ; 0x96d7
    add sp, byte 0x1a                ; 0x96da
    mov ax, 5                        ; 0x96dd
    push ax                          ; 0x96e0
    db 0xe8, 0xc5, 0x20 ; call ds_dispatch_b7a9
    pop cx                           ; 0x96e4
    push ax                          ; 0x96e5
    mov bx, word [bp + 0x4]          ; 0x96e6
    mov ax, word [bx + 0x8]          ; 0x96e9
    mov cx, 6                        ; 0x96ec
    cwd                              ; 0x96ef
    idiv cx                          ; 0x96f0
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x96f4
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x96f7
    jmp near @..api_idx_000e_7.l6    ; 0x96fa
    mov ax, 0                        ; 0x96fd
    push ax                          ; 0x9700
    push ax                          ; 0x9701
    mov ax, 0x43                     ; 0x9702
    push ax                          ; 0x9705
    mov ax, 0xe7c                    ; 0x9706
    push ax                          ; 0x9709
    mov ax, 0xd12                    ; 0x970a
    push ax                          ; 0x970d
    call api_idx_0006_6              ; 0x970e
    add sp, byte 0x0a                ; 0x9711
    mov ax, 0xa                      ; 0x9714
    push ax                          ; 0x9717
    mov ax, 0                        ; 0x9718
    push ax                          ; 0x971b
    mov ax, 0x16                     ; 0x971c
    push ax                          ; 0x971f
    mov ax, 0                        ; 0x9720
    push ax                          ; 0x9723
    push word [bp - 0x0002]          ; 0x9724
    call api_idx_0004_9              ; 0x9727
    add sp, byte 0x0a                ; 0x972a
    push word [bp - 0x0006]          ; 0x972d
    mov ax, 2                        ; 0x9730
    push ax                          ; 0x9733
    push word [bp - 0x0006]          ; 0x9734
    mov ax, 0                        ; 0x9737
    push ax                          ; 0x973a
    push word [bp - 0x0008]          ; 0x973b
    mov ax, 2                        ; 0x973e
    push ax                          ; 0x9741
    mov ax, 9                        ; 0x9742
    push ax                          ; 0x9745
    mov ax, 0xd92                    ; 0x9746
    push ax                          ; 0x9749
    mov ax, 0                        ; 0x974a
    mov cx, word [bp - 0x0006]       ; 0x974d
    inc cx                           ; 0x9750
    db 0x2b, 0xc1 ; sub ax, cx
    push ax                          ; 0x9753
    push word [bp - 0x0002]          ; 0x9754
    call api_idx_000a_4              ; 0x9757
    add sp, byte 0x14                ; 0x975a
    mov ax, 3                        ; 0x975d
    push ax                          ; 0x9760
    db 0xe8, 0x45, 0x20 ; call ds_dispatch_b7a9
    pop cx                           ; 0x9764
    push ax                          ; 0x9765
    mov bx, word [bp + 0x4]          ; 0x9766
    mov ax, word [bx + 0x8]          ; 0x9769
    mov cx, 0xa                      ; 0x976c
    cwd                              ; 0x976f
    idiv cx                          ; 0x9770
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x9774
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x9777
    jmp near @..api_idx_000e_7.l6    ; 0x977a
    mov ax, 1                        ; 0x977d
    push ax                          ; 0x9780
    mov bx, word [bp + 0x4]          ; 0x9781
    cmp byte [bx + 0xe], 0           ; 0x9784
    jbe short loc_978c               ; 0x9788
    jmp short loc_978f               ; 0x978a
    mov ax, 0                        ; 0x978c
    push ax                          ; 0x978f
    mov ax, 0x43                     ; 0x9790
    push ax                          ; 0x9793
    mov ax, 0xffff                   ; 0x9794
    push ax                          ; 0x9797
    mov ax, 0xd13                    ; 0x9798
    push ax                          ; 0x979b
    call api_idx_0006_6              ; 0x979c
    add sp, byte 0x0a                ; 0x979f
    test ax, ax                      ; 0x97a2
    jne short loc_97e9               ; 0x97a4
    push word [data_90de]            ; 0x97a6
    mov ax, 0                        ; 0x97aa
    push ax                          ; 0x97ad
    mov ax, 0xe                      ; 0x97ae
    push ax                          ; 0x97b1
    mov ax, 0                        ; 0x97b2
    push ax                          ; 0x97b5
    push word [bp - 0x0002]          ; 0x97b6
    call api_idx_0004_9              ; 0x97b9
    add sp, byte 0x0a                ; 0x97bc
    push word [bp - 0x0006]          ; 0x97bf
    mov ax, 1                        ; 0x97c2
    push ax                          ; 0x97c5
    push word [bp - 0x0006]          ; 0x97c6
    mov ax, 0                        ; 0x97c9
    push ax                          ; 0x97cc
    push word [bp - 0x0008]          ; 0x97cd
    mov ax, 1                        ; 0x97d0
    push ax                          ; 0x97d3
    mov ax, 0xa                      ; 0x97d4
    push ax                          ; 0x97d7
    mov ax, 0xd91                    ; 0x97d8
    push ax                          ; 0x97db
    mov ax, 0xfff6                   ; 0x97dc
    push ax                          ; 0x97df
    push word [bp - 0x0002]          ; 0x97e0
    call api_idx_000a_4              ; 0x97e3
    add sp, byte 0x14                ; 0x97e6
    mov ax, 3                        ; 0x97e9
    push ax                          ; 0x97ec
    db 0xe8, 0xb9, 0x1f ; call ds_dispatch_b7a9
    pop cx                           ; 0x97f0
    push ax                          ; 0x97f1
    mov cx, 8                        ; 0x97f2
    mov bx, word [bp + 0x4]          ; 0x97f5
    mov ax, word [bx + 0x8]          ; 0x97f8
    cwd                              ; 0x97fb
    idiv cx                          ; 0x97fc
    db 0x8b, 0xc8 ; mov cx, ax
    pop ax                           ; 0x9800
    db 0x03, 0xc1 ; add ax, cx
    mov word [bp - 0x000e], ax       ; 0x9803
    jmp short @..api_idx_000e_7.l6   ; 0x9806
    jbe short loc_97f2               ; 0x9808
    xchg si, ax                      ; 0x980a
    loop loc_9818                    ; 0x980b
    jcxz loc_979a                    ; 0x980d
    jcxz loc_982e                    ; 0x980f
    in ax, 0xa0                      ; 0x9811
    in ax, 0x2e                      ; 0x9813
    out 0xba, al                     ; 0x9815
    out 0, al                        ; 0x9817
    in al, 0x44                      ; 0x9819
    out 0x75, ax                     ; 0x981b
    in al, 0xc4                      ; 0x981d
    out 0x1a, ax                     ; 0x981f
    db 0xe5
@..api_idx_000e_7.l5:
    cmp ax, strict word 0xd          ; 0x9822
    jae short @..api_idx_000e_7.l6   ; 0x9825
    xchg bx, ax                      ; 0x9827
    shl bx, 1                        ; 0x9828
    jmp [cs:bx - 0x17b1]             ; 0x982a
@..api_idx_000e_7.l6:
    cmp word [dseg_90e4], byte 0     ; 0x982f
    jne short @..api_idx_000e_7.l7   ; 0x9834
    push word [dseg_9058]            ; 0x9836
    call api_idx_0004_5              ; 0x983a
    pop cx                           ; 0x983d
@..api_idx_000e_7.l7:
    mov ax, word [bp - 0x000e]       ; 0x983e
    ret                              ; 0x9841
loc_9842:
    mov ax, 0                        ; 0x9842
    call ds_dispatch_f40b            ; 0x9845
    push word [dseg_8462]            ; 0x9848
    push word [dseg_8464]            ; 0x984c
    mov ax, 0x90e6                   ; 0x9850
    push ax                          ; 0x9853
    call loc_15ab                    ; 0x9854
    add sp, byte 6                   ; 0x9857
    mov ax, 0x9136                   ; 0x985a
    push ax                          ; 0x985d
    mov ax, 0xcef                    ; 0x985e
    push ax                          ; 0x9861
    call ds_dispatch_b53b            ; 0x9862
    add sp, byte 4                   ; 0x9865
    mov byte [dseg_9186], 0          ; 0x9868
    mov ax, 0x43                     ; 0x986d
    push ax                          ; 0x9870
    push ax                          ; 0x9871
    mov ax, 1                        ; 0x9872
    push ax                          ; 0x9875
    mov ax, 0x9186                   ; 0x9876
    push ax                          ; 0x9879
    mov ax, 0x9136                   ; 0x987a
    push ax                          ; 0x987d
    mov ax, 0x90e6                   ; 0x987e
    push ax                          ; 0x9881
    mov ax, 0                        ; 0x9882
    push ax                          ; 0x9885
    call api_idx_0004_4              ; 0x9886
    add sp, byte 0x0e                ; 0x9889
    mov ax, word [dseg_9058]         ; 0x988c
    mov cx, 2                        ; 0x988f
    cwd                              ; 0x9892
    idiv cx                          ; 0x9893
    push ax                          ; 0x9895
    call api_idx_0004_5              ; 0x9896
    pop cx                           ; 0x9899
    ret                              ; 0x989a
