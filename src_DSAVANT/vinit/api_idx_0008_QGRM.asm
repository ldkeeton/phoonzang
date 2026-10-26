; auto-generated
api_idx_0008_QGRM:
    mov ax, 0xfff8                   ; 0x1409
    call aztec_csav                  ; 0x140c
    mov ax, 0                        ; 0x140f
    push ax                          ; 0x1412
    call gfx_set_text_opaque         ; 0x1413
    pop cx                           ; 0x1416
    mov ax, 0                        ; 0x1417
    push ax                          ; 0x141a
    mov ax, 1                        ; 0x141b
    push ax                          ; 0x141e
    call gfx_set_text_color          ; 0x141f
    add sp, byte 4                   ; 0x1422
    mov ax, 0                        ; 0x1425
    push ax                          ; 0x1428
    push ax                          ; 0x1429
    call gfx_set_text_pos            ; 0x142a
    add sp, byte 4                   ; 0x142d
    mov word [bp - 4], 0             ; 0x1430
.back1:
    mov bx, word [bp - 4]            ; 0x1435
    mov byte [bx + picture_slot_number], 0xff ; 0x1438
    mov byte [bx + picture_slot_used], 0 ; 0x143d
    inc word [bp - 4]                ; 0x1442
    mov ax, word [bp - 4]            ; 0x1445
    cmp ax, strict word 0x12         ; 0x1448
    jl short .back1                  ; 0x144b
    mov word [saved_screen_pending], 0 ; 0x144d
    mov word [maze_state], 0         ; 0x1453
    mov word [maze_variant], 0       ; 0x1459
    mov word [current_maze], 0xffff  ; 0x145f
    mov ax, 0                        ; 0x1465
    push ax                          ; 0x1468
    mov ax, 1                        ; 0x1469
    push ax                          ; 0x146c
    call load_monster_picture        ; 0x146d
    add sp, byte 4                   ; 0x1470
    mov ax, 3                        ; 0x1473
    push ax                          ; 0x1476
    mov ax, 4                        ; 0x1477
    push ax                          ; 0x147a
    call load_monster_picture        ; 0x147b
    add sp, byte 4                   ; 0x147e
    mov ax, 4                        ; 0x1481
    push ax                          ; 0x1484
    mov ax, 5                        ; 0x1485
    push ax                          ; 0x1488
    call load_monster_picture        ; 0x1489
    add sp, byte 4                   ; 0x148c
    mov ax, 6                        ; 0x148f
    push ax                          ; 0x1492
    mov ax, 7                        ; 0x1493
    push ax                          ; 0x1496
    call load_monster_picture        ; 0x1497
    add sp, byte 4                   ; 0x149a
    mov ax, 8                        ; 0x149d
    push ax                          ; 0x14a0
    mov ax, 0xc                      ; 0x14a1
    push ax                          ; 0x14a4
    call load_monster_picture        ; 0x14a5
    add sp, byte 4                   ; 0x14a8
    mov ax, 0xe                      ; 0x14ab
    push ax                          ; 0x14ae
    mov ax, 0                        ; 0x14af
    push ax                          ; 0x14b2
    call load_monster_picture        ; 0x14b3
    add sp, byte 4                   ; 0x14b6
    cmp word [startup_check_stage], byte 0 ; 0x14b9
    jne short .forward1              ; 0x14be
    call ds_app_RMGT                 ; 0x14c0
.forward1:
    mov ax, 2                        ; 0x14c3
    push ax                          ; 0x14c6
    mov ax, dseg_91a1                ; 0x14c7
    push ax                          ; 0x14ca
    call load_screen_file            ; 0x14cb
    add sp, byte 4                   ; 0x14ce
    mov word [bp - 2], 0             ; 0x14d1
.back2:
    mov ax, word [bp - 2]            ; 0x14d6
    mov cx, 3                        ; 0x14d9
    cwd                              ; 0x14dc
    idiv cx                          ; 0x14dd
    mov cx, 0x28                     ; 0x14df
    imul cx                          ; 0x14e2
    push ax                          ; 0x14e4
    mov ax, 0x19                     ; 0x14e5
    imul word [bp - 2]               ; 0x14e8
    mov cx, ax                       ; 0x14eb
    pop ax                           ; 0x14ed
    add ax, cx                       ; 0x14ee
    add ax, strict word 0x44         ; 0x14f0
    mov word [bp - 6], ax            ; 0x14f3
    mov word [bp - 8], 6             ; 0x14f6
    mov ax, word [bp - 8]            ; 0x14fb
    add ax, strict word 0xe          ; 0x14fe
    push ax                          ; 0x1501
    mov ax, word [bp - 6]            ; 0x1502
    add ax, strict word 0x11         ; 0x1505
    push ax                          ; 0x1508
    push word [bp - 8]               ; 0x1509
    push word [bp - 6]               ; 0x150c
    call gfx_save_area               ; 0x150f
    add sp, byte 8                   ; 0x1512
    mov cx, word [bp - 2]            ; 0x1515
    shl cx, 1                        ; 0x1518
    shl cx, 1                        ; 0x151a
    mov bx, cx                       ; 0x151c
    mov word [bx + party_status_areas + 0x2], dx ; 0x151e
    mov word [bx + party_status_areas], ax ; 0x1522
    inc word [bp - 2]                ; 0x1526
    mov ax, word [bp - 2]            ; 0x1529
    cmp ax, strict word 6            ; 0x152c
    jl short .back2                  ; 0x152f
    mov word [message_block_current], 0xffff ; 0x1531
    mov word [party_char_count], 0   ; 0x1537
    mov word [bp - 2], 0             ; 0x153d
.back3:
    mov ax, word [bp - 2]            ; 0x1542
    shl ax, 1                        ; 0x1545
    mov bx, ax                       ; 0x1547
    mov word [bx + member_roster_index + 0x2], 0xffff ; 0x1549
    mov ax, word [bp - 2]            ; 0x154f
    mov cx, 2                        ; 0x1552
    cwd                              ; 0x1555
    idiv cx                          ; 0x1556
    mov ax, dx                       ; 0x1558
    mov cx, 0xfc                     ; 0x155a
    imul cx                          ; 0x155d
    add ax, strict word 5            ; 0x155f
    mov word [bp - 6], ax            ; 0x1562
    mov ax, word [bp - 2]            ; 0x1565
    mov cx, 2                        ; 0x1568
    cwd                              ; 0x156b
    idiv cx                          ; 0x156c
    mov cx, 0x2d                     ; 0x156e
    imul cx                          ; 0x1571
    add ax, strict word 0x12         ; 0x1573
    mov word [bp - 8], ax            ; 0x1576
    mov ax, word [bp - 8]            ; 0x1579
    add ax, strict word 0x2b         ; 0x157c
    push ax                          ; 0x157f
    mov ax, word [bp - 6]            ; 0x1580
    add ax, strict word 0x3b         ; 0x1583
    push ax                          ; 0x1586
    push word [bp - 8]               ; 0x1587
    push word [bp - 6]               ; 0x158a
    call gfx_save_area               ; 0x158d
    add sp, byte 8                   ; 0x1590
    mov cx, word [bp - 2]            ; 0x1593
    shl cx, 1                        ; 0x1596
    shl cx, 1                        ; 0x1598
    mov bx, cx                       ; 0x159a
    mov word [bx + panel_area + 0x2], dx ; 0x159c
    mov word [bx + panel_area], ax   ; 0x15a0
    inc word [bp - 2]                ; 0x15a4
    mov ax, word [bp - 2]            ; 0x15a7
    cmp ax, strict word 6            ; 0x15aa
    jl short .back3                  ; 0x15ad
    mov ax, 0xc4                     ; 0x15af
    push ax                          ; 0x15b2
    mov ax, 0x13c                    ; 0x15b3
    push ax                          ; 0x15b6
    mov ax, 0xb9                     ; 0x15b7
    push ax                          ; 0x15ba
    mov ax, 0x131                    ; 0x15bb
    push ax                          ; 0x15be
    call gfx_save_area               ; 0x15bf
    add sp, byte 8                   ; 0x15c2
    mov word [bss_8d08], dx          ; 0x15c5
    mov word [bss_8d06], ax          ; 0x15c9
    mov word [character_record_index], 0 ; 0x15cc
    mov word [game_state], 4         ; 0x15d2
    ret                              ; 0x15d8
