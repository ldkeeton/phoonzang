; auto-generated
; asm only
bios_mouse_loc_NSSJ:
    push bp                          ; 0x1317
    mov bp, sp                       ; 0x1318
    sub sp, byte 4                   ; 0x131a
    push ds                          ; 0x131d
    push si                          ; 0x131e
    push es                          ; 0x131f
    mov ax, ds                       ; 0x1320
    mov es, ax                       ; 0x1322
    mov word [bp - 0x0004], 1        ; 0x1324
    xor ax, ax                       ; 0x1329
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 0 ; 0x132b
    je short @..bios_mouse_loc_NSSJ.l6 ; 0x1331
    mov bx, word [cs:cseg_1ecd - IMAGE_BASE] ; 0x1333
    or bx, bx                        ; 0x1338
    je short @..bios_mouse_loc_NSSJ.l1 ; 0x133a
    mov word [cs:cseg_1ecd - IMAGE_BASE], 0 ; 0x133c
    mov word [bp - 0x0002], bx       ; 0x1343
    mov cx, word [cs:cseg_1ecf - IMAGE_BASE] ; 0x1346
    mov dx, word [cs:cseg_1ed1 - IMAGE_BASE] ; 0x134b
    jmp short @..bios_mouse_loc_NSSJ.l2 ; 0x1350
@..bios_mouse_loc_NSSJ.l1:
    mov ax, 3                        ; 0x1352
    int 0x33 ; BIOS mouse
    xor bx, bx                       ; 0x1357
    mov word [bp - 0x0002], bx       ; 0x1359
    shr cx, 1                        ; 0x135c
@..bios_mouse_loc_NSSJ.l2:
    mov bx, cx                       ; 0x135e
    mov si, word [bp + 0xc]          ; 0x1360
@..bios_mouse_loc_NSSJ.l3:
    cmp word [si], byte 0xff         ; 0x1363
    je short @..bios_mouse_loc_NSSJ.l5 ; 0x1366
    cmp bx, word [si]                ; 0x1368
    jb short @..bios_mouse_loc_NSSJ.l4 ; 0x136a
    cmp dx, word [si + 0x2]          ; 0x136c
    jb short @..bios_mouse_loc_NSSJ.l4 ; 0x136f
    cmp word [si + 0x4], bx          ; 0x1371
    jb short @..bios_mouse_loc_NSSJ.l4 ; 0x1374
    cmp word [si + 0x6], dx          ; 0x1376
    jb short @..bios_mouse_loc_NSSJ.l4 ; 0x1379
    mov ax, word [bp - 0x0004]       ; 0x137b
    mov bx, word [bp - 0x0002]       ; 0x137e
    or bx, bx                        ; 0x1381
    je short @..bios_mouse_loc_NSSJ.l6 ; 0x1383
    neg ax                           ; 0x1385
    jmp short @..bios_mouse_loc_NSSJ.l6 ; 0x1387
@..bios_mouse_loc_NSSJ.l4:
    add si, byte 8                   ; 0x1389
    inc word [bp - 0x0004]           ; 0x138c
    jmp short @..bios_mouse_loc_NSSJ.l3 ; 0x138f
@..bios_mouse_loc_NSSJ.l5:
    xor ax, ax                       ; 0x1391
@..bios_mouse_loc_NSSJ.l6:
    pop es                           ; 0x1393
    pop si                           ; 0x1394
    pop ds                           ; 0x1395
    mov sp, bp                       ; 0x1396
    pop bp                           ; 0x1398
    ret                              ; 0x1399
