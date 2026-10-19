; auto-generated
; asm only
restore_screen:
    push bp                          ; 0x4457
    mov bp, sp                       ; 0x4458
    sub sp, byte 0x0e                ; 0x445a
    push es                          ; 0x445d
    push ds                          ; 0x445e
    push di                          ; 0x445f
    push si                          ; 0x4460
    mov ax, ds                       ; 0x4461
    mov es, ax                       ; 0x4463
    cmp word [bp + 0xe], byte 3      ; 0x4465
    jne short @..restore_screen.l2   ; 0x4469
    lea bx, word [bp - 0x000a]       ; 0x446b
    mov dx, bx                       ; 0x446e
    mov ax, ss                       ; 0x4470
    mov ds, ax                       ; 0x4472
    mov cx, 0xa                      ; 0x4474
    mov bx, word [bp + 0x12]         ; 0x4477
    mov ah, 0x3f                     ; 0x447a
    int 0x21 ; DOS read file (handle)
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x447e
    mov ds, ax                       ; 0x4482
    mov cx, word [bp - 0x0004]       ; 0x4484
@..restore_screen.l1:
    push cx                          ; 0x4487
    mov dx, word [bp - 0x0002]       ; 0x4488
    add word [bp - 0x0002], strict word 0x140 ; 0x448b
    mov cx, word [bp - 0x0006]       ; 0x4490
    mov bx, word [bp + 0x12]         ; 0x4493
    mov ah, 0x3f                     ; 0x4496
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x449a
    loop @..restore_screen.l1        ; 0x449b
    jmp near @..restore_screen.l9    ; 0x449d
@..restore_screen.l2:
    cmp word [bp + 0xe], byte 2      ; 0x44a0
    je short @..restore_screen.l3    ; 0x44a4
    jmp near @..restore_screen.l6    ; 0x44a6
@..restore_screen.l3:
    mov ax, word [bp + 0xc]          ; 0x44a9
    shl ax, 1                        ; 0x44ac
    mov bx, cseg_015b - IMAGE_BASE   ; 0x44ae
    add bx, ax                       ; 0x44b1
    mov ax, word [cs:bx]             ; 0x44b3
    dec ax                           ; 0x44b6
    mov cl, 2                        ; 0x44b7
    shl ax, cl                       ; 0x44b9
    mov bx, cseg_0ffb - IMAGE_BASE   ; 0x44bb
    add bx, ax                       ; 0x44be
    mov ax, word [cs:bx]             ; 0x44c0
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x44c3
    mov ds, ax                       ; 0x44c8
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x44ca
    mov es, ax                       ; 0x44ce
    xor si, si                       ; 0x44d0
    lodsw                            ; 0x44d2
    mov word [bp - 0x0002], ax       ; 0x44d3
    lodsw                            ; 0x44d6
    lodsw                            ; 0x44d7
    mov word [bp - 0x0004], ax       ; 0x44d8
    lodsw                            ; 0x44db
    mov word [bp - 0x0006], ax       ; 0x44dc
    lodsw                            ; 0x44df
    lodsw                            ; 0x44e0
@..restore_screen.l4:
    mov di, word [bp - 0x0002]       ; 0x44e1
    add word [bp - 0x0002], strict word 0x140 ; 0x44e4
    mov cx, word [bp - 0x0006]       ; 0x44e9
    rep movsb                        ; 0x44ec
    dec word [bp - 0x0004]           ; 0x44ee
    jne short @..restore_screen.l4   ; 0x44f1
    cmp word [bp + 0x10], byte 0     ; 0x44f3
    je short @..restore_screen.l5    ; 0x44f7
    mov ax, word [bp + 0xc]          ; 0x44f9
    shl ax, 1                        ; 0x44fc
    mov bx, cseg_015b - IMAGE_BASE   ; 0x44fe
    add bx, ax                       ; 0x4501
    mov ax, word [cs:bx]             ; 0x4503
    mov word [cs:bx], 0              ; 0x4506
    dec word [cs:cseg_10cb - IMAGE_BASE] ; 0x450b
    call loc_PPJL                    ; 0x4510
@..restore_screen.l5:
    jmp near @..restore_screen.l9    ; 0x4513
@..restore_screen.l6:
    mov ax, word [bp + 0xc]          ; 0x4516
    shl ax, 1                        ; 0x4519
    mov bx, cseg_019b - IMAGE_BASE   ; 0x451b
    add bx, ax                       ; 0x451e
    mov ax, word [cs:bx]             ; 0x4520
    dec ax                           ; 0x4523
    mov cl, 2                        ; 0x4524
    shl ax, cl                       ; 0x4526
    mov bx, cseg_01eb - IMAGE_BASE   ; 0x4528
    add bx, ax                       ; 0x452b
    mov ax, word [cs:bx]             ; 0x452d
    mov word [bp - 0x0002], ax       ; 0x4530
    mov cl, 0xa                      ; 0x4533
    shr ax, cl                       ; 0x4535
    mov word [cs:cseg_4440 - IMAGE_BASE], ax ; 0x4537
    call leaf_loc_HLGJ               ; 0x453b
    mov si, word [bp - 0x0002]       ; 0x453e
    and si, strict word 0x3ff        ; 0x4541
    mov cl, 4                        ; 0x4545
    shl si, cl                       ; 0x4547
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x4549
    mov es, ax                       ; 0x454d
    mov ax, word [cs:cseg_0103 - IMAGE_BASE] ; 0x454f
    mov ds, ax                       ; 0x4553
    lodsw                            ; 0x4555
    mov word [bp - 0x0002], ax       ; 0x4556
    lodsw                            ; 0x4559
    lodsw                            ; 0x455a
    mov word [bp - 0x0004], ax       ; 0x455b
    lodsw                            ; 0x455e
    mov word [bp - 0x0006], ax       ; 0x455f
    lodsw                            ; 0x4562
    lodsw                            ; 0x4563
@..restore_screen.l7:
    mov di, word [bp - 0x0002]       ; 0x4564
    add word [bp - 0x0002], strict word 0x140 ; 0x4567
    mov cx, word [bp - 0x0006]       ; 0x456c
    rep movsb                        ; 0x456f
    test si, 0xc000                  ; 0x4571
    je short @..restore_screen.l8    ; 0x4575
    inc word [cs:cseg_4440 - IMAGE_BASE] ; 0x4577
    mov ax, word [cs:cseg_4440 - IMAGE_BASE] ; 0x457c
    call leaf_loc_HLGJ               ; 0x4580
    and si, strict word 0x3fff       ; 0x4583
@..restore_screen.l8:
    dec word [bp - 0x0004]           ; 0x4587
    jne short @..restore_screen.l7   ; 0x458a
    cmp word [bp + 0x10], byte 0     ; 0x458c
    je short @..restore_screen.l9    ; 0x4590
    mov cx, word [cs:cseg_028f - IMAGE_BASE] ; 0x4592
    dec cx                           ; 0x4597
    mov word [cs:cseg_028f - IMAGE_BASE], cx ; 0x4598
    mov ax, word [bp + 0xc]          ; 0x459d
    shl ax, 1                        ; 0x45a0
    mov bx, cseg_019b - IMAGE_BASE   ; 0x45a2
    add bx, ax                       ; 0x45a5
    mov ax, word [cs:bx]             ; 0x45a7
    mov word [cs:bx], 0              ; 0x45aa
    call leaf_loc_MIUO               ; 0x45af
    call loc_KLNH                    ; 0x45b2
@..restore_screen.l9:
    pop si                           ; 0x45b5
    pop di                           ; 0x45b6
    pop ds                           ; 0x45b7
    pop es                           ; 0x45b8
    mov sp, bp                       ; 0x45b9
    pop bp                           ; 0x45bb
    ret                              ; 0x45bc
