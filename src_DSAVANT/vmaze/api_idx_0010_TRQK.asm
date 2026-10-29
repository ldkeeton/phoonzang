; auto-generated
api_idx_0010_TRQK:
    mov ax, 0xfff0                   ; 0xa2df
    call aztec_csav                  ; 0xa2e2
    mov ax, 0x26                     ; 0xa2e5
    imul word [bp + 4]               ; 0xa2e8
    mov bx, ax                       ; 0xa2eb
    mov al, byte [bx + slot_records + slot_record.f_0003] ; 0xa2ed
    sub ah, ah                       ; 0xa2f1
    push ax                          ; 0xa2f3
    push word [bp + 4]               ; 0xa2f4
    call loc_PQKO                    ; 0xa2f7
    add sp, byte 4                   ; 0xa2fa
    test ax, ax                      ; 0xa2fd
    jne short .forward1              ; 0xa2ff
    mov ax, 0x26                     ; 0xa301
    imul word [bp + 4]               ; 0xa304
    mov bx, ax                       ; 0xa307
    mov byte [bx + slot_records + slot_record.f_0002], 0 ; 0xa309
    ret                              ; 0xa30e
.forward1:
    mov ax, 0x26                     ; 0xa30f
    imul word [bp + 4]               ; 0xa312
    mov bx, ax                       ; 0xa315
    inc byte [bx + slot_records + slot_record.map_piece] ; 0xa317
    mov ax, 3                        ; 0xa31b
    push ax                          ; 0xa31e
    mov ax, 2                        ; 0xa31f
    push ax                          ; 0xa322
    push word [bp + 4]               ; 0xa323
    call api_idx_0002_OOUO           ; 0xa326
    add sp, byte 6                   ; 0xa329
    test ax, ax                      ; 0xa32c
    je short .forward2               ; 0xa32e
    ret                              ; 0xa330
.forward2:
    mov ax, 0x26                     ; 0xa331
    imul word [bp + 4]               ; 0xa334
    mov bx, ax                       ; 0xa337
    mov al, byte [bx + slot_records + slot_record.f_0003] ; 0xa339
    sub ah, ah                       ; 0xa33d
    mov word [bp - 6], ax            ; 0xa33f
    shl ax, 1                        ; 0xa342
    shl ax, 1                        ; 0xa344
    mov bx, ax                       ; 0xa346
    mov al, byte [bx + loaded_short_records] ; 0xa348
    sub ah, ah                       ; 0xa34c
    mov word [bp - 8], ax            ; 0xa34e
    cmp ax, strict word 0            ; 0xa351
    jle short .forward3              ; 0xa354
    mov ax, 4                        ; 0xa356
    push ax                          ; 0xa359
    call random_below                ; 0xa35a
    pop cx                           ; 0xa35d
    test ax, ax                      ; 0xa35e
    jne short .forward3              ; 0xa360
    mov ax, 0x26                     ; 0xa362
    imul word [bp + 4]               ; 0xa365
    mov bx, ax                       ; 0xa368
    mov al, byte [bx + slot_records] ; 0xa36a
    sub ah, ah                       ; 0xa36e
    mov cx, 0xc                      ; 0xa370
    imul cx                          ; 0xa373
    add ax, word [bp - 8]            ; 0xa375
    mov bx, ax                       ; 0xa378
    mov al, byte [bx + target_weight] ; 0xa37a
    cbw                              ; 0xa37e
    mov word [bp - 0xa], ax          ; 0xa37f
    mov ax, 0x64                     ; 0xa382
    push ax                          ; 0xa385
    call random_below                ; 0xa386
    pop cx                           ; 0xa389
    mov cx, ax                       ; 0xa38a
    add ax, strict word 0xff9c       ; 0xa38c
    mov cx, ax                       ; 0xa38f
    mov ax, word [bp - 0xa]          ; 0xa391
    cmp cx, ax                       ; 0xa394
    jle short .forward3              ; 0xa396
    mov ax, 4                        ; 0xa398
    push ax                          ; 0xa39b
    call random_below                ; 0xa39c
    pop cx                           ; 0xa39f
    test ax, ax                      ; 0xa3a0
    jne short .forward3              ; 0xa3a2
    push word [bp + 4]               ; 0xa3a4
    call api_idx_003a_SOVP           ; 0xa3a7
    pop cx                           ; 0xa3aa
    mov ax, 0x26                     ; 0xa3ab
    imul word [bp + 4]               ; 0xa3ae
    mov bx, ax                       ; 0xa3b1
    mov byte [bx + slot_records + slot_record.f_0002], 7 ; 0xa3b3
    ret                              ; 0xa3b8
.forward3:
    mov word [bp - 0xc], 0           ; 0xa3b9
.back1:
    mov ax, word [bp - 0xc]          ; 0xa3be
    cmp ax, word [bp + 4]            ; 0xa3c1
    jne short .forward4              ; 0xa3c4
    jmp near .forward15              ; 0xa3c6
.forward4:
    mov cx, 0x26                     ; 0xa3c9
    imul cx                          ; 0xa3cc
    mov bx, ax                       ; 0xa3ce
    cmp byte [bx + slot_records + slot_record.flag], 0 ; 0xa3d0
    jg short .forward5               ; 0xa3d5
    jmp near .forward15              ; 0xa3d7
.forward5:
    mov ax, 0x16                     ; 0xa3da
    imul word [bp + 4]               ; 0xa3dd
    add ax, word [bp - 0xc]          ; 0xa3e0
    mov bx, ax                       ; 0xa3e3
    cmp byte [bx + slot_pair_processed], 0 ; 0xa3e5
    je short .forward6               ; 0xa3ea
    jmp near .forward15              ; 0xa3ec
.forward6:
    push word [bp - 6]               ; 0xa3ef
    push word [bp - 0xc]             ; 0xa3f2
    call loc_PQKO                    ; 0xa3f5
    add sp, byte 4                   ; 0xa3f8
    test ax, ax                      ; 0xa3fb
    jne short .forward7              ; 0xa3fd
    jmp near .forward15              ; 0xa3ff
.forward7:
    mov ax, 0x26                     ; 0xa402
    imul word [bp - 0xc]             ; 0xa405
    mov bx, ax                       ; 0xa408
    cmp byte [bx + slot_records + slot_record.f_0002], 2 ; 0xa40a
    je short .forward8               ; 0xa40f
    cmp byte [bx + slot_records + slot_record.f_0002], 1 ; 0xa411
    je short .forward8               ; 0xa416
    jmp near .forward15              ; 0xa418
.forward8:
    mov ax, 4                        ; 0xa41b
    push ax                          ; 0xa41e
    call random_below                ; 0xa41f
    pop cx                           ; 0xa422
    test ax, ax                      ; 0xa423
    je short .forward9               ; 0xa425
    jmp near .forward15              ; 0xa427
.forward9:
    mov ax, 0x26                     ; 0xa42a
    imul word [bp + 4]               ; 0xa42d
    mov bx, ax                       ; 0xa430
    mov al, byte [bx + slot_records] ; 0xa432
    sub ah, ah                       ; 0xa436
    mov cx, 0xc                      ; 0xa438
    imul cx                          ; 0xa43b
    push ax                          ; 0xa43d
    mov ax, 0x26                     ; 0xa43e
    imul word [bp - 0xc]             ; 0xa441
    mov bx, ax                       ; 0xa444
    mov al, byte [bx + slot_records] ; 0xa446
    sub ah, ah                       ; 0xa44a
    mov cx, ax                       ; 0xa44c
    pop ax                           ; 0xa44e
    add ax, cx                       ; 0xa44f
    mov bx, ax                       ; 0xa451
    mov al, byte [bx + target_weight] ; 0xa453
    cbw                              ; 0xa457
    mov word [bp - 0xe], ax          ; 0xa458
    mov ax, 0xa                      ; 0xa45b
    push ax                          ; 0xa45e
    call random_below                ; 0xa45f
    pop cx                           ; 0xa462
    mov cx, ax                       ; 0xa463
    add ax, strict word 0x19         ; 0xa465
    mov cx, ax                       ; 0xa468
    mov ax, word [bp - 0xe]          ; 0xa46a
    cmp cx, ax                       ; 0xa46d
    jg short .forward10              ; 0xa46f
    push ax                          ; 0xa471
    push word [bp - 0xc]             ; 0xa472
    push word [bp + 4]               ; 0xa475
    call api_idx_0010_IOJT           ; 0xa478
    add sp, byte 6                   ; 0xa47b
    jmp near .forward15              ; 0xa47e
.forward10:
    mov ax, 0x19                     ; 0xa481
    push ax                          ; 0xa484
    call random_below                ; 0xa485
    pop cx                           ; 0xa488
    mov cx, ax                       ; 0xa489
    mov ax, 0x26                     ; 0xa48b
    imul word [bp + 4]               ; 0xa48e
    mov bx, ax                       ; 0xa491
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa493
    cbw                              ; 0xa497
    push ax                          ; 0xa498
    mov ax, 0x26                     ; 0xa499
    imul word [bp - 0xc]             ; 0xa49c
    mov bx, ax                       ; 0xa49f
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa4a1
    cbw                              ; 0xa4a5
    mov dx, ax                       ; 0xa4a6
    pop ax                           ; 0xa4a8
    sub ax, dx                       ; 0xa4a9
    add ax, strict word 0xffdd       ; 0xa4ab
    sub ax, cx                       ; 0xa4ae
    cmp ax, word [bp - 0xe]          ; 0xa4b0
    jl short .forward13              ; 0xa4b3
    mov ax, 3                        ; 0xa4b5
    push ax                          ; 0xa4b8
    call random_below                ; 0xa4b9
    pop cx                           ; 0xa4bc
    test ax, ax                      ; 0xa4bd
    je short .forward12              ; 0xa4bf
    mov ax, 0x26                     ; 0xa4c1
    imul word [bp + 4]               ; 0xa4c4
    mov bx, ax                       ; 0xa4c7
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa4c9
    cbw                              ; 0xa4cd
    push ax                          ; 0xa4ce
    mov ax, 0x26                     ; 0xa4cf
    imul word [bp - 0xc]             ; 0xa4d2
    mov bx, ax                       ; 0xa4d5
    mov al, byte [bx + slot_records + slot_record.flag] ; 0xa4d7
    cbw                              ; 0xa4db
    mov cx, 2                        ; 0xa4dc
    cwd                              ; 0xa4df
    idiv cx                          ; 0xa4e0
    mov cx, ax                       ; 0xa4e2
    pop ax                           ; 0xa4e4
    cmp ax, cx                       ; 0xa4e5
    jle short .forward12             ; 0xa4e7
    push word [bp - 0xc]             ; 0xa4e9
    push word [bp + 4]               ; 0xa4ec
    call api_idx_0012_UGVV           ; 0xa4ef
    add sp, byte 4                   ; 0xa4f2
    mov word [bp - 4], ax            ; 0xa4f5
    cmp word [bp - 4], byte 0        ; 0xa4f8
    jne short .forward11             ; 0xa4fc
    mov ax, 3                        ; 0xa4fe
    push ax                          ; 0xa501
    call random_below                ; 0xa502
    pop cx                           ; 0xa505
    test ax, ax                      ; 0xa506
    jne short .return1               ; 0xa508
.forward11:
    cmp word [bp - 4], byte -1       ; 0xa50a
    jne short .forward12             ; 0xa50e
.return1:
    ret                              ; 0xa510
.forward12:
    jmp short .forward15             ; 0xa511
.forward13:
    push word [bp - 0xc]             ; 0xa513
    push word [bp + 4]               ; 0xa516
    call mark_slot_pair_processed    ; 0xa519
    add sp, byte 4                   ; 0xa51c
    mov ax, 5                        ; 0xa51f
    push ax                          ; 0xa522
    call random_below                ; 0xa523
    pop cx                           ; 0xa526
    test ax, ax                      ; 0xa527
    jne short .forward14             ; 0xa529
    mov ax, 0x26                     ; 0xa52b
    imul word [bp + 4]               ; 0xa52e
    mov bx, ax                       ; 0xa531
    mov byte [bx + slot_records + slot_record.f_0002], 0 ; 0xa533
.forward14:
    mov ax, 3                        ; 0xa538
    push ax                          ; 0xa53b
    call random_below                ; 0xa53c
    pop cx                           ; 0xa53f
    test ax, ax                      ; 0xa540
    jne short .forward15             ; 0xa542
    ret                              ; 0xa544
.forward15:
    inc word [bp - 0xc]              ; 0xa545
    mov ax, word [bp - 0xc]          ; 0xa548
    cmp ax, strict word 0x16         ; 0xa54b
    jge short .forward16             ; 0xa54e
    jmp near .back1                  ; 0xa550
.forward16:
    mov ax, 0x26                     ; 0xa553
    imul word [bp + 4]               ; 0xa556
    mov bx, ax                       ; 0xa559
    mov al, byte [bx + slot_records + slot_record.map_piece] ; 0xa55b
    sub ah, ah                       ; 0xa55f
    mov cx, 4                        ; 0xa561
    cwd                              ; 0xa564
    idiv cx                          ; 0xa565
    mov ax, dx                       ; 0xa567
    test ax, ax                      ; 0xa569
    jne short .forward17             ; 0xa56b
    push word [bp + 4]               ; 0xa56d
    call api_idx_0006_NNTR           ; 0xa570
    pop cx                           ; 0xa573
    push word [bp + 4]               ; 0xa574
    call api_idx_0002_NMTS           ; 0xa577
    pop cx                           ; 0xa57a
    mov ax, 1                        ; 0xa57b
    push ax                          ; 0xa57e
    push word [bp - 6]               ; 0xa57f
    mov ax, 0x26                     ; 0xa582
    imul word [bp + 4]               ; 0xa585
    add ax, slot_records + slot_record.selected_bits + 0x2 ; 0xa588
    push ax                          ; 0xa58b
    call set_bitmap_bit              ; 0xa58c
    add sp, byte 6                   ; 0xa58f
.forward17:
    mov ax, 0x26                     ; 0xa592
    imul word [bp + 4]               ; 0xa595
    mov bx, ax                       ; 0xa598
    mov al, byte [bx + slot_records + slot_record.f_0001] ; 0xa59a
    sub ah, ah                       ; 0xa59e
    cmp ax, word [bp - 6]            ; 0xa5a0
    jne short .forward18             ; 0xa5a3
    mov al, byte [bx + slot_records + slot_record.f_0019] ; 0xa5a5
    mov byte [bx + slot_records + slot_record.flag], al ; 0xa5a9
.forward18:
    cmp byte [bx + slot_records + slot_record.map_piece], 0x18 ; 0xa5ad
    jbe short .return2               ; 0xa5b2
    mov byte [bx + slot_records + slot_record.f_0002], 0 ; 0xa5b4
.return2:
    ret                              ; 0xa5b9
