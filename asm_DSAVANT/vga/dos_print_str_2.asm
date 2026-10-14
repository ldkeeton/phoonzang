; auto-generated
dos_print_str_2:
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
    jb short @..dos_print_str_2.l2   ; 0x13da
@..dos_print_str_2.l1:
    jmp near @..dos_print_str_2.l8   ; 0x13dc
@..dos_print_str_2.l2:
    mov bx, word [bp + 0x12]         ; 0x13df
    mul bx                           ; 0x13e2
    or dx, dx                        ; 0x13e4
    jne short @..dos_print_str_2.l1  ; 0x13e6
    cmp ax, 0x401                    ; 0x13e8
    jae short @..dos_print_str_2.l1  ; 0x13eb
    call leaf_loc_1308               ; 0x13ed
    mov ax, word [bp + 0xc]          ; 0x13f0
    mov word [cs:cseg_1e64 - IMAGE_BASE], ax ; 0x13f3
    mov ax, word [bp + 0xe]          ; 0x13f7
    mov word [cs:cseg_1e66 - IMAGE_BASE], ax ; 0x13fa
    mov ax, word [bp + 0x10]         ; 0x13fe
    mov word [cs:cseg_1e5c - IMAGE_BASE], ax ; 0x1401
    mov ax, word [bp + 0x12]         ; 0x1405
    mov word [cs:cseg_1e5e - IMAGE_BASE], ax ; 0x1408
    mov ax, word [cs:cseg_1e64 - IMAGE_BASE] ; 0x140c
    or ax, word [cs:cseg_1e66 - IMAGE_BASE] ; 0x1410
    jne short @..dos_print_str_2.l3  ; 0x1415
    mov ax, cs                       ; 0x1417
    mov ds, ax                       ; 0x1419
    mov es, ax                       ; 0x141b
    mov si, cseg_1e60 - IMAGE_BASE   ; 0x141d
    mov di, data_1e5c                ; 0x1420
    mov cx, 4                        ; 0x1423
    rep movsb                        ; 0x1426
@..dos_print_str_2.l3:
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 0 ; 0x1428
    je short @..dos_print_str_2.l7   ; 0x142e
    mov cx, word [bp + 0x14]         ; 0x1430
    cmp cx, byte 0xff                ; 0x1433
    je short @..dos_print_str_2.l5   ; 0x1436
    mov dx, word [bp + 0x16]         ; 0x1438
    cmp dx, byte 0xff                ; 0x143b
    je short @..dos_print_str_2.l5   ; 0x143e
    shl cx, 1                        ; 0x1440
    mov ax, 4                        ; 0x1442
    int 0x33 ; BIOS mouse
@..dos_print_str_2.l4:
    mov ax, 3                        ; 0x1447
    int 0x33 ; BIOS mouse
    jmp short @..dos_print_str_2.l6  ; 0x144c
@..dos_print_str_2.l5:
    cmp byte [cs:cseg_0226 - IMAGE_BASE], 0 ; 0x144e
    je short @..dos_print_str_2.l4   ; 0x1454
    mov cx, word [cs:cseg_15ac - IMAGE_BASE] ; 0x1456
    shl cx, 1                        ; 0x145b
    mov dx, word [cs:cseg_15ae - IMAGE_BASE] ; 0x145d
@..dos_print_str_2.l6:
    mov ax, cs                       ; 0x1462
    push ax                          ; 0x1464
    call leaf_loc_1e1a               ; 0x1465
    mov byte [cs:cseg_0227 - IMAGE_BASE], 0 ; 0x1468
@..dos_print_str_2.l7:
    pop di                           ; 0x146e
    pop si                           ; 0x146f
    pop es                           ; 0x1470
    pop ds                           ; 0x1471
    mov sp, bp                       ; 0x1472
    pop bp                           ; 0x1474
    ret                              ; 0x1475
@..dos_print_str_2.l8:
    mov ax, cs                       ; 0x1476
    mov ds, ax                       ; 0x1478
    mov dx, 0x1586                   ; 0x147a
