; auto-generated
api_idx_0008:
    mov ax, 0xfff8                   ; 0x1409
    call aztec_csav                  ; 0x140c
    mov ax, 0                        ; 0x140f
    push ax                          ; 0x1412
    call ds_loc_42dd                 ; 0x1413
    pop cx                           ; 0x1416
    mov ax, 0                        ; 0x1417
    push ax                          ; 0x141a
    mov ax, 1                        ; 0x141b
    push ax                          ; 0x141e
    call ds_loc_3a6a                 ; 0x141f
    add sp, byte 4                   ; 0x1422
    mov ax, 0                        ; 0x1425
    push ax                          ; 0x1428
    push ax                          ; 0x1429
    call ds_loc_3a50                 ; 0x142a
    add sp, byte 4                   ; 0x142d
    mov word [bp - 0x0004], 0        ; 0x1430
@..api_idx_0008.l1:
    mov bx, word [bp - 0x0004]       ; 0x1435
    mov byte [bx + 0x5b48], 0xff     ; 0x1438
    mov byte [bx + 0x5b5a], 0        ; 0x143d
    inc word [bp - 0x0004]           ; 0x1442
    mov ax, word [bp - 0x0004]       ; 0x1445
    cmp ax, strict word 0x12         ; 0x1448
    jl short @..api_idx_0008.l1      ; 0x144b
    mov word [bss_906a], 0           ; 0x144d
    mov word [bss_5b70], 0           ; 0x1453
    mov word [bss_5b6e], 0           ; 0x1459
    mov word [bss_5b6c], 0xffff      ; 0x145f
    mov ax, 0                        ; 0x1465
    push ax                          ; 0x1468
    mov ax, 1                        ; 0x1469
    push ax                          ; 0x146c
    call ds_app_file_2863            ; 0x146d
    add sp, byte 4                   ; 0x1470
    mov ax, 3                        ; 0x1473
    push ax                          ; 0x1476
    mov ax, 4                        ; 0x1477
    push ax                          ; 0x147a
    call ds_app_file_2863            ; 0x147b
    add sp, byte 4                   ; 0x147e
    mov ax, 4                        ; 0x1481
    push ax                          ; 0x1484
    mov ax, 5                        ; 0x1485
    push ax                          ; 0x1488
    call ds_app_file_2863            ; 0x1489
    add sp, byte 4                   ; 0x148c
    mov ax, 6                        ; 0x148f
    push ax                          ; 0x1492
    mov ax, 7                        ; 0x1493
    push ax                          ; 0x1496
    call ds_app_file_2863            ; 0x1497
    add sp, byte 4                   ; 0x149a
    mov ax, 8                        ; 0x149d
    push ax                          ; 0x14a0
    mov ax, 0xc                      ; 0x14a1
    push ax                          ; 0x14a4
    call ds_app_file_2863            ; 0x14a5
    add sp, byte 4                   ; 0x14a8
    mov ax, 0xe                      ; 0x14ab
    push ax                          ; 0x14ae
    mov ax, 0                        ; 0x14af
    push ax                          ; 0x14b2
    call ds_app_file_2863            ; 0x14b3
    add sp, byte 4                   ; 0x14b6
    cmp word [bss_904c], byte 0      ; 0x14b9
    jne short @..api_idx_0008.l2     ; 0x14be
    call ds_app_0ad7                 ; 0x14c0
@..api_idx_0008.l2:
    mov ax, 2                        ; 0x14c3
    push ax                          ; 0x14c6
    mov ax, 0x91a1                   ; 0x14c7
    push ax                          ; 0x14ca
    call api_idx_0002_5              ; 0x14cb
    add sp, byte 4                   ; 0x14ce
    mov word [bp - 0x0002], 0        ; 0x14d1
@..api_idx_0008.l3:
    mov ax, word [bp - 0x0002]       ; 0x14d6
    mov cx, 3                        ; 0x14d9
    cwd                              ; 0x14dc
    idiv cx                          ; 0x14dd
    mov cx, 0x28                     ; 0x14df
    imul cx                          ; 0x14e2
    push ax                          ; 0x14e4
    mov ax, 0x19                     ; 0x14e5
    imul word [bp - 0x0002]          ; 0x14e8
    mov cx, ax                       ; 0x14eb
    pop ax                           ; 0x14ed
    add ax, cx                       ; 0x14ee
    add ax, strict word 0x44         ; 0x14f0
    mov word [bp - 0x0006], ax       ; 0x14f3
    mov word [bp - 0x0008], 6        ; 0x14f6
    mov ax, word [bp - 0x0008]       ; 0x14fb
    add ax, strict word 0xe          ; 0x14fe
    push ax                          ; 0x1501
    mov ax, word [bp - 0x0006]       ; 0x1502
    add ax, strict word 0x11         ; 0x1505
    push ax                          ; 0x1508
    push word [bp - 0x0008]          ; 0x1509
    push word [bp - 0x0006]          ; 0x150c
    call ds_loc_3b6f                 ; 0x150f
    add sp, byte 8                   ; 0x1512
    mov cx, word [bp - 0x0002]       ; 0x1515
    shl cx, 1                        ; 0x1518
    shl cx, 1                        ; 0x151a
    mov bx, cx                       ; 0x151c
    mov word [bx - 0x7d2e], dx       ; 0x151e
    mov word [bx - 0x7d30], ax       ; 0x1522
    inc word [bp - 0x0002]           ; 0x1526
    mov ax, word [bp - 0x0002]       ; 0x1529
    cmp ax, strict word 6            ; 0x152c
    jl short @..api_idx_0008.l3      ; 0x152f
    mov word [bss_5212], 0xffff      ; 0x1531
    mov word [bss_69c8], 0           ; 0x1537
    mov word [bp - 0x0002], 0        ; 0x153d
@..api_idx_0008.l4:
    mov ax, word [bp - 0x0002]       ; 0x1542
    shl ax, 1                        ; 0x1545
    mov bx, ax                       ; 0x1547
    mov word [bx - 0x750e], 0xffff   ; 0x1549
    mov ax, word [bp - 0x0002]       ; 0x154f
    mov cx, 2                        ; 0x1552
    cwd                              ; 0x1555
    idiv cx                          ; 0x1556
    mov ax, dx                       ; 0x1558
    mov cx, 0xfc                     ; 0x155a
    imul cx                          ; 0x155d
    add ax, strict word 5            ; 0x155f
    mov word [bp - 0x0006], ax       ; 0x1562
    mov ax, word [bp - 0x0002]       ; 0x1565
    mov cx, 2                        ; 0x1568
    cwd                              ; 0x156b
    idiv cx                          ; 0x156c
    mov cx, 0x2d                     ; 0x156e
    imul cx                          ; 0x1571
    add ax, strict word 0x12         ; 0x1573
    mov word [bp - 0x0008], ax       ; 0x1576
    mov ax, word [bp - 0x0008]       ; 0x1579
    add ax, strict word 0x2b         ; 0x157c
    push ax                          ; 0x157f
    mov ax, word [bp - 0x0006]       ; 0x1580
    add ax, strict word 0x3b         ; 0x1583
    push ax                          ; 0x1586
    push word [bp - 0x0008]          ; 0x1587
    push word [bp - 0x0006]          ; 0x158a
    call ds_loc_3b6f                 ; 0x158d
    add sp, byte 8                   ; 0x1590
    mov cx, word [bp - 0x0002]       ; 0x1593
    shl cx, 1                        ; 0x1596
    shl cx, 1                        ; 0x1598
    mov bx, cx                       ; 0x159a
    mov word [bx + 0x69a6], dx       ; 0x159c
    mov word [bx + 0x69a4], ax       ; 0x15a0
    inc word [bp - 0x0002]           ; 0x15a4
    mov ax, word [bp - 0x0002]       ; 0x15a7
    cmp ax, strict word 6            ; 0x15aa
    jl short @..api_idx_0008.l4      ; 0x15ad
    mov ax, 0xc4                     ; 0x15af
    push ax                          ; 0x15b2
    mov ax, 0x13c                    ; 0x15b3
    push ax                          ; 0x15b6
    mov ax, 0xb9                     ; 0x15b7
    push ax                          ; 0x15ba
    mov ax, 0x131                    ; 0x15bb
    push ax                          ; 0x15be
    call ds_loc_3b6f                 ; 0x15bf
    add sp, byte 8                   ; 0x15c2
    mov word [bss_8d08], dx          ; 0x15c5
    mov word [bss_8d06], ax          ; 0x15c9
    mov word [bss_0e36], 0           ; 0x15cc
    mov word [bss_830a], 4           ; 0x15d2
    ret                              ; 0x15d8
