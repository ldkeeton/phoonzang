; auto-generated
api_idx_000e:
    mov ax, 0xfff2                   ; 0x12ac
    call aztec_csav                  ; 0x12af
    mov ax, 0x2c                     ; 0x12b2
    imul word [bp + 0x6]             ; 0x12b5
    mov cx, ax                       ; 0x12b8
    mov ax, word [bp + 0x4]          ; 0x12ba
    shl ax, 1                        ; 0x12bd
    mov bx, ax                       ; 0x12bf
    mov ax, word [bx - 0x7b7e]       ; 0x12c1
    add ax, cx                       ; 0x12c5
    mov word [bp - 0x0004], ax       ; 0x12c7
    mov word [bp - 0x000a], 0        ; 0x12ca
    mov bx, ax                       ; 0x12cf
    cmp byte [bx + 0x10], 0          ; 0x12d1
    jbe short @..api_idx_000e.l1     ; 0x12d5
    mov ax, word [bx + 0x8]          ; 0x12d7
    mov bx, 5                        ; 0x12da
    imul bx                          ; 0x12dd
    mov cx, 0x64                     ; 0x12df
    mov bx, 0                        ; 0x12e2
    call aztec_ldv                   ; 0x12e5
    mov word [bp - 0x0002], ax       ; 0x12e8
    push ax                          ; 0x12eb
    call ds_app_09f0                 ; 0x12ec
    pop cx                           ; 0x12ef
    mov bx, word [bp - 0x0004]       ; 0x12f0
    mov cx, word [bx + 0x6]          ; 0x12f3
    add ax, cx                       ; 0x12f6
    inc ax                           ; 0x12f8
    mov word [bx + 0x6], ax          ; 0x12f9
    mov ax, word [bx + 0x6]          ; 0x12fc
    cmp ax, word [bx + 0x8]          ; 0x12ff
    jle short @..api_idx_000e.l1     ; 0x1302
    mov ax, word [bx + 0x8]          ; 0x1304
    mov word [bx + 0x6], ax          ; 0x1307
@..api_idx_000e.l1:
    mov bx, word [bp - 0x0004]       ; 0x130a
    cmp word [bx + 0x6], byte 0      ; 0x130d
    jg short @..api_idx_000e.l2      ; 0x1311
    mov word [bx + 0x6], 0           ; 0x1313
    mov ax, 6                        ; 0x1318
    push ax                          ; 0x131b
    call ds_app_09f0                 ; 0x131c
    pop cx                           ; 0x131f
    add ax, strict word 6            ; 0x1320
    mov bx, word [bp - 0x0004]       ; 0x1323
    mov byte [bx + 0x10], al         ; 0x1326
@..api_idx_000e.l2:
    mov ax, word [bp + 0x8]          ; 0x1329
    sub ax, word [bp + 0xa]          ; 0x132c
    push ax                          ; 0x132f
    mov bx, word [bp - 0x0004]       ; 0x1330
    mov al, byte [bx + 0x23]         ; 0x1333
    sub ah, ah                       ; 0x1336
    mov cx, ax                       ; 0x1338
    pop ax                           ; 0x133a
    sub ax, cx                       ; 0x133b
    mov word [bp - 0x0006], ax       ; 0x133d
    mov ax, word [bp - 0x0006]       ; 0x1340
    add word [bx + 0x2], ax          ; 0x1343
    mov bx, word [bp - 0x0004]       ; 0x1346
    mov ax, word [bx + 0x2]          ; 0x1349
    mov cx, word [bx + 0x4]          ; 0x134c
    cmp ax, cx                       ; 0x134f
    jle short @..api_idx_000e.l3     ; 0x1351
    mov word [bx + 0x2], cx          ; 0x1353
@..api_idx_000e.l3:
    mov bx, word [bp - 0x0004]       ; 0x1356
    cmp word [bx + 0x2], byte 0      ; 0x1359
    jle short @..api_idx_000e.l4     ; 0x135d
    jmp near @..api_idx_000e.l8      ; 0x135f
@..api_idx_000e.l4:
    mov word [bx + 0x2], 0           ; 0x1362
    mov bx, word [bp - 0x0004]       ; 0x1367
    mov word [bx + 0x6], 0           ; 0x136a
    mov bx, word [bp - 0x0004]       ; 0x136f
    mov byte [bx + 0x22], 3          ; 0x1372
    mov word [bp - 0x000a], 1        ; 0x1376
    cmp word [bp + 0x4], byte 0      ; 0x137b
    jne short @..api_idx_000e.l5     ; 0x137f
    jmp near @..api_idx_000e.l8      ; 0x1381
@..api_idx_000e.l5:
    mov ax, word [bp + 0x4]          ; 0x1384
    cmp ax, strict word 1            ; 0x1387
    jl short @..api_idx_000e.l6      ; 0x138a
    cmp ax, strict word 5            ; 0x138c
    jg short @..api_idx_000e.l6      ; 0x138f
    mov ax, word [bp + 0x4]          ; 0x1391
    shl ax, 1                        ; 0x1394
    mov bx, ax                       ; 0x1396
    mov bx, word [bx - 0x7b70]       ; 0x1398
    mov ax, word [bx + 0x40]         ; 0x139c
    mov dx, word [bx + 0x42]         ; 0x139f
    add word [bss_84a2], ax          ; 0x13a2
    adc word [bss_84a4], dx          ; 0x13a6
@..api_idx_000e.l6:
    mov bx, word [bp - 0x0004]       ; 0x13aa
    cmp byte [bx + 0x2a], 0xff       ; 0x13ad
    je short @..api_idx_000e.l7      ; 0x13b1
    mov al, byte [bx + 0x2a]         ; 0x13b3
    cbw                              ; 0x13b6
    mov cx, 0xa                      ; 0x13b7
    cwd                              ; 0x13ba
    idiv cx                          ; 0x13bb
    mov word [bp - 0x000c], ax       ; 0x13bd
    mov al, byte [bx + 0x2a]         ; 0x13c0
    cbw                              ; 0x13c3
    cwd                              ; 0x13c4
    idiv cx                          ; 0x13c5
    mov word [bp - 0x000e], dx       ; 0x13c7
    mov ax, 6                        ; 0x13ca
    imul word [bp - 0x000c]          ; 0x13cd
    mov cx, word [bp - 0x000e]       ; 0x13d0
    shl cx, 1                        ; 0x13d3
    add ax, cx                       ; 0x13d5
    mov bx, ax                       ; 0x13d7
    mov word [bx - 0x7bc6], 0        ; 0x13d9
    mov bx, word [bp - 0x0004]       ; 0x13df
    mov byte [bx + 0x2a], 0xff       ; 0x13e2
@..api_idx_000e.l7:
    mov ax, word [bp + 0x4]          ; 0x13e6
    shl ax, 1                        ; 0x13e9
    mov bx, ax                       ; 0x13eb
    mov bx, word [bx - 0x7b70]       ; 0x13ed
    mov al, byte [bx + 0xe2]         ; 0x13f1
    sub ah, ah                       ; 0x13f5
    test ax, 1                       ; 0x13f7
    je short @..api_idx_000e.l8      ; 0x13fa
    mov ax, 1                        ; 0x13fc
    push ax                          ; 0x13ff
    mov al, byte [bx + 0xe0]         ; 0x1400
    sub ah, ah                       ; 0x1404
    push ax                          ; 0x1406
    mov ax, 0x5842                   ; 0x1407
    push ax                          ; 0x140a
    call ds_leaf_loc_3e88            ; 0x140b
    add sp, byte 6                   ; 0x140e
@..api_idx_000e.l8:
    mov word [bp - 0x0008], 0        ; 0x1411
@..api_idx_000e.l9:
    mov bx, word [bp - 0x0004]       ; 0x1416
    mov si, word [bp - 0x0008]       ; 0x1419
    cmp byte [bx + si + 0xe], 0      ; 0x141c
    jbe short @..api_idx_000e.l10    ; 0x1420
    mov al, byte [bx + si + 0xe]     ; 0x1422
    sub ah, ah                       ; 0x1425
    cmp ax, 0xff                     ; 0x1427
    je short @..api_idx_000e.l10     ; 0x142a
    dec byte [bx + si + 0xe]         ; 0x142c
@..api_idx_000e.l10:
    inc word [bp - 0x0008]           ; 0x142f
    mov ax, word [bp - 0x0008]       ; 0x1432
    cmp ax, strict word 0xa          ; 0x1435
    jl short @..api_idx_000e.l9      ; 0x1438
    mov bx, word [bp - 0x0004]       ; 0x143a
    cmp byte [bx + 0x13], 0          ; 0x143d
    jne short @..api_idx_000e.l11    ; 0x1441
    mov byte [bx + 0x23], 0          ; 0x1443
@..api_idx_000e.l11:
    mov bx, word [bp - 0x0004]       ; 0x1447
    mov al, byte [bx + 0x29]         ; 0x144a
    cbw                              ; 0x144d
    mov word [bp - 0x0008], ax       ; 0x144e
    cmp ax, strict word 0            ; 0x1451
    jge short @..api_idx_000e.l12    ; 0x1454
    inc ax                           ; 0x1456
    jmp short @..api_idx_000e.l13    ; 0x1457
@..api_idx_000e.l12:
    mov ax, word [bp - 0x0008]       ; 0x1459
    push ax                          ; 0x145c
    cmp ax, strict word 0            ; 0x145d
    pop ax                           ; 0x1460
    jle short @..api_idx_000e.l13    ; 0x1461
    dec ax                           ; 0x1463
@..api_idx_000e.l13:
    mov byte [bx + 0x29], al         ; 0x1464
    cmp word [bp + 0x4], byte 0      ; 0x1467
    jne short @..api_idx_000e.l14    ; 0x146b
    mov ax, 0x248                    ; 0x146d
    imul word [bp - 0x0002]          ; 0x1470
    mov bx, ax                       ; 0x1473
    cmp byte [bx + 0x5d80], 0        ; 0x1475
    jbe short @..api_idx_000e.l14    ; 0x147a
    mov al, byte [bx + 0x5d80]       ; 0x147c
    sub ah, ah                       ; 0x1480
    mov cx, 0xa                      ; 0x1482
    cwd                              ; 0x1485
    idiv cx                          ; 0x1486
    inc ax                           ; 0x1488
    inc ax                           ; 0x1489
    mov word [bp - 0x0008], ax       ; 0x148a
    mov bx, word [bp - 0x0004]       ; 0x148d
    mov al, byte [bx + 0x29]         ; 0x1490
    cbw                              ; 0x1493
    mov cx, ax                       ; 0x1494
    mov ax, word [bp - 0x0008]       ; 0x1496
    cmp cx, ax                       ; 0x1499
    jge short @..api_idx_000e.l14    ; 0x149b
    inc byte [bx + 0x29]             ; 0x149d
@..api_idx_000e.l14:
    mov bx, word [bp - 0x0004]       ; 0x14a0
    cmp byte [bx + 0x24], 0          ; 0x14a3
    jbe short @..api_idx_000e.l15    ; 0x14a7
    dec byte [bx + 0x24]             ; 0x14a9
@..api_idx_000e.l15:
    mov bx, word [bp - 0x0004]       ; 0x14ac
    cmp byte [bx + 0x2b], 3          ; 0x14af
    jne short @..api_idx_000e.l16    ; 0x14b3
    mov byte [bx + 0x2b], 0          ; 0x14b5
@..api_idx_000e.l16:
    mov bx, word [bp - 0x0004]       ; 0x14b9
    cmp byte [bx + 0x22], 3          ; 0x14bc
    je short @..api_idx_000e.l17     ; 0x14c0
    cmp word [bp + 0x4], byte 0      ; 0x14c2
    je short @..api_idx_000e.l17     ; 0x14c6
    cmp byte [bx + 0x2b], 2          ; 0x14c8
    jne short @..api_idx_000e.l17    ; 0x14cc
    mov word [bx + 0x2], 0           ; 0x14ce
    mov bx, word [bp - 0x0004]       ; 0x14d3
    mov word [bx + 0x6], 0           ; 0x14d6
    mov bx, word [bp - 0x0004]       ; 0x14db
    mov byte [bx + 0x22], 3          ; 0x14de
@..api_idx_000e.l17:
    mov ax, word [bp - 0x000a]       ; 0x14e2
    ret                              ; 0x14e5
