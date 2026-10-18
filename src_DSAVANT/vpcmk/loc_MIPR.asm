; auto-generated
loc_MIPR:
    mov ax, 0xfd84                   ; 0x62fb
    call aztec_csav                  ; 0x62fe
    mov word [bp - 0x0006], 0        ; 0x6301
    mov ax, 0                        ; 0x6306
    push ax                          ; 0x6309
    mov ax, 0x248                    ; 0x630a
    push ax                          ; 0x630d
    mov ax, 0x248                    ; 0x630e
    imul word [bp - 0x0006]          ; 0x6311
    add ax, 0x5bf4                   ; 0x6314
    push ax                          ; 0x6317
    call aztec_setmem                ; 0x6318
    add sp, byte 6                   ; 0x631b
    push word [bp + 0x4]             ; 0x631e
    mov ax, 0x248                    ; 0x6321
    imul word [bp - 0x0006]          ; 0x6324
    add ax, 0x5bf4                   ; 0x6327
    push ax                          ; 0x632a
    call aztec_strcpy                ; 0x632b
    add sp, byte 4                   ; 0x632e
    mov ax, 0                        ; 0x6331
    push ax                          ; 0x6334
    push ax                          ; 0x6335
    call thunk_3                     ; 0x6336
    add sp, byte 4                   ; 0x6339
    mov ax, 0x4c                     ; 0x633c
    push ax                          ; 0x633f
    mov ax, 0x248                    ; 0x6340
    imul word [bp - 0x0006]          ; 0x6343
    add ax, 0x5bf4                   ; 0x6346
    push ax                          ; 0x6349
    call aztec_strlen                ; 0x634a
    pop cx                           ; 0x634d
    mov cx, 6                        ; 0x634e
    imul cx                          ; 0x6351
    mov cx, 2                        ; 0x6353
    cwd                              ; 0x6356
    idiv cx                          ; 0x6357
    mov cx, ax                       ; 0x6359
    mov ax, 0x28                     ; 0x635b
    sub ax, cx                       ; 0x635e
    push ax                          ; 0x6360
    call thunk                       ; 0x6361
    add sp, byte 4                   ; 0x6364
    mov ax, 0                        ; 0x6367
    push ax                          ; 0x636a
    mov ax, 0x248                    ; 0x636b
    imul word [bp - 0x0006]          ; 0x636e
    add ax, 0x5bf4                   ; 0x6371
    push ax                          ; 0x6374
    call ds_string_loc_QRJV          ; 0x6375
    add sp, byte 4                   ; 0x6378
    mov word [bss_9594], 0xffff      ; 0x637b
    push word [bp - 0x0006]          ; 0x6381
    call api_idx_007a_GTOG           ; 0x6384
    pop cx                           ; 0x6387
    push word [bp - 0x0006]          ; 0x6388
    call api_idx_007a_HMNU           ; 0x638b
    pop cx                           ; 0x638e
    mov ax, 6                        ; 0x638f
    push ax                          ; 0x6392
    call ds_app_PUNN                 ; 0x6393
    pop cx                           ; 0x6396
    add ax, strict word 5            ; 0x6397
    mov word [bss_9594], ax          ; 0x639a
    mov ax, 0x14                     ; 0x639d
    push ax                          ; 0x63a0
    call ds_app_PUNN                 ; 0x63a1
    pop cx                           ; 0x63a4
    test ax, ax                      ; 0x63a5
    jne short @..loc_MIPR.l1         ; 0x63a7
    add word [bss_9594], byte 8      ; 0x63a9
@..loc_MIPR.l1:
    mov ax, 0x14                     ; 0x63ae
    push ax                          ; 0x63b1
    call ds_app_PUNN                 ; 0x63b2
    pop cx                           ; 0x63b5
    test ax, ax                      ; 0x63b6
    jne short @..loc_MIPR.l2         ; 0x63b8
    add word [bss_9594], byte 8      ; 0x63ba
@..loc_MIPR.l2:
    cmp word [bss_9594], byte 9      ; 0x63bf
    jge short @..loc_MIPR.l3         ; 0x63c4
    mov ax, 4                        ; 0x63c6
    push ax                          ; 0x63c9
    call ds_app_PUNN                 ; 0x63ca
    pop cx                           ; 0x63cd
    add ax, strict word 8            ; 0x63ce
    mov word [bss_9594], ax          ; 0x63d1
@..loc_MIPR.l3:
    cmp word [bss_978a], byte 1      ; 0x63d4
    jne short @..loc_MIPR.l4         ; 0x63d9
    mov ax, 0xa                      ; 0x63db
    push ax                          ; 0x63de
    call ds_app_PUNN                 ; 0x63df
    pop cx                           ; 0x63e2
    add ax, strict word 0x15         ; 0x63e3
    mov word [bss_9594], ax          ; 0x63e6
@..loc_MIPR.l4:
    mov ax, 1                        ; 0x63e9
    push ax                          ; 0x63ec
    push word [bp - 0x0006]          ; 0x63ed
    call api_idx_0002_SSJN           ; 0x63f0
    add sp, byte 4                   ; 0x63f3
    push word [bp - 0x0006]          ; 0x63f6
    call api_idx_007c_MIHQ           ; 0x63f9
    pop cx                           ; 0x63fc
    push word [bp - 0x0006]          ; 0x63fd
    call api_idx_006c_JNMM           ; 0x6400
    pop cx                           ; 0x6403
    push word [bp - 0x0006]          ; 0x6404
    call api_idx_0002_IVMI           ; 0x6407
    pop cx                           ; 0x640a
    push word [bp - 0x0006]          ; 0x640b
    call loc_LTLR                    ; 0x640e
    pop cx                           ; 0x6411
    push word [bp - 0x0006]          ; 0x6412
    call api_idx_0054_RLST           ; 0x6415
    pop cx                           ; 0x6418
    mov ax, 0                        ; 0x6419
    push ax                          ; 0x641c
    push word [bp - 0x0006]          ; 0x641d
    call api_idx_0002_SSJN           ; 0x6420
    add sp, byte 4                   ; 0x6423
    mov ax, 0xc7                     ; 0x6426
    push ax                          ; 0x6429
    mov ax, 0x13f                    ; 0x642a
    push ax                          ; 0x642d
    mov ax, 0                        ; 0x642e
    push ax                          ; 0x6431
    push ax                          ; 0x6432
    call thunk_4                     ; 0x6433
    add sp, byte 8                   ; 0x6436
    mov ax, 0x4a                     ; 0x6439
    push ax                          ; 0x643c
    mov ax, 0x42                     ; 0x643d
    push ax                          ; 0x6440
    mov ax, 0x12                     ; 0x6441
    push ax                          ; 0x6444
    mov ax, 0xe                      ; 0x6445
    push ax                          ; 0x6448
    call thunk_10                    ; 0x6449
    add sp, byte 8                   ; 0x644c
    mov word [bp - 0x027a], dx       ; 0x644f
    mov word [bp - 0x027c], ax       ; 0x6453
    mov ax, 0x248                    ; 0x6457
    imul word [bp - 0x0006]          ; 0x645a
    mov bx, ax                       ; 0x645d
    mov byte [bx + bss_5e2a], 0      ; 0x645f
    push word [bp - 0x027a]          ; 0x6464
    push word [bp - 0x027c]          ; 0x6468
    push word [bp - 0x0006]          ; 0x646c
    call api_idx_0006_HMNQ           ; 0x646f
    add sp, byte 6                   ; 0x6472
    mov ax, 1                        ; 0x6475
    push ax                          ; 0x6478
    push word [bp - 0x027a]          ; 0x6479
    push word [bp - 0x027c]          ; 0x647d
    call thunk_13                    ; 0x6481
    add sp, byte 6                   ; 0x6484
    mov ax, 0                        ; 0x6487
    push ax                          ; 0x648a
    mov ax, 0x248                    ; 0x648b
    imul word [bp - 0x0006]          ; 0x648e
    mov bx, ax                       ; 0x6491
    mov al, byte [bx + bss_5e2a]     ; 0x6493
    sub ah, ah                       ; 0x6497
    push ax                          ; 0x6499
    call api_idx_0016_JNJG           ; 0x649a
    add sp, byte 4                   ; 0x649d
    mov ax, 0x12                     ; 0x64a0
    push ax                          ; 0x64a3
    mov ax, 0xe                      ; 0x64a4
    push ax                          ; 0x64a7
    push word [bp - 0x0006]          ; 0x64a8
    call api_idx_0010_GGGV           ; 0x64ab
    add sp, byte 6                   ; 0x64ae
    mov word [bp - 0x0004], 0        ; 0x64b1
    mov word [bp - 0x0002], 0        ; 0x64b6
@..loc_MIPR.l5:
    mov ax, word [bp - 0x0002]       ; 0x64bb
    shl ax, 1                        ; 0x64be
    mov bx, ax                       ; 0x64c0
    mov ax, word [bx - 0x69f8]       ; 0x64c2
    add word [bp - 0x0004], ax       ; 0x64c6
    inc word [bp - 0x0002]           ; 0x64c9
    mov ax, word [bp - 0x0002]       ; 0x64cc
    cmp ax, strict word 4            ; 0x64cf
    jl short @..loc_MIPR.l5          ; 0x64d2
    cmp word [bp - 0x0004], byte 0   ; 0x64d4
    jle short @..loc_MIPR.l6         ; 0x64d8
    mov ax, 0x25e                    ; 0x64da
    push ax                          ; 0x64dd
    push word [bp - 0x0006]          ; 0x64de
    call api_idx_0088_QLNT           ; 0x64e1
    add sp, byte 4                   ; 0x64e4
    mov ax, 0                        ; 0x64e7
    push ax                          ; 0x64ea
    push ax                          ; 0x64eb
    push word [bss_952e]             ; 0x64ec
    push word [bss_952c]             ; 0x64f0
    call thunk_12                    ; 0x64f4
    add sp, byte 8                   ; 0x64f7
    mov ax, 0xc6                     ; 0x64fa
    push ax                          ; 0x64fd
    mov ax, 0x13c                    ; 0x64fe
    push ax                          ; 0x6501
    mov ax, 0x70                     ; 0x6502
    push ax                          ; 0x6505
    mov ax, 1                        ; 0x6506
    push ax                          ; 0x6509
    call thunk_4                     ; 0x650a
    add sp, byte 8                   ; 0x650d
@..loc_MIPR.l6:
    mov word [bp - 0x0002], 0        ; 0x6510
@..loc_MIPR.l7:
    mov ax, 0x248                    ; 0x6515
    imul word [bp - 0x0006]          ; 0x6518
    add ax, word [bp - 0x0002]       ; 0x651b
    mov bx, ax                       ; 0x651e
    cmp byte [bx + 0x5d50], 0        ; 0x6520
    jbe short @..loc_MIPR.l8         ; 0x6525
    push word [bp - 0x0002]          ; 0x6527
    push word [bp - 0x0006]          ; 0x652a
    call api_idx_006e_LVOK           ; 0x652d
    add sp, byte 4                   ; 0x6530
    jmp short @..loc_MIPR.l7         ; 0x6533
@..loc_MIPR.l8:
    inc word [bp - 0x0002]           ; 0x6535
    mov ax, word [bp - 0x0002]       ; 0x6538
    cmp ax, strict word 4            ; 0x653b
    jl short @..loc_MIPR.l7          ; 0x653e
    push word [bp - 0x0006]          ; 0x6540
    call api_idx_0008_VHMQ           ; 0x6543
    pop cx                           ; 0x6546
    push word [bp - 0x0006]          ; 0x6547
    call api_idx_0002_SLKJ           ; 0x654a
    pop cx                           ; 0x654d
    mov word [bp - 0x0030], 1        ; 0x654e
    mov word [bp - 0x002e], 1        ; 0x6553
    mov word [bp - 0x002c], 0xffff   ; 0x6558
    lea ax, word [bp - 0x0030]       ; 0x655d
    push ax                          ; 0x6560
    mov ax, 0                        ; 0x6561
    push ax                          ; 0x6564
    mov ax, 0xffff                   ; 0x6565
    push ax                          ; 0x6568
    mov ax, 1                        ; 0x6569
    push ax                          ; 0x656c
    mov ax, 2                        ; 0x656d
    push ax                          ; 0x6570
    mov ax, 1                        ; 0x6571
    push ax                          ; 0x6574
    mov ax, 0xc                      ; 0x6575
    push ax                          ; 0x6578
    mov ax, 0x6a                     ; 0x6579
    push ax                          ; 0x657c
    mov ax, 0xb                      ; 0x657d
    push ax                          ; 0x6580
    mov ax, 0xb4                     ; 0x6581
    push ax                          ; 0x6584
    mov ax, 0x4a                     ; 0x6585
    push ax                          ; 0x6588
    mov ax, 0x467                    ; 0x6589
    push ax                          ; 0x658c
    mov ax, 0x468                    ; 0x658d
    push ax                          ; 0x6590
    call loc_TRPK                    ; 0x6591
    add sp, byte 0x1a                ; 0x6594
    mov word [bp - 0x0004], ax       ; 0x6597
    cmp word [bp - 0x0004], byte 0   ; 0x659a
    jne short @..loc_MIPR.l9         ; 0x659e
    mov ax, 1                        ; 0x65a0
    push ax                          ; 0x65a3
    push word [bp + 0x6]             ; 0x65a4
    mov ax, 0x248                    ; 0x65a7
    imul word [bp - 0x0006]          ; 0x65aa
    add ax, 0x5bf4                   ; 0x65ad
    push ax                          ; 0x65b0
    call api_idx_0002_SJMT           ; 0x65b1
    add sp, byte 6                   ; 0x65b4
    mov bx, word [bp + 0x6]          ; 0x65b7
    mov byte [bx - 0x6f8a], 1        ; 0x65ba
    mov ax, 0                        ; 0x65bf
    push ax                          ; 0x65c2
    call thunk_17                    ; 0x65c3
    pop cx                           ; 0x65c6
    mov ax, 2                        ; 0x65c7
    push ax                          ; 0x65ca
    mov ax, 0                        ; 0x65cb
    push ax                          ; 0x65ce
    mov ax, 0x94f6                   ; 0x65cf
    push ax                          ; 0x65d2
    call ds_app_UUHT                 ; 0x65d3
    add sp, byte 4                   ; 0x65d6
    push ax                          ; 0x65d9
    call aztec_open                  ; 0x65da
    add sp, byte 4                   ; 0x65dd
    mov word [bp - 0x0008], ax       ; 0x65e0
    mov ax, 0x18                     ; 0x65e3
    push ax                          ; 0x65e6
    mov ax, 0x906e                   ; 0x65e7
    push ax                          ; 0x65ea
    push word [bp - 0x0008]          ; 0x65eb
    call aztec_write                 ; 0x65ee
    add sp, byte 6                   ; 0x65f1
    push word [bp - 0x0008]          ; 0x65f4
    call aztec_close                 ; 0x65f7
    pop cx                           ; 0x65fa
@..loc_MIPR.l9:
    ret                              ; 0x65fb
