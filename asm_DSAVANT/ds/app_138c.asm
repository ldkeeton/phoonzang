app_138c: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x138c
    call aztec_csav                  ; 0x138f
    cmp word [bss_5b6c], byte 0      ; 0x1392
    jge short @..app_138c.l1         ; 0x1397
    jmp near @..app_138c.l3          ; 0x1399
@..app_138c.l1:
    push word [bss_5b6c]             ; 0x139c
    call loc_420b                    ; 0x13a0
    pop cx                           ; 0x13a3
    mov ax, word [bss_5b6e]          ; 0x13a4
    jmp near @..app_138c.l2          ; 0x13a7
jumptable_14a2_case_1:
    mov ax, 5                        ; 0x13aa
    push ax                          ; 0x13ad
    call loc_420b                    ; 0x13ae
    pop cx                           ; 0x13b1
    mov ax, 5                        ; 0x13b2
    push ax                          ; 0x13b5
    call app_1371                    ; 0x13b6
    pop cx                           ; 0x13b9
    mov ax, 9                        ; 0x13ba
    push ax                          ; 0x13bd
    call app_1371                    ; 0x13be
    pop cx                           ; 0x13c1
    mov ax, 0xa                      ; 0x13c2
    push ax                          ; 0x13c5
    call app_1371                    ; 0x13c6
    pop cx                           ; 0x13c9
    mov ax, 0xd                      ; 0x13ca
    push ax                          ; 0x13cd
    call app_1371                    ; 0x13ce
    pop cx                           ; 0x13d1
    jmp near @..app_138c.l3          ; 0x13d2
jumptable_14a2_case_2:
    mov ax, 4                        ; 0x13d5
    push ax                          ; 0x13d8
    call loc_420b                    ; 0x13d9
    pop cx                           ; 0x13dc
    mov ax, 6                        ; 0x13dd
    push ax                          ; 0x13e0
    call loc_420b                    ; 0x13e1
    pop cx                           ; 0x13e4
    mov ax, 0xd                      ; 0x13e5
    push ax                          ; 0x13e8
    call app_1371                    ; 0x13e9
    pop cx                           ; 0x13ec
    jmp near @..app_138c.l3          ; 0x13ed
jumptable_14a2_case_3:
    mov ax, 4                        ; 0x13f0
    push ax                          ; 0x13f3
    call loc_420b                    ; 0x13f4
    pop cx                           ; 0x13f7
    mov ax, 5                        ; 0x13f8
    push ax                          ; 0x13fb
    call loc_420b                    ; 0x13fc
    pop cx                           ; 0x13ff
    mov ax, 6                        ; 0x1400
    push ax                          ; 0x1403
    call loc_420b                    ; 0x1404
    pop cx                           ; 0x1407
    mov ax, 5                        ; 0x1408
    push ax                          ; 0x140b
    call app_1371                    ; 0x140c
    pop cx                           ; 0x140f
    mov ax, 0xa                      ; 0x1410
    push ax                          ; 0x1413
    call app_1371                    ; 0x1414
    pop cx                           ; 0x1417
    mov ax, 0xb                      ; 0x1418
    push ax                          ; 0x141b
    call app_1371                    ; 0x141c
    pop cx                           ; 0x141f
    mov ax, 0xc                      ; 0x1420
    push ax                          ; 0x1423
    call app_1371                    ; 0x1424
    pop cx                           ; 0x1427
    jmp near @..app_138c.l3          ; 0x1428
jumptable_14a2_case_4:
    mov ax, 4                        ; 0x142b
    push ax                          ; 0x142e
    call loc_420b                    ; 0x142f
    pop cx                           ; 0x1432
    mov ax, 0xd                      ; 0x1433
    push ax                          ; 0x1436
    call app_1371                    ; 0x1437
    pop cx                           ; 0x143a
    jmp near @..app_138c.l3          ; 0x143b
jumptable_14a2_case_5:
    mov ax, 4                        ; 0x143e
    push ax                          ; 0x1441
    call loc_420b                    ; 0x1442
    pop cx                           ; 0x1445
    mov ax, 5                        ; 0x1446
    push ax                          ; 0x1449
    call loc_420b                    ; 0x144a
    pop cx                           ; 0x144d
    mov ax, 0xa                      ; 0x144e
    push ax                          ; 0x1451
    call app_1371                    ; 0x1452
    pop cx                           ; 0x1455
    mov ax, 0xb                      ; 0x1456
    push ax                          ; 0x1459
    call app_1371                    ; 0x145a
    pop cx                           ; 0x145d
    mov ax, 0xc                      ; 0x145e
    push ax                          ; 0x1461
    call app_1371                    ; 0x1462
    pop cx                           ; 0x1465
    mov ax, 9                        ; 0x1466
    push ax                          ; 0x1469
    call app_1371                    ; 0x146a
    pop cx                           ; 0x146d
    mov ax, 0xd                      ; 0x146e
    push ax                          ; 0x1471
    call app_1371                    ; 0x1472
    pop cx                           ; 0x1475
    jmp short @..app_138c.l3         ; 0x1476
jumptable_14a2_case_6:
    mov ax, 4                        ; 0x1478
    push ax                          ; 0x147b
    call loc_420b                    ; 0x147c
    pop cx                           ; 0x147f
    mov ax, 5                        ; 0x1480
    push ax                          ; 0x1483
    call loc_420b                    ; 0x1484
    pop cx                           ; 0x1487
    mov ax, 0xc                      ; 0x1488
    push ax                          ; 0x148b
    call app_1371                    ; 0x148c
    pop cx                           ; 0x148f
    mov ax, 9                        ; 0x1490
    push ax                          ; 0x1493
    call app_1371                    ; 0x1494
    pop cx                           ; 0x1497
    mov ax, 0xd                      ; 0x1498
    push ax                          ; 0x149b
    call app_1371                    ; 0x149c
    pop cx                           ; 0x149f
    jmp short @..app_138c.l3         ; 0x14a0
jumptable_14a2:
    dw jumptable_14a2_case_0 - IMAGE_BASE
    dw jumptable_14a2_case_1 - IMAGE_BASE
    dw jumptable_14a2_case_2 - IMAGE_BASE
    dw jumptable_14a2_case_3 - IMAGE_BASE
    dw jumptable_14a2_case_4 - IMAGE_BASE
    dw jumptable_14a2_case_5 - IMAGE_BASE
    dw jumptable_14a2_case_6 - IMAGE_BASE
@..app_138c.l2:
    cmp ax, strict word 7            ; 0x14b0
    jae short @..app_138c.l3         ; 0x14b3
    xchg bx, ax                      ; 0x14b5
    shl bx, 1                        ; 0x14b6
    jmp [cs:bx + jumptable_14a2 - IMAGE_BASE] ; 0x14b8
jumptable_14a2_case_0:
@..app_138c.l3:
    mov word [bss_5b70], 0           ; 0x14bd
    mov word [bss_5b6c], 0xffff      ; 0x14c3
    ret                              ; 0x14c9
