; auto-generated
api_idx_0004_IHHI:
    mov ax, 0xfffc                   ; 0x13f7
    call aztec_csav                  ; 0x13fa
    cmp word [save_location_flag], byte 0 ; 0x13fd
    je short @..api_idx_0004_IHHI.l1 ; 0x1402
    mov ax, word [party_map_piece]   ; 0x1404
    mov word [saved_map_piece], ax   ; 0x1407
    mov ax, word [party_cell_x]      ; 0x140a
    mov word [saved_cell_x], ax      ; 0x140d
    mov ax, word [party_cell_y]      ; 0x1410
    mov word [saved_cell_y], ax      ; 0x1413
    ret                              ; 0x1416
@..api_idx_0004_IHHI.l1:
    call redraw_maze_view            ; 0x1417
    mov word [bp - 2], 0             ; 0x141a
    jmp near @..api_idx_0004_IHHI.l7 ; 0x141f
@..api_idx_0004_IHHI.l2:
    push word [bp - 2]               ; 0x1422
    call member_is_active            ; 0x1425
    pop cx                           ; 0x1428
    test ax, ax                      ; 0x1429
    jne short @..api_idx_0004_IHHI.l4 ; 0x142b
    mov ax, 0x248                    ; 0x142d
    imul word [bp - 2]               ; 0x1430
    mov bx, ax                       ; 0x1433
    cmp byte [bx + party_records + pc_rec.state], 3 ; 0x1435
    jae short @..api_idx_0004_IHHI.l3 ; 0x143a
    mov ax, 1                        ; 0x143c
    push ax                          ; 0x143f
    push word [bp - 2]               ; 0x1440
    call loc_QTKU                    ; 0x1443
    add sp, byte 4                   ; 0x1446
    mov ax, 0                        ; 0x1449
    push ax                          ; 0x144c
    mov ax, MSG_DROWNED              ; 0x144d
    push ax                          ; 0x1450
    push word [bp - 2]               ; 0x1451
    call api_idx_0050_QVOG           ; 0x1454
    add sp, byte 6                   ; 0x1457
@..api_idx_0004_IHHI.l3:
    jmp near @..api_idx_0004_IHHI.l6 ; 0x145a
@..api_idx_0004_IHHI.l4:
    mov ax, 4                        ; 0x145d
    push ax                          ; 0x1460
    call random_below                ; 0x1461
    pop cx                           ; 0x1464
    mov cx, ax                       ; 0x1465
    add ax, strict word 7            ; 0x1467
    mov cx, ax                       ; 0x146a
    mov ax, 0x248                    ; 0x146c
    imul word [bp - 2]               ; 0x146f
    mov bx, ax                       ; 0x1472
    mov al, byte [bx + party_records + pc_rec.flag + 0xa] ; 0x1474
    sub ah, ah                       ; 0x1478
    cwd                              ; 0x147a
    idiv cx                          ; 0x147b
    mov cx, ax                       ; 0x147d
    inc ax                           ; 0x147f
    mov cx, ax                       ; 0x1480
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x1482
    cwd                              ; 0x1486
    idiv cx                          ; 0x1487
    push ax                          ; 0x1489
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x148a
    mov cx, 0xa                      ; 0x148e
    cwd                              ; 0x1491
    idiv cx                          ; 0x1492
    push ax                          ; 0x1494
    call random_below                ; 0x1495
    pop cx                           ; 0x1498
    mov cx, ax                       ; 0x1499
    pop ax                           ; 0x149b
    add ax, cx                       ; 0x149c
    mov word [bp - 4], ax            ; 0x149e
    push ax                          ; 0x14a1
    mov ax, 0x248                    ; 0x14a2
    imul word [bp - 2]               ; 0x14a5
    mov bx, ax                       ; 0x14a8
    pop ax                           ; 0x14aa
    sub word [bx + party_records + pc_rec.pair_b], ax ; 0x14ab
    cmp word [bx + party_records + pc_rec.pair_b], byte 0 ; 0x14af
    jg short @..api_idx_0004_IHHI.l5 ; 0x14b4
    mov ax, 1                        ; 0x14b6
    push ax                          ; 0x14b9
    push word [bp - 2]               ; 0x14ba
    call loc_QTKU                    ; 0x14bd
    add sp, byte 4                   ; 0x14c0
    mov ax, 0                        ; 0x14c3
    push ax                          ; 0x14c6
    mov ax, MSG_DROWNED              ; 0x14c7
    push ax                          ; 0x14ca
    push word [bp - 2]               ; 0x14cb
    call api_idx_0050_QVOG           ; 0x14ce
    add sp, byte 6                   ; 0x14d1
    jmp short @..api_idx_0004_IHHI.l6 ; 0x14d4
@..api_idx_0004_IHHI.l5:
    mov ax, 3                        ; 0x14d6
    push ax                          ; 0x14d9
    mov ax, 0xa                      ; 0x14da
    push ax                          ; 0x14dd
    push word [bp - 2]               ; 0x14de
    call loc_SIKN                    ; 0x14e1
    add sp, byte 6                   ; 0x14e4
    mov ax, 1                        ; 0x14e7
    push ax                          ; 0x14ea
    push word [bp - 2]               ; 0x14eb
    call draw_party_member_panel     ; 0x14ee
    add sp, byte 4                   ; 0x14f1
@..api_idx_0004_IHHI.l6:
    inc word [bp - 2]                ; 0x14f4
@..api_idx_0004_IHHI.l7:
    mov ax, word [bp - 2]            ; 0x14f7
    cmp ax, word [party_char_count]  ; 0x14fa
    jge short @..api_idx_0004_IHHI.l8 ; 0x14fe
    jmp near @..api_idx_0004_IHHI.l2 ; 0x1500
@..api_idx_0004_IHHI.l8:
    ret                              ; 0x1503
