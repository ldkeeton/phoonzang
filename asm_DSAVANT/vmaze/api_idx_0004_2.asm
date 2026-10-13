api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x13f7
    call aztec_csav                  ; 0x13fa
    cmp word [bss_919e], byte 0      ; 0x13fd
    je short @..api_idx_0004_2.l1    ; 0x1402
    mov ax, word [bss_8f3e]          ; 0x1404
    mov word [bss_8f2a], ax          ; 0x1407
    mov ax, word [bss_8f42]          ; 0x140a
    mov word [bss_8f2e], ax          ; 0x140d
    mov ax, word [bss_8f40]          ; 0x1410
    mov word [bss_8f2c], ax          ; 0x1413
    ret                              ; 0x1416
@..api_idx_0004_2.l1:
    call loc_676c                    ; 0x1417
    mov word [bp - 0x0002], 0        ; 0x141a
    jmp near @..api_idx_0004_2.l7    ; 0x141f
@..api_idx_0004_2.l2:
    push word [bp - 0x0002]          ; 0x1422
    call ds_app_1ccc                 ; 0x1425
    pop cx                           ; 0x1428
    test ax, ax                      ; 0x1429
    jne short @..api_idx_0004_2.l4   ; 0x142b
    mov ax, 0x248                    ; 0x142d
    imul word [bp - 0x0002]          ; 0x1430
    mov bx, ax                       ; 0x1433
    cmp byte [bx + 0x5e2f], 3        ; 0x1435
    jae short @..api_idx_0004_2.l3   ; 0x143a
    mov ax, 1                        ; 0x143c
    push ax                          ; 0x143f
    push word [bp - 0x0002]          ; 0x1440
    call loc_10b0                    ; 0x1443
    add sp, byte 4                   ; 0x1446
    mov ax, 0                        ; 0x1449
    push ax                          ; 0x144c
    mov ax, 0x80d                    ; 0x144d
    push ax                          ; 0x1450
    push word [bp - 0x0002]          ; 0x1451
    call api_idx_0050_2              ; 0x1454
    add sp, byte 6                   ; 0x1457
@..api_idx_0004_2.l3:
    jmp near @..api_idx_0004_2.l6    ; 0x145a
@..api_idx_0004_2.l4:
    mov ax, 4                        ; 0x145d
    push ax                          ; 0x1460
    call ds_app_09f0                 ; 0x1461
    pop cx                           ; 0x1464
    mov cx, ax                       ; 0x1465
    add ax, strict word 7            ; 0x1467
    mov cx, ax                       ; 0x146a
    mov ax, 0x248                    ; 0x146c
    imul word [bp - 0x0002]          ; 0x146f
    mov bx, ax                       ; 0x1472
    mov al, byte [bx + 0x5d76]       ; 0x1474
    sub ah, ah                       ; 0x1478
    cwd                              ; 0x147a
    idiv cx                          ; 0x147b
    mov cx, ax                       ; 0x147d
    inc ax                           ; 0x147f
    mov cx, ax                       ; 0x1480
    mov ax, word [bx + 0x5c12]       ; 0x1482
    cwd                              ; 0x1486
    idiv cx                          ; 0x1487
    push ax                          ; 0x1489
    mov ax, word [bx + 0x5c12]       ; 0x148a
    mov cx, 0xa                      ; 0x148e
    cwd                              ; 0x1491
    idiv cx                          ; 0x1492
    push ax                          ; 0x1494
    call ds_app_09f0                 ; 0x1495
    pop cx                           ; 0x1498
    mov cx, ax                       ; 0x1499
    pop ax                           ; 0x149b
    add ax, cx                       ; 0x149c
    mov word [bp - 0x0004], ax       ; 0x149e
    push ax                          ; 0x14a1
    mov ax, 0x248                    ; 0x14a2
    imul word [bp - 0x0002]          ; 0x14a5
    mov bx, ax                       ; 0x14a8
    pop ax                           ; 0x14aa
    sub word [bx + 0x5c10], ax       ; 0x14ab
    cmp word [bx + 0x5c10], byte 0   ; 0x14af
    jg short @..api_idx_0004_2.l5    ; 0x14b4
    mov ax, 1                        ; 0x14b6
    push ax                          ; 0x14b9
    push word [bp - 0x0002]          ; 0x14ba
    call loc_10b0                    ; 0x14bd
    add sp, byte 4                   ; 0x14c0
    mov ax, 0                        ; 0x14c3
    push ax                          ; 0x14c6
    mov ax, 0x80d                    ; 0x14c7
    push ax                          ; 0x14ca
    push word [bp - 0x0002]          ; 0x14cb
    call api_idx_0050_2              ; 0x14ce
    add sp, byte 6                   ; 0x14d1
    jmp short @..api_idx_0004_2.l6   ; 0x14d4
@..api_idx_0004_2.l5:
    mov ax, 3                        ; 0x14d6
    push ax                          ; 0x14d9
    mov ax, 0xa                      ; 0x14da
    push ax                          ; 0x14dd
    push word [bp - 0x0002]          ; 0x14de
    call loc_6fbf                    ; 0x14e1
    add sp, byte 6                   ; 0x14e4
    mov ax, 1                        ; 0x14e7
    push ax                          ; 0x14ea
    push word [bp - 0x0002]          ; 0x14eb
    call ds_app_1d81                 ; 0x14ee
    add sp, byte 4                   ; 0x14f1
@..api_idx_0004_2.l6:
    inc word [bp - 0x0002]           ; 0x14f4
@..api_idx_0004_2.l7:
    mov ax, word [bp - 0x0002]       ; 0x14f7
    cmp ax, word [bss_69c8]          ; 0x14fa
    jge short @..api_idx_0004_2.l8   ; 0x14fe
    jmp near @..api_idx_0004_2.l2    ; 0x1500
@..api_idx_0004_2.l8:
    ret                              ; 0x1503
