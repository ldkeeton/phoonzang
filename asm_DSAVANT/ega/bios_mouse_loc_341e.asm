bios_mouse_loc_341e:
    push bp                          ; 0x341e
    mov bp, sp                       ; 0x341f
    sub sp, byte 0x0a                ; 0x3421
    push ds                          ; 0x3424
    push es                          ; 0x3425
    push si                          ; 0x3426
    push di                          ; 0x3427
    mov ax, ds                       ; 0x3428
    mov es, ax                       ; 0x342a
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 1 ; 0x342c
    je short @..bios_mouse_loc_341e.l1 ; 0x3432
    jmp near @..bios_mouse_loc_341e.l8 ; 0x3434
@..bios_mouse_loc_341e.l1:
    mov byte [cs:cseg_0226 - IMAGE_BASE], 1 ; 0x3437
    mov ax, word [bp + 0xc]          ; 0x343d
    shl ax, 1                        ; 0x3440
    mov word [bp - 0x0002], ax       ; 0x3442
    mov ax, word [bp + 0xe]          ; 0x3445
    mov word [bp - 0x0004], ax       ; 0x3448
    mov ax, 3                        ; 0x344b
    int 0x33 ; BIOS mouse
    and cx, strict word 0xfffe       ; 0x3450
    mov word [bp - 0x0006], cx       ; 0x3454
    mov word [bp - 0x0008], dx       ; 0x3457
@..bios_mouse_loc_341e.l2:
    mov cx, word [bp - 0x0006]       ; 0x345a
    mov dx, word [bp - 0x0008]       ; 0x345d
    cmp cx, word [bp - 0x0002]       ; 0x3460
    jne short @..bios_mouse_loc_341e.l3 ; 0x3463
    cmp dx, word [bp - 0x0004]       ; 0x3465
    jne short @..bios_mouse_loc_341e.l3 ; 0x3468
    jmp short @..bios_mouse_loc_341e.l8 ; 0x346a
@..bios_mouse_loc_341e.l3:
    cmp cx, word [bp - 0x0002]       ; 0x346c
    je short @..bios_mouse_loc_341e.l5 ; 0x346f
    js short @..bios_mouse_loc_341e.l4 ; 0x3471
    sub word [bp - 0x0006], byte 2   ; 0x3473
    jmp short @..bios_mouse_loc_341e.l5 ; 0x3477
@..bios_mouse_loc_341e.l4:
    add word [bp - 0x0006], byte 2   ; 0x3479
@..bios_mouse_loc_341e.l5:
    mov cx, word [bp - 0x0006]       ; 0x347d
    cmp dx, word [bp - 0x0004]       ; 0x3480
    je short @..bios_mouse_loc_341e.l7 ; 0x3483
    js short @..bios_mouse_loc_341e.l6 ; 0x3485
    sub word [bp - 0x0008], byte 1   ; 0x3487
    jmp short @..bios_mouse_loc_341e.l7 ; 0x348b
@..bios_mouse_loc_341e.l6:
    add word [bp - 0x0008], byte 1   ; 0x348d
@..bios_mouse_loc_341e.l7:
    mov dx, word [bp - 0x0008]       ; 0x3491
    mov ax, cs                       ; 0x3494
    push ax                          ; 0x3496
    mov ax, 0                        ; 0x3497
    call leaf_loc_2a4f               ; 0x349a
    mov cx, word [bp - 0x0006]       ; 0x349d
    mov dx, word [bp - 0x0008]       ; 0x34a0
    mov ax, 4                        ; 0x34a3
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x34a8
    or ax, ax                        ; 0x34ab
    je short @..bios_mouse_loc_341e.l2 ; 0x34ad
    push ax                          ; 0x34af
    call far [cs:cseg_01fb - IMAGE_BASE] ; 0x34b0
    pop ax                           ; 0x34b5
    jmp short @..bios_mouse_loc_341e.l2 ; 0x34b6
@..bios_mouse_loc_341e.l8:
    pop di                           ; 0x34b8
    pop si                           ; 0x34b9
    pop es                           ; 0x34ba
    pop ds                           ; 0x34bb
    mov sp, bp                       ; 0x34bc
    pop bp                           ; 0x34be
    ret                              ; 0x34bf
loc_34c0:
    push bp                          ; 0x34c0
    mov bp, sp                       ; 0x34c1
    sub sp, byte 0x0a                ; 0x34c3
    push ds                          ; 0x34c6
    push es                          ; 0x34c7
    push si                          ; 0x34c8
    push di                          ; 0x34c9
    mov ax, ds                       ; 0x34ca
    mov es, ax                       ; 0x34cc
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 1 ; 0x34ce
    je short @..local.l46            ; 0x34d4
    jmp near @..local.l54            ; 0x34d6
@..local.l46:
    mov ax, word [bp + 0xc]          ; 0x34d9
    shl ax, 1                        ; 0x34dc
    mov word [bp - 0x0002], ax       ; 0x34de
    mov ax, word [bp + 0xe]          ; 0x34e1
    mov word [bp - 0x0004], ax       ; 0x34e4
    mov cx, word [cs:cseg_1bd9 - IMAGE_BASE] ; 0x34e7
    shl cx, 1                        ; 0x34ec
    mov dx, word [cs:cseg_1bdb - IMAGE_BASE] ; 0x34ee
    mov word [bp - 0x0006], cx       ; 0x34f3
    mov word [bp - 0x0008], dx       ; 0x34f6
@..local.l47:
    mov cx, word [bp - 0x0006]       ; 0x34f9
    mov dx, word [bp - 0x0008]       ; 0x34fc
    cmp cx, word [bp - 0x0002]       ; 0x34ff
    jne short @..local.l48           ; 0x3502
    cmp dx, word [bp - 0x0004]       ; 0x3504
    jne short @..local.l48           ; 0x3507
    jmp short @..local.l53           ; 0x3509
@..local.l48:
    cmp cx, word [bp - 0x0002]       ; 0x350b
    je short @..local.l50            ; 0x350e
    js short @..local.l49            ; 0x3510
    sub word [bp - 0x0006], byte 2   ; 0x3512
    jmp short @..local.l50           ; 0x3516
@..local.l49:
    add word [bp - 0x0006], byte 2   ; 0x3518
@..local.l50:
    mov cx, word [bp - 0x0006]       ; 0x351c
    cmp dx, word [bp - 0x0004]       ; 0x351f
    je short @..local.l52            ; 0x3522
    js short @..local.l51            ; 0x3524
    sub word [bp - 0x0008], byte 1   ; 0x3526
    jmp short @..local.l52           ; 0x352a
@..local.l51:
    add word [bp - 0x0008], byte 1   ; 0x352c
@..local.l52:
    mov dx, word [bp - 0x0008]       ; 0x3530
    mov ax, cs                       ; 0x3533
    push ax                          ; 0x3535
    mov ax, 0                        ; 0x3536
    call leaf_loc_2a4f               ; 0x3539
    mov cx, word [bp - 0x0006]       ; 0x353c
    mov dx, word [bp - 0x0008]       ; 0x353f
    mov ax, 4                        ; 0x3542
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x3547
    or ax, ax                        ; 0x354a
    je short @..local.l47            ; 0x354c
    push ax                          ; 0x354e
    call far [cs:cseg_01fb - IMAGE_BASE] ; 0x354f
    pop ax                           ; 0x3554
    jmp short @..local.l47           ; 0x3555
@..local.l53:
    mov cx, word [bp - 0x0002]       ; 0x3557
    mov dx, word [bp - 0x0004]       ; 0x355a
    mov ax, 4                        ; 0x355d
    int 0x33 ; BIOS mouse
    mov byte [cs:cseg_0226 - IMAGE_BASE], 0 ; 0x3562
@..local.l54:
    pop di                           ; 0x3568
    pop si                           ; 0x3569
    pop es                           ; 0x356a
    pop ds                           ; 0x356b
    mov sp, bp                       ; 0x356c
    pop bp                           ; 0x356e
    ret                              ; 0x356f
loc_3570:
    push bp                          ; 0x3570
    mov bp, sp                       ; 0x3571
    sub sp, byte 8                   ; 0x3573
    push ds                          ; 0x3576
    push es                          ; 0x3577
    push di                          ; 0x3578
    push si                          ; 0x3579
    mov ax, ds                       ; 0x357a
    mov es, ax                       ; 0x357c
    mov ax, word [bp + 0xc]          ; 0x357e
    neg ax                           ; 0x3581
    cmp ax, strict word 5            ; 0x3583
    jb short @..local.l55            ; 0x3586
    jmp near @..local.l57            ; 0x3588
@..local.l55:
    shl ax, 1                        ; 0x358b
    mov word [bp - 0x0008], ax       ; 0x358d
    mov bx, 0x251                    ; 0x3590
    add bx, ax                       ; 0x3593
    mov ax, word [cs:bx]             ; 0x3595
    or ax, ax                        ; 0x3598
    jne short @..local.l56           ; 0x359a
    jmp near @..local.l57            ; 0x359c
@..local.l56:
    mov word [cs:bx], 0              ; 0x359f
    mov cx, word [cs:cseg_11cb - IMAGE_BASE] ; 0x35a4
    dec cx                           ; 0x35a9
    mov word [cs:cseg_11cb - IMAGE_BASE], cx ; 0x35aa
    call loc_4c93                    ; 0x35af
@..local.l57:
    pop si                           ; 0x35b2
    pop di                           ; 0x35b3
    pop es                           ; 0x35b4
    pop ds                           ; 0x35b5
    mov sp, bp                       ; 0x35b6
    pop bp                           ; 0x35b8
    ret                              ; 0x35b9
