; auto-generated
; asm only
set_mouse_pointer:
    push bp                          ; 0x13c9
    mov bp, sp                       ; 0x13ca
    push ds                          ; 0x13cc
    push es                          ; 0x13cd
    push si                          ; 0x13ce
    push di                          ; 0x13cf
    mov ax, ds                       ; 0x13d0
    mov es, ax                       ; 0x13d2
    mov ax, word [bp + 0x10]         ; 0x13d4
    cmp ax, strict word 0x51         ; 0x13d7
    jb short @..set_mouse_pointer.l2 ; 0x13da
@..set_mouse_pointer.l1:
    jmp near @..set_mouse_pointer.l8 ; 0x13dc
@..set_mouse_pointer.l2:
    mov bx, word [bp + 0x12]         ; 0x13df
    mul bx                           ; 0x13e2
    or dx, dx                        ; 0x13e4
    jne short @..set_mouse_pointer.l1 ; 0x13e6
    cmp ax, 0x401                    ; 0x13e8
    jae short @..set_mouse_pointer.l1 ; 0x13eb
    call leaf_loc_LMQV               ; 0x13ed
    mov ax, word [bp + 0xc]          ; 0x13f0
    mov word [cs:cseg_1d64 - IMAGE_BASE], ax ; 0x13f3
    mov ax, word [bp + 0xe]          ; 0x13f7
    mov word [cs:cseg_1d66 - IMAGE_BASE], ax ; 0x13fa
    mov ax, word [bp + 0x10]         ; 0x13fe
    mov word [cs:cseg_1d5c - IMAGE_BASE], ax ; 0x1401
    mov ax, word [bp + 0x12]         ; 0x1405
    mov word [cs:cseg_1d5e - IMAGE_BASE], ax ; 0x1408
    mov ax, word [cs:cseg_1d64 - IMAGE_BASE] ; 0x140c
    or ax, word [cs:cseg_1d66 - IMAGE_BASE] ; 0x1410
    jne short @..set_mouse_pointer.l3 ; 0x1415
    mov ax, cs                       ; 0x1417
    mov ds, ax                       ; 0x1419
    mov es, ax                       ; 0x141b
    mov si, cseg_1d60 - IMAGE_BASE   ; 0x141d
    mov di, data_1e5c                ; 0x1420
    mov cx, 4                        ; 0x1423
    rep movsb                        ; 0x1426
@..set_mouse_pointer.l3:
    cmp byte [cs:cseg_0128 - IMAGE_BASE], 0 ; 0x1428
    je short @..set_mouse_pointer.l7 ; 0x142e
    mov cx, word [bp + 0x14]         ; 0x1430
    cmp cx, byte 0xff                ; 0x1433
    je short @..set_mouse_pointer.l5 ; 0x1436
    mov dx, word [bp + 0x16]         ; 0x1438
    cmp dx, byte 0xff                ; 0x143b
    je short @..set_mouse_pointer.l5 ; 0x143e
    shl cx, 1                        ; 0x1440
    mov ax, 4                        ; 0x1442
    int 0x33 ; BIOS mouse
@..set_mouse_pointer.l4:
    mov ax, 3                        ; 0x1447
    int 0x33 ; BIOS mouse
    jmp short @..set_mouse_pointer.l6 ; 0x144c
@..set_mouse_pointer.l5:
    cmp byte [cs:cseg_0126 - IMAGE_BASE], 0 ; 0x144e
    je short @..set_mouse_pointer.l4 ; 0x1454
    mov cx, word [cs:cseg_14ac - IMAGE_BASE] ; 0x1456
    shl cx, 1                        ; 0x145b
    mov dx, word [cs:cseg_14ae - IMAGE_BASE] ; 0x145d
@..set_mouse_pointer.l6:
    mov ax, cs                       ; 0x1462
    push ax                          ; 0x1464
    call leaf_loc_JHTT               ; 0x1465
    mov byte [cs:cseg_0127 - IMAGE_BASE], 0 ; 0x1468
@..set_mouse_pointer.l7:
    pop di                           ; 0x146e
    pop si                           ; 0x146f
    pop es                           ; 0x1470
    pop ds                           ; 0x1471
    mov sp, bp                       ; 0x1472
    pop bp                           ; 0x1474
    ret                              ; 0x1475
@..set_mouse_pointer.l8:
    mov ax, cs                       ; 0x1476
    mov ds, ax                       ; 0x1478
    mov dx, dseg_1586                ; 0x147a
